/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddResidualSourceComparison

set_option autoImplicit false
noncomputable section

/-!
# Outward observations of the odd Weil boundary signal

Local attribution is to grwtsk contributors.

The partial sum keeps the literal exponential weights and frequencies. For
indices `j ≥ 1`, omit the nonnegative frequency square from the denominator
and bound the numerator by one. The resulting summand is bounded by the
difference of the reciprocals of `4j - 1` and `4j + 3`. Summing telescopes and
leaves a rational upper allowance for the complete positive tail. The midpoint
of this interval provides a symmetric observation, with any finite summation
error added to its radius.

The exact off-diagonal gamma formula is a signed divided difference of the two
boundary signals. The scale multiplies the difference of the observed centers
and its absolute value multiplies the sum of the two radii. The two modes must
be distinct and positive for the return to the literal archimedean entry.
Outward evaluation of the retained finite transcendental terms is an input.
Independent mathematical review and novelty assessment are pending.
-/

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddBoundaryObservation

open OddBoundarySignalBounds OddResidualSourceComparison OddRootProjection

/-- The first `K` exact summands, starting at index zero. -/
def boundarySignalPartial (T : ℝ) (n K : ℕ) : ℝ :=
  ∑ j ∈ Finset.range K, boundarySignalTerm T n j

/-- A rational upper bound for the tail starting at a positive index `K`. -/
def boundarySignalTailBound (K : ℕ) : ℝ :=
  1 / (4 * (K : ℝ) - 1)

private theorem tailBound_pos {K : ℕ} (hK : 0 < K) : 0 < boundarySignalTailBound K := by
  have hKR : (1 : ℝ) ≤ (K : ℝ) := by exact_mod_cast hK
  exact one_div_pos.mpr (by linarith)

private theorem term_nonneg (T : ℝ) (hT : 0 ≤ T) (n j : ℕ) :
    0 ≤ boundarySignalTerm T n j := by
  change 0 ≤ (1 - Real.exp (-2 * (2 * (j : ℝ) + 1 / 2) * T)) / _
  refine div_nonneg (sub_nonneg.mpr (Real.exp_le_one_iff.mpr ?_)) (by positivity)
  exact mul_nonpos_of_nonpos_of_nonneg
    (mul_nonpos_of_nonpos_of_nonneg (by norm_num) (by positivity)) hT

private theorem term_le_tailBound_sub (T : ℝ) (n : ℕ) {j : ℕ} (hj : 0 < j) :
    boundarySignalTerm T n j ≤ boundarySignalTailBound j - boundarySignalTailBound (j + 1) := by
  let x : ℝ := j
  let w : ℝ := Real.pi * (n : ℝ) / T
  have hj' : 1 ≤ j := hj
  have hx : 1 ≤ x := by
    change (1 : ℝ) ≤ (j : ℝ)
    exact_mod_cast hj'
  have hden : 0 < (2 * x + 1 / 2) ^ 2 + w ^ 2 := by positivity
  have hfirst : 0 < 4 * x - 1 := by linarith
  have hnext : 0 < 4 * x + 3 := by linarith
  change (1 - Real.exp (-2 * (2 * x + 1 / 2) * T)) / ((2 * x + 1 / 2) ^ 2 + w ^ 2) ≤ _
  calc
    _ ≤ 1 / ((2 * x + 1 / 2) ^ 2 + w ^ 2) :=
      div_le_div_of_nonneg_right (sub_le_self _ (Real.exp_nonneg _)) hden.le
    _ ≤ 4 / ((4 * x - 1) * (4 * x + 3)) := by
      apply (div_le_div_iff₀ hden (mul_pos hfirst hnext)).mpr
      nlinarith [sq_nonneg w]
    _ = boundarySignalTailBound j - boundarySignalTailBound (j + 1) := by
      unfold boundarySignalTailBound
      push_cast
      change _ = 1 / (4 * x - 1) - 1 / (4 * (x + 1) - 1)
      rw [show 4 * (x + 1) - 1 = 4 * x + 3 by ring]
      field_simp
      ring

private theorem partial_tail_le (T : ℝ) (n : ℕ) {K : ℕ} (hK : 0 < K) (L : ℕ) :
    (∑ j ∈ Finset.range L, boundarySignalTerm T n (j + K)) ≤
      boundarySignalTailBound K - boundarySignalTailBound (L + K) := by
  induction L with
  | zero => simp
  | succ L ih =>
    rw [Finset.sum_range_succ]
    have hj := term_le_tailBound_sub T n (j := L + K) (by omega)
    rw [show L + K + 1 = L + 1 + K by omega] at hj
    linarith

/-- The full signal lies between the exact partial sum and that sum plus the rational tail. -/
theorem boundarySignal_truncation_bounds (T : ℝ) (hT : 0 ≤ T) (n : ℕ)
    {K : ℕ} (hK : 0 < K) :
    boundarySignalPartial T n K ≤ boundarySignal T n ∧
      boundarySignal T n ≤ boundarySignalPartial T n K + boundarySignalTailBound K := by
  have hs := boundarySignal_summable T hT n
  have htail : Summable (fun j : ℕ => boundarySignalTerm T n (j + K)) :=
    (summable_nat_add_iff K).mpr hs
  have hle : (∑' j : ℕ, boundarySignalTerm T n (j + K)) ≤ boundarySignalTailBound K :=
    le_of_tendsto' htail.hasSum.tendsto_sum_nat (fun L =>
      (partial_tail_le T n hK L).trans (sub_le_self _ (tailBound_pos (by omega)).le))
  change _ ≤ ∑' j, boundarySignalTerm T n j ∧ (∑' j, boundarySignalTerm T n j) ≤ _
  rw [← hs.sum_add_tsum_nat_add K]
  exact ⟨le_add_of_nonneg_right (tsum_nonneg fun j => term_nonneg T hT n (j + K)),
    add_le_add le_rfl hle⟩

/-- The truncation interval combines with any outward bound for the retained sum. -/
theorem abs_boundarySignal_sub_truncation_observation_le (T : ℝ) (hT : 0 ≤ T) (n : ℕ)
    {K : ℕ} (hK : 0 < K) {partialHat radius : ℝ}
    (hPartial : |boundarySignalPartial T n K - partialHat| ≤ radius) :
    |boundarySignal T n - (partialHat + boundarySignalTailBound K / 2)| ≤
      radius + boundarySignalTailBound K / 2 := by
  obtain ⟨hl, hu⟩ := boundarySignal_truncation_bounds T hT n hK
  rw [abs_le] at hPartial ⊢
  constructor <;> linarith [hPartial.1, hPartial.2]

/-- Outward enclosures of individual retained terms give an observation of the full signal. -/
theorem abs_boundarySignal_sub_finite_observations_le (T : ℝ) (hT : 0 ≤ T) (n : ℕ)
    {K : ℕ} (hK : 0 < K) (termHat termRadius : ℕ → ℝ)
    (hTerm : ∀ j < K, |boundarySignalTerm T n j - termHat j| ≤ termRadius j) :
    |boundarySignal T n -
        ((∑ j ∈ Finset.range K, termHat j) + boundarySignalTailBound K / 2)| ≤
      (∑ j ∈ Finset.range K, termRadius j) + boundarySignalTailBound K / 2 := by
  apply abs_boundarySignal_sub_truncation_observation_le T hT n hK
  unfold boundarySignalPartial
  rw [← Finset.sum_sub_distrib]
  exact (Finset.abs_sum_le_sum_abs _ _).trans
    (Finset.sum_le_sum fun j hj => hTerm j (Finset.mem_range.mp hj))

/-- The signed scale multiplying `boundarySignal T n - boundarySignal T m`. -/
def archimedeanOffDiagonalScale (T : ℝ) (m n : ℕ) : ℝ :=
  (-1 : ℝ) ^ (m + n) * (-(2 / T) * (m : ℝ) * n) / ((m : ℝ) ^ 2 - (n : ℝ) ^ 2)

theorem abs_archimedeanOffDiagonal_sub_observed_le (T : ℝ) (m n : ℕ)
    {centerM centerN radiusM radiusN : ℝ}
    (hM : |boundarySignal T m - centerM| ≤ radiusM)
    (hN : |boundarySignal T n - centerN| ≤ radiusN) :
    |archimedeanOffDiagonal T m n - archimedeanOffDiagonalScale T m n * (centerN - centerM)| ≤
      |archimedeanOffDiagonalScale T m n| * (radiusN + radiusM) := by
  have hFactor : archimedeanOffDiagonal T m n =
      archimedeanOffDiagonalScale T m n * (boundarySignal T n - boundarySignal T m) := by
    unfold archimedeanOffDiagonal archimedeanOffDiagonalScale
    simp only [div_eq_mul_inv]
    ring
  rw [hFactor, ← mul_sub, abs_mul]
  apply mul_le_mul_of_nonneg_left _ (abs_nonneg _)
  rw [show (boundarySignal T n - boundarySignal T m) - (centerN - centerM) =
    (boundarySignal T n - centerN) + (centerM - boundarySignal T m) by ring]
  exact (abs_add_le _ _).trans (add_le_add hN (by rwa [abs_sub_comm]))

/-- The signal observations enclose the literal gamma entry for distinct positive modes. -/
theorem abs_sineArchimedeanEntry_sub_observed_le (T : ℝ) (hT : 0 < T) {m n : ℕ}
    (hm : 0 < m) (hn : 0 < n) (hmn : m ≠ n) {centerM centerN radiusM radiusN : ℝ}
    (hM : |boundarySignal T m - centerM| ≤ radiusM)
    (hN : |boundarySignal T n - centerN| ≤ radiusN) :
    |sineArchimedeanEntry T (gammaConstant 1 0) 0 m n -
        archimedeanOffDiagonalScale T m n * (centerN - centerM)| ≤
      |archimedeanOffDiagonalScale T m n| * (radiusN + radiusM) := by
  rw [sineArchimedeanEntry_eq_boundary T hT hm hn hmn]
  exact abs_archimedeanOffDiagonal_sub_observed_le T m n hM hN

end GRWTSK.NumberTheory.WeilQuadraticForm.OddBoundaryObservation
