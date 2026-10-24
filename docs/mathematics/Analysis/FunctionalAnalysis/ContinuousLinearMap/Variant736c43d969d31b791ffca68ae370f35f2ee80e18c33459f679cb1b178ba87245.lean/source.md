# Complete source: GRWTSK.Analysis.FunctionalAnalysis.ContinuousLinearMap.Variant736c43d969d31b791ffca68ae370f35f2ee80e18c33459f679cb1b178ba87245

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `643bb92627c768768bcee74b2e3d43f18cf05538` · SHA-256 `736c43d969d31b791ffca68ae370f35f2ee80e18c33459f679cb1b178ba87245`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jireh Loreaux. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jireh Loreaux
-/
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.Analysis.InnerProductSpace.Adjoint

/-! # `E →L[ℂ] E` as a C⋆-algebra

We place this here because, for reasons related to the import hierarchy, it should not be placed
in earlier files.
-/

#adaptation_note /-- 2025-03-29 for lean4#7717 had to add `norm_mul_self_le` field. -/
noncomputable
instance {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E] [CompleteSpace E] :
    CStarAlgebra (E →L[ℂ] E) where
  norm_mul_self_le := CStarRing.norm_mul_self_le
```
