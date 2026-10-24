# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Family.Variantd957baca5fe7f6cfe2100387c2cbdece18d7c94df9c532c3621d3636c1148def

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `38f08ca928d0d631b22063444b81ac478cceef34` · SHA-256 `260b416cfb7814ae012237ef4be5e87c4d8f13d62cda3d277936683f91520105`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.AdmFamilyPhiVQuartic.Variant9b26448611f024aab5ba54efd33f05635450d9c3e5a285a69c779f300e1a570b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9b26448611f024aab5ba54efd33f05635450d9c3e5a285a69c779f300e1a570b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.AdmFamilyPhiVQuartic.Variant9b26448611f024aab5ba54efd33f05635450d9c3e5a285a69c779f300e1a570b","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"9b26448611f024aab5ba54efd33f05635450d9c3e5a285a69c779f300e1a570b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/gevrey-initial-20261002/Zeta23-preserved-before-pin-repair/zeta23/Zeta23/XiPrime/QuarticWindow/Family.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Anthropic, PBC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
SPDX-License-Identifier: Apache-2.0
-/
/-
Zeta23/XiPrime/QuarticWindow/Family.lean — the quartic window as an `AdmFamily` (the admissible-window-with-b≥1/2
bundle of Zeta23/XiPrime/PrimeSide/Concrete.lean), discharging the quartic P1 binder.
-/
import Zeta23.XiPrime.QuarticWindow.Moments
import Zeta23.XiPrime.PrimeSide.Concrete


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.AdmFamilyPhiVQuartic.Variant9b26448611f024aab5ba54efd33f05635450d9c3e5a285a69c779f300e1a570b

noncomputable section

open Real Set Filter Topology

namespace Zeta23
namespace XiPrime

variable {P : Params}

/-- **the quartic window family is admissible with b ≥ 1/2, from T₀ on** (window written as P.phiV vQuartic T). -/
theorem admFamily_phiV_quartic (hP : P.Valid) : AdmFamily P (fun T => P.phiV vQuartic T) (cQ P.ϱ) := by
  obtain ⟨T₀, hT₀⟩ := eventually_atTop.mp (Params.eventually_w8 hP)
  exact ⟨T₀, fun T hT => ⟨admWindow_phiV_quartic hP (hT₀ T hT), bV_quartic_ge_half hP (hT₀ T hT)⟩⟩

/-- same, with the window written as the height-T window of the realizing parameters `P.atV vQuartic T`. -/
theorem admFamily_atV_quartic (hP : P.Valid) :
    AdmFamily P (fun T => (P.atV vQuartic T).phi T) (cQ P.ϱ) := by
  have e : (fun T => (P.atV vQuartic T).phi T) = fun T => P.phiV vQuartic T :=
    funext fun T => Params.atV_phi_valid T hP vQuartic_even
  rw [e]; exact admFamily_phiV_quartic hP

end XiPrime
end Zeta23

end
```
