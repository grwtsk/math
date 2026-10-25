/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Algebra.LinearAlgebra.MatrixTheory.NavierStokesMomentGap
import Mathlib.Analysis.Matrix.Normed
import Mathlib.LinearAlgebra.Matrix.SchurComplement
import Mathlib.Tactic.Ring

set_option autoImplicit false

open scoped BigOperators Matrix Matrix.Norms.Elementwise

/-!
# Finite Schur--Feshbach reduction and certified jets

A finite block pencil is reduced through an explicitly invertible complementary block.
Mathlib's block determinant theorem gives the exact Schur determinant factorization.
The effective zero set therefore agrees with the full zero set on the declared invertible
region.

The jet layer is a certificate interface: its coefficient matrices are intended to be the
successive derivatives of the effective pencil, and its expansion and remainder estimate
are retained as proof fields. This separates algebraic Schur reduction from analytic
differentiation and numerical enclosure. The finite matrix remainder is measured in the
entrywise supremum norm.

No infinite-dimensional Feshbach theorem, analytic continuation, zeta identification,
quantum algorithm, or complexity bound is inferred.
-/

namespace GRWTSK.Algebra.LinearAlgebra.MatrixTheory.SchurFeshbachJet

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
  let := region.qqInvertible z hz
  simpa [effective] using
    (pencil.det_full_eq_det_qq_mul_det_effective z)

/-- The full and effective determinant zeros agree wherever the eliminated block is
invertible. -/
theorem full_zero_iff_effective_zero
    (region : InvertibleRegion pencil) (z : Z)
    (hz : z ∈ region.carrier) :
    (pencil.full z).det = 0 ↔ (region.effective z hz).det = 0 := by
  let := region.qqInvertible z hz
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
  {z | ∃ hz : z ∈ region.carrier, by
    clear hz
    exact (pencil.full z).det = 0}

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
      ‖remainder z‖ ≤
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
    ‖jet.remainder z‖ ≤
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


/-!
## Coercive moment-gap Schur reduction

The Schur effective matrix is identified with a real Euclidean moment
operator through an *exact linear-map equality*. Its coercivity must be
supplied globally; no physical Navier--Stokes instance is inferred.
For determinant-sign transport at two distinct points, the signs of the
eliminated-block determinants must also agree.
-/

namespace InvertibleRegion

open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.NavierStokesMomentGap

/-- Determinant transport under an exact Euclidean operator identification. -/
theorem effective_det_eq_continuous_operator
    {Z Q : Type*} [Fintype Q] [DecidableEq Q]
    {n : ℕ} {pencil : BlockPencil Z (Fin n) Q ℝ}
    (region : InvertibleRegion pencil) (z : Z) (hz : z ∈ region.carrier)
    (J : EuclideanSpace ℝ (Fin n) →L[ℝ] EuclideanSpace ℝ (Fin n))
    (hident : Matrix.toLpLin 2 2 (region.effective z hz) = J.toLinearMap) :
    (region.effective z hz).det = J.det := by
  have h := congrArg
    (fun L : EuclideanSpace ℝ (Fin n) →ₗ[ℝ]
      EuclideanSpace ℝ (Fin n) => L.det) hident
  simpa only [LinearMap.det_toLpLin] using h

/-- On a region with an invertible eliminated block, a globally coercive
identified moment operator excludes zeros of the full block determinant. -/
theorem full_det_ne_zero_of_coercive_moment
    {Z Q E : Type*} [Fintype Q] [DecidableEq Q]
    [NormedAddCommGroup E] [NormedSpace ℝ E]
    {n : ℕ} {pencil : BlockPencil Z (Fin n) Q ℝ}
    (region : InvertibleRegion pencil) (z : Z) (hz : z ∈ region.carrier)
    (B : E →L[ℝ] EuclideanSpace ℝ (Fin n))
    (C : EuclideanSpace ℝ (Fin n) →L[ℝ] E)
    (R : EuclideanSpace ℝ (Fin n) →L[ℝ] E →L[ℝ] ℝ)
    {ε β δ : ℝ} (hε : 0 < ε) (hB : ‖B‖ ≤ β)
    (hR : ‖R‖ ≤ δ)
    (hcoercive : ∀ y : EuclideanSpace ℝ (Fin n),
      ε * ‖C y‖ ^ 2 ≤ R (momentMatrix B C y) (C y))
    (hident : Matrix.toLpLin 2 2 (region.effective z hz) =
      (momentMatrix B C).toLinearMap) :
    (pencil.full z).det ≠ 0 := by
  have hinj : Function.Injective (momentMatrix B C) :=
    certified_moment_injective B C R hε hB hR hcoercive
  have hker : LinearMap.ker (momentMatrix B C).toLinearMap = ⊥ :=
    LinearMap.ker_eq_bot.mpr hinj
  have hJ : (momentMatrix B C).det ≠ 0 := by
    intro hzero
    exact (LinearMap.det_eq_zero_iff_ker_ne_bot.mp hzero) hker
  have hEff : (region.effective z hz).det = (momentMatrix B C).det :=
    region.effective_det_eq_continuous_operator z hz
      (momentMatrix B C) hident
  intro hfull
  apply hJ
  calc
    (momentMatrix B C).det = (region.effective z hz).det := hEff.symm
    _ = 0 := (region.full_zero_iff_effective_zero z hz).mp hfull

/-- A full determinant zero obstructs global coercivity if the effective
operator is genuinely identified with the proposed moment matrix. -/
theorem global_coercivity_fails_of_full_det_zero
    {Z Q E : Type*} [Fintype Q] [DecidableEq Q]
    [NormedAddCommGroup E] [NormedSpace ℝ E]
    {n : ℕ} {pencil : BlockPencil Z (Fin n) Q ℝ}
    (region : InvertibleRegion pencil) (z : Z) (hz : z ∈ region.carrier)
    (B : E →L[ℝ] EuclideanSpace ℝ (Fin n))
    (C : EuclideanSpace ℝ (Fin n) →L[ℝ] E)
    (R : EuclideanSpace ℝ (Fin n) →L[ℝ] E →L[ℝ] ℝ)
    {ε β δ : ℝ} (hε : 0 < ε) (hB : ‖B‖ ≤ β)
    (hR : ‖R‖ ≤ δ)
    (hident : Matrix.toLpLin 2 2 (region.effective z hz) =
      (momentMatrix B C).toLinearMap)
    (hfull : (pencil.full z).det = 0) :
    ¬ ∀ y : EuclideanSpace ℝ (Fin n),
      ε * ‖C y‖ ^ 2 ≤ R (momentMatrix B C y) (C y) := by
  intro hcoercive
  exact (region.full_det_ne_zero_of_coercive_moment z hz
    B C R hε hB hR hcoercive hident) hfull

/-- The sign of the full block determinant is stable under moment-operator
perturbation if *both* effective and eliminated-block determinants preserve
their relative sign. No sign agreement is inferred across arbitrary points. -/
theorem full_determinant_sign_of_coercive_moment_perturbation
    {Z Q E : Type*} [Fintype Q] [DecidableEq Q]
    [NormedAddCommGroup E] [NormedSpace ℝ E]
    {n : ℕ} {pencil : BlockPencil Z (Fin n) Q ℝ}
    (region : InvertibleRegion pencil)
    (z w : Z) (hz : z ∈ region.carrier) (hw : w ∈ region.carrier)
    (B : E →L[ℝ] EuclideanSpace ℝ (Fin n))
    (C : EuclideanSpace ℝ (Fin n) →L[ℝ] E)
    (R : EuclideanSpace ℝ (Fin n) →L[ℝ] E →L[ℝ] ℝ)
    (T : EuclideanSpace ℝ (Fin n) →L[ℝ] EuclideanSpace ℝ (Fin n))
    {ε β δ : ℝ} (hε : 0 < ε) (hB : ‖B‖ ≤ β)
    (hR : ‖R‖ ≤ δ)
    (hcoercive : ∀ y : EuclideanSpace ℝ (Fin n),
      ε * ‖C y‖ ^ 2 ≤ R (momentMatrix B C y) (C y))
    (hzIdent : Matrix.toLpLin 2 2 (region.effective z hz) =
      (momentMatrix B C).toLinearMap)
    (hwIdent : Matrix.toLpLin 2 2 (region.effective w hw) =
      T.toLinearMap)
    (hpert : ‖T - momentMatrix B C‖ < ε / (ε + β * δ))
    (hqqSign : 0 < (pencil.qq z).det * (pencil.qq w).det) :
    0 < (pencil.full z).det * (pencil.full w).det := by
  have hEffSign : 0 < (momentMatrix B C).det * T.det :=
    certified_moment_determinant_sign B C R T
      hε hB hR hcoercive hpert
  have hzDet :
      (region.effective z hz).det = (momentMatrix B C).det :=
    region.effective_det_eq_continuous_operator z hz
      (momentMatrix B C) hzIdent
  have hwDet : (region.effective w hw).det = T.det :=
    region.effective_det_eq_continuous_operator w hw T hwIdent
  calc
    0 < ((pencil.qq z).det * (pencil.qq w).det) *
        ((momentMatrix B C).det * T.det) :=
      mul_pos hqqSign hEffSign
    _ = (pencil.full z).det * (pencil.full w).det := by
      rw [region.det_factorization z hz, region.det_factorization w hw,
        hzDet, hwDet]
      ring

end InvertibleRegion



/-!
## Explicit identity-block Schur lifts

Any real square matrix J has a genuinely coupled block-pencil realization
  [ J + U V   U ]
  [ V         I ]
with unrestricted finite off-diagonal couplings U and V. Its effective
Schur matrix is exactly J, and the full determinant is exactly det J.
Neither assertion requires a moment coercivity certificate.
-/

namespace BlockPencil

/-- A finite real block pencil whose eliminated block is the identity,
allowing arbitrary parameter-dependent off-diagonal couplings. -/
def identitySchurLift
    {Z P Q : Type*} [Fintype Q] [DecidableEq Q]
    (J : Z → Matrix P P ℝ)
    (U : Z → Matrix P Q ℝ) (V : Z → Matrix Q P ℝ) :
    BlockPencil Z P Q ℝ where
  pp z := J z + U z * V z
  pq := U
  qp := V
  qq _ := 1

/-- The Schur effective matrix of the explicit identity-block lift is
exactly the supplied square matrix, without additional identification
premises. -/
theorem identitySchurLift_effective
    {Z P Q : Type*}
    [Fintype P] [DecidableEq P]
    [Fintype Q] [DecidableEq Q]
    (J : Z → Matrix P P ℝ)
    (U : Z → Matrix P Q ℝ) (V : Z → Matrix Q P ℝ)
    (z : Z) :
    (identitySchurLift J U V).effective z = J z := by
  simp [identitySchurLift, BlockPencil.effective, Matrix.mul_assoc]

/-- The determinant of the full coupled block matrix is independent
of the off-diagonal couplings because the Schur complement is J. -/
theorem identitySchurLift_full_det
    {Z P Q : Type*}
    [Fintype P] [DecidableEq P]
    [Fintype Q] [DecidableEq Q]
    (J : Z → Matrix P P ℝ)
    (U : Z → Matrix P Q ℝ) (V : Z → Matrix Q P ℝ)
    (z : Z) :
    ((identitySchurLift J U V).full z).det = (J z).det := by
  simpa [identitySchurLift, BlockPencil.full] using
    (Matrix.det_fromBlocks_one₂₂ (J z + U z * V z) (U z) (V z))

/-- The full Schur determinant vanishes precisely when the original
square-matrix determinant vanishes, for every parameter value. -/
theorem identitySchurLift_full_zero_iff
    {Z P Q : Type*}
    [Fintype P] [DecidableEq P]
    [Fintype Q] [DecidableEq Q]
    (J : Z → Matrix P P ℝ)
    (U : Z → Matrix P Q ℝ) (V : Z → Matrix Q P ℝ)
    (z : Z) :
    ((identitySchurLift J U V).full z).det = 0 ↔ (J z).det = 0 := by
  rw [identitySchurLift_full_det]

end BlockPencil



/-!
## Concrete Schur lifts of Euclidean moment operators

The moment-Schur lift builds its effective matrix from the exact Euclidean
coordinate representation of I + B.comp C. The eliminated block is literally
the identity, so its invertibility and determinant orientation are supplied
by construction. All off-diagonal couplings may vary independently with the
parameter. Only the original global coercivity estimates remain hypotheses
for determinant nonvanishing, and a strict moment-operator perturbation
margin is required for a two-point sign conclusion.
-/

namespace BlockPencil

open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.NavierStokesMomentGap
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.FiniteAdjointDescent

/-- Parameterized finite coupled block systems whose effective Schur
operator is the actual Euclidean moment matrix I + B.comp C. -/
def momentSchurLift
    {Z E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    {n m : ℕ}
    (B : Z → E →L[ℝ] EuclideanSpace ℝ (Fin n))
    (C : Z → EuclideanSpace ℝ (Fin n) →L[ℝ] E)
    (U : Z → Matrix (Fin n) (Fin m) ℝ)
    (V : Z → Matrix (Fin m) (Fin n) ℝ) :
    BlockPencil Z (Fin n) (Fin m) ℝ :=
  identitySchurLift
    (fun z => euclideanOperatorMatrix (momentMatrix (B z) (C z))) U V

/-- The explicit moment block pencil has an invertible eliminated block
at every parameter, with no additional region assumption. -/
def momentSchurLiftRegion
    {Z E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    {n m : ℕ}
    (B : Z → E →L[ℝ] EuclideanSpace ℝ (Fin n))
    (C : Z → EuclideanSpace ℝ (Fin n) →L[ℝ] E)
    (U : Z → Matrix (Fin n) (Fin m) ℝ)
    (V : Z → Matrix (Fin m) (Fin n) ℝ) :
    InvertibleRegion (momentSchurLift B C U V) where
  carrier := Set.univ
  qqInvertible z _ := by
    change Invertible (1 : Matrix (Fin m) (Fin m) ℝ)
    exact invertibleOne

/-- The effective matrix is exactly the original moment matrix in Euclidean
coordinates. This is constructed, not supplied as a hypothesis. -/
theorem momentSchurLift_effective
    {Z E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    {n m : ℕ}
    (B : Z → E →L[ℝ] EuclideanSpace ℝ (Fin n))
    (C : Z → EuclideanSpace ℝ (Fin n) →L[ℝ] E)
    (U : Z → Matrix (Fin n) (Fin m) ℝ)
    (V : Z → Matrix (Fin m) (Fin n) ℝ) (z : Z) :
    (momentSchurLift B C U V).effective z =
      euclideanOperatorMatrix (momentMatrix (B z) (C z)) := by
  exact identitySchurLift_effective
    (fun t => euclideanOperatorMatrix (momentMatrix (B t) (C t))) U V z

/-- The full coupled block determinant is exactly the determinant of the
corresponding continuous moment operator, regardless of the off-diagonal
coupling matrices. -/
theorem momentSchurLift_full_det
    {Z E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    {n m : ℕ}
    (B : Z → E →L[ℝ] EuclideanSpace ℝ (Fin n))
    (C : Z → EuclideanSpace ℝ (Fin n) →L[ℝ] E)
    (U : Z → Matrix (Fin n) (Fin m) ℝ)
    (V : Z → Matrix (Fin m) (Fin n) ℝ) (z : Z) :
    ((momentSchurLift B C U V).full z).det =
      (momentMatrix (B z) (C z)).det := by
  calc
    ((momentSchurLift B C U V).full z).det =
        (euclideanOperatorMatrix (momentMatrix (B z) (C z))).det := by
      simpa [momentSchurLift] using
        (identitySchurLift_full_det
          (fun t => euclideanOperatorMatrix (momentMatrix (B t) (C t))) U V z)
    _ = (momentMatrix (B z) (C z)).det :=
      euclideanOperatorMatrix_det (momentMatrix (B z) (C z))

/-- Original global moment coercivity forbids determinant zeros of this
explicitly constructed full block system. No effective-operator equality or
lower-right-block invertibility need be assumed: both are constructed. -/
theorem momentSchurLift_full_det_ne_zero
    {Z E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    {n m : ℕ}
    (B : Z → E →L[ℝ] EuclideanSpace ℝ (Fin n))
    (C : Z → EuclideanSpace ℝ (Fin n) →L[ℝ] E)
    (U : Z → Matrix (Fin n) (Fin m) ℝ)
    (V : Z → Matrix (Fin m) (Fin n) ℝ)
    (z : Z) (R : EuclideanSpace ℝ (Fin n) →L[ℝ] E →L[ℝ] ℝ)
    {ε β δ : ℝ} (hε : 0 < ε)
    (hB : ‖B z‖ ≤ β) (hR : ‖R‖ ≤ δ)
    (hcoercive : ∀ y : EuclideanSpace ℝ (Fin n),
      ε * ‖C z y‖ ^ 2 ≤ R (momentMatrix (B z) (C z) y) (C z y)) :
    ((momentSchurLift B C U V).full z).det ≠ 0 := by
  rw [momentSchurLift_full_det]
  intro hzero
  have hinj : Function.Injective (momentMatrix (B z) (C z)) :=
    certified_moment_injective (B z) (C z) R hε hB hR hcoercive
  have hker : LinearMap.ker (momentMatrix (B z) (C z)).toLinearMap = ⊥ :=
    LinearMap.ker_eq_bot.mpr hinj
  exact (LinearMap.det_eq_zero_iff_ker_ne_bot.mp hzero) hker

/-- A zero of the full determinant obstructs the global coercivity
hypothesis at that parameter. This contrapositive still retains all
quantitative norm bounds as explicit inputs. -/
theorem momentSchurLift_coercivity_fails_of_full_zero
    {Z E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    {n m : ℕ}
    (B : Z → E →L[ℝ] EuclideanSpace ℝ (Fin n))
    (C : Z → EuclideanSpace ℝ (Fin n) →L[ℝ] E)
    (U : Z → Matrix (Fin n) (Fin m) ℝ)
    (V : Z → Matrix (Fin m) (Fin n) ℝ)
    (z : Z) (R : EuclideanSpace ℝ (Fin n) →L[ℝ] E →L[ℝ] ℝ)
    {ε β δ : ℝ} (hε : 0 < ε)
    (hB : ‖B z‖ ≤ β) (hR : ‖R‖ ≤ δ)
    (hzero : ((momentSchurLift B C U V).full z).det = 0) :
    ¬ ∀ y : EuclideanSpace ℝ (Fin n),
      ε * ‖C z y‖ ^ 2 ≤ R (momentMatrix (B z) (C z) y) (C z y) := by
  intro hcoercive
  exact (momentSchurLift_full_det_ne_zero
    B C U V z R hε hB hR hcoercive) hzero

/-- At two parameters the full block determinants have the same strict
sign if the effective moment operators differ by less than the certified
gap. The eliminated-block sign condition is automatic: each block is I. -/
theorem momentSchurLift_full_det_sign_of_perturbation
    {Z E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    {n m : ℕ}
    (B : Z → E →L[ℝ] EuclideanSpace ℝ (Fin n))
    (C : Z → EuclideanSpace ℝ (Fin n) →L[ℝ] E)
    (U : Z → Matrix (Fin n) (Fin m) ℝ)
    (V : Z → Matrix (Fin m) (Fin n) ℝ)
    (z w : Z)
    (R : EuclideanSpace ℝ (Fin n) →L[ℝ] E →L[ℝ] ℝ)
    {ε β δ : ℝ} (hε : 0 < ε)
    (hB : ‖B z‖ ≤ β) (hR : ‖R‖ ≤ δ)
    (hcoercive : ∀ y : EuclideanSpace ℝ (Fin n),
      ε * ‖C z y‖ ^ 2 ≤ R (momentMatrix (B z) (C z) y) (C z y))
    (hpert : ‖momentMatrix (B w) (C w) -
      momentMatrix (B z) (C z)‖ < ε / (ε + β * δ)) :
    0 < ((momentSchurLift B C U V).full z).det *
        ((momentSchurLift B C U V).full w).det := by
  have hSign :
      0 < (momentMatrix (B z) (C z)).det *
        (momentMatrix (B w) (C w)).det :=
    certified_moment_determinant_sign
      (B z) (C z) R (momentMatrix (B w) (C w))
      hε hB hR hcoercive hpert
  calc
    0 < (momentMatrix (B z) (C z)).det *
        (momentMatrix (B w) (C w)).det := hSign
    _ = ((momentSchurLift B C U V).full z).det *
        ((momentSchurLift B C U V).full w).det := by
      rw [momentSchurLift_full_det B C U V z,
        momentSchurLift_full_det B C U V w]

end BlockPencil


end

end GRWTSK.Algebra.LinearAlgebra.MatrixTheory.SchurFeshbachJet
