# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.QuarticWindow.Variantd564e42881f5c3427e83e593272d89380d4b150efb37cf5b4fb05ccfc9b3e2fa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a118810a59d174110e7ba2b5ba89b0de274255ef` · SHA-256 `6b27d31274cb387a9b1a34d5bb296d40cdf72fc2f91b4e60dd88d2c76bb1e526`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Params.Varianta876c66e6744652a727c90531247dfe4a93ef29e46ab6fd7fee35a3c3640b70b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a876c66e6744652a727c90531247dfe4a93ef29e46ab6fd7fee35a3c3640b70b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.Params.Varianta876c66e6744652a727c90531247dfe4a93ef29e46ab6fd7fee35a3c3640b70b","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"a876c66e6744652a727c90531247dfe4a93ef29e46ab6fd7fee35a3c3640b70b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/gevrey-initial-20261002/Zeta23-preserved-before-pin-repair/zeta23/Zeta23/XiPrime/QuarticWindow.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Anthropic, PBC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
SPDX-License-Identifier: Apache-2.0
-/
/-
Zeta23/XiPrime/QuarticWindow.lean — umbrella for the ξ′ quartic-window admissibility component.
  QuarticWindow/Params.lean    — P.atV v T rfl-dictionary, atV_phi, localFun/a/b/φ̂/trace bridges
  QuarticWindow/ModWindow.lean — GENERIC: a modulated ramp taper f·φ is an Zeta23.AdmWindow (admWindow_phiM)
  QuarticWindow/Quartic.lean   — f_Q = √vQuartic(·/L) is a ModFactor (A = 3/2, B = 12) ⇒ admWindow_phiV_quartic
  QuarticWindow/ZeroSide.lean  — PoissonSq / BlockInputs / Gz=Gp / tail package / 1/2 ≤ a ≤ 1 for P.atV vQuartic T,
                                 windowZeroSide_atV (the WindowZeroSide bundle)
  QuarticWindow/Moments.lean   — |a−2777/3000|, |b−518783/600000| ≤ 2w/L, |g(y) − L·vConv(y/L)| ≤ 4w, b ≥ 1/2,
                                 localHypsCoreQ_eventually
  QuarticWindow/Family.lean    — admFamily_phiV_quartic / admFamily_atV_quartic (the AdmFamily bundle)
-/
import Zeta23.XiPrime.QuarticWindow.Params
import Zeta23.XiPrime.QuarticWindow.ModWindow
import Zeta23.XiPrime.QuarticWindow.Quartic
import Zeta23.XiPrime.QuarticWindow.ZeroSide
import Zeta23.XiPrime.QuarticWindow.Moments
import Zeta23.XiPrime.QuarticWindow.Family

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Params.Varianta876c66e6744652a727c90531247dfe4a93ef29e46ab6fd7fee35a3c3640b70b

```
