# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TryThis.Variant6c4619e28438c56bacc36ce618ed92303b1fae03bf8e886ffb020c2500fed907

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4b3ac82a546f3f11235f8f63e035cee867bc0c3f` · SHA-256 `02380dd2ff7e47156d78501951a83df7e7f766abe409619229ef850088074930`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.S.Variant0135a733f6319b452d563b2e29163ed61b4c5947bbe13923cd7e76a7f2de191d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0135a733f6319b452d563b2e29163ed61b4c5947bbe13923cd7e76a7f2de191d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.S.Variant0135a733f6319b452d563b2e29163ed61b4c5947bbe13923cd7e76a7f2de191d","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"0135a733f6319b452d563b2e29163ed61b4c5947bbe13923cd7e76a7f2de191d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/test/tryThis.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Thomas Murrills. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Thomas Murrills
-/
import Std.Tactic.TryThis
import Std.Util.TermUnsafe
import Std.Tactic.GuardMsgs


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.S.Variant0135a733f6319b452d563b2e29163ed61b4c5947bbe13923cd7e76a7f2de191d

open Std.Tactic.TryThis

/-!
This test file demonstrates the `Try This:` widget and describes how certain examples should
look. Note that while the evaluations here shouldn't fail, they also aren't tests in the traditional
sense—CI has no way of inspecting the HTML output, and therefore no way of checking that the
output is styled correctly.

All clickables should dim on mouseover without changing color drastically.

Both widgets should provide a (list of) `Try this: rfl` code actions.
-/

/-! # Setup -/

open Lean Meta Elab Term Expr
/-- Add a suggestion. -/
elab "add_suggestion" s:term : tactic => unsafe do
  addSuggestion (← getRef) (← evalTerm Suggestion (.const ``Suggestion []) s)

/-- Add a suggestion with a header. -/
elab "add_suggestion" s:term "with_header" h:str : tactic => unsafe do
  addSuggestion (← getRef) (← evalTerm Suggestion (.const ``Suggestion []) s)
    (header := h.getString)

/-- Add a suggestion. -/
elab "add_suggestions" s:term : tactic => unsafe do
  let s ← evalTerm (Array Suggestion) (.app (.const ``Array [.zero]) (.const ``Suggestion [])) s
  addSuggestions (← getRef) s

/-- Add suggestions with a header. -/
elab "add_suggestions" s:term "with_header" h:str : tactic => unsafe do
  let s ← evalTerm (Array Suggestion) (.app (.const ``Array [.zero]) (.const ``Suggestion [])) s
  addSuggestions (← getRef) s (header := h.getString)

/-- Demo adding a suggestion. -/
macro "#demo1" s:term : command => `(example : True := by add_suggestion $s; trivial)

/-- Demo adding a suggestion with a header. -/
macro "#demo1" s:term "with_header" h:str : command => `(example : True := by
  add_suggestion $s with_header $h; trivial)

/-- Demo adding suggestions. -/
macro "#demo" s:term : command => `(example : True := by
  add_suggestions $s; trivial)

/-- Demo adding suggestions with a header. -/
macro "#demo" s:term "with_header" h:str : command => `(example : True := by
  add_suggestions $s with_header $h; trivial)

/-- A basic suggestion. -/
private def s : Suggestion := Unhygienic.run `(tactic| rfl)

/-! # Demos -/

/-- info: Try this: rfl -/
#guard_msgs in
-- `Try this: rfl` with `rfl` in text-link color.
#demo1 s

/--
info: Try these:
• rfl
• rfl
• rfl
• rfl
-/
#guard_msgs in
/-
```
Try these:
• rfl
• rfl
• rfl
• rfl
```
with `rfl` in text-link color.
-/
#demo #[s,s,s,s]

/--
info: Try these:
• rfl
• rfl
• rfl
• rfl
• rfl
• rfl
• rfl
-/
#guard_msgs in
/-
```
Try these:
• rfl -- red
• rfl -- red-orange
• rfl -- orange
• rfl -- yellow
• rfl -- yellow-green
• rfl -- light green
• rfl -- green
```
-/
#demo #[0.0, 1/6, 2/6, 3/6, 4/6, 5/6, 1.0].map fun t => {s with style? := some <| .value t}

/-- info: Try this: rfl -/
#guard_msgs in
-- `Try this: rfl` -- error color with error squiggle
#demo1 {s with style? := some .error}

/-- info: Try this: rfl -/
#guard_msgs in
-- `Try this: rfl` -- error color, no squiggle
#demo1 {s with style? := some <| .error (decorated := false)}

/-- info: Try this: rfl -/
#guard_msgs in
-- `Try this: rfl` -- gold color with warning squiggle
#demo1 {s with style? := some .warning}

/-- info: Try this: rfl -/
#guard_msgs in
-- `Try this: rfl` -- gold color with no squiggle
#demo1 {s with style? := some <| .warning (decorated := false)}

/-- info: Try this: rfl -/
#guard_msgs in
-- `Try this: rfl` -- Lean green
#demo1 {s with style? := some .success}

/-- info: Try this: rfl -/
#guard_msgs in
-- `Try this: rfl` -- styled like a goal hypothesis
#demo1 {s with style? := some .asHypothesis}

/-- info: Try this: rfl -/
#guard_msgs in
-- `Try this: rfl` -- styled like an inaccessible goal hypothesis
#demo1 {s with style? := some .asInaccessible}

/-- info: Try this: rfl -/
#guard_msgs in
-- `Try this: Starfleet`
#demo1 {s with preInfo? := "Sta", postInfo? := "eet"}

/-- info: Try this: a secret message -/
#guard_msgs in
-- `Try this: rfl`
#demo1 {s with messageData? := m!"a secret message"}

/--
info: Try these:
• a secret message
• another secret message
-/
#guard_msgs in
/-
```
Try these:
• rfl
• rfl
```
-/
#demo #[
  {s with messageData? := m!"a secret message"},
  {s with messageData? := m!"another secret message"}
]

/-- info: Our only hope is rfl -/
#guard_msgs in
#demo1 s with_header "Our only hope is "

/--
info: We've got everything here! Such as:
• rfl
• rfl
• rfl
• rfl
-/
#guard_msgs in
#demo #[s,s,s,s] with_header "We've got everything here! Such as:"

/--
info: Grab bag:
• not a tactic
• This
• rfl
• link-styled
• this
-/
#guard_msgs in
#demo #[
  {s with
    suggestion := "not a tactic",
    preInfo? := "This is ",
    postInfo? := ".",
    style? := some .error},
  {s with
    suggestion := "This",
    postInfo? := " could be a tactic--but watch out!",
    style? := some .warning},
  {s with
    postInfo? := ". Finally, a tactic that just works.",
    style? := some .success},
  {s with
    preInfo? := "I'm just "
    suggestion := "link-styled",
    postInfo? := "."},
  {s with
    preInfo? := "On a scale of 0 to 1, I'd put ",
    suggestion := "this",
    postInfo? := " at 0.166667.",
    style? := some (.value (1/6))}
] with_header "Grab bag:"

/-- error: no suggestions available -/
#guard_msgs in
#demo #[]
````
