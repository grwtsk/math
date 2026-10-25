# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestStressRoot.Varianteff936005b3d8742c34520ebbcaecbc227265e9baeaa34a380998c2bd5547a93

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `63f91a7824dd6339ecd8c06f41d370aea1a6a046` · SHA-256 `eff936005b3d8742c34520ebbcaecbc227265e9baeaa34a380998c2bd5547a93`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import LeanCert.Tactic.IntervalAuto

open LeanCert.Core

def I01 : IntervalRat := ⟨0, 1, by norm_num⟩
def I23 : IntervalRat := ⟨2, 3, by norm_num⟩

-- Root-finding stress tests (prove no roots in a box).
example : ∀ x ∈ I01, Expr.eval (fun _ => x) (Expr.exp (Expr.var 0)) ≠ (0 : ℝ) := by
  root_bound 15

example : ∀ x ∈ I23,
    Expr.eval (fun _ => x)
      (Expr.add (Expr.mul (Expr.var 0) (Expr.var 0)) (Expr.neg (Expr.const 2))) ≠ (0 : ℝ) := by
  root_bound
```
