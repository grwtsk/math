# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RvMChiDefs.Variantac6c72fd536293c9d4d537bbe1517aeb37c7bff6171f1fd72faa58c1978d8ef6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0ea5bcae2ee08eef0a4927e4f9a287f64bf4201c` · SHA-256 `e1926184086415b75d0d757c6250a0ed433eb0518a2cba2b64675f22c67c2ade`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.GoodHeightL.Variant6df91d98553fbf7a174a7bde8670e83293b4c8a35887f4036329b25ea4110865","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6df91d98553fbf7a174a7bde8670e83293b4c8a35887f4036329b25ea4110865","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.GoodHeightL.Variant6df91d98553fbf7a174a7bde8670e83293b4c8a35887f4036329b25ea4110865","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"6df91d98553fbf7a174a7bde8670e83293b4c8a35887f4036329b25ea4110865","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/gevrey-initial-20261002/Zeta23-preserved-before-pin-repair/zeta23/Zeta23/ThmE/RvMChiDefs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Anthropic, PBC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
SPDX-License-Identifier: Apache-2.0
-/
/-
Zeta23/ThmE/RvMChiDefs.lean — shared vocabulary for the H-RvM(χ) contour argument.
The half-contour itself is function-agnostic: reuse Zeta23.RvM.halfContour.
-/
import Zeta23.ThmE.Statement
import Zeta23.RvM.Defs


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.GoodHeightL.Variant6df91d98553fbf7a174a7bde8670e83293b4c8a35887f4036329b25ea4110865

noncomputable section

namespace Zeta23
namespace ThmE

variable {q : ℕ} [NeZero q]

/-- T is a zero-free ordinate for L(·,χ). -/
def GoodHeightL (χ : DirichletCharacter ℂ q) (T : ℝ) : Prop :=
  ∀ ρ : ℂ, IsNontrivialZeroL χ ρ → ρ.im ≠ T

end ThmE
end Zeta23
```
