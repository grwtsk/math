# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.5cae2e80ee5ce468b2ace60a0bb7ce43298a2c847e057285592f78b9fdf54e48FourReconstructi.Variant08891aaccba5e6469dd62888d891eb5d8cc7b5527a3b47d0654b538f7ccda667

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eadd6d36933bbbd1f5e8686ced5dacf3a7d81669` · SHA-256 `583e2c0bcfa87681d476e628d85825ee6c314497806703b3da9bf5dd33ad36ca`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Partition4OfBlocks.Variant5cae2e80ee5ce468b2ace60a0bb7ce43298a2c847e057285592f78b9fdf54e48","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5cae2e80ee5ce468b2ace60a0bb7ce43298a2c847e057285592f78b9fdf54e48","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Partition4OfBlocks.Variant5cae2e80ee5ce468b2ace60a0bb7ce43298a2c847e057285592f78b9fdf54e48","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"5cae2e80ee5ce468b2ace60a0bb7ce43298a2c847e057285592f78b9fdf54e48","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/5c/5cae2e80ee5ce468b2ace60a0bb7ce43298a2c847e057285592f78b9fdf54e48--FourReconstructionFilter.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.OrderThreeRecursiveCumulant

/-!
# Order-four recursive cumulant recovery

This module closes the verified recursive cumulant prefix through order four.

The fourteen proper partitions of four labelled directions are grouped by block
type:

* 1+1+1+1: one discrete partition;
* 2+1+1: six partitions;
* 2+2: three partitions;
* 3+1: four partitions.

Their total weight is packaged as fourthLowerCorrection.

Independently, the finite log-affine raw fourth moment is expanded and proved
to equal the verified fourth cumulant plus the same lower-order correction.
The recursive raw cumulant therefore agrees with the independently proved
analytic fourth cumulant.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Partition4OfBlocks.Variant5cae2e80ee5ce468b2ace60a0bb7ce43298a2c847e057285592f78b9fdf54e48

namespace FormalResearch.PositiveAtlas

universe u v

namespace MomentCumulant

variable {E : Type u}
variable {R : Type v} [CommRing R]

/-- Build a partition of Fin 4 from explicit blocks. -/
def partition4OfBlocks
    (parts : Finset (Finset (Fin 4)))
    (huniq : ∀ a : Fin 4, ∃! t, t ∈ parts ∧ a ∈ t)
    (hno : ∅ ∉ parts) :
    DirectionPartition 4 :=
  Finpartition.ofExistsUnique
    (s := (Finset.univ : Finset (Fin 4)))
    parts
    (fun p _ => Finset.subset_univ p)
    (fun a _ => huniq a)
    hno

def p01_2_3 : DirectionPartition 4 :=
  partition4OfBlocks
    {{(0 : Fin 4), (1 : Fin 4)}, {(2 : Fin 4)}, {(3 : Fin 4)}}
    (by intro a; fin_cases a <;> simp [ExistsUnique])
    (by decide)

def p02_1_3 : DirectionPartition 4 :=
  partition4OfBlocks
    {{(0 : Fin 4), (2 : Fin 4)}, {(1 : Fin 4)}, {(3 : Fin 4)}}
    (by intro a; fin_cases a <;> simp [ExistsUnique])
    (by decide)

def p03_1_2 : DirectionPartition 4 :=
  partition4OfBlocks
    {{(0 : Fin 4), (3 : Fin 4)}, {(1 : Fin 4)}, {(2 : Fin 4)}}
    (by intro a; fin_cases a <;> simp [ExistsUnique])
    (by decide)

def p12_0_3 : DirectionPartition 4 :=
  partition4OfBlocks
    {{(1 : Fin 4), (2 : Fin 4)}, {(0 : Fin 4)}, {(3 : Fin 4)}}
    (by intro a; fin_cases a <;> simp [ExistsUnique])
    (by decide)

def p13_0_2 : DirectionPartition 4 :=
  partition4OfBlocks
    {{(1 : Fin 4), (3 : Fin 4)}, {(0 : Fin 4)}, {(2 : Fin 4)}}
    (by intro a; fin_cases a <;> simp [ExistsUnique])
    (by decide)

def p23_0_1 : DirectionPartition 4 :=
  partition4OfBlocks
    {{(2 : Fin 4), (3 : Fin 4)}, {(0 : Fin 4)}, {(1 : Fin 4)}}
    (by intro a; fin_cases a <;> simp [ExistsUnique])
    (by decide)

def p01_23 : DirectionPartition 4 :=
  partition4OfBlocks
    {{(0 : Fin 4), (1 : Fin 4)}, {(2 : Fin 4), (3 : Fin 4)}}
    (by intro a; fin_cases a <;> simp [ExistsUnique])
    (by decide)

def p02_13 : DirectionPartition 4 :=
  partition4OfBlocks
    {{(0 : Fin 4), (2 : Fin 4)}, {(1 : Fin 4), (3 : Fin 4)}}
    (by intro a; fin_cases a <;> simp [ExistsUnique])
    (by decide)

def p03_12 : DirectionPartition 4 :=
  partition4OfBlocks
    {{(0 : Fin 4), (3 : Fin 4)}, {(1 : Fin 4), (2 : Fin 4)}}
    (by intro a; fin_cases a <;> simp [ExistsUnique])
    (by decide)

def p012_3 : DirectionPartition 4 :=
  partition4OfBlocks
    {{(0 : Fin 4), (1 : Fin 4), (2 : Fin 4)}, {(3 : Fin 4)}}
    (by intro a; fin_cases a <;> simp [ExistsUnique])
    (by decide)

def p013_2 : DirectionPartition 4 :=
  partition4OfBlocks
    {{(0 : Fin 4), (1 : Fin 4), (3 : Fin 4)}, {(2 : Fin 4)}}
    (by intro a; fin_cases a <;> simp [ExistsUnique])
    (by decide)

def p023_1 : DirectionPartition 4 :=
  partition4OfBlocks
    {{(0 : Fin 4), (2 : Fin 4), (3 : Fin 4)}, {(1 : Fin 4)}}
    (by intro a; fin_cases a <;> simp [ExistsUnique])
    (by decide)

def p123_0 : DirectionPartition 4 :=
  partition4OfBlocks
    {{(1 : Fin 4), (2 : Fin 4), (3 : Fin 4)}, {(0 : Fin 4)}}
    (by intro a; fin_cases a <;> simp [ExistsUnique])
    (by decide)

@[simp] theorem p01_2_3_parts :
    p01_2_3.parts =
      {{(0 : Fin 4), (1 : Fin 4)}, {(2 : Fin 4)}, {(3 : Fin 4)}} := rfl
@[simp] theorem p02_1_3_parts :
    p02_1_3.parts =
      {{(0 : Fin 4), (2 : Fin 4)}, {(1 : Fin 4)}, {(3 : Fin 4)}} := rfl
@[simp] theorem p03_1_2_parts :
    p03_1_2.parts =
      {{(0 : Fin 4), (3 : Fin 4)}, {(1 : Fin 4)}, {(2 : Fin 4)}} := rfl
@[simp] theorem p12_0_3_parts :
    p12_0_3.parts =
      {{(1 : Fin 4), (2 : Fin 4)}, {(0 : Fin 4)}, {(3 : Fin 4)}} := rfl
@[simp] theorem p13_0_2_parts :
    p13_0_2.parts =
      {{(1 : Fin 4), (3 : Fin 4)}, {(0 : Fin 4)}, {(2 : Fin 4)}} := rfl
@[simp] theorem p23_0_1_parts :
    p23_0_1.parts =
      {{(2 : Fin 4), (3 : Fin 4)}, {(0 : Fin 4)}, {(1 : Fin 4)}} := rfl
@[simp] theorem p01_23_parts :
    p01_23.parts =
      {{(0 : Fin 4), (1 : Fin 4)}, {(2 : Fin 4), (3 : Fin 4)}} := rfl
@[simp] theorem p02_13_parts :
    p02_13.parts =
      {{(0 : Fin 4), (2 : Fin 4)}, {(1 : Fin 4), (3 : Fin 4)}} := rfl
@[simp] theorem p03_12_parts :
    p03_12.parts =
      {{(0 : Fin 4), (3 : Fin 4)}, {(1 : Fin 4), (2 : Fin 4)}} := rfl
@[simp] theorem p012_3_parts :
    p012_3.parts =
      {{(0 : Fin 4), (1 : Fin 4), (2 : Fin 4)}, {(3 : Fin 4)}} := rfl
@[simp] theorem p013_2_parts :
    p013_2.parts =
      {{(0 : Fin 4), (1 : Fin 4), (3 : Fin 4)}, {(2 : Fin 4)}} := rfl
@[simp] theorem p023_1_parts :
    p023_1.parts =
      {{(0 : Fin 4), (2 : Fin 4), (3 : Fin 4)}, {(1 : Fin 4)}} := rfl
@[simp] theorem p123_0_parts :
    p123_0.parts =
      {{(1 : Fin 4), (2 : Fin 4), (3 : Fin 4)}, {(0 : Fin 4)}} := rfl

/-- The fourteen proper partitions of four labelled directions. -/
def properPartitionsFourExplicit : Finset (DirectionPartition 4) :=
  {(⊥ : DirectionPartition 4),
    p01_2_3, p02_1_3, p03_1_2, p12_0_3, p13_0_2, p23_0_1,
    p01_23, p02_13, p03_12,
    p012_3, p013_2, p023_1, p123_0}

private def selectedFourBlocks (b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 : Bool) : Finset (Finset (Fin 4)) :=
  Finset.univ.filter fun B =>
    (b0 && decide (B = ({0} : Finset (Fin 4)))) ||
    (b1 && decide (B = ({1} : Finset (Fin 4)))) ||
    (b2 && decide (B = ({2} : Finset (Fin 4)))) ||
    (b3 && decide (B = ({3} : Finset (Fin 4)))) ||
    (b4 && decide (B = ({0, 1} : Finset (Fin 4)))) ||
    (b5 && decide (B = ({0, 2} : Finset (Fin 4)))) ||
    (b6 && decide (B = ({0, 3} : Finset (Fin 4)))) ||
    (b7 && decide (B = ({1, 2} : Finset (Fin 4)))) ||
    (b8 && decide (B = ({1, 3} : Finset (Fin 4)))) ||
    (b9 && decide (B = ({2, 3} : Finset (Fin 4)))) ||
    (b10 && decide (B = ({0, 1, 2} : Finset (Fin 4)))) ||
    (b11 && decide (B = ({0, 1, 3} : Finset (Fin 4)))) ||
    (b12 && decide (B = ({0, 2, 3} : Finset (Fin 4)))) ||
    (b13 && decide (B = ({1, 2, 3} : Finset (Fin 4))))

private theorem selectedFourBlocks_reconstruct
    (P : DirectionPartition 4) (hP : P ∈ properPartitions 4 (Nat.succ_pos 3)) :
    P.parts = selectedFourBlocks
    (decide (({0} : Finset (Fin 4)) ∈ P.parts))
    (decide (({1} : Finset (Fin 4)) ∈ P.parts))
    (decide (({2} : Finset (Fin 4)) ∈ P.parts))
    (decide (({3} : Finset (Fin 4)) ∈ P.parts))
    (decide (({0, 1} : Finset (Fin 4)) ∈ P.parts))
    (decide (({0, 2} : Finset (Fin 4)) ∈ P.parts))
    (decide (({0, 3} : Finset (Fin 4)) ∈ P.parts))
    (decide (({1, 2} : Finset (Fin 4)) ∈ P.parts))
    (decide (({1, 3} : Finset (Fin 4)) ∈ P.parts))
    (decide (({2, 3} : Finset (Fin 4)) ∈ P.parts))
    (decide (({0, 1, 2} : Finset (Fin 4)) ∈ P.parts))
    (decide (({0, 1, 3} : Finset (Fin 4)) ∈ P.parts))
    (decide (({0, 2, 3} : Finset (Fin 4)) ∈ P.parts))
    (decide (({1, 2, 3} : Finset (Fin 4)) ∈ P.parts)) := by
  have he := P.bot_notMem
  have hf := univ_not_mem_of_mem_properPartitions 4 (Nat.succ_pos 3) hP
  ext B
  fin_cases B <;> simp [selectedFourBlocks, he, hf, Finset.insert_comm, Finset.insert_left_comm,
    Finset.insert_assoc]
end MomentCumulant
end FormalResearch.PositiveAtlas
```
