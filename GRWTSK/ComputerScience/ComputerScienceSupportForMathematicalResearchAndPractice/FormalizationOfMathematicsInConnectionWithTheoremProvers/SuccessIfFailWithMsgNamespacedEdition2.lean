-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Err.Variant6808e9eae2f06b96d26325092e515f103072bb4ac832711b04687b2996d27b8a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6808e9eae2f06b96d26325092e515f103072bb4ac832711b04687b2996d27b8a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Err.Variant6808e9eae2f06b96d26325092e515f103072bb4ac832711b04687b2996d27b8a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"6808e9eae2f06b96d26325092e515f103072bb4ac832711b04687b2996d27b8a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/success_if_fail_with_msg.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.SuccessIfFailWithMsg

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Err.Variant6808e9eae2f06b96d26325092e515f103072bb4ac832711b04687b2996d27b8a

example : True := by
  success_if_fail_with_msg "no goals to be solved" trivial; trivial
  trivial

example : Nat → Nat → True := by
  success_if_fail_with_msg "no goals to be solved"
    intro
    intro
    trivial
    trivial
  intros; trivial

/--
info: Update with tactic error message: "no goals to be solved"
---
error: tactic '
  intro
  intro
  trivial
  trivial' failed, but got different error message:

no goals to be solved
-/
#guard_msgs in
example : Nat → Nat → True := by
  success_if_fail_with_msg "no goals"
    intro
    intro
    trivial
    trivial
  intros; trivial



def err (t : Bool) := if t then
  "tactic 'rewrite' failed, equality or iff proof expected
  n ≤ n.succ
n : Nat
⊢ True"
  else
    "not that message
⊢ True"

set_option linter.unusedVariables false in
example (n : Nat) : True := by
  success_if_fail_with_msg (err true) rw [Nat.le_succ n]
  trivial

example : True := by
  success_if_fail_with_msg (err false) fail "not that message"
  trivial

/- In the following, we use `success_if_fail_with_msg` to write tests for
`success_if_fail_with_msg`, since the inner one should fail with a certain message. -/

example : True := by
  success_if_fail_with_msg "tactic 'trivial' succeeded, but was expected to fail"
    success_if_fail_with_msg "message" trivial
  trivial

def err₂ := "tactic 'fail \"different message!\"' failed, but got different error message:

different message!
⊢ True"

example : True := by
  success_if_fail_with_msg err₂
    success_if_fail_with_msg "message" fail "different message!"
  trivial

open Lean Meta Mathlib Tactic

def alwaysFails : MetaM Unit := do throwError "I failed!"

def doesntFail : MetaM Unit := do
  try successIfFailWithMessage "I failed!" alwaysFails
  catch _ => throwError "I *really* failed."

#guard_msgs in
#eval doesntFail
