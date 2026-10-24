# Complete source: GRWTSK.Analysis.ErrorBounds.RationalRoundedExp

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `76d8315e713e699a00fb97e56bd097cf6ba6ffcf` · SHA-256 `f6c054bd6abf55aaa2acd8f7e0928af3edbcf9519a879c967f702de109dba4cb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ErrorBounds.RationalDyadicArithmetic

set_option autoImplicit false

/-!
# Constructed rounded exponential traces, checked by the unchanged trace checker

The seed is the existing exact rational Taylor polynomial. Every coordinate
rounding residual is recomputed, and every required trace entry is constructed.
This is a pure reference expression, not a claim about a compiled Horner loop,
parser, runtime cost or the execution of the large concrete finite decisions.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.ErrorBounds.RationalRoundedExp

open RationalComplexEnclosure RationalDyadicArithmetic
open RationalNewtonDisk (magnitude norm_le_magnitude)

/-- One rounded seed followed by exactly the requested number of rounded squares. -/
def stage (bits : ℕ) (w : Coordinates) (s M : ℕ) : ℕ → Coordinates
  | 0 => rounded bits (RationalExpTrace.seedValue w s M)
  | j + 1 => rounded bits (mul (stage bits w s M j) (stage bits w s M j))

def squareRadius (bits : ℕ) (w : Coordinates) (s M j : ℕ) : ℚ :=
  magnitude (sub (stage bits w s M (j + 1))
    (mul (stage bits w s M j) (stage bits w s M j)))

/-- The shape and all local residuals are outputs, never trusted metadata. -/
def trace (bits : ℕ) (w : Coordinates) (s M : ℕ) : RationalExpTrace.Trace :=
  ⟨(List.range (s + 1)).map (stage bits w s M),
    magnitude (sub (RationalExpTrace.seedValue w s M) (stage bits w s M 0)),
    (List.range s).map (squareRadius bits w s M)⟩

theorem trace_value (bits : ℕ) (w : Coordinates) (s M j : ℕ) (hj : j ≤ s) :
    RationalExpTrace.valueAt (trace bits w s M) j = stage bits w s M j := by
  unfold RationalExpTrace.valueAt trace
  rw [List.getD_eq_getElem _ _ (by
    simpa only [List.length_map, List.length_range] using Nat.lt_succ_of_le hj)]
  simp

theorem trace_radius (bits : ℕ) (w : Coordinates) (s M j : ℕ) (hj : j < s) :
    RationalExpTrace.radiusAt (trace bits w s M) j = squareRadius bits w s M j := by
  unfold RationalExpTrace.radiusAt trace
  rw [List.getD_eq_getElem _ _ (by simpa only [List.length_map, List.length_range] using hj)]
  simp

/-- Nonvacuity for every admissible input, not an assumed successful trace. -/
theorem trace_checked (bits : ℕ) {w : Coordinates} (hw : w.1 ≤ 0) (s M : ℕ)
    (hg : (magnitude w / (2 ^ s : ℕ)) / (M + 1 : ℕ) ≤ (1 / 2 : ℚ)) :
    RationalExpTrace.check w (magnitude w) s M (trace bits w s M) = true := by
  apply (RationalExpTrace.check_iff_valid _ _ _ _ _).mpr
  refine ⟨hw, (inBall_iff _ _).mpr (norm_le_magnitude w), hg,
    by simp [trace], by simp [trace], ?_, ?_⟩
  · rw [trace_value bits w s M 0 (Nat.zero_le s)]
    exact (inBall_iff _ _).mpr (norm_le_magnitude _)
  · intro j hj
    have hj' := Finset.mem_range.mp hj
    rw [trace_value bits w s M (j + 1) (by omega),
      trace_value bits w s M j (by omega), trace_radius bits w s M j hj']
    exact (inBall_iff _ _).mpr (norm_le_magnitude _)

/-- The outward allowance is the existing dominating recurrence, not the seed tail. -/
def enclosure (bits : ℕ) (w : Coordinates) (s M : ℕ) : Ball :=
  let tr := trace bits w s M
  ⟨stage bits w s M s,
    outwardPropagation bits (RationalExpTrace.seedTail (magnitude w) s M + tr.seedRadius)
      (RationalExpTrace.radiusAt tr) s⟩

theorem enclosure_sound (bits : ℕ) {w : Coordinates} (hw : w.1 ≤ 0) (s M : ℕ)
    (hg : (magnitude w / (2 ^ s : ℕ)) / (M + 1 : ℕ) ≤ (1 / 2 : ℚ)) :
    Holds (enclosure bits w s M) (Complex.exp (toComplex w)) := by
  have h := checked_exp_outward_error bits (trace_checked bits hw s M hg)
  simpa only [enclosure, Holds, trace_value bits w s M s le_rfl] using h

/-- This control includes a nonzero rounding residual, unlike the old exact trace. -/
theorem rounded_trace_control :
    RationalExpTrace.check (-1, 0) 1 1 3 (trace 4 (-1, 0) 1 3) = true ∧
    stage 4 (-1, 0) 1 3 1 = (3 / 8, 0) ∧
    squareRadius 4 (-1, 0) 1 3 0 = 1 / 64 := by decide

end GRWTSK.Analysis.ErrorBounds.RationalRoundedExp
```
