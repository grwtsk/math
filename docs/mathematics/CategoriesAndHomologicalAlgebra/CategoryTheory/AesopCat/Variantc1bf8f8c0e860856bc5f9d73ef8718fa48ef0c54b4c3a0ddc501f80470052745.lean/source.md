# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AesopCat.Variantc1bf8f8c0e860856bc5f9d73ef8718fa48ef0c54b4c3a0ddc501f80470052745

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `549cd69b92adb7fb856cecf061c4d62fb35ee171` · SHA-256 `c1bf8f8c0e860856bc5f9d73ef8718fa48ef0c54b4c3a0ddc501f80470052745`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.CategoryTheory.Category.Basic

structure Foo where
  x : Nat
  w : x = 37 := by aesop_cat

/-- warning: declaration uses 'sorry' -/
#guard_msgs in
example : Foo where
  x := sorry

/--
error: could not synthesize default value for field 'w' of 'Foo' using tactics
---
error: tactic 'aesop' failed, failed to prove the goal after exhaustive search.
Initial goal:
  ⊢ 35 = 37
Remaining goals after safe rules:
  ⊢ False
-/
#guard_msgs in
example : Foo where
  x := 35
```
