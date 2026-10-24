# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.WalkCounting.Variant1c1c62e3696dab8bf3cbf70fc8a3943e535cba0e1886875dc8bb4a0e86e07b70

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `306289f93a83a0d02fd463ebfb20e8ab4438e574` · SHA-256 `035cf956604ff0fb4b28e1b72ec4f63482002a746ddf6d42ad86b556cd059b6a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.SetWalkSelfLengthZeroEq.Variantb7bb2629de72f4541fead1635932e09142cc8c8bc44decc7b9f767184bb2a9db","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b7bb2629de72f4541fead1635932e09142cc8c8bc44decc7b9f767184bb2a9db","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.SetWalkSelfLengthZeroEq.Variantb7bb2629de72f4541fead1635932e09142cc8c8bc44decc7b9f767184bb2a9db","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"b7bb2629de72f4541fead1635932e09142cc8c8bc44decc7b9f767184bb2a9db","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Combinatorics/SimpleGraph/Connectivity/WalkCounting.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Kyle Miller. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kyle Miller
-/
import Mathlib.Algebra.BigOperators.Ring.Nat
import Mathlib.Combinatorics.SimpleGraph.Path
import Mathlib.Data.Finite.Card
import Mathlib.Data.Set.Card
import Mathlib.Data.Set.Finite.Lattice

/-!
# Counting walks of a given length

## Main definitions
- `walkLengthTwoEquivCommonNeighbors`: bijective correspondence between walks of length two
from `u` to `v` and common neighbours of `u` and `v`. Note that `u` and `v` may be the same.
- `finsetWalkLength`: the `Finset` of length-`n` walks from `u` to `v`.
This is used to give `{p : G.walk u v | p.length = n}` a `Fintype` instance, and it
can also be useful as a recursive description of this set when `V` is finite.

TODO: should this be extended further?
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.SetWalkSelfLengthZeroEq.Variantb7bb2629de72f4541fead1635932e09142cc8c8bc44decc7b9f767184bb2a9db

assert_not_exists Field

open Finset Function

universe u v w

namespace SimpleGraph

variable {V : Type u} (G : SimpleGraph V)

/-! ### Walks of a given length -/

section WalkCounting

theorem set_walk_self_length_zero_eq (u : V) : {p : G.Walk u u | p.length = 0} = {Walk.nil} := by
  ext p
  simp

theorem set_walk_length_zero_eq_of_ne {u v : V} (h : u ≠ v) :
    {p : G.Walk u v | p.length = 0} = ∅ := by
  ext p
  simp only [Set.mem_setOf_eq, Set.mem_empty_iff_false, iff_false]
  exact fun h' => absurd (Walk.eq_of_length_eq_zero h') h

theorem set_walk_length_succ_eq (u v : V) (n : ℕ) :
    {p : G.Walk u v | p.length = n.succ} =
      ⋃ (w : V) (h : G.Adj u w), Walk.cons h '' {p' : G.Walk w v | p'.length = n} := by
  ext p
  cases p with
  | nil => simp [eq_comm]
  | cons huw pwv =>
    simp only [Nat.succ_eq_add_one, Set.mem_setOf_eq, Walk.length_cons, add_left_inj,
      Set.mem_iUnion, Set.mem_image, exists_prop]
    constructor
    · rintro rfl
      exact ⟨_, huw, pwv, rfl, rfl⟩
    · rintro ⟨w, huw, pwv, rfl, rfl, rfl⟩
      rfl

/-- Walks of length two from `u` to `v` correspond bijectively to common neighbours of `u` and `v`.
Note that `u` and `v` may be the same. -/
@[simps]
def walkLengthTwoEquivCommonNeighbors (u v : V) :
    {p : G.Walk u v // p.length = 2} ≃ G.commonNeighbors u v where
  toFun p := ⟨p.val.snd, match p with
    | ⟨.cons _ (.cons _ .nil), _⟩ => ⟨‹G.Adj u _›, ‹G.Adj _ v›.symm⟩⟩
  invFun w := ⟨w.prop.1.toWalk.concat w.prop.2.symm, rfl⟩
  left_inv | ⟨.cons _ (.cons _ .nil), hp⟩ => by rfl
  right_inv _ := rfl

section LocallyFinite

variable [DecidableEq V] [LocallyFinite G]

/-- The `Finset` of length-`n` walks from `u` to `v`.
This is used to give `{p : G.walk u v | p.length = n}` a `Fintype` instance, and it
can also be useful as a recursive description of this set when `V` is finite.

See `SimpleGraph.coe_finsetWalkLength_eq` for the relationship between this `Finset` and
the set of length-`n` walks. -/
def finsetWalkLength (n : ℕ) (u v : V) : Finset (G.Walk u v) :=
  match n with
  | 0 =>
    if h : u = v then by
      subst u
      exact {Walk.nil}
    else ∅
  | n + 1 =>
    Finset.univ.biUnion fun (w : G.neighborSet u) =>
      (finsetWalkLength n w v).map ⟨fun p => Walk.cons w.property p, fun _ _ => by simp⟩

theorem coe_finsetWalkLength_eq (n : ℕ) (u v : V) :
    (G.finsetWalkLength n u v : Set (G.Walk u v)) = {p : G.Walk u v | p.length = n} := by
  induction n generalizing u v with
  | zero =>
    obtain rfl | huv := eq_or_ne u v <;> simp [finsetWalkLength, set_walk_length_zero_eq_of_ne, *]
  | succ n ih =>
    simp only [finsetWalkLength, set_walk_length_succ_eq, Finset.coe_biUnion, Finset.mem_coe,
      Finset.mem_univ, Set.iUnion_true]
    ext p
    simp only [mem_neighborSet, Finset.coe_map, Embedding.coeFn_mk, Set.iUnion_coe_set,
      Set.mem_iUnion, Set.mem_image, Finset.mem_coe, Set.mem_setOf_eq]
    congr!
    rename_i w _ q
    have := Set.ext_iff.mp (ih w v) q
    simp only [Finset.mem_coe, Set.mem_setOf_eq] at this
    rw [← this]

variable {G} in
theorem mem_finsetWalkLength_iff {n : ℕ} {u v : V} {p : G.Walk u v} :
    p ∈ G.finsetWalkLength n u v ↔ p.length = n :=
  Set.ext_iff.mp (G.coe_finsetWalkLength_eq n u v) p

/-- The `Finset` of walks from `u` to `v` with length less than `n`. See `finsetWalkLength` for
context. In particular, we use this definition for `SimpleGraph.Path.instFintype`. -/
def finsetWalkLengthLT (n : ℕ) (u v : V) : Finset (G.Walk u v) :=
  (Finset.range n).disjiUnion
    (fun l ↦ G.finsetWalkLength l u v)
    (fun l _ l' _ hne _ hsl hsl' p hp ↦
      have hl : p.length = l := mem_finsetWalkLength_iff.mp (hsl hp)
      have hl' : p.length = l' := mem_finsetWalkLength_iff.mp (hsl' hp)
      False.elim <| hne <| hl.symm.trans hl')

open Finset in
theorem coe_finsetWalkLengthLT_eq (n : ℕ) (u v : V) :
    (G.finsetWalkLengthLT n u v : Set (G.Walk u v)) = {p : G.Walk u v | p.length < n} := by
  ext p
  simp [finsetWalkLengthLT, mem_coe, mem_disjiUnion, mem_finsetWalkLength_iff]

variable {G} in
theorem mem_finsetWalkLengthLT_iff {n : ℕ} {u v : V} {p : G.Walk u v} :
    p ∈ G.finsetWalkLengthLT n u v ↔ p.length < n :=
  Set.ext_iff.mp (G.coe_finsetWalkLengthLT_eq n u v) p

instance fintypeSetWalkLength (u v : V) (n : ℕ) : Fintype {p : G.Walk u v | p.length = n} :=
  Fintype.ofFinset (G.finsetWalkLength n u v) fun p => by
    rw [← Finset.mem_coe, coe_finsetWalkLength_eq]

instance fintypeSubtypeWalkLength (u v : V) (n : ℕ) : Fintype {p : G.Walk u v // p.length = n} :=
  fintypeSetWalkLength G u v n

theorem set_walk_length_toFinset_eq (n : ℕ) (u v : V) :
    {p : G.Walk u v | p.length = n}.toFinset = G.finsetWalkLength n u v := by
  ext p
  simp [← coe_finsetWalkLength_eq]

/- See `SimpleGraph.adjMatrix_pow_apply_eq_card_walk` for the cardinality in terms of the `n`th
power of the adjacency matrix. -/
theorem card_set_walk_length_eq (u v : V) (n : ℕ) :
    Fintype.card {p : G.Walk u v | p.length = n} = #(G.finsetWalkLength n u v) :=
  Fintype.card_ofFinset (G.finsetWalkLength n u v) fun p => by
    rw [← Finset.mem_coe, coe_finsetWalkLength_eq]

instance fintypeSetWalkLengthLT (u v : V) (n : ℕ) : Fintype {p : G.Walk u v | p.length < n} :=
  Fintype.ofFinset (G.finsetWalkLengthLT n u v) fun p ↦ by
    rw [← Finset.mem_coe, coe_finsetWalkLengthLT_eq]

instance fintypeSubtypeWalkLengthLT (u v : V) (n : ℕ) : Fintype {p : G.Walk u v // p.length < n} :=
  fintypeSetWalkLengthLT G u v n

instance fintypeSetPathLength (u v : V) (n : ℕ) :
    Fintype {p : G.Walk u v | p.IsPath ∧ p.length = n} :=
  Fintype.ofFinset {w ∈ G.finsetWalkLength n u v | w.IsPath} <| by
    simp [mem_finsetWalkLength_iff, and_comm]

instance fintypeSubtypePathLength (u v : V) (n : ℕ) :
    Fintype {p : G.Walk u v // p.IsPath ∧ p.length = n} :=
  fintypeSetPathLength G u v n

instance fintypeSetPathLengthLT (u v : V) (n : ℕ) :
    Fintype {p : G.Walk u v | p.IsPath ∧ p.length < n} :=
  Fintype.ofFinset {w ∈ G.finsetWalkLengthLT n u v | w.IsPath} <| by
    simp [mem_finsetWalkLengthLT_iff, and_comm]

instance fintypeSubtypePathLengthLT (u v : V) (n : ℕ) :
    Fintype {p : G.Walk u v // p.IsPath ∧ p.length < n} :=
  fintypeSetPathLengthLT G u v n

end LocallyFinite

instance [Finite V] : Finite G.ConnectedComponent := Quot.finite _

section Fintype

variable [DecidableEq V] [Fintype V] [DecidableRel G.Adj]

theorem reachable_iff_exists_finsetWalkLength_nonempty (u v : V) :
    G.Reachable u v ↔ ∃ n : Fin (Fintype.card V), (G.finsetWalkLength n u v).Nonempty := by
  constructor
  · intro r
    refine r.elim_path fun p => ?_
    refine ⟨⟨_, p.isPath.length_lt⟩, p, ?_⟩
    simp [mem_finsetWalkLength_iff]
  · rintro ⟨_, p, _⟩
    exact ⟨p⟩

instance : DecidableRel G.Reachable := fun u v =>
  decidable_of_iff' _ (reachable_iff_exists_finsetWalkLength_nonempty G u v)

instance : Fintype G.ConnectedComponent :=
  @Quotient.fintype _ _ G.reachableSetoid (inferInstance : DecidableRel G.Reachable)

instance : Decidable G.Preconnected :=
  inferInstanceAs <| Decidable (∀ u v, G.Reachable u v)

instance : Decidable G.Connected :=
  decidable_of_iff (G.Preconnected ∧ (Finset.univ : Finset V).Nonempty) <| by
    rw [connected_iff, ← Finset.univ_nonempty_iff]

instance Path.instFintype {u v : V} : Fintype (G.Path u v) where
  elems := (univ (α := { p : G.Walk u v | p.IsPath ∧ p.length < Fintype.card V })).map
    ⟨fun p ↦ { val := p.val, property := p.prop.left },
     fun _ _ h ↦ SetCoe.ext <| Subtype.mk.injEq .. ▸ h⟩
  complete p := mem_map.mpr ⟨
    ⟨p.val, ⟨p.prop, p.prop.length_lt⟩⟩,
    ⟨mem_univ _, rfl⟩⟩

instance instDecidableMemSupp (c : G.ConnectedComponent) (v : V) : Decidable (v ∈ c.supp) :=
  c.recOn (fun w ↦ decidable_of_iff (G.Reachable v w) <| by simp)
    (fun _ _ _ _ ↦ Subsingleton.elim _ _)

variable {G} in
lemma disjiUnion_supp_toFinset_eq_supp_toFinset {G' : SimpleGraph V} (h : G ≤ G')
    (c' : ConnectedComponent G') [Fintype c'.supp]
    [DecidablePred fun c : G.ConnectedComponent ↦ c.supp ⊆ c'.supp] :
    .disjiUnion {c : ConnectedComponent G | c.supp ⊆ c'.supp} (fun c ↦ c.supp.toFinset)
      (fun x _ y _ hxy ↦ by simpa using pairwise_disjoint_supp_connectedComponent _ hxy) =
      c'.supp.toFinset :=
  Finset.coe_injective <| by simpa using ConnectedComponent.biUnion_supp_eq_supp h _

end Fintype

/-- The odd components are the connected components of odd cardinality. This definition excludes
infinite components. -/
abbrev oddComponents : Set G.ConnectedComponent := {c : G.ConnectedComponent | Odd c.supp.ncard}

lemma ConnectedComponent.odd_oddComponents_ncard_subset_supp [Finite V] {G'}
    (h : G ≤ G') (c' : ConnectedComponent G') :
    Odd {c ∈ G.oddComponents | c.supp ⊆ c'.supp}.ncard ↔ Odd c'.supp.ncard := by
  simp_rw [← Set.Nat.card_coe_set_eq]
  classical
  cases nonempty_fintype V
  rw [Nat.card_eq_card_toFinset c'.supp, ← disjiUnion_supp_toFinset_eq_supp_toFinset h]
  simp only [Finset.card_disjiUnion, Set.toFinset_card, Fintype.card_ofFinset]
  rw [Finset.odd_sum_iff_odd_card_odd, Nat.card_eq_fintype_card, Fintype.card_ofFinset]
  congr! 2
  ext c
  simp_rw [Set.toFinset_setOf, mem_filter, ← Set.ncard_coe_Finset, coe_filter,
    mem_supp_iff, mem_univ, true_and, supp, and_comm]

lemma odd_ncard_oddComponents [Finite V] : Odd G.oddComponents.ncard ↔ Odd (Nat.card V) := by
  classical
  cases nonempty_fintype V
  rw [Nat.card_eq_fintype_card]
  simp only [← (set_fintype_card_eq_univ_iff _).mpr G.iUnion_connectedComponentSupp,
    ConnectedComponent.mem_supp_iff, Fintype.card_subtype_compl,
    ← Set.toFinset_card, Set.toFinset_iUnion ConnectedComponent.supp]
  rw [Finset.card_biUnion
    (fun x _ y _ hxy ↦ Set.disjoint_toFinset.mpr (pairwise_disjoint_supp_connectedComponent _ hxy))]
  simp_rw [Set.toFinset_card, ← Nat.card_eq_fintype_card, ← Finset.coe_filter_univ,
    Set.ncard_coe_Finset, Set.Nat.card_coe_set_eq]
  exact (Finset.odd_sum_iff_odd_card_odd (fun x : G.ConnectedComponent ↦ x.supp.ncard)).symm

lemma ncard_oddComponents_mono [Finite V] {G' : SimpleGraph V} (h : G ≤ G') :
     G'.oddComponents.ncard ≤ G.oddComponents.ncard := by
  have aux (c : G'.ConnectedComponent) (hc : Odd c.supp.ncard) :
      {c' : G.ConnectedComponent | Odd c'.supp.ncard ∧ c'.supp ⊆ c.supp}.Nonempty := by
    refine Set.nonempty_of_ncard_ne_zero fun h' ↦ ?_
    simpa [-Nat.card_eq_fintype_card, -Set.coe_setOf, h']
      using (c.odd_oddComponents_ncard_subset_supp _ h).2 hc
  let f : G'.oddComponents → G.oddComponents :=
    fun ⟨c, hc⟩ ↦ ⟨(aux c hc).choose, (aux c hc).choose_spec.1⟩
  refine Finite.card_le_of_injective f fun c c' fcc' ↦ ?_
  simp only [Subtype.mk.injEq, f] at fcc'
  exact Subtype.val_injective (ConnectedComponent.eq_of_common_vertex
    ((fcc' ▸ (aux c.1 c.2).choose_spec.2) (ConnectedComponent.nonempty_supp _).some_mem)
      ((aux c'.1 c'.2).choose_spec.2 (ConnectedComponent.nonempty_supp _).some_mem))

end WalkCounting

end SimpleGraph
```
