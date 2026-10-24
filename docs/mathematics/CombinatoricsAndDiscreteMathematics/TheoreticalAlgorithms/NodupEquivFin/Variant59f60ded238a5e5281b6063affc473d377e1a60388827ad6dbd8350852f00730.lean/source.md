# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NodupEquivFin.Variant59f60ded238a5e5281b6063affc473d377e1a60388827ad6dbd8350852f00730

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `024b8f351fd475230d85ea56489463b6d8900ac4` · SHA-256 `18993d8f861fb39d18b998ca4da23bff376becb36f16ac7abbd6eea0ea5e424d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.GetBijectionOfForallMemList.Variant05bb230a25a0d5cb6d94659067530ca301575b203bb1027751fd1d2ae7e9c347","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"05bb230a25a0d5cb6d94659067530ca301575b203bb1027751fd1d2ae7e9c347","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.GetBijectionOfForallMemList.Variant05bb230a25a0d5cb6d94659067530ca301575b203bb1027751fd1d2ae7e9c347","mathematical_subject":"Computation.DataStructures","original_sha256":"05bb230a25a0d5cb6d94659067530ca301575b203bb1027751fd1d2ae7e9c347","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/List/NodupEquivFin.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
module

public import Mathlib.Data.List.Duplicate
public import Mathlib.Data.List.Sort

/-!
# Equivalence between `Fin (length l)` and elements of a list

Given a list `l`,

* if `l` has no duplicates, then `List.Nodup.getEquiv` is the equivalence between
  `Fin (length l)` and `{x // x ∈ l}` sending `i` to `⟨get l i, _⟩` with the inverse
  sending `⟨x, hx⟩` to `⟨indexOf x l, _⟩`;

* if `l` has no duplicates and contains every element of a type `α`, then
  `List.Nodup.getEquivOfForallMemList` defines an equivalence between `Fin (length l)` and `α`;
  if `α` does not have decidable equality, then
  there is a bijection `List.Nodup.getBijectionOfForallMemList`;

* if `l` is sorted w.r.t. `(<)`, then `List.SortedLT.getIso` is the same bijection reinterpreted
  as an `OrderIso`.

-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.GetBijectionOfForallMemList.Variant05bb230a25a0d5cb6d94659067530ca301575b203bb1027751fd1d2ae7e9c347

@[expose] public section


namespace List

variable {α : Type*}

namespace Nodup

/-- If `l` lists all the elements of `α` without duplicates, then `List.get` defines
a bijection `Fin l.length → α`.  See `List.Nodup.getEquivOfForallMemList`
for a version giving an equivalence when there is decidable equality. -/
@[simps]
def getBijectionOfForallMemList (l : List α) (nd : l.Nodup) (h : ∀ x : α, x ∈ l) :
    { f : Fin l.length → α // Function.Bijective f } :=
  ⟨fun i => l.get i, fun _ _ h => nd.get_inj_iff.1 h,
   fun x =>
    let ⟨i, hl⟩ := List.mem_iff_get.1 (h x)
    ⟨i, hl⟩⟩

variable [DecidableEq α]

/-- If `l` has no duplicates, then `List.get` defines an equivalence between `Fin (length l)` and
the set of elements of `l`. -/
@[simps]
def getEquiv (l : List α) (H : Nodup l) : Fin (length l) ≃ { x // x ∈ l } where
  toFun i := ⟨get l i, get_mem _ _⟩
  invFun x := ⟨idxOf (↑x) l, idxOf_lt_length_iff.2 x.2⟩
  left_inv i := by simp only [List.get_idxOf, Fin.eta, H]
  right_inv x := by simp

/-- If `l` lists all the elements of `α` without duplicates, then `List.get` defines
an equivalence between `Fin l.length` and `α`.

See `List.Nodup.getBijectionOfForallMemList` for a version without decidable equality. -/
@[simps]
def getEquivOfForallMemList (l : List α) (nd : l.Nodup) (h : ∀ x : α, x ∈ l) :
    Fin l.length ≃ α where
  toFun i := l.get i
  invFun a := ⟨_, idxOf_lt_length_iff.2 (h a)⟩
  left_inv i := by simp [nd]
  right_inv a := by simp

end Nodup

section Sorted

/-- Alternative phrasing of `List.Nodup.getEquivOfForallMemList` using `List.count`. -/
@[simps!]
def getEquivOfForallCountEqOne [DecidableEq α] (l : List α) (h : ∀ x, l.count x = 1) :
    Fin l.length ≃ α :=
  Nodup.getEquivOfForallMemList _ (List.nodup_iff_count_eq_one.mpr fun _ _ ↦ h _)
    fun _ ↦ List.count_pos_iff.mp <| h _ ▸ Nat.one_pos

variable [Preorder α] {l : List α}

variable [DecidableEq α]

/-- If `l` is a list sorted w.r.t. `(<)`, then `List.get` defines an order isomorphism between
`Fin (length l)` and the set of elements of `l`. -/
def SortedLT.getIso (l : List α) (H : SortedLT l) : Fin (length l) ≃o { x // x ∈ l } where
  toEquiv := H.pairwise.nodup.getEquiv l
  map_rel_iff' := H.strictMono_get.le_iff_le

variable (H : SortedLT l) {x : { x // x ∈ l }} {i : Fin l.length}

@[simp]
theorem SortedLT.coe_getIso_apply : (H.getIso l i : α) = get l i :=
  rfl

@[simp]
theorem SortedLT.coe_getIso_symm_apply : ((H.getIso l).symm x : ℕ) = idxOf (↑x) l :=
  rfl

end Sorted

section Sublist

/-- If there is `f`, an order-preserving embedding of `ℕ` into `ℕ` such that
any element of `l` found at index `ix` can be found at index `f ix` in `l'`,
then `Sublist l l'`.
-/
theorem sublist_of_orderEmbedding_getElem?_eq {l l' : List α} (f : ℕ ↪o ℕ)
    (hf : ∀ ix : ℕ, l[ix]? = l'[f ix]?) : l <+ l' := by
  induction l generalizing l' f with
  | nil => simp
  | cons hd tl IH => ?_
  have : some hd = l'[f 0]? := by simpa using hf 0
  rw [eq_comm, List.getElem?_eq_some_iff] at this
  obtain ⟨w, h⟩ := this
  let f' : ℕ ↪o ℕ :=
    OrderEmbedding.ofMapLEIff (fun i => f (i + 1) - (f 0 + 1)) fun a b => by
      rw [Nat.sub_le_sub_iff_right, OrderEmbedding.le_iff_le, Nat.succ_le_succ_iff]
      rw [Nat.succ_le_iff, OrderEmbedding.lt_iff_lt]
      exact b.succ_pos
  have : ∀ ix, tl[ix]? = (l'.drop (f 0 + 1))[f' ix]? := by
    intro ix
    rw [List.getElem?_drop, OrderEmbedding.coe_ofMapLEIff, Nat.add_sub_cancel', ← hf]
    · simp only [getElem?_cons_succ]
    rw [Nat.succ_le_iff, OrderEmbedding.lt_iff_lt]
    exact ix.succ_pos
  rw [← List.take_append_drop (f 0 + 1) l', ← List.singleton_append]
  apply List.Sublist.append _ (IH _ this)
  rw [List.singleton_sublist, ← h, l'.getElem_take' _ (Nat.lt_succ_self _)]
  exact List.getElem_mem _

set_option backward.isDefEq.respectTransparency.types false in
/-- A `l : List α` is `Sublist l l'` for `l' : List α` iff
there is `f`, an order-preserving embedding of `ℕ` into `ℕ` such that
any element of `l` found at index `ix` can be found at index `f ix` in `l'`.
-/
theorem sublist_iff_exists_orderEmbedding_getElem?_eq {l l' : List α} :
    l <+ l' ↔ ∃ f : ℕ ↪o ℕ, ∀ ix : ℕ, l[ix]? = l'[f ix]? := by
  constructor
  · intro H
    induction H with
    | slnil => simp
    | cons _ _ IH =>
      obtain ⟨f, hf⟩ := IH
      refine ⟨f.trans (OrderEmbedding.ofStrictMono (· + 1) fun _ => by simp), ?_⟩
      simpa using hf
    | cons_cons _ _ IH =>
      obtain ⟨f, hf⟩ := IH
      refine
        ⟨OrderEmbedding.ofMapLEIff (fun ix : ℕ => if ix = 0 then 0 else (f ix.pred).succ) ?_, ?_⟩
      · rintro ⟨_ | a⟩ ⟨_ | b⟩ <;> simp [Nat.succ_le_succ_iff]
      · rintro ⟨_ | i⟩
        · simp
        · simpa using hf _
  · rintro ⟨f, hf⟩
    exact sublist_of_orderEmbedding_getElem?_eq f hf

/-- A `l : List α` is `Sublist l l'` for `l' : List α` iff
there is `f`, an order-preserving embedding of `Fin l.length` into `Fin l'.length` such that
any element of `l` found at index `ix` can be found at index `f ix` in `l'`.
-/
theorem sublist_iff_exists_fin_orderEmbedding_get_eq {l l' : List α} :
    l <+ l' ↔
      ∃ f : Fin l.length ↪o Fin l'.length,
        ∀ ix : Fin l.length, l.get ix = l'.get (f ix) := by
  rw [sublist_iff_exists_orderEmbedding_getElem?_eq]
  constructor
  · rintro ⟨f, hf⟩
    have h : ∀ {i : ℕ}, i < l.length → f i < l'.length := by
      intro i hi
      specialize hf i
      rw [getElem?_eq_getElem hi, eq_comm, getElem?_eq_some_iff] at hf
      obtain ⟨h, -⟩ := hf
      exact h
    refine ⟨OrderEmbedding.ofMapLEIff (fun ix => ⟨f ix, h ix.is_lt⟩) ?_, ?_⟩
    · simp
    · intro i
      apply Option.some_injective
      simpa [getElem?_eq_getElem i.2, getElem?_eq_getElem (h i.2)] using hf i
  · rintro ⟨f, hf⟩
    refine
      ⟨OrderEmbedding.ofStrictMono (fun i => if hi : i < l.length then f ⟨i, hi⟩ else i + l'.length)
          ?_,
        ?_⟩
    · intro i j h
      dsimp only
      split_ifs with hi hj hj
      · rwa [Fin.val_fin_lt, f.lt_iff_lt]
      · lia
      · exact absurd (h.trans hj) hi
      · simpa using h
    · grind

/-- An element `x : α` of `l : List α` is a duplicate iff it can be found
at two distinct indices `n m : ℕ` inside the list `l`.
-/
theorem duplicate_iff_exists_distinct_get {l : List α} {x : α} :
    l.Duplicate x ↔
      ∃ (n m : Fin l.length) (_ : n < m),
        x = l.get n ∧ x = l.get m := by
  classical
    rw [duplicate_iff_two_le_count, ← replicate_sublist_iff,
      sublist_iff_exists_fin_orderEmbedding_get_eq]
    constructor
    · rintro ⟨f, hf⟩
      refine ⟨f ⟨0, by simp⟩, f ⟨1, by simp⟩, f.lt_iff_lt.2 (Nat.zero_lt_one), ?_⟩
      rw [← hf, ← hf]; simp
    · rintro ⟨n, m, hnm, h, h'⟩
      refine ⟨OrderEmbedding.ofStrictMono (fun i => if (i : ℕ) = 0 then n else m) ?_, ?_⟩
      · rintro ⟨⟨_ | i⟩, hi⟩ ⟨⟨_ | j⟩, hj⟩
        · simp
        · simp [hnm]
        · simp
        · simp only [Nat.lt_succ_iff, Nat.succ_le_succ_iff, replicate, length, Nat.le_zero] at hi hj
          simp [hi, hj]
      · rintro ⟨⟨_ | i⟩, hi⟩
        · simpa using h
        · simpa using h'

end Sublist

end List
```
