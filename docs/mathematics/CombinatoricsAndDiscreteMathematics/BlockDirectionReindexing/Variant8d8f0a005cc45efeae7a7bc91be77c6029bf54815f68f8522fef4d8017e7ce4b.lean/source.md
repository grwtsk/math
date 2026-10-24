# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.BlockDirectionReindexing.Variant8d8f0a005cc45efeae7a7bc91be77c6029bf54815f68f8522fef4d8017e7ce4b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7ce4927be8e0f0affc46e6c26462a59e98989603` · SHA-256 `822846aa8d5ba9c376fd3e5a5f8bc11e33214caa5508a253370f03bd2a005869`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.BlockOrderIso.Variant82e62069b98063ebfef8fe5541a128e835599b181c107b07968c969e116d7eda","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"82e62069b98063ebfef8fe5541a128e835599b181c107b07968c969e116d7eda","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.BlockOrderIso.Variant82e62069b98063ebfef8fe5541a128e835599b181c107b07968c969e116d7eda","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"82e62069b98063ebfef8fe5541a128e835599b181c107b07968c969e116d7eda","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/rh-target-sufficiency/FormalResearch/PositiveAtlas/BlockDirectionReindexing.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.MomentCumulantPartitions
import Mathlib.Data.Finset.Sort

/-!
# Canonical block-direction reindexing

This module connects the abstract moment-cumulant partition recursion to actual
families of directions.

For a direction tuple

  v : Fin n → E

and a block

  B : Finset (Fin n),

Mathlib's increasing order isomorphism

  Fin B.card ≃o B

gives a canonical restriction/reindexing of v to B. This avoids arbitrary
enumeration choices while letting a lower-order cumulant consume the directions
in each partition block.

The module also proves the induction-critical fact that every proper block has
strictly smaller cardinality than n. Consequently proper-partition
contributions depend only on cumulant data of orders < n.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.BlockOrderIso.Variant82e62069b98063ebfef8fe5541a128e835599b181c107b07968c969e116d7eda

namespace FormalResearch.PositiveAtlas

universe u v

namespace MomentCumulant

variable {E : Type u}
variable {R : Type v}

/-- Canonical increasing enumeration of a block of labelled directions. -/
def blockOrderIso {n : ℕ} (B : Finset (Fin n)) :
    Fin B.card ≃o B :=
  B.orderIsoOfFin rfl

@[simp]
theorem blockOrderIso_mem
    {n : ℕ} (B : Finset (Fin n)) (j : Fin B.card) :
    ((blockOrderIso B j).1 : Fin n) ∈ B :=
  (blockOrderIso B j).2

/-- Restrict a direction family to one block and canonically reindex it by
Fin B.card. -/
def blockDirections
    {n : ℕ}
    (directions : Fin n → E)
    (B : Finset (Fin n)) :
    Fin B.card → E :=
  fun j => directions (blockOrderIso B j).1

@[simp]
theorem blockDirections_apply
    {n : ℕ}
    (directions : Fin n → E)
    (B : Finset (Fin n))
    (j : Fin B.card) :
    blockDirections directions B j =
      directions (blockOrderIso B j).1 :=
  rfl

/-- Every element of a block occurs in its canonical reindexing. -/
theorem exists_blockIndex
    {n : ℕ}
    (B : Finset (Fin n))
    {i : Fin n}
    (hi : i ∈ B) :
    ∃ j : Fin B.card, (blockOrderIso B j).1 = i := by
  let x : B := ⟨i, hi⟩
  obtain ⟨j, hj⟩ := (blockOrderIso B).surjective x
  exact ⟨j, congrArg Subtype.val hj⟩

/-- A block appearing in a finpartition is nonempty. -/
theorem block_nonempty_of_mem_parts
    {n : ℕ}
    (P : DirectionPartition n)
    {B : Finset (Fin n)}
    (hB : B ∈ P.parts) :
    B.Nonempty := by
  rw [Finset.nonempty_iff_ne_empty]
  intro h
  subst B
  exact P.bot_notMem hB

/-- A block appearing in a finpartition has positive order. -/
theorem block_card_pos_of_mem_parts
    {n : ℕ}
    (P : DirectionPartition n)
    {B : Finset (Fin n)}
    (hB : B ∈ P.parts) :
    0 < B.card :=
  Finset.card_pos.mpr (block_nonempty_of_mem_parts P hB)

/-- Any proper subset of the full direction set has strictly smaller
cardinality. -/
theorem block_card_lt_of_ne_univ
    (n : ℕ) (hn : 0 < n)
    {B : Finset (Fin n)}
    (hB : B ≠ (Finset.univ : Finset (Fin n))) :
    B.card < n := by
  have hss :
      B ⊂ (Finset.univ : Finset (Fin n)) :=
    Finset.ssubset_iff_subset_ne.mpr
      ⟨Finset.subset_univ B, hB⟩
  have hc := Finset.card_lt_card hss
  simpa using hc

/-- Every block in a proper partition has strictly smaller order than the
ambient direction family. -/
theorem block_card_lt_of_mem_properPartition
    (n : ℕ) (hn : 0 < n)
    {P : DirectionPartition n}
    (hP : P ∈ properPartitions n hn)
    {B : Finset (Fin n)}
    (hB : B ∈ P.parts) :
    B.card < n := by
  apply block_card_lt_of_ne_univ n hn
  intro hBu
  subst B
  exact (univ_not_mem_of_mem_properPartitions n hn hP) hB

/-- An order-indexed family of directional cumulant candidates. -/
abbrev DirectionCumulantFamily
    (E : Type u) (R : Type v) :=
  (m : ℕ) → (Fin m → E) → R

/-- Evaluate an order-indexed cumulant family on one canonically reindexed
partition block. -/
def blockCumulantValue
    {n : ℕ}
    (κ : DirectionCumulantFamily E R)
    (directions : Fin n → E)
    (B : Finset (Fin n)) : R :=
  κ B.card (blockDirections directions B)

/-- Turn an order-indexed directional cumulant family into the block functional
required by the abstract partition recursion. -/
def blockCumulantFunctional
    {n : ℕ}
    (κ : DirectionCumulantFamily E R)
    (directions : Fin n → E) :
    Finset (Fin n) → R :=
  fun B => blockCumulantValue κ directions B

@[simp]
theorem blockCumulantFunctional_apply
    {n : ℕ}
    (κ : DirectionCumulantFamily E R)
    (directions : Fin n → E)
    (B : Finset (Fin n)) :
    blockCumulantFunctional κ directions B =
      κ B.card (blockDirections directions B) :=
  rfl

section CommRing

variable [CommRing R]

/-- Product of directional block cumulants along one partition. -/
def directionalPartitionWeight
    {n : ℕ}
    (κ : DirectionCumulantFamily E R)
    (directions : Fin n → E)
    (P : DirectionPartition n) : R :=
  partitionWeight (blockCumulantFunctional κ directions) P

/-- Moment generated from an order-indexed directional cumulant family. -/
def directionalPartitionMoment
    (n : ℕ)
    (κ : DirectionCumulantFamily E R)
    (directions : Fin n → E) : R :=
  partitionMoment n (blockCumulantFunctional κ directions)

/-- Proper-partition contribution generated by lower-order directional
cumulants. -/
def directionalProperContribution
    (n : ℕ) (hn : 0 < n)
    (κ : DirectionCumulantFamily E R)
    (directions : Fin n → E) : R :=
  properPartitionContribution n hn
    (blockCumulantFunctional κ directions)

@[simp]
theorem directionalPartitionWeight_apply
    {n : ℕ}
    (κ : DirectionCumulantFamily E R)
    (directions : Fin n → E)
    (P : DirectionPartition n) :
    directionalPartitionWeight κ directions P =
      ∏ B ∈ P.parts,
        κ B.card (blockDirections directions B) :=
  rfl

/-- Two cumulant families agree strictly below order n. -/
def AgreeBelow
    (n : ℕ)
    (κ₁ κ₂ : DirectionCumulantFamily E R) : Prop :=
  ∀ m : ℕ, m < n →
    ∀ directions : Fin m → E,
      κ₁ m directions = κ₂ m directions

theorem AgreeBelow.refl
    (n : ℕ)
    (κ : DirectionCumulantFamily E R) :
    AgreeBelow n κ κ := by
  intro m hm directions
  rfl

theorem AgreeBelow.symm
    {n : ℕ}
    {κ₁ κ₂ : DirectionCumulantFamily E R}
    (h : AgreeBelow n κ₁ κ₂) :
    AgreeBelow n κ₂ κ₁ := by
  intro m hm directions
  exact (h m hm directions).symm

theorem AgreeBelow.trans
    {n : ℕ}
    {κ₁ κ₂ κ₃ : DirectionCumulantFamily E R}
    (h₁₂ : AgreeBelow n κ₁ κ₂)
    (h₂₃ : AgreeBelow n κ₂ κ₃) :
    AgreeBelow n κ₁ κ₃ := by
  intro m hm directions
  exact (h₁₂ m hm directions).trans
    (h₂₃ m hm directions)

/-- On a block of cardinality below n, AgreeBelow n gives equality of the
canonically reindexed cumulant values. -/
theorem blockCumulantValue_eq_of_agreeBelow
    {n : ℕ}
    {κ₁ κ₂ : DirectionCumulantFamily E R}
    (h : AgreeBelow n κ₁ κ₂)
    (directions : Fin n → E)
    {B : Finset (Fin n)}
    (hcard : B.card < n) :
    blockCumulantValue κ₁ directions B =
      blockCumulantValue κ₂ directions B :=
  h B.card hcard (blockDirections directions B)

/-- Every partition weight of a proper partition depends only on cumulant
orders strictly below n. -/
theorem directionalPartitionWeight_congr_of_agreeBelow
    (n : ℕ) (hn : 0 < n)
    {κ₁ κ₂ : DirectionCumulantFamily E R}
    (h : AgreeBelow n κ₁ κ₂)
    (directions : Fin n → E)
    {P : DirectionPartition n}
    (hP : P ∈ properPartitions n hn) :
    directionalPartitionWeight κ₁ directions P =
      directionalPartitionWeight κ₂ directions P := by
  unfold directionalPartitionWeight partitionWeight
  apply Finset.prod_congr rfl
  intro B hB
  exact h B.card
    (block_card_lt_of_mem_properPartition n hn hP hB)
    (blockDirections directions B)

/-- The total proper-partition contribution at order n depends only on
cumulant data of orders < n. -/
theorem directionalProperContribution_congr_of_agreeBelow
    (n : ℕ) (hn : 0 < n)
    {κ₁ κ₂ : DirectionCumulantFamily E R}
    (h : AgreeBelow n κ₁ κ₂)
    (directions : Fin n → E) :
    directionalProperContribution n hn κ₁ directions =
      directionalProperContribution n hn κ₂ directions := by
  unfold directionalProperContribution
  apply properPartitionContribution_congr n hn
  intro B hB
  exact h B.card
    (block_card_lt_of_ne_univ n hn hB)
    (blockDirections directions B)

/-- Recursive n-th directional cumulant candidate: the prescribed n-th moment
minus all products of lower-order block cumulants over proper partitions. -/
def recursiveDirectionalCumulant
    (n : ℕ) (hn : 0 < n)
    (moment : (Fin n → E) → R)
    (κ : DirectionCumulantFamily E R)
    (directions : Fin n → E) : R :=
  moment directions -
    directionalProperContribution n hn κ directions

/-- The directional recursion is exactly the generic isolated one-block
cumulant applied to the canonically reindexed block functional. -/
theorem recursiveDirectionalCumulant_eq_isolated
    (n : ℕ) (hn : 0 < n)
    (moment : (Fin n → E) → R)
    (κ : DirectionCumulantFamily E R)
    (directions : Fin n → E) :
    recursiveDirectionalCumulant n hn moment κ directions =
      isolatedOneBlockCumulant n hn
        (moment directions)
        (blockCumulantFunctional κ directions) :=
  rfl

/-- The recursive n-th cumulant depends only on lower-order cumulants. -/
theorem recursiveDirectionalCumulant_congr_of_agreeBelow
    (n : ℕ) (hn : 0 < n)
    (moment : (Fin n → E) → R)
    {κ₁ κ₂ : DirectionCumulantFamily E R}
    (h : AgreeBelow n κ₁ κ₂)
    (directions : Fin n → E) :
    recursiveDirectionalCumulant n hn moment κ₁ directions =
      recursiveDirectionalCumulant n hn moment κ₂ directions := by
  unfold recursiveDirectionalCumulant
  rw [directionalProperContribution_congr_of_agreeBelow
    n hn h directions]

/-- The abstract moment-cumulant relation for a direction family after the
one-block value has been recursively isolated. -/
theorem recursiveDirectionalUpdate_satisfies
    (n : ℕ) (hn : 0 < n)
    (moment : (Fin n → E) → R)
    (κ : DirectionCumulantFamily E R)
    (directions : Fin n → E) :
    SatisfiesMomentCumulantRelation n (moment directions)
      (recursiveCumulantUpdate n hn (moment directions)
        (blockCumulantFunctional κ directions)) :=
  recursiveCumulantUpdate_satisfies n hn
    (moment directions)
    (blockCumulantFunctional κ directions)

end CommRing

end MomentCumulant

end FormalResearch.PositiveAtlas
```
