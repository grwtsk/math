-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SupportDerivSubset.Variant8ebd459a0d554cceed4a08c855e5edc8a91ab62ae26520917539d7f6a5dacc13","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8ebd459a0d554cceed4a08c855e5edc8a91ab62ae26520917539d7f6a5dacc13","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.SupportDerivSubset.Variant8ebd459a0d554cceed4a08c855e5edc8a91ab62ae26520917539d7f6a5dacc13","mathematical_subject":"Analysis.Calculus","original_sha256":"8ebd459a0d554cceed4a08c855e5edc8a91ab62ae26520917539d7f6a5dacc13","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Analysis/Calculus/Deriv/Support.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Floris van Doorn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn
-/
import Mathlib.Analysis.Calculus.Deriv.Basic


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SupportDerivSubset.Variant8ebd459a0d554cceed4a08c855e5edc8a91ab62ae26520917539d7f6a5dacc13

#align_import analysis.calculus.deriv.support from "leanprover-community/mathlib"@"3bce8d800a6f2b8f63fe1e588fd76a9ff4adcebe"

/-!
# Support of the derivative of a function

In this file we prove that the (topological) support of a function includes the support of its
derivative. As a corollary, we show that the derivative of a function with compact support has
compact support.

## Keywords

derivative, support
-/


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
  rw [not_mem_tsupport_iff_eventuallyEq] at h2x
  exact nmem_support.mpr (h2x.deriv_eq.trans (deriv_const x 0))
#align support_deriv_subset support_deriv_subset

theorem HasCompactSupport.deriv (hf : HasCompactSupport f) : HasCompactSupport (deriv f) :=
  hf.mono' support_deriv_subset
#align has_compact_support.deriv HasCompactSupport.deriv

end Support

