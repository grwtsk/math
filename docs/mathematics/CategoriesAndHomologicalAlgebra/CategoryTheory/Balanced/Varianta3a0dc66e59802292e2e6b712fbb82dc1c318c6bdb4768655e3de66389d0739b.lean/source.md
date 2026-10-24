# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Balanced.Varianta3a0dc66e59802292e2e6b712fbb82dc1c318c6bdb4768655e3de66389d0739b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0838d8f28cb47d424f778747a12fdfffcd8a83f2` · SHA-256 `2d83d859391ca99a114ee7618f7bc597a347223513b0a671d6419a96aba9862f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorBalancedOfPreserves.Variantc1c89216927d8051a85a2ede2ee962c418f7fe16cfb25e0faecc74bfd724461e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c1c89216927d8051a85a2ede2ee962c418f7fe16cfb25e0faecc74bfd724461e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.FunctorBalancedOfPreserves.Variantc1c89216927d8051a85a2ede2ee962c418f7fe16cfb25e0faecc74bfd724461e","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"c1c89216927d8051a85a2ede2ee962c418f7fe16cfb25e0faecc74bfd724461e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Functor/ReflectsIso/Balanced.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorBalancedOfPreserves.Variantc1c89216927d8051a85a2ede2ee962c418f7fe16cfb25e0faecc74bfd724461e

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
