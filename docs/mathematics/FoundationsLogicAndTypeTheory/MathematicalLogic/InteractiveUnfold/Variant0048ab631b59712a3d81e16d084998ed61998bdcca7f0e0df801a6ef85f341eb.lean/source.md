# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.InteractiveUnfold.Variant0048ab631b59712a3d81e16d084998ed61998bdcca7f0e0df801a6ef85f341eb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f3be6bb3c72dcb7be15e089b3bb05ff2b4d8be5c` · SHA-256 `ad4351d3a014191f6d873571cce81357edc454e7e72d4dde927c2519bbd9a75f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SourceUnit.Variant458fea062678add4e435fdb307acfc75b2568e7618ee5aec98219b806a0784a2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"458fea062678add4e435fdb307acfc75b2568e7618ee5aec98219b806a0784a2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.SourceUnit.Variant458fea062678add4e435fdb307acfc75b2568e7618ee5aec98219b806a0784a2","mathematical_subject":"Logic.Foundations","original_sha256":"458fea062678add4e435fdb307acfc75b2568e7618ee5aec98219b806a0784a2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/interactiveUnfold.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jovan Gerbscheid. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jovan Gerbscheid
-/
import Mathlib

/-!
The `unfold?` tactic is used interactively, so it is tricky to test directly.
In order to test it, we use the `#unfold?` command.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SourceUnit.Variant458fea062678add4e435fdb307acfc75b2568e7618ee5aec98219b806a0784a2

/--
info: Unfolds for 0:
· ↑0
· ↑0
· Rat.ofInt ↑0
-/
#guard_msgs in
#unfold? (0 : Rat)

/--
info: Unfolds for -42:
· Int.negOfNat 42
· Int.negSucc 41
-/
#guard_msgs in
#unfold? -42

-- Rat.mk is private, so it doesn't show up here
/--
info: Unfolds for 42:
· ↑42
· ↑42
· Rat.ofInt ↑42
-/
#guard_msgs in
#unfold? (42 : ℚ)

/--
info: Unfolds for 1 + 1:
· Nat.add 1 1
· 2
-/
#guard_msgs in
#unfold? 1 + 1

/--
info: Unfolds for 5 / 3:
· Nat.div 5 3
· 1
-/
#guard_msgs in
#unfold? 5 / 3

/--
info: Unfolds for 1 + 1:
· Ordinal.type (Sum.Lex EmptyRelation EmptyRelation)
· ⟦{ α := PUnit.{u_1 + 1} ⊕ PUnit.{u_1 + 1}, r := Sum.Lex EmptyRelation EmptyRelation, wo := ⋯ }⟧
· Quot.mk ⇑Ordinal.isEquivalent
  { α := PUnit.{u_1 + 1} ⊕ PUnit.{u_1 + 1}, r := Sum.Lex EmptyRelation EmptyRelation, wo := ⋯ }
-/
#guard_msgs in
#unfold? (1 : Ordinal) + 1

/--
info: Unfolds for 3 ∈ {1, 2, 3}:
· {1, 2, 3}.Mem 3
· {1, 2, 3} 3
· Set.insert 1 {2, 3} 3
· {b | b = 1 ∨ b ∈ {2, 3}} 3
· 3 = 1 ∨ 3 ∈ {2, 3}
-/
#guard_msgs in
#unfold? 3 ∈ ({1, 2, 3} : Set ℕ)

/--
info: Unfolds for Function.Injective fun x => x:
· ∀ ⦃a₁ a₂ : ℕ⦄, (fun x => x) a₁ = (fun x => x) a₂ → a₁ = a₂
-/
#guard_msgs in
#unfold? Function.Injective (fun x : Nat => x)


variable (A B : Set Nat) (n : Nat)

/--
info: Unfolds for 1 ∈ A ∪ B:
· (A ∪ B).Mem 1
· (A ∪ B) 1
· A.union B 1
· {a | a ∈ A ∨ a ∈ B} 1
· 1 ∈ A ∨ 1 ∈ B
-/
#guard_msgs in
#unfold? 1 ∈ A ∪ B

/--
info: Unfolds for (fun x => x) (1 + 1):
· 1 + 1
· Nat.add 1 1
· 2
-/
#guard_msgs in
#unfold? (fun x => x) (1 + 1)

/--
info: Unfolds for fun x => id x:
· id
· fun a => a
-/
#guard_msgs in
#unfold? fun x => id x
```
