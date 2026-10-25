# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Attr.Variantc8f45e3f781a6b3575750ad96b0a95e5c53975355f3768233b11c6e1292c9125

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0bee3dc55ba92d3e0bb543bf1c19d60323d25700` · SHA-256 `1645071fe7f83cb1633f60b351a799d9e9d0f9929520aefaa5f5f033c9d92255`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LabelAttribute.Variantb5fbd562d180966b228e52905193f45042794de009fd1dd585ad4fc4b78694d7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b5fbd562d180966b228e52905193f45042794de009fd1dd585ad4fc4b78694d7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.LabelAttribute.Variantb5fbd562d180966b228e52905193f45042794de009fd1dd585ad4fc4b78694d7","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"b5fbd562d180966b228e52905193f45042794de009fd1dd585ad4fc4b78694d7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/Monotonicity/Attr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","scope_end_name_mismatch","scope_underflow","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Heather Macbeth. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Heather Macbeth
-/
import Mathlib.Init
import Lean.LabelAttribute

/-! # The @[mono] attribute -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LabelAttribute.Variantb5fbd562d180966b228e52905193f45042794de009fd1dd585ad4fc4b78694d7

namespace Mathlib.Tactic.Monotonicity

syntax mono.side := &"left" <|> &"right" <|> &"both"

namespace Attr

/-- A lemma stating the monotonicity of some function, with respect to appropriate relations on its
domain and range, and possibly with side conditions. -/
syntax (name := mono) "mono" (ppSpace mono.side)? : attr

-- The following is inlined from `register_label_attr`.
/- TODO: currently `left`/`right`/`both` is ignored, and e.g. `@[mono left]` means the same as
`@[mono]`. No error is thrown by e.g. `@[mono left]`. -/
-- TODO: possibly extend `register_label_attr` to handle trailing syntax

open Lean in
@[inherit_doc mono]
initialize ext : LabelExtension ← (
  let descr := "A lemma stating the monotonicity of some function, with respect to appropriate
relations on its domain and range, and possibly with side conditions."
  let mono := `mono
  registerLabelAttr mono descr mono)

end Attr

end Monotonicity

end Mathlib.Tactic
```
