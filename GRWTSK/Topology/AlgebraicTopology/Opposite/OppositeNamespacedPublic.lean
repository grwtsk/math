-- corpus-organization-transform:v1
-- Mathematical subject: Topology.AlgebraicTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.AlgebraicTopology.ModelCategory.Variant9f80e3eb02058d69168ded5069fef5616bf32b6ff2073ae27d63d7df4409dc82","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9f80e3eb02058d69168ded5069fef5616bf32b6ff2073ae27d63d7df4409dc82","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.ModelCategory.Variant9f80e3eb02058d69168ded5069fef5616bf32b6ff2073ae27d63d7df4409dc82","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"9f80e3eb02058d69168ded5069fef5616bf32b6ff2073ae27d63d7df4409dc82","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/AlgebraicTopology/ModelCategory/Opposite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.AlgebraicTopology.ModelCategory.Basic

/-!
# The opposite of a model category structure

-/


namespace GRWTSK.Topology.AlgebraicTopology.ModelCategory.Variant9f80e3eb02058d69168ded5069fef5616bf32b6ff2073ae27d63d7df4409dc82

public section

universe v u

open CategoryTheory

namespace HomotopicalAlgebra

variable (C : Type u) [Category.{v} C] [ModelCategory C]

instance [(weakEquivalences C).HasTwoOutOfThreeProperty] :
    (weakEquivalences Cᵒᵖ).HasTwoOutOfThreeProperty := by
  rw [weakEquivalences_op]
  infer_instance

instance [(weakEquivalences C).IsStableUnderRetracts] :
    (weakEquivalences Cᵒᵖ).IsStableUnderRetracts := by
  rw [weakEquivalences_op]
  infer_instance

instance [(cofibrations C).IsStableUnderRetracts] :
    (fibrations Cᵒᵖ).IsStableUnderRetracts := by
  rw [fibrations_op]
  infer_instance

instance [(fibrations C).IsStableUnderRetracts] :
    (cofibrations Cᵒᵖ).IsStableUnderRetracts := by
  rw [cofibrations_op]
  infer_instance

instance [(trivialCofibrations C).HasFactorization (fibrations C)] :
    (cofibrations Cᵒᵖ).HasFactorization (trivialFibrations Cᵒᵖ) := by
  rw [cofibrations_op, trivialFibrations_op]
  infer_instance

instance [(cofibrations C).HasFactorization (trivialFibrations C)] :
    (trivialCofibrations Cᵒᵖ).HasFactorization (fibrations Cᵒᵖ) := by
  rw [trivialCofibrations_op, fibrations_op]
  infer_instance

instance : ModelCategory Cᵒᵖ where
  cm4a i p _ _ _ := (HasLiftingProperty.iff_unop i p).2 inferInstance
  cm4b i p _ _ _ := (HasLiftingProperty.iff_unop i p).2 inferInstance

end HomotopicalAlgebra
