/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonRealHamiltonianLine
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib

/-!
# Real Rayleigh segments between prime-window vacuum levels

Local mathematical attribution: grwtsk contributors.

The universal operator line `H(q) = H + q I` constructs every real scalar
shift.  This file proves the complementary state-space statement: two
orthogonal prime-window vacuum eigenstates construct every real Rayleigh
level between their two energies.

For `lambda < E < mu`, the normalized state is

  sqrt ((mu-E)/(mu-lambda)) Omega_lambda
    + sqrt ((E-lambda)/(mu-lambda)) Omega_mu.

Its norm is one, its Hamiltonian expectation is exactly `E`, and its squared
Hamiltonian residual is

  (E-lambda) * (mu-E).

Thus an interior value is a genuine Rayleigh value but not a point eigenvalue;
the uncertainty vanishes exactly at the two endpoints.  This is a finite,
source-exact real Hilbert-space construction.  It does not identify every real
number with an arithmetic residue, improve the centered Wilson mass gap,
produce a continuum limit, prove the endpoint arithmetic supplier, or imply RH.

SOURCE_PROOF_CANDIDATE; LEAN_BUILD_NOT_RUN; EXPECTED_TYPES_NOT_RUN;
FRESH_KERNEL_NOT_RUN; TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Geometry.GaugeTheory.WilsonPrimeWindowVacuumRayleighSegment

open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeHilbert
open GRWTSK.Geometry.GaugeTheory.WilsonFullRegulatedHamiltonian
open GRWTSK.Geometry.GaugeTheory.WilsonPrimeWindowResidueHamiltonian
open GRWTSK.Geometry.GaugeTheory.WilsonPrimeWindowGradedHamiltonian
open GRWTSK.Geometry.GaugeTheory.WilsonRealHamiltonianLine

variable {Residue : Type*} [Fintype Residue] [DecidableEq Residue]
variable (L : ℕ) [NeZero L]

/-- Lower-vacuum probability assigned to a requested real level `E`. -/
def lowerFraction
    (S : PrimeWindowSupplier Residue) (r s : Residue) (E : ℝ) : ℝ :=
  (S.value s - E) / (S.value s - S.value r)

/-- Upper-vacuum probability assigned to a requested real level `E`. -/
def upperFraction
    (S : PrimeWindowSupplier Residue) (r s : Residue) (E : ℝ) : ℝ :=
  (E - S.value r) / (S.value s - S.value r)

/-- Positive real amplitude on the lower vacuum. -/
def lowerAmplitude
    (S : PrimeWindowSupplier Residue) (r s : Residue) (E : ℝ) : ℝ :=
  Real.sqrt (lowerFraction S r s E)

/-- Positive real amplitude on the upper vacuum. -/
def upperAmplitude
    (S : PrimeWindowSupplier Residue) (r s : Residue) (E : ℝ) : ℝ :=
  Real.sqrt (upperFraction S r s E)

/-- The requested two-vacuum state in the genuine graded maximal domain. -/
def vacuumSegmentState
    (S : PrimeWindowSupplier Residue)
    (β : ℝ) (hβ : 0 < β) (a : ℝ)
    (r s : Residue) (E : ℝ) :
    GradedDomain (Residue := Residue) L β hβ.le a :=
  lowerAmplitude S r s E •
      gradedVacuum (Residue := Residue) L β hβ a r +
    upperAmplitude S r s E •
      gradedVacuum (Residue := Residue) L β hβ a s

/-- Ambient Hilbert vector of the two-vacuum domain state. -/
def vacuumSegmentVector
    (S : PrimeWindowSupplier Residue)
    (β : ℝ) (hβ : 0 < β) (a : ℝ)
    (r s : Residue) (E : ℝ) :
    GradedHilbert (Residue := Residue) L :=
  gradedDomainCoe (Residue := Residue) L β hβ.le a
    (vacuumSegmentState (Residue := Residue) L S β hβ a r s E)

/-- The failure of the constructed Rayleigh state to be an `E`-eigenvector. -/
def vacuumSegmentResidual
    (S : PrimeWindowSupplier Residue)
    (β : ℝ) (hβ : 0 < β) (a : ℝ)
    (r s : Residue) (E : ℝ) :
    GradedHilbert (Residue := Residue) L :=
  gradedHamiltonian (Residue := Residue) L S β hβ.le a
      (vacuumSegmentState (Residue := Residue) L S β hβ a r s E) -
    E • vacuumSegmentVector (Residue := Residue) L S β hβ a r s E

lemma lowerFraction_nonnegative
    (S : PrimeWindowSupplier Residue) {r s : Residue} {E : ℝ}
    (hrs : S.value r < S.value s) (hEs : E ≤ S.value s) :
    0 ≤ lowerFraction S r s E := by
  exact div_nonneg (sub_nonneg.mpr hEs) (sub_pos.mpr hrs).le

lemma upperFraction_nonnegative
    (S : PrimeWindowSupplier Residue) {r s : Residue} {E : ℝ}
    (hrs : S.value r < S.value s) (hrE : S.value r ≤ E) :
    0 ≤ upperFraction S r s E := by
  exact div_nonneg (sub_nonneg.mpr hrE) (sub_pos.mpr hrs).le

lemma lowerAmplitude_sq
    (S : PrimeWindowSupplier Residue) {r s : Residue} {E : ℝ}
    (hrs : S.value r < S.value s) (hEs : E ≤ S.value s) :
    (lowerAmplitude S r s E) ^ 2 = lowerFraction S r s E := by
  unfold lowerAmplitude
  exact Real.sq_sqrt (lowerFraction_nonnegative S hrs hEs)

lemma upperAmplitude_sq
    (S : PrimeWindowSupplier Residue) {r s : Residue} {E : ℝ}
    (hrs : S.value r < S.value s) (hrE : S.value r ≤ E) :
    (upperAmplitude S r s E) ^ 2 = upperFraction S r s E := by
  unfold upperAmplitude
  exact Real.sq_sqrt (upperFraction_nonnegative S hrs hrE)

lemma fraction_sum_one
    (S : PrimeWindowSupplier Residue) {r s : Residue} {E : ℝ}
    (hrs : S.value r < S.value s) :
    lowerFraction S r s E + upperFraction S r s E = 1 := by
  unfold lowerFraction upperFraction
  field_simp [ne_of_gt (sub_pos.mpr hrs)]
  ring

lemma amplitude_sq_sum_one
    (S : PrimeWindowSupplier Residue) {r s : Residue} {E : ℝ}
    (hrs : S.value r < S.value s)
    (hrE : S.value r ≤ E) (hEs : E ≤ S.value s) :
    (lowerAmplitude S r s E) ^ 2 +
      (upperAmplitude S r s E) ^ 2 = 1 := by
  rw [lowerAmplitude_sq S hrs hEs, upperAmplitude_sq S hrs hrE]
  exact fraction_sum_one S hrs

lemma amplitude_weighted_energy
    (S : PrimeWindowSupplier Residue) {r s : Residue} {E : ℝ}
    (hrs : S.value r < S.value s)
    (hrE : S.value r ≤ E) (hEs : E ≤ S.value s) :
    (lowerAmplitude S r s E) ^ 2 * S.value r +
      (upperAmplitude S r s E) ^ 2 * S.value s = E := by
  rw [lowerAmplitude_sq S hrs hEs, upperAmplitude_sq S hrs hrE]
  unfold lowerFraction upperFraction
  field_simp [ne_of_gt (sub_pos.mpr hrs)]
  ring

lemma amplitude_weighted_variance
    (S : PrimeWindowSupplier Residue) {r s : Residue} {E : ℝ}
    (hrs : S.value r < S.value s)
    (hrE : S.value r ≤ E) (hEs : E ≤ S.value s) :
    (lowerAmplitude S r s E * (S.value r - E)) ^ 2 +
      (upperAmplitude S r s E * (S.value s - E)) ^ 2 =
        (E - S.value r) * (S.value s - E) := by
  rw [mul_pow, mul_pow, lowerAmplitude_sq S hrs hEs,
    upperAmplitude_sq S hrs hrE]
  unfold lowerFraction upperFraction
  field_simp [ne_of_gt (sub_pos.mpr hrs)]
  ring

lemma blockVector_smul
    (r : Residue) (c : ℝ) (x : RegulatedHilbert L) :
    blockVector (Residue := Residue) L r (c • x) =
      c • blockVector (Residue := Residue) L r x := by
  ext t
  by_cases htr : t = r
  · subst t
    simp [blockVector]
  · simp [blockVector, htr]

@[simp]
theorem gradedDomainCoe_gradedVacuum
    (β : ℝ) (hβ : 0 < β) (a : ℝ) (r : Residue) :
    gradedDomainCoe (Residue := Residue) L β hβ.le a
        (gradedVacuum (Residue := Residue) L β hβ a r) =
      blockVector (Residue := Residue) L r (vacuum L β hβ) := by
  unfold gradedVacuum
  exact gradedDomainCoe_blockState
    (Residue := Residue) L β hβ.le a r (vacuumDomain L β hβ a)

lemma blockVacuum_norm
    (β : ℝ) (hβ : 0 < β) (r : Residue) :
    ‖blockVector (Residue := Residue) L r (vacuum L β hβ)‖ = 1 := by
  simp [blockVector, vacuum_unit L β hβ]

lemma blockVacuum_self_inner
    (β : ℝ) (hβ : 0 < β) (r : Residue) :
    inner ℝ
      (blockVector (Residue := Residue) L r (vacuum L β hβ))
      (blockVector (Residue := Residue) L r (vacuum L β hβ)) = 1 := by
  rw [real_inner_self_eq_norm_sq, blockVacuum_norm]
  norm_num

lemma blockVacuum_inner_ne
    (β : ℝ) (hβ : 0 < β) {r s : Residue} (hrs : r ≠ s) :
    inner ℝ
      (blockVector (Residue := Residue) L r (vacuum L β hβ))
      (blockVector (Residue := Residue) L s (vacuum L β hβ)) = 0 := by
  rw [PiLp.inner_apply]
  apply Finset.sum_eq_zero
  intro t ht
  by_cases htr : t = r
  · subst t
    simp [blockVector, hrs]
  · simp [blockVector, htr]

lemma vacuumSegmentVector_eq
    (S : PrimeWindowSupplier Residue)
    (β : ℝ) (hβ : 0 < β) (a : ℝ)
    (r s : Residue) (E : ℝ) :
    vacuumSegmentVector (Residue := Residue) L S β hβ a r s E =
      lowerAmplitude S r s E •
          blockVector (Residue := Residue) L r (vacuum L β hβ) +
        upperAmplitude S r s E •
          blockVector (Residue := Residue) L s (vacuum L β hβ) := by
  unfold vacuumSegmentVector vacuumSegmentState
  rw [map_add, map_smul, map_smul,
    gradedDomainCoe_gradedVacuum, gradedDomainCoe_gradedVacuum]

lemma vacuumSegmentHamiltonian_eq
    (S : PrimeWindowSupplier Residue)
    (β : ℝ) (hβ : 0 < β) (a : ℝ)
    (r s : Residue) (E : ℝ) :
    gradedHamiltonian (Residue := Residue) L S β hβ.le a
        (vacuumSegmentState (Residue := Residue) L S β hβ a r s E) =
      (lowerAmplitude S r s E * S.value r) •
          blockVector (Residue := Residue) L r (vacuum L β hβ) +
        (upperAmplitude S r s E * S.value s) •
          blockVector (Residue := Residue) L s (vacuum L β hβ) := by
  unfold vacuumSegmentState
  rw [map_add, map_smul, map_smul,
    gradedHamiltonian_vacuum, gradedHamiltonian_vacuum,
    blockVector_smul, blockVector_smul, smul_smul, smul_smul]

/-- The interpolating state is normalized in the actual finite L2 direct sum. -/
theorem vacuumSegment_norm_sq
    (S : PrimeWindowSupplier Residue)
    (β : ℝ) (hβ : 0 < β) (a : ℝ)
    {r s : Residue} (hrs0 : r ≠ s)
    (hrs : S.value r < S.value s)
    {E : ℝ} (hrE : S.value r ≤ E) (hEs : E ≤ S.value s) :
    ‖vacuumSegmentVector (Residue := Residue) L S β hβ a r s E‖ ^ 2 = 1 := by
  rw [← real_inner_self_eq_norm_sq, vacuumSegmentVector_eq]
  have huv := blockVacuum_inner_ne (Residue := Residue) L β hβ hrs0
  have hvu :
      inner ℝ
        (blockVector (Residue := Residue) L s (vacuum L β hβ))
        (blockVector (Residue := Residue) L r (vacuum L β hβ)) = 0 := by
    rw [real_inner_comm]
    exact huv
  have huu := blockVacuum_self_inner (Residue := Residue) L β hβ r
  have hvv := blockVacuum_self_inner (Residue := Residue) L β hβ s
  simp only [inner_add_left, inner_add_right,
    real_inner_smul_left, inner_smul_right]
  rw [huv, hvu, huu, hvv]
  nlinarith [amplitude_sq_sum_one S hrs hrE hEs]

/-- Unit-norm form of the state. -/
theorem vacuumSegment_norm
    (S : PrimeWindowSupplier Residue)
    (β : ℝ) (hβ : 0 < β) (a : ℝ)
    {r s : Residue} (hrs0 : r ≠ s)
    (hrs : S.value r < S.value s)
    {E : ℝ} (hrE : S.value r ≤ E) (hEs : E ≤ S.value s) :
    ‖vacuumSegmentVector (Residue := Residue) L S β hβ a r s E‖ = 1 := by
  have hsq := vacuumSegment_norm_sq
    (Residue := Residue) L S β hβ a hrs0 hrs hrE hEs
  nlinarith [norm_nonneg
    (vacuumSegmentVector (Residue := Residue) L S β hβ a r s E)]

/-- The normalized state constructs the requested real Rayleigh level. -/
theorem vacuumSegment_energy_eq
    (S : PrimeWindowSupplier Residue)
    (β : ℝ) (hβ : 0 < β) (a : ℝ)
    {r s : Residue} (hrs0 : r ≠ s)
    (hrs : S.value r < S.value s)
    {E : ℝ} (hrE : S.value r ≤ E) (hEs : E ≤ S.value s) :
    gradedHamiltonianForm (Residue := Residue) L S β hβ.le a
      (vacuumSegmentState (Residue := Residue) L S β hβ a r s E) = E := by
  unfold gradedHamiltonianForm
  rw [vacuumSegmentVector_eq, vacuumSegmentHamiltonian_eq]
  have huv := blockVacuum_inner_ne (Residue := Residue) L β hβ hrs0
  have hvu :
      inner ℝ
        (blockVector (Residue := Residue) L s (vacuum L β hβ))
        (blockVector (Residue := Residue) L r (vacuum L β hβ)) = 0 := by
    rw [real_inner_comm]
    exact huv
  have huu := blockVacuum_self_inner (Residue := Residue) L β hβ r
  have hvv := blockVacuum_self_inner (Residue := Residue) L β hβ s
  simp only [inner_add_left, inner_add_right,
    real_inner_smul_left, inner_smul_right]
  rw [huv, hvu, huu, hvv]
  nlinarith [amplitude_weighted_energy S hrs hrE hEs]

lemma vacuumSegmentResidual_eq
    (S : PrimeWindowSupplier Residue)
    (β : ℝ) (hβ : 0 < β) (a : ℝ)
    (r s : Residue) (E : ℝ) :
    vacuumSegmentResidual (Residue := Residue) L S β hβ a r s E =
      (lowerAmplitude S r s E * (S.value r - E)) •
          blockVector (Residue := Residue) L r (vacuum L β hβ) +
        (upperAmplitude S r s E * (S.value s - E)) •
          blockVector (Residue := Residue) L s (vacuum L β hβ) := by
  unfold vacuumSegmentResidual
  rw [vacuumSegmentHamiltonian_eq, vacuumSegmentVector_eq]
  module

/-- Exact two-level variance formula. -/
theorem vacuumSegment_residual_norm_sq
    (S : PrimeWindowSupplier Residue)
    (β : ℝ) (hβ : 0 < β) (a : ℝ)
    {r s : Residue} (hrs0 : r ≠ s)
    (hrs : S.value r < S.value s)
    {E : ℝ} (hrE : S.value r ≤ E) (hEs : E ≤ S.value s) :
    ‖vacuumSegmentResidual (Residue := Residue) L S β hβ a r s E‖ ^ 2 =
      (E - S.value r) * (S.value s - E) := by
  rw [← real_inner_self_eq_norm_sq, vacuumSegmentResidual_eq]
  have huv := blockVacuum_inner_ne (Residue := Residue) L β hβ hrs0
  have hvu :
      inner ℝ
        (blockVector (Residue := Residue) L s (vacuum L β hβ))
        (blockVector (Residue := Residue) L r (vacuum L β hβ)) = 0 := by
    rw [real_inner_comm]
    exact huv
  have huu := blockVacuum_self_inner (Residue := Residue) L β hβ r
  have hvv := blockVacuum_self_inner (Residue := Residue) L β hβ s
  simp only [inner_add_left, inner_add_right,
    real_inner_smul_left, inner_smul_right]
  rw [huv, hvu, huu, hvv]
  nlinarith [amplitude_weighted_variance S hrs hrE hEs]

/-- The spectral uncertainty is at most one quarter of the squared level gap. -/
theorem vacuumSegment_residual_norm_sq_le_quarter
    (S : PrimeWindowSupplier Residue)
    (β : ℝ) (hβ : 0 < β) (a : ℝ)
    {r s : Residue} (hrs0 : r ≠ s)
    (hrs : S.value r < S.value s)
    {E : ℝ} (hrE : S.value r ≤ E) (hEs : E ≤ S.value s) :
    ‖vacuumSegmentResidual (Residue := Residue) L S β hβ a r s E‖ ^ 2 ≤
      (S.value s - S.value r) ^ 2 / 4 := by
  rw [vacuumSegment_residual_norm_sq
    (Residue := Residue) L S β hβ a hrs0 hrs hrE hEs]
  nlinarith [sq_nonneg ((E - S.value r) - (S.value s - E))]

/-- The constructed state is an exact eigenvector only at the two endpoints. -/
theorem vacuumSegment_residual_eq_zero_iff
    (S : PrimeWindowSupplier Residue)
    (β : ℝ) (hβ : 0 < β) (a : ℝ)
    {r s : Residue} (hrs0 : r ≠ s)
    (hrs : S.value r < S.value s)
    {E : ℝ} (hrE : S.value r ≤ E) (hEs : E ≤ S.value s) :
    vacuumSegmentResidual (Residue := Residue) L S β hβ a r s E = 0 ↔
      E = S.value r ∨ E = S.value s := by
  constructor
  · intro hzero
    have hnorm :
        ‖vacuumSegmentResidual (Residue := Residue) L S β hβ a r s E‖ ^ 2 = 0 := by
      rw [hzero, norm_zero]
      norm_num
    rw [vacuumSegment_residual_norm_sq
      (Residue := Residue) L S β hβ a hrs0 hrs hrE hEs] at hnorm
    rcases mul_eq_zero.mp hnorm with hleft | hright
    · left
      linarith
    · right
      linarith
  · intro hend
    have hsq :
        ‖vacuumSegmentResidual (Residue := Residue) L S β hβ a r s E‖ ^ 2 = 0 := by
      rw [vacuumSegment_residual_norm_sq
        (Residue := Residue) L S β hβ a hrs0 hrs hrE hEs]
      rcases hend with h | h <;> simp [h]
    have hnorm :
        ‖vacuumSegmentResidual (Residue := Residue) L S β hβ a r s E‖ = 0 := by
      nlinarith [norm_nonneg
        (vacuumSegmentResidual (Residue := Residue) L S β hβ a r s E)]
    exact norm_eq_zero.mp hnorm

/-- Every strict interior Rayleigh value is not a point eigenvalue on this
particular two-vacuum state. -/
theorem vacuumSegment_not_eigen_of_interior
    (S : PrimeWindowSupplier Residue)
    (β : ℝ) (hβ : 0 < β) (a : ℝ)
    {r s : Residue} (hrs0 : r ≠ s)
    (hrs : S.value r < S.value s)
    {E : ℝ} (hrE : S.value r < E) (hEs : E < S.value s) :
    gradedHamiltonian (Residue := Residue) L S β hβ.le a
        (vacuumSegmentState (Residue := Residue) L S β hβ a r s E) ≠
      E • vacuumSegmentVector (Residue := Residue) L S β hβ a r s E := by
  intro heigen
  have hzero :
      vacuumSegmentResidual (Residue := Residue) L S β hβ a r s E = 0 :=
    sub_eq_zero.mpr heigen
  have hend := (vacuumSegment_residual_eq_zero_iff
    (Residue := Residue) L S β hβ a hrs0 hrs hrE.le hEs.le).mp hzero
  rcases hend with h | h <;> linarith

/-- Source-exact existence package: every real level in the closed interval
between two ordered residue vacua is realized by a unit domain state, with its
full spectral residual retained. -/
theorem exists_unit_state_with_energy_between_vacua
    (S : PrimeWindowSupplier Residue)
    (β : ℝ) (hβ : 0 < β) (a : ℝ)
    {r s : Residue} (hrs0 : r ≠ s)
    (hrs : S.value r < S.value s)
    {E : ℝ} (hrE : S.value r ≤ E) (hEs : E ≤ S.value s) :
    ∃ x : GradedDomain (Residue := Residue) L β hβ.le a,
      ‖gradedDomainCoe (Residue := Residue) L β hβ.le a x‖ = 1 ∧
      gradedHamiltonianForm (Residue := Residue) L S β hβ.le a x = E ∧
      ‖gradedHamiltonian (Residue := Residue) L S β hβ.le a x -
          E • gradedDomainCoe (Residue := Residue) L β hβ.le a x‖ ^ 2 =
        (E - S.value r) * (S.value s - E) := by
  refine ⟨vacuumSegmentState (Residue := Residue) L S β hβ a r s E, ?_, ?_, ?_⟩
  · exact vacuumSegment_norm
      (Residue := Residue) L S β hβ a hrs0 hrs hrE hEs
  · exact vacuumSegment_energy_eq
      (Residue := Residue) L S β hβ a hrs0 hrs hrE hEs
  · exact vacuumSegment_residual_norm_sq
      (Residue := Residue) L S β hβ a hrs0 hrs hrE hEs

end GRWTSK.Geometry.GaugeTheory.WilsonPrimeWindowVacuumRayleighSegment
