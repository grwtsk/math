# Complete source: GRWTSK.Algebra.Convert2.Variantd32ffc34e85cec4aa5208acb49cbf1586a29a76725061c88c9c20bec0791fbba

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `87784f0706db85d0b8c1361b731bd324cc20173b` · SHA-256 `d32ffc34e85cec4aa5208acb49cbf1586a29a76725061c88c9c20bec0791fbba`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Algebra.BigOperators.Ring.List
import Mathlib.Algebra.Ring.Nat
import Mathlib.Tactic.Convert

set_option linter.unreachableTactic false

-- Prior to https://github.com/leanprover-community/mathlib4/pull/7945 this failed with `(kernel) declaration has metavariables '_example'`.
/--
error: maximum recursion depth has been reached
use `set_option maxRecDepth <num>` to increase limit
use `set_option diagnostics true` to get diagnostic information
-/
#guard_msgs (error) in
example (_h₁ : ((List.range 128).map (fun _ => 0)).sum = 0) : 0 ∣ 1 := by
  apply Nat.dvd_of_mul_dvd_mul_left Nat.zero_lt_one
  convert Nat.dvd_mul_left 0 1
```
