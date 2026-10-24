# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteRawMomentHierarchy.Variant42390a98d7e691d0b485aa3f831ce59ab1f7cca806657f1709a2548d174e5670

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a8cb783df49c56ee9dc228b0d7ec392a7d3063e2` · SHA-256 `1a48b06fc1d97a6af4758b5314a7296d6b56eae504098ad0a4b806c50012816b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.RawDirectionalMoment.Variant7680c2a97b17137e636d1aeb81776d034b4469fdefb99f8037eb3023e43e2568","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7680c2a97b17137e636d1aeb81776d034b4469fdefb99f8037eb3023e43e2568","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.RawDirectionalMoment.Variant7680c2a97b17137e636d1aeb81776d034b4469fdefb99f8037eb3023e43e2568","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"7680c2a97b17137e636d1aeb81776d034b4469fdefb99f8037eb3023e43e2568","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/FormalResearch/PositiveAtlas/FiniteRawMomentHierarchy.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.RecursiveCumulantHierarchy
import Mathlib.Algebra.BigOperators.Fin

/-!
# Finite log-affine raw moment hierarchy

This module instantiates the abstract all-orders moment interface with the raw
directional moments of a finite log-affine family.

At a fixed parameter theta,

  M_n(v_0,...,v_{n-1})
    = sum_i p_i(theta) * product_j L_i(v_j).

The hierarchy is defined for every order.  The first three structural formulas
proved here are

  M_0 = 1,
  M_1 = centroid,
  M_2 = covariance + centroid * centroid.

Thus the order-one and order-two moment-cumulant relations are available in the
same directional interface used by the recursive all-orders hierarchy.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.RawDirectionalMoment.Variant7680c2a97b17137e636d1aeb81776d034b4469fdefb99f8037eb3023e43e2568

namespace FormalResearch.PositiveAtlas

universe u v

variable {I : Type u} [Fintype I] [Nonempty I]
variable {E : Type v} [NormedAddCommGroup E] [NormedSpace ℝ E]

namespace FiniteLogAffineFamily

variable (F : FiniteLogAffineFamily I E)

open MomentCumulant

/-- Raw n-th directional moment at theta. -/
noncomputable def rawDirectionalMoment
    (theta : E)
    (n : ℕ)
    (directions : Fin n → E) : ℝ :=
  ∑ i : I,
    F.probability theta i *
      ∏ j : Fin n, F.statistic i (directions j)

/-- The all-orders raw directional moment hierarchy at theta. -/
noncomputable def rawMomentHierarchy
    (theta : E) :
    DirectionMomentFamily E ℝ :=
  fun n directions =>
    F.rawDirectionalMoment theta n directions

@[simp]
theorem rawMomentHierarchy_apply
    (theta : E)
    (n : ℕ)
    (directions : Fin n → E) :
    F.rawMomentHierarchy theta n directions =
      F.rawDirectionalMoment theta n directions :=
  rfl

/-- The order-zero raw moment is one. -/
@[simp]
theorem rawDirectionalMoment_zero
    (theta : E)
    (directions : Fin 0 → E) :
    F.rawDirectionalMoment theta 0 directions = 1 := by
  classical
  simpa only [rawDirectionalMoment, Fin.prod_univ_zero, mul_one] using
    F.probability_sum theta

/-- The first raw moment is the centroid. -/
theorem rawDirectionalMoment_one_eq_centroid
    (theta : E)
    (directions : Fin 1 → E) :
    F.rawDirectionalMoment theta 1 directions =
      F.centroid theta (directions 0) := by
  classical
  rw [F.centroid_apply]
  simp [rawDirectionalMoment]

/-- Expanded order-two raw moment. -/
theorem rawDirectionalMoment_two
    (theta : E)
    (directions : Fin 2 → E) :
    F.rawDirectionalMoment theta 2 directions =
      ∑ i : I,
        F.probability theta i *
          F.statistic i (directions 0) *
          F.statistic i (directions 1) := by
  classical
  simp [rawDirectionalMoment, Fin.prod_univ_two, mul_assoc]

/-- Covariance is the second raw moment minus the product of first moments. -/
theorem covarianceOperator_eq_rawSecond_sub_centroid_mul
    (theta u v : E) :
    F.covarianceOperator theta u v =
      (∑ i : I,
        F.probability theta i *
          F.statistic i u *
          F.statistic i v)
        -
      F.centroid theta u * F.centroid theta v := by
  classical
  rw [F.covarianceOperator_apply]
  simp_rw [F.centeredStatistic_apply]
  calc
    (∑ i : I,
        F.probability theta i *
          (F.statistic i u - F.centroid theta u) *
          (F.statistic i v - F.centroid theta v))
        =
      ∑ i : I,
        (F.probability theta i *
            F.statistic i u *
            F.statistic i v
          -
          (F.probability theta i *
            F.statistic i u) *
            F.centroid theta v
          -
          F.centroid theta u *
            (F.probability theta i *
              F.statistic i v)
          +
          (F.centroid theta u *
            F.centroid theta v) *
            F.probability theta i) := by
      apply Finset.sum_congr rfl
      intro i hi
      ring
    _ =
      (∑ i : I,
        F.probability theta i *
          F.statistic i u *
          F.statistic i v)
        -
      (∑ i : I,
        F.probability theta i *
          F.statistic i u) *
        F.centroid theta v
        -
      F.centroid theta u *
        (∑ i : I,
          F.probability theta i *
            F.statistic i v)
        +
      (F.centroid theta u *
        F.centroid theta v) *
        (∑ i : I, F.probability theta i) := by
      rw [Finset.sum_add_distrib,
        Finset.sum_sub_distrib,
        Finset.sum_sub_distrib,
        Finset.sum_mul,
        Finset.mul_sum,
        Finset.mul_sum]
    _ =
      (∑ i : I,
        F.probability theta i *
          F.statistic i u *
          F.statistic i v)
        -
      F.centroid theta u * F.centroid theta v := by
      rw [← F.centroid_apply theta u,
        ← F.centroid_apply theta v,
        F.probability_sum]
      ring

/-- The second raw moment is covariance plus the product of first moments. -/
theorem rawDirectionalMoment_two_eq_covariance_add_centroid_mul
    (theta : E)
    (directions : Fin 2 → E) :
    F.rawDirectionalMoment theta 2 directions =
      F.covarianceOperator theta
        (directions 0) (directions 1)
        +
      F.centroid theta (directions 0) *
        F.centroid theta (directions 1) := by
  rw [F.rawDirectionalMoment_two]
  have h :=
    F.covarianceOperator_eq_rawSecond_sub_centroid_mul
      theta (directions 0) (directions 1)
  linarith

/-- Order one of the raw hierarchy is the verified first cumulant. -/
theorem rawMomentHierarchy_one_eq_firstDirectionalCumulant
    (theta : E)
    (directions : Fin 1 → E) :
    F.rawMomentHierarchy theta 1 directions =
      F.firstDirectionalCumulant theta directions := by
  rw [F.rawMomentHierarchy_apply,
    F.rawDirectionalMoment_one_eq_centroid,
    F.firstDirectionalCumulant_eq_centroid]

/-- Order two satisfies the usual moment-cumulant relation. -/
theorem rawMomentHierarchy_two_eq_second_add_first_mul_first
    (theta : E)
    (directions : Fin 2 → E) :
    F.rawMomentHierarchy theta 2 directions =
      F.secondDirectionalCumulant theta directions
        +
      F.firstDirectionalCumulant theta
          (fun _ : Fin 1 => directions 0) *
        F.firstDirectionalCumulant theta
          (fun _ : Fin 1 => directions 1) := by
  rw [F.rawMomentHierarchy_apply,
    F.rawDirectionalMoment_two_eq_covariance_add_centroid_mul,
    F.secondDirectionalCumulant_eq_covariance,
    F.firstDirectionalCumulant_eq_centroid,
    F.firstDirectionalCumulant_eq_centroid]

/-- There are no proper partitions at order one. -/
theorem properPartitions_one_eq_empty :
    properPartitions 1 Nat.zero_lt_one = ∅ := by
  apply Finset.eq_empty_iff_forall_notMem.mpr
  intro P hP
  obtain ⟨B, hB⟩ :=
    P.parts_nonempty (by simp :
      (Finset.univ : Finset (Fin 1)) ≠ ∅)
  have hpos := block_card_pos_of_mem_parts P hB
  have hlt :=
    block_card_lt_of_mem_properPartition
      1 Nat.zero_lt_one hP hB
  exact (Nat.ne_of_gt hpos)
    (Nat.eq_zero_of_le_zero (Nat.le_of_lt_succ hlt))

omit [NormedAddCommGroup E] [NormedSpace ℝ E] in
/-- Consequently the order-one proper-partition contribution vanishes. -/
theorem directionalProperContribution_one_eq_zero
    (κ : DirectionCumulantFamily E ℝ)
    (directions : Fin 1 → E) :
    directionalProperContribution
      1 Nat.zero_lt_one κ directions = 0 := by
  unfold directionalProperContribution properPartitionContribution
  rw [properPartitions_one_eq_empty]
  simp

/-- The raw moment hierarchy supplies a concrete all-orders input to the
recursive cumulant construction. -/
noncomputable def recursiveRawCumulantFamily
    (theta : E) :
    DirectionCumulantFamily E ℝ :=
  recursiveCumulantFamily (F.rawMomentHierarchy theta)

/-- Its order-zero entry is zero by the recursive cumulant convention. -/
@[simp]
theorem recursiveRawCumulantFamily_zero
    (theta : E)
    (directions : Fin 0 → E) :
    F.recursiveRawCumulantFamily theta 0 directions = 0 :=
  recursiveCumulantFamily_zero
    (F.rawMomentHierarchy theta) directions

/-- The recursive construction recovers the verified first cumulant. -/
theorem recursiveRawCumulantFamily_one
    (theta : E)
    (directions : Fin 1 → E) :
    F.recursiveRawCumulantFamily theta 1 directions =
      F.firstDirectionalCumulant theta directions := by
  rw [recursiveRawCumulantFamily,
    recursiveCumulantFamily_eq_moment_sub_proper
      (F.rawMomentHierarchy theta) 1 Nat.zero_lt_one directions,
    directionalProperContribution_one_eq_zero,
    sub_zero,
    F.rawMomentHierarchy_one_eq_firstDirectionalCumulant]

end FiniteLogAffineFamily

end FormalResearch.PositiveAtlas
```
