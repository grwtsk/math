/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddResidualSourceComparison

set_option autoImplicit false
noncomputable section

/-!
# Outward observations of the literal odd bordered residual

Local attribution is to grwtsk contributors.

An observation is a signed center with an absolute error radius. For a product,
expand the error as the error of the first factor times the exact second factor
plus the first center times the error of the second factor. Bound the exact
factor by the absolute value of its center plus its radius, then apply the
triangle inequality to the signed sums. The literal core sums over its actual
active prime powers. The pole term uses the difference of the two oriented
moments, and the physical shift uses the same diagonal test as the source row.
In particular a trial-overlap row can contain a nonzero shifted term even when
all gamma, prime and pole entries vanish.

Each finite source square is bounded by the squared sum of the absolute center
and the radius. The existing literal tail comparison then extends the result
to the full coefficient series using the same analytic remote allowance.
Bounds for the elementary source inputs remain hypotheses, including the
literal archimedean entries and the shifts at exact prime logarithms.
Independent mathematical review and novelty assessment are pending.
-/

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddResidualObservation

open LowSchur OddRootProjection OddResidualMajorant OddResidualSourceComparison

def productRadius (xHat yHat xRadius yRadius : ℝ) : ℝ :=
  xRadius * (|yHat| + yRadius) + |xHat| * yRadius

private theorem abs_le_of_abs_sub_le {x xHat radius : ℝ}
    (h : |x - xHat| ≤ radius) : |x| ≤ |xHat| + radius := by
  calc
    |x| = |(x - xHat) + xHat| := by rw [sub_add_cancel]
    _ ≤ |x - xHat| + |xHat| := abs_add_le _ _
    _ ≤ |xHat| + radius := by linarith

theorem abs_mul_sub_mul_le_productRadius
    {x y xHat yHat xRadius yRadius : ℝ}
    (hx : |x - xHat| ≤ xRadius) (hy : |y - yHat| ≤ yRadius) :
    |x * y - xHat * yHat| ≤ productRadius xHat yHat xRadius yRadius := by
  rw [show x * y - xHat * yHat = (x - xHat) * y + xHat * (y - yHat) by ring]
  refine (abs_add_le _ _).trans ?_
  rw [abs_mul, abs_mul]
  exact add_le_add (mul_le_mul hx (abs_le_of_abs_sub_le hy) (abs_nonneg _)
    ((abs_nonneg _).trans hx)) (mul_le_mul_of_nonneg_left hy (abs_nonneg _))

private theorem abs_sub_sub_le {x y xHat yHat xRadius yRadius : ℝ}
    (hx : |x - xHat| ≤ xRadius) (hy : |y - yHat| ≤ yRadius) :
    |(x - y) - (xHat - yHat)| ≤ xRadius + yRadius := by
  rw [show (x - y) - (xHat - yHat) = (x - xHat) + (yHat - y) by ring]
  refine (abs_add_le _ _).trans (add_le_add hx ?_)
  rwa [abs_sub_comm]

private theorem abs_sum_sub_sum_le {α : Type*} (s : Finset α)
    (f fHat radius : α → ℝ) (h : ∀ i ∈ s, |f i - fHat i| ≤ radius i) :
    |(∑ i ∈ s, f i) - ∑ i ∈ s, fHat i| ≤ ∑ i ∈ s, radius i := by
  rw [← Finset.sum_sub_distrib]
  exact (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum h)

def observedCoreEntry (T gammaHat : ℝ) (weightHat shiftHat : ℕ → ℝ) : ℝ :=
  gammaHat - ∑ q ∈ activePrimePowers T, weightHat q * shiftHat q

def coreEntryRadius (T gammaRadius : ℝ)
    (weightHat shiftHat weightRadius shiftRadius : ℕ → ℝ) : ℝ :=
  gammaRadius + ∑ q ∈ activePrimePowers T,
    productRadius (weightHat q) (shiftHat q) (weightRadius q) (shiftRadius q)

theorem abs_literalCoreEntry_sub_observed_le (T : ℝ) (m n : ℕ)
    (gammaHat gammaRadius : ℝ) (weightHat shiftHat weightRadius shiftRadius : ℕ → ℝ)
    (hgamma : |sineArchimedeanEntry T (gammaConstant 1 0) 0 m n - gammaHat| ≤ gammaRadius)
    (hweight : ∀ q ∈ activePrimePowers T, |primeWeight q - weightHat q| ≤ weightRadius q)
    (hshift : ∀ q ∈ activePrimePowers T,
      |sineShiftEntry T m n (Real.log q) - shiftHat q| ≤ shiftRadius q) :
    |literalCoreEntry T m n - observedCoreEntry T gammaHat weightHat shiftHat| ≤
      coreEntryRadius T gammaRadius weightHat shiftHat weightRadius shiftRadius := by
  unfold literalCoreEntry observedCoreEntry coreEntryRadius
  exact abs_sub_sub_le hgamma
    (abs_sum_sub_sum_le _ _ _ _
      (fun q hq => abs_mul_sub_mul_le_productRadius (hweight q hq) (hshift q hq)))

theorem abs_literalPoleEntry_sub_observed_le (T : ℝ) (m : ℕ)
    (positiveHat negativeHat positiveRadius negativeRadius : ℝ)
    (hPositive : |sinePoleMoment T (1 / 2) m - positiveHat| ≤ positiveRadius)
    (hNegative : |sinePoleMoment T (-1 / 2) m - negativeHat| ≤ negativeRadius) :
    |literalPoleEntry T m - (positiveHat - negativeHat) / 2| ≤
      (positiveRadius + negativeRadius) / 2 := by
  unfold literalPoleEntry
  rw [← sub_div, abs_div, abs_of_nonneg (by norm_num : 0 ≤ (2 : ℝ))]
  exact div_le_div_of_nonneg_right (abs_sub_sub_le hPositive hNegative) (by norm_num)

/-- The column functions give the signed centers in the current physical row. -/
def observedAugmentedRow (M m : ℕ) (xHat coreHat : ℕ → ℝ)
    (poleHat aHat βHat : ℝ) : ℝ :=
  (∑ n ∈ Finset.Icc 1 M, xHat n * (coreHat n - (if m = n then βHat else 0))) +
    poleHat * aHat

def augmentedRowRadius (M m : ℕ) (xHat coreHat xRadius coreRadius : ℕ → ℝ)
    (poleHat aHat βHat poleRadius aRadius βRadius : ℝ) : ℝ :=
  (∑ n ∈ Finset.Icc 1 M,
    productRadius (xHat n) (coreHat n - (if m = n then βHat else 0))
      (xRadius n) (coreRadius n + (if m = n then βRadius else 0))) +
    productRadius poleHat aHat poleRadius aRadius

/-- All physical rows use the same enclosure, including rows inside the trial support. -/
theorem abs_literalAugmentedRow_sub_observed_le (M m : ℕ) (T : ℝ)
    (x xHat coreHat xRadius coreRadius : ℕ → ℝ)
    (a β poleHat aHat βHat poleRadius aRadius βRadius : ℝ)
    (hx : ∀ n ∈ Finset.Icc 1 M, |x n - xHat n| ≤ xRadius n)
    (hcore : ∀ n ∈ Finset.Icc 1 M, |literalCoreEntry T m n - coreHat n| ≤ coreRadius n)
    (hpole : |literalPoleEntry T m - poleHat| ≤ poleRadius)
    (ha : |a - aHat| ≤ aRadius) (hβ : |β - βHat| ≤ βRadius) :
    |literalAugmentedRow M T x a β m - observedAugmentedRow M m xHat coreHat poleHat aHat βHat| ≤
      augmentedRowRadius M m xHat coreHat xRadius coreRadius
        poleHat aHat βHat poleRadius aRadius βRadius := by
  unfold literalAugmentedRow observedAugmentedRow augmentedRowRadius
  rw [add_sub_add_comm]
  refine (abs_add_le _ _).trans (add_le_add ?_ (abs_mul_sub_mul_le_productRadius hpole ha))
  apply abs_sum_sub_sum_le
  intro n hn
  apply abs_mul_sub_mul_le_productRadius (hx n hn)
  apply abs_sub_sub_le (hcore n hn)
  by_cases hmn : m = n
  · simpa [hmn] using hβ
  · simp [hmn]

/-- The observation functions are indexed by actual physical row numbers. -/
theorem finite_literalAugmentedRow_sq_le {N M L : ℕ} {T : ℝ}
    {x : ℕ → ℝ} {a β : ℝ} (observed radius : ℕ → ℝ)
    (hrow : ∀ i < L - N,
      |literalAugmentedRow M T x a β (N + 1 + i) - observed (N + 1 + i)| ≤
        radius (N + 1 + i)) :
    (∑ i ∈ Finset.range (L - N), (literalAugmentedRow M T x a β (N + 1 + i)) ^ 2) ≤
      ∑ i ∈ Finset.range (L - N), (|observed (N + 1 + i)| + radius (N + 1 + i)) ^ 2 := by
  apply Finset.sum_le_sum
  intro i hi
  have h := abs_le_of_abs_sub_le (hrow i (Finset.mem_range.mp hi))
  simpa only [sq_abs] using pow_le_pow_left₀ (abs_nonneg _) h 2

/-- Outward observations replace the finite source squares while retaining the whole remote allowance. -/
theorem literalAugmentedRow_high_bound_of_observations {N M L J : ℕ}
    (hNM : N ≤ M) (hML : M ≤ L) (hL : 0 < L) (hLJ : L ≤ J)
    (T : ℝ) (hT : 0 < T) (x : ℕ → ℝ) (a β s : ℝ) (hs : 0 < s)
    (observed radius : ℕ → ℝ)
    (hrow : ∀ i < L - N,
      |literalAugmentedRow M T x a β (N + 1 + i) - observed (N + 1 + i)| ≤
        radius (N + 1 + i)) :
    Summable (fun n : ℕ => (literalAugmentedRow M T x a β (N + 1 + n)) ^ 2) ∧
      (∑' n : ℕ, (literalAugmentedRow M T x a β (N + 1 + n)) ^ 2) ≤
        (∑ i ∈ Finset.range (L - N), (|observed (N + 1 + i)| + radius (N + 1 + i)) ^ 2) +
          completeRemoteAllowance M L J T x a s := by
  obtain ⟨hSummable, hBound⟩ := literalAugmentedRow_high_bound hNM hML hL hLJ T hT x a β s hs
  exact ⟨hSummable, hBound.trans (add_le_add
    (finite_literalAugmentedRow_sq_le observed radius hrow) le_rfl)⟩

end GRWTSK.NumberTheory.WeilQuadraticForm.OddResidualObservation
