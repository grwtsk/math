# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.IntegerWitnessControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `60e38c67c6235d1c4c4556aed214e7b73b0e5501` · SHA-256 `c5985902be00c387168dfd2a78071b001ace7c24cc70517c68fd75c2d751058b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ErrorBounds.CheckedIntegerPower

set_option autoImplicit false

/-! Small exact controls. These proof scripts have NOT been executed in Lean.
No control is an actual zero-count certificate. -/
namespace GRWTSK.RiemannHypothesis.Checks.IntegerWitnessControls

open GRWTSK.Analysis.ErrorBounds
open IntegerDyadicSquare IntegerSquareWitness

theorem negative_floor : checkStep 2 ⟨1,2,0⟩ ⟨-1,1,1⟩ = true := by decide

theorem truncation_reject : checkStep 2 ⟨1,2,0⟩ ⟨0,1,1⟩ = false := by decide

theorem exact_radius : checkStep 4 ⟨10,0,1⟩ ⟨6,0,3⟩ = true := by decide

theorem larger_radius_not_same_state : checkStep 4 ⟨10,0,1⟩ ⟨6,0,4⟩ = false := by decide

theorem smaller_radius_reject : checkStep 4 ⟨10,0,1⟩ ⟨6,0,2⟩ = false := by decide

theorem quadratic_error_required : checkStep 4 ⟨0,0,8⟩ ⟨0,0,16⟩ = false := by decide

theorem complete_chain : check 4 2 ⟨10,0,1⟩ [⟨6,0,3⟩,⟨2,0,7⟩] ⟨2,0,7⟩ = true := by decide

theorem right_final_does_not_hide_bad_step :
    check 4 2 ⟨10,0,1⟩ [⟨6,0,2⟩,⟨2,0,7⟩] ⟨2,0,7⟩ = false := by decide

theorem wrong_seed : check 4 2 ⟨10,0,0⟩ [⟨6,0,3⟩,⟨2,0,7⟩] ⟨2,0,7⟩ = false := by decide

theorem wrong_final_radius :
    check 4 2 ⟨10,0,1⟩ [⟨6,0,3⟩,⟨2,0,7⟩] ⟨2,0,0⟩ = false := by decide

theorem missing_last : check 4 2 ⟨10,0,1⟩ [⟨6,0,3⟩] ⟨2,0,7⟩ = false := by decide

theorem extra_row : check 4 2 ⟨10,0,1⟩ [⟨6,0,3⟩,⟨2,0,7⟩,⟨2,0,7⟩] ⟨2,0,7⟩ = false := by decide

theorem order_matters : check 4 2 ⟨10,0,1⟩ [⟨2,0,7⟩,⟨6,0,3⟩] ⟨2,0,7⟩ = false := by decide

theorem empty_chain : check 4 0 ⟨10,0,1⟩ [] ⟨10,0,1⟩ = true := by decide

theorem empty_positive_count : check 4 1 ⟨10,0,1⟩ [] ⟨10,0,1⟩ = false := by decide

theorem fixed_point_extra_row_reject : check 4 0 ⟨0,0,0⟩ [⟨0,0,0⟩] ⟨0,0,0⟩ = false := by decide

theorem fixed_point_full_count : check 4 2 ⟨0,0,0⟩ [⟨0,0,0⟩,⟨0,0,0⟩] ⟨0,0,0⟩ = true := by decide

/-- Nonnegative radii are not an assertion of the purely arithmetic checker. -/
theorem negative_arithmetic_state : check 0 0 ⟨0,0,-1⟩ [] ⟨0,0,-1⟩ = true := by decide

theorem floor_upper_is_strict : ¬ FloorBounds 0 4 (-1) := by decide

theorem ceil_lower_is_strict : ¬ CeilBounds 0 4 1 := by decide

/-- Even a perfect witness cannot bypass the original base-domain guard. -/
theorem base_zero_reject :
    CheckedIntegerPower.evaluate (1,0) 0 ⟨0,0,0,4,0,1⟩ [] = none := by decide

end GRWTSK.RiemannHypothesis.Checks.IntegerWitnessControls
```
