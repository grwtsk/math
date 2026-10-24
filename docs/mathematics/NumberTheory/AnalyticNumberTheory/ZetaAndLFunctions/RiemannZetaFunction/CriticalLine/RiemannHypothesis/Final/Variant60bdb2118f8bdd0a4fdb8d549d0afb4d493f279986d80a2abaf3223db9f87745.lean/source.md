# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Final.Variant60bdb2118f8bdd0a4fdb8d549d0afb4d493f279986d80a2abaf3223db9f87745

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `65c5ef85c9116b9e888d955aed0305f28ce1bf21` · SHA-256 `2daa550413559fd435aa8ad885229597a9e89b3cc72f83226f02b72e03fd1182`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThmTraces.Variant879226ec5632ac4f4430512b8535f801ad443423cf68450c0fbabec293831a90","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"879226ec5632ac4f4430512b8535f801ad443423cf68450c0fbabec293831a90","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ThmTraces.Variant879226ec5632ac4f4430512b8535f801ad443423cf68450c0fbabec293831a90","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"879226ec5632ac4f4430512b8535f801ad443423cf68450c0fbabec293831a90","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/gevrey-initial-20261002/Zeta23-preserved-before-pin-repair/zeta23/Zeta23/PrimeSideB/Final.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Anthropic, PBC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
SPDX-License-Identifier: Apache-2.0
-/
/-
  Part of the Zeta23 formalization of the paper
  "More than two thirds of the zeros of the Riemann zeta function lie on the critical line".
-/
import Zeta23.PrimeSideB.Traces
import Zeta23.PrimeSideA.Bridge

/-!
# [thm:traces], final form: `P.Valid → PaperInputs Z → ThmTracesHyp P Z`
Three lines combining `Traces.lean` (the instantiated assembly, taking the
taper facts as `LocalHypsEventually`) with `Bridge.lean` (which proves them).  Kept in its own file
so that `Traces.lean` does not depend on the Taper/Poisson tree.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThmTraces.Variant879226ec5632ac4f4430512b8535f801ad443423cf68450c0fbabec293831a90

noncomputable section

namespace Zeta23
namespace PrimeSide

/-- **Theorem [thm:traces]** (the paper §5 "Summary") for the concrete prime-side matrix
([eq:Gdef] 2nd expression) — i.e. the hypothesis `ThmTracesHyp P Z` derived from `P.Valid`
and the published inputs `PaperInputs Z` alone. -/
theorem thm_traces {P : Params} {Z : ZeroConfig} (hP : P.Valid) (inp : PaperInputs Z) : ThmTracesHyp P Z :=
  thm_traces_of_localHyps hP inp (localHypsEventually hP)


end PrimeSide
end Zeta23

end
```
