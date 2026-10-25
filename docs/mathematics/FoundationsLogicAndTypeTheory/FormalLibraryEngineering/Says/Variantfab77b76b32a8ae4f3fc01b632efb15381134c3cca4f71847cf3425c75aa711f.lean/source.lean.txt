-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.P.Variant5bbb8057816a72b15f76ca0daf0562d66abb6114d93b4d12623ad8ca2bb33fc9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5bbb8057816a72b15f76ca0daf0562d66abb6114d93b4d12623ad8ca2bb33fc9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.P.Variant5bbb8057816a72b15f76ca0daf0562d66abb6114d93b4d12623ad8ca2bb33fc9","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"5bbb8057816a72b15f76ca0daf0562d66abb6114d93b4d12623ad8ca2bb33fc9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/says.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.Says
import Aesop

-- removing changes to the `simp` set after this test was created

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.P.Variant5bbb8057816a72b15f76ca0daf0562d66abb6114d93b4d12623ad8ca2bb33fc9

attribute [-simp] Nat.add_left_cancel_iff Nat.add_right_cancel_iff

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

You can reproduce this error locally using `set_option says.verify true`.
-/
#guard_msgs in
example (x y : List α) : (x ++ y).length = x.length + y.length := by
  simp? says simp only []

set_option linter.unreachableTactic false
set_option linter.unusedTactic false in
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

-- Check that verification works even with multi-line suggestions, as produced by aesop
def P : Prop := True
def Q : Prop := True
@[simp]
def very_long_lemma_name_aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa : Q → P := fun _ => trivial
@[simp]
def very_long_lemma_name_bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb : Q := trivial
/--
info: Try this: aesop? says
  simp_all only [very_long_lemma_name_bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb,
    very_long_lemma_name_aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa]
-/
#guard_msgs in
example : P := by
  aesop? says
