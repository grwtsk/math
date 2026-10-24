# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Countable.Variant3e4a2c3fb5878b41308ce47b46783235003f0ea1ff500431cb69a68c7725304d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `78e9764a4351ade1971e4e718a844d2b6d28850a` · SHA-256 `3acfb7c505171051dc7a4a590f8636ae50891be33e0bb8819b8fb7ed02e4c920`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Countable.Variante93b434f60a7f39131dcaf47100114b6e4fb590b6b08a07c31d9658b375e057a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e93b434f60a7f39131dcaf47100114b6e4fb590b6b08a07c31d9658b375e057a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Countable.Variante93b434f60a7f39131dcaf47100114b6e4fb590b6b08a07c31d9658b375e057a","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"e93b434f60a7f39131dcaf47100114b6e4fb590b6b08a07c31d9658b375e057a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Wanted/CategoryTheory/Limits/Shapes/Countable.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
module

public import Mathlib.CategoryTheory.Limits.Shapes.Countable


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Countable.Variante93b434f60a7f39131dcaf47100114b6e4fb590b6b08a07c31d9658b375e057a

open CategoryTheory

variable {C : Type*} [Category* C]

namespace CategoryTheory.Limits

namespace IsCofiltered

@[stacks 0032]
proof_wanted preorder_of_cofiltered (J : Type*) [Category* J] [IsCofiltered J] :
    ∃ (I : Type*) (_ : Preorder I) (_ : IsCofiltered I) (F : I ⥤ J), F.Initial

/--
The proof of `preorder_of_cofiltered` should give a countable `I` in the case that `J` is a
countable category.
-/
proof_wanted preorder_of_cofiltered_countable
    (J : Type*) [SmallCategory J] [IsCofiltered J] [CountableCategory J] :
    ∃ (I : Type) (_ : Preorder I) (_ : Countable I) (_ : IsCofiltered I) (F : I ⥤ J), F.Initial

/--
Put together `sequentialFunctor_initial` and `preorder_of_cofiltered_countable`.
-/
proof_wanted hasCofilteredCountableLimits_of_hasSequentialLimits [HasLimitsOfShape ℕᵒᵖ C] :
    ∀ (J : Type) [SmallCategory J] [IsCofiltered J] [CountableCategory J], HasLimitsOfShape J C

/--
This is the countable version of `CategoryTheory.Limits.has_limits_of_finite_and_cofiltered`, given
all of the above.
-/
proof_wanted hasCountableLimits_of_hasFiniteLimits_and_hasSequentialLimits [HasFiniteLimits C]
  [HasLimitsOfShape ℕᵒᵖ C] : HasCountableLimits C

/--
For this we need to dualize `sequentialFunctor_initial` (in
`Mathlib/CategoryTheory/Limits/Shapes/Countable.lean`) and the `proof_wanted` statements above.
-/
proof_wanted hasCountableColimits_of_hasFiniteColimits_and_hasSequentialColimits
  [HasFiniteColimits C] [HasLimitsOfShape ℕ C] : HasCountableColimits C

end IsCofiltered

end CategoryTheory.Limits
```
