/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Analysis.Matrix.Normed
import Mathlib.LinearAlgebra.Matrix.SchurComplement
import Mathlib.Tactic.Ring

set_option autoImplicit false

open scoped BigOperators Matrix

/-!
# Finite Schur--Feshbach reduction and certified jets

A finite block pencil is reduced through an explicitly invertible complementary block.
Mathlib's block determinant theorem gives the exact Schur determinant factorization.
The effective zero set therefore agrees with the full zero set on the declared invertible
region.

The jet layer is a certificate interface: its coefficient matrices are intended to be the
successive derivatives of the effective pencil, and its expansion and remainder estimate
are retained as proof fields. This separates algebraic Schur reduction from analytic
differentiation and numerical enclosure.

No infinite-dimensional Feshbach theorem, analytic continuation, zeta identification,
quantum algorithm, or complexity bound is inferred.
-/

namespace GRWTSK.LinearAlgebra.Matrix.SchurFeshbachJet

noncomputable section

/-- A finite operator pencil in `P/Q` block coordinates. -/
structure BlockPencil (Z P Q 𝕜 : Type*)
    [CommRing 𝕜] where
  pp : Z → Matrix P P 𝕜
  pq : Z → Matrix P Q 𝕜
  qp : Z → Matrix Q P 𝕜
  qq : Z → Matrix Q Q 𝕜

namespace BlockPencil

variable {Z P Q 𝕜 : Type*}
  [Field 𝕜]
  [Fintype P] [DecidableEq P]
  [Fintype Q] [DecidableEq Q]

/-- The full block matrix. -/
def full (pencil : BlockPencil Z P Q 𝕜) (z : Z) :
    Matrix (P ⊕ Q) (P ⊕ Q) 𝕜 :=
  Matrix.fromBlocks (pencil.pp z) (pencil.pq z) (pencil.qp z) (pencil.qq z)

/-- The Schur--Feshbach effective matrix after eliminating the `Q` block. -/
def effective (pencil : BlockPencil Z P Q 𝕜) (z : Z)
    [Invertible (pencil.qq z)] : Matrix P P 𝕜 :=
  pencil.pp z - pencil.pq z * ⅟(pencil.qq z) * pencil.qp z

/-- Exact finite-dimensional Schur determinant factorization. -/
theorem det_full_eq_det_qq_mul_det_effective
    (pencil : BlockPencil Z P Q 𝕜) (z : Z)
    [Invertible (pencil.qq z)] :
    (pencil.full z).det =
      (pencil.qq z).det * (pencil.effective z).det := by
  simpa [full, effective] using
    (Matrix.det_fromBlocks₂₂
      (pencil.pp z) (pencil.pq z) (pencil.qp z) (pencil.qq z))

end BlockPencil

/-- A declared parameter region on which the eliminated block is invertible. -/
structure InvertibleRegion
    {Z P Q 𝕜 : Type*}
    [Field 𝕜]
    [Fintype P] [DecidableEq P]
    [Fintype Q] [DecidableEq Q]
    (pencil : BlockPencil Z P Q 𝕜) where
  carrier : Set Z
  qqInvertible : ∀ z, z ∈ carrier → Invertible (pencil.qq z)

namespace InvertibleRegion

variable {Z P Q 𝕜 : Type*}
  [Field 𝕜]
  [Fintype P] [DecidableEq P]
  [Fintype Q] [DecidableEq Q]
  {pencil : BlockPencil Z P Q 𝕜}

/-- The effective matrix using the certified inverse on the region. -/
def effective (region : InvertibleRegion pencil) (z : Z)
    (hz : z ∈ region.carrier) : Matrix P P 𝕜 := by
  letI := region.qqInvertible z hz
  exact pencil.effective z

/-- Determinant factorization on the certified invertibility region. -/
theorem det_factorization (region : InvertibleRegion pencil) (z : Z)
    (hz : z ∈ region.carrier) :
    (pencil.full z).det =
      (pencil.qq z).det * (region.effective z hz).det := by
  letI := region.qqInvertible z hz
  simpa [effective] using
    (pencil.det_full_eq_det_qq_mul_det_effective z)

/-- The full and effective determinant zeros agree wherever the eliminated block is
invertible. -/
theorem full_zero_iff_effective_zero
    (region : InvertibleRegion pencil) (z : Z)
    (hz : z ∈ region.carrier) :
    (pencil.full z).det = 0 ↔ (region.effective z hz).det = 0 := by
  letI := region.qqInvertible z hz
  have hqq : (pencil.qq z).det ≠ 0 :=
    Matrix.det_ne_zero_of_right_inverse (mul_invOf_self (pencil.qq z))
  constructor
  · intro h
    rw [region.det_factorization z hz] at h
    exact (mul_eq_zero.mp h).resolve_left hqq
  · intro h
    rw [region.det_factorization z hz, h, mul_zero]

/-- Full determinant zeros restricted to the invertibility region. -/
def fullZeroSet (region : InvertibleRegion pencil) : Set Z :=
  {z | ∃ hz : z ∈ region.carrier, (pencil.full z).det = 0}

/-- Effective determinant zeros restricted to the invertibility region. -/
def effectiveZeroSet (region : InvertibleRegion pencil) : Set Z :=
  {z | ∃ hz : z ∈ region.carrier, (region.effective z hz).det = 0}

/-- Schur reduction preserves the local zero set on the declared region. -/
theorem fullZeroSet_eq_effectiveZeroSet
    (region : InvertibleRegion pencil) :
    region.fullZeroSet = region.effectiveZeroSet := by
  ext z
  constructor
  · rintro ⟨hz, hzero⟩
    exact ⟨hz, (region.full_zero_iff_effective_zero z hz).mp hzero⟩
  · rintro ⟨hz, hzero⟩
    exact ⟨hz, (region.full_zero_iff_effective_zero z hz).mpr hzero⟩

end InvertibleRegion

/-- The finite Taylor polynomial encoded by derivative matrices. -/
def jetPolynomial
    {P : Type*} [Fintype P]
    (order : ℕ) (center : ℂ)
    (coefficient : Fin (order + 1) → Matrix P P ℂ)
    (z : ℂ) : Matrix P P ℂ :=
  ∑ j : Fin (order + 1),
    (((z - center) ^ (j : ℕ)) / (Nat.factorial (j : ℕ) : ℂ)) • coefficient j

/-- A certified order-`m` jet and an explicit remainder estimate. -/
structure JetCertificate
    (P : Type*) [Fintype P] [DecidableEq P] (order : ℕ) where
  center : ℂ
  effective : ℂ → Matrix P P ℂ
  coefficient : Fin (order + 1) → Matrix P P ℂ
  remainder : ℂ → Matrix P P ℂ
  radius : ℝ
  constant : ℝ
  radius_nonnegative : 0 ≤ radius
  constant_nonnegative : 0 ≤ constant
  coefficient_zero : coefficient 0 = effective center
  expansion : ∀ z,
    effective z =
      jetPolynomial order center coefficient z + remainder z
  remainder_bound : ∀ z,
    ‖z - center‖ ≤ radius →
      @norm (P → P → ℂ) inferInstance (remainder z) ≤
        constant * ‖z - center‖ ^ (order + 1)

namespace JetCertificate

variable {P : Type*} [Fintype P] [DecidableEq P] {order : ℕ}

/-- Complex displacement from the jet center. -/
def displacement (jet : JetCertificate P order) (z : ℂ) : ℂ :=
  z - jet.center

/-- Transverse displacement from the real part of the spectral center. -/
def transverseError (jet : JetCertificate P order) (z : ℂ) : ℝ :=
  z.re - jet.center.re

/-- Height displacement from the imaginary part of the spectral center. -/
def heightError (jet : JetCertificate P order) (z : ℂ) : ℝ :=
  z.im - jet.center.im

@[simp]
theorem displacement_re (jet : JetCertificate P order) (z : ℂ) :
    (jet.displacement z).re = jet.transverseError z := by
  simp [displacement, transverseError]

@[simp]
theorem displacement_im (jet : JetCertificate P order) (z : ℂ) :
    (jet.displacement z).im = jet.heightError z := by
  simp [displacement, heightError]

/-- The certified local enclosure, retaining transverse and height errors separately. -/
structure Enclosure (jet : JetCertificate P order) (z : ℂ) where
  in_radius : ‖jet.displacement z‖ ≤ jet.radius

/-- The remainder estimate attached to an admitted local point. -/
theorem Enclosure.remainder_le
    {jet : JetCertificate P order} {z : ℂ}
    (enclosure : jet.Enclosure z) :
    @norm (P → P → ℂ) inferInstance (jet.remainder z) ≤
      jet.constant * ‖jet.displacement z‖ ^ (order + 1) :=
  jet.remainder_bound z enclosure.in_radius

end JetCertificate

/-- A Schur jet tied to the effective pencil on an invertibility region. -/
structure CertifiedSchurJet
    {P Q : Type*}
    [Fintype P] [DecidableEq P]
    [Fintype Q] [DecidableEq Q]
    (pencil : BlockPencil ℂ P Q ℂ)
    (region : InvertibleRegion pencil)
    (order : ℕ) where
  jet : JetCertificate P order
  effective_eq : ∀ z (hz : z ∈ region.carrier),
    jet.effective z = region.effective z hz

namespace CertifiedSchurJet

variable {P Q : Type*}
  [Fintype P] [DecidableEq P]
  [Fintype Q] [DecidableEq Q]
  {pencil : BlockPencil ℂ P Q ℂ}
  {region : InvertibleRegion pencil}
  {order : ℕ}

/-- A determinant zero of the full pencil is exactly a determinant zero of the certified
effective jet on the invertibility region. -/
theorem full_zero_iff_jet_zero
    (certificate : CertifiedSchurJet pencil region order)
    (z : ℂ) (hz : z ∈ region.carrier) :
    (pencil.full z).det = 0 ↔ (certificate.jet.effective z).det = 0 := by
  rw [certificate.effective_eq z hz]
  exact region.full_zero_iff_effective_zero z hz

end CertifiedSchurJet

end

end GRWTSK.LinearAlgebra.Matrix.SchurFeshbachJet
