# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lemmas.Varianta645bd589a5909e7b2a5a42a7ec4fedd1ef20e9c960574b90e94a5bc6eea750d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f1be4d711c41be0a71904644892705d849390285` · SHA-256 `a574e3681e7dedd7d2170ba82bfeb0aab4ecd50db3f3482ab63c8e6107493e04`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.HashMap.Variant3eabbce355e23a3228e95022f260da65a007bca77d5280a3f0a0d14dedd17814","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3eabbce355e23a3228e95022f260da65a007bca77d5280a3f0a0d14dedd17814","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.HashMap.Variant3eabbce355e23a3228e95022f260da65a007bca77d5280a3f0a0d14dedd17814","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"3eabbce355e23a3228e95022f260da65a007bca77d5280a3f0a0d14dedd17814","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Data/HashMap/Lemmas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/
import Std.Data.HashMap.Basic
import Std.Util.ProofWanted


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.HashMap.Variant3eabbce355e23a3228e95022f260da65a007bca77d5280a3f0a0d14dedd17814

namespace Std.HashMap

@[simp] proof_wanted empty_find? [BEq α] [Hashable α] {a : α} :
    (∅ : HashMap α β).find? a = none

proof_wanted insert_find? [BEq α] [Hashable α] (m : HashMap α β) (a a' : α) (b : β) :
    (m.insert a b).find? a' = if a' == a then some b else m.find? a'
```
