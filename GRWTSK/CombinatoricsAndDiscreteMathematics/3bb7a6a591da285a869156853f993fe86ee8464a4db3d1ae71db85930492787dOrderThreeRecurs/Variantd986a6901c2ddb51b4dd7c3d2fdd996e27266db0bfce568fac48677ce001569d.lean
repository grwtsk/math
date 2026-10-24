-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Blocks01.Variant3bb7a6a591da285a869156853f993fe86ee8464a4db3d1ae71db85930492787d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3bb7a6a591da285a869156853f993fe86ee8464a4db3d1ae71db85930492787d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Blocks01.Variant3bb7a6a591da285a869156853f993fe86ee8464a4db3d1ae71db85930492787d","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"3bb7a6a591da285a869156853f993fe86ee8464a4db3d1ae71db85930492787d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/3b/3bb7a6a591da285a869156853f993fe86ee8464a4db3d1ae71db85930492787d--OrderThreeRecursiveCumulant.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Blocks01.Variant3bb7a6a591da285a869156853f993fe86ee8464a4db3d1ae71db85930492787d

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

/-- The explicit four-element list is exactly the proper-partition finset at
order three.  This is a closed finite combinatorial statement checked by the
kernel. -/
theorem properPartitions_three_eq_explicit :
    properPartitions 3 (Nat.succ_pos 2) =
      properPartitionsThreeExplicit := by
  have hcard : (properPartitions 3 (Nat.succ_pos 2)).card = 4 := by
    decide +kernel
  have hexplicit : properPartitionsThreeExplicit.card = 4 := by decide
  have hsub : properPartitionsThreeExplicit ⊆ properPartitions 3 (Nat.succ_pos 2) := by
    intro P hP
    simp only [properPartitionsThreeExplicit, Finset.mem_insert, Finset.mem_singleton] at hP
    rcases hP with rfl | rfl | rfl | rfl
    all_goals
      apply Finset.mem_erase.mpr
      refine ⟨?_, Finset.mem_univ _⟩
      intro heq
      have hp := congrArg Finpartition.parts heq
      exact absurd hp (by decide)
  exact (Finset.eq_of_subset_of_card_le hsub (by omega)).symm

/-- The discrete partition of three directions consists of the three singleton
blocks. -/
theorem parts_bot_three_eq_triple :
    (⊥ : DirectionPartition 3).parts =
      {{(0 : Fin 3)}, {(1 : Fin 3)}, {(2 : Fin 3)}} := by
  decide

/-- Canonical reindexing of the block {0,1}. -/
theorem blockDirections_pair01
    (directions : Fin 3 → E) :
    blockDirections directions
        ({(0 : Fin 3), (1 : Fin 3)} : Finset (Fin 3)) =
      ![directions 0, directions 1] := by
  have h := Finset.orderEmbOfFin_unique
    (s := ({(0 : Fin 3), (1 : Fin 3)} : Finset (Fin 3)))
    (f := (![0, 1] : Fin 2 → Fin 3)) (by decide : _ = 2)
    (by decide) (by decide)
  funext j
  fin_cases j
  · exact congrArg directions (congrFun h 0).symm
  · exact congrArg directions (congrFun h 1).symm

/-- Canonical reindexing of the block {0,2}. -/
theorem blockDirections_pair02
    (directions : Fin 3 → E) :
    blockDirections directions
        ({(0 : Fin 3), (2 : Fin 3)} : Finset (Fin 3)) =
      ![directions 0, directions 2] := by
  have h := Finset.orderEmbOfFin_unique
    (s := ({(0 : Fin 3), (2 : Fin 3)} : Finset (Fin 3)))
    (f := (![0, 2] : Fin 2 → Fin 3)) (by decide : _ = 2)
    (by decide) (by decide)
  funext j
  fin_cases j
  · exact congrArg directions (congrFun h 0).symm
  · exact congrArg directions (congrFun h 1).symm

/-- Canonical reindexing of the block {1,2}. -/
theorem blockDirections_pair12
    (directions : Fin 3 → E) :
    blockDirections directions
        ({(1 : Fin 3), (2 : Fin 3)} : Finset (Fin 3)) =
      ![directions 1, directions 2] := by
  have h := Finset.orderEmbOfFin_unique
    (s := ({(1 : Fin 3), (2 : Fin 3)} : Finset (Fin 3)))
    (f := (![1, 2] : Fin 2 → Fin 3)) (by decide : _ = 2)
    (by decide) (by decide)
  funext j
  fin_cases j
  · exact congrArg directions (congrFun h 0).symm
  · exact congrArg directions (congrFun h 1).symm

omit [CommRing R] in
@[simp]
theorem blockCumulantValue_pair01
    (κ : DirectionCumulantFamily E R)
    (directions : Fin 3 → E) :
    blockCumulantValue κ directions
        ({(0 : Fin 3), (1 : Fin 3)} : Finset (Fin 3)) =
      κ 2 ![directions 0, directions 1] := by
  apply congrArg (κ 2)
  exact blockDirections_pair01 directions

omit [CommRing R] in
@[simp]
theorem blockCumulantValue_pair02
    (κ : DirectionCumulantFamily E R)
    (directions : Fin 3 → E) :
    blockCumulantValue κ directions
        ({(0 : Fin 3), (2 : Fin 3)} : Finset (Fin 3)) =
      κ 2 ![directions 0, directions 2] := by
  apply congrArg (κ 2)
  exact blockDirections_pair02 directions

omit [CommRing R] in
@[simp]
theorem blockCumulantValue_pair12
    (κ : DirectionCumulantFamily E R)
    (directions : Fin 3 → E) :
    blockCumulantValue κ directions
        ({(1 : Fin 3), (2 : Fin 3)} : Finset (Fin 3)) =
      κ 2 ![directions 1, directions 2] := by
  apply congrArg (κ 2)
  exact blockDirections_pair12 directions

/-- Weight of the discrete 0|1|2 partition. -/
theorem directionalPartitionWeight_bot_three
    (κ : DirectionCumulantFamily E R)
    (directions : Fin 3 → E) :
    directionalPartitionWeight κ directions
        (⊥ : DirectionPartition 3) =
      κ 1 (fun _ : Fin 1 => directions 0) *
        κ 1 (fun _ : Fin 1 => directions 1) *
        κ 1 (fun _ : Fin 1 => directions 2) := by
  classical
  unfold directionalPartitionWeight partitionWeight
  rw [parts_bot_three_eq_triple]
  simp [blockCumulantFunctional,
    blockCumulantValue_singleton]
  ring

/-- Weight of the 01|2 partition. -/
theorem directionalPartitionWeight_pair01_2
    (κ : DirectionCumulantFamily E R)
    (directions : Fin 3 → E) :
    directionalPartitionWeight κ directions
        pairPartition01_2 =
      κ 2 ![directions 0, directions 1] *
        κ 1 (fun _ : Fin 1 => directions 2) := by
  classical
  unfold directionalPartitionWeight partitionWeight
  rw [pairPartition01_2_parts]
  have hne : ({0, 1} : Finset (Fin 3)) ≠ {2} := by decide
  simp [blocks01_2, blockCumulantFunctional, hne, blockCumulantValue_singleton]

/-- Weight of the 02|1 partition. -/
theorem directionalPartitionWeight_pair02_1
    (κ : DirectionCumulantFamily E R)
    (directions : Fin 3 → E) :
    directionalPartitionWeight κ directions
        pairPartition02_1 =
      κ 2 ![directions 0, directions 2] *
        κ 1 (fun _ : Fin 1 => directions 1) := by
  classical
  unfold directionalPartitionWeight partitionWeight
  rw [pairPartition02_1_parts]
  have hne : ({0, 2} : Finset (Fin 3)) ≠ {1} := by decide
  simp [blocks02_1, blockCumulantFunctional, hne, blockCumulantValue_singleton]

/-- Weight of the 12|0 partition. -/
theorem directionalPartitionWeight_pair12_0
    (κ : DirectionCumulantFamily E R)
    (directions : Fin 3 → E) :
    directionalPartitionWeight κ directions
        pairPartition12_0 =
      κ 2 ![directions 1, directions 2] *
        κ 1 (fun _ : Fin 1 => directions 0) := by
  classical
  unfold directionalPartitionWeight partitionWeight
  rw [pairPartition12_0_parts]
  have hne : ({1, 2} : Finset (Fin 3)) ≠ {0} := by decide
  simp [blocks12_0, blockCumulantFunctional, hne, blockCumulantValue_singleton]

/-- Full proper-partition correction at order three. -/
theorem directionalProperContribution_three
    (κ : DirectionCumulantFamily E R)
    (directions : Fin 3 → E) :
    directionalProperContribution
        3 (Nat.succ_pos 2) κ directions =
      κ 2 ![directions 0, directions 1] *
          κ 1 (fun _ : Fin 1 => directions 2)
        +
      κ 2 ![directions 0, directions 2] *
          κ 1 (fun _ : Fin 1 => directions 1)
        +
      κ 2 ![directions 1, directions 2] *
          κ 1 (fun _ : Fin 1 => directions 0)
        +
      κ 1 (fun _ : Fin 1 => directions 0) *
          κ 1 (fun _ : Fin 1 => directions 1) *
          κ 1 (fun _ : Fin 1 => directions 2) := by
  classical
  unfold directionalProperContribution properPartitionContribution
  rw [properPartitions_three_eq_explicit]
  change (∑ P ∈ properPartitionsThreeExplicit,
    directionalPartitionWeight κ directions P) = _
  have h01 : (⊥ : DirectionPartition 3) ≠ pairPartition01_2 := by
    intro heq
    have hp := congrArg Finpartition.parts heq
    exact absurd hp (by decide)
  have h02 : (⊥ : DirectionPartition 3) ≠ pairPartition02_1 := by
    intro heq
    have hp := congrArg Finpartition.parts heq
    exact absurd hp (by decide)
  have h03 : (⊥ : DirectionPartition 3) ≠ pairPartition12_0 := by
    intro heq
    have hp := congrArg Finpartition.parts heq
    exact absurd hp (by decide)
  have h12 : pairPartition01_2 ≠ pairPartition02_1 := by
    intro heq
    have hp := congrArg Finpartition.parts heq
    exact absurd hp (by decide)
  have h13 : pairPartition01_2 ≠ pairPartition12_0 := by
    intro heq
    have hp := congrArg Finpartition.parts heq
    exact absurd hp (by decide)
  have h23 : pairPartition02_1 ≠ pairPartition12_0 := by
    intro heq
    have hp := congrArg Finpartition.parts heq
    exact absurd hp (by decide)
  simp only [properPartitionsThreeExplicit, Finset.sum_insert,
    Finset.sum_singleton, Finset.mem_insert, Finset.mem_singleton,
    h01, h02, h03, h12, h13, h23, or_self, not_false_eq_true,
    directionalPartitionWeight_bot_three,
    directionalPartitionWeight_pair01_2,
    directionalPartitionWeight_pair02_1,
    directionalPartitionWeight_pair12_0]
  ring

end MomentCumulant

variable {I : Type u} [Fintype I] [Nonempty I]
variable {E : Type v} [NormedAddCommGroup E] [NormedSpace ℝ E]

namespace FiniteLogAffineFamily

variable (F : FiniteLogAffineFamily I E)

open MomentCumulant

/-- Expanded raw third directional moment. -/
theorem rawDirectionalMoment_three
    (theta : E)
    (directions : Fin 3 → E) :
    F.rawDirectionalMoment theta 3 directions =
      ∑ i : I,
        F.probability theta i *
          F.statistic i (directions 0) *
          F.statistic i (directions 1) *
          F.statistic i (directions 2) := by
  classical
  simp [rawDirectionalMoment, Fin.prod_univ_three, mul_assoc]

/-- The centered third cumulant expressed through raw moments and lower
cumulants. -/
theorem thirdCumulantOperator_eq_rawThird_sub_lower
    (theta u v w : E) :
    F.thirdCumulantOperator theta u v w =
      (∑ i : I,
        F.probability theta i *
          F.statistic i u *
          F.statistic i v *
          F.statistic i w)
        -
      F.covarianceOperator theta u v * F.centroid theta w
        -
      F.covarianceOperator theta u w * F.centroid theta v
        -
      F.covarianceOperator theta v w * F.centroid theta u
        -
      F.centroid theta u *
        F.centroid theta v *
        F.centroid theta w := by
  classical
  rw [F.thirdCumulantOperator_apply]
  simp_rw [F.centeredStatistic_apply]
  have huv :
      (∑ i : I,
        F.probability theta i *
          F.statistic i u *
          F.statistic i v) =
        F.covarianceOperator theta u v +
          F.centroid theta u * F.centroid theta v := by
    calc
      (∑ i : I,
        F.probability theta i *
          F.statistic i u *
          F.statistic i v)
          =
        ((∑ i : I,
          F.probability theta i *
            F.statistic i u *
            F.statistic i v)
          - F.centroid theta u * F.centroid theta v)
          + F.centroid theta u * F.centroid theta v := by
            ring
      _ =
        F.covarianceOperator theta u v +
          F.centroid theta u * F.centroid theta v := by
            rw [← F.covarianceOperator_eq_rawSecond_sub_centroid_mul]
  have huw :
      (∑ i : I,
        F.probability theta i *
          F.statistic i u *
          F.statistic i w) =
        F.covarianceOperator theta u w +
          F.centroid theta u * F.centroid theta w := by
    calc
      (∑ i : I,
        F.probability theta i *
          F.statistic i u *
          F.statistic i w)
          =
        ((∑ i : I,
          F.probability theta i *
            F.statistic i u *
            F.statistic i w)
          - F.centroid theta u * F.centroid theta w)
          + F.centroid theta u * F.centroid theta w := by
            ring
      _ =
        F.covarianceOperator theta u w +
          F.centroid theta u * F.centroid theta w := by
            rw [← F.covarianceOperator_eq_rawSecond_sub_centroid_mul]
  have hvw :
      (∑ i : I,
        F.probability theta i *
          F.statistic i v *
          F.statistic i w) =
        F.covarianceOperator theta v w +
          F.centroid theta v * F.centroid theta w := by
    calc
      (∑ i : I,
        F.probability theta i *
          F.statistic i v *
          F.statistic i w)
          =
        ((∑ i : I,
          F.probability theta i *
            F.statistic i v *
            F.statistic i w)
          - F.centroid theta v * F.centroid theta w)
          + F.centroid theta v * F.centroid theta w := by
            ring
      _ =
        F.covarianceOperator theta v w +
          F.centroid theta v * F.centroid theta w := by
            rw [← F.covarianceOperator_eq_rawSecond_sub_centroid_mul]
  calc
    (∑ i : I,
      F.probability theta i *
        (F.statistic i u - F.centroid theta u) *
        (F.statistic i v - F.centroid theta v) *
        (F.statistic i w - F.centroid theta w))
        =
      ∑ i : I,
        (F.probability theta i *
            F.statistic i u *
            F.statistic i v *
            F.statistic i w
          -
          (F.probability theta i *
            F.statistic i u *
            F.statistic i v) *
            F.centroid theta w
          -
          (F.probability theta i *
            F.statistic i u *
            F.statistic i w) *
            F.centroid theta v
          -
          (F.probability theta i *
            F.statistic i v *
            F.statistic i w) *
            F.centroid theta u
          +
          (F.probability theta i *
            F.statistic i u) *
            F.centroid theta v *
            F.centroid theta w
          +
          (F.probability theta i *
            F.statistic i v) *
            F.centroid theta u *
            F.centroid theta w
          +
          (F.probability theta i *
            F.statistic i w) *
            F.centroid theta u *
            F.centroid theta v
          -
          F.probability theta i *
            F.centroid theta u *
            F.centroid theta v *
            F.centroid theta w) := by
      apply Finset.sum_congr rfl
      intro i hi
      ring
    _ =
      (∑ i : I,
        F.probability theta i *
          F.statistic i u *
          F.statistic i v *
          F.statistic i w)
        -
      (∑ i : I,
        F.probability theta i *
          F.statistic i u *
          F.statistic i v) *
          F.centroid theta w
        -
      (∑ i : I,
        F.probability theta i *
          F.statistic i u *
          F.statistic i w) *
          F.centroid theta v
        -
      (∑ i : I,
        F.probability theta i *
          F.statistic i v *
          F.statistic i w) *
          F.centroid theta u
        +
      2 *
        (F.centroid theta u *
          F.centroid theta v *
          F.centroid theta w) := by
      simp only [Finset.sum_sub_distrib,
        Finset.sum_add_distrib,
        ← Finset.sum_mul]
      rw [← F.centroid_apply theta u,
        ← F.centroid_apply theta v,
        ← F.centroid_apply theta w,
        F.probability_sum]
      ring
    _ =
      (∑ i : I,
        F.probability theta i *
          F.statistic i u *
          F.statistic i v *
          F.statistic i w)
        -
      F.covarianceOperator theta u v * F.centroid theta w
        -
      F.covarianceOperator theta u w * F.centroid theta v
        -
      F.covarianceOperator theta v w * F.centroid theta u
        -
      F.centroid theta u *
        F.centroid theta v *
        F.centroid theta w := by
      rw [huv, huw, hvw]
      ring

/-- The raw third moment is the third cumulant plus all proper-partition lower
terms. -/
theorem rawMomentHierarchy_three_eq_cumulants
    (theta : E)
    (directions : Fin 3 → E) :
    F.rawMomentHierarchy theta 3 directions =
      F.thirdDirectionalCumulant theta directions
        +
      F.secondDirectionalCumulant theta
          ![directions 0, directions 1] *
        F.firstDirectionalCumulant theta
          (fun _ : Fin 1 => directions 2)
        +
      F.secondDirectionalCumulant theta
          ![directions 0, directions 2] *
        F.firstDirectionalCumulant theta
          (fun _ : Fin 1 => directions 1)
        +
      F.secondDirectionalCumulant theta
          ![directions 1, directions 2] *
        F.firstDirectionalCumulant theta
          (fun _ : Fin 1 => directions 0)
        +
      F.firstDirectionalCumulant theta
          (fun _ : Fin 1 => directions 0) *
        F.firstDirectionalCumulant theta
          (fun _ : Fin 1 => directions 1) *
        F.firstDirectionalCumulant theta
          (fun _ : Fin 1 => directions 2) := by
  simp only [F.rawMomentHierarchy_apply,
    F.rawDirectionalMoment_three,
    F.thirdDirectionalCumulant_eq_operator,
    F.secondDirectionalCumulant_eq_covariance,
    F.firstDirectionalCumulant_eq_centroid,
    Matrix.cons_val_zero, Matrix.cons_val_one]
  have h :=
    F.thirdCumulantOperator_eq_rawThird_sub_lower
      theta (directions 0) (directions 1) (directions 2)
  calc
    (∑ i : I,
      F.probability theta i *
        F.statistic i (directions 0) *
        F.statistic i (directions 1) *
        F.statistic i (directions 2))
        =
      ((∑ i : I,
        F.probability theta i *
          F.statistic i (directions 0) *
          F.statistic i (directions 1) *
          F.statistic i (directions 2))
        -
      F.covarianceOperator theta (directions 0) (directions 1) *
        F.centroid theta (directions 2)
        -
      F.covarianceOperator theta (directions 0) (directions 2) *
        F.centroid theta (directions 1)
        -
      F.covarianceOperator theta (directions 1) (directions 2) *
        F.centroid theta (directions 0)
        -
      F.centroid theta (directions 0) *
        F.centroid theta (directions 1) *
        F.centroid theta (directions 2))
        +
      F.covarianceOperator theta (directions 0) (directions 1) *
        F.centroid theta (directions 2)
        +
      F.covarianceOperator theta (directions 0) (directions 2) *
        F.centroid theta (directions 1)
        +
      F.covarianceOperator theta (directions 1) (directions 2) *
        F.centroid theta (directions 0)
        +
      F.centroid theta (directions 0) *
        F.centroid theta (directions 1) *
        F.centroid theta (directions 2) := by
          ring
    _ =
      F.thirdCumulantOperator theta
          (directions 0) (directions 1) (directions 2)
        +
      F.covarianceOperator theta (directions 0) (directions 1) *
        F.centroid theta (directions 2)
        +
      F.covarianceOperator theta (directions 0) (directions 2) *
        F.centroid theta (directions 1)
        +
      F.covarianceOperator theta (directions 1) (directions 2) *
        F.centroid theta (directions 0)
        +
      F.centroid theta (directions 0) *
        F.centroid theta (directions 1) *
        F.centroid theta (directions 2) := by
          rw [← h]

/-- The order-three proper contribution for the recursive raw family is exactly
the lower-order part of the raw third-moment expansion. -/
theorem recursiveRawProperContribution_three
    (theta : E)
    (directions : Fin 3 → E) :
    directionalProperContribution
        3 (Nat.succ_pos 2)
        (F.recursiveRawCumulantFamily theta)
        directions =
      F.secondDirectionalCumulant theta
          ![directions 0, directions 1] *
        F.firstDirectionalCumulant theta
          (fun _ : Fin 1 => directions 2)
        +
      F.secondDirectionalCumulant theta
          ![directions 0, directions 2] *
        F.firstDirectionalCumulant theta
          (fun _ : Fin 1 => directions 1)
        +
      F.secondDirectionalCumulant theta
          ![directions 1, directions 2] *
        F.firstDirectionalCumulant theta
          (fun _ : Fin 1 => directions 0)
        +
      F.firstDirectionalCumulant theta
          (fun _ : Fin 1 => directions 0) *
        F.firstDirectionalCumulant theta
          (fun _ : Fin 1 => directions 1) *
        F.firstDirectionalCumulant theta
          (fun _ : Fin 1 => directions 2) := by
  simp only [directionalProperContribution_three,
    F.recursiveRawCumulantFamily_two,
    F.recursiveRawCumulantFamily_one]

/-- The recursive cumulant generated by raw finite log-affine moments recovers
the verified third cumulant. -/
theorem recursiveRawCumulantFamily_three
    (theta : E)
    (directions : Fin 3 → E) :
    F.recursiveRawCumulantFamily theta 3 directions =
      F.thirdDirectionalCumulant theta directions := by
  rw [recursiveRawCumulantFamily,
    recursiveCumulantFamily_eq_moment_sub_proper
      (F.rawMomentHierarchy theta)
      3 (Nat.succ_pos 2) directions]
  change F.rawMomentHierarchy theta 3 directions -
      directionalProperContribution 3 (Nat.succ_pos 2)
        (F.recursiveRawCumulantFamily theta) directions =
    F.thirdDirectionalCumulant theta directions
  rw [F.recursiveRawProperContribution_three,
    F.rawMomentHierarchy_three_eq_cumulants]
  ring

/-- Recursive raw cumulants now match the verified analytic prefix through
order three. -/
theorem recursiveRawCumulantFamily_matches_order_three
    (theta : E) :
    (∀ directions : Fin 1 → E,
      F.recursiveRawCumulantFamily theta 1 directions =
        F.firstDirectionalCumulant theta directions) ∧
    (∀ directions : Fin 2 → E,
      F.recursiveRawCumulantFamily theta 2 directions =
        F.secondDirectionalCumulant theta directions) ∧
    (∀ directions : Fin 3 → E,
      F.recursiveRawCumulantFamily theta 3 directions =
        F.thirdDirectionalCumulant theta directions) :=
  ⟨F.recursiveRawCumulantFamily_one theta,
    F.recursiveRawCumulantFamily_two theta,
    F.recursiveRawCumulantFamily_three theta⟩

end FiniteLogAffineFamily

end FormalResearch.PositiveAtlas
