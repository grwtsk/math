# Complete source: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.Lemmas.Variant06a713be5d1f4020e0f42a2f260186165d57138489e38819de847481a3b8060a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1530f861226d2db2b7a9f0fc687a9b187d3a4aaa` · SHA-256 `05db0f5ca1c7d9b8706572a5f86ac069187a1ad665a1feecdcadb120da0af376`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.EventuallyNnnormSubLt.Variant8ccd5daa5f926565c6b6970d89c4e565bac687e22dfd9b18f3faca205feca105","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8ccd5daa5f926565c6b6970d89c4e565bac687e22dfd9b18f3faca205feca105","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.NormedSpaces.SourceCorpus.EventuallyNnnormSubLt.Variant8ccd5daa5f926565c6b6970d89c4e565bac687e22dfd9b18f3faca205feca105","mathematical_subject":"Analysis.NormedSpaces","original_sha256":"8ccd5daa5f926565c6b6970d89c4e565bac687e22dfd9b18f3faca205feca105","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/Normed/Group/Lemmas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Patrick Massot. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Patrick Massot
-/
import Mathlib.Analysis.Normed.Group.Uniform

/-!
# Further lemmas about normed groups

This file contains further lemmas about normed groups, requiring heavier imports than
`Mathlib/Analysis/Normed/Group/Basic.lean`.

## TODO

- Move lemmas from `Basic` to other places, including this file.

-/


namespace GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.EventuallyNnnormSubLt.Variant8ccd5daa5f926565c6b6970d89c4e565bac687e22dfd9b18f3faca205feca105

variable {E : Type*} [SeminormedAddCommGroup E]
open NNReal Topology

theorem eventually_nnnorm_sub_lt (x₀ : E) {ε : ℝ≥0} (ε_pos : 0 < ε) :
    ∀ᶠ x in 𝓝 x₀, ‖x - x₀‖₊ < ε :=
  (continuousAt_id.sub continuousAt_const).nnnorm (gt_mem_nhds <| by simpa)

theorem eventually_norm_sub_lt (x₀ : E) {ε : ℝ} (ε_pos : 0 < ε) :
    ∀ᶠ x in 𝓝 x₀, ‖x - x₀‖ < ε :=
  (continuousAt_id.sub continuousAt_const).norm (gt_mem_nhds <| by simpa)
```
