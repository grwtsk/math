# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Balanced.Variantc1c89216927d8051a85a2ede2ee962c418f7fe16cfb25e0faecc74bfd724461e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `23f73e42b4b4758476174f70ee57d19b9790660a` · SHA-256 `c1c89216927d8051a85a2ede2ee962c418f7fe16cfb25e0faecc74bfd724461e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Robin Carlier. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Bhavik Mehta, Robin Carlier
-/
import Mathlib.CategoryTheory.Functor.ReflectsIso.Basic
import Mathlib.CategoryTheory.Balanced
import Mathlib.CategoryTheory.Functor.EpiMono

/-!
# Balanced categories and functors reflecting isomorphisms

If a category is `C`, and a functor out of `C` reflects epimorphisms and monomorphsims,
then the functor reflects isomorphisms.
Furthermore, categories that admits a functor that `ReflectsIsomorphisms`, `PreservesEpimorphisms`
and `PreservesMonomorphisms` are balanced.

-/

open CategoryTheory CategoryTheory.Functor

namespace CategoryTheory

variable {C : Type*} [Category C]
  {D : Type*} [Category D]

instance (priority := 100) reflectsIsomorphisms_of_reflectsMonomorphisms_of_reflectsEpimorphisms
    [Balanced C] (F : C ⥤ D) [ReflectsMonomorphisms F] [ReflectsEpimorphisms F] :
    F.ReflectsIsomorphisms where
  reflects f hf := by
    haveI : Epi f := epi_of_epi_map F inferInstance
    haveI : Mono f := mono_of_mono_map F inferInstance
    exact isIso_of_mono_of_epi f

lemma Functor.balanced_of_preserves (F : C ⥤ D)
    [F.ReflectsIsomorphisms] [F.PreservesEpimorphisms] [F.PreservesMonomorphisms] [Balanced D] :
    Balanced C where
  isIso_of_mono_of_epi f _ _ := by
    rw [← isIso_iff_of_reflects_iso (F := F)]
    exact isIso_of_mono_of_epi _

end CategoryTheory
```
