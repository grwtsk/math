# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FinitePatternBoundaryTV

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bbac3acda406e56772c39599de39c086fbf88c22` · SHA-256 `3db91ca9f8442f726ad607c5810c0730c0b9806f6d1ba2ccae7bdb26a9412948`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib sources retain their upstream attribution and licenses.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Owner: math#654. Stacked parent: math#630 / draft PR #638.
-/
import GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteWalshPatterns
import Mathlib

/-!
# Finite event total variation controlled by labeled exceptional roots

The parent supplies raw Walsh pattern identities and exact support of each
pattern-count difference. This independent finite-probability supplier
bounds the full total variation of empirical pattern distributions using
an explicitly counted exceptional root subset.

Finite total variation is the maximum absolute empirical probability
difference over all Boolean events of a finite alphabet. A bound for one
selected pattern is not asserted to bound every event.

There is no Chowla estimate, Bernoulli genericity, ergodic limit, GUE
claim, or RH consequence. Positive root cardinality is mandatory for
the normalized probability theorem.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic.BoundaryTV

variable {α ι : Type*}

/-- Raw count of roots accepted by a Boolean event on the full label. -/
def eventCount (roots : Finset ℕ) (labels : ℕ → α)
    (event : α → Bool) : ℝ :=
  ∑ n ∈ roots, if event (labels n) then (1 : ℝ) else 0

theorem eventCount_nonneg (roots : Finset ℕ) (labels : ℕ → α)
    (event : α → Bool) :
    0 ≤ eventCount roots labels event := by
  unfold eventCount
  apply Finset.sum_nonneg
  intro n hn
  split_ifs <;> norm_num

theorem eventCount_le_card (roots : Finset ℕ) (labels : ℕ → α)
    (event : α → Bool) :
    eventCount roots labels event ≤ (roots.card : ℝ) := by
  unfold eventCount
  calc
    (∑ n ∈ roots, if event (labels n) then (1 : ℝ) else 0) ≤
        ∑ n ∈ roots, (1 : ℝ) := by
      apply Finset.sum_le_sum
      intro n hn
      split_ifs <;> norm_num
    _ = (roots.card : ℝ) := by simp

/-- Exact root partition, including every exceptional root. -/
theorem eventCount_split (roots exception : Finset ℕ)
    (labels : ℕ → α) (event : α → Bool)
    (hsub : exception ⊆ roots) :
    eventCount (roots \ exception) labels event +
      eventCount exception labels event =
      eventCount roots labels event := by
  unfold eventCount
  exact Finset.sum_sdiff hsub

/-- Only matching full labels at good roots allow the event reduction. -/
theorem eventCount_agree_off (roots exception : Finset ℕ)
    (x y : ℕ → α) (event : α → Bool)
    (hagree : ∀ n ∈ roots, n ∉ exception → x n = y n) :
    eventCount (roots \ exception) x event =
      eventCount (roots \ exception) y event := by
  unfold eventCount
  apply Finset.sum_congr rfl
  intro n hn
  have hnroot : n ∈ roots := (Finset.mem_sdiff.mp hn).1
  have hngood : n ∉ exception := (Finset.mem_sdiff.mp hn).2
  rw [hagree n hnroot hngood]

/-- All count disagreement comes from the named exceptional roots. -/
theorem eventCount_difference_supported (roots exception : Finset ℕ)
    (x y : ℕ → α) (event : α → Bool)
    (hsub : exception ⊆ roots)
    (hagree : ∀ n ∈ roots, n ∉ exception → x n = y n) :
    eventCount roots x event - eventCount roots y event =
      eventCount exception x event - eventCount exception y event := by
  have hx := eventCount_split roots exception x event hsub
  have hy := eventCount_split roots exception y event hsub
  have hgood := eventCount_agree_off roots exception x y event hagree
  linarith

/-- The same-root coupling bounds every event by the exceptional count. -/
theorem abs_eventCount_difference_le (roots exception : Finset ℕ)
    (x y : ℕ → α) (event : α → Bool)
    (hsub : exception ⊆ roots)
    (hagree : ∀ n ∈ roots, n ∉ exception → x n = y n) :
    |eventCount roots x event - eventCount roots y event| ≤
      (exception.card : ℝ) := by
  rw [eventCount_difference_supported roots exception x y event hsub hagree]
  have hx0 := eventCount_nonneg exception x event
  have hy0 := eventCount_nonneg exception y event
  have hx1 := eventCount_le_card exception x event
  have hy1 := eventCount_le_card exception y event
  apply abs_le.mpr
  constructor <;> linarith

/-- Real empirical event probability; only positive roots yield a probability. -/
def empiricalEvent (roots : Finset ℕ) (labels : ℕ → α)
    (event : α → Bool) : ℝ :=
  eventCount roots labels event / (roots.card : ℝ)

/-- Guarded normalized version of the event-support bound. -/
theorem abs_empiricalEvent_difference_le (roots exception : Finset ℕ)
    (x y : ℕ → α) (event : α → Bool)
    (hsub : exception ⊆ roots) (hroots : 0 < roots.card)
    (hagree : ∀ n ∈ roots, n ∉ exception → x n = y n) :
    |empiricalEvent roots x event - empiricalEvent roots y event| ≤
      (exception.card : ℝ) / (roots.card : ℝ) := by
  have hpositive : 0 < (roots.card : ℝ) := by exact_mod_cast hroots
  have hbound := abs_eventCount_difference_le roots exception x y event hsub hagree
  unfold empiricalEvent
  rw [← sub_div, abs_div, abs_of_pos hpositive]
  exact div_le_div_of_nonneg_right hbound hpositive.le

/-- Finite total variation: supremum over every event in a finite alphabet,
not the discrepancy of just one chosen pattern. -/
def finiteEventTV [Fintype α] (roots : Finset ℕ) (x y : ℕ → α) : ℝ :=
  (Finset.univ : Finset (α → Bool)).sup'
    (by exact ⟨(fun _ : α => false), Finset.mem_univ _⟩)
    (fun event => |empiricalEvent roots x event - empiricalEvent roots y event|)

/-- Exact finite-coupling inequality, without arithmetic assumptions. -/
theorem finiteEventTV_le_exception_fraction [Fintype α]
    (roots exception : Finset ℕ) (x y : ℕ → α)
    (hsub : exception ⊆ roots) (hroots : 0 < roots.card)
    (hagree : ∀ n ∈ roots, n ∉ exception → x n = y n) :
    finiteEventTV roots x y ≤
      (exception.card : ℝ) / (roots.card : ℝ) := by
  classical
  unfold finiteEventTV
  apply Finset.sup'_le
  intro event hevent
  exact abs_empiricalEvent_difference_le roots exception x y event
    hsub hroots hagree

/-- The actual selected-coordinate source pattern at one root. -/
def selectedPattern (I : Finset ι) (x : ℕ → ι → Bool) (n : ℕ) :
    ({i : ι // i ∈ I} → Bool) :=
  fun i => x n i.1

/-- Every coordinate must match; unlabeled neighborhood agreement is insufficient. -/
theorem selectedPattern_agree_off (roots exception : Finset ℕ)
    (I : Finset ι) (x y : ℕ → ι → Bool)
    (hagree : ∀ n ∈ roots, n ∉ exception →
      ∀ i ∈ I, x n i = y n i) :
    ∀ n ∈ roots, n ∉ exception →
      selectedPattern I x n = selectedPattern I y n := by
  intro n hn hnot
  funext i
  exact hagree n hn hnot i.1 i.2

/-- The Chowla-sofic labeled-boundary finite total-variation supplier.
No vanishing exceptional density, cyclic seam bound, or Chowla hypothesis
is constructed. The theorem controls only the selected pattern marginal. -/
theorem selectedPattern_finiteTV_le_exception_fraction
    (roots exception : Finset ℕ)
    (I : Finset ι) (x y : ℕ → ι → Bool)
    (hsub : exception ⊆ roots) (hroots : 0 < roots.card)
    (hagree : ∀ n ∈ roots, n ∉ exception →
      ∀ i ∈ I, x n i = y n i) :
    finiteEventTV roots (selectedPattern I x) (selectedPattern I y) ≤
      (exception.card : ℝ) / (roots.card : ℝ) := by
  classical
  exact finiteEventTV_le_exception_fraction roots exception
    (selectedPattern I x) (selectedPattern I y)
    hsub hroots (selectedPattern_agree_off roots exception I x y hagree)

end GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic.BoundaryTV
```
