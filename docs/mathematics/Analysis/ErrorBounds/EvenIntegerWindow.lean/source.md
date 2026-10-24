# Complete source: GRWTSK.Analysis.ErrorBounds.EvenIntegerWindow

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a7db4722763a5a84b4b31aba0bf60bc42575982e` · SHA-256 `8908f4980508fc7e3c5ae007f520a7a06ce7415cab32a9905205d861276ff085`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Data.Rat.Cast.Order
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Exact rational windows for an independently known even natural count

A passing finite guard only isolates a lattice value. It does NOT establish that
an analytic count is inside the supplied window. Both inclusion inequalities
and the actual parity theorem are required by applications. Endpoints at the
adjacent even integers are rejected, even if an ordinary rounded estimate looks
close to the target. No approximate-to-exact analytic bridge is defined here.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.Analysis.ErrorBounds.EvenIntegerWindow

/-- The window contains the target and excludes both adjacent even integers. -/
def check (lo hi : ℚ) (n : ℕ) : Bool :=
  decide (lo ≤ 2 * (n : ℚ) ∧ 2 * (n : ℚ) ≤ hi ∧
    2 * (n : ℚ) - 2 < lo ∧ hi < 2 * (n : ℚ) + 2)

theorem check_sound {lo hi : ℚ} {n k : ℕ} (h : check lo hi n = true)
    (hl : (lo : ℝ) ≤ 2 * (k : ℝ)) (hu : 2 * (k : ℝ) ≤ (hi : ℝ)) : k = n := by
  have hg : lo ≤ 2 * (n : ℚ) ∧ 2 * (n : ℚ) ≤ hi ∧
      2 * (n : ℚ) - 2 < lo ∧ hi < 2 * (n : ℚ) + 2 := by
    simpa only [check, decide_eq_true_eq] using h
  have hlo : 2 * (n : ℝ) - 2 < (lo : ℝ) := by exact_mod_cast hg.2.2.1
  have hhi : (hi : ℝ) < 2 * (n : ℝ) + 2 := by exact_mod_cast hg.2.2.2
  have hkn : k < n + 1 := by
    have hr : (k : ℝ) < (n : ℝ) + 1 := by linarith
    exact_mod_cast hr
  have hnk : n < k + 1 := by
    have hr : (n : ℝ) < (k : ℝ) + 1 := by linarith
    exact_mod_cast hr
  omega

/-- Zero is a permitted target; subtraction is rational, not truncated Nat.sub. -/
theorem zero_target : check (-1) 1 0 = true := by decide

theorem enclosing_two : check 1 3 1 = true := by decide

theorem adjacent_even_endpoints_rejected :
    check 0 3 1 = false ∧ check 1 4 1 = false := by decide

theorem reversed_or_wrong_target_rejected :
    check 3 1 1 = false ∧ check 1 3 2 = false := by decide

/-- Odd values are not excluded by [1,3] alone: actual parity is necessary. -/
theorem window_without_parity_is_insufficient :
    (1 : ℚ) ≤ 3 ∧ (3 : ℚ) ≤ 3 ∧ (3 : ℕ) ≠ 2 := by decide

end GRWTSK.Analysis.ErrorBounds.EvenIntegerWindow
```
