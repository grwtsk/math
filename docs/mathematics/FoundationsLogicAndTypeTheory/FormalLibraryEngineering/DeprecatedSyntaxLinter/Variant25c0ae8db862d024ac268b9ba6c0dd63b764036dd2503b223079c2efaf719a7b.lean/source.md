# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeprecatedSyntaxLinter.Variant25c0ae8db862d024ac268b9ba6c0dd63b764036dd2503b223079c2efaf719a7b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aa821f6ca06c2253274409bfe625baf3157018d0` · SHA-256 `8cbd54b1e6a9f035b65d70a22760c76cc6172230e73204d938fe50a0914eeeea`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cases.Variantc855d427b1713dd87e381e7db7b39e50ab1f20bfc57914f8fe5f14444523259d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c855d427b1713dd87e381e7db7b39e50ab1f20bfc57914f8fe5f14444523259d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Cases.Variantc855d427b1713dd87e381e7db7b39e50ab1f20bfc57914f8fe5f14444523259d","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c855d427b1713dd87e381e7db7b39e50ab1f20bfc57914f8fe5f14444523259d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/DeprecatedSyntaxLinter.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.Cases
import Mathlib.Tactic.Linter.DeprecatedSyntaxLinter


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cases.Variantc855d427b1713dd87e381e7db7b39e50ab1f20bfc57914f8fe5f14444523259d

set_option linter.style.refine true
/--
warning:
The `refine'` tactic is discouraged: please strongly consider using `refine` or `apply` instead.
note: this linter can be disabled with `set_option linter.style.refine false`
---
warning:
The `refine'` tactic is discouraged: please strongly consider using `refine` or `apply` instead.
note: this linter can be disabled with `set_option linter.style.refine false`
-/
#guard_msgs in
example : True := by
  refine' (by refine' .intro)

set_option linter.style.refine false
-- This is quiet because `linter.style.refine` is now false
example : True := by
  refine' (by refine' .intro)

set_option linter.style.refine false in
-- This is quiet because `linter.style.refine` is now false, even using `in`.
example : True := by
  refine' (by refine' .intro)

set_option linter.style.cases true
/--
warning: The `cases'` tactic is discouraged: please strongly consider using `obtain`, `rcases` or `cases` instead.
note: this linter can be disabled with `set_option linter.style.cases false`
---
warning: The `cases'` tactic is discouraged: please strongly consider using `obtain`, `rcases` or `cases` instead.
note: this linter can be disabled with `set_option linter.style.cases false`
-/
#guard_msgs in
example (a : (True ∨ True) ∨ (True ∨ True)): True := by
  cases' a with b b <;> cases' b <;> trivial

set_option linter.style.cases false
-- This is quiet because `linter.style.cases` is now false
example (a : (True ∨ True) ∨ (True ∨ True)): True := by
  cases' a with b b <;> cases' b <;> trivial

set_option linter.style.admit true
/--
warning: declaration uses 'sorry'
---
warning: The `admit` tactic is discouraged: please strongly consider using the synonymous `sorry` instead.
note: this linter can be disabled with `set_option linter.style.admit false`
-/
#guard_msgs in
example : False := by admit

/--
warning: declaration uses 'sorry'
---
warning: The `admit` tactic is discouraged: please strongly consider using the synonymous `sorry` instead.
note: this linter can be disabled with `set_option linter.style.admit false`
---
warning: The `admit` tactic is discouraged: please strongly consider using the synonymous `sorry` instead.
note: this linter can be disabled with `set_option linter.style.admit false`
---
warning: The `admit` tactic is discouraged: please strongly consider using the synonymous `sorry` instead.
note: this linter can be disabled with `set_option linter.style.admit false`
---
warning: The `admit` tactic is discouraged: please strongly consider using the synonymous `sorry` instead.
note: this linter can be disabled with `set_option linter.style.admit false`
-/
#guard_msgs in
example : True ∧ True := by
  have : True := by
    · admit
  let foo : Nat := by admit
  refine ⟨?_, ?_⟩
  · admit
  · admit

set_option linter.style.admit false
/--
warning: declaration uses 'sorry'
-/
#guard_msgs in
example : False := by admit

set_option linter.style.maxHeartbeats true
/--
warning: Please, add a comment explaining the need for modifying the maxHeartbeat limit, as in
set_option maxHeartbeats 10 in
-- reason for change
...
 note: this linter can be disabled with `set_option linter.style.maxHeartbeats false`
-/
#guard_msgs in
set_option maxHeartbeats 10 in
section

/--
warning: Please, add a comment explaining the need for modifying the maxHeartbeat limit, as in
set_option maxHeartbeats 10 in
-- reason for change
...
 note: this linter can be disabled with `set_option linter.style.maxHeartbeats false`
-/
#guard_msgs in
set_option maxHeartbeats 10 in
set_option maxHeartbeats 10 in
section

/--
warning: Please, add a comment explaining the need for modifying the maxHeartbeat limit, as in
set_option synthInstance.maxHeartbeats 10 in
-- reason for change
...
 note: this linter can be disabled with `set_option linter.style.maxHeartbeats false`
-/
#guard_msgs in
set_option synthInstance.maxHeartbeats 10 in
section

/--
warning: Please, add a comment explaining the need for modifying the maxHeartbeat limit, as in
set_option maxHeartbeats 10 in
-- reason for change
...
 note: this linter can be disabled with `set_option linter.style.maxHeartbeats false`
-/
#guard_msgs in
set_option maxHeartbeats 10 in
set_option synthInstance.maxHeartbeats 10 in
/- The comment here is not enough to silence the linter:
the *first* `maxHeartbeats` option should have a comment. -/
section

#guard_msgs in
set_option maxHeartbeats 10 in
/- The comment here is enough to silence the linter:
the *first* `maxHeartbeats` has a comment, to remaining ones are free to be commentless. -/
set_option synthInstance.maxHeartbeats 10 in
section

#guard_msgs in
set_option maxHeartbeats 10 in
-- no reason, but has a comment
section

/--
warning: Please, add a comment explaining the need for modifying the maxHeartbeat limit, as in
set_option maxHeartbeats 10 in
-- reason for change
...
 note: this linter can be disabled with `set_option linter.style.maxHeartbeats false`
-/
#guard_msgs in
set_option maxHeartbeats 10 in
/-- Doc-strings for the following command do not silence the linter. -/
example : True := trivial
```
