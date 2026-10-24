# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderedPartitionBridge.Variantef2ec663653bce49717b88f3977eec9d09f7973310dd0e2907a8271774a07a9a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a2eebafdc35a3412ac92085562a16589a71769e2` · SHA-256 `ef2ec663653bce49717b88f3977eec9d09f7973310dd0e2907a8271774a07a9a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.PositiveAtlas.AllOrdersRawMomentDerivative
import Mathlib.Analysis.Calculus.ContDiff.FaaDiBruno

/-!
# Ordered-to-plain partition bridge

Mathlib's Faa di Bruno theorem is indexed by OrderedFinpartition n: each
partition block carries its increasing parameterization and blocks are ordered
by increasing maximal element.

The Positive Atlas moment-cumulant recursion is indexed instead by ordinary
Finpartition (Finset.univ : Finset (Fin n)).

This module constructs the forward bridge from an ordered finpartition to the
corresponding ordinary direction partition. It proves that:

* each ordered block becomes exactly one plain block;
* different ordered blocks remain different;
* the resulting plain partition has the same number of blocks;
* each block keeps its cardinality;
* the canonical increasing enumeration of a transported block agrees with the
  original ordered embedding, up to the unavoidable cardinality cast;
* the ordered block index Fin c.length is equivalent to the subtype of parts
  of the transported plain partition.

This is sufficient to transport individual Faa di Bruno terms and products
over the blocks of one partition. The global equivalence between all ordered
and plain partitions is intentionally left to the next layer.
-/

namespace FormalResearch.PositiveAtlas

open Set

universe u v

namespace MomentCumulant

/-- The finite block represented by one block of an ordered finpartition. -/
def orderedBlock {n : ℕ}
    (c : OrderedFinpartition n)
    (m : Fin c.length) :
    Finset (Fin n) :=
  Finset.univ.image (c.emb m)

@[simp]
theorem mem_orderedBlock_iff
    {n : ℕ}
    (c : OrderedFinpartition n)
    (m : Fin c.length)
    (x : Fin n) :
    x ∈ orderedBlock c m ↔
      ∃ j : Fin (c.partSize m), c.emb m j = x := by
  simp [orderedBlock]

/-- Transporting a block preserves its cardinality. -/
theorem orderedBlock_card
    {n : ℕ}
    (c : OrderedFinpartition n)
    (m : Fin c.length) :
    (orderedBlock c m).card = c.partSize m := by
  rw [orderedBlock,
    Finset.card_image_of_injective _ (c.emb_strictMono m).injective,
    Finset.card_univ,
    Fintype.card_fin]

/-- Every transported ordered block is nonempty. -/
theorem orderedBlock_nonempty
    {n : ℕ}
    (c : OrderedFinpartition n)
    (m : Fin c.length) :
    (orderedBlock c m).Nonempty := by
  rw [← Finset.card_pos, orderedBlock_card]
  exact c.partSize_pos m

/-- Two ordered blocks that contain a common point have the same block index. -/
theorem orderedBlock_index_eq_of_common_mem
    {n : ℕ}
    (c : OrderedFinpartition n)
    {m k : Fin c.length}
    {x : Fin n}
    (hm : x ∈ orderedBlock c m)
    (hk : x ∈ orderedBlock c k) :
    m = k := by
  by_contra hmk
  obtain ⟨jm, hjm⟩ := (mem_orderedBlock_iff c m x).1 hm
  obtain ⟨jk, hjk⟩ := (mem_orderedBlock_iff c k x).1 hk
  have hd :
      Disjoint (Set.range (c.emb m)) (Set.range (c.emb k)) :=
    c.disjoint (Finset.mem_univ m) (Finset.mem_univ k) hmk
  exact Set.disjoint_left.1 hd
    (Set.mem_range.2 ⟨jm, hjm⟩)
    (Set.mem_range.2 ⟨jk, hjk⟩)

/-- Different ordered block indices give different finite blocks. -/
theorem orderedBlock_injective
    {n : ℕ}
    (c : OrderedFinpartition n) :
    Function.Injective (orderedBlock c) := by
  intro m k hmk
  obtain ⟨x, hx⟩ := orderedBlock_nonempty c m
  apply orderedBlock_index_eq_of_common_mem c hx
  rw [← hmk]
  exact hx

/-- The finite set of all blocks of an ordered finpartition, forgetting their
ordering. -/
def orderedBlocks {n : ℕ}
    (c : OrderedFinpartition n) :
    Finset (Finset (Fin n)) :=
  Finset.univ.image (orderedBlock c)

/-- Forget the block order while retaining the same partition of Fin n. -/
def orderedToDirectionPartition {n : ℕ}
    (c : OrderedFinpartition n) :
    DirectionPartition n :=
  Finpartition.ofExistsUnique
    (orderedBlocks c)
    (fun p _ => Finset.subset_univ p)
    (by
      intro x hx
      obtain ⟨m, hm⟩ := c.cover x
      obtain ⟨j, hj⟩ := hm
      refine ⟨orderedBlock c m, ?_, ?_⟩
      · constructor
        · exact Finset.mem_image.2
            ⟨m, Finset.mem_univ m, rfl⟩
        · exact (mem_orderedBlock_iff c m x).2 ⟨j, hj⟩
      · intro t ht
        obtain ⟨htparts, hxt⟩ := ht
        obtain ⟨k, hk, htk⟩ := Finset.mem_image.1 htparts
        subst t
        have hmk :=
          orderedBlock_index_eq_of_common_mem c
            ((mem_orderedBlock_iff c m x).2 ⟨j, hj⟩)
            hxt
        subst k
        rfl)
    (by
      intro hempty
      obtain ⟨m, hm, hmeq⟩ := Finset.mem_image.1 hempty
      have hn := orderedBlock_nonempty c m
      rw [hmeq] at hn
      exact Finset.not_nonempty_empty hn)

@[simp]
theorem orderedToDirectionPartition_parts
    {n : ℕ}
    (c : OrderedFinpartition n) :
    (orderedToDirectionPartition c).parts = orderedBlocks c :=
  rfl

/-- The transported plain partition has exactly as many blocks as the ordered
partition. -/
theorem orderedToDirectionPartition_card_parts
    {n : ℕ}
    (c : OrderedFinpartition n) :
    (orderedToDirectionPartition c).parts.card = c.length := by
  rw [orderedToDirectionPartition_parts, orderedBlocks,
    Finset.card_image_of_injective _ (orderedBlock_injective c),
    Finset.card_univ,
    Fintype.card_fin]

/-- One ordered block, viewed as a member of the transported plain partition. -/
def orderedBlockPart {n : ℕ}
    (c : OrderedFinpartition n)
    (m : Fin c.length) :
    (orderedToDirectionPartition c).parts :=
  ⟨orderedBlock c m, by
    rw [orderedToDirectionPartition_parts, orderedBlocks]
    exact Finset.mem_image.2 ⟨m, Finset.mem_univ m, rfl⟩⟩

/-- Ordered block indices are in bijection with the parts of the transported
plain partition. -/
noncomputable def orderedBlockEquivParts {n : ℕ}
    (c : OrderedFinpartition n) :
    Fin c.length ≃ (orderedToDirectionPartition c).parts :=
  Equiv.ofBijective (orderedBlockPart c) <| by
    constructor
    · intro m k h
      apply orderedBlock_injective c
      exact congrArg Subtype.val h
    · intro B
      obtain ⟨B, hB⟩ := B
      rw [orderedToDirectionPartition_parts, orderedBlocks] at hB
      obtain ⟨m, hm, hBm⟩ := Finset.mem_image.1 hB
      refine ⟨m, ?_⟩
      apply Subtype.ext
      exact hBm

@[simp]
theorem orderedBlockEquivParts_apply_val
    {n : ℕ}
    (c : OrderedFinpartition n)
    (m : Fin c.length) :
    ((orderedBlockEquivParts c m :
      (orderedToDirectionPartition c).parts) : Finset (Fin n)) =
      orderedBlock c m :=
  rfl

/-- The original ordered embedding is the canonical increasing enumeration of
its transported finite block. -/
theorem orderedBlock_orderEmbOfFin
    {n : ℕ}
    (c : OrderedFinpartition n)
    (m : Fin c.length) :
    (fun j : Fin (orderedBlock c m).card =>
      c.emb m (Fin.cast (orderedBlock_card c m) j))
      =
    (orderedBlock c m).orderEmbOfFin rfl := by
  apply Finset.orderEmbOfFin_unique rfl
  · intro j
    apply (mem_orderedBlock_iff c m _).2
    exact ⟨Fin.cast (orderedBlock_card c m) j, rfl⟩
  · exact
      (c.emb_strictMono m).comp
        (Fin.castOrderIso (orderedBlock_card c m)).strictMono

/-- Consequently the atlas canonical block-direction reindexing agrees with the
Faa di Bruno block embedding, modulo the cardinality cast. -/
theorem blockDirections_orderedBlock
    {n : ℕ}
    {E : Type u}
    (c : OrderedFinpartition n)
    (directions : Fin n → E)
    (m : Fin c.length) :
    blockDirections directions (orderedBlock c m) =
      fun j : Fin (orderedBlock c m).card =>
        directions
          (c.emb m (Fin.cast (orderedBlock_card c m) j)) := by
  funext j
  unfold blockDirections blockOrderIso
  change
    directions
        ((orderedBlock c m).orderEmbOfFin rfl j) =
      directions
        (c.emb m (Fin.cast (orderedBlock_card c m) j))
  rw [← congrFun (orderedBlock_orderEmbOfFin c m) j]

/-- A product over the blocks of the transported plain partition can be
reindexed by the original ordered block index. -/
theorem prod_parts_orderedToDirectionPartition
    {n : ℕ}
    {M : Type v}
    [CommMonoid M]
    (c : OrderedFinpartition n)
    (f : Finset (Fin n) → M) :
    (∏ B : (orderedToDirectionPartition c).parts, f B.1) =
      ∏ m : Fin c.length, f (orderedBlock c m) := by
  exact
    (Fintype.prod_equiv
      (orderedBlockEquivParts c)
      (fun m : Fin c.length => f (orderedBlock c m))
      (fun B : (orderedToDirectionPartition c).parts => f B.1)
      (fun m => rfl)).symm

/-- Likewise for sums over transported blocks. -/
theorem sum_parts_orderedToDirectionPartition
    {n : ℕ}
    {M : Type v}
    [AddCommMonoid M]
    (c : OrderedFinpartition n)
    (f : Finset (Fin n) → M) :
    (∑ B : (orderedToDirectionPartition c).parts, f B.1) =
      ∑ m : Fin c.length, f (orderedBlock c m) := by
  exact
    (Fintype.sum_equiv
      (orderedBlockEquivParts c)
      (fun m : Fin c.length => f (orderedBlock c m))
      (fun B : (orderedToDirectionPartition c).parts => f B.1)
      (fun m => rfl)).symm

end MomentCumulant

end FormalResearch.PositiveAtlas
```
