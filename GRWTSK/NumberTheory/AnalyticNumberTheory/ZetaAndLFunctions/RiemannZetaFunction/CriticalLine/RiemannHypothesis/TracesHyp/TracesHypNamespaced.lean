-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TracesBoundsDChi.Variant73ddb8d30ecc9219e4c6f208469cdca87a6761c07590d39b0a5133b3509ea0b4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"73ddb8d30ecc9219e4c6f208469cdca87a6761c07590d39b0a5133b3509ea0b4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.TracesBoundsDChi.Variant73ddb8d30ecc9219e4c6f208469cdca87a6761c07590d39b0a5133b3509ea0b4","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"73ddb8d30ecc9219e4c6f208469cdca87a6761c07590d39b0a5133b3509ea0b4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/gevrey-initial-20261002/Zeta23-preserved-before-pin-repair/zeta23/Zeta23/ThmDE/TracesHyp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Anthropic, PBC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
SPDX-License-Identifier: Apache-2.0
-/
/-
Zeta23/ThmDE/TracesHyp.lean — [thm:E], last sentence: "Theorem D holds likewise."
The D-trace interface for a Dirichlet character: Zeta23.ThmD.TracesBoundsD
(Zeta23/ThmD/AssemblyD.lean) with λ₁ ↦ λ_{1,χ} = L/ℓ_{1,χ} (Zeta23.ThmE.lam1q).  Produced by
Zeta23/ThmDE/Traces.lean (FactsDChi ⇒ this), consumed by Zeta23/ThmDE/Endgame.lean.
-/
import Zeta23.ThmD.AssemblyD
import Zeta23.ThmE.TracesHypChi


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TracesBoundsDChi.Variant73ddb8d30ecc9219e4c6f208469cdca87a6761c07590d39b0a5133b3509ea0b4

noncomputable section

open Real

namespace Zeta23
namespace ThmDE

open ThmD ThmE

/-- **[eq:ratio-general] for L(s,χ)** with the Montgomery–Taylor window moments (a, b, J) as data:
tr1 = [eq:tr1] (window-general prop:trace); ratio/frhat carry the main term
cRatio(λ_{1,χ}; a, b, J)·N and its hat-units inverse.  Constants may depend on q. -/
structure TracesBoundsDChi (P : Params) (q : ℕ) (aT bT JT trG trG2 Ncnt : ℝ → ℝ) : Prop where
  tr1 : EvBound (fun T => trG T - aT T * P.L T * Ncnt T) (fun T => P.L T * Real.sqrt (P.X T))
  ratio : EvBound
    (fun T => trG T ^ 2 / trG2 T - cRatio (lam1q P q T) (aT T) (bT T) (JT T) * Ncnt T)
    (fun T => P.calE T * (cRatio (lam1q P q T) (aT T) (bT T) (JT T) * Ncnt T))
  frhat : EvBound
    (fun T => max (trG2 T / (aT T * P.L T) ^ 2
        - (cRatio (lam1q P q T) (aT T) (bT T) (JT T))⁻¹ * Ncnt T) 0)
    (fun T => P.calE T * ((cRatio (lam1q P q T) (aT T) (bT T) (JT T))⁻¹ * Ncnt T))

end ThmDE
end Zeta23

end
