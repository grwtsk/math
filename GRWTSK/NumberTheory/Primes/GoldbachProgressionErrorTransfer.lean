/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.GoldbachProgressionMainModel
import GRWTSK.NumberTheory.Primes.GoldbachRationalArcExpansion
import Mathlib.MeasureTheory.Measure.Real
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Error transfer for the canonical Goldbach progression model

This module converts supplied residue-class discrepancy bounds into a bound for
the phase-weighted exponential discrepancy and then into a pointwise quadratic
circle-model residual bound. It also proves a coarse exact measure budget for
one clipped three-lift rational arc.

The module constructs no progression estimate. All residue-class bounds remain
explicit hypotheses. No cancellation between residue discrepancies is assumed.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Primes.GoldbachProgressionErrorTransfer

open scoped BigOperators Real
open Set MeasureTheory
open GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.UnitIntervalCharacters
open GRWTSK.NumberTheory.Primes.GoldbachWeighted
open GRWTSK.NumberTheory.Primes.GoldbachCircleIntegral
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcs
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcExpansion
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcCoordinates
open GRWTSK.NumberTheory.Primes.GoldbachResidueClassDecomposition
open GRWTSK.NumberTheory.Primes.GoldbachProgressionMainModel

noncomputable section

/-- Every canonical integer character has pointwise norm one. -/
theorem norm_unitCharacter (m : ℤ) (x : ℝ) :
    ‖unitCharacter m x‖ = 1 := by
  unfold unitCharacter
  rw [fourier_apply]
  exact Circle.norm_coe _

/-- Every rational-center phase has norm one. -/
theorem norm_goldbachRationalPhase (a q n : ℕ) :
    ‖goldbachRationalPhase a q n‖ = 1 := by
  unfold goldbachRationalPhase
  exact norm_unitCharacter (n : ℤ)
    (goldbachRationalArcCenter a q)

/-- The finite reduced residue set used by the normalized coefficient. -/
def goldbachCoprimeResidues (q : ℕ) : Finset ℕ :=
  (Finset.range q).filter (fun r => q.Coprime r)

/-- Its cardinality is Euler's totient by the exact definition. -/
theorem card_goldbachCoprimeResidues (q : ℕ) :
    (goldbachCoprimeResidues q).card = Nat.totient q := by
  rfl

/-- The finite coprime phase sum has norm at most `φ(q)`. -/
theorem norm_goldbachCoprimePhaseSum_le
    (a q : ℕ) :
    ‖goldbachCoprimePhaseSum a q‖ ≤ (Nat.totient q : ℝ) := by
  change
    ‖∑ r ∈ goldbachCoprimeResidues q,
        goldbachRationalPhase a q r‖ ≤
      (Nat.totient q : ℝ)
  calc
    ‖∑ r ∈ goldbachCoprimeResidues q,
        goldbachRationalPhase a q r‖ ≤
      ∑ r ∈ goldbachCoprimeResidues q,
        ‖goldbachRationalPhase a q r‖ :=
      norm_sum_le _ _
    _ = ∑ _r ∈ goldbachCoprimeResidues q, (1 : ℝ) := by
      apply Finset.sum_congr rfl
      intro r hr
      rw [norm_goldbachRationalPhase]
    _ = (Nat.totient q : ℝ) := by
      simp [card_goldbachCoprimeResidues]

/-- For a positive denominator, the normalized finite Ramanujan coefficient
has norm at most one. -/
theorem norm_goldbachNormalizedRamanujanCoefficient_le_one
    {a q : ℕ} (hq : 0 < q) :
    ‖goldbachNormalizedRamanujanCoefficient a q‖ ≤ 1 := by
  have hφN : 0 < Nat.totient q :=
    Nat.totient_pos.mpr hq
  have hφR : (0 : ℝ) < (Nat.totient q : ℝ) := by
    exact_mod_cast hφN
  calc
    ‖goldbachNormalizedRamanujanCoefficient a q‖ =
        ((Nat.totient q : ℝ)⁻¹) *
          ‖goldbachCoprimePhaseSum a q‖ := by
      simp [goldbachNormalizedRamanujanCoefficient, norm_mul]
    _ ≤ ((Nat.totient q : ℝ)⁻¹) *
          (Nat.totient q : ℝ) :=
      mul_le_mul_of_nonneg_left
        (norm_goldbachCoprimePhaseSum_le a q)
        (inv_nonneg.mpr hφR.le)
    _ = 1 := by
      exact inv_mul_cancel₀ hφR.ne'

/-- The finite integer exponential kernel has the elementary norm bound
`N + 1`. -/
theorem norm_goldbachIntegerExponentialKernel_le
    (N : ℕ) (β : ℝ) :
    ‖goldbachIntegerExponentialKernel N β‖ ≤ (N + 1 : ℝ) := by
  unfold goldbachIntegerExponentialKernel
  calc
    ‖∑ n ∈ Finset.range (N + 1),
        unitCharacter (n : ℤ) β‖ ≤
      ∑ n ∈ Finset.range (N + 1),
        ‖unitCharacter (n : ℤ) β‖ :=
      norm_sum_le _ _
    _ = ∑ _n ∈ Finset.range (N + 1), (1 : ℝ) := by
      apply Finset.sum_congr rfl
      intro n hn
      rw [norm_unitCharacter]
    _ = (N + 1 : ℝ) := by simp

/-- The complete prime-log norm budget is nonnegative. -/
theorem goldbachPrimeLogTotal_nonneg (N : ℕ) :
    0 ≤ goldbachPrimeLogTotal N := by
  unfold goldbachPrimeLogTotal
  exact Finset.sum_nonneg fun n hn =>
    primeLogWeight_nonneg n

/-- The exact prime-log exponential sum is bounded pointwise by the complete
finite prime-log mass. -/
theorem norm_goldbachExponentialSum_le_primeLogTotal
    (N : ℕ) (x : ℝ) :
    ‖goldbachExponentialSum N x‖ ≤ goldbachPrimeLogTotal N := by
  unfold goldbachExponentialSum goldbachPrimeLogTotal
  calc
    ‖∑ n ∈ Finset.range (N + 1),
        (primeLogWeight n : ℂ) *
          unitCharacter (n : ℤ) x‖ ≤
      ∑ n ∈ Finset.range (N + 1),
        ‖(primeLogWeight n : ℂ) *
          unitCharacter (n : ℤ) x‖ :=
      norm_sum_le _ _
    _ = ∑ n ∈ Finset.range (N + 1),
        primeLogWeight n := by
      apply Finset.sum_congr rfl
      intro n hn
      rw [norm_mul, norm_unitCharacter, mul_one]
      simp [abs_of_nonneg (primeLogWeight_nonneg n)]

/-- The exact residue-class exponential kernel inherits the same norm budget. -/
theorem norm_goldbachResidueClassExponentialKernel_le
    {N a q : ℕ} (hq : 0 < q) (β : ℝ) :
    ‖goldbachResidueClassExponentialKernel N a q β‖ ≤
      goldbachPrimeLogTotal N := by
  rw [← goldbachCenteredExponentialSum_eq_residueClassKernel
    N a q hq β]
  unfold goldbachCenteredExponentialSum
  exact norm_goldbachExponentialSum_le_primeLogTotal
    N (goldbachRationalArcCenter a q + β)

/-- The canonical progression exponential model has norm at most `N + 1`. -/
theorem norm_goldbachProgressionExponentialModel_le
    {N a q : ℕ} (hq : 0 < q) (β : ℝ) :
    ‖goldbachProgressionExponentialModel N a q β‖ ≤
      (N + 1 : ℝ) := by
  unfold goldbachProgressionExponentialModel
  calc
    ‖goldbachNormalizedRamanujanCoefficient a q *
        goldbachIntegerExponentialKernel N β‖ =
      ‖goldbachNormalizedRamanujanCoefficient a q‖ *
        ‖goldbachIntegerExponentialKernel N β‖ := by
          rw [norm_mul]
    _ ≤ 1 * (N + 1 : ℝ) :=
      mul_le_mul
        (norm_goldbachNormalizedRamanujanCoefficient_le_one hq)
        (norm_goldbachIntegerExponentialKernel_le N β)
        (norm_nonneg _)
        (by norm_num)
    _ = (N + 1 : ℝ) := by ring

/-- Supplied residue discrepancy bounds add to a complete bound for the
phase-weighted exponential discrepancy. -/
theorem norm_goldbachProgressionExponentialDiscrepancy_le
    {N a q : ℕ} {β : ℝ}
    {residueError : ℕ → ℝ}
    (herror : ∀ r ∈ Finset.range q,
      ‖goldbachResidueProgressionDiscrepancy N q r β‖ ≤
        residueError r) :
    ‖goldbachProgressionExponentialDiscrepancy N a q β‖ ≤
      ∑ r ∈ Finset.range q, residueError r := by
  unfold goldbachProgressionExponentialDiscrepancy
  calc
    ‖∑ r ∈ Finset.range q,
        goldbachRationalPhase a q r *
          goldbachResidueProgressionDiscrepancy N q r β‖ ≤
      ∑ r ∈ Finset.range q,
        ‖goldbachRationalPhase a q r *
          goldbachResidueProgressionDiscrepancy N q r β‖ :=
      norm_sum_le _ _
    _ = ∑ r ∈ Finset.range q,
        ‖goldbachResidueProgressionDiscrepancy N q r β‖ := by
      apply Finset.sum_congr rfl
      intro r hr
      rw [norm_mul, norm_goldbachRationalPhase, one_mul]
    _ ≤ ∑ r ∈ Finset.range q, residueError r :=
      Finset.sum_le_sum fun r hr => herror r hr

/-- The centered quadratic residual is controlled by the exponential
discrepancy times the sum of the exact and model kernel norms. -/
theorem norm_goldbachCenteredProgressionCircleResidual_le
    (N a q : ℕ) (β : ℝ) :
    ‖goldbachCenteredProgressionCircleResidual N a q β‖ ≤
      ‖goldbachProgressionExponentialDiscrepancy N a q β‖ *
        (‖goldbachResidueClassExponentialKernel N a q β‖ +
          ‖goldbachProgressionExponentialModel N a q β‖) := by
  rw [goldbachCenteredProgressionCircleResidual_factor]
  simp only [norm_mul, norm_unitCharacter, mul_one]
  exact mul_le_mul_of_nonneg_left
    (norm_add_le
      (goldbachResidueClassExponentialKernel N a q β)
      (goldbachProgressionExponentialModel N a q β))
    (norm_nonneg _)

/-- A complete family of residue discrepancy bounds gives a pointwise circle
residual bound with no assumed cancellation. -/
theorem norm_goldbachCenteredProgressionCircleResidual_le_of_residue
    {N a q : ℕ} (hq : 0 < q) {β : ℝ}
    {residueError : ℕ → ℝ}
    (herror : ∀ r ∈ Finset.range q,
      ‖goldbachResidueProgressionDiscrepancy N q r β‖ ≤
        residueError r) :
    ‖goldbachCenteredProgressionCircleResidual N a q β‖ ≤
      (∑ r ∈ Finset.range q, residueError r) *
        (goldbachPrimeLogTotal N + (N + 1 : ℝ)) := by
  have hdisc :=
    norm_goldbachProgressionExponentialDiscrepancy_le
      (N := N) (a := a) (q := q) (β := β)
      (residueError := residueError) herror
  have hexact :=
    norm_goldbachResidueClassExponentialKernel_le
      (N := N) (a := a) (q := q) hq β
  have hmodel :=
    norm_goldbachProgressionExponentialModel_le
      (N := N) (a := a) (q := q) hq β
  have hsum_nonneg :
      0 ≤ ∑ r ∈ Finset.range q, residueError r :=
    (norm_nonneg
      (goldbachProgressionExponentialDiscrepancy
        N a q β)).trans hdisc
  exact
    (norm_goldbachCenteredProgressionCircleResidual_le
      N a q β).trans
      (mul_le_mul hdisc (add_le_add hexact hmodel)
        (add_nonneg (norm_nonneg _) (norm_nonneg _)) hsum_nonneg)

/-- One raw three-lift rational arc has measure at most six times its declared
radius. Overlap can only decrease the measure. -/
theorem measureReal_goldbachPeriodizedRationalArc_le
    (Q N a q : ℕ) :
    volume.real (goldbachPeriodizedRationalArc Q N a q) ≤
      6 * goldbachRationalArcRadius Q N q := by
  let c := goldbachRationalArcCenter a q
  let r := goldbachRationalArcRadius Q N q
  have hr : 0 ≤ r := by
    exact goldbachRationalArcRadius_nonneg Q N q
  have hzero :
      volume.real (Set.Icc (c - r) (c + r)) = 2 * r := by
    rw [Real.volume_real_Icc_of_le (by linarith)]
    ring
  have hplus :
      volume.real (Set.Icc (c + 1 - r) (c + 1 + r)) =
        2 * r := by
    rw [Real.volume_real_Icc_of_le (by linarith)]
    ring
  have hminus :
      volume.real (Set.Icc (c - 1 - r) (c - 1 + r)) =
        2 * r := by
    rw [Real.volume_real_Icc_of_le (by linarith)]
    ring
  unfold goldbachPeriodizedRationalArc
  change
    volume.real
      (Set.Icc (c - r) (c + r) ∪
        (Set.Icc (c + 1 - r) (c + 1 + r) ∪
          Set.Icc (c - 1 - r) (c - 1 + r))) ≤
      6 * r
  calc
    volume.real
        (Set.Icc (c - r) (c + r) ∪
          (Set.Icc (c + 1 - r) (c + 1 + r) ∪
            Set.Icc (c - 1 - r) (c - 1 + r))) ≤
      volume.real (Set.Icc (c - r) (c + r)) +
        volume.real
          (Set.Icc (c + 1 - r) (c + 1 + r) ∪
            Set.Icc (c - 1 - r) (c - 1 + r)) :=
      measureReal_union_le _ _
    _ ≤
      volume.real (Set.Icc (c - r) (c + r)) +
        (volume.real (Set.Icc (c + 1 - r) (c + 1 + r)) +
          volume.real (Set.Icc (c - 1 - r) (c - 1 + r))) := by
      gcongr
      exact measureReal_union_le _ _
    _ = 6 * r := by
      rw [hzero, hplus, hminus]
      ring

/-- Clipping to `(0,1]` preserves the same coarse six-radius measure budget. -/
theorem measureReal_goldbachClippedRationalArc_le
    (Q N : ℕ) (aq : ℕ × ℕ) :
    volume.real (goldbachClippedRationalArc Q N aq) ≤
      6 * goldbachRationalArcRadius Q N aq.2 := by
  have hfinite : volume (goldbachPeriodizedRationalArc Q N aq.1 aq.2) < ⊤ := by
    unfold goldbachPeriodizedRationalArc
    exact measure_union_lt_top measure_Icc_lt_top
      (measure_union_lt_top measure_Icc_lt_top measure_Icc_lt_top)
  unfold goldbachClippedRationalArc
  exact
    (measureReal_mono Set.inter_subset_right hfinite.ne).trans
      (measureReal_goldbachPeriodizedRationalArc_le
        Q N aq.1 aq.2)

end
end GRWTSK.NumberTheory.Primes.GoldbachProgressionErrorTransfer
