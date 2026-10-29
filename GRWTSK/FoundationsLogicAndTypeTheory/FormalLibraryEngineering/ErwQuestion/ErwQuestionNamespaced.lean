-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.F.Variant33d96829e5f89ac9302900db7d8f1ba2a6226f1a02e5f34582637503b780d80f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"33d96829e5f89ac9302900db7d8f1ba2a6226f1a02e5f34582637503b780d80f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.F.Variant33d96829e5f89ac9302900db7d8f1ba2a6226f1a02e5f34582637503b780d80f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"33d96829e5f89ac9302900db7d8f1ba2a6226f1a02e5f34582637503b780d80f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/ErwQuestion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.ErwQuestion


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.F.Variant33d96829e5f89ac9302900db7d8f1ba2a6226f1a02e5f34582637503b780d80f

def f (x : Nat) := x + 1
def a := 37
theorem f_a : f a = 38 := rfl
def b := a

-- make sure that `erw'` is noisy, so that it gets picked up by CI
/-- info: Debugging `erw?` -/
#guard_msgs in
example : f 37 = 38 := by
  erw? [f]

/--
error: tactic 'rewrite' failed, did not find instance of the pattern in the target expression
  f a
⊢ f b = 38
-/
#guard_msgs in
example : f b = 38 := by rw [f_a]

example : f b = 38 := by erw [f_a]

/--
info: Debugging `erw?`
---
info: ❌️ at reducible transparency,
  b
and
  a
are not defeq, but they are at default transparency.
-/
#guard_msgs in
example : f b = 38 := by erw? [f_a]

set_option tactic.erw?.verbose true in
/--
info: Debugging `erw?`
---
info: ❌️ at reducible transparency,
  b
and
  a
are not defeq, but they are at default transparency.
---
info: Expression appearing in target:
  f b = 38

Expression from `erw`: f a = 38

❌️ at reducible transparency,
  f b = 38
and
  f a = 38
are not defeq.

✅️ at reducible transparency,
  38
and
  38
are defeq.

❌️ at reducible transparency,
  Eq (f b)
and
  Eq (f a)
are not defeq.

❌️ at reducible transparency,
  f b
and
  f a
are not defeq.

❌️ at reducible transparency, b and a are not defeq.
-/
#guard_msgs in
example : f b = 38 := by erw? [f_a]
