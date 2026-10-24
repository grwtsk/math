# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TracesBoundsE.Variant8d43b0057efc475623277adf434f35292d94f62ffdc45ac43e64597040f95e9a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8bbdfa54d7c0139cd51bc407b2e4587f994b661e` · SHA-256 `da3e6e320d167fbfb849c7bc96db266ffdaed3f3e965fbde382ff7ffb1f21b20`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TracesBoundsE.Variant4e44c73d585d13f594f3f09199e59660b742b46a1a446ccf004cadeb48692954","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4e44c73d585d13f594f3f09199e59660b742b46a1a446ccf004cadeb48692954","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.TracesBoundsE.Variant4e44c73d585d13f594f3f09199e59660b742b46a1a446ccf004cadeb48692954","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"4e44c73d585d13f594f3f09199e59660b742b46a1a446ccf004cadeb48692954","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/gevrey-initial-20261002/Zeta23-preserved-before-pin-repair/zeta23/Zeta23/TracesBoundsE.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Anthropic, PBC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
SPDX-License-Identifier: Apache-2.0
-/
/-
  Part of the Zeta23 formalization of the paper
  "More than two thirds of the zeros of the Riemann zeta function lie on the critical line".
  Bracketed labels ([prop:cross], [eq:Msplit], …) and section numbers (§5.4, …) refer to that paper.
-/
import Zeta23.PrimeSideTemp

/-!
# [thm:traces] conclusions with an ABSTRACT error rate

LIGHT file (imports only Zeta23.PrimeSideTemp) so that Zeta23/Assembly.lean can import it:
`TracesBoundsE P Err aT trG trG2 Ncnt` = the four conclusions of the paper [thm:traces] ([eq:tr1] both forms,
[eq:tr2] second form, [eq:ratio]) with an arbitrary rate `Err : ℝ → ℝ` in place of the paper's 𝓔_T;
`TracesBounds` (Zeta23/PrimeSideTemp.lean) is the instance `Err := P.calE`, supplied by the paper's route
(Zeta23/PrimeSideB/Traces.lean via `TracesBounds.toE`).
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TracesBoundsE.Variant4e44c73d585d13f594f3f09199e59660b742b46a1a446ccf004cadeb48692954

noncomputable section

open Filter Topology Real

namespace Zeta23

/-! ## [thm:traces] conclusions with an abstract rate -/

/-- The four conclusions of [thm:traces] with an abstract error rate `Err` (cf. `TracesBounds`,
Zeta23/PrimeSideTemp.lean, which is the case `Err = P.calE` = the paper's 𝓔_T). -/
structure TracesBoundsE (P : Params) (Err aT trG trG2 Ncnt : ℝ → ℝ) : Prop where
  tr1 : EvBound (fun T => trG T - aT T * P.L T * Ncnt T) (fun T => P.L T * Real.sqrt (P.X T))
  tr1' : EvBound (fun T => trG T - P.L T * Ncnt T) (fun T => Err T * (P.L T * Ncnt T))
  tr2 : EvBound (fun T => trG2 T - P.mainTr2 T) (fun T => Err T * P.mainTr2 T)
  ratio : EvBound (fun T => trG T ^ 2 / trG2 T - Ffun (P.lam1 T) * Ncnt T)
    (fun T => Err T * (Ffun (P.lam1 T) * Ncnt T))

lemma TracesBounds.toE {P : Params} {aT trG trG2 Ncnt : ℝ → ℝ}
    (h : TracesBounds P aT trG trG2 Ncnt) : TracesBoundsE P P.calE aT trG trG2 Ncnt :=
  ⟨h.tr1, h.tr1', h.tr2, h.ratio⟩

lemma TracesBoundsE.toTracesBounds {P : Params} {aT trG trG2 Ncnt : ℝ → ℝ}
    (h : TracesBoundsE P P.calE aT trG trG2 Ncnt) : TracesBounds P aT trG trG2 Ncnt :=
  ⟨h.tr1, h.tr1', h.tr2, h.ratio⟩

/-- [thm:traces] for the concrete prime-side data and the count of `Z`, abstract rate. -/
def ThmTracesHypE (P : Params) (Err : ℝ → ℝ) (Z : ZeroConfig) : Prop :=
  TracesBoundsE P Err P.a P.trGtilde P.trGtildeSq (fun T => (Z.N T (2 * T) : ℝ))

lemma thmTracesHyp_iff_E (P : Params) (Z : ZeroConfig) :
    ThmTracesHyp P Z ↔ ThmTracesHypE P P.calE Z :=
  ⟨fun h => TracesBounds.toE h, fun h => h.toTracesBounds⟩


end Zeta23

end
```
