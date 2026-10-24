-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.QuasiIsoOfRetract.Variante8fa1eac79dbe46ca7388678a6953773264c7f6d28afb12a51839dd5e34d3f27","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e8fa1eac79dbe46ca7388678a6953773264c7f6d28afb12a51839dd5e34d3f27","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.QuasiIsoOfRetract.Variante8fa1eac79dbe46ca7388678a6953773264c7f6d28afb12a51839dd5e34d3f27","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"e8fa1eac79dbe46ca7388678a6953773264c7f6d28afb12a51839dd5e34d3f27","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Homology/ShortComplex/Retract.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.Algebra.Homology.ShortComplex.QuasiIso
public import Mathlib.CategoryTheory.MorphismProperty.Retract

/-!
# Quasi-isomorphisms of short complexes are stable under retracts

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.QuasiIsoOfRetract.Variante8fa1eac79dbe46ca7388678a6953773264c7f6d28afb12a51839dd5e34d3f27

public section

namespace CategoryTheory

open Limits

namespace ShortComplex

variable {C : Type*} [Category* C] [HasZeroMorphisms C]
  {S₁ T₁ S₂ T₂ : ShortComplex C}
  [S₁.HasHomology] [T₁.HasHomology] [S₂.HasHomology] [T₂.HasHomology]
  {f₁ : S₁ ⟶ T₁} {f₂ : S₂ ⟶ T₂}

set_option backward.defeqAttrib.useBackward true in
lemma quasiIso_of_retract (h : RetractArrow f₁ f₂) [hf₂ : QuasiIso f₂] :
    QuasiIso f₁ := by
  rw [quasiIso_iff] at hf₂ ⊢
  have h : RetractArrow (homologyMap f₁) (homologyMap f₂) :=
    { i := Arrow.homMk (u := homologyMap (show S₁ ⟶ S₂ from h.i.left))
        (v := homologyMap (show T₁ ⟶ T₂ from h.i.right)) (by simp [← homologyMap_comp])
      r := Arrow.homMk (u := homologyMap (show S₂ ⟶ S₁ from h.r.left))
        (v := homologyMap (show T₂ ⟶ T₁ from h.r.right)) (by simp [← homologyMap_comp])
      retract := by ext <;> simp [← homologyMap_comp] }
  exact (MorphismProperty.isomorphisms C).of_retract h hf₂

end ShortComplex

end CategoryTheory
