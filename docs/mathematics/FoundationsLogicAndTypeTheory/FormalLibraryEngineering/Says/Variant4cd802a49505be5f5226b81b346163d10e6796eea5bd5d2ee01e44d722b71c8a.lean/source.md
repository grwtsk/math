# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Says.Variant4cd802a49505be5f5226b81b346163d10e6796eea5bd5d2ee01e44d722b71c8a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3f8f002aced60463de6d5e71bbe446fa2194e950` · SHA-256 `3ea2b92686825e874296ac8860b8e6295438a78952bb870ec1aedc0cc612cfe7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Says.Variant86660efc3c6fe0f955fdbf84f877c30cf60e51bc5e1bf7c9e35ff3f993750839","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"86660efc3c6fe0f955fdbf84f877c30cf60e51bc5e1bf7c9e35ff3f993750839","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Says.Variant86660efc3c6fe0f955fdbf84f877c30cf60e51bc5e1bf7c9e35ff3f993750839","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"86660efc3c6fe0f955fdbf84f877c30cf60e51bc5e1bf7c9e35ff3f993750839","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/test/says.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.Says
import Mathlib.Tactic.RunCmd


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Says.Variant86660efc3c6fe0f955fdbf84f877c30cf60e51bc5e1bf7c9e35ff3f993750839

set_option autoImplicit true
/--
info: Try this: (show_term exact 37) says exact 37
-/
#guard_msgs in
example : Nat := by
  (show_term exact 37) says

-- Note that this implicitly tests that we have turned off `linter.unreachableTactic`.
example : Nat := by
  (show_term exact 37) says exact 37

/--
info: Try this: simp? says simp only [List.length_append]
-/
#guard_msgs in
example (x y : List α) : (x ++ y).length = x.length + y.length := by
  simp? says

example (x y : List α) : (x ++ y).length = x.length + y.length := by
  simp? says simp only [List.length_append]

/--
error: Tactic `have := 0` did not produce any messages.
-/
#guard_msgs in
example : true := by
  have := 0 says

/--
error: Tactic output did not begin with 'Try this:': hi!
-/
#guard_msgs in
example : true := by
  (run_tac do Lean.logInfo "hi!") says

-- Check that `says` does not reverify the right-hand-side.
set_option says.no_verify_in_CI true in
example (x y : List α) : (x ++ y).length = x.length + y.length := by
  simp? says skip
  simp

-- Check that with `says.verify` `says` will reverify that the left-hand-side constructs
-- the right-hand-side.
set_option says.verify true in
/--
error: Tactic `simp?` produced `simp only [List.length_append]`,
but was expecting it to produce `simp only []`!
-/
#guard_msgs in
example (x y : List α) : (x ++ y).length = x.length + y.length := by
  simp? says simp only []

set_option linter.unreachableTactic false
-- Now we check that `says` does not consume following tactics unless they are indented.
/--
error: Tactic `simp` did not produce any messages.
-/
#guard_msgs in
example : True := by
  simp says
  trivial

set_option says.verify true in
example (x y : List α) : (x ++ y).length = x.length + y.length := by
  simp? says simp only [List.length_append]
  -- This is a comment to test that `says` ignores following comments.

set_option says.no_verify_in_CI true in
example : True := by
  simp says
    trivial

set_option says.verify true in
/--
error: Tactic `simp` did not produce any messages.
-/
#guard_msgs in
example : True := by
  simp says
    trivial

-- Check that if the CI environment variable is set, we reverify all `says` statements.
example : True := by
  fail_if_success
    run_tac do guard (← IO.getEnv "CI").isSome
    simp says trivial
  trivial
```
