-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Colimits.Variant672f2378306674cffa2cf2c6a01cc3f56e476144875bb9dd6f2b80dcc792abd0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"672f2378306674cffa2cf2c6a01cc3f56e476144875bb9dd6f2b80dcc792abd0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Colimits.Variant672f2378306674cffa2cf2c6a01cc3f56e476144875bb9dd6f2b80dcc792abd0","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"672f2378306674cffa2cf2c6a01cc3f56e476144875bb9dd6f2b80dcc792abd0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Category/FGModuleCat/Abelian.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Sophie Morel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sophie Morel
-/
module

public import Mathlib.Algebra.Category.FGModuleCat.Colimits
public import Mathlib.Algebra.Category.FGModuleCat.Limits
public import Mathlib.Algebra.Category.ModuleCat.Abelian
public import Mathlib.CategoryTheory.Limits.Preserves.Shapes.AbelianImages

/-!
# `FGModuleCat K` is an abelian category.

-/


namespace GRWTSK.Algebra.UniversalAlgebra.Colimits.Variant672f2378306674cffa2cf2c6a01cc3f56e476144875bb9dd6f2b80dcc792abd0

public section

noncomputable section

universe v u

open CategoryTheory

namespace FGModuleCat

variable {k : Type u} [Ring k] [IsNoetherianRing k]

instance {X Y : FGModuleCat k} (f : X ⟶ Y) : IsIso (Abelian.coimageImageComparison f) :=
  have := IsIso.of_isIso_fac_right (Abelian.PreservesCoimage.hom_coimageImageComparison
      (forget₂ (FGModuleCat k) (ModuleCat k)) f).symm
  Functor.FullyFaithful.isIso_of_isIso_map (ModuleCat.isFG k).fullyFaithfulι _

instance : Abelian (FGModuleCat k) := Abelian.ofCoimageImageComparisonIsIso

end FGModuleCat
