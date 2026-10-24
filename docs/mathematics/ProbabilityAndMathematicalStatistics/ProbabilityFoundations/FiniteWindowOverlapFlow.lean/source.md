# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteWindowOverlapFlow

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dc9869e2c02a3c350767a04d91a3b0cfb6a19c4c` · SHA-256 `19df11378589563b1009b7dc2a400e28661662b42aaab5fb22639623126a28df`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Finite overlap-flow proof drafting assistance: OpenAI.
-/
import GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FinitePatternCountBalancing
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Exact de Bruijn overlap-flow boundary for finite binary windows

This pure combinatorial source distinguishes arbitrary balanced
pattern counts from the counts realized by consecutive overlapping
windows. It makes no random-model, Liouville cancellation, Chowla,
or RH assertion. Source draft: independent Lean replay required.
-/

namespace GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic

open scoped BigOperators

/-- The initial (k-1)-coordinate prefix of a length-k window. -/
def windowPrefix (k t : ℕ) (x : ℕ → Bool) : Fin (k - 1) → Bool :=
  fun i => x (t + i.val)

/-- The terminal (k-1)-coordinate suffix of a length-k window. -/
def windowSuffix (k t : ℕ) (x : ℕ → Bool) : Fin (k - 1) → Bool :=
  fun i => x (t + i.val + 1)

/-- The actual one-step overlap identity, for every k. -/
theorem windowSuffix_eq_nextPrefix (k t : ℕ) (x : ℕ → Bool) :
    windowSuffix k t x = windowPrefix k (t + 1) x := by
  funext i
  simp [windowSuffix, windowPrefix]
  congr 1
  omega

/-- Number of outgoing edges (windows) from a de Bruijn vertex. -/
def windowOutCount (k N : ℕ) (x : ℕ → Bool)
    (v : Fin (k - 1) → Bool) : ℕ :=
  ((Finset.range N).filter (fun t => windowPrefix k t x = v)).card

/-- Number of incoming edges (windows) to a de Bruijn vertex. -/
def windowInCount (k N : ℕ) (x : ℕ → Bool)
    (v : Fin (k - 1) → Bool) : ℕ :=
  ((Finset.range N).filter (fun t => windowSuffix k t x = v)).card

/-- Finite path conservation: all interior window endpoints cancel.
The two boundary indicators remain, even when N=1 or the
start and end vertices coincide. -/
theorem window_overlap_flow (k N : ℕ) (x : ℕ → Bool)
    (v : Fin (k - 1) → Bool) (hN : 0 < N) :
    (windowOutCount k N x v : ℤ) -
        (windowInCount k N x v : ℤ) =
      (if windowPrefix k 0 x = v then (1 : ℤ) else 0) -
        (if windowSuffix k (N - 1) x = v then (1 : ℤ) else 0) := by
  classical
  have hlast : N - 1 + 1 = N := Nat.sub_add_cancel (by omega)
  simp only [windowOutCount, windowInCount, Finset.natCast_card_filter,
    windowSuffix_eq_nextPrefix]
  rw [hlast, ← Finset.sum_sub_distrib, Finset.sum_range_sub']

end GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic
```
