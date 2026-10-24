# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.PinnedWienerSmoothIntervalBracketsControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c653afb1aa5aef9a47a923f073cd8c65f882081c` · SHA-256 `de7dd1d746ff52769a35eb3ee5e05d6e9c8932a210bcd3e2b4c3af5fcc8843cc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PinnedWienerSmoothIntervalBrackets
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open Set MeasureTheory

namespace GRWTSK.RiemannHypothesis.Checks.PinnedWienerSmoothIntervalBracketsControls

open GRWTSK.RiemannHypothesis

/-- Concrete positive half-open interval, with a separately fixed,
strictly positive integral error. All positivity obligations are real. -/
theorem half_to_one_has_smooth_brackets :
    PinnedSmoothIntervalBrackets
      ((1 : ℝ) / 2) 1 ((1 : ℝ) / 8) :=
  pinnedSmoothIntervalBrackets_exists
    (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num)

/-- An arbitrary nonnegative finitely supported arithmetic sequence
inherits the TRUE two-sided sandwich for each real scaling T.
The integral mass bounds alone are not substituted for this pointwise
inequality. -/
theorem positiveFiniteWeightedSum_sandwich
    {a b : ℝ} (lower upper : ℝ → ℝ)
    (hlo : ∀ x : ℝ,
      lower x ≤
        (Set.Ico a b).indicator (fun _ : ℝ => (1 : ℝ)) x)
    (hhi : ∀ x : ℝ,
      (Set.Ico a b).indicator (fun _ : ℝ => (1 : ℝ)) x ≤ upper x)
    (f : ℕ → ℝ) (hf : ∀ n, 0 ≤ f n)
    (s : Finset ℕ) (T : ℝ) :
    (∑ n ∈ s, f n * lower ((n : ℝ) / T)) ≤
      (∑ n ∈ s,
        f n *
          (Set.Ico a b).indicator
            (fun _ : ℝ => (1 : ℝ)) ((n : ℝ) / T)) ∧
      (∑ n ∈ s,
        f n *
          (Set.Ico a b).indicator
            (fun _ : ℝ => (1 : ℝ)) ((n : ℝ) / T)) ≤
      (∑ n ∈ s, f n * upper ((n : ℝ) / T)) := by
  constructor
  · apply Finset.sum_le_sum
    intro n hn
    exact mul_le_mul_of_nonneg_left
      (hlo ((n : ℝ) / T)) (hf n)
  · apply Finset.sum_le_sum
    intro n hn
    exact mul_le_mul_of_nonneg_left
      (hhi ((n : ℝ) / T)) (hf n)

/-- Apply the true source-local smooth witnesses to finite arithmetic
windows, retaining both quantitative integral bounds and all
pointwise inequalities. No summability or analytic convergence is
inferred from finite inequalities. -/
theorem concrete_smooth_brackets_give_finite_sum_bounds
    {a b η : ℝ}
    (ha : 0 < a) (hab : a < b)
    (hη : 0 < η) (hηleft : η < a)
    (hηwidth : η < b - a)
    (f : ℕ → ℝ) (hf : ∀ n, 0 ≤ f n)
    (s : Finset ℕ) (T : ℝ) :
    ∃ lower upper : ℝ → ℝ,
      ContDiff ℝ ∞ lower ∧ ContDiff ℝ ∞ upper ∧
      HasCompactSupport lower ∧ HasCompactSupport upper ∧
      closure (Function.support lower) ⊆ Set.Ioi (0 : ℝ) ∧
      closure (Function.support upper) ⊆ Set.Ioi (0 : ℝ) ∧
      b - a - η ≤ ∫ x in Set.Ioi (0 : ℝ), lower x ∧
      (∫ x in Set.Ioi (0 : ℝ), upper x) ≤ b - a + η ∧
      (∑ n ∈ s, f n * lower ((n : ℝ) / T)) ≤
        (∑ n ∈ s,
          f n * (Set.Ico a b).indicator
            (fun _ : ℝ => (1 : ℝ)) ((n : ℝ) / T)) ∧
      (∑ n ∈ s,
          f n * (Set.Ico a b).indicator
            (fun _ : ℝ => (1 : ℝ)) ((n : ℝ) / T)) ≤
        (∑ n ∈ s, f n * upper ((n : ℝ) / T)) := by
  obtain ⟨lo, hi, hls, hus, hlc, huc, hla, hua, hpoint, hlmass, humass⟩ :=
    pinnedSmoothIntervalBrackets_exists ha hab hη hηleft hηwidth
  have hfin :=
    positiveFiniteWeightedSum_sandwich lo hi
      (fun x => (hpoint x).2.1)
      (fun x => (hpoint x).2.2.1)
      f hf s T
  exact ⟨lo, hi, hls, hus, hlc, huc, hla, hua,
    hlmass, humass, hfin.1, hfin.2⟩

/-- A fixed cutoff cannot be substituted for an integral mass
approximation family with arbitrarily small positive η. -/
def remainingSmoothWienerObligations : List String :=
  ["port/prove smooth-test Wiener-Ikehara summation limit for actual pinned Lambda",
   "derive the all-relative-interval limit from positive smooth sandwiches and mass approximation",
   "replay the Urysohn bump, volume and set-integral comparisons at the pinned Mathlib revision",
   "audit exact half-open arithmetic windows and n=0 term when translating the smoothed limit",
   "obtain exact-head Lean/Lake and kernel/axiom receipts under trust issue #100"]

/-- Hostile nonimplications; source metadata never becomes evidence. -/
def prohibitedPromotions : List String :=
  ["a=0 or eta>=a -> positive support separated from zero",
   "eta>=b-a -> nontrivial lower interior interval length",
   "half-open Ico(a,b) -> closed Icc(a,b) without endpoint control",
   "approximate integral mass -> convergence of weighted arithmetic sums",
   "smooth bracket existence -> smoothed Wiener-Ikehara limit",
   "nonnegative finite weights -> signs of arbitrary complex coefficients",
   "external Lean 4.21 Urysohn source -> locally kernel-checked Lean 4.33 theorem",
   "source draft theorem -> accepted proof without Lean/Lake replay",
   "fixed false integer-psi capacity -> valid RH theorem supplier",
   "negative audit of one capacity route -> disproof of Riemann Hypothesis"]

end GRWTSK.RiemannHypothesis.Checks.PinnedWienerSmoothIntervalBracketsControls
```
