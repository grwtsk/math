# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.GrothendieckAbelian.Variant8cbc8592d3334929b569e990da824d1ed4b4bbf74814ae41880638008301d30a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f7253a96167993fdf90b22bd9ec35a1f46857b30` · SHA-256 `92e8b26a711877b6b979cfcb2837ffdbf782bacad4a30f023b317e480bdc4d4d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.GrothendieckCategory.Variantea696c7c35a6499ad4c42ba92d2620bc618590d331c2c6c8eb3dc8b84f850335","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ea696c7c35a6499ad4c42ba92d2620bc618590d331c2c6c8eb3dc8b84f850335","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.GrothendieckCategory.Variantea696c7c35a6499ad4c42ba92d2620bc618590d331c2c6c8eb3dc8b84f850335","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"ea696c7c35a6499ad4c42ba92d2620bc618590d331c2c6c8eb3dc8b84f850335","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Homology/GrothendieckAbelian.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.Abelian.GrothendieckCategory.Basic
import Mathlib.CategoryTheory.Generator.HomologicalComplex
import Mathlib.Algebra.Homology.HomologicalComplexAbelian

/-!
# Homological complexes in a Grothendieck abelian category

Let `c : ComplexShape ι` be a complex shape with no loop, and
such that `Small.{w} ι`. Then, if `C` is a Grothendieck abelian
category (with `IsGrothendieckAbelian.{w} C`), the category
`HomologicalComplex C c` is Grothendieck abelian.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.GrothendieckCategory.Variantea696c7c35a6499ad4c42ba92d2620bc618590d331c2c6c8eb3dc8b84f850335

universe w w' t v u

open CategoryTheory Limits

namespace HomologicalComplex

variable (C : Type u) [Category.{v} C] {ι : Type t} (c : ComplexShape ι)

section HasZeroMorphisms

variable [HasZeroMorphisms C]

instance locallySmall [LocallySmall.{w} C] [Small.{w} ι] :
    LocallySmall.{w} (HomologicalComplex C c) where
  hom_small K L := by
    let emb (f : K ⟶ L) (i : Shrink.{w} ι) := (equivShrink.{w} _) (f.f ((equivShrink _).symm i))
    have hemb : Function.Injective emb := fun f g h ↦ by
      ext i
      obtain ⟨i, rfl⟩ := (equivShrink.{w} _).symm.surjective i
      simpa [emb] using congr_fun h i
    apply small_of_injective hemb

instance [HasFilteredColimitsOfSize.{w, w'} C] :
    HasFilteredColimitsOfSize.{w, w'} (HomologicalComplex C c) where
  HasColimitsOfShape J _ _ := by infer_instance

instance hasExactColimitsOfShape (J : Type w) [Category.{w'} J] [HasFiniteLimits C]
    [HasColimitsOfShape J C] [HasExactColimitsOfShape J C] :
    HasExactColimitsOfShape J (HomologicalComplex C c) where
  preservesFiniteLimits :=
    ⟨fun K _ _ ↦ ⟨fun {F} ↦ ⟨fun hc ↦ ⟨isLimitOfEval _ _ (fun i ↦ by
      let e := preservesColimitNatIso (J := J) (eval C c i)
      exact (IsLimit.postcomposeHomEquiv (isoWhiskerLeft F e) _).1
        (IsLimit.ofIsoLimit
          (isLimitOfPreserves ((whiskeringRight J _ _).obj (eval C c i) ⋙ colim) hc)
          (Cones.ext (e.symm.app _) (fun k ↦ (NatIso.naturality_2 e.symm _).symm))))⟩⟩⟩⟩

instance ab5OfSize [HasFilteredColimitsOfSize.{w', w} C] [HasFiniteLimits C]
    [AB5OfSize.{w', w} C] :
    AB5OfSize.{w', w} (HomologicalComplex C c) where
  ofShape J _ _ := by infer_instance

end HasZeroMorphisms

instance isGrothendieckAbelian [Abelian C] [IsGrothendieckAbelian.{w} C]
    [c.HasNoLoop] [Small.{w} ι] :
    IsGrothendieckAbelian.{w} (HomologicalComplex C c) where
  hasSeparator := by
    have : HasCoproductsOfShape ι C :=
      hasColimitsOfShape_of_equivalence (Discrete.equivalence (equivShrink.{w} ι)).symm
    infer_instance

end HomologicalComplex
```
