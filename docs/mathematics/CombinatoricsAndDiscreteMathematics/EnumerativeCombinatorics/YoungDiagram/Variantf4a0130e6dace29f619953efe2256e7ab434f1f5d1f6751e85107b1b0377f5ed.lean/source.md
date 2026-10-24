# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.YoungDiagram.Variantf4a0130e6dace29f619953efe2256e7ab434f1f5d1f6751e85107b1b0377f5ed

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ad16944e598f2b350b7490a9d1af92f20ff7b00c` · SHA-256 `60d8c4f70eb69fbc277162d0edb205ab8e30925ac9f223add99137ea63068cb5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.ToPartition.Variantd67086d575f8e2d726bcb9fd5de552db9ae2352e0653dd245c9834b3c4ffa523","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d67086d575f8e2d726bcb9fd5de552db9ae2352e0653dd245c9834b3c4ffa523","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.EnumerativeCombinatorics.SourceCorpus.ToPartition.Variantd67086d575f8e2d726bcb9fd5de552db9ae2352e0653dd245c9834b3c4ffa523","mathematical_subject":"Combinatorics.EnumerativeCombinatorics","original_sha256":"d67086d575f8e2d726bcb9fd5de552db9ae2352e0653dd245c9834b3c4ffa523","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Combinatorics/Enumerative/Partition/YoungDiagram.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Kevin Gomez. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kevin Gomez
-/
module

public import Mathlib.Combinatorics.Enumerative.Partition.Basic
public import Mathlib.Combinatorics.Young.YoungDiagram

/-!
# Young diagram of a partition

This file defines the equivalence between Young diagrams `μ` with cardinality `n` and
partitions of `n`, where each row of the diagram becomes a part of the partition.
The two directions are `YoungDiagram.toPartition` and `YoungDiagram.ofPartition`.

Using this equivalence, the conjugate of a partition is also defined. Given the Young
diagram `μ` representing a partition `λ`, its conjugate `λ'` is the partition obtained
by flipping `μ` about the main diagonal, i.e. the columns of `μ` are the parts of `λ'`.
This is implemented here directly via `YoungDiagram.transpose`.

-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.ToPartition.Variantd67086d575f8e2d726bcb9fd5de552db9ae2352e0653dd245c9834b3c4ffa523

@[expose] public section

namespace YoungDiagram

/-- Convert a Young diagram to a partition. -/
def toPartition {n : ℕ} (μ : YoungDiagram) (h : μ.card = n) : Nat.Partition n where
  parts := μ.rowLens
  parts_pos := μ.pos_of_mem_rowLens _
  parts_sum := by simp [sum_rowLens_eq_card, h]

/-- Convert a partition to a Young diagram. -/
def ofPartition {n : ℕ} (p : Nat.Partition n) : YoungDiagram :=
  ofRowLens
    (p.parts.sort (· ≥ ·))
    (Multiset.pairwise_sort p.parts (· ≥ ·)).sortedGE

@[simp]
theorem rowLens_ofPartition_eq_sort_parts {n : ℕ} (p : Nat.Partition n) :
    (ofPartition p).rowLens = p.parts.sort (· ≥ ·) := by
  grind [ofPartition, rowLens_ofRowLens_eq_self, Multiset.mem_sort]

@[simp]
theorem card_ofPartition {n : ℕ} (p : Nat.Partition n) :
    (ofPartition p).card = n := by
  rw [← sum_rowLens_eq_card, rowLens_ofPartition_eq_sort_parts, ← Multiset.sum_coe,
    Multiset.sort_eq, p.parts_sum]

@[simp]
theorem ofPartition_toPartition {n : ℕ} {μ : YoungDiagram} (h : μ.card = n) :
    ofPartition (μ.toPartition h) = μ := by
  simp [ofPartition, toPartition, List.mergeSort_eq_self (· ≥ ·) μ.rowLens_sorted.pairwise,
    ofRowLens_to_rowLens_eq_self]

@[simp]
theorem toPartition_ofPartition {n : ℕ} {p : Nat.Partition n} :
    (ofPartition p).toPartition (card_ofPartition p) = p := by
  ext
  simp [toPartition]

/-- Equivalence between Young diagrams of cardinality `n` and partitions of `n`. -/
def equivPartition {n : ℕ} : { μ : YoungDiagram // μ.card = n } ≃ Nat.Partition n where
  toFun μ := toPartition μ μ.2
  invFun p := ⟨ofPartition p, card_ofPartition p⟩
  left_inv := fun ⟨_, h⟩ => Subtype.mk_eq_mk.mpr (ofPartition_toPartition h)
  right_inv := fun _ => toPartition_ofPartition

end YoungDiagram

namespace Nat.Partition

/-- Conjugate a partition (equivalent to transposing its Young diagram). -/
def conjugate {n : ℕ} (p : Partition n) : Partition n :=
  (YoungDiagram.ofPartition p).transpose.toPartition (by simp)

/-- Conjugation is an involution. -/
@[simp]
theorem conjugate_conjugate {n : ℕ} (p : Partition n) : p.conjugate.conjugate = p := by
  ext
  simp [conjugate]

end Nat.Partition
```
