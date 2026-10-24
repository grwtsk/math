-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ParamsGevreyPhiBound.Variant41c350671c4b2d1f8353001262680edd7f7f71fdc30f69eb280ed41073a0ba2b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"41c350671c4b2d1f8353001262680edd7f7f71fdc30f69eb280ed41073a0ba2b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ParamsGevreyPhiBound.Variant41c350671c4b2d1f8353001262680edd7f7f71fdc30f69eb280ed41073a0ba2b","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"41c350671c4b2d1f8353001262680edd7f7f71fdc30f69eb280ed41073a0ba2b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/gevrey-initial-20261002/Zeta23-preserved-before-pin-repair/zeta23/Zeta23/Taper/GevreyPhi.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Anthropic, PBC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
SPDX-License-Identifier: Apache-2.0
-/
/-
Zeta23/Taper/GevreyPhi.lean — the L¹ bounds on the iterated derivatives of
the concrete taper φ(u) = ϱ((L/2−|u|)/w) that the Gevrey tail lemma consumes.
-/
import Zeta23.Defs
import Mathlib.Analysis.Calculus.IteratedDeriv.Defs


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ParamsGevreyPhiBound.Variant41c350671c4b2d1f8353001262680edd7f7f71fdc30f69eb280ed41073a0ba2b

noncomputable section

namespace Zeta23

/-- The Gevrey taper bound, as a hypothesis on (P, T): φ = P.phi T (as a ℂ-valued function)
is C^∞ and ‖φ^{(k)}‖_{L¹} ≤ 2B·w·(A/w)^k·k^{sk} for all k ≥ 1  (= 2B w^{1−k} A^k k^{sk}). -/
structure Params.GevreyPhiBound (P : Params) (T : ℝ) (s A B : ℝ) : Prop where
  one_lt : 1 < s
  A_pos : 0 < A
  B_pos : 0 < B
  smooth : ContDiff ℝ ((⊤ : ℕ∞) : WithTop ℕ∞) (fun u : ℝ => (P.phi T u : ℂ))
  bound : ∀ k : ℕ, 1 ≤ k →
    ∫ u, ‖iteratedDeriv k (fun u : ℝ => (P.phi T u : ℂ)) u‖ ≤ 2 * B * P.w * (A / P.w) ^ k * (k : ℝ) ^ (s * k)

end Zeta23
