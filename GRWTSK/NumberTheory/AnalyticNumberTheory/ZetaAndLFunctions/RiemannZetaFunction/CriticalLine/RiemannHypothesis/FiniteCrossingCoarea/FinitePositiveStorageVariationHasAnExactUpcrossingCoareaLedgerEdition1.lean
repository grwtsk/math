import FormalResearch.RiemannHypothesis.Conversation.AtomicSuperlevels
import FormalResearch.RiemannHypothesis.Conversation.NativeSuperlevelConsumer

/-!
# Finite positive-storage variation has an exact upcrossing coarea ledger

The level intervals count the literal upward crossings of consecutive positive
storage values. Nonpositive entrance and exit make total positive-part variation
exactly twice their level integral. Identification with the connected components
of a specific piecewise-linear interpolation is a separate topological adapter.
No native width or arithmetic debt bound is inferred from this count.

Source: RH conversation Batch 5, AA05-05. Human programme: grwtsk contributors.
Local finite crossing/measure adapter: OpenAI Codex. Qualified Mathlib Lebesgue
interval and finite-sum laws retain their upstream identities.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.FiniteCrossingCoarea
open MeasureTheory Set
open scoped BigOperators ENNReal
noncomputable section

/-- The positive storage in this module, with the following exact parameterization.

def positiveStorage (B : ℕ → ℝ) (j : ℕ) : ℝ := max (B j) 0
-/
def positiveStorage (B : ℕ → ℝ) (j : ℕ) : ℝ := max (B j) 0
/-- The step in this module, with the following exact parameterization.

def step (B : ℕ → ℝ) (j : ℕ) : ℝ := positiveStorage B (j + 1) - positiveStorage B j
-/
def step (B : ℕ → ℝ) (j : ℕ) : ℝ := positiveStorage B (j + 1) - positiveStorage B j
/-- The upward variation in this module, with the following exact parameterization.

def upwardVariation (B : ℕ → ℝ) (K : ℕ) : ℝ := ∑ j ∈ Finset.range K, max (step B j) 0
-/
def upwardVariation (B : ℕ → ℝ) (K : ℕ) : ℝ := ∑ j ∈ Finset.range K, max (step B j) 0
/-- The total variation in this module, with the following exact parameterization.

def totalVariation (B : ℕ → ℝ) (K : ℕ) : ℝ := ∑ j ∈ Finset.range K, |step B j|
-/
def totalVariation (B : ℕ → ℝ) (K : ℕ) : ℝ := ∑ j ∈ Finset.range K, |step B j|

/-- The crossing in this module, with the following exact parameterization.

def crossing (B : ℕ → ℝ) (j : ℕ) : ℝ → ℝ≥0∞ := (Ioc (positiveStorage B j) (positiveStorage B
(j + 1))).indicator (fun _ ↦ 1)
-/
def crossing (B : ℕ → ℝ) (j : ℕ) : ℝ → ℝ≥0∞ :=
  (Ioc (positiveStorage B j) (positiveStorage B (j + 1))).indicator (fun _ ↦ 1)

/-- The crossing count in this module, with the following exact parameterization.

def crossingCount (B : ℕ → ℝ) (K : ℕ) (y : ℝ) : ℝ≥0∞ := ∑ j ∈ Finset.range K, crossing B j y
-/
def crossingCount (B : ℕ → ℝ) (K : ℕ) (y : ℝ) : ℝ≥0∞ :=
  ∑ j ∈ Finset.range K, crossing B j y

private theorem scalar_variation (d : ℝ) : |d| = 2 * max d 0 - d := by
  by_cases hd : 0 ≤ d
  · rw [abs_of_nonneg hd, max_eq_left hd]
    ring
  · rw [abs_of_nonpos (by linarith), max_eq_right (by linarith)]
    ring

theorem signed_steps_telescope (B : ℕ → ℝ) (K : ℕ) :
    (∑ j ∈ Finset.range K, step B j) = positiveStorage B K - positiveStorage B 0 := by
  induction K with
  | zero => simp
  | succ K ih => rw [Finset.sum_range_succ, ih]; unfold step; ring

theorem positive_variation_exact (B : ℕ → ℝ) (K : ℕ) :
    totalVariation B K = 2 * upwardVariation B K -
      (positiveStorage B K - positiveStorage B 0) := by
  unfold totalVariation upwardVariation
  simp_rw [scalar_variation]
  rw [Finset.sum_sub_distrib, ← Finset.mul_sum, signed_steps_telescope]

theorem nonpositive_endpoints_twice_upward (B : ℕ → ℝ) (K : ℕ)
    (hstart : B 0 ≤ 0) (hend : B K ≤ 0) :
    totalVariation B K = 2 * upwardVariation B K := by
  rw [positive_variation_exact]
  simp only [positiveStorage, max_eq_right hstart, max_eq_right hend, sub_self, sub_zero]

theorem crossing_measurable (B : ℕ → ℝ) (j : ℕ) : Measurable (crossing B j) :=
  measurable_const.indicator measurableSet_Ioc

theorem crossing_integral (B : ℕ → ℝ) (j : ℕ) :
    (∫⁻ y, crossing B j y) = ENNReal.ofReal (max (step B j) 0) := by
  unfold crossing
  rw [lintegral_indicator measurableSet_Ioc]
  simp only [lintegral_const, one_mul]
  rw [Measure.restrict_apply_univ]
  simp only [Real.volume_Ioc]
  change ENNReal.ofReal (step B j) = ENNReal.ofReal (max (step B j) 0)
  by_cases hd : 0 ≤ step B j
  · rw [max_eq_left hd]
  · rw [max_eq_right (by linarith), ENNReal.ofReal_of_nonpos (by linarith)]
    simp

theorem exact_upcrossing_integral (B : ℕ → ℝ) (K : ℕ) :
    (∫⁻ y, crossingCount B K y) = ENNReal.ofReal (upwardVariation B K) := by
  unfold crossingCount
  rw [lintegral_finsetSum (Finset.range K) (fun j hj ↦ crossing_measurable B j)]
  simp_rw [crossing_integral]
  exact (ENNReal.ofReal_sum_of_nonneg (fun j hj ↦ le_max_right _ _)).symm

theorem finite_coarea_nonpositive_endpoints (B : ℕ → ℝ) (K : ℕ)
    (hstart : B 0 ≤ 0) (hend : B K ≤ 0) :
    ENNReal.ofReal (totalVariation B K / 2) = ∫⁻ y, crossingCount B K y := by
  rw [nonpositive_endpoints_twice_upward B K hstart hend, exact_upcrossing_integral]
  congr 1
  ring

theorem crossingCount_zero_outside_height (B : ℕ → ℝ) (K : ℕ) {H y : ℝ}
    (hheight : ∀ j, j ≤ K → positiveStorage B j ≤ H) (hy : y ∉ Ioc (0 : ℝ) H) :
    crossingCount B K y = 0 := by
  apply Finset.sum_eq_zero
  intro j hj
  have hjK : j + 1 ≤ K := by have h := Finset.mem_range.mp hj; omega
  have hnot : y ∉ Ioc (positiveStorage B j) (positiveStorage B (j + 1)) := by
    intro h
    apply hy
    exact ⟨(le_max_right (B j) 0).trans_lt h.1, h.2.trans (hheight _ hjK)⟩
  exact Set.indicator_of_notMem hnot _

theorem exact_height_truncation (B : ℕ → ℝ) (K : ℕ) {H : ℝ}
    (hheight : ∀ j, j ≤ K → positiveStorage B j ≤ H) :
    (∫⁻ y, crossingCount B K y) = ∫⁻ y in Ioc (0 : ℝ) H, crossingCount B K y := by
  rw [← lintegral_indicator measurableSet_Ioc]
  apply lintegral_congr
  intro y
  by_cases hy : y ∈ Ioc (0 : ℝ) H
  · rw [Set.indicator_of_mem hy]
  · rw [Set.indicator_of_notMem hy, crossingCount_zero_outside_height B K hheight hy]

theorem finite_height_coarea (B : ℕ → ℝ) (K : ℕ) {H : ℝ}
    (hstart : B 0 ≤ 0) (hend : B K ≤ 0)
    (hheight : ∀ j, j ≤ K → positiveStorage B j ≤ H) :
    ENNReal.ofReal (totalVariation B K / 2) =
      ∫⁻ y in Ioc (0 : ℝ) H, crossingCount B K y := by
  rw [finite_coarea_nonpositive_endpoints B K hstart hend, exact_height_truncation B K hheight]

/-- The same identity now uses the unchanged ordinary-prime storage values. -/
theorem actual_native_storage_crossing_coarea (N K : ℕ) {H : ℝ}
    (hstart : NativeSuperlevelConsumer.storage N 0 ≤ 0)
    (hend : NativeSuperlevelConsumer.storage N K ≤ 0)
    (hheight : ∀ j, j ≤ K → max (NativeSuperlevelConsumer.storage N j) 0 ≤ H) :
    ENNReal.ofReal (totalVariation (NativeSuperlevelConsumer.storage N) K / 2) =
      ∫⁻ y in Ioc (0 : ℝ) H, crossingCount (NativeSuperlevelConsumer.storage N) K y :=
  finite_height_coarea _ _ hstart hend hheight

end
end GRWTSK.RiemannHypothesis.Conversation.FiniteCrossingCoarea
