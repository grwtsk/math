# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Basic.Variantd2cc264ca60c3accfecc93176ff2df3f9ebcfdb81f04e2263cdf10480dacf9b0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1c7bd9f068426e9aed5c1e9dd75fb78f3cd976f1` · SHA-256 `5849207a124f4fc34b0604069a39767e9328623075ad13495a18297a33dc8cf4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ToList.Variantcb15912e098464fb099ad48742610a41a2c087aad2525d71c749f72985970d6c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cb15912e098464fb099ad48742610a41a2c087aad2525d71c749f72985970d6c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ToList.Variantcb15912e098464fb099ad48742610a41a2c087aad2525d71c749f72985970d6c","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"cb15912e098464fb099ad48742610a41a2c087aad2525d71c749f72985970d6c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/Multiset/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2015 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

public import Mathlib.Data.Multiset.ZeroCons

/-!
# Basic results on multisets

-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ToList.Variantcb15912e098464fb099ad48742610a41a2c087aad2525d71c749f72985970d6c

@[expose] public section

-- No algebra should be required
assert_not_exists Monoid

universe v

open List Subtype Nat Function

variable {α : Type*}

namespace Multiset

/-! ### `Multiset.toList` -/

section ToList

/-- Produces a list of the elements in the multiset using choice. -/
noncomputable def toList (s : Multiset α) :=
  s.out

@[simp, norm_cast]
theorem coe_toList (s : Multiset α) : (s.toList : Multiset α) = s :=
  s.out_eq'

@[simp]
theorem toList_eq_nil {s : Multiset α} : s.toList = [] ↔ s = 0 := by
  rw [← coe_eq_zero, coe_toList]

theorem empty_toList {s : Multiset α} : s.toList.isEmpty ↔ s = 0 := by simp

@[simp]
theorem toList_zero : (Multiset.toList 0 : List α) = [] :=
  toList_eq_nil.mpr rfl

@[simp]
theorem mem_toList {a : α} {s : Multiset α} : a ∈ s.toList ↔ a ∈ s := by
  rw [← mem_coe, coe_toList]

@[simp]
theorem toList_eq_singleton_iff {a : α} {m : Multiset α} : m.toList = [a] ↔ m = {a} := by
  rw [← perm_singleton, ← coe_eq_coe, coe_toList, coe_singleton]

@[simp]
theorem toList_singleton (a : α) : ({a} : Multiset α).toList = [a] :=
  Multiset.toList_eq_singleton_iff.2 rfl

@[simp]
theorem length_toList (s : Multiset α) : s.toList.length = card s := by
  rw [← coe_card, coe_toList]

end ToList

/-! ### Induction principles -/

/-- The strong induction principle for multisets. -/
@[elab_as_elim]
def strongInductionOn {p : Multiset α → Sort*} (s : Multiset α) (ih : ∀ s, (∀ t < s, p t) → p s) :
    p s :=
    (ih s) fun t _h =>
      strongInductionOn t ih
termination_by card s
decreasing_by exact card_lt_card _h

theorem strongInductionOn_eq {p : Multiset α → Sort*} (s : Multiset α) (H) :
    @strongInductionOn _ p s H = H s fun t _h => @strongInductionOn _ p t H := by
  rw [strongInductionOn]

@[elab_as_elim]
theorem case_strongInductionOn {p : Multiset α → Prop} (s : Multiset α) (h₀ : p 0)
    (h₁ : ∀ a s, (∀ t ≤ s, p t) → p (a ::ₘ s)) : p s :=
  Multiset.strongInductionOn s fun s =>
    Multiset.induction_on s (fun _ => h₀) fun _a _s _ ih =>
      (h₁ _ _) fun _t h => ih _ <| lt_of_le_of_lt h <| lt_cons_self _ _

/-- Suppose that, given that `p t` can be defined on all supersets of `s` of cardinality less than
`n`, one knows how to define `p s`. Then one can inductively define `p s` for all multisets `s` of
cardinality less than `n`, starting from multisets of card `n` and iterating. This
can be used either to define data, or to prove properties. -/
def strongDownwardInduction {p : Multiset α → Sort*} {n : ℕ}
    (H : ∀ t₁, (∀ {t₂ : Multiset α}, card t₂ ≤ n → t₁ < t₂ → p t₂) → card t₁ ≤ n → p t₁)
    (s : Multiset α) :
    card s ≤ n → p s :=
  H s fun {t} ht _h =>
    strongDownwardInduction H t ht
termination_by n - card s
decreasing_by have := (card_lt_card _h); lia

theorem strongDownwardInduction_eq {p : Multiset α → Sort*} {n : ℕ}
    (H : ∀ t₁, (∀ {t₂ : Multiset α}, card t₂ ≤ n → t₁ < t₂ → p t₂) → card t₁ ≤ n → p t₁)
    (s : Multiset α) :
    strongDownwardInduction H s = H s fun ht _hst => strongDownwardInduction H _ ht := by
  rw [strongDownwardInduction]

/-- Analogue of `strongDownwardInduction` with order of arguments swapped. -/
@[elab_as_elim]
def strongDownwardInductionOn {p : Multiset α → Sort*} {n : ℕ} :
    ∀ s : Multiset α,
      (∀ t₁, (∀ {t₂ : Multiset α}, card t₂ ≤ n → t₁ < t₂ → p t₂) → card t₁ ≤ n → p t₁) →
        card s ≤ n → p s :=
  fun s H => strongDownwardInduction H s

theorem strongDownwardInductionOn_eq {p : Multiset α → Sort*} (s : Multiset α) {n : ℕ}
    (H : ∀ t₁, (∀ {t₂ : Multiset α}, card t₂ ≤ n → t₁ < t₂ → p t₂) → card t₁ ≤ n → p t₁) :
    s.strongDownwardInductionOn H = H s fun {t} ht _h => t.strongDownwardInductionOn H ht := by
  dsimp only [strongDownwardInductionOn]
  rw [strongDownwardInduction]

section Choose

variable (p : α → Prop) [DecidablePred p] (l : Multiset α)

/-- Given a proof `hp` that there exists a unique `a ∈ l` such that `p a`, `chooseX p l hp` returns
that `a` together with proofs of `a ∈ l` and `p a`. -/
def chooseX : ∀ _hp : ∃! a, a ∈ l ∧ p a, { a // a ∈ l ∧ p a } :=
  Quotient.recOn l (fun l' ex_unique => List.chooseX p l' (ExistsUnique.exists ex_unique))
    (by
      intro a b _
      funext hp
      suffices all_equal : ∀ x y : { t // t ∈ b ∧ p t }, x = y by
        apply all_equal
      rintro ⟨x, px⟩ ⟨y, py⟩
      rcases hp with ⟨z, ⟨_z_mem_l, _pz⟩, z_unique⟩
      congr
      calc
        x = z := z_unique x px
        _ = y := (z_unique y py).symm)

/-- Given a proof `hp` that there exists a unique `a ∈ l` such that `p a`, `choose p l hp` returns
that `a`. -/
def choose (hp : ∃! a, a ∈ l ∧ p a) : α :=
  chooseX p l hp

theorem choose_spec (hp : ∃! a, a ∈ l ∧ p a) : choose p l hp ∈ l ∧ p (choose p l hp) :=
  (chooseX p l hp).property

theorem choose_mem (hp : ∃! a, a ∈ l ∧ p a) : choose p l hp ∈ l :=
  (choose_spec _ _ _).1

theorem choose_property (hp : ∃! a, a ∈ l ∧ p a) : p (choose p l hp) :=
  (choose_spec _ _ _).2

theorem choose_eq_iff (hp : ∃! a, a ∈ l ∧ p a) {a : α} : choose p l hp = a ↔ a ∈ l ∧ p a :=
  ⟨fun h => h ▸ choose_spec p l hp, hp.unique (choose_spec p l hp)⟩

end Choose

variable (α) in
/-- The equivalence between lists and multisets of a subsingleton type. -/
def subsingletonEquiv [Subsingleton α] : List α ≃ Multiset α where
  toFun := ofList
  invFun :=
    (Quot.lift id) fun (a b : List α) (h : a ~ b) =>
      (List.ext_get h.length_eq) fun _ _ _ => Subsingleton.elim _ _
  right_inv m := Quot.inductionOn m fun _ => rfl

@[simp]
theorem coe_subsingletonEquiv [Subsingleton α] :
    (subsingletonEquiv α : List α → Multiset α) = ofList :=
  rfl

end Multiset
```
