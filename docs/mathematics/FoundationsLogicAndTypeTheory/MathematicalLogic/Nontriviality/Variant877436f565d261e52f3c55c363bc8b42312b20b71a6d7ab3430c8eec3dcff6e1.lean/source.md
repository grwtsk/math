# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Nontriviality.Variant877436f565d261e52f3c55c363bc8b42312b20b71a6d7ab3430c8eec3dcff6e1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `83d69c2ddb6b89634c402b8ac053507c56d8432e` · SHA-256 `b416c72cd13cae1700dd8e47e10eb0a70f1b5c91cf184c3f0ad86b7cb0250dc6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Foo.Varianteeaac8b047d866282e726a50b39b5a4616942cc803bd177b80f5d2c5516828f8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"eeaac8b047d866282e726a50b39b5a4616942cc803bd177b80f5d2c5516828f8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.Foo.Varianteeaac8b047d866282e726a50b39b5a4616942cc803bd177b80f5d2c5516828f8","mathematical_subject":"Logic.Foundations","original_sha256":"eeaac8b047d866282e726a50b39b5a4616942cc803bd177b80f5d2c5516828f8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/nontriviality.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.Nontriviality
import Mathlib.Algebra.Order.Ring.Defs
import Mathlib.Algebra.Ring.Nat


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Foo.Varianteeaac8b047d866282e726a50b39b5a4616942cc803bd177b80f5d2c5516828f8

private axiom test_sorry : ∀ {α}, α
/-! ### Test `nontriviality` with inequality hypotheses -/

set_option autoImplicit true

example {R : Type} [Ring R] [PartialOrder R] [IsOrderedRing R] {a : R} (h : 0 < a) : 0 < a := by
  nontriviality
  rename_i inst; guard_hyp inst : Nontrivial R
  assumption

/-! ### Test `nontriviality` with equality or non-strict inequality goals -/


example {R : Type} [CommRing R] {r s : R} : r * s = s * r := by
  nontriviality
  rename_i inst; guard_hyp inst : Nontrivial R
  apply mul_comm

/-! ### Test deducing `nontriviality` by instance search -/

example {R : Type} [Ring R] [PartialOrder R] [IsOrderedRing R] : 0 ≤ (1 : R) := by
  nontriviality R
  rename_i inst; guard_hyp inst : Nontrivial R
  exact zero_le_one

example {R : Type} [Ring R] [PartialOrder R] [IsOrderedRing R] : 0 ≤ (1 : R) := by
  nontriviality ℕ
  rename_i inst; guard_hyp inst : Nontrivial ℕ
  exact zero_le_one

example {R : Type} [Ring R] [PartialOrder R] [IsOrderedRing R] : 0 ≤ (2 : R) := by
  fail_if_success nontriviality PUnit
  exact zero_le_two

example {R : Type} [Ring R] [PartialOrder R] [IsOrderedRing R] {a : R} (_ : 0 < a) : 2 ∣ 4 := by
  nontriviality R
  rename_i inst; guard_hyp inst : Nontrivial R
  decide

/-! Test using `@[nontriviality]` lemmas in `nontriviality` and custom `simp` lemmas -/


def EmptyOrUniv {α : Type _} (s : Set α) : Prop :=
  s = ∅ ∨ s = Set.univ

theorem Subsingleton.set_empty_or_univ {α} [Subsingleton α] (s : Set α) : s = ∅ ∨ s = Set.univ :=
test_sorry

theorem Subsingleton.set_empty_or_univ' {α} [Subsingleton α] (s : Set α) : EmptyOrUniv s :=
  Subsingleton.set_empty_or_univ s

theorem Set.empty_union (a : Set α) : ∅ ∪ a = a := test_sorry

example {α : Type _} (s : Set α) (hs : s = ∅ ∪ Set.univ) : EmptyOrUniv s := by
  fail_if_success nontriviality α
  rw [Set.empty_union] at hs
  exact Or.inr hs

section

attribute [local nontriviality] Subsingleton.set_empty_or_univ

example {α : Type _} (s : Set α) (hs : s = ∅ ∪ Set.univ) : EmptyOrUniv s := by
  fail_if_success nontriviality α
  nontriviality α using Subsingleton.set_empty_or_univ'
  rw [Set.empty_union] at hs
  exact Or.inr hs

end

attribute [local nontriviality] Subsingleton.set_empty_or_univ'

example {α : Type _} (s : Set α) (hs : s = ∅ ∪ Set.univ) : EmptyOrUniv s := by
  nontriviality α
  rw [Set.empty_union] at hs
  exact Or.inr hs

/-! Test with nonatomic type argument -/


example (α : ℕ → Type) (a b : α 0) (h : a = b) : a = b := by
  nontriviality α 0 using Nat.zero_lt_one
  rename_i inst; guard_hyp inst : Nontrivial (α 0)
  exact h

class Foo (α : Type) : Prop
instance : Foo α := {}

example (α : Type) : Foo α := by nontriviality α; infer_instance

-- simulate the type of MvPolynomial
def R : Type u → Type v → Sort (max (u+1) (v+1)) := test_sorry
noncomputable instance : CommRing (R c d) := test_sorry

example (p : R PUnit.{u+1} PUnit.{v+1}) : p = p := by
  nontriviality
  exact test_sorry
```
