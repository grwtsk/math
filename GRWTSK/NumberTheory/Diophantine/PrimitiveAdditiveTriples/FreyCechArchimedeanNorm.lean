/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

Sharp archimedean maximum estimates for the EXACT rational combinedQ and
inverseQ already used at finite places. No replacement map or difference-
frame metric is installed. The factor five is a raw edge row sum, not the
one-section weighted energy factor. Arithmetic inverse costs remain.
This is a fixed-source rational coefficient result, not complete H0,
a completed real operator, a global source-height theorem, or abc.
Unelaborated source proof scripts: NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.Analysis.LinearAlgebra.FourFieldArchimedeanNorm
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCechPadicNorm

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCechArchimedeanNorm

open FreyWeightedBasis FreyCechPadicNorm
open GRWTSK.Analysis.LinearAlgebra.FourFieldArchimedeanNorm
open GRWTSK.NumberTheory.Padics
open GRWTSK.LinearAlgebra.ThreeCellWeightedMinimum

local instance slotsNonempty (k : ℕ) : Nonempty (Slot k) :=
  ⟨(Sum.inl ⟨0, Nat.zero_lt_succ k⟩, 0)⟩

/-- Named raw target coordinates: no difference-frame isometry is assumed at infinity. -/
def targetMax (k : ℕ) (r : RationalData k) : ℚ := maxAbs (rawCoordinates k r)

def sourceScale (a b : ℤ) (k : ℕ) : ℚ := |((a*b : ℤ) : ℚ)| ^ k

def forwardFactor (a b : ℤ) (k : ℕ) : ℚ := 5 * sourceScale a b k

theorem sourceScale_natAbs (a b : ℤ) (k : ℕ) :
    sourceScale a b k = ((a*b).natAbs : ℚ)^k := by
  have h : ((a*b).natAbs : ℚ) = |((a*b : ℤ) : ℚ)| := by
    exact_mod_cast (Int.natCast_natAbs (a*b))
  simp only [sourceScale, h]

/-- Raw formula at the target of SOURCE i, derived from the OLD combinedQ. -/
theorem forward_block (a b : ℤ) (k : ℕ) (q : Slot k → ℚ) (i : Index k) :
    (fun j => rawCoordinates k (combinedQ a b k q) (FreyWeightedLattice.reverse k i,j)) =
      forwardBlock (FreyWeightedLattice.weight (a*b) k i : ℚ) (fun j => q (i,j)) := by
  funext j
  fin_cases j <;>
    simp [rawCoordinates, combinedQ, reducedPortQ, minimumQ,
      WeightedPermutationNorm.transport, forwardBlock] <;> ring

/-- This is the OLD inverseQ on all rational targets, not a new fitted inverse. -/
theorem inverse_block (a b : ℤ) (hab : a*b ≠ 0) (k : ℕ)
    (r : RationalData k) (i : Index k) :
    (fun j => inverseQ a b hab k r (i,j)) =
      inverseBlock (FreyWeightedLattice.weight (a*b) k i : ℚ)
        (fun j => rawCoordinates k r (FreyWeightedLattice.reverse k i,j)) := by
  funext j
  fin_cases j <;>
    simp [inverseQ, WeightedPermutationNorm.inverse, frameQ, weights, combinedWeight,
      baseWeight, permutation, slotPerm, rawCoordinates, inverseBlock, mul_comm]

/-- Full source dependence follows from the old signed divisibility theorem. -/
theorem weight_abs_le (a b : ℤ) (hab : a*b ≠ 0) (k : ℕ) (i : Index k) :
    |(FreyWeightedLattice.weight (a*b) k i : ℚ)| ≤ sourceScale a b k := by
  have h := abs_cast_le_of_dvd (FreyWeightedLattice.weight (a*b) k i)
    ((-(a*b))^k) (pow_ne_zero _ (neg_ne_zero.mpr hab))
    (FreyWeightedLattice.weight_dvd_power (a*b) k i)
  simpa [sourceScale, abs_pow] using h

/-- A universal bound in ordinary unsquared coefficient maximum norm. -/
theorem forward_estimate (a b : ℤ) (hab : a*b ≠ 0) (k : ℕ) (q : Slot k → ℚ) :
    targetMax k (combinedQ a b k q) ≤ forwardFactor a b k * maxAbs q := by
  apply (maxAbs_le_iff _ _).mpr
  rintro ⟨j,c⟩
  obtain ⟨i, rfl⟩ := (FreyWeightedLattice.reverse k).surjective j
  rw [congrFun (forward_block a b k q i) c]
  have hb := forwardBlock_bound (FreyWeightedLattice.weight (a*b) k i : ℚ)
    (fun t => q (i,t)) (maxAbs q) (maxAbs_nonneg q) (fun t => entry_le q (i,t)) c
  exact hb.trans (mul_le_mul_of_nonneg_right
    (mul_le_mul_of_nonneg_left (weight_abs_le a b hab k i) (by norm_num)) (maxAbs_nonneg q))

/-- The inverse contracts at infinity because every integer column weight has size >=1. -/
theorem inverse_estimate (a b : ℤ) (hab : a*b ≠ 0) (k : ℕ) (r : RationalData k) :
    maxAbs (inverseQ a b hab k r) ≤ targetMax k r := by
  apply (maxAbs_le_iff _ _).mpr
  rintro ⟨i,j⟩
  rw [congrFun (inverse_block a b hab k r i) j]
  exact inverseBlock_bound (FreyWeightedLattice.weight (a*b) k i : ℚ)
    (integer_abs_one_le _ (FreyWeightedCokernel.weight_ne_zero (a*b) hab k i))
    (fun t => rawCoordinates k r (FreyWeightedLattice.reverse k i,t))
    (targetMax k r) (maxAbs_nonneg _) (fun t => entry_le _ _) j

/-- The top-X weight and a RAW row with coefficients (1,4) attain the forward factor. -/
theorem forward_ones (a b : ℤ) (hab : a*b ≠ 0) (k : ℕ) :
    targetMax k (combinedQ a b k (fun _ => 1)) = forwardFactor a b k := by
  apply le_antisymm
  · simpa only [maxAbs_ones, mul_one] using forward_estimate a b hab k (fun _ => 1)
  · let i : Index k := Sum.inl ⟨k, Nat.lt_succ_self k⟩
    have h := entry_le (rawCoordinates k (combinedQ a b k (fun _ => 1)))
      (FreyWeightedLattice.reverse k i,2)
    rw [congrFun (forward_block a b k (fun _ => 1) i) 2] at h
    simpa [forwardBlock, i, FreyWeightedLattice.weight, abs_mul, abs_pow,
      sourceScale, forwardFactor, targetMax, mul_comm] using h

/-- Sharpness retains the COMMON edge coordinate which difference-only probes would erase. -/
def unitEdge (k : ℕ) : RationalData k := (fun _ => 0, fun j _ => ![1,0,0] j)

@[simp] theorem unitEdge_norm (k : ℕ) : targetMax k (unitEdge k) = 1 := by
  apply le_antisymm
  · apply (maxAbs_le_iff _ _).mpr
    rintro ⟨i,j⟩
    fin_cases j <;> norm_num [rawCoordinates, unitEdge]
  · have h := entry_le (rawCoordinates k (unitEdge k))
      (Sum.inl ⟨0, Nat.zero_lt_succ k⟩,1)
    simpa [rawCoordinates, unitEdge, targetMax] using h

@[simp] theorem inverse_unitEdge_norm (a b : ℤ) (hab : a*b ≠ 0) (k : ℕ) :
    maxAbs (inverseQ a b hab k (unitEdge k)) = 1 := by
  apply le_antisymm
  · simpa only [unitEdge_norm] using inverse_estimate a b hab k (unitEdge k)
  · let i : Index k := Sum.inl ⟨0, Nat.zero_lt_succ k⟩
    have h := entry_le (inverseQ a b hab k (unitEdge k)) (i,1)
    rw [congrFun (inverse_block a b hab k (unitEdge k) i) 1] at h
    simpa [inverseBlock, unitEdge, rawCoordinates, i, FreyWeightedLattice.weight] using h

/-- Least forward factor, not a sampled norm or a ContinuousLinearMap.opNorm instance. -/
theorem forward_bound_iff (a b : ℤ) (hab : a*b ≠ 0) (k : ℕ) (B : ℚ) :
    (∀ q, targetMax k (combinedQ a b k q) ≤ B * maxAbs q) ↔ forwardFactor a b k ≤ B := by
  constructor
  · intro h
    simpa only [forward_ones a b hab k, maxAbs_ones, mul_one] using h (fun _ => 1)
  · intro h q
    exact (forward_estimate a b hab k q).trans
      (mul_le_mul_of_nonneg_right h (maxAbs_nonneg q))

/-- The least archimedean inverse factor is one at EVERY grade, including zero. -/
theorem inverse_bound_iff (a b : ℤ) (hab : a*b ≠ 0) (k : ℕ) (B : ℚ) :
    (∀ r, maxAbs (inverseQ a b hab k r) ≤ B * targetMax k r) ↔ (1 : ℚ) ≤ B := by
  constructor
  · intro h
    simpa only [inverse_unitEdge_norm, unitEdge_norm, mul_one] using h (unitEdge k)
  · intro h r
    exact (inverse_estimate a b hab k r).trans
      (by simpa only [one_mul] using
        mul_le_mul_of_nonneg_right h (maxAbs_nonneg (rawCoordinates k r)))

/-- Raw target and source are distinct frames even though their dimensions agree. -/
theorem source_target_comparison (a b : ℤ) (hab : a*b ≠ 0) (k : ℕ) (q : Slot k → ℚ) :
    maxAbs q ≤ targetMax k (combinedQ a b k q) ∧
    targetMax k (combinedQ a b k q) ≤ forwardFactor a b k * maxAbs q := by
  constructor
  · simpa only [inverseQ_combinedQ] using inverse_estimate a b hab k (combinedQ a b k q)
  · exact forward_estimate a b hab k q

/-- Positive logarithmic forward cost at the usual rational archimedean place. -/
theorem log_forwardFactor (a b : ℤ) (hab : a*b ≠ 0) (k : ℕ) :
    Real.log (forwardFactor a b k : ℝ) =
      Real.log 5 + (k : ℝ) * Real.log ((a*b).natAbs : ℝ) := by
  have hh : ((a*b).natAbs : ℝ) ≠ 0 :=
    Nat.cast_ne_zero.mpr (by simpa only [Int.natAbs_eq_zero] using hab)
  rw [forwardFactor, sourceScale_natAbs]
  simp only [Rat.cast_mul, Rat.cast_ofNat, Rat.cast_pow, Rat.cast_natCast]
  rw [Real.log_mul (by norm_num) (pow_ne_zero _ hh), Real.log_pow]

theorem log_forwardFactor_nonneg (a b : ℤ) (hab : a*b ≠ 0) (k : ℕ) :
    0 ≤ Real.log (forwardFactor a b k : ℝ) := by
  rw [log_forwardFactor a b hab k]
  exact add_nonneg (Real.log_natCast_nonneg 5)
    (mul_nonneg (Nat.cast_nonneg _) (Real.log_natCast_nonneg _))

/-- Sum the established local INVERSE costs, not the cokernel index logarithm.
This is a sharp local-factor budget; no source-height theorem is asserted. -/
theorem all_place_inverse_cost (a b : ℤ) (hab : a*b ≠ 0) (k : ℕ) :
    Real.log (1 : ℝ) + FreyCechPadicNorm.finiteInverseCost a b k =
      Real.log 12 + (k : ℝ) * Real.log ((a*b).natAbs : ℝ) := by
  rw [Real.log_one, zero_add, FreyCechPadicNorm.finiteInverseCost_eq a b hab k]

/-- The actual fixed-source growth is visible already before height or conductor comparisons. -/
theorem native_grade_two : forwardFactor 2 3 2 = 180 ∧ forwardFactor 2 3 0 = 5 := by
  norm_num [forwardFactor, sourceScale]

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCechArchimedeanNorm
