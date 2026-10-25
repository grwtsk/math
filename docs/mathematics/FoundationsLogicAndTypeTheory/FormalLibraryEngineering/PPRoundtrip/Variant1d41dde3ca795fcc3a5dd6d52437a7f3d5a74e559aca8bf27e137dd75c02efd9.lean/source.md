# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PPRoundtrip.Variant1d41dde3ca795fcc3a5dd6d52437a7f3d5a74e559aca8bf27e137dd75c02efd9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `728a2c73cd2f4732a6ffd5e1cc8ccc5401c9e0c5` · SHA-256 `3daa6c58551d0c32a48fa70a36e61d8142b02819f92ff85da10ddcaeecaff05a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PPRoundtrip.Variantdaf8307340d644910112ad52e2eb59a4c7904b240803765d0bc27e6fa8d64971","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"daf8307340d644910112ad52e2eb59a4c7904b240803765d0bc27e6fa8d64971","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.PPRoundtrip.Variantdaf8307340d644910112ad52e2eb59a4c7904b240803765d0bc27e6fa8d64971","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"daf8307340d644910112ad52e2eb59a4c7904b240803765d0bc27e6fa8d64971","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/PPRoundtrip.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.Linter.PPRoundtrip


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PPRoundtrip.Variantdaf8307340d644910112ad52e2eb59a4c7904b240803765d0bc27e6fa8d64971

/--
info: "a   a"
---
warning: source context
'al "    a '
'al " a a\n'
pretty-printed context
note: this linter can be disabled with `set_option linter.ppRoundtrip false`
-/
#guard_msgs in
set_option linter.ppRoundtrip true in
#eval "    a   a\n       "    |>.trim

/--
warning: source context
'rd ¬   fa'
'rd ¬false'
pretty-printed context
note: this linter can be disabled with `set_option linter.ppRoundtrip false`
-/
#guard_msgs in
set_option linter.ppRoundtrip true in
#guard ¬   false

/--
warning: source context
'le {a: Nat'
'le {a : Na'
pretty-printed context
note: this linter can be disabled with `set_option linter.ppRoundtrip false`
-/
#guard_msgs in
set_option linter.ppRoundtrip true in
variable {a: Nat}

/--
warning: source context
' {a :Nat}'
' {a : Nat}'
pretty-printed context
note: this linter can be disabled with `set_option linter.ppRoundtrip false`
-/
#guard_msgs in
set_option linter.ppRoundtrip true in
variable {a :Nat}

/--
info: (fun x1 x2 => x1 + x2) 0 1 : Nat
---
warning: source context
'k (·+·) '
'k (· + ·'
pretty-printed context
note: this linter can be disabled with `set_option linter.ppRoundtrip false`
-/
#guard_msgs in
set_option linter.ppRoundtrip true in
#check (·+·) 0 1

#guard_msgs in
set_option linter.ppRoundtrip true in
-- check that trailing comments do not trigger the linter
example : 0 = 0 := by
  rw [] -- this goal is closed by the `rfl` implied by `rw`
```
