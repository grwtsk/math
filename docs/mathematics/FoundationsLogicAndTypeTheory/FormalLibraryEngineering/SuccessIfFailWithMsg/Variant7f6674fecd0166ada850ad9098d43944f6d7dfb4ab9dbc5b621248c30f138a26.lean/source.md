# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SuccessIfFailWithMsg.Variant7f6674fecd0166ada850ad9098d43944f6d7dfb4ab9dbc5b621248c30f138a26

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `319450ecac42b5e88841c800bc231723e3173eb5` · SHA-256 `403cbe39abec78b39ca6f9bad09c6e2ce9e5706fbb24752cb27fbd11005abaf6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Err.Variant717bbf6262a321daff7501fd1eb0c6e6a7fcff35decada130f1f5df3f7f59485","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"717bbf6262a321daff7501fd1eb0c6e6a7fcff35decada130f1f5df3f7f59485","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Err.Variant717bbf6262a321daff7501fd1eb0c6e6a7fcff35decada130f1f5df3f7f59485","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"717bbf6262a321daff7501fd1eb0c6e6a7fcff35decada130f1f5df3f7f59485","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/test/success_if_fail_with_msg.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.SuccessIfFailWithMsg


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Err.Variant717bbf6262a321daff7501fd1eb0c6e6a7fcff35decada130f1f5df3f7f59485

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

def err (t : Bool) := if t then
  "tactic 'rewrite' failed, equality or iff proof expected
  n ≤ Nat.succ n
n : Nat
⊢ True"
  else
    "not that message
⊢ True"

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

#eval doesntFail
```
