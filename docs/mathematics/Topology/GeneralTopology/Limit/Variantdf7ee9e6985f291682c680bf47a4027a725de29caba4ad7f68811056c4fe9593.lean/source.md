# Complete source: GRWTSK.Topology.GeneralTopology.Limit.Variantdf7ee9e6985f291682c680bf47a4027a725de29caba4ad7f68811056c4fe9593

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d037bd6e4dd786dede36614fea48f3c5788001f6` · SHA-256 `88dbbffd36a5d00bd801e5124f7a530b639aa5377b8d7585c1694c4cbeefe13b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.TendstoLam1q.Variantc520a49fa0c0523329685d5e26bdb303578df625f95bd376024d086d6265a42c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c520a49fa0c0523329685d5e26bdb303578df625f95bd376024d086d6265a42c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.TendstoLam1q.Variantc520a49fa0c0523329685d5e26bdb303578df625f95bd376024d086d6265a42c","mathematical_subject":"Topology.GeneralTopology","original_sha256":"c520a49fa0c0523329685d5e26bdb303578df625f95bd376024d086d6265a42c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/gevrey-initial-20261002/Zeta23-preserved-before-pin-repair/zeta23/Zeta23/ThmDE/Limit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Anthropic, PBC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
SPDX-License-Identifier: Apache-2.0
-/
/-
Zeta23/ThmDE/Limit.lean — [thm:E] "Theorem D holds likewise" — the
λ_{1,χ} → λ limit and the generic concrete-ratio convergence for the χ D-window.
-/
import Zeta23.ThmD.Limit
import Zeta23.ThmE.AssemblyQ


namespace GRWTSK.Topology.GeneralTopology.TendstoLam1q.Variantc520a49fa0c0523329685d5e26bdb303578df625f95bd376024d086d6265a42c

open Filter Real Topology

noncomputable section

namespace Zeta23
namespace ThmDE

/-- λ_{1,χ}(T) → λ (q fixed). -/
theorem tendsto_lam1q {P : Params} (hP : P.Valid) {q : ℕ} (hq : 1 ≤ q) :
    Tendsto (fun T => ThmE.lam1q P q T) atTop (𝓝 P.lam) := by
  have hlam := hP.lam_pos
  have hl := Assembly.tendsto_l_atTop
  have hbound : ∀ᶠ T in atTop, P.lam - P.lam * ThmE.cq q / l T ≤ ThmE.lam1q P q T
      ∧ ThmE.lam1q P q T ≤ P.lam := by
    filter_upwards [Assembly.eventually_l_pos, eventually_gt_atTop (0:ℝ)] with T hlT hT
    exact ⟨by linarith [ThmE.sub_lam1q_le P hq hT hlam.le hlT],
      ThmE.lam1q_le P hq hT hlam.le hlT⟩
  have hlow : Tendsto (fun T => P.lam - P.lam * ThmE.cq q / l T) atTop (𝓝 P.lam) := by
    have h0 : Tendsto (fun T => P.lam * ThmE.cq q / l T) atTop (𝓝 0) :=
      Tendsto.div_atTop tendsto_const_nhds hl
    have := tendsto_const_nhds (x := P.lam) (f := atTop (α := ℝ)) |>.sub h0
    simpa using this
  exact tendsto_of_tendsto_of_tendsto_of_le_of_le' hlow tendsto_const_nhds
    (hbound.mono fun T h => h.1) (hbound.mono fun T h => h.2)

/-- the χ concrete-ratio limit, parametric in the window-moment limits. -/
theorem tendsto_cRatio_concreteChi {P : Params} (hP : P.Valid) {q : ℕ} (hq : 1 ≤ q)
    (aT bT JT : ℝ → ℝ)
    (ha : Tendsto aT atTop (𝓝 (ThmD.aStar P.lam)))
    (hb : Tendsto bT atTop (𝓝 (ThmD.bStar P.lam)))
    (hJ : Tendsto JT atTop (𝓝 (ThmD.jStar P.lam))) :
    Tendsto (fun T => ThmD.cRatio (ThmE.lam1q P q T) (aT T) (bT T) (JT T)) atTop
      (𝓝 (ThmD.cStar P.lam)) :=
  ThmD.tendsto_cRatio_of hP.lam_pos hP.lam_le_one (tendsto_lam1q hP hq) ha hb hJ

end ThmDE
end Zeta23
```
