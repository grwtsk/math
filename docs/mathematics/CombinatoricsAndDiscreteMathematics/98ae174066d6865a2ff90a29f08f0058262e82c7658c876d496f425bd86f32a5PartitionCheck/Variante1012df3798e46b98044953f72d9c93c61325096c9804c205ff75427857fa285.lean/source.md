# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.98ae174066d6865a2ff90a29f08f0058262e82c7658c876d496f425bd86f32a5PartitionCheck.Variante1012df3798e46b98044953f72d9c93c61325096c9804c205ff75427857fa285

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `989c5f4c75339a86e605016f91a690f2a0ebd9de` · SHA-256 `4e0bce1c86faa4b5ffebe4bbf69291c86b3563613d956831d65d3b936b4c8815`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Blocks01.Variant98ae174066d6865a2ff90a29f08f0058262e82c7658c876d496f425bd86f32a5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"98ae174066d6865a2ff90a29f08f0058262e82c7658c876d496f425bd86f32a5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Blocks01.Variant98ae174066d6865a2ff90a29f08f0058262e82c7658c876d496f425bd86f32a5","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"98ae174066d6865a2ff90a29f08f0058262e82c7658c876d496f425bd86f32a5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/98/98ae174066d6865a2ff90a29f08f0058262e82c7658c876d496f425bd86f32a5--PartitionCheck.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.OrderTwoRecursiveCumulant
import Mathlib.Data.Fin.VecNotation
import Mathlib.Tactic.FinCases

/-!
# Order-three recursive cumulant recovery

This module evaluates all proper partitions of three labelled directions.

There are four:
* the discrete partition 0|1|2;
* the pair-singleton partition 01|2;
* the pair-singleton partition 02|1;
* the pair-singleton partition 12|0.

Their total weight is

  kappa_1(0) kappa_1(1) kappa_1(2)
  + kappa_2(0,1) kappa_1(2)
  + kappa_2(0,2) kappa_1(1)
  + kappa_2(1,2) kappa_1(0).

The finite log-affine raw third moment is proved to equal the verified third
cumulant plus exactly these lower-order terms.  Hence the recursive raw
cumulant agrees with the verified analytic third cumulant.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Blocks01.Variant98ae174066d6865a2ff90a29f08f0058262e82c7658c876d496f425bd86f32a5

namespace FormalResearch.PositiveAtlas

universe u v

namespace MomentCumulant

variable {E : Type u}
variable {R : Type v} [CommRing R]

/-- Blocks for the partition 01|2. -/
def blocks01_2 : Finset (Finset (Fin 3)) :=
  {{(0 : Fin 3), (1 : Fin 3)}, {(2 : Fin 3)}}

/-- Blocks for the partition 02|1. -/
def blocks02_1 : Finset (Finset (Fin 3)) :=
  {{(0 : Fin 3), (2 : Fin 3)}, {(1 : Fin 3)}}

/-- Blocks for the partition 12|0. -/
def blocks12_0 : Finset (Finset (Fin 3)) :=
  {{(1 : Fin 3), (2 : Fin 3)}, {(0 : Fin 3)}}

/-- The pair-singleton partition 01|2. -/
def pairPartition01_2 : DirectionPartition 3 := by
  refine Finpartition.ofExistsUnique
    (s := (Finset.univ : Finset (Fin 3)))
    blocks01_2
    (fun p _ => Finset.subset_univ p)
    ?_ ?_
  · intro a ha
    fin_cases a <;> simp [ExistsUnique, blocks01_2]
  · decide

/-- The pair-singleton partition 02|1. -/
def pairPartition02_1 : DirectionPartition 3 := by
  refine Finpartition.ofExistsUnique
    (s := (Finset.univ : Finset (Fin 3)))
    blocks02_1
    (fun p _ => Finset.subset_univ p)
    ?_ ?_
  · intro a ha
    fin_cases a <;> simp [ExistsUnique, blocks02_1]
  · decide

/-- The pair-singleton partition 12|0. -/
def pairPartition12_0 : DirectionPartition 3 := by
  refine Finpartition.ofExistsUnique
    (s := (Finset.univ : Finset (Fin 3)))
    blocks12_0
    (fun p _ => Finset.subset_univ p)
    ?_ ?_
  · intro a ha
    fin_cases a <;> simp [ExistsUnique, blocks12_0]
  · decide

@[simp]
theorem pairPartition01_2_parts :
    pairPartition01_2.parts = blocks01_2 :=
  rfl

@[simp]
theorem pairPartition02_1_parts :
    pairPartition02_1.parts = blocks02_1 :=
  rfl

@[simp]
theorem pairPartition12_0_parts :
    pairPartition12_0.parts = blocks12_0 :=
  rfl

/-- The four proper partitions of three labelled directions. -/
def properPartitionsThreeExplicit :
    Finset (DirectionPartition 3) :=
  {(⊥ : DirectionPartition 3),
    pairPartition01_2,
    pairPartition02_1,
    pairPartition12_0}


example : (properPartitions 3 (Nat.succ_pos 2)).card = 4 := by decide +kernel
example : properPartitionsThreeExplicit.card = 4 := by decide
example : properPartitionsThreeExplicit ⊆ properPartitions 3 (Nat.succ_pos 2) := by
  intro P hP
  simp only [properPartitionsThreeExplicit, Finset.mem_insert, Finset.mem_singleton] at hP
  rcases hP with rfl | rfl | rfl | rfl
  all_goals
    apply Finset.mem_erase.mpr
    refine ⟨?_, Finset.mem_univ _⟩
    intro heq
    have hp := congrArg Finpartition.parts heq
    exact (by decide) hp
end MomentCumulant
end FormalResearch.PositiveAtlas
```
