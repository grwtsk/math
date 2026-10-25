# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Message.Variantb44becd86bbe131942bf1fad16291064cb77d570705b9a578337520dd6d4bf51

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `607ff20249903c89d533ad7d0f75644de4ab846e` · SHA-256 `2e6192a0f3f2f0f7f83069a46f851d3625259260dab9ad0742159386ee98bdc8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Message.Variantddc80c66572353481babedb67e8286ef3edd0064debf98c60a230d3b1685aa1f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ddc80c66572353481babedb67e8286ef3edd0064debf98c60a230d3b1685aa1f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Message.Variantddc80c66572353481babedb67e8286ef3edd0064debf98c60a230d3b1685aa1f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"ddc80c66572353481babedb67e8286ef3edd0064debf98c60a230d3b1685aa1f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Lean/Message.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Floris van Doorn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn
-/
import Mathlib.Init
import Lean.Message

/-!
# Additional operations on MessageData and related types
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Message.Variantddc80c66572353481babedb67e8286ef3edd0064debf98c60a230d3b1685aa1f

open Lean Std MessageData

instance {α β : Type} [ToMessageData α] [ToMessageData β] : ToMessageData (α × β) :=
  ⟨fun x => paren <| toMessageData x.1 ++ ofFormat "," ++ Format.line ++ toMessageData x.2⟩
```
