# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Check.Variantd61744994b6e0e94e72a1ccf37e3125765c06904b4b5f6e91f8f1a937e39df77

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b8ef98fafb1c20015df727ac5f3f9d152f54faca` · SHA-256 `d61744994b6e0e94e72a1ccf37e3125765c06904b4b5f6e91f8f1a937e39df77`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Core.ConductorThreePrimePowerRemoval
import Mathlib.Tactic

#check Real.log_le_sub_one_of_pos
#check Real.add_one_le_exp
#check Real.exp_one_lt_d9
#check Real.exp_one_lt_three
#check Real.le_log_iff_exp_le

example {x : ℕ} (hx : 3 ≤ x) :
    (1 : ℝ) ≤ Real.sqrt x * Real.log x := by
  have hsqrt : 1 ≤ Real.sqrt (x : ℝ) := by
    rw [Real.one_le_sqrt]
    exact_mod_cast (by omega : 1 ≤ x)
  have hlog : 1 ≤ Real.log (x : ℝ) := by
    rw [← Real.exp_le_exp]
    rw [Real.exp_log (by positivity)]
    exact le_trans Real.exp_one_lt_three.le (by exact_mod_cast hx)
  nlinarith
```
