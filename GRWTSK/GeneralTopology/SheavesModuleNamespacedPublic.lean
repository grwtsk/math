-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.SheafOfModulesEquivOver.Variant4dc7b4f786c4e61a91fe585c9b0a43513e130ccc776a024af398e67ddd30864a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4dc7b4f786c4e61a91fe585c9b0a43513e130ccc776a024af398e67ddd30864a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.SheafOfModulesEquivOver.Variant4dc7b4f786c4e61a91fe585c9b0a43513e130ccc776a024af398e67ddd30864a","mathematical_subject":"Topology.GeneralTopology","original_sha256":"4dc7b4f786c4e61a91fe585c9b0a43513e130ccc776a024af398e67ddd30864a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Sheaves/Module.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
module

public import Mathlib.Algebra.Category.ModuleCat.Sheaf.PushforwardContinuous
public import Mathlib.Topology.Sheaves.Over
public import Mathlib.Topology.Sheaves.SheafCondition.Sites

/-! # Specialized results for sheaves of modules over topological spaces -/


namespace GRWTSK.Topology.GeneralTopology.SheafOfModulesEquivOver.Variant4dc7b4f786c4e61a91fe585c9b0a43513e130ccc776a024af398e67ddd30864a

@[expose] public section

noncomputable section

open CategoryTheory

universe w v u

namespace TopologicalSpace.Opens

variable {X : TopCat.{u}} (U : Opens X) (R : X.Sheaf RingCat.{v})

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- Sheaves of modules over `R.over U` are equivalent to sheaves of modules over `R |_ U`. -/
def sheafOfModulesEquivOver :
    SheafOfModules.{w} (R.over U) ≌ SheafOfModules.{w} (U.sheafRestrict.obj R) := by
  refine SheafOfModules.pushforwardPushforwardEquivalence (eqv := U.overEquivalence.symm)
    (U.overPullbackSheafEquivOver.app _).inv (U.sheafRestrictSheafEquivOver.app _).inv rfl ?_
  ext : 2
  simp [overPullbackSheafEquivOver, sheafRestrictSheafEquivOver, eqToHom_map, overEquivalence,
    IsOpenMap.functor]

/-- `sheafOfModulesEquivOver` takes `R.over U` to `R |_ U`. -/
def sheafOfModulesEquivOverUnit (R : X.Sheaf RingCat.{u}) :
    (U.sheafOfModulesEquivOver R).functor.obj (SheafOfModules.unit.{u} _) ≅
      SheafOfModules.unit.{u} _ := .refl _

/-- `sheafOfModulesEquivOver.inverse` takes `R |_ U` to `R.over U`. -/
def sheafOfModulesEquivOverInverseUnit (R : X.Sheaf RingCat.{u}) :
    (U.sheafOfModulesEquivOver R).inverse.obj (SheafOfModules.unit.{u} _) ≅
      SheafOfModules.unit.{u} _ :=
  (U.sheafOfModulesEquivOver R).inverse.mapIso (U.sheafOfModulesEquivOverUnit R).symm ≪≫
    ((U.sheafOfModulesEquivOver R).unitIso.app _).symm

end TopologicalSpace.Opens
