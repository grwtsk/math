-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TaperProfileSmoothTransition.Variantfd0f4e10c04f6941ca400eaf3856e3ca4f9c8e8bc8577c996651bac33b763d69","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fd0f4e10c04f6941ca400eaf3856e3ca4f9c8e8bc8577c996651bac33b763d69","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.TaperProfileSmoothTransition.Variantfd0f4e10c04f6941ca400eaf3856e3ca4f9c8e8bc8577c996651bac33b763d69","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"fd0f4e10c04f6941ca400eaf3856e3ca4f9c8e8bc8577c996651bac33b763d69","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/gevrey-initial-20261002/Zeta23-preserved-before-pin-repair/zeta23/Zeta23/Defs/Profile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Anthropic, PBC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
SPDX-License-Identifier: Apache-2.0
-/
/-
Zeta23/Defs/Profile.lean — a concrete taper profile.
The paper: "Fix once and for all a nondecreasing function ϱ ∈ C³(ℝ) with ϱ = 0 on (−∞,0] and ϱ = 1 on
[1,∞)" [subsec:family]. Mathlib's Real.smoothTransition is such a function (even C^∞), so the
headline theorems need not quantify over ϱ.
-/
import Zeta23.Defs
import Mathlib.Analysis.SpecialFunctions.SmoothTransition


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TaperProfileSmoothTransition.Variantfd0f4e10c04f6941ca400eaf3856e3ca4f9c8e8bc8577c996651bac33b763d69

noncomputable section

namespace Zeta23

/-- Real.smoothTransition is a taper profile in the paper's sense. -/
theorem taperProfile_smoothTransition : TaperProfile Real.smoothTransition where
  contDiff := Real.smoothTransition.contDiff
  monotone := Real.smoothTransition.monotone
  eq_zero := fun _ hx => Real.smoothTransition.zero_of_nonpos hx
  eq_one := fun _ hx => Real.smoothTransition.one_of_one_le hx

/-- The canonical profile used for the headline theorems. -/
def stdProfile : ℝ → ℝ := Real.smoothTransition

theorem taperProfile_stdProfile : TaperProfile stdProfile := taperProfile_smoothTransition

/-- "such a ϱ exists". -/
theorem exists_taperProfile : ∃ ϱ : ℝ → ℝ, TaperProfile ϱ := ⟨_, taperProfile_smoothTransition⟩

end Zeta23
