# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.07c69accc45b354df6c50c33609fb47ab41a4bb003a45dfb9552edf2def7e37dOrderFourRecursi.Variant1c37acb083751ddbb2e0311d57b128f69194ea4db9ef5e43929897c3f6e56437

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4413da7f9e8ab84dfd22f300309d1d2977b0bae0` · SHA-256 `56366cdafd5e66b2629cea8ab3956783582faed799a92363f2354bfdcb567c49`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Partition4OfBlocks.Variant07c69accc45b354df6c50c33609fb47ab41a4bb003a45dfb9552edf2def7e37d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"07c69accc45b354df6c50c33609fb47ab41a4bb003a45dfb9552edf2def7e37d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Partition4OfBlocks.Variant07c69accc45b354df6c50c33609fb47ab41a4bb003a45dfb9552edf2def7e37d","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"07c69accc45b354df6c50c33609fb47ab41a4bb003a45dfb9552edf2def7e37d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/07/07c69accc45b354df6c50c33609fb47ab41a4bb003a45dfb9552edf2def7e37d--OrderFourRecursiveCumulant.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Partition4OfBlocks.Variant07c69accc45b354df6c50c33609fb47ab41a4bb003a45dfb9552edf2def7e37d

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
private def selectedFourBlocks
    (b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 : Bool) :
    Finset (Finset (Fin 4)) :=
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
    (A B : Finset (Fin 4)) (ps : Finset (Finset (Fin 4)))
    (p : Prop) [Decidable p] :
    A ∈ (if p then insert B ps else ps) ↔ (p ∧ A = B) ∨ A ∈ ps := by
  by_cases hp : p <;> simp [hp]

private theorem selectedFourBlocks_complete (b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 : Bool) :
    let ps := selectedFourBlocks b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13
    ps.SupIndep id ∧ ps.sup id = Finset.univ →
      ps ∈ properPartitionsFourExplicit.image Finpartition.parts := by
  revert b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13
  decide +kernel


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
  all_goals
    simp only [selectedFourBlocks, mem_selected_insert]
    simp [hf, Finset.ext_iff, Fin.forall_fin_succ]

/-- Closed finite enumeration of all proper order-four partitions. -/
theorem properPartitions_four_eq_explicit :
    properPartitions 4 (Nat.succ_pos 3) =
      properPartitionsFourExplicit := by
  apply Finset.Subset.antisymm
  · intro P hP
    have hr := selectedFourBlocks_reconstruct P hP
    have hc := selectedFourBlocks_complete
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
      (decide (({1, 2, 3} : Finset (Fin 4)) ∈ P.parts))
    have hm : P.parts ∈ properPartitionsFourExplicit.image Finpartition.parts := by
      rw [hr]
      apply hc
      rw [← hr]
      exact ⟨P.supIndep, P.sup_parts⟩
    obtain ⟨Q, hQ, hQP⟩ := Finset.mem_image.mp hm
    exact (Finpartition.ext hQP) ▸ hQ
  · intro P hP
    simp only [properPartitionsFourExplicit, Finset.mem_insert, Finset.mem_singleton] at hP
    rcases hP with rfl | rfl | rfl | rfl | rfl | rfl | rfl |
      rfl | rfl | rfl | rfl | rfl | rfl | rfl
    all_goals
      apply Finset.mem_erase.mpr
      refine ⟨?_, Finset.mem_univ _⟩
      intro heq
      have hp := congrArg Finpartition.parts heq
      exact absurd hp (by decide)

theorem parts_bot_four_eq_quadruple :
    (⊥ : DirectionPartition 4).parts =
      {{(0 : Fin 4)}, {(1 : Fin 4)}, {(2 : Fin 4)}, {(3 : Fin 4)}} := by
  decide

private theorem blockDirections_pair01_four
    (directions : Fin 4 → E) :
    blockDirections directions ({(0 : Fin 4), (1 : Fin 4)} : Finset (Fin 4)) =
      ![directions 0, directions 1] := by
  have h := Finset.orderEmbOfFin_unique
    (s := ({(0 : Fin 4), (1 : Fin 4)} : Finset (Fin 4)))
    (f := (![0, 1] : Fin 2 → Fin 4)) (by decide : _ = 2)
    (by decide) (by decide)
  funext j
  fin_cases j
  · exact congrArg directions (congrFun h 0).symm
  · exact congrArg directions (congrFun h 1).symm

private theorem blockDirections_pair02_four
    (directions : Fin 4 → E) :
    blockDirections directions ({(0 : Fin 4), (2 : Fin 4)} : Finset (Fin 4)) =
      ![directions 0, directions 2] := by
  have h := Finset.orderEmbOfFin_unique
    (s := ({(0 : Fin 4), (2 : Fin 4)} : Finset (Fin 4)))
    (f := (![0, 2] : Fin 2 → Fin 4)) (by decide : _ = 2)
    (by decide) (by decide)
  funext j
  fin_cases j
  · exact congrArg directions (congrFun h 0).symm
  · exact congrArg directions (congrFun h 1).symm

private theorem blockDirections_pair03_four
    (directions : Fin 4 → E) :
    blockDirections directions ({(0 : Fin 4), (3 : Fin 4)} : Finset (Fin 4)) =
      ![directions 0, directions 3] := by
  have h := Finset.orderEmbOfFin_unique
    (s := ({(0 : Fin 4), (3 : Fin 4)} : Finset (Fin 4)))
    (f := (![0, 3] : Fin 2 → Fin 4)) (by decide : _ = 2)
    (by decide) (by decide)
  funext j
  fin_cases j
  · exact congrArg directions (congrFun h 0).symm
  · exact congrArg directions (congrFun h 1).symm

private theorem blockDirections_pair12_four
    (directions : Fin 4 → E) :
    blockDirections directions ({(1 : Fin 4), (2 : Fin 4)} : Finset (Fin 4)) =
      ![directions 1, directions 2] := by
  have h := Finset.orderEmbOfFin_unique
    (s := ({(1 : Fin 4), (2 : Fin 4)} : Finset (Fin 4)))
    (f := (![1, 2] : Fin 2 → Fin 4)) (by decide : _ = 2)
    (by decide) (by decide)
  funext j
  fin_cases j
  · exact congrArg directions (congrFun h 0).symm
  · exact congrArg directions (congrFun h 1).symm

private theorem blockDirections_pair13_four
    (directions : Fin 4 → E) :
    blockDirections directions ({(1 : Fin 4), (3 : Fin 4)} : Finset (Fin 4)) =
      ![directions 1, directions 3] := by
  have h := Finset.orderEmbOfFin_unique
    (s := ({(1 : Fin 4), (3 : Fin 4)} : Finset (Fin 4)))
    (f := (![1, 3] : Fin 2 → Fin 4)) (by decide : _ = 2)
    (by decide) (by decide)
  funext j
  fin_cases j
  · exact congrArg directions (congrFun h 0).symm
  · exact congrArg directions (congrFun h 1).symm

private theorem blockDirections_pair23_four
    (directions : Fin 4 → E) :
    blockDirections directions ({(2 : Fin 4), (3 : Fin 4)} : Finset (Fin 4)) =
      ![directions 2, directions 3] := by
  have h := Finset.orderEmbOfFin_unique
    (s := ({(2 : Fin 4), (3 : Fin 4)} : Finset (Fin 4)))
    (f := (![2, 3] : Fin 2 → Fin 4)) (by decide : _ = 2)
    (by decide) (by decide)
  funext j
  fin_cases j
  · exact congrArg directions (congrFun h 0).symm
  · exact congrArg directions (congrFun h 1).symm

private theorem blockDirections_triple012_four
    (directions : Fin 4 → E) :
    blockDirections directions
        ({(0 : Fin 4), (1 : Fin 4), (2 : Fin 4)} : Finset (Fin 4)) =
      ![directions 0, directions 1, directions 2] := by
  have h := Finset.orderEmbOfFin_unique
    (s := ({(0 : Fin 4), (1 : Fin 4), (2 : Fin 4)} : Finset (Fin 4)))
    (f := (![0, 1, 2] : Fin 3 → Fin 4)) (by decide : _ = 3)
    (by decide) (by decide)
  funext j
  fin_cases j
  · exact congrArg directions (congrFun h 0).symm
  · exact congrArg directions (congrFun h 1).symm
  · exact congrArg directions (congrFun h 2).symm

private theorem blockDirections_triple013_four
    (directions : Fin 4 → E) :
    blockDirections directions
        ({(0 : Fin 4), (1 : Fin 4), (3 : Fin 4)} : Finset (Fin 4)) =
      ![directions 0, directions 1, directions 3] := by
  have h := Finset.orderEmbOfFin_unique
    (s := ({(0 : Fin 4), (1 : Fin 4), (3 : Fin 4)} : Finset (Fin 4)))
    (f := (![0, 1, 3] : Fin 3 → Fin 4)) (by decide : _ = 3)
    (by decide) (by decide)
  funext j
  fin_cases j
  · exact congrArg directions (congrFun h 0).symm
  · exact congrArg directions (congrFun h 1).symm
  · exact congrArg directions (congrFun h 2).symm

private theorem blockDirections_triple023_four
    (directions : Fin 4 → E) :
    blockDirections directions
        ({(0 : Fin 4), (2 : Fin 4), (3 : Fin 4)} : Finset (Fin 4)) =
      ![directions 0, directions 2, directions 3] := by
  have h := Finset.orderEmbOfFin_unique
    (s := ({(0 : Fin 4), (2 : Fin 4), (3 : Fin 4)} : Finset (Fin 4)))
    (f := (![0, 2, 3] : Fin 3 → Fin 4)) (by decide : _ = 3)
    (by decide) (by decide)
  funext j
  fin_cases j
  · exact congrArg directions (congrFun h 0).symm
  · exact congrArg directions (congrFun h 1).symm
  · exact congrArg directions (congrFun h 2).symm

private theorem blockDirections_triple123_four
    (directions : Fin 4 → E) :
    blockDirections directions
        ({(1 : Fin 4), (2 : Fin 4), (3 : Fin 4)} : Finset (Fin 4)) =
      ![directions 1, directions 2, directions 3] := by
  have h := Finset.orderEmbOfFin_unique
    (s := ({(1 : Fin 4), (2 : Fin 4), (3 : Fin 4)} : Finset (Fin 4)))
    (f := (![1, 2, 3] : Fin 3 → Fin 4)) (by decide : _ = 3)
    (by decide) (by decide)
  funext j
  fin_cases j
  · exact congrArg directions (congrFun h 0).symm
  · exact congrArg directions (congrFun h 1).symm
  · exact congrArg directions (congrFun h 2).symm

omit [CommRing R] in
@[simp] theorem blockCumulantValue_pair01_four
    (κ : DirectionCumulantFamily E R) (directions : Fin 4 → E) :
    blockCumulantValue κ directions ({(0 : Fin 4), (1 : Fin 4)} : Finset (Fin 4)) =
      κ 2 ![directions 0, directions 1] := by
  apply congrArg (κ 2)
  exact blockDirections_pair01_four directions

omit [CommRing R] in
@[simp] theorem blockCumulantValue_pair02_four
    (κ : DirectionCumulantFamily E R) (directions : Fin 4 → E) :
    blockCumulantValue κ directions ({(0 : Fin 4), (2 : Fin 4)} : Finset (Fin 4)) =
      κ 2 ![directions 0, directions 2] := by
  apply congrArg (κ 2)
  exact blockDirections_pair02_four directions

omit [CommRing R] in
@[simp] theorem blockCumulantValue_pair03_four
    (κ : DirectionCumulantFamily E R) (directions : Fin 4 → E) :
    blockCumulantValue κ directions ({(0 : Fin 4), (3 : Fin 4)} : Finset (Fin 4)) =
      κ 2 ![directions 0, directions 3] := by
  apply congrArg (κ 2)
  exact blockDirections_pair03_four directions

omit [CommRing R] in
@[simp] theorem blockCumulantValue_pair12_four
    (κ : DirectionCumulantFamily E R) (directions : Fin 4 → E) :
    blockCumulantValue κ directions ({(1 : Fin 4), (2 : Fin 4)} : Finset (Fin 4)) =
      κ 2 ![directions 1, directions 2] := by
  apply congrArg (κ 2)
  exact blockDirections_pair12_four directions

omit [CommRing R] in
@[simp] theorem blockCumulantValue_pair13_four
    (κ : DirectionCumulantFamily E R) (directions : Fin 4 → E) :
    blockCumulantValue κ directions ({(1 : Fin 4), (3 : Fin 4)} : Finset (Fin 4)) =
      κ 2 ![directions 1, directions 3] := by
  apply congrArg (κ 2)
  exact blockDirections_pair13_four directions

omit [CommRing R] in
@[simp] theorem blockCumulantValue_pair23_four
    (κ : DirectionCumulantFamily E R) (directions : Fin 4 → E) :
    blockCumulantValue κ directions ({(2 : Fin 4), (3 : Fin 4)} : Finset (Fin 4)) =
      κ 2 ![directions 2, directions 3] := by
  apply congrArg (κ 2)
  exact blockDirections_pair23_four directions

omit [CommRing R] in
@[simp] theorem blockCumulantValue_triple012_four
    (κ : DirectionCumulantFamily E R) (directions : Fin 4 → E) :
    blockCumulantValue κ directions
        ({(0 : Fin 4), (1 : Fin 4), (2 : Fin 4)} : Finset (Fin 4)) =
      κ 3 ![directions 0, directions 1, directions 2] := by
  apply congrArg (κ 3)
  exact blockDirections_triple012_four directions

omit [CommRing R] in
@[simp] theorem blockCumulantValue_triple013_four
    (κ : DirectionCumulantFamily E R) (directions : Fin 4 → E) :
    blockCumulantValue κ directions
        ({(0 : Fin 4), (1 : Fin 4), (3 : Fin 4)} : Finset (Fin 4)) =
      κ 3 ![directions 0, directions 1, directions 3] := by
  apply congrArg (κ 3)
  exact blockDirections_triple013_four directions

omit [CommRing R] in
@[simp] theorem blockCumulantValue_triple023_four
    (κ : DirectionCumulantFamily E R) (directions : Fin 4 → E) :
    blockCumulantValue κ directions
        ({(0 : Fin 4), (2 : Fin 4), (3 : Fin 4)} : Finset (Fin 4)) =
      κ 3 ![directions 0, directions 2, directions 3] := by
  apply congrArg (κ 3)
  exact blockDirections_triple023_four directions

omit [CommRing R] in
@[simp] theorem blockCumulantValue_triple123_four
    (κ : DirectionCumulantFamily E R) (directions : Fin 4 → E) :
    blockCumulantValue κ directions
        ({(1 : Fin 4), (2 : Fin 4), (3 : Fin 4)} : Finset (Fin 4)) =
      κ 3 ![directions 1, directions 2, directions 3] := by
  apply congrArg (κ 3)
  exact blockDirections_triple123_four directions

/-- The lower-order correction carried by all proper order-four partitions. -/
def fourthLowerCorrection
    (κ : DirectionCumulantFamily E R)
    (d : Fin 4 → E) : R :=
  κ 3 ![d 0, d 1, d 2] * κ 1 (fun _ : Fin 1 => d 3) +
  κ 3 ![d 0, d 1, d 3] * κ 1 (fun _ : Fin 1 => d 2) +
  κ 3 ![d 0, d 2, d 3] * κ 1 (fun _ : Fin 1 => d 1) +
  κ 3 ![d 1, d 2, d 3] * κ 1 (fun _ : Fin 1 => d 0) +
  κ 2 ![d 0, d 1] * κ 2 ![d 2, d 3] +
  κ 2 ![d 0, d 2] * κ 2 ![d 1, d 3] +
  κ 2 ![d 0, d 3] * κ 2 ![d 1, d 2] +
  κ 2 ![d 0, d 1] * κ 1 (fun _ : Fin 1 => d 2) *
    κ 1 (fun _ : Fin 1 => d 3) +
  κ 2 ![d 0, d 2] * κ 1 (fun _ : Fin 1 => d 1) *
    κ 1 (fun _ : Fin 1 => d 3) +
  κ 2 ![d 0, d 3] * κ 1 (fun _ : Fin 1 => d 1) *
    κ 1 (fun _ : Fin 1 => d 2) +
  κ 2 ![d 1, d 2] * κ 1 (fun _ : Fin 1 => d 0) *
    κ 1 (fun _ : Fin 1 => d 3) +
  κ 2 ![d 1, d 3] * κ 1 (fun _ : Fin 1 => d 0) *
    κ 1 (fun _ : Fin 1 => d 2) +
  κ 2 ![d 2, d 3] * κ 1 (fun _ : Fin 1 => d 0) *
    κ 1 (fun _ : Fin 1 => d 1) +
  κ 1 (fun _ : Fin 1 => d 0) *
    κ 1 (fun _ : Fin 1 => d 1) *
    κ 1 (fun _ : Fin 1 => d 2) *
    κ 1 (fun _ : Fin 1 => d 3)

private theorem weight_bot_four
    (κ : DirectionCumulantFamily E R) (d : Fin 4 → E) :
    directionalPartitionWeight κ d (⊥ : DirectionPartition 4) =
      κ 1 (fun _ : Fin 1 => d 0) *
      κ 1 (fun _ : Fin 1 => d 1) *
      κ 1 (fun _ : Fin 1 => d 2) *
      κ 1 (fun _ : Fin 1 => d 3) := by
  classical
  unfold directionalPartitionWeight partitionWeight
  rw [parts_bot_four_eq_quadruple]
  simp [blockCumulantFunctional, blockCumulantValue_singleton]
  ring

private theorem weight_p01_2_3
    (κ : DirectionCumulantFamily E R) (d : Fin 4 → E) :
    directionalPartitionWeight κ d p01_2_3 =
      κ 2 ![d 0, d 1] * κ 1 (fun _ : Fin 1 => d 2) *
        κ 1 (fun _ : Fin 1 => d 3) := by
  classical
  unfold directionalPartitionWeight partitionWeight
  rw [p01_2_3_parts]
  have h0 : ({0, 1} : Finset (Fin 4)) ∉
      ({({2} : Finset (Fin 4)), ({3} : Finset (Fin 4))} : Finset (Finset (Fin 4))) := by decide
  have h1 : ({2} : Finset (Fin 4)) ∉
      ({({3} : Finset (Fin 4))} : Finset (Finset (Fin 4))) := by decide
  simp [blockCumulantFunctional, blockCumulantValue_singleton, h0, h1, mul_assoc]

private theorem weight_p02_1_3
    (κ : DirectionCumulantFamily E R) (d : Fin 4 → E) :
    directionalPartitionWeight κ d p02_1_3 =
      κ 2 ![d 0, d 2] * κ 1 (fun _ : Fin 1 => d 1) *
        κ 1 (fun _ : Fin 1 => d 3) := by
  classical
  unfold directionalPartitionWeight partitionWeight
  rw [p02_1_3_parts]
  have h0 : ({0, 2} : Finset (Fin 4)) ∉
      ({({1} : Finset (Fin 4)), ({3} : Finset (Fin 4))} : Finset (Finset (Fin 4))) := by decide
  have h1 : ({1} : Finset (Fin 4)) ∉
      ({({3} : Finset (Fin 4))} : Finset (Finset (Fin 4))) := by decide
  simp [blockCumulantFunctional, blockCumulantValue_singleton, h0, h1, mul_assoc]

private theorem weight_p03_1_2
    (κ : DirectionCumulantFamily E R) (d : Fin 4 → E) :
    directionalPartitionWeight κ d p03_1_2 =
      κ 2 ![d 0, d 3] * κ 1 (fun _ : Fin 1 => d 1) *
        κ 1 (fun _ : Fin 1 => d 2) := by
  classical
  unfold directionalPartitionWeight partitionWeight
  rw [p03_1_2_parts]
  have h0 : ({0, 3} : Finset (Fin 4)) ∉
      ({({1} : Finset (Fin 4)), ({2} : Finset (Fin 4))} : Finset (Finset (Fin 4))) := by decide
  have h1 : ({1} : Finset (Fin 4)) ∉
      ({({2} : Finset (Fin 4))} : Finset (Finset (Fin 4))) := by decide
  simp [blockCumulantFunctional, blockCumulantValue_singleton, h0, h1, mul_assoc]

private theorem weight_p12_0_3
    (κ : DirectionCumulantFamily E R) (d : Fin 4 → E) :
    directionalPartitionWeight κ d p12_0_3 =
      κ 2 ![d 1, d 2] * κ 1 (fun _ : Fin 1 => d 0) *
        κ 1 (fun _ : Fin 1 => d 3) := by
  classical
  unfold directionalPartitionWeight partitionWeight
  rw [p12_0_3_parts]
  have h0 : ({1, 2} : Finset (Fin 4)) ∉
      ({({0} : Finset (Fin 4)), ({3} : Finset (Fin 4))} : Finset (Finset (Fin 4))) := by decide
  have h1 : ({0} : Finset (Fin 4)) ∉
      ({({3} : Finset (Fin 4))} : Finset (Finset (Fin 4))) := by decide
  simp [blockCumulantFunctional, blockCumulantValue_singleton, h0, h1, mul_assoc]

private theorem weight_p13_0_2
    (κ : DirectionCumulantFamily E R) (d : Fin 4 → E) :
    directionalPartitionWeight κ d p13_0_2 =
      κ 2 ![d 1, d 3] * κ 1 (fun _ : Fin 1 => d 0) *
        κ 1 (fun _ : Fin 1 => d 2) := by
  classical
  unfold directionalPartitionWeight partitionWeight
  rw [p13_0_2_parts]
  have h0 : ({1, 3} : Finset (Fin 4)) ∉
      ({({0} : Finset (Fin 4)), ({2} : Finset (Fin 4))} : Finset (Finset (Fin 4))) := by decide
  have h1 : ({0} : Finset (Fin 4)) ∉
      ({({2} : Finset (Fin 4))} : Finset (Finset (Fin 4))) := by decide
  simp [blockCumulantFunctional, blockCumulantValue_singleton, h0, h1, mul_assoc]

private theorem weight_p23_0_1
    (κ : DirectionCumulantFamily E R) (d : Fin 4 → E) :
    directionalPartitionWeight κ d p23_0_1 =
      κ 2 ![d 2, d 3] * κ 1 (fun _ : Fin 1 => d 0) *
        κ 1 (fun _ : Fin 1 => d 1) := by
  classical
  unfold directionalPartitionWeight partitionWeight
  rw [p23_0_1_parts]
  have h0 : ({2, 3} : Finset (Fin 4)) ∉
      ({({0} : Finset (Fin 4)), ({1} : Finset (Fin 4))} : Finset (Finset (Fin 4))) := by decide
  have h1 : ({0} : Finset (Fin 4)) ∉
      ({({1} : Finset (Fin 4))} : Finset (Finset (Fin 4))) := by decide
  simp [blockCumulantFunctional, blockCumulantValue_singleton, h0, h1, mul_assoc]

private theorem weight_p01_23
    (κ : DirectionCumulantFamily E R) (d : Fin 4 → E) :
    directionalPartitionWeight κ d p01_23 =
      κ 2 ![d 0, d 1] * κ 2 ![d 2, d 3] := by
  classical
  unfold directionalPartitionWeight partitionWeight
  rw [p01_23_parts]
  have h0 : ({0, 1} : Finset (Fin 4)) ∉
      ({({2, 3} : Finset (Fin 4))} : Finset (Finset (Fin 4))) := by decide
  simp [blockCumulantFunctional, h0]

private theorem weight_p02_13
    (κ : DirectionCumulantFamily E R) (d : Fin 4 → E) :
    directionalPartitionWeight κ d p02_13 =
      κ 2 ![d 0, d 2] * κ 2 ![d 1, d 3] := by
  classical
  unfold directionalPartitionWeight partitionWeight
  rw [p02_13_parts]
  have h0 : ({0, 2} : Finset (Fin 4)) ∉
      ({({1, 3} : Finset (Fin 4))} : Finset (Finset (Fin 4))) := by decide
  simp [blockCumulantFunctional, h0]

private theorem weight_p03_12
    (κ : DirectionCumulantFamily E R) (d : Fin 4 → E) :
    directionalPartitionWeight κ d p03_12 =
      κ 2 ![d 0, d 3] * κ 2 ![d 1, d 2] := by
  classical
  unfold directionalPartitionWeight partitionWeight
  rw [p03_12_parts]
  have h0 : ({0, 3} : Finset (Fin 4)) ∉
      ({({1, 2} : Finset (Fin 4))} : Finset (Finset (Fin 4))) := by decide
  simp [blockCumulantFunctional, h0]

private theorem weight_p012_3
    (κ : DirectionCumulantFamily E R) (d : Fin 4 → E) :
    directionalPartitionWeight κ d p012_3 =
      κ 3 ![d 0, d 1, d 2] * κ 1 (fun _ : Fin 1 => d 3) := by
  classical
  unfold directionalPartitionWeight partitionWeight
  rw [p012_3_parts]
  have h0 : ({0, 1, 2} : Finset (Fin 4)) ∉
      ({({3} : Finset (Fin 4))} : Finset (Finset (Fin 4))) := by decide
  simp [blockCumulantFunctional, blockCumulantValue_singleton, h0]

private theorem weight_p013_2
    (κ : DirectionCumulantFamily E R) (d : Fin 4 → E) :
    directionalPartitionWeight κ d p013_2 =
      κ 3 ![d 0, d 1, d 3] * κ 1 (fun _ : Fin 1 => d 2) := by
  classical
  unfold directionalPartitionWeight partitionWeight
  rw [p013_2_parts]
  have h0 : ({0, 1, 3} : Finset (Fin 4)) ∉
      ({({2} : Finset (Fin 4))} : Finset (Finset (Fin 4))) := by decide
  simp [blockCumulantFunctional, blockCumulantValue_singleton, h0]

private theorem weight_p023_1
    (κ : DirectionCumulantFamily E R) (d : Fin 4 → E) :
    directionalPartitionWeight κ d p023_1 =
      κ 3 ![d 0, d 2, d 3] * κ 1 (fun _ : Fin 1 => d 1) := by
  classical
  unfold directionalPartitionWeight partitionWeight
  rw [p023_1_parts]
  have h0 : ({0, 2, 3} : Finset (Fin 4)) ∉
      ({({1} : Finset (Fin 4))} : Finset (Finset (Fin 4))) := by decide
  simp [blockCumulantFunctional, blockCumulantValue_singleton, h0]

private theorem weight_p123_0
    (κ : DirectionCumulantFamily E R) (d : Fin 4 → E) :
    directionalPartitionWeight κ d p123_0 =
      κ 3 ![d 1, d 2, d 3] * κ 1 (fun _ : Fin 1 => d 0) := by
  classical
  unfold directionalPartitionWeight partitionWeight
  rw [p123_0_parts]
  have h0 : ({1, 2, 3} : Finset (Fin 4)) ∉
      ({({0} : Finset (Fin 4))} : Finset (Finset (Fin 4))) := by decide
  simp [blockCumulantFunctional, blockCumulantValue_singleton, h0]

/-- Full order-four proper-partition correction. -/
theorem directionalProperContribution_four
    (κ : DirectionCumulantFamily E R)
    (d : Fin 4 → E) :
    directionalProperContribution 4 (Nat.succ_pos 3) κ d =
      fourthLowerCorrection κ d := by
  classical
  unfold directionalProperContribution properPartitionContribution
  rw [properPartitions_four_eq_explicit]
  let ps := [(⊥ : DirectionPartition 4),
    p01_2_3, p02_1_3, p03_1_2, p12_0_3, p13_0_2, p23_0_1,
    p01_23, p02_13, p03_12, p012_3, p013_2, p023_1, p123_0]
  have hn : ps.Nodup := by decide
  change (∑ P ∈ ps.toFinset, directionalPartitionWeight κ d P) = _
  rw [List.sum_toFinset _ hn]
  simp only [ps, List.map_cons, List.map_nil, List.sum_cons, List.sum_nil,
    weight_bot_four, weight_p01_2_3, weight_p02_1_3, weight_p03_1_2,
    weight_p12_0_3, weight_p13_0_2, weight_p23_0_1,
    weight_p01_23, weight_p02_13, weight_p03_12,
    weight_p012_3, weight_p013_2, weight_p023_1, weight_p123_0,
    fourthLowerCorrection]
  ring

end MomentCumulant

variable {I : Type u} [Fintype I] [Nonempty I]
variable {E : Type v} [NormedAddCommGroup E] [NormedSpace ℝ E]

namespace FiniteLogAffineFamily

variable (F : FiniteLogAffineFamily I E)

open MomentCumulant

theorem rawDirectionalMoment_four
    (theta : E)
    (d : Fin 4 → E) :
    F.rawDirectionalMoment theta 4 d =
      ∑ i : I,
        F.probability theta i *
          F.statistic i (d 0) *
          F.statistic i (d 1) *
          F.statistic i (d 2) *
          F.statistic i (d 3) := by
  classical
  simp [rawDirectionalMoment, Fin.prod_univ_succ, mul_assoc]

/-- Expand the centered fourth moment into raw moments and centroids. -/
theorem fourthCentralMomentOperator_eq_raw_expansion
    (theta u v w z : E) :
    F.fourthCentralMomentOperator theta u v w z =
      (∑ i : I,
        F.probability theta i *
          F.statistic i u *
          F.statistic i v *
          F.statistic i w *
          F.statistic i z)
      -
      (∑ i : I,
        F.probability theta i *
          F.statistic i u *
          F.statistic i v *
          F.statistic i w) * F.centroid theta z
      -
      (∑ i : I,
        F.probability theta i *
          F.statistic i u *
          F.statistic i v *
          F.statistic i z) * F.centroid theta w
      -
      (∑ i : I,
        F.probability theta i *
          F.statistic i u *
          F.statistic i w *
          F.statistic i z) * F.centroid theta v
      -
      (∑ i : I,
        F.probability theta i *
          F.statistic i v *
          F.statistic i w *
          F.statistic i z) * F.centroid theta u
      +
      (∑ i : I,
        F.probability theta i *
          F.statistic i u *
          F.statistic i v) *
          F.centroid theta w * F.centroid theta z
      +
      (∑ i : I,
        F.probability theta i *
          F.statistic i u *
          F.statistic i w) *
          F.centroid theta v * F.centroid theta z
      +
      (∑ i : I,
        F.probability theta i *
          F.statistic i u *
          F.statistic i z) *
          F.centroid theta v * F.centroid theta w
      +
      (∑ i : I,
        F.probability theta i *
          F.statistic i v *
          F.statistic i w) *
          F.centroid theta u * F.centroid theta z
      +
      (∑ i : I,
        F.probability theta i *
          F.statistic i v *
          F.statistic i z) *
          F.centroid theta u * F.centroid theta w
      +
      (∑ i : I,
        F.probability theta i *
          F.statistic i w *
          F.statistic i z) *
          F.centroid theta u * F.centroid theta v
      -
      3 * (F.centroid theta u * F.centroid theta v *
        F.centroid theta w * F.centroid theta z) := by
  classical
  rw [F.fourthCentralMomentOperator_apply]
  simp_rw [F.centeredStatistic_apply]
  calc
    (∑ i : I,
      F.probability theta i *
        (F.statistic i u - F.centroid theta u) *
        (F.statistic i v - F.centroid theta v) *
        (F.statistic i w - F.centroid theta w) *
        (F.statistic i z - F.centroid theta z))
        =
      ∑ i : I,
        (F.probability theta i *
            F.statistic i u * F.statistic i v *
            F.statistic i w * F.statistic i z
        -
        (F.probability theta i *
            F.statistic i u * F.statistic i v *
            F.statistic i w) * F.centroid theta z
        -
        (F.probability theta i *
            F.statistic i u * F.statistic i v *
            F.statistic i z) * F.centroid theta w
        -
        (F.probability theta i *
            F.statistic i u * F.statistic i w *
            F.statistic i z) * F.centroid theta v
        -
        (F.probability theta i *
            F.statistic i v * F.statistic i w *
            F.statistic i z) * F.centroid theta u
        +
        (F.probability theta i *
            F.statistic i u * F.statistic i v) *
            F.centroid theta w * F.centroid theta z
        +
        (F.probability theta i *
            F.statistic i u * F.statistic i w) *
            F.centroid theta v * F.centroid theta z
        +
        (F.probability theta i *
            F.statistic i u * F.statistic i z) *
            F.centroid theta v * F.centroid theta w
        +
        (F.probability theta i *
            F.statistic i v * F.statistic i w) *
            F.centroid theta u * F.centroid theta z
        +
        (F.probability theta i *
            F.statistic i v * F.statistic i z) *
            F.centroid theta u * F.centroid theta w
        +
        (F.probability theta i *
            F.statistic i w * F.statistic i z) *
            F.centroid theta u * F.centroid theta v
        -
        (F.probability theta i * F.statistic i u) *
            F.centroid theta v * F.centroid theta w * F.centroid theta z
        -
        (F.probability theta i * F.statistic i v) *
            F.centroid theta u * F.centroid theta w * F.centroid theta z
        -
        (F.probability theta i * F.statistic i w) *
            F.centroid theta u * F.centroid theta v * F.centroid theta z
        -
        (F.probability theta i * F.statistic i z) *
            F.centroid theta u * F.centroid theta v * F.centroid theta w
        +
        F.probability theta i *
            F.centroid theta u * F.centroid theta v *
            F.centroid theta w * F.centroid theta z) := by
      apply Finset.sum_congr rfl
      intro i hi
      ring
    _ = _ := by
      simp only [Finset.sum_sub_distrib, Finset.sum_add_distrib, ← Finset.sum_mul]
      rw [← F.centroid_apply theta u,
        ← F.centroid_apply theta v,
        ← F.centroid_apply theta w,
        ← F.centroid_apply theta z,
        F.probability_sum]
      ring

/-- Raw fourth moment in the standard cumulant expansion. -/
theorem rawFourth_eq_fourthCumulant_add_lower
    (theta u v w z : E) :
    (∑ i : I,
      F.probability theta i *
        F.statistic i u *
        F.statistic i v *
        F.statistic i w *
        F.statistic i z)
      =
    F.fourthCumulantCovector theta u v w z
      +
    F.thirdCumulantOperator theta u v w * F.centroid theta z
      +
    F.thirdCumulantOperator theta u v z * F.centroid theta w
      +
    F.thirdCumulantOperator theta u w z * F.centroid theta v
      +
    F.thirdCumulantOperator theta v w z * F.centroid theta u
      +
    F.covarianceOperator theta u v * F.covarianceOperator theta w z
      +
    F.covarianceOperator theta u w * F.covarianceOperator theta v z
      +
    F.covarianceOperator theta u z * F.covarianceOperator theta v w
      +
    F.covarianceOperator theta u v * F.centroid theta w * F.centroid theta z
      +
    F.covarianceOperator theta u w * F.centroid theta v * F.centroid theta z
      +
    F.covarianceOperator theta u z * F.centroid theta v * F.centroid theta w
      +
    F.covarianceOperator theta v w * F.centroid theta u * F.centroid theta z
      +
    F.covarianceOperator theta v z * F.centroid theta u * F.centroid theta w
      +
    F.covarianceOperator theta w z * F.centroid theta u * F.centroid theta v
      +
    F.centroid theta u * F.centroid theta v *
      F.centroid theta w * F.centroid theta z := by
  have hcentral :=
    F.fourthCentralMomentOperator_eq_raw_expansion theta u v w z
  have hfour :=
    F.fourthCumulant_eq_centeredFourth_sub_pairings theta u v w z
  have r3uvw :
      (∑ i : I,
        F.probability theta i *
          F.statistic i u * F.statistic i v * F.statistic i w) =
        F.thirdCumulantOperator theta u v w +
          F.covarianceOperator theta u v * F.centroid theta w +
          F.covarianceOperator theta u w * F.centroid theta v +
          F.covarianceOperator theta v w * F.centroid theta u +
          F.centroid theta u * F.centroid theta v * F.centroid theta w := by
    have h := F.thirdCumulantOperator_eq_rawThird_sub_lower theta u v w
    ring_nf at h ⊢
    linarith
  have r3uvz :
      (∑ i : I,
        F.probability theta i *
          F.statistic i u * F.statistic i v * F.statistic i z) =
        F.thirdCumulantOperator theta u v z +
          F.covarianceOperator theta u v * F.centroid theta z +
          F.covarianceOperator theta u z * F.centroid theta v +
          F.covarianceOperator theta v z * F.centroid theta u +
          F.centroid theta u * F.centroid theta v * F.centroid theta z := by
    have h := F.thirdCumulantOperator_eq_rawThird_sub_lower theta u v z
    ring_nf at h ⊢
    linarith
  have r3uwz :
      (∑ i : I,
        F.probability theta i *
          F.statistic i u * F.statistic i w * F.statistic i z) =
        F.thirdCumulantOperator theta u w z +
          F.covarianceOperator theta u w * F.centroid theta z +
          F.covarianceOperator theta u z * F.centroid theta w +
          F.covarianceOperator theta w z * F.centroid theta u +
          F.centroid theta u * F.centroid theta w * F.centroid theta z := by
    have h := F.thirdCumulantOperator_eq_rawThird_sub_lower theta u w z
    ring_nf at h ⊢
    linarith
  have r3vwz :
      (∑ i : I,
        F.probability theta i *
          F.statistic i v * F.statistic i w * F.statistic i z) =
        F.thirdCumulantOperator theta v w z +
          F.covarianceOperator theta v w * F.centroid theta z +
          F.covarianceOperator theta v z * F.centroid theta w +
          F.covarianceOperator theta w z * F.centroid theta v +
          F.centroid theta v * F.centroid theta w * F.centroid theta z := by
    have h := F.thirdCumulantOperator_eq_rawThird_sub_lower theta v w z
    ring_nf at h ⊢
    linarith
  have r2uv :
      (∑ i : I,
        F.probability theta i * F.statistic i u * F.statistic i v) =
        F.covarianceOperator theta u v +
          F.centroid theta u * F.centroid theta v := by
    have h := F.covarianceOperator_eq_rawSecond_sub_centroid_mul theta u v
    ring_nf at h ⊢
    linarith
  have r2uw :
      (∑ i : I,
        F.probability theta i * F.statistic i u * F.statistic i w) =
        F.covarianceOperator theta u w +
          F.centroid theta u * F.centroid theta w := by
    have h := F.covarianceOperator_eq_rawSecond_sub_centroid_mul theta u w
    ring_nf at h ⊢
    linarith
  have r2uz :
      (∑ i : I,
        F.probability theta i * F.statistic i u * F.statistic i z) =
        F.covarianceOperator theta u z +
          F.centroid theta u * F.centroid theta z := by
    have h := F.covarianceOperator_eq_rawSecond_sub_centroid_mul theta u z
    ring_nf at h ⊢
    linarith
  have r2vw :
      (∑ i : I,
        F.probability theta i * F.statistic i v * F.statistic i w) =
        F.covarianceOperator theta v w +
          F.centroid theta v * F.centroid theta w := by
    have h := F.covarianceOperator_eq_rawSecond_sub_centroid_mul theta v w
    ring_nf at h ⊢
    linarith
  have r2vz :
      (∑ i : I,
        F.probability theta i * F.statistic i v * F.statistic i z) =
        F.covarianceOperator theta v z +
          F.centroid theta v * F.centroid theta z := by
    have h := F.covarianceOperator_eq_rawSecond_sub_centroid_mul theta v z
    ring_nf at h ⊢
    linarith
  have r2wz :
      (∑ i : I,
        F.probability theta i * F.statistic i w * F.statistic i z) =
        F.covarianceOperator theta w z +
          F.centroid theta w * F.centroid theta z := by
    have h := F.covarianceOperator_eq_rawSecond_sub_centroid_mul theta w z
    ring_nf at h ⊢
    linarith
  rw [r3uvw, r3uvz, r3uwz, r3vwz,
    r2uv, r2uw, r2uz, r2vw, r2vz, r2wz] at hcentral
  ring_nf at hcentral hfour ⊢
  linarith

/-- The raw fourth hierarchy equals the verified fourth cumulant plus the
complete lower-order partition correction. -/
theorem rawMomentHierarchy_four_eq_cumulants
    (theta : E)
    (d : Fin 4 → E) :
    F.rawMomentHierarchy theta 4 d =
      F.fourthDirectionalCumulant theta d +
        fourthLowerCorrection (F.finiteCumulantPrefix4 theta) d := by
  rw [F.rawMomentHierarchy_apply, F.rawDirectionalMoment_four,
    F.fourthDirectionalCumulant_eq_covector]
  simp only [fourthLowerCorrection,
    F.finiteCumulantPrefix4_one,
    F.finiteCumulantPrefix4_two,
    F.finiteCumulantPrefix4_three,
    F.firstDirectionalCumulant_eq_centroid,
    F.secondDirectionalCumulant_eq_covariance,
    F.thirdDirectionalCumulant_eq_operator, Matrix.cons_val_zero, Matrix.cons_val_one,
    Matrix.cons_val_two, Matrix.head_cons, Matrix.tail_cons]
  simpa only [add_assoc] using F.rawFourth_eq_fourthCumulant_add_lower
    theta (d 0) (d 1) (d 2) (d 3)

/-- The recursive raw proper contribution at order four equals the correction
built from the verified prefix. -/
theorem recursiveRawProperContribution_four
    (theta : E)
    (d : Fin 4 → E) :
    directionalProperContribution
        4 (Nat.succ_pos 3)
        (F.recursiveRawCumulantFamily theta) d =
      fourthLowerCorrection (F.finiteCumulantPrefix4 theta) d := by
  rw [directionalProperContribution_four]
  simp [fourthLowerCorrection,
    F.recursiveRawCumulantFamily_one,
    F.recursiveRawCumulantFamily_two,
    F.recursiveRawCumulantFamily_three]

/-- Recursive raw cumulant recovery at order four. -/
theorem recursiveRawCumulantFamily_four
    (theta : E)
    (d : Fin 4 → E) :
    F.recursiveRawCumulantFamily theta 4 d =
      F.fourthDirectionalCumulant theta d := by
  rw [recursiveRawCumulantFamily,
    recursiveCumulantFamily_eq_moment_sub_proper
      (F.rawMomentHierarchy theta) 4 (Nat.succ_pos 3) d]
  change F.rawMomentHierarchy theta 4 d -
      directionalProperContribution 4 (Nat.succ_pos 3)
        (F.recursiveRawCumulantFamily theta) d =
    F.fourthDirectionalCumulant theta d
  rw [F.recursiveRawProperContribution_four,
    F.rawMomentHierarchy_four_eq_cumulants]
  ring

/-- Recursive raw cumulants agree with the independently verified analytic
prefix through order four. -/
theorem recursiveRawCumulantFamily_matches_prefix4
    (theta : E) :
    MatchesFiniteCumulantPrefix4 F theta
      (F.recursiveRawCumulantFamily theta) where
  order0 := F.recursiveRawCumulantFamily_zero theta
  order1 := F.recursiveRawCumulantFamily_one theta
  order2 := F.recursiveRawCumulantFamily_two theta
  order3 := F.recursiveRawCumulantFamily_three theta
  order4 := F.recursiveRawCumulantFamily_four theta

end FiniteLogAffineFamily

end FormalResearch.PositiveAtlas
```
