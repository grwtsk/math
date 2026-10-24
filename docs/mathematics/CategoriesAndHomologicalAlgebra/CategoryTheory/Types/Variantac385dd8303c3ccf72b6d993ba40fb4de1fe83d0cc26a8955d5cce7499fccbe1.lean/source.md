# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Types.Variantac385dd8303c3ccf72b6d993ba40fb4de1fe83d0cc26a8955d5cce7499fccbe1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2389b7ce3f3ca7cab7f42d30e00ee37bf05dab29` · SHA-256 `ac385dd8303c3ccf72b6d993ba40fb4de1fe83d0cc26a8955d5cce7499fccbe1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.CategoryTheory.Limits.FilteredColimitCommutesFiniteLimit
import Mathlib.CategoryTheory.Abelian.GrothendieckAxioms.Basic

/-!
# The category of types satisfies Grothendieck's AB5 axiom

This is of course just the well-known fact that filtered colimits commute with finite limits in
the category of types.
-/

universe v

namespace CategoryTheory.Limits

instance : AB5 (Type v) where
  ofShape _ _ _ := ⟨inferInstance⟩

end CategoryTheory.Limits
```
