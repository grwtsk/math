# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Subdivision.Variant1dd02cbee58a43339e7cf5c33a079139c0b86b1aa281ce6a20a3b32a2882a060

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3a566e01f4f1f6d1100f125ba70cb49604a58979` · SHA-256 `060a474a2480f6c3ea8ac06d504e85149ba03d21128bc17f43831dbdc7095b0b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SimplexCategorySd.Variantda8225a57057726ece6872186bed384f40a33330eb89e06c2248280ac4ba8637","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"da8225a57057726ece6872186bed384f40a33330eb89e06c2248280ac4ba8637","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.SimplexCategorySd.Variantda8225a57057726ece6872186bed384f40a33330eb89e06c2248280ac4ba8637","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"da8225a57057726ece6872186bed384f40a33330eb89e06c2248280ac4ba8637","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/AlgebraicTopology/SimplicialSet/Subdivision.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.AlgebraicTopology.SimplicialSet.StdSimplex
public import Mathlib.CategoryTheory.Limits.Presheaf
public import Mathlib.Order.NonemptyFiniteChains

/-!
# The subdivision functors

In this file, we define the subdivision functor `sd : SSet ⥤ SSet`
and its right adjoint `ex`.

## TODO (@joelriou)
* define another functor `SSet.B : SSet ⥤ SSet` by sending `X` to
the nerve of the partially ordered type `X.N` of nondegenerate
simplices in `X`, define a natural transformation `sd ⟶ B`,
and show that on suitable simplicial sets `X`, this natural
transformation is an isomorphism.

## References
* [J. F. Jardine, *Simplicial approximation*][jardine-2004]

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SimplexCategorySd.Variantda8225a57057726ece6872186bed384f40a33330eb89e06c2248280ac4ba8637

@[expose] public section

universe v u

open CategoryTheory

/-- The functor `SimplexCategory ⥤ SSet` which sends `⦋n⦌` to the nerve of the
partially ordered type of nonempty finite chains in `{0, ..., n}` (ulifted to `Type u`).
Vertices in `SimplexCategory.sd.obj ⦋n⦌` identify to nonempty subsets of `{0, ..., n}`. -/
noncomputable def SimplexCategory.sd : SimplexCategory ⥤ SSet.{u} :=
  toPartOrd ⋙ PartOrd.nonemptyFiniteChainsFunctor ⋙ PartOrd.nerveFunctor

namespace SSet

/-- The subdivision functor on simplicial sets. -/
noncomputable def sd : SSet.{u} ⥤ SSet.{u} :=
  stdSimplex.leftKanExtension SimplexCategory.sd

/-- The right adjoint to the subdivision functor on simplicial sets. -/
noncomputable def ex : SSet.{u} ⥤ SSet.{u} :=
  Presheaf.restrictedULiftYoneda.{0} SimplexCategory.sd

set_option backward.isDefEq.respectTransparency false in
/-- The adjunction between the subdivision functor `sd` and `ex`. -/
noncomputable def sdExAdjunction : sd.{u} ⊣ ex :=
  Presheaf.uliftYonedaAdjunction.{0}
    (SSet.stdSimplex.{u}.leftKanExtension SimplexCategory.sd)
    (SSet.stdSimplex.{u}.leftKanExtensionUnit SimplexCategory.sd)

instance : sd.{u}.IsLeftAdjoint := sdExAdjunction.isLeftAdjoint

instance : ex.{u}.IsRightAdjoint := sdExAdjunction.isRightAdjoint

namespace stdSimplex

/-- The natural isomorphism `stdSimplex ⋙ sd ≅ SimplexCategory.sd`. -/
noncomputable def sdIso : stdSimplex.{u} ⋙ sd ≅ SimplexCategory.sd :=
  Presheaf.isExtensionAlongULiftYoneda _

end stdSimplex

instance : sd.{u}.IsLeftKanExtension stdSimplex.sdIso.inv :=
  inferInstanceAs (Functor.IsLeftKanExtension _
    (SSet.stdSimplex.leftKanExtensionUnit SimplexCategory.sd.{u}))

end SSet
```
