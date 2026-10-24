/- Intentionally rejected: a positive squared-modulus sum cannot be used as
the negative signed-square trace at I and -I. -/
import GRWTSK.Algebra.Polynomial.SignedRootTrace
import Mathlib.Tactic.NormNum

open Polynomial Complex GRWTSK.Polynomial.SignedRootTrace

example : 0 ≤ (squareTrace {I, -I} (fun _ => 1) X).re := by
  have hne : (I : ℂ) ≠ -I := by intro h; have := congrArg Complex.im h; norm_num at this
  have hv : squareTrace {I, -I} (fun _ => 1) X = -2 := by
    simp [squareTrace, hne]
    norm_num
  rw [hv]
  change (0 : ℝ) ≤ -2
  exact (show (0 : ℝ) ≤ Complex.normSq I + Complex.normSq (-I) by norm_num)
