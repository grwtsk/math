# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.BacklundDefs.Variantc4a0817e659192a5fa78ebb51cc1813c8f053341d95d49c8e1f71adfd50301ac

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a4dda347ddfa8caa0fcb3da21ad78cb47d60de9d` · SHA-256 `b75542aac0ba82f6cfad7295a2927dd385af2b1f3db28b36fe29cf3d3401d9e3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ReZeroSet.Variant83b7dcab714041eb8146a9b80f143ee7e6be7c742891074a638d7c2eaa4e1e95","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"83b7dcab714041eb8146a9b80f143ee7e6be7c742891074a638d7c2eaa4e1e95","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ReZeroSet.Variant83b7dcab714041eb8146a9b80f143ee7e6be7c742891074a638d7c2eaa4e1e95","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"83b7dcab714041eb8146a9b80f143ee7e6be7c742891074a638d7c2eaa4e1e95","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/gevrey-initial-20261002/Zeta23-preserved-before-pin-repair/zeta23/Zeta23/RvM/BacklundDefs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Anthropic, PBC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
SPDX-License-Identifier: Apache-2.0
-/
/-
Zeta23/RvM/BacklundDefs.lean — shared definition for Backlund's bound.
The Jensen count `reZeroSet_card_le` is in Zeta23/RvM/ReZeroCount.lean; the
argument-variation half and the assembly of `backlund_horizontal` are in
Zeta23/RvM/Backlund.lean.
-/
import Zeta23.Prelude.InstancePriorities
import Mathlib.NumberTheory.LSeries.RiemannZeta


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ReZeroSet.Variant83b7dcab714041eb8146a9b80f143ee7e6be7c742891074a638d7c2eaa4e1e95

open Complex

noncomputable section

namespace Zeta23
namespace RvM

/-- The zero set of `σ ↦ Re ζ(σ+iT)` on `[1/2, 2]` (used by
`reZeroSet_card_le` and `im_integral_logDeriv_le` / `backlund_horizontal`). -/
def reZeroSet (T : ℝ) : Set ℝ :=
  {σ | σ ∈ Set.Icc (1/2 : ℝ) 2 ∧ (riemannZeta (σ + T * I)).re = 0}

lemma mem_reZeroSet {T σ : ℝ} :
    σ ∈ reZeroSet T ↔ σ ∈ Set.Icc (1/2 : ℝ) 2 ∧ (riemannZeta (σ + T * I)).re = 0 := Iff.rfl

end RvM
end Zeta23

end
```
