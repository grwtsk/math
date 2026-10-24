# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CategoryTheory.Variant3c5ad310a9f32bf8f32171f0e91796735d6e5079916611c5ddab116bc4faa0d5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `acadd1e5e52dc3ad62330e584ce8d58aa20a5a20` · SHA-256 `e47350a58b316fe0baffb24d852abe96ba7bcbd26e396ed963d08fc49c930dc8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LTensorShortComplexExact.Variantb615b57388bd2f7b0be10dd0a6d2df9a9e5018e25bb20dcaac5b56978a4ad19d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b615b57388bd2f7b0be10dd0a6d2df9a9e5018e25bb20dcaac5b56978a4ad19d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.LTensorShortComplexExact.Variantb615b57388bd2f7b0be10dd0a6d2df9a9e5018e25bb20dcaac5b56978a4ad19d","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"b615b57388bd2f7b0be10dd0a6d2df9a9e5018e25bb20dcaac5b56978a4ad19d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Flat/CategoryTheory.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jujian Zhang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jujian Zhang
-/
import Mathlib.RingTheory.Flat.Basic
import Mathlib.Algebra.Homology.ShortComplex.ModuleCat
import Mathlib.Algebra.Category.ModuleCat.Monoidal.Basic

/-!
# Tensoring with a flat module is an exact functor

In this file we prove that tensoring with a flat module is an exact functor.

## Main results

- `Module.Flat.iff_lTensor_preserves_shortComplex_exact`: an `R`-module `M` is flat if and only if
  for every exact sequence `A ⟶ B ⟶ C`, `M ⊗ A ⟶ M ⊗ B ⟶ M ⊗ C` is also exact.

- `Module.Flat.iff_rTensor_preserves_shortComplex_exact`: an `R`-module `M` is flat if and only if
  for every short exact sequence `A ⟶ B ⟶ C`, `A ⊗ M ⟶ B ⊗ M ⟶ C ⊗ M` is also exact.

## TODO

- Prove that tensoring with a flat module is an exact functor in the sense that it preserves both
  finite limits and colimits.
- Relate flatness with `Tor`

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LTensorShortComplexExact.Variantb615b57388bd2f7b0be10dd0a6d2df9a9e5018e25bb20dcaac5b56978a4ad19d

universe u

open CategoryTheory MonoidalCategory ShortComplex.ShortExact

namespace Module.Flat

variable {R : Type u} [CommRing R] (M : ModuleCat.{u} R)

lemma lTensor_shortComplex_exact [Flat R M] (C : ShortComplex <| ModuleCat R) (hC : C.Exact) :
    C.map (tensorLeft M) |>.Exact := by
  rw [moduleCat_exact_iff_function_exact] at hC ⊢
  exact lTensor_exact M hC

lemma rTensor_shortComplex_exact [Flat R M] (C : ShortComplex <| ModuleCat R) (hC : C.Exact) :
    C.map (tensorRight M) |>.Exact := by
  rw [moduleCat_exact_iff_function_exact] at hC ⊢
  exact rTensor_exact M hC

lemma iff_lTensor_preserves_shortComplex_exact :
    Flat R M ↔
    ∀ (C : ShortComplex <| ModuleCat R) (_ : C.Exact), (C.map (tensorLeft M) |>.Exact) :=
  ⟨fun _ _ ↦ lTensor_shortComplex_exact _ _, fun H ↦ iff_lTensor_exact.2
    fun _ _ _ _ _ _ _ _ _ f g h ↦
      moduleCat_exact_iff_function_exact _ |>.1 <|
      H (.mk (ModuleCat.ofHom f) (ModuleCat.ofHom g)
        (ModuleCat.hom_ext (DFunLike.ext _ _ h.apply_apply_eq_zero)))
          (moduleCat_exact_iff_function_exact _ |>.2 h)⟩

lemma iff_rTensor_preserves_shortComplex_exact :
    Flat R M ↔
    ∀ (C : ShortComplex <| ModuleCat R) (_ : C.Exact), (C.map (tensorRight M) |>.Exact) :=
  ⟨fun _ _ ↦ rTensor_shortComplex_exact _ _, fun H ↦ iff_rTensor_exact.2
    fun _ _ _ _ _ _ _ _ _ f g h ↦
      moduleCat_exact_iff_function_exact _ |>.1 <|
      H (.mk (ModuleCat.ofHom f) (ModuleCat.ofHom g)
        (ModuleCat.hom_ext (DFunLike.ext _ _ h.apply_apply_eq_zero)))
          (moduleCat_exact_iff_function_exact _ |>.2 h)⟩

end Module.Flat
```
