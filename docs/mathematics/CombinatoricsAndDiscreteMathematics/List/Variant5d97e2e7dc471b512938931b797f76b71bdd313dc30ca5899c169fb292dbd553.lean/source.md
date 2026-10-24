# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.List.Variant5d97e2e7dc471b512938931b797f76b71bdd313dc30ca5899c169fb292dbd553

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7ba0d41b5e802f109b4376b6497fb1674eae388e` · SHA-256 `556ee162bcdd81625a85a9e28faaafc120d5146734c5b7e8d1fa6ad151535d0c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ListEquivOfEquiv.Variant11496693bd39dd5e22aa2a62898d828e37b3f6261d25c531da0be293a3249efe","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"11496693bd39dd5e22aa2a62898d828e37b3f6261d25c531da0be293a3249efe","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ListEquivOfEquiv.Variant11496693bd39dd5e22aa2a62898d828e37b3f6261d25c531da0be293a3249efe","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"11496693bd39dd5e22aa2a62898d828e37b3f6261d25c531da0be293a3249efe","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Logic/Equiv/List.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

public import Mathlib.Basic.Denumerable

/-!
# Equivalences involving `List`-like types

This file defines some additional constructive equivalences using `Encodable` and the pairing
function on `ℕ`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ListEquivOfEquiv.Variant11496693bd39dd5e22aa2a62898d828e37b3f6261d25c531da0be293a3249efe

@[expose] public section

assert_not_exists Monoid Multiset.sort

open List
open Nat

namespace Equiv

/-- An equivalence between `α` and `β` generates an equivalence between `List α` and `List β`. -/
def listEquivOfEquiv {α β} (e : α ≃ β) : List α ≃ List β where
  toFun := List.map e
  invFun := List.map e.symm
  left_inv l := by rw [List.map_map, e.symm_comp_self, List.map_id]
  right_inv l := by rw [List.map_map, e.self_comp_symm, List.map_id]

end Equiv

namespace Encodable

variable {α : Type*}

section List

variable [Encodable α]

/-- Explicit encoding function for `List α` -/
def encodeList : List α → ℕ
  | [] => 0
  | a :: l => succ (pair (encode a) (encodeList l))

/-- Explicit decoding function for `List α` -/
def decodeList : ℕ → Option (List α)
  | 0 => some []
  | succ v =>
    match unpair v, unpair_right_le v with
    | (v₁, v₂), h =>
      have : v₂ < succ v := lt_succ_of_le h
      (· :: ·) <$> decode (α := α) v₁ <*> decodeList v₂

@[simp]
theorem decodeList_encodeList_eq_self (l : List α) : decodeList (encodeList l) = some l := by
  induction l <;> simp [encodeList, decodeList, unpair_pair, encodek, *]

/-- If `α` is encodable, then so is `List α`. This uses the `pair` and `unpair` functions from
`Data.Nat.Pairing`. -/
instance _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.ListEquivOfEquiv.Variant11496693bd39dd5e22aa2a62898d828e37b3f6261d25c531da0be293a3249efe.List.encodable : Encodable (List α) :=
  ⟨encodeList, decodeList, decodeList_encodeList_eq_self⟩

instance _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.ListEquivOfEquiv.Variant11496693bd39dd5e22aa2a62898d828e37b3f6261d25c531da0be293a3249efe.List.countable {α : Type*} [Countable α] : Countable (List α) := by
  have := Encodable.ofCountable α
  infer_instance

@[simp]
theorem encode_list_nil : encode (@nil α) = 0 :=
  rfl

@[simp]
theorem encode_list_cons (a : α) (l : List α) :
    encode (a :: l) = succ (pair (encode a) (encode l)) :=
  rfl

@[simp]
theorem decode_list_zero : decode (α := List α) 0 = some [] :=
  show decodeList 0 = some [] by rw [decodeList]

@[simp]
theorem decode_list_succ (v : ℕ) :
    decode (α := List α) (succ v) =
      (· :: ·) <$> decode (α := α) v.unpair.1 <*> decode (α := List α) v.unpair.2 :=
  show decodeList (succ v) = _ by
    rcases e : unpair v with ⟨v₁, v₂⟩
    simp [decodeList, e]; rfl

theorem length_le_encode : ∀ l : List α, length l ≤ encode l
  | [] => Nat.zero_le _
  | _ :: l => succ_le_succ <| (length_le_encode l).trans (right_le_pair _ _)

end List

/-! These two lemmas are not about lists, but are convenient to keep here and don't
require `Finset.sort`. -/

/-- If `α` is countable, then so is `Multiset α`. -/
instance _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.ListEquivOfEquiv.Variant11496693bd39dd5e22aa2a62898d828e37b3f6261d25c531da0be293a3249efe.Multiset.countable [Countable α] : Countable (Multiset α) :=
  Quotient.countable

/-- If `α` is countable, then so is `Finset α`. -/
instance _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.ListEquivOfEquiv.Variant11496693bd39dd5e22aa2a62898d828e37b3f6261d25c531da0be293a3249efe.Finset.countable [Countable α] : Countable (Finset α) :=
  Finset.val_injective.countable

/-- A listable type with decidable equality is encodable. -/
@[instance_reducible]
def encodableOfList [DecidableEq α] (l : List α) (H : ∀ x, x ∈ l) : Encodable α :=
  ⟨fun a => idxOf a l, (l[·]?), fun _ => getElem?_idxOf (H _)⟩

/-- A finite type is encodable. Because the encoding is not unique, we wrap it in `Trunc` to
preserve computability. -/
def _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.ListEquivOfEquiv.Variant11496693bd39dd5e22aa2a62898d828e37b3f6261d25c531da0be293a3249efe.Fintype.truncEncodable (α : Type*) [DecidableEq α] [Fintype α] : Trunc (Encodable α) :=
  @Quot.recOnSubsingleton _ _ (fun s : Multiset α => (∀ x : α, x ∈ s) → Trunc (Encodable α)) _
    Finset.univ.1 (fun l H => Trunc.mk <| encodableOfList l H) Finset.mem_univ

/-- A noncomputable way to arbitrarily choose an ordering on a finite type.
It is not made into a global instance, since it involves an arbitrary choice.
This can be locally made into an instance with `attribute [local instance] Fintype.toEncodable`. -/
@[instance_reducible]
noncomputable def _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.ListEquivOfEquiv.Variant11496693bd39dd5e22aa2a62898d828e37b3f6261d25c531da0be293a3249efe.Fintype.toEncodable (α : Type*) [Fintype α] : Encodable α := by
  classical exact (Fintype.truncEncodable α).out

end Encodable

namespace Denumerable

variable {α : Type*} [Denumerable α]

open Encodable

section List

theorem denumerable_list_aux : ∀ n : ℕ, ∃ a ∈ @decodeList α _ n, encodeList a = n
  | 0 => by rw [decodeList]; exact ⟨_, rfl, rfl⟩
  | succ v => by
    rcases e : unpair v with ⟨v₁, v₂⟩
    have h := unpair_right_le v
    rw [e] at h
    rcases have : v₂ < succ v := lt_succ_of_le h
      denumerable_list_aux v₂ with
      ⟨a, h₁, h₂⟩
    rw [Option.mem_def] at h₁
    use ofNat α v₁ :: a
    simp [decodeList, e, h₂, h₁, encodeList, pair_eq_of_unpair_eq e]

/-- If `α` is denumerable, then so is `List α`. -/
instance denumerableList : Denumerable (List α) :=
  ⟨denumerable_list_aux⟩

@[simp]
theorem list_ofNat_zero : ofNat (List α) 0 = [] := by rw [← @encode_list_nil α, ofNat_encode]

@[simp]
theorem list_ofNat_succ (v : ℕ) :
    ofNat (List α) (succ v) = ofNat α v.unpair.1 :: ofNat (List α) v.unpair.2 :=
  ofNat_of_decode <|
    show decodeList (succ v) = _ by
      rcases e : unpair v with ⟨v₁, v₂⟩
      simp [decodeList, e, show decodeList v₂ = decode (α := List α) v₂ from rfl]

end List

end Denumerable

namespace Equiv

/-- A list on a unique type is equivalent to ℕ by sending each list to its length. -/
@[simps!]
def listUniqueEquiv (α : Type*) [Unique α] : List α ≃ ℕ where
  toFun := List.length
  invFun n := List.replicate n default
  left_inv u := List.length_injective (by simp)
  right_inv n := List.length_replicate

/-- `List ℕ` is equivalent to `ℕ`. -/
def listNatEquivNat : List ℕ ≃ ℕ :=
  Denumerable.eqv _

/-- If `α` is equivalent to `ℕ`, then `List α` is equivalent to `α`. -/
def listEquivSelfOfEquivNat {α : Type*} (e : α ≃ ℕ) : List α ≃ α :=
  calc
    List α ≃ List ℕ := listEquivOfEquiv e
    _ ≃ ℕ := listNatEquivNat
    _ ≃ α := e.symm

end Equiv
```
