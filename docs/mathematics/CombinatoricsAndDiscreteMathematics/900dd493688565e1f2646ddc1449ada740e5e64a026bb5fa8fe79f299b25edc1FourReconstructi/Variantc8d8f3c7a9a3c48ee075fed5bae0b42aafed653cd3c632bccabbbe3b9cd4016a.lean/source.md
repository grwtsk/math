# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.900dd493688565e1f2646ddc1449ada740e5e64a026bb5fa8fe79f299b25edc1FourReconstructi.Variantc8d8f3c7a9a3c48ee075fed5bae0b42aafed653cd3c632bccabbbe3b9cd4016a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f8944e31ff677ad28e2defc642161d2c40fcf084` · SHA-256 `e06e3d3d9a39bb6a6d288fbe2ee7352cca2564e63c026fe3940bed0339bc8da4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Partition4OfBlocks.Variant900dd493688565e1f2646ddc1449ada740e5e64a026bb5fa8fe79f299b25edc1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"900dd493688565e1f2646ddc1449ada740e5e64a026bb5fa8fe79f299b25edc1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Partition4OfBlocks.Variant900dd493688565e1f2646ddc1449ada740e5e64a026bb5fa8fe79f299b25edc1","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"900dd493688565e1f2646ddc1449ada740e5e64a026bb5fa8fe79f299b25edc1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/90/900dd493688565e1f2646ddc1449ada740e5e64a026bb5fa8fe79f299b25edc1--FourReconstructionNarrow.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Partition4OfBlocks.Variant900dd493688565e1f2646ddc1449ada740e5e64a026bb5fa8fe79f299b25edc1

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

/-- Select among the fourteen proper nonempty blocks. Boolean coordinates
keep the finite completeness certificate shallow enough for the kernel. -/
private def selectedFourBlocks (b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 : Bool) : Finset (Finset (Fin 4)) :=
  let s13 : Finset (Finset (Fin 4)) := if b13 then insert ({1, 2, 3} : Finset (Fin 4)) ∅ else ∅
  let s12 : Finset (Finset (Fin 4)) := if b12 then insert ({0, 2, 3} : Finset (Fin 4)) s13 else s13
  let s11 : Finset (Finset (Fin 4)) := if b11 then insert ({0, 1, 3} : Finset (Fin 4)) s12 else s12
  let s10 : Finset (Finset (Fin 4)) := if b10 then insert ({0, 1, 2} : Finset (Fin 4)) s11 else s11
  let s9 : Finset (Finset (Fin 4)) := if b9 then insert ({2, 3} : Finset (Fin 4)) s10 else s10
  let s8 : Finset (Finset (Fin 4)) := if b8 then insert ({1, 3} : Finset (Fin 4)) s9 else s9
  let s7 : Finset (Finset (Fin 4)) := if b7 then insert ({1, 2} : Finset (Fin 4)) s8 else s8
  let s6 : Finset (Finset (Fin 4)) := if b6 then insert ({0, 3} : Finset (Fin 4)) s7 else s7
  let s5 : Finset (Finset (Fin 4)) := if b5 then insert ({0, 2} : Finset (Fin 4)) s6 else s6
  let s4 : Finset (Finset (Fin 4)) := if b4 then insert ({0, 1} : Finset (Fin 4)) s5 else s5
  let s3 : Finset (Finset (Fin 4)) := if b3 then insert ({3} : Finset (Fin 4)) s4 else s4
  let s2 : Finset (Finset (Fin 4)) := if b2 then insert ({2} : Finset (Fin 4)) s3 else s3
  let s1 : Finset (Finset (Fin 4)) := if b1 then insert ({1} : Finset (Fin 4)) s2 else s2
  let s0 : Finset (Finset (Fin 4)) := if b0 then insert ({0} : Finset (Fin 4)) s1 else s1
  s0

private theorem mem_selected_insert
    (A B : Finset (Fin 4)) (ps : Finset (Finset (Fin 4))) (b : Bool) :
    A ∈ (if b then insert B ps else ps) ↔ (b = true ∧ A = B) ∨ A ∈ ps := by
  cases b <;> simp

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
  have hf := univ_not_mem_of_mem_properPartitions 4 (Nat.succ_pos 3) hP
  ext B
  have hall : (Finset.univ : Finset (Finset (Fin 4))) =
      {∅,
       ({0} : Finset (Fin 4)),
       ({1} : Finset (Fin 4)),
       ({2} : Finset (Fin 4)),
       ({3} : Finset (Fin 4)),
       ({0, 1} : Finset (Fin 4)),
       ({0, 2} : Finset (Fin 4)),
       ({0, 3} : Finset (Fin 4)),
       ({1, 2} : Finset (Fin 4)),
       ({1, 3} : Finset (Fin 4)),
       ({2, 3} : Finset (Fin 4)),
       ({0, 1, 2} : Finset (Fin 4)),
       ({0, 1, 3} : Finset (Fin 4)),
       ({0, 2, 3} : Finset (Fin 4)),
       ({1, 2, 3} : Finset (Fin 4)), Finset.univ} := by decide
  have hb := Finset.mem_univ B
  rw [hall] at hb
  simp only [Finset.mem_insert, Finset.mem_singleton] at hb
  rcases hb with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl |
    rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  all_goals simp [selectedFourBlocks, mem_selected_insert, hf, Finset.ext_iff, Fin.forall_fin_succ]


end MomentCumulant
end FormalResearch.PositiveAtlas
```
