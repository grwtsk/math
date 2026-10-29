-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.XY.Variant7084e6268728cdfa64815fb9bedad4da5842795793451fc337dad5a9ad91377d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7084e6268728cdfa64815fb9bedad4da5842795793451fc337dad5a9ad91377d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.XY.Variant7084e6268728cdfa64815fb9bedad4da5842795793451fc337dad5a9ad91377d","mathematical_subject":"Foundations.Unclassified","original_sha256":"7084e6268728cdfa64815fb9bedad4da5842795793451fc337dad5a9ad91377d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/CountHeartbeats.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["scope_underflow","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
import Mathlib.Util.CountHeartbeats
import Mathlib.Util.SleepHeartbeats


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.XY.Variant7084e6268728cdfa64815fb9bedad4da5842795793451fc337dad5a9ad91377d

/-- info: Used approximately 0 heartbeats, which is less than the current maximum of 200000. -/
#guard_msgs in
#count_heartbeats approximately in
example (a : Nat) : a = a := rfl

/-- info: Used approximately 0 heartbeats, which is less than the minimum of 200000. -/
#guard_msgs in
guard_min_heartbeats approximately in
example (a : Nat) : a = a := rfl

/-- info: Used approximately 0 heartbeats, which is less than the minimum of 2000. -/
#guard_msgs in
guard_min_heartbeats approximately 2000 in
example (a : Nat) : a = a := rfl

guard_min_heartbeats approximately 1 in
example (a : Nat) : a = a := rfl

/-!
# Tests for the `countHeartbeats` linter
-/

section using_count_heartbeats

-- sets the `countHeartbeats` both linter option and the `approximate` option to `true`
#count_heartbeats approximately

mutual -- mutual declarations get ignored
theorem XY : True := trivial
end

/-- info: Used approximately 1000 heartbeats, which is less than the current maximum of 200000. -/
#guard_msgs in
-- we use two nested `set_option ... in` to test that the `heartBeats` linter enters both.
set_option linter.unusedTactic false in
set_option linter.unusedTactic false in
example : True := by
  sleep_heartbeats 1000 -- on top of these heartbeats, a few more are used by the rest of the proof
  trivial

/-- info: Used approximately 0 heartbeats, which is less than the current maximum of 200000. -/
#guard_msgs in
example : True := trivial

/-- info: 'YX' used approximately 0 heartbeats, which is less than the current maximum of 200000. -/
#guard_msgs in
set_option linter.unusedTactic false in
set_option linter.unusedTactic false in
theorem YX : True := trivial

end using_count_heartbeats

section using_linter_option

set_option linter.countHeartbeats true
set_option linter.countHeartbeatsApprox true

mutual -- mutual declarations get ignored
theorem XY' : True := trivial
end

/-- info: Used approximately 0 heartbeats, which is less than the current maximum of 200000. -/
#guard_msgs in
-- we use two nested `set_option ... in` to test that the `heartBeats` linter enters both.
set_option linter.unusedTactic false in
set_option linter.unusedTactic false in
example : True := trivial

/-- info: Used approximately 0 heartbeats, which is less than the current maximum of 200000. -/
#guard_msgs in
example : True := trivial

/--
info: 'YX'' used approximately 0 heartbeats, which is less than the current maximum of 200000.
-/
#guard_msgs in
set_option linter.unusedTactic false in
set_option linter.unusedTactic false in
theorem YX' : True := trivial

end using_linter_option
