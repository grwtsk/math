# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Subsingleton.Variant84370a3585ccd2ce7c231936bcb007b3ff2b98e367338c6cfeed8f10592dbd12

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `450ed8b71168cfa24a41ddd0579c170b97674a6e` · SHA-256 `7aeb9cd63bad4716f8c4d3cc74f36f642e90044a8273424a24896596808367be`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.TestSorry.Variantda777b2341e024f8b9984d3b06cfb34969fd2397a95d3b1bae2afcb136919af1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"da777b2341e024f8b9984d3b06cfb34969fd2397a95d3b1bae2afcb136919af1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.TestSorry.Variantda777b2341e024f8b9984d3b06cfb34969fd2397a95d3b1bae2afcb136919af1","mathematical_subject":"Logic.Foundations","original_sha256":"da777b2341e024f8b9984d3b06cfb34969fd2397a95d3b1bae2afcb136919af1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/Subsingleton.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.Subsingleton


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.TestSorry.Variantda777b2341e024f8b9984d3b06cfb34969fd2397a95d3b1bae2afcb136919af1

private axiom test_sorry : ∀ {α}, α

/-!
Basic subsingleton instances
-/
example (x y : Unit) : x = y := by subsingleton

example (x y : Empty) : x = y := by subsingleton

example {α : Type} [Subsingleton α] (x y : α) : x = y := by subsingleton

/-!
Proof irrelevance
-/

example (p : Prop) (h h' : p) : h = h' := by subsingleton

/-!
HEq proof irrelevance
-/
example (p q : Prop) (h : p) (h' : q) : HEq h h' := by subsingleton

/-!
Does intros.
-/
example : ∀ {α : Type} [Subsingleton α] (x y : α), x = y := by subsingleton

/-!
Does intros, and turns HEq into Eq if possible.
-/
example : ∀ {α : Type} [Subsingleton α] (x y : α), HEq x y := by subsingleton

section AvoidSurprise

/--
error: tactic 'subsingleton' could not prove equality since it could not synthesize
  Subsingleton α
-/
#guard_msgs in
example (α : Sort _) (x y : α) : x = y := by subsingleton

instance (α : Sort _) (x y : α) : Decidable (x = y) := isTrue (Subsingleton.elim _ _)

/--
error: tactic 'subsingleton' could not prove equality since it could not synthesize
  Subsingleton α
-/
#guard_msgs in
instance (α : Sort _) (x y : α) : Decidable (x = y) := isTrue (by subsingleton)

end AvoidSurprise

/-!
Handles `BEq` instances if there are `LawfulBEq` instances for each.
-/
example (α : Type) (inst1 inst2 : BEq α) [@LawfulBEq α inst1] [@LawfulBEq α inst2] :
    inst1 = inst2 := by
  subsingleton

/-!
`subsingleton` suggests `rfl` when it fails
-/
/-- info: Try this: rfl -/
#guard_msgs in
example : 1 + 1 = 2 := by
  subsingleton

/-!
`subsingleton` does not itself try `rfl` if it's not in error recovery mode
-/
example : 1 + 1 = 2 := by
  try subsingleton
  guard_target =ₛ 1 + 1 = 2
  rfl

/-- info: Try this: (intros; rfl) -/
#guard_msgs in
example : ∀ (n : Nat), n = n := by
  subsingleton

/-!
Passing subsingleton instances to the tactic.
-/
example {α : Type} (x y : α) : x = y := by
  subsingleton [(test_sorry : Subsingleton α)]

/-!
No linting yet for unused instances.
-/
#guard_msgs in
example {α : Type} (x y : α) : x = y := by
  subsingleton [(test_sorry : Subsingleton α), (test_sorry : Subsingleton α)]

/-!
Abstraction, with specified universe levels.
-/
example {α : Type} (x y : α) : x = y := by
  subsingleton [(test_sorry : Subsingleton.{1} _)]

/-!
Abstraction, with unspecified universe levels.
-/
#guard_msgs in
example {α : Type} (x y : α) : x = y := by
  subsingleton [(test_sorry : Subsingleton _)]

/-!
Not an instance.
-/
/--
error: Not an instance. Term has type
  Bool
-/
#guard_msgs in
example {α : Type} (x y : α) : x = y := by
  subsingleton [true]

/-!
When abstracting, metavariables become instance implicit if they're for classes.
-/
example {α : Type} [BEq α] (f : BEq α → Subsingleton α) (x y : α) : x = y := by
  subsingleton [f _]

/-!
This too abstracts some metavariables and ensures that `BEq` is instance implicit.
-/
example {α : Type} [BEq α] (f : ∀ {β : Type} [BEq β], Subsingleton β) (x y : α) : x = y := by
  subsingleton [f]

/-!
The same, but now there's a universe level metavariable.
-/
def fdef : ∀ {β : Type _} [BEq β], Subsingleton β := test_sorry

example {α : Type} [BEq α] (x y : α) : x = y := by
  subsingleton [fdef]
```
