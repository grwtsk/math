# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.Basic.Variant00cab6588170b476db97e04e9608ea820561ffac65f9f3b4ac0426c7b6c2862f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c8d5c7512d66bbe0d50e18fc1f2fbb00dd0c212f` · SHA-256 `5f15bc18db39d10f741ef7b03487ade1eb2825cf77466eaa15c356753abaa1fd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.HomologicalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.SSetSingularChainComplexFunctor.Variantf8cebe23cca6fa04fde3f3a76c7205773a91b2ea878d3f260e0cf57bd198ec00","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f8cebe23cca6fa04fde3f3a76c7205773a91b2ea878d3f260e0cf57bd198ec00","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.HomologicalAlgebra.SourceCorpus.SSetSingularChainComplexFunctor.Variantf8cebe23cca6fa04fde3f3a76c7205773a91b2ea878d3f260e0cf57bd198ec00","mathematical_subject":"Algebra.HomologicalAlgebra","original_sha256":"f8cebe23cca6fa04fde3f3a76c7205773a91b2ea878d3f260e0cf57bd198ec00","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/AlgebraicTopology/SingularHomology/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
import Mathlib.Algebra.Homology.AlternatingConst
import Mathlib.AlgebraicTopology.SingularSet

/-!
# Singular homology

In this file, we define the singular chain complex and singular homology of a topological space.
We also calculate the homology of a totally disconnected space as an example.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.SSetSingularChainComplexFunctor.Variantf8cebe23cca6fa04fde3f3a76c7205773a91b2ea878d3f260e0cf57bd198ec00

noncomputable section

namespace AlgebraicTopology

open CategoryTheory

universe w v u

variable (C : Type u) [Category.{v} C] [Limits.HasCoproducts.{0} C]
variable [Preadditive C] [CategoryWithHomology C] (n : ℕ)

/--
The singular chain complex associated to a simplicial set, with coefficients in `X : C`.
One can recover the ordinary singular chain complex when `C := Ab` and `X := ℤ`.
-/
def SSet.singularChainComplexFunctor [Limits.HasCoproducts.{w} C] :
    C ⥤ SSet.{w} ⥤ ChainComplex C ℕ :=
  (Functor.postcompose₂.obj (AlgebraicTopology.alternatingFaceMapComplex _)).obj
    (Limits.sigmaConst ⋙ SimplicialObject.whiskering _ _)

/-- The singular chain complex functor with coefficients in `C`. -/
def singularChainComplexFunctor :
    C ⥤ TopCat.{0} ⥤ ChainComplex C ℕ :=
  SSet.singularChainComplexFunctor.{0} C ⋙ (whiskeringLeft _ _ _).obj TopCat.toSSet

/-- The `n`-th singular homology functor with coefficients in `C`. -/
def singularHomologyFunctor : C ⥤ TopCat.{0} ⥤ C :=
  singularChainComplexFunctor C ⋙
    (whiskeringRight _ _ _).obj (HomologicalComplex.homologyFunctor _ _ n)

section TotallyDisconnectedSpace

variable (R : C) (X : TopCat.{0}) [TotallyDisconnectedSpace X]

/-- If `X` is totally disconnected,
its singular chain complex is given by `R[X] ←0- R[X] ←𝟙- R[X] ←0- R[X] ⋯`,
where `R[X]` is the coproduct of copies of `R` indexed by elements of `X`. -/
noncomputable
def singularChainComplexFunctorIsoOfTotallyDisconnectedSpace :
    ((singularChainComplexFunctor C).obj R).obj X ≅
      (ChainComplex.alternatingConst.obj (∐ fun _ : X ↦ R)) :=
  (AlgebraicTopology.alternatingFaceMapComplex _).mapIso
    (((SimplicialObject.whiskering _ _).obj _).mapIso
    (TopCat.toSSetIsoConst X) ≪≫ Functor.constComp _ _ _) ≪≫
    AlgebraicTopology.alternatingFaceMapComplexConst.app _

omit [CategoryWithHomology C] in
lemma singularChainComplexFunctor_exactAt_of_totallyDisconnectedSpace [Limits.HasZeroObject C]
    (hn : n ≠ 0) :
    (((singularChainComplexFunctor C).obj R).obj X).ExactAt n :=
  .of_iso (ChainComplex.alternatingConst_exactAt _ _ hn)
    (singularChainComplexFunctorIsoOfTotallyDisconnectedSpace C R X).symm

lemma isZero_singularHomologyFunctor_of_totallyDisconnectedSpace (hn : n ≠ 0) :
    Limits.IsZero (((singularHomologyFunctor C n).obj R).obj X) :=
  have : Limits.HasZeroObject C := ⟨_, Limits.initialIsInitial.isZero⟩
  (singularChainComplexFunctor_exactAt_of_totallyDisconnectedSpace C n R X hn).isZero_homology

/-- The zeroth singular homology of a totally disconnected space is the
free `R`-module generated by elements of `X`. -/
noncomputable
def singularHomologyFunctorZeroOfTotallyDisconnectedSpace :
    ((singularHomologyFunctor C 0).obj R).obj X ≅ ∐ fun _ : X ↦ R :=
  have : Limits.HasZeroObject C := ⟨_, Limits.initialIsInitial.isZero⟩
  (HomologicalComplex.homologyFunctor _ _ 0).mapIso
      (singularChainComplexFunctorIsoOfTotallyDisconnectedSpace C R X) ≪≫
    ChainComplex.alternatingConstHomologyZero _

end TotallyDisconnectedSpace

end AlgebraicTopology
```
