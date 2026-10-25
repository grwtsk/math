-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LabelAttr.Variant4594c9b9d0ef450bcbbb6d4316519999f32c3eb7efe453966a2a16017ec6db15","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4594c9b9d0ef450bcbbb6d4316519999f32c3eb7efe453966a2a16017ec6db15","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.LabelAttr.Variant4594c9b9d0ef450bcbbb6d4316519999f32c3eb7efe453966a2a16017ec6db15","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"4594c9b9d0ef450bcbbb6d4316519999f32c3eb7efe453966a2a16017ec6db15","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Tactic/Monotonicity/Attr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Heather Macbeth. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Heather Macbeth
-/
import Mathlib.Tactic.LabelAttr

/-! # The @[mono] attribute -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LabelAttr.Variant4594c9b9d0ef450bcbbb6d4316519999f32c3eb7efe453966a2a16017ec6db15

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

open LabelAttr in
@[inherit_doc mono]
initialize ext : LabelExtension ← (
  let descr := "A lemma stating the monotonicity of some function, with respect to appropriate
relations on its domain and range, and possibly with side conditions."
  let mono := `mono
  registerLabelAttr mono descr mono)
