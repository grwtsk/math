# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CountHeartbeats.Variantf47699adecd57703ddc1ad4fc735f3879c4334db63e8073447280eda135f4bcf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f1c503ca916ff3d2cbaf87162e99a2e83b9ed7e4` · SHA-256 `102deb1a3952e5e04f473a8340484213a2073477d451e6fb93afb862c2620a6b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CountHeartbeatsCountsAsyncTheoremBody.Varianteea762723abb7abdd247191e7e05c67eac8d52a0eeb253b160702b6ef9234b9f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"eea762723abb7abdd247191e7e05c67eac8d52a0eeb253b160702b6ef9234b9f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CountHeartbeatsCountsAsyncTheoremBody.Varianteea762723abb7abdd247191e7e05c67eac8d52a0eeb253b160702b6ef9234b9f","mathematical_subject":"Foundations.Unclassified","original_sha256":"eea762723abb7abdd247191e7e05c67eac8d52a0eeb253b160702b6ef9234b9f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/MathlibTest/Util/CountHeartbeats.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Util.CountHeartbeats
import Mathlib.Util.SleepHeartbeats


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CountHeartbeatsCountsAsyncTheoremBody.Varianteea762723abb7abdd247191e7e05c67eac8d52a0eeb253b160702b6ef9234b9f

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

-- The `countHeartbeats` linter and its option-setting `#count_heartbeats` notation were deprecated
-- (lean4, 2026-07-30) in favour of `#count_heartbeats in`, so the linter-specific tests have been
-- retired. This preserves the non-trivial-count coverage via `#count_heartbeats in`, which is
-- exactly what the linter invoked internally for each declaration.
/-- info: Used approximately 1000 heartbeats, which is less than the current maximum of 200000. -/
#guard_msgs in
set_option linter.unusedTactic false in
#count_heartbeats approximately in
example : True := by
  sleep_heartbeats 1000
  trivial

-- With `Elab.async` (the default), `theorem` bodies are elaborated in a separate task, and their
-- heartbeats were not counted; check they are. Note this needs a `theorem`, not an `example`:
-- `example` and `def` bodies are elaborated synchronously and did not exhibit the bug.
/-- info: Used approximately 5000 heartbeats, which is less than the current maximum of 200000. -/
#guard_msgs in
set_option linter.unusedTactic false in
#count_heartbeats approximately in
theorem countHeartbeatsCountsAsyncTheoremBody : True := by
  sleep_heartbeats 5000
  trivial
```
