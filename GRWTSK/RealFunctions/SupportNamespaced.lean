-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SupportDerivSubset.Variantbea7ae2611eb57d721e18447c11dd715777f72e90b052bebc1e1315b79809924","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bea7ae2611eb57d721e18447c11dd715777f72e90b052bebc1e1315b79809924","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.SupportDerivSubset.Variantbea7ae2611eb57d721e18447c11dd715777f72e90b052bebc1e1315b79809924","mathematical_subject":"Analysis.Calculus","original_sha256":"bea7ae2611eb57d721e18447c11dd715777f72e90b052bebc1e1315b79809924","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/Calculus/Deriv/Support.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Floris van Doorn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn
-/
import Mathlib.Analysis.Calculus.Deriv.Basic

/-!
# Support of the derivative of a function

In this file we prove that the (topological) support of a function includes the support of its
derivative. As a corollary, we show that the derivative of a function with compact support has
compact support.

## Keywords

derivative, support
-/



namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SupportDerivSubset.Variantbea7ae2611eb57d721e18447c11dd715777f72e90b052bebc1e1315b79809924

universe u v

variable {𝕜 : Type u} [NontriviallyNormedField 𝕜]
variable {E : Type v} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {f : 𝕜 → E}

/-! ### Support of derivatives -/


section Support

open Function

theorem support_deriv_subset : support (deriv f) ⊆ tsupport f := by
  intro x
  rw [← not_imp_not]
  intro h2x
  rw [notMem_tsupport_iff_eventuallyEq] at h2x
  exact notMem_support.mpr (h2x.deriv_eq.trans (deriv_const x 0))

protected theorem HasCompactSupport.deriv (hf : HasCompactSupport f) :
    HasCompactSupport (deriv f) :=
  hf.mono' support_deriv_subset

end Support
