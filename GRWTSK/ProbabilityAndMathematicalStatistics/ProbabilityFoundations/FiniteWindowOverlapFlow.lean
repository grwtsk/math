/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
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
  have hshift (t : ℕ) :
      windowSuffix k t x = windowPrefix k (t + 1) x :=
    windowSuffix_eq_nextPrefix k t x
  have hcount :
      (windowOutCount k N x v : ℤ) =
        ∑ t ∈ Finset.range N,
          if windowPrefix k t x = v then (1 : ℤ) else 0 := by
    simp [windowOutCount, Finset.sum_ite]
  have hcount' :
      (windowInCount k N x v : ℤ) =
        ∑ t ∈ Finset.range N,
          if windowSuffix k t x = v then (1 : ℤ) else 0 := by
    simp [windowInCount, Finset.sum_ite]
  rw [hcount, hcount']
  simp_rw [hshift]
  induction N with
  | zero => omega
  | succ n ih =>
      cases n with
      | zero => simp
      | succ m =>
          have hN' : 0 < m + 1 := by omega
          have hprev := ih hN'
          simp only [Finset.sum_range_succ]
          omega

end GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic
