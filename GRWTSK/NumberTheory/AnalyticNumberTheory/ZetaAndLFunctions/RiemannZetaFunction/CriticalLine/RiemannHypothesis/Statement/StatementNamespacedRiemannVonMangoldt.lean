-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RiemannVonMangoldt.Variant3226fbc3de1b223a067d1d454c1e7400ac81c652dbbb58f494e42a6a583061f6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3226fbc3de1b223a067d1d454c1e7400ac81c652dbbb58f494e42a6a583061f6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.RiemannVonMangoldt.Variant3226fbc3de1b223a067d1d454c1e7400ac81c652dbbb58f494e42a6a583061f6","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"3226fbc3de1b223a067d1d454c1e7400ac81c652dbbb58f494e42a6a583061f6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/gevrey-initial-20261002/Zeta23-preserved-before-pin-repair/zeta23/Zeta23/RvM/Statement.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Anthropic, PBC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
SPDX-License-Identifier: Apache-2.0
-/
/-
Zeta23/RvM/Statement.lean — Riemann–von Mangoldt assembly:
  Zeta23.RvM.riemannVonMangoldt (hΓ : GammaFacts) : RiemannVonMangoldt zetaZeroConfig
from Zeta23.RvM.rvM_main (MainTerm.lean) and Zeta23.RvM.zetaZeroConfig_local_count
(LocalCount.lean). Conditional on the Γ-facts by design (Stirling enters only through
`GammaFacts`).
-/
import Zeta23.RvM.MainTerm


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RiemannVonMangoldt.Variant3226fbc3de1b223a067d1d454c1e7400ac81c652dbbb58f494e42a6a583061f6

noncomputable section

namespace Zeta23.RvM

/-- **H-RvM for Mathlib's ζ**, given the Γ-facts. -/
theorem riemannVonMangoldt (hΓ : GammaFacts) : RiemannVonMangoldt zetaZeroConfig :=
  ⟨rvM_main hΓ, zetaZeroConfig_local_count⟩

end Zeta23.RvM
