# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ByContra.Variant4989c7d5f586c015448c999c105074926caf33a11bd261905de7a64cb7f0ebc6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fae7894fd965cfaad206ce372941239430d8af25` · SHA-256 `e88c8cf937d35cf8c21c82481f2a5f76094a82376b496ac4264b5389da7b4a1c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.NonDecid.Variantf69e8b17ba87ed458ad3d60453971cde94db8e455d863ac808a7bfab158324af","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f69e8b17ba87ed458ad3d60453971cde94db8e455d863ac808a7bfab158324af","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.NonDecid.Variantf69e8b17ba87ed458ad3d60453971cde94db8e455d863ac808a7bfab158324af","mathematical_subject":"Logic.Foundations","original_sha256":"f69e8b17ba87ed458ad3d60453971cde94db8e455d863ac808a7bfab158324af","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/BatteriesTest/by_contra.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Batteries.Tactic.Basic



namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.NonDecid.Variantf69e8b17ba87ed458ad3d60453971cde94db8e455d863ac808a7bfab158324af

set_option linter.defProp false in
private def nonDecid (P : Prop) (x : P) : P := by
  by_contra h
  guard_hyp h : ¬P
  guard_target = False
  exact h x

set_option linter.defProp false in
private def decid (P : Prop) [Decidable P] (x : P) : P := by
  by_contra h
  guard_hyp h : ¬P
  guard_target = False
  exact h x

example (P : Prop) [Decidable P] : nonDecid P = decid P := by
  delta nonDecid decid
  guard_target =ₛ
    (fun x : P => Classical.byContradiction fun h => h x) =
    (fun x : P => Decidable.byContradiction fun h => h x)
  rfl

example (P : Prop) : P → P := by
  by_contra
  guard_hyp this : ¬(P → P)
  exact ‹¬(P → P)› id

example (P : Prop) : {_ : P} → P := by
  by_contra
  guard_hyp this : ¬(P → P)
  exact ‹¬(P → P)› id

/-!
https://github.com/leanprover-community/batteries/issues/1196:

Previously the second error had a `Decidable True` subgoal, which only appeared in the presence of
the first unclosed goal.
-/
/--
error: unsolved goals
case left
⊢ True
---
error: unsolved goals
case right
this : ¬True
⊢ False
-/
#guard_msgs in
example : True ∧ True := by
  constructor
  · skip
  · by_contra

example (n : Nat) (h : n ≠ 0) : n ≠ 0 := by
  by_contra rfl
  simp only [Ne, not_true_eq_false] at h

example (p q : Prop) (hnp : ¬ p) : ¬ (p ∧ q) := by
  by_contra ⟨hp, _⟩
  exact hnp hp

example (p q : Prop) (hnp : ¬ p) (hnq : ¬ q) : ¬ (p ∨ q) := by
  by_contra hp | hq
  · exact hnp hp
  · exact hnq hq

/--
error: unsolved goals
n : Nat
this : n ≠ 0
⊢ False
-/
#guard_msgs in
example (n : Nat) : n = 0 := by
  by_contra : n ≠ 0

/--
error: unsolved goals
n : Nat
h_ne : n ≠ 0
⊢ False
-/
#guard_msgs in
example (n : Nat) : n = 0 := by
  by_contra h_ne : n ≠ 0
```
