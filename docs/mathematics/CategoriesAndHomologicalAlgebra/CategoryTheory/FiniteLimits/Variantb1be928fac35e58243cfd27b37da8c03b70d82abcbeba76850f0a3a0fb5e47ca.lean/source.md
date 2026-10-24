# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FiniteLimits.Variantb1be928fac35e58243cfd27b37da8c03b70d82abcbeba76850f0a3a0fb5e47ca

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `15c529117225c2318cee0332424986d3d9188e30` · SHA-256 `6e75553a04e116c582a59e4d88996cda91d0d93be2593e7c867b3ea0325caf87`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsClosedUnderFiniteLimits.Variant1656b7b86cff96ca7c4d8819ba61248d8ded26dc89b6c75e4f0c2142eecf8a18","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1656b7b86cff96ca7c4d8819ba61248d8ded26dc89b6c75e4f0c2142eecf8a18","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.IsClosedUnderFiniteLimits.Variant1656b7b86cff96ca7c4d8819ba61248d8ded26dc89b6c75e4f0c2142eecf8a18","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"1656b7b86cff96ca7c4d8819ba61248d8ded26dc89b6c75e4f0c2142eecf8a18","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/ObjectProperty/FiniteLimits.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.CategoryTheory.Limits.Preserves.Finite
public import Mathlib.CategoryTheory.Limits.FullSubcategory
public import Mathlib.CategoryTheory.ObjectProperty.FiniteProducts

/-!
# Properties of objects that are closed under finite limits

In this file, we introduce a typeclass `IsClosedUnderFiniteLimits`
saying that a property of objects `P : ObjectProperty C` of a category `C`
is closed under finite limits. The dual definition `IsClosedUnderFiniteLimits`
is also introduced.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsClosedUnderFiniteLimits.Variant1656b7b86cff96ca7c4d8819ba61248d8ded26dc89b6c75e4f0c2142eecf8a18

@[expose] public section

namespace CategoryTheory.ObjectProperty

open Limits

variable {C : Type*} [Category* C] (P : ObjectProperty C)

/-- A typeclass expressing that a property of objects is closed under finite limits. -/
class IsClosedUnderFiniteLimits : Prop where
  isClosedUnderLimitsOfShape (J : Type) [SmallCategory J] [FinCategory J] :
    P.IsClosedUnderLimitsOfShape J := by intros; infer_instance

namespace IsClosedUnderFiniteLimits

attribute [instance] isClosedUnderLimitsOfShape

variable [P.IsClosedUnderFiniteLimits]

instance : P.IsClosedUnderFiniteProducts where
  isClosedUnderLimitsOfShape X _ := by
    have := Fintype.ofFinite X
    infer_instance

variable [HasFiniteLimits C]

instance : HasFiniteLimits P.FullSubcategory where
  out _ _ _ := inferInstance

instance : PreservesFiniteLimits P.ι where
  preservesFiniteLimits _ _ _ := inferInstance

end IsClosedUnderFiniteLimits

/-- A typeclass expressing that a property of objects is closed under finite colimits. -/
class IsClosedUnderFiniteColimits : Prop where
  isClosedUnderColimitsOfShape (J : Type) [SmallCategory J] [FinCategory J] :
    P.IsClosedUnderColimitsOfShape J := by intros; infer_instance

namespace IsClosedUnderFiniteColimits

attribute [instance] isClosedUnderColimitsOfShape

variable [P.IsClosedUnderFiniteColimits]

instance : P.IsClosedUnderFiniteCoproducts where
  isClosedUnderColimitsOfShape X _ := by
    have := Fintype.ofFinite X
    infer_instance

variable [HasFiniteColimits C]

instance : HasFiniteColimits P.FullSubcategory where
  out _ _ _ := inferInstance

instance : PreservesFiniteColimits P.ι where
  preservesFiniteColimits _ _ _ := inferInstance

end IsClosedUnderFiniteColimits

end CategoryTheory.ObjectProperty
```
