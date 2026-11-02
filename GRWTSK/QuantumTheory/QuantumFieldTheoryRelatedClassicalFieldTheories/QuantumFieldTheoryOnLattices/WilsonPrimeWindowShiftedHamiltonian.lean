/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonPrimeWindowResidueHamiltonian
import Mathlib

/-!
# Additive prime-window shifts of the regulated Wilson Hamiltonian

Local mathematical attribution: grwtsk contributors.

The predecessor source inserts a prime-window label by multiplying a state.
That construction is exact, but normalized quadratic energies are homogeneous:
amplitude scaling alone cannot move a Rayleigh quotient or a spectral level.

This file inserts the same literal prime-window value as a bounded scalar
operator on the ACTUAL maximal logarithmic Hamiltonian domain:

  H_r = H + s_r I,   s_r = pntWindow (p_r - 1) 1 = log p_r.

The domain is unchanged. The graph self-adjointness statement is transported
exactly, the Hamiltonian form gains `s_r * ||x||^2`, the normalized vacuum
energy is the nonalgebraic value `s_r`, and distinct residue classes are
recovered from those vacuum energies. Every excitation level is shifted by the
same amount, so the pre-existing excitation gap is preserved rather than
artificially enlarged.

The transcendence theorem remains an explicit field of the imported
`PrimeWindowSupplier`; this file does not manufacture a Lindemann theorem.
No continuum limit, physical mass gap, four-dimensional OS reconstruction, or
identification with plaquette residue energies is asserted.

SOURCE_PROOF_CANDIDATE; LEAN_BUILD_NOT_RUN; EXPECTED_TYPES_NOT_RUN;
FRESH_KERNEL_NOT_RUN; TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Geometry.GaugeTheory.WilsonPrimeWindowShiftedHamiltonian

open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeHilbert
open GRWTSK.Geometry.GaugeTheory.WilsonSliceSpectralApproximation
open GRWTSK.Geometry.GaugeTheory.WilsonSlicePositivePrincipal
open GRWTSK.Geometry.GaugeTheory.WilsonFullRegulatedHamiltonian
open GRWTSK.Geometry.GaugeTheory.WilsonPrimeWindowResidueHamiltonian

variable {Residue : Type*}
variable (L : ℕ) [NeZero L]

/-- Add the supplied prime-window value as a scalar identity term on the same
maximal Hamiltonian domain. -/
def shiftedHamiltonian
    (S : PrimeWindowSupplier Residue) (r : Residue)
    (β : ℝ) (hβ : 0 ≤ β) (a : ℝ) :
    HamiltonianDomain L β hβ a →ₗ[ℝ] RegulatedHilbert L :=
  Hamiltonian L β hβ a +
    S.value r • (HamiltonianDomain L β hβ a).subtype

@[simp]
theorem shiftedHamiltonian_apply
    (S : PrimeWindowSupplier Residue) (r : Residue)
    (β : ℝ) (hβ : 0 ≤ β) (a : ℝ)
    (x : HamiltonianDomain L β hβ a) :
    shiftedHamiltonian L S r β hβ a x =
      Hamiltonian L β hβ a x +
        S.value r • (x : RegulatedHilbert L) := by
  simp [shiftedHamiltonian]

/-- Quadratic form of the shifted Hamiltonian. -/
def shiftedHamiltonianForm
    (S : PrimeWindowSupplier Residue) (r : Residue)
    (β : ℝ) (hβ : 0 ≤ β) (a : ℝ)
    (x : HamiltonianDomain L β hβ a) : ℝ :=
  inner ℝ (x : RegulatedHilbert L)
    (shiftedHamiltonian L S r β hβ a x)

/-- The additive residue term contributes exactly its scalar times the norm
square. This is the non-homogeneous effect missing from state rescaling. -/
theorem shiftedHamiltonianForm_eq
    (S : PrimeWindowSupplier Residue) (r : Residue)
    (β : ℝ) (hβ : 0 ≤ β) (a : ℝ)
    (x : HamiltonianDomain L β hβ a) :
    shiftedHamiltonianForm L S r β hβ a x =
      hamiltonianForm L β hβ a x +
        S.value r * ‖(x : RegulatedHilbert L)‖ ^ 2 := by
  calc
    shiftedHamiltonianForm L S r β hβ a x =
        inner ℝ (x : RegulatedHilbert L)
          (Hamiltonian L β hβ a x +
            S.value r • (x : RegulatedHilbert L)) := by
      simp [shiftedHamiltonianForm]
    _ = inner ℝ (x : RegulatedHilbert L)
          (Hamiltonian L β hβ a x) +
        S.value r *
          inner ℝ (x : RegulatedHilbert L)
            (x : RegulatedHilbert L) := by
      rw [inner_add_right, real_inner_smul_right]
    _ = hamiltonianForm L β hβ a x +
        S.value r * ‖(x : RegulatedHilbert L)‖ ^ 2 := by
      rw [real_inner_self_eq_norm_sq]
      rfl

/-- On a unit state, the normalized Hamiltonian energy is translated by the
literal prime-window value. -/
theorem shiftedHamiltonianForm_unit
    (S : PrimeWindowSupplier Residue) (r : Residue)
    (β : ℝ) (hβ : 0 ≤ β) (a : ℝ)
    (x : HamiltonianDomain L β hβ a)
    (hunit : ‖(x : RegulatedHilbert L)‖ = 1) :
    shiftedHamiltonianForm L S r β hβ a x =
      hamiltonianForm L β hβ a x + S.value r := by
  rw [shiftedHamiltonianForm_eq, hunit]
  ring

/-- Any fixed unit domain state recovers the residue class from the shifted
Hamiltonian form. No positivity hypothesis on the unshifted form is needed. -/
theorem shiftedHamiltonianForm_injective_of_unit
    (S : PrimeWindowSupplier Residue)
    (β : ℝ) (hβ : 0 ≤ β) (a : ℝ)
    (x : HamiltonianDomain L β hβ a)
    (hunit : ‖(x : RegulatedHilbert L)‖ = 1) :
    Function.Injective
      (fun r : Residue =>
        shiftedHamiltonianForm L S r β hβ a x) := by
  intro r s hrs
  rw [shiftedHamiltonianForm_unit L S r β hβ a x hunit,
    shiftedHamiltonianForm_unit L S s β hβ a x hunit] at hrs
  apply S.value_injective
  linarith

/-- The normalized vacuum as a member of the actual maximal domain. -/
def vacuumDomain (β : ℝ) (hβ : 0 < β) (a : ℝ) :
    HamiltonianDomain L β hβ.le a :=
  ⟨vacuum L β hβ, vacuum_mem_domain L β hβ a⟩

/-- The shifted vacuum is an eigenvector with eigenvalue equal to the supplied
prime-window value. -/
theorem shiftedHamiltonian_vacuum
    (S : PrimeWindowSupplier Residue) (r : Residue)
    (β : ℝ) (hβ : 0 < β) (a : ℝ) :
    shiftedHamiltonian L S r β hβ.le a
        (vacuumDomain L β hβ a) =
      S.value r • vacuum L β hβ := by
  rw [shiftedHamiltonian_apply]
  simp [vacuumDomain, Hamiltonian_vacuum_zero]

/-- The vacuum form is exactly the nonalgebraic prime-window label. -/
theorem shiftedHamiltonianForm_vacuum
    (S : PrimeWindowSupplier Residue) (r : Residue)
    (β : ℝ) (hβ : 0 < β) (a : ℝ) :
    shiftedHamiltonianForm L S r β hβ.le a
        (vacuumDomain L β hβ a) =
      S.value r := by
  rw [shiftedHamiltonianForm_eq]
  have hzero :
      hamiltonianForm L β hβ.le a
        (vacuumDomain L β hβ a) = 0 := by
    unfold hamiltonianForm vacuumDomain
    rw [Hamiltonian_vacuum_zero]
    simp
  rw [hzero]
  change 0 + S.value r * ‖vacuum L β hβ‖ ^ 2 = S.value r
  rw [vacuum_unit]
  ring

/-- The shifted vacuum energy is transcendental over the rationals. -/
theorem shiftedHamiltonianForm_vacuum_transcendental
    (S : PrimeWindowSupplier Residue) (r : Residue)
    (β : ℝ) (hβ : 0 < β) (a : ℝ) :
    Transcendental ℚ
      (shiftedHamiltonianForm L S r β hβ.le a
        (vacuumDomain L β hβ a)) := by
  rw [shiftedHamiltonianForm_vacuum]
  exact S.value_transcendental r

/-- Distinct residue classes are recovered from the actual shifted vacuum
energies. -/
theorem shiftedHamiltonianForm_vacuum_injective
    (S : PrimeWindowSupplier Residue)
    (β : ℝ) (hβ : 0 < β) (a : ℝ) :
    Function.Injective
      (fun r : Residue =>
        shiftedHamiltonianForm L S r β hβ.le a
          (vacuumDomain L β hβ a)) := by
  intro r s hrs
  rw [shiftedHamiltonianForm_vacuum L S r β hβ a,
    shiftedHamiltonianForm_vacuum L S s β hβ a] at hrs
  exact S.value_injective hrs

/-- Every eigenvector of the original Hamiltonian remains an eigenvector, with
its eigenvalue translated by the prime-window value. -/
theorem shiftedHamiltonian_eigen
    (S : PrimeWindowSupplier Residue) (r : Residue)
    (β : ℝ) (hβ : 0 ≤ β) (a E : ℝ)
    (x : HamiltonianDomain L β hβ a)
    (heigen :
      Hamiltonian L β hβ a x =
        E • (x : RegulatedHilbert L)) :
    shiftedHamiltonian L S r β hβ a x =
      (E + S.value r) • (x : RegulatedHilbert L) := by
  rw [shiftedHamiltonian_apply, heigen, add_smul]

/-- The supplied offset is exactly removed by vacuum subtraction, so it does
not manufacture an excitation gap. -/
theorem shiftedHamiltonianForm_centered
    (S : PrimeWindowSupplier Residue) (r : Residue)
    (β : ℝ) (hβ : 0 ≤ β) (a : ℝ)
    (x : HamiltonianDomain L β hβ a) :
    shiftedHamiltonianForm L S r β hβ a x -
        S.value r * ‖(x : RegulatedHilbert L)‖ ^ 2 =
      hamiltonianForm L β hβ a x := by
  rw [shiftedHamiltonianForm_eq]
  ring

/-- Positivity of the original regulated Hamiltonian and positivity of every
prime-window label make the shifted form nonnegative. -/
theorem shiftedHamiltonianForm_nonnegative
    (S : PrimeWindowSupplier Residue) (r : Residue)
    (β : ℝ) (hβ : 0 < β) {a : ℝ} (ha : 0 < a)
    (x : HamiltonianDomain L β hβ.le a) :
    0 ≤ shiftedHamiltonianForm L S r β hβ.le a x := by
  rw [shiftedHamiltonianForm_eq]
  exact add_nonneg
    (Hamiltonian_nonnegative L β hβ ha x)
    (mul_nonneg (S.value_pos r).le (sq_nonneg _))

/-- Every nonzero domain state has strictly positive shifted energy, because
the supplied residue offset is positive. -/
theorem shiftedHamiltonianForm_pos_of_ne
    (S : PrimeWindowSupplier Residue) (r : Residue)
    (β : ℝ) (hβ : 0 < β) {a : ℝ} (ha : 0 < a)
    (x : HamiltonianDomain L β hβ.le a)
    (hx : (x : RegulatedHilbert L) ≠ 0) :
    0 < shiftedHamiltonianForm L S r β hβ.le a x := by
  rw [shiftedHamiltonianForm_eq]
  have hH := Hamiltonian_nonnegative L β hβ ha x
  have hnorm : 0 < ‖(x : RegulatedHilbert L)‖ ^ 2 :=
    sq_pos_of_pos (norm_pos_iff.mpr hx)
  exact add_pos_of_nonneg_of_pos hH
    (mul_pos (S.value_pos r) hnorm)

/-- The existing full excitation lower bound is translated by the exact same
prime-window offset. The excitation gap relative to the shifted vacuum is
unchanged. -/
theorem shifted_excitation_lower_bound
    (S : PrimeWindowSupplier Residue) (r : Residue)
    (β : ℝ) (hβ : 0 < β) {a : ℝ} (ha : 0 < a)
    (x : HamiltonianDomain L β hβ.le a)
    (hperp :
      spectralCoordinates L β hβ.le
        (x : RegulatedHilbert L)
        (lambda0 L β hβ.le) = 0) :
    (S.value r +
        (-Real.log
          (1 - Real.exp (-24 * β * (L : ℝ)^3)) / a)) *
        ‖(x : RegulatedHilbert L)‖ ^ 2 ≤
      shiftedHamiltonianForm L S r β hβ.le a x := by
  have hbase :=
    full_excitation_lower_bound L β hβ ha x hperp
  rw [shiftedHamiltonianForm_eq]
  calc
    (S.value r +
        (-Real.log
          (1 - Real.exp (-24 * β * (L : ℝ)^3)) / a)) *
        ‖(x : RegulatedHilbert L)‖ ^ 2 =
      (-Real.log
          (1 - Real.exp (-24 * β * (L : ℝ)^3)) / a) *
        ‖(x : RegulatedHilbert L)‖ ^ 2 +
      S.value r * ‖(x : RegulatedHilbert L)‖ ^ 2 := by
        ring
    _ ≤ hamiltonianForm L β hβ.le a x +
        S.value r * ‖(x : RegulatedHilbert L)‖ ^ 2 :=
      add_le_add_right hbase _
    _ = _ := rfl

/-- Exact graph self-adjointness is preserved by the real scalar identity
shift on the same maximal domain. -/
theorem shifted_selfAdjoint_graph
    (S : PrimeWindowSupplier Residue) (r : Residue)
    (β : ℝ) (hβ : 0 ≤ β) (a : ℝ)
    (x y : RegulatedHilbert L) :
    (∀ z : HamiltonianDomain L β hβ a,
      inner ℝ (shiftedHamiltonian L S r β hβ a z) x =
        inner ℝ (z : RegulatedHilbert L) y) ↔
      ∃ hx : x ∈ HamiltonianDomain L β hβ a,
        shiftedHamiltonian L S r β hβ a ⟨x, hx⟩ = y := by
  constructor
  · intro h
    have hbase :
        ∀ z : HamiltonianDomain L β hβ a,
          inner ℝ (Hamiltonian L β hβ a z) x =
            inner ℝ (z : RegulatedHilbert L)
              (y - S.value r • x) := by
      intro z
      have hz := h z
      rw [shiftedHamiltonian_apply, inner_add_left,
        real_inner_smul_left] at hz
      rw [inner_sub_right, real_inner_smul_right]
      linarith
    obtain ⟨hx, hHx⟩ :=
      (selfAdjoint_graph L β hβ a x
        (y - S.value r • x)).mp hbase
    refine ⟨hx, ?_⟩
    rw [shiftedHamiltonian_apply, hHx]
    simp
  · rintro ⟨hx, hshift⟩
    have hHx :
        Hamiltonian L β hβ a ⟨x, hx⟩ =
          y - S.value r • x := by
      rw [shiftedHamiltonian_apply] at hshift
      exact eq_sub_of_add_eq hshift
    have hbase :
        ∀ z : HamiltonianDomain L β hβ a,
          inner ℝ (Hamiltonian L β hβ a z) x =
            inner ℝ (z : RegulatedHilbert L)
              (y - S.value r • x) :=
      (selfAdjoint_graph L β hβ a x
        (y - S.value r • x)).mpr ⟨hx, hHx⟩
    intro z
    have hz := hbase z
    rw [inner_sub_right, real_inner_smul_right] at hz
    rw [shiftedHamiltonian_apply, inner_add_left,
      real_inner_smul_left, hz]
    ring

end GRWTSK.Geometry.GaugeTheory.WilsonPrimeWindowShiftedHamiltonian
