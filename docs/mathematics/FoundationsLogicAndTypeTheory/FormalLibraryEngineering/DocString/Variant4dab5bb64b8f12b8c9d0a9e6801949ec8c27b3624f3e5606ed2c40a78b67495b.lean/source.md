# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DocString.Variant4dab5bb64b8f12b8c9d0a9e6801949ec8c27b3624f3e5606ed2c40a78b67495b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `031476c4502b5687d388234237c8f8bf621c29ab` · SHA-256 `d87d460b991366fa5fdef90d75efa423a39d94490b1c4ae44abd0bc0585dfa38`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.X.Variant02947ca01636b5333b91e11a813d5c4ffed39be32c7f05270266eb0f188e791a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"02947ca01636b5333b91e11a813d5c4ffed39be32c7f05270266eb0f188e791a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.X.Variant02947ca01636b5333b91e11a813d5c4ffed39be32c7f05270266eb0f188e791a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"02947ca01636b5333b91e11a813d5c4ffed39be32c7f05270266eb0f188e791a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/DocString.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.AdaptationNote
import Mathlib.Tactic.Linter.DocString

/-! Tests for the `docstring` linter -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.X.Variant02947ca01636b5333b91e11a813d5c4ffed39be32c7f05270266eb0f188e791a

set_option linter.style.docString true

#adaptation_note /--This comment is not inspected by the `docString` linter.-/

example : True := by
  #adaptation_note /--   This comment is not inspected by the `docString` linter.
  -/
  trivial

/--
warning: error: doc-strings should start with a single space or newline
note: this linter can be disabled with `set_option linter.style.docString false`
-/
#guard_msgs in
/--Missing space -/
example : Nat := 1

/--
warning: error: doc-strings should end with a single space or newline
note: this linter can be disabled with `set_option linter.style.docString false`
-/
#guard_msgs in
/-- Missing ending space-/
example : Nat := 1

/--
warning: error: doc-strings should start with a single space or newline
note: this linter can be disabled with `set_option linter.style.docString false`
-/
#guard_msgs in
/--  Two starting spaces -/
example : Nat := 1

/--
warning: error: doc-strings should end with a single space or newline
note: this linter can be disabled with `set_option linter.style.docString false`
-/
#guard_msgs in
/--
Two ending spaces  -/
example : Nat := 1

/--
warning: error: doc-strings should end with a single space or newline
note: this linter can be disabled with `set_option linter.style.docString false`
-/
#guard_msgs in
/-- Let's give an example.
```lean4
def foo : Bool := by
  sorry
```

-/
example : Nat := 1

/--
warning: error: doc-strings should not end with a comma
note: this linter can be disabled with `set_option linter.style.docString false`
-/
#guard_msgs in
/-- Let's give an example ending in a comma, -/
example : Nat := 1

/--
warning: error: doc-strings should start with a single space or newline
note: this linter can be disabled with `set_option linter.style.docString false`
---
warning: error: doc-strings should start with a single space or newline
note: this linter can be disabled with `set_option linter.style.docString false`
-/
#guard_msgs in
/-- The structure `X`. -/
structure X where
  /--  A field of `X`.
  -/
  x : Unit
  z : Unit
  /--
   A field of `X`
  spanning multiple lines.
  -/
  y : Unit
````
