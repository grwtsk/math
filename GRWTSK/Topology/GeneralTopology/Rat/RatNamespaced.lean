-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Rat.Variantbb7b0996909efe69aa4398727f53d374c2b4c506575c182f447d8c112126cf06","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bb7b0996909efe69aa4398727f53d374c2b4c506575c182f447d8c112126cf06","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Rat.Variantbb7b0996909efe69aa4398727f53d374c2b4c506575c182f447d8c112126cf06","mathematical_subject":"Topology.GeneralTopology","original_sha256":"bb7b0996909efe69aa4398727f53d374c2b4c506575c182f447d8c112126cf06","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Algebra/Algebra/Rat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Algebra.Algebra.Rat
import Mathlib.Topology.Algebra.ConstMulAction
import Mathlib.Topology.Algebra.Monoid.Defs

/-!
# Topological (sub)algebras over `Rat`

## Results

This is just a minimal stub for now!

-/


namespace GRWTSK.Topology.GeneralTopology.Rat.Variantbb7b0996909efe69aa4398727f53d374c2b4c506575c182f447d8c112126cf06

section DivisionRing

/-- The action induced by `DivisionRing.toRatAlgebra` is continuous. -/
instance DivisionRing.continuousConstSMul_rat {A} [DivisionRing A] [TopologicalSpace A]
    [ContinuousMul A] [CharZero A] : ContinuousConstSMul ℚ A :=
  ⟨fun r => by simpa only [Algebra.smul_def] using continuous_const.mul continuous_id⟩

end DivisionRing
