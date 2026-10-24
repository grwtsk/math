# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Mon.Variant495a7df37c5626b5e22f9d29d8ec9ced507a62c8f99869eb0fb15c40b77a0806

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `12ceea71423fbf9b5ed5d8553ffc002066e1e7a3` · SHA-256 `495a7df37c5626b5e22f9d29d8ec9ced507a62c8f99869eb0fb15c40b77a0806`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.CategoryTheory.Monoidal.Internal.Limits
import Mathlib.CategoryTheory.Limits.Preserves.Shapes.Terminal
import Mathlib.CategoryTheory.Limits.Preserves.Shapes.BinaryProducts

open CategoryTheory Limits

noncomputable section

-- We verify that we have successfully created special shapes of limits in `Mon_ C`,
-- assuming that only those special shapes existed in `C`.

-- To avoid unnecessarily adding imports in `Mathlib/CategoryTheory/Monoidal/Internal/Limits.lean`
-- this check lives in the test suite.

example (D : Type u) [Category.{v} D] [MonoidalCategory D] [HasTerminal D] :
  (⊤_ (Mon_ D)).X ≅ (⊤_ D) := PreservesTerminal.iso (Mon_.forget D)

example (D : Type u) [Category.{v} D] [MonoidalCategory D] [HasBinaryProducts D] (A B : Mon_ D) :
  (prod A B).X ≅ prod A.X B.X := PreservesLimitPair.iso (Mon_.forget D) A B
```
