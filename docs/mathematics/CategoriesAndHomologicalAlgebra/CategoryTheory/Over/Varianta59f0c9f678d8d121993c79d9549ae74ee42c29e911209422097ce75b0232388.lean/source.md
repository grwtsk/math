# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Over.Varianta59f0c9f678d8d121993c79d9549ae74ee42c29e911209422097ce75b0232388

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `49d4340b27ef0c02a4aaa6eb7f1f11c762ffa474` · SHA-256 `a59f0c9f678d8d121993c79d9549ae74ee42c29e911209422097ce75b0232388`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Dénes Pápai. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dénes Pápai
-/
module

public import Mathlib.CategoryTheory.Adhesive.Basic
public import Mathlib.CategoryTheory.Limits.Constructions.Over.Connected

/-! # Adhesive structure on slice categories

The slice category `Over B` inherits the property of being adhesive from the
base category, and dually so does the coslice category `Under B`.
-/

public section

namespace CategoryTheory

open Limits

variable {C : Type*} [Category* C]

/-- Slices of adhesive categories are adhesive. See [adhesive2004], Proposition 8 (ii). -/
instance adhesive_over [Adhesive C] [HasPullbacks C] [HasPushouts C] (B : C) :
    Adhesive (Over B) :=
  adhesive_of_preserves_and_reflects_isomorphism (Over.forget B)

/-- Coslices of adhesive categories are adhesive. See [adhesive2004], Proposition 8 (ii). -/
instance adhesive_under [Adhesive C] [HasPullbacks C] [HasPushouts C] (B : C) :
    Adhesive (Under B) :=
  adhesive_of_preserves_and_reflects_isomorphism (Under.forget B)

end CategoryTheory
```
