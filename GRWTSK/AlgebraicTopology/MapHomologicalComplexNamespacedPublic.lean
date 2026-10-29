-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ChainComplexFunctorObjCompMapIso.Variante62e024c4b567b8492fbba3a30a58c0cf5559ca1d3cd1ae555326c0e22ee023e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e62e024c4b567b8492fbba3a30a58c0cf5559ca1d3cd1ae555326c0e22ee023e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.ChainComplexFunctorObjCompMapIso.Variante62e024c4b567b8492fbba3a30a58c0cf5559ca1d3cd1ae555326c0e22ee023e","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"e62e024c4b567b8492fbba3a30a58c0cf5559ca1d3cd1ae555326c0e22ee023e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/AlgebraicTopology/SimplicialSet/Homology/MapHomologicalComplex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.AlgebraicTopology.SimplicialSet.Homology.Basic
public import Mathlib.CategoryTheory.Limits.Preserves.SigmaConst

/-!
# Extension of scalars

If `X` is a simplicial set, `R₁ →+* R₂` is a morphism of commutative rings,
and `M₁` is a `R₁`-module, then the chain complex of `R₂`-modules of `X` with
coefficients in `R₂ ⊗[R₁] M₁` identifies to the extensions of scalars of the
chain complex of `R₁`-modules of `X` with coefficients in `M₁`. In this file,
we obtain a formulation of this result where the extension of scalars
functor `ModuleCat R₁ ⥤ ModuleCat R₂` is replaced by an arbitrary functor
`F : C ⥤ D` which commutes with coproducts.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ChainComplexFunctorObjCompMapIso.Variante62e024c4b567b8492fbba3a30a58c0cf5559ca1d3cd1ae555326c0e22ee023e

@[expose] public section

universe w v v' u u'

open CategoryTheory Limits AlgebraicTopology

open scoped Simplicial

namespace SSet

variable {C : Type u} {D : Type u'} [Category.{v} C] [Category.{v'} D]
  [Preadditive C] [Preadditive D] [HasCoproducts.{w} C] [HasCoproducts.{w} D]
  (X : SSet.{w}) (F : C ⥤ D) [F.Additive]
  [∀ (T : Type w), PreservesColimitsOfShape (Discrete T) F] (R : C)

open SimplicialObject Functor in
/-- The chain complex functor commutes with the "extension of scalars".
More precisely, if `F : C ⥤ D` is a functor which commutes with arbitrary coproducts,
`R : C` and `X : SSet`, then the chain complex of `X` with coefficients
in `F.obj R` is obtained by applying `F` to the chain complex of `X`
with coefficients in `R`. -/
noncomputable def chainComplexFunctorObjCompMapIso :
    (chainComplexFunctor C).obj R ⋙ F.mapHomologicalComplex (.down ℕ) ≅
    (chainComplexFunctor D).obj (F.obj R) :=
  calc
    _ ≅ (whiskering ..).obj (sigmaConst.obj R) ⋙
      alternatingFaceMapComplex C ⋙ F.mapHomologicalComplex _ := associator ..
    _ ≅ (whiskering ..).obj (sigmaConst.obj R) ⋙
        (whiskering ..).obj F ⋙ alternatingFaceMapComplex D :=
      isoWhiskerLeft _ (alternatingFaceMapComplexCompMapHomologicalComplexIso _)
    _ ≅ ((whiskering ..).obj (sigmaConst.obj R) ⋙
        (whiskering ..).obj F) ⋙ alternatingFaceMapComplex D :=
      (associator ..).symm
    _ ≅ (whiskering ..).obj (sigmaConst.obj R ⋙ F) ⋙ alternatingFaceMapComplex D :=
      isoWhiskerRight (whiskeringRightObjCompIso ..) _
    _ ≅ (whiskering ..).obj (sigmaConst.obj (F.obj R)) ⋙ alternatingFaceMapComplex D :=
      isoWhiskerRight ((whiskering ..).mapIso (sigmaConstObjCompIso F R)) _

variable {R} in
@[reassoc (attr := simp)]
lemma map_ιChainComplex_chainComplexFunctorObjCompMapIso_hom_app_f
    {n : ℕ} (x : X _⦋n⦌) :
    dsimp% F.map (X.ιChainComplex x) ≫
      ((chainComplexFunctorObjCompMapIso F R).hom.app X).f n =
    X.ιChainComplex x := by
  simp [chainComplexFunctorObjCompMapIso, ιChainComplex,
    SSet.chainComplexFunctor]

end SSet
