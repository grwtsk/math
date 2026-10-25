# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestUniqueRootFix.Variant0d08ad9bf09b1318395ba5c613392bf69232bcb8baf8563740f0c7eb7af6f2cf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `11ea3fe98733801b1dee7783690fea0be62dcb3e` · SHA-256 `0d08ad9bf09b1318395ba5c613392bf69232bcb8baf8563740f0c7eb7af6f2cf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
  Test interval_unique_root fix
-/
import LeanCert.Tactic.Discovery

open LeanCert.Core

-- Define an interval [1, 2]
def I_1_2 : IntervalRat := ⟨1, 2, by norm_num⟩

-- √2 is unique root of x² - 2 = 0 in [1, 2]
-- x² - 2 expressed as: Expr.add (Expr.mul (Expr.var 0) (Expr.var 0)) (Expr.neg (Expr.const 2))
example : ∃! x, x ∈ I_1_2 ∧ Expr.eval (fun _ => x)
    (Expr.add (Expr.mul (Expr.var 0) (Expr.var 0)) (Expr.neg (Expr.const 2))) = 0 := by
  interval_unique_root

-- Linear function: x - 1.5 = 0 has unique root at 1.5 in [1, 2]
example : ∃! x, x ∈ I_1_2 ∧ Expr.eval (fun _ => x)
    (Expr.add (Expr.var 0) (Expr.neg (Expr.const (3/2)))) = 0 := by
  interval_unique_root

-- cos(x) = 0 has unique root near π/2 ≈ 1.57 in [1.4, 1.7]
def I_cos : IntervalRat := ⟨14/10, 17/10, by norm_num⟩

example : ∃! x, x ∈ I_cos ∧ Expr.eval (fun _ => x)
    (Expr.cos (Expr.var 0)) = 0 := by
  interval_unique_root
```
