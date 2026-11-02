/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonPrimeWindowGradedEvolution
import Mathlib

/-!
# The real affine line of regulated Wilson Hamiltonians

Local mathematical attribution: grwtsk contributors.

The arithmetic prime-window construction selects special real parameters
`q = log p` inside the universal affine operator line

  H(q) = H + q I,  q : ℝ.

This file separates that real line from its discrete prime labels.  It proves
the exact quadratic form, its restriction to every real affine state line
`x + t y`, polarization and finite-difference reconstruction, vacuum readout,
eigenvalue translation, graph self-adjointness, and the real decay character
`exp (-t q)`.  The existing prime-window Hamiltonians and their evolution are
then recovered by pullback along `r ↦ log (p_r)`.

The line does not turn every real `q` into an arithmetic residue.  Prime
windows mark a distinguished injective transcendental subset of the line.
No continuum limit, physical mass gap, endpoint arithmetic estimate, or RH
conclusion is asserted.

SOURCE_PROOF_CANDIDATE; LEAN_BUILD_NOT_RUN; EXPECTED_TYPES_NOT_RUN;
FRESH_KERNEL_NOT_RUN; TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Geometry.GaugeTheory.WilsonRealHamiltonianLine

open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeHilbert
open GRWTSK.Geometry.GaugeTheory.WilsonSliceSpectralApproximation
open GRWTSK.Geometry.GaugeTheory.WilsonSlicePositivePrincipal
open GRWTSK.Geometry.GaugeTheory.WilsonFullRegulatedHamiltonian
open GRWTSK.Geometry.GaugeTheory.WilsonPrimeWindowResidueHamiltonian
open GRWTSK.Geometry.GaugeTheory.WilsonPrimeWindowShiftedHamiltonian
open GRWTSK.Geometry.GaugeTheory.WilsonPrimeWindowGradedEvolution

variable {Residue : Type*}
variable (L : ℕ) [NeZero L]

/-- Universal affine real line of Hamiltonians on the unchanged maximal
logarithmic domain. -/
def realLineHamiltonian
    (q β : ℝ) (hβ : 0 ≤ β) (a : ℝ) :
    HamiltonianDomain L β hβ a →ₗ[ℝ] RegulatedHilbert L :=
  Hamiltonian L β hβ a +
    q • (HamiltonianDomain L β hβ a).subtype

@[simp]
theorem realLineHamiltonian_apply
    (q β : ℝ) (hβ : 0 ≤ β) (a : ℝ)
    (x : HamiltonianDomain L β hβ a) :
    realLineHamiltonian L q β hβ a x =
      Hamiltonian L β hβ a x + q • (x : RegulatedHilbert L) := by
  simp [realLineHamiltonian]

/-- Quadratic form of the real affine Hamiltonian line. -/
def realLineForm
    (q β : ℝ) (hβ : 0 ≤ β) (a : ℝ)
    (x : HamiltonianDomain L β hβ a) : ℝ :=
  inner ℝ (x : RegulatedHilbert L)
    (realLineHamiltonian L q β hβ a x)

theorem realLineForm_eq
    (q β : ℝ) (hβ : 0 ≤ β) (a : ℝ)
    (x : HamiltonianDomain L β hβ a) :
    realLineForm L q β hβ a x =
      hamiltonianForm L β hβ a x +
        q * ‖(x : RegulatedHilbert L)‖ ^ 2 := by
  calc
    realLineForm L q β hβ a x =
        inner ℝ (x : RegulatedHilbert L)
          (Hamiltonian L β hβ a x +
            q • (x : RegulatedHilbert L)) := by
      simp [realLineForm]
    _ = inner ℝ (x : RegulatedHilbert L)
          (Hamiltonian L β hβ a x) +
        q * inner ℝ (x : RegulatedHilbert L)
          (x : RegulatedHilbert L) := by
      rw [inner_add_right, real_inner_smul_right]
    _ = hamiltonianForm L β hβ a x +
        q * ‖(x : RegulatedHilbert L)‖ ^ 2 := by
      rw [real_inner_self_eq_norm_sq]
      rfl

/-- Restriction of the Hamiltonian form to the real affine state line
`t ↦ x + t y`. -/
def realStateLineForm
    (q β : ℝ) (hβ : 0 ≤ β) (a : ℝ)
    (x y : HamiltonianDomain L β hβ a) (t : ℝ) : ℝ :=
  realLineForm L q β hβ a (x + t • y)

/-- Every Hamiltonian form restricts to a real quadratic polynomial.  This
interpolation formula avoids any choice of coordinates. -/
theorem realStateLineForm_eq_interpolation
    (q β : ℝ) (hβ : 0 ≤ β) (a : ℝ)
    (x y : HamiltonianDomain L β hβ a) (t : ℝ) :
    realStateLineForm L q β hβ a x y t =
      (1 - t) * realLineForm L q β hβ a x +
      (t ^ 2 - t) * realLineForm L q β hβ a y +
      t * realLineForm L q β hβ a (x + y) := by
  unfold realStateLineForm realLineForm
  simp only [map_add, map_smul, Submodule.coe_add, Submodule.coe_smul,
    inner_add_left, inner_add_right, real_inner_smul_left,
    real_inner_smul_right]
  ring

/-- Polar pairing recovered from the quadratic form. -/
def realLinePolar
    (q β : ℝ) (hβ : 0 ≤ β) (a : ℝ)
    (x y : HamiltonianDomain L β hβ a) : ℝ :=
  (realLineForm L q β hβ a (x + y) -
    realLineForm L q β hβ a x -
    realLineForm L q β hβ a y) / 2

/-- Polynomial form of the real state line. -/
theorem realStateLineForm_eq_polynomial
    (q β : ℝ) (hβ : 0 ≤ β) (a : ℝ)
    (x y : HamiltonianDomain L β hβ a) (t : ℝ) :
    realStateLineForm L q β hβ a x y t =
      realLineForm L q β hβ a x +
      2 * t * realLinePolar L q β hβ a x y +
      t ^ 2 * realLineForm L q β hβ a y := by
  rw [realStateLineForm_eq_interpolation]
  unfold realLinePolar
  ring

/-- The values at `t = ±1` reconstruct the direction form. -/
theorem realLine_constructs_direction_form
    (q β : ℝ) (hβ : 0 ≤ β) (a : ℝ)
    (x y : HamiltonianDomain L β hβ a) :
    realLineForm L q β hβ a y =
      (realStateLineForm L q β hβ a x y 1 +
        realStateLineForm L q β hβ a x y (-1) -
        2 * realLineForm L q β hβ a x) / 2 := by
  rw [realStateLineForm_eq_polynomial,
    realStateLineForm_eq_polynomial]
  ring

/-- The odd finite difference on the line reconstructs the polar pairing. -/
theorem realLine_constructs_polar
    (q β : ℝ) (hβ : 0 ≤ β) (a : ℝ)
    (x y : HamiltonianDomain L β hβ a) :
    realLinePolar L q β hβ a x y =
      (realStateLineForm L q β hβ a x y 1 -
        realStateLineForm L q β hβ a x y (-1)) / 4 := by
  rw [realStateLineForm_eq_polynomial,
    realStateLineForm_eq_polynomial]
  ring

/-- The normalized source vacuum as a point on every real Hamiltonian line. -/
def vacuumDomain
    (β : ℝ) (hβ : 0 < β) (a : ℝ) :
    HamiltonianDomain L β hβ.le a :=
  ⟨vacuum L β hβ, vacuum_mem_domain L β hβ a⟩

/-- The vacuum is an eigenvector of `H(q)` with eigenvalue `q`. -/
theorem realLineHamiltonian_vacuum
    (q β : ℝ) (hβ : 0 < β) (a : ℝ) :
    realLineHamiltonian L q β hβ.le a
        (vacuumDomain L β hβ a) =
      q • vacuum L β hβ := by
  rw [realLineHamiltonian_apply]
  simp [vacuumDomain, Hamiltonian_vacuum_zero]

/-- The real coordinate `q` is exactly the vacuum energy. -/
theorem realLineForm_vacuum
    (q β : ℝ) (hβ : 0 < β) (a : ℝ) :
    realLineForm L q β hβ.le a
        (vacuumDomain L β hβ a) = q := by
  rw [realLineForm_eq]
  have hzero :
      hamiltonianForm L β hβ.le a
        (vacuumDomain L β hβ a) = 0 := by
    unfold hamiltonianForm vacuumDomain
    rw [Hamiltonian_vacuum_zero]
    simp
  rw [hzero]
  change 0 + q * ‖vacuum L β hβ‖ ^ 2 = q
  rw [vacuum_unit]
  ring

/-- For `q ≥ 0`, the real parameter is a global form lower bound. -/
theorem realLine_ground_lower_bound
    (q β : ℝ) (hq : 0 ≤ q) (hβ : 0 < β)
    {a : ℝ} (ha : 0 < a)
    (x : HamiltonianDomain L β hβ.le a) :
    q * ‖(x : RegulatedHilbert L)‖ ^ 2 ≤
      realLineForm L q β hβ.le a x := by
  rw [realLineForm_eq]
  have hH := Hamiltonian_nonnegative L β hβ ha x
  linarith

/-- Every eigenvalue is translated by the real line parameter. -/
theorem realLineHamiltonian_eigen
    (q β : ℝ) (hβ : 0 ≤ β) (a E : ℝ)
    (x : HamiltonianDomain L β hβ a)
    (heigen :
      Hamiltonian L β hβ a x =
        E • (x : RegulatedHilbert L)) :
    realLineHamiltonian L q β hβ a x =
      (E + q) • (x : RegulatedHilbert L) := by
  rw [realLineHamiltonian_apply, heigen, add_smul]

/-- Vacuum centering removes the line coordinate exactly. -/
theorem realLineForm_centered
    (q β : ℝ) (hβ : 0 ≤ β) (a : ℝ)
    (x : HamiltonianDomain L β hβ a) :
    realLineForm L q β hβ a x -
        q * ‖(x : RegulatedHilbert L)‖ ^ 2 =
      hamiltonianForm L β hβ a x := by
  rw [realLineForm_eq]
  ring

/-- Difference of two points on the real Hamiltonian line. -/
theorem realLineForm_sub
    (p q β : ℝ) (hβ : 0 ≤ β) (a : ℝ)
    (x : HamiltonianDomain L β hβ a) :
    realLineForm L p β hβ a x -
      realLineForm L q β hβ a x =
        (p - q) * ‖(x : RegulatedHilbert L)‖ ^ 2 := by
  rw [realLineForm_eq, realLineForm_eq]
  ring

/-- The real line parameter is recovered injectively from vacuum energy. -/
theorem vacuumEnergyLine_injective
    (β : ℝ) (hβ : 0 < β) (a : ℝ) :
    Function.Injective
      (fun q : ℝ =>
        realLineForm L q β hβ.le a
          (vacuumDomain L β hβ a)) := by
  intro p q hpq
  simpa only [realLineForm_vacuum L p β hβ a,
    realLineForm_vacuum L q β hβ a] using hpq

/-- Exact graph self-adjointness is preserved at every real point of the line. -/
theorem realLine_selfAdjoint_graph
    (q β : ℝ) (hβ : 0 ≤ β) (a : ℝ)
    (x y : RegulatedHilbert L) :
    (∀ z : HamiltonianDomain L β hβ a,
      inner ℝ (realLineHamiltonian L q β hβ a z) x =
        inner ℝ (z : RegulatedHilbert L) y) ↔
      ∃ hx : x ∈ HamiltonianDomain L β hβ a,
        realLineHamiltonian L q β hβ a ⟨x, hx⟩ = y := by
  constructor
  · intro h
    have hbase :
        ∀ z : HamiltonianDomain L β hβ a,
          inner ℝ (Hamiltonian L β hβ a z) x =
            inner ℝ (z : RegulatedHilbert L) (y - q • x) := by
      intro z
      have hz := h z
      rw [realLineHamiltonian_apply, inner_add_left,
        real_inner_smul_left] at hz
      rw [inner_sub_right, real_inner_smul_right]
      linarith
    obtain ⟨hx, hHx⟩ :=
      (selfAdjoint_graph L β hβ a x (y - q • x)).mp hbase
    refine ⟨hx, ?_⟩
    rw [realLineHamiltonian_apply, hHx]
    simp
  · rintro ⟨hx, hshift⟩
    have hHx :
        Hamiltonian L β hβ a ⟨x, hx⟩ = y - q • x := by
      rw [realLineHamiltonian_apply] at hshift
      exact eq_sub_of_add_eq hshift
    have hbase :
        ∀ z : HamiltonianDomain L β hβ a,
          inner ℝ (Hamiltonian L β hβ a z) x =
            inner ℝ (z : RegulatedHilbert L) (y - q • x) :=
      (selfAdjoint_graph L β hβ a x (y - q • x)).mpr ⟨hx, hHx⟩
    intro z
    have hz := hbase z
    rw [inner_sub_right, real_inner_smul_right] at hz
    rw [realLineHamiltonian_apply, inner_add_left,
      real_inner_smul_left, hz]
    ring

/-- The previous residue-indexed Hamiltonian is the pullback of the universal
real line along `r ↦ S.value r = log p_r`. -/
theorem shiftedHamiltonian_eq_realLine
    (S : PrimeWindowSupplier Residue) (r : Residue)
    (β : ℝ) (hβ : 0 ≤ β) (a : ℝ) :
    shiftedHamiltonian L S r β hβ a =
      realLineHamiltonian L (S.value r) β hβ a := by
  rfl

theorem shiftedHamiltonianForm_eq_realLine
    (S : PrimeWindowSupplier Residue) (r : Residue)
    (β : ℝ) (hβ : 0 ≤ β) (a : ℝ)
    (x : HamiltonianDomain L β hβ a) :
    shiftedHamiltonianForm L S r β hβ a x =
      realLineForm L (S.value r) β hβ a x := by
  rfl

/-- Scalar decay character generated by the real line coordinate. -/
def decayLine (q t : ℝ) : ℝ :=
  Real.exp (-t * q)

theorem decayLine_pos (q t : ℝ) :
    0 < decayLine q t :=
  Real.exp_pos _

theorem decayLine_add (q s t : ℝ) :
    decayLine q (s + t) =
      decayLine q s * decayLine q t := by
  unfold decayLine
  rw [show -(s + t) * q = (-s * q) + (-t * q) by ring,
    Real.exp_add]

/-- Any nonzero real time recovers the generator `q` from its positive decay. -/
theorem q_eq_neg_log_decayLine
    (q t : ℝ) (ht : t ≠ 0) :
    q = -Real.log (decayLine q t) / t := by
  unfold decayLine
  rw [Real.log_exp]
  field_simp [ht]

/-- Existing prime-window damping is the pullback of the same real line. -/
theorem stepWeight_eq_decayLine
    (S : PrimeWindowSupplier Residue) (a : ℝ) (r : Residue) :
    stepWeight S a r = decayLine (S.value r) a := by
  rfl

theorem primeWindowQ_eq_neg_log_stepWeight
    (S : PrimeWindowSupplier Residue)
    (a : ℝ) (ha : a ≠ 0) (r : Residue) :
    S.value r = -Real.log (stepWeight S a r) / a := by
  rw [stepWeight_eq_decayLine]
  exact q_eq_neg_log_decayLine (S.value r) a ha

/-- One unit of real time converts the nonalgebraic generator `log p` to the
algebraic positive decay `1 / p`. -/
theorem primeWindow_decay_one
    (S : PrimeWindowSupplier Residue) (r : Residue) :
    decayLine (S.value r) 1 =
      1 / (S.prime r : ℝ) := by
  have hp : (0 : ℝ) < S.prime r := by
    exact_mod_cast (S.isPrime r).pos
  rw [decayLine, S.value_eq_log]
  simp [Real.exp_neg, Real.exp_log hp]

end GRWTSK.Geometry.GaugeTheory.WilsonRealHamiltonianLine
