# Complete source: GRWTSK.Analysis.LpSpace.Variant9edc2aab03586222c559b1c551b749e9004c0e2f99d81289d94acf21cab59070

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c65799a12093a2d44c8da87ab14ab21637776290` · SHA-256 `9edc2aab03586222c559b1c551b749e9004c0e2f99d81289d94acf21cab59070`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jireh Loreaux. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jireh Loreaux
-/
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.Analysis.Normed.Lp.lpSpace

/-! # `lp ∞ A` as a C⋆-algebra

We place these here because, for reasons related to the import hierarchy, they should not be placed
in earlier files.
-/
open scoped ENNReal

noncomputable section

variable {I : Type*} {A : I → Type*}

#adaptation_note /-- 2025-03-29 for lean4#7717 had to add `norm_mul_self_le` field. -/
instance [∀ i, NonUnitalCStarAlgebra (A i)] : NonUnitalCStarAlgebra (lp A ∞) where
  norm_mul_self_le := CStarRing.norm_mul_self_le

instance [∀ i, NonUnitalCommCStarAlgebra (A i)] : NonUnitalCommCStarAlgebra (lp A ∞) where
  mul_comm := mul_comm

-- it's slightly weird that we need the `Nontrivial` instance here
-- it's because we have no way to say that `‖(1 : A i)‖` is uniformly bounded as a type class
-- aside from `∀ i, NormOneClass (A i)`, this holds automatically for C⋆-algebras though.
instance [∀ i, Nontrivial (A i)] [∀ i, CStarAlgebra (A i)] : NormedRing (lp A ∞) where
  dist_eq := dist_eq_norm
  norm_mul_le := norm_mul_le

#adaptation_note /-- 2025-03-29 for lean4#7717 had to add `norm_mul_self_le` field. -/
instance [∀ i, Nontrivial (A i)] [∀ i, CommCStarAlgebra (A i)] : CommCStarAlgebra (lp A ∞) where
  mul_comm := mul_comm
  norm_mul_self_le := CStarRing.norm_mul_self_le

end
```
