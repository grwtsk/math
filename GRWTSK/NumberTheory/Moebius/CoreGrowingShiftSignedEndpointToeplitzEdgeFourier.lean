/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #867. Parent: draft PR #850 at
`5576c62aa169bf138564cf33fc5bba4f9aeb109e`.
-/
import GRWTSK.NumberTheory.Moebius.CoreGrowingShiftSignedEndpointBoundaryFourier

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Difference-only lower prefix cutoff before the left endpoint clips the
active interval. -/
def coreGrowingShiftEndpointDifferencePrefixLower
    (j h : ℕ) : ℕ :=
  max (logarithmicShiftThreshold j + 1) (2 ^ j - h)

/-- Difference-only exclusive upper prefix cutoff. -/
def coreGrowingShiftEndpointDifferencePrefixUpper
    (j h : ℕ) : ℕ :=
  min (2 ^ (j + 1) - logarithmicShiftThreshold j)
    (2 ^ (j + 1) - h)

/-- Complete difference-only prefix interval. -/
def coreGrowingShiftEndpointDifferencePrefixSet
    (j h : ℕ) : Finset ℕ :=
  Finset.Ico
    (coreGrowingShiftEndpointDifferencePrefixLower j h)
    (coreGrowingShiftEndpointDifferencePrefixUpper j h)

/-- The only dependence of the inherited lower prefix cutoff on the left
endpoint is one outer maximum. -/
theorem coreGrowingShiftEndpointAggregatePrefixLower_eq_max_left_difference
    (j n m : ℕ) :
    coreGrowingShiftEndpointAggregatePrefixLower j n m =
      max n
        (coreGrowingShiftEndpointDifferencePrefixLower j (m - n)) := by
  unfold coreGrowingShiftEndpointAggregatePrefixLower
    coreGrowingShiftEndpointDifferencePrefixLower
  omega

/-- The inherited upper prefix cutoff depends only on the endpoint
difference. -/
theorem coreGrowingShiftEndpointAggregatePrefixUpper_eq_difference
    (j n m : ℕ) :
    coreGrowingShiftEndpointAggregatePrefixUpper j n m =
      coreGrowingShiftEndpointDifferencePrefixUpper j (m - n) := by
  rfl

/-- Generic signed coefficient on an arbitrary prefix interval. -/
def coreGrowingShiftEndpointDifferenceIntervalKernel
    (j h A B : ℕ) : ℝ :=
  ∑ N ∈ Finset.Ico A B,
    coreGrowingShiftSignedStaircaseWeight j N h

/-- Constant-anchor part of a generic prefix interval. -/
def coreGrowingShiftEndpointDifferenceIntervalAnchorSet
    (j h A B : ℕ) : Finset ℕ :=
  Finset.Ico A
    (min B (coreGrowingShiftEndpointAggregateTailStart j h))

/-- First affine-tail prefix after clipping by an arbitrary lower endpoint. -/
def coreGrowingShiftEndpointDifferenceIntervalTailLower
    (j h A : ℕ) : ℕ :=
  max A (coreGrowingShiftEndpointAggregateTailStart j h)

/-- Affine-tail part of a generic prefix interval. -/
def coreGrowingShiftEndpointDifferenceIntervalTailSet
    (j h A B : ℕ) : Finset ℕ :=
  Finset.Ico
    (coreGrowingShiftEndpointDifferenceIntervalTailLower j h A) B

/-- Every generic interval is the disjoint union of its constant-anchor and
affine-tail pieces. -/
theorem coreGrowingShiftEndpointDifferenceInterval_eq_anchor_union_tail
    (j h A B : ℕ) :
    Finset.Ico A B =
      coreGrowingShiftEndpointDifferenceIntervalAnchorSet j h A B ∪
        coreGrowingShiftEndpointDifferenceIntervalTailSet j h A B := by
  ext N
  simp only [coreGrowingShiftEndpointDifferenceIntervalAnchorSet,
    coreGrowingShiftEndpointDifferenceIntervalTailSet,
    coreGrowingShiftEndpointDifferenceIntervalTailLower,
    Finset.mem_Ico, Finset.mem_union]
  omega

/-- The generic anchor and tail pieces are disjoint. -/
theorem coreGrowingShiftEndpointDifferenceIntervalAnchor_disjoint_tail
    (j h A B : ℕ) :
    Disjoint
      (coreGrowingShiftEndpointDifferenceIntervalAnchorSet j h A B)
      (coreGrowingShiftEndpointDifferenceIntervalTailSet j h A B) := by
  refine Finset.disjoint_left.mpr ?_
  intro N hAnchor hTail
  simp only [coreGrowingShiftEndpointDifferenceIntervalAnchorSet,
    coreGrowingShiftEndpointDifferenceIntervalTailSet,
    coreGrowingShiftEndpointDifferenceIntervalTailLower,
    Finset.mem_Ico] at hAnchor hTail
  omega

/-- Generic anchor multiplicity. -/
def coreGrowingShiftEndpointDifferenceIntervalAnchorMultiplicity
    (j h A B : ℕ) : ℕ :=
  (coreGrowingShiftEndpointDifferenceIntervalAnchorSet j h A B).card

/-- The generic anchor multiplicity is its exact clipped interval length. -/
theorem coreGrowingShiftEndpointDifferenceIntervalAnchorMultiplicity_eq_sub
    (j h A B : ℕ) :
    coreGrowingShiftEndpointDifferenceIntervalAnchorMultiplicity j h A B =
      min B (coreGrowingShiftEndpointAggregateTailStart j h) - A := by
  simp [coreGrowingShiftEndpointDifferenceIntervalAnchorMultiplicity,
    coreGrowingShiftEndpointDifferenceIntervalAnchorSet,
    Finset.card_Ico]

/-- Generic affine-tail boundary contribution, with an empty interval encoded
as zero. -/
def coreGrowingShiftEndpointDifferenceIntervalTailBoundary
    (j h A B : ℕ) : ℝ :=
  let L := coreGrowingShiftEndpointDifferenceIntervalTailLower j h A
  let q := coreGrowingShiftEndpointAggregateEffectiveShift j h
  if L ≤ B then
    (((L + q : ℕ) : ℝ))⁻¹ - (((B + q : ℕ) : ℝ))⁻¹
  else 0

/-- Closed anchor-plus-boundary evaluation of a generic prefix interval. -/
def coreGrowingShiftEndpointDifferenceIntervalBoundaryKernel
    (j h A B : ℕ) : ℝ :=
  (coreGrowingShiftEndpointDifferenceIntervalAnchorMultiplicity
      j h A B : ℝ) *
      coreGrowingShiftEndpointReciprocalDrop
        (coreGrowingShiftEndpointAggregateAnchorDenominator j) +
    coreGrowingShiftEndpointDifferenceIntervalTailBoundary j h A B

/-- The inherited staircase weight is one reciprocal drop at the normalized
maximum denominator. -/
theorem coreGrowingShiftSignedStaircaseWeight_eq_normalizedDrop
    (j N h : ℕ) :
    coreGrowingShiftSignedStaircaseWeight j N h =
      coreGrowingShiftEndpointReciprocalDrop
        (max (coreGrowingShiftEndpointAggregateAnchorDenominator j)
          (N + coreGrowingShiftEndpointAggregateEffectiveShift j h)) := by
  unfold coreGrowingShiftSignedStaircaseWeight
    coreGrowingShiftEndpointReciprocalDrop
  rw [coreGrowingShiftSignedStaircaseDenominator_eq_max]

/-- The normalized denominator is constant on the generic anchor interval. -/
theorem coreGrowingShiftEndpointDifferenceIntervalDenominator_eq_anchor
    {j h A B N : ℕ}
    (hN :
      N ∈ coreGrowingShiftEndpointDifferenceIntervalAnchorSet j h A B) :
    max (coreGrowingShiftEndpointAggregateAnchorDenominator j)
        (N + coreGrowingShiftEndpointAggregateEffectiveShift j h) =
      coreGrowingShiftEndpointAggregateAnchorDenominator j := by
  have hmem := hN
  simp only [coreGrowingShiftEndpointDifferenceIntervalAnchorSet,
    Finset.mem_Ico] at hmem
  unfold coreGrowingShiftEndpointAggregateTailStart
    coreGrowingShiftEndpointAggregateAnchorDenominator at hmem ⊢
  apply max_eq_left
  omega

/-- The normalized denominator is affine on the generic tail interval. -/
theorem coreGrowingShiftEndpointDifferenceIntervalDenominator_eq_tail
    {j h A B N : ℕ}
    (hN :
      N ∈ coreGrowingShiftEndpointDifferenceIntervalTailSet j h A B) :
    max (coreGrowingShiftEndpointAggregateAnchorDenominator j)
        (N + coreGrowingShiftEndpointAggregateEffectiveShift j h) =
      N + coreGrowingShiftEndpointAggregateEffectiveShift j h := by
  have hmem := hN
  simp only [coreGrowingShiftEndpointDifferenceIntervalTailSet,
    coreGrowingShiftEndpointDifferenceIntervalTailLower,
    Finset.mem_Ico] at hmem
  unfold coreGrowingShiftEndpointAggregateTailStart
    coreGrowingShiftEndpointAggregateAnchorDenominator at hmem ⊢
  apply max_eq_right
  omega

/-- Every generic anchor coefficient is the same reciprocal drop. -/
theorem coreGrowingShiftSignedStaircaseWeight_eq_intervalAnchorDrop
    {j h A B N : ℕ}
    (hN :
      N ∈ coreGrowingShiftEndpointDifferenceIntervalAnchorSet j h A B) :
    coreGrowingShiftSignedStaircaseWeight j N h =
      coreGrowingShiftEndpointReciprocalDrop
        (coreGrowingShiftEndpointAggregateAnchorDenominator j) := by
  rw [coreGrowingShiftSignedStaircaseWeight_eq_normalizedDrop,
    coreGrowingShiftEndpointDifferenceIntervalDenominator_eq_anchor hN]

/-- Every generic tail coefficient is the literal affine reciprocal drop. -/
theorem coreGrowingShiftSignedStaircaseWeight_eq_intervalTailDrop
    {j h A B N : ℕ}
    (hN :
      N ∈ coreGrowingShiftEndpointDifferenceIntervalTailSet j h A B) :
    coreGrowingShiftSignedStaircaseWeight j N h =
      coreGrowingShiftEndpointReciprocalDrop
        (N + coreGrowingShiftEndpointAggregateEffectiveShift j h) := by
  rw [coreGrowingShiftSignedStaircaseWeight_eq_normalizedDrop,
    coreGrowingShiftEndpointDifferenceIntervalDenominator_eq_tail hN]

/-- Exact sum of a generic constant-anchor block. -/
theorem coreGrowingShiftEndpointDifferenceIntervalAnchorSum
    (j h A B : ℕ) :
    (∑ N ∈ coreGrowingShiftEndpointDifferenceIntervalAnchorSet j h A B,
      coreGrowingShiftSignedStaircaseWeight j N h) =
      (coreGrowingShiftEndpointDifferenceIntervalAnchorMultiplicity
          j h A B : ℝ) *
        coreGrowingShiftEndpointReciprocalDrop
          (coreGrowingShiftEndpointAggregateAnchorDenominator j) := by
  calc
    (∑ N ∈ coreGrowingShiftEndpointDifferenceIntervalAnchorSet j h A B,
      coreGrowingShiftSignedStaircaseWeight j N h) =
      ∑ _N ∈ coreGrowingShiftEndpointDifferenceIntervalAnchorSet j h A B,
        coreGrowingShiftEndpointReciprocalDrop
          (coreGrowingShiftEndpointAggregateAnchorDenominator j) := by
      apply Finset.sum_congr rfl
      intro N hN
      exact coreGrowingShiftSignedStaircaseWeight_eq_intervalAnchorDrop hN
    _ = (coreGrowingShiftEndpointDifferenceIntervalAnchorMultiplicity
          j h A B : ℝ) *
        coreGrowingShiftEndpointReciprocalDrop
          (coreGrowingShiftEndpointAggregateAnchorDenominator j) := by
      simp [coreGrowingShiftEndpointDifferenceIntervalAnchorMultiplicity,
        nsmul_eq_mul]

/-- Exact reciprocal-boundary evaluation of a generic affine tail. -/
theorem coreGrowingShiftEndpointDifferenceIntervalTailSum
    (j h A B : ℕ) :
    (∑ N ∈ coreGrowingShiftEndpointDifferenceIntervalTailSet j h A B,
      coreGrowingShiftSignedStaircaseWeight j N h) =
      coreGrowingShiftEndpointDifferenceIntervalTailBoundary j h A B := by
  let L := coreGrowingShiftEndpointDifferenceIntervalTailLower j h A
  let q := coreGrowingShiftEndpointAggregateEffectiveShift j h
  by_cases hLB : L ≤ B
  · unfold coreGrowingShiftEndpointDifferenceIntervalTailBoundary
    simp only [L, q]
    rw [if_pos hLB]
    change
      (∑ N ∈ Finset.Ico L B,
        coreGrowingShiftSignedStaircaseWeight j N h) =
        (((L + q : ℕ) : ℝ))⁻¹ - (((B + q : ℕ) : ℝ))⁻¹
    calc
      (∑ N ∈ Finset.Ico L B,
        coreGrowingShiftSignedStaircaseWeight j N h) =
          ∑ N ∈ Finset.Ico L B,
            coreGrowingShiftEndpointReciprocalDrop (N + q) := by
        apply Finset.sum_congr rfl
        intro N hN
        apply coreGrowingShiftSignedStaircaseWeight_eq_intervalTailDrop
        simpa [coreGrowingShiftEndpointDifferenceIntervalTailSet, L] using hN
      _ = (((L + q : ℕ) : ℝ))⁻¹ - (((B + q : ℕ) : ℝ))⁻¹ :=
        finite_reciprocalDrop_Ico q L B hLB
  · have hnotlt : ¬ L < B := by omega
    have hempty : Finset.Ico L B = ∅ :=
      Finset.Ico_eq_empty_iff.mpr hnotlt
    unfold coreGrowingShiftEndpointDifferenceIntervalTailBoundary
    simp only [L, q]
    rw [if_neg hLB]
    change
      (∑ N ∈ Finset.Ico L B,
        coreGrowingShiftSignedStaircaseWeight j N h) = 0
    rw [hempty]
    simp

/-- Exact closed evaluation of an arbitrary difference-prefix interval. -/
theorem coreGrowingShiftEndpointDifferenceIntervalKernel_eq_boundary
    (j h A B : ℕ) :
    coreGrowingShiftEndpointDifferenceIntervalKernel j h A B =
      coreGrowingShiftEndpointDifferenceIntervalBoundaryKernel j h A B := by
  unfold coreGrowingShiftEndpointDifferenceIntervalKernel
    coreGrowingShiftEndpointDifferenceIntervalBoundaryKernel
  rw [coreGrowingShiftEndpointDifferenceInterval_eq_anchor_union_tail,
    Finset.sum_union
      (coreGrowingShiftEndpointDifferenceIntervalAnchor_disjoint_tail
        j h A B),
    coreGrowingShiftEndpointDifferenceIntervalAnchorSum,
    coreGrowingShiftEndpointDifferenceIntervalTailSum]

/-- Translation-invariant strict-Toeplitz bulk coefficient.  It depends only
on the endpoint difference. -/
def coreGrowingShiftEndpointToeplitzBulkKernel
    (j h : ℕ) : ℝ :=
  coreGrowingShiftEndpointDifferenceIntervalBoundaryKernel j h
    (coreGrowingShiftEndpointDifferencePrefixLower j h)
    (coreGrowingShiftEndpointDifferencePrefixUpper j h)

/-- Explicit correction removed by the left endpoint `n`. -/
def coreGrowingShiftEndpointLeftEdgeCorrectionKernel
    (j n h : ℕ) : ℝ :=
  coreGrowingShiftEndpointDifferenceIntervalBoundaryKernel j h
    (coreGrowingShiftEndpointDifferencePrefixLower j h)
    (min n (coreGrowingShiftEndpointDifferencePrefixUpper j h))

/-- The left-edge correction vanishes before the difference-only lower cutoff. -/
theorem coreGrowingShiftEndpointLeftEdgeCorrectionKernel_eq_zero_of_le
    {j n h : ℕ}
    (hn : n ≤ coreGrowingShiftEndpointDifferencePrefixLower j h) :
    coreGrowingShiftEndpointLeftEdgeCorrectionKernel j n h = 0 := by
  rw [← coreGrowingShiftEndpointDifferenceIntervalKernel_eq_boundary]
  unfold coreGrowingShiftEndpointDifferenceIntervalKernel
  have hempty :
      Finset.Ico
          (coreGrowingShiftEndpointDifferencePrefixLower j h)
          (min n (coreGrowingShiftEndpointDifferencePrefixUpper j h)) = ∅ := by
    apply Finset.Ico_eq_empty_iff.mpr
    omega
  rw [hempty]
  simp

/-- Exact bulk interval partition into the clipped left edge and the active
endpoint interval. -/
theorem coreGrowingShiftEndpointDifferencePrefixSet_eq_leftEdge_union_active
    (j n h : ℕ) :
    coreGrowingShiftEndpointDifferencePrefixSet j h =
      Finset.Ico
          (coreGrowingShiftEndpointDifferencePrefixLower j h)
          (min n (coreGrowingShiftEndpointDifferencePrefixUpper j h)) ∪
        Finset.Ico
          (max n (coreGrowingShiftEndpointDifferencePrefixLower j h))
          (coreGrowingShiftEndpointDifferencePrefixUpper j h) := by
  ext N
  simp only [coreGrowingShiftEndpointDifferencePrefixSet,
    Finset.mem_Ico, Finset.mem_union]
  omega

/-- The left-edge and active intervals are disjoint. -/
theorem coreGrowingShiftEndpointLeftEdge_disjoint_active
    (j n h : ℕ) :
    Disjoint
      (Finset.Ico
        (coreGrowingShiftEndpointDifferencePrefixLower j h)
        (min n (coreGrowingShiftEndpointDifferencePrefixUpper j h)))
      (Finset.Ico
        (max n (coreGrowingShiftEndpointDifferencePrefixLower j h))
        (coreGrowingShiftEndpointDifferencePrefixUpper j h)) := by
  refine Finset.disjoint_left.mpr ?_
  intro N hLeft hActive
  simp only [Finset.mem_Ico] at hLeft hActive
  omega

/-- The closed endpoint coefficient is the active generic interval in
left-endpoint/difference coordinates. -/
theorem coreGrowingShiftEndpointAggregateBoundaryKernel_eq_activeDifferenceInterval
    {j n m : ℕ}
    (hn : 1 ≤ n)
    (hnm : n < m)
    (hmY : m < 2 ^ (j + 1)) :
    coreGrowingShiftEndpointAggregateBoundaryKernel j n m =
      coreGrowingShiftEndpointDifferenceIntervalKernel j (m - n)
        (max n
          (coreGrowingShiftEndpointDifferencePrefixLower j (m - n)))
        (coreGrowingShiftEndpointDifferencePrefixUpper j (m - n)) := by
  rw [← coreGrowingShiftEndpointAggregateKernel_eq_boundary hn hnm hmY,
    coreGrowingShiftEndpointAggregateKernel_eq_explicitInterval hn hnm hmY]
  unfold coreGrowingShiftEndpointExplicitPrefixSet
    coreGrowingShiftEndpointDifferenceIntervalKernel
  rw [coreGrowingShiftEndpointAggregatePrefixLower_eq_max_left_difference,
    coreGrowingShiftEndpointAggregatePrefixUpper_eq_difference]
  apply Finset.sum_congr rfl
  intro N _hN
  unfold coreGrowingShiftSignedEndpointKernel
  rfl

/-- Exact Toeplitz-bulk minus left-edge decomposition of every strict ordinary
endpoint coefficient. -/
theorem coreGrowingShiftEndpointAggregateBoundaryKernel_eq_toeplitz_sub_leftEdge
    {j n m : ℕ}
    (hn : 1 ≤ n)
    (hnm : n < m)
    (hmY : m < 2 ^ (j + 1)) :
    coreGrowingShiftEndpointAggregateBoundaryKernel j n m =
      coreGrowingShiftEndpointToeplitzBulkKernel j (m - n) -
        coreGrowingShiftEndpointLeftEdgeCorrectionKernel j n (m - n) := by
  let h := m - n
  let B := coreGrowingShiftEndpointDifferencePrefixLower j h
  let U := coreGrowingShiftEndpointDifferencePrefixUpper j h
  have hpartition :
      coreGrowingShiftEndpointDifferenceIntervalKernel j h B U =
        coreGrowingShiftEndpointDifferenceIntervalKernel j h B (min n U) +
          coreGrowingShiftEndpointDifferenceIntervalKernel j h (max n B) U := by
    unfold coreGrowingShiftEndpointDifferenceIntervalKernel
    rw [show Finset.Ico B U =
        Finset.Ico B (min n U) ∪ Finset.Ico (max n B) U by
          simpa [B, U, h] using
            coreGrowingShiftEndpointDifferencePrefixSet_eq_leftEdge_union_active
              j n h,
      Finset.sum_union]
    simpa [B, U, h] using
      coreGrowingShiftEndpointLeftEdge_disjoint_active j n h
  rw [coreGrowingShiftEndpointAggregateBoundaryKernel_eq_activeDifferenceInterval
    hn hnm hmY]
  change
    coreGrowingShiftEndpointDifferenceIntervalKernel j h (max n B) U = _
  have hsolve :
      coreGrowingShiftEndpointDifferenceIntervalKernel j h (max n B) U =
        coreGrowingShiftEndpointDifferenceIntervalKernel j h B U -
          coreGrowingShiftEndpointDifferenceIntervalKernel j h B (min n U) := by
    linarith
  rw [hsolve,
    coreGrowingShiftEndpointDifferenceIntervalKernel_eq_boundary,
    coreGrowingShiftEndpointDifferenceIntervalKernel_eq_boundary]
  rfl

/-- Zero-padded strict upper-triangular Toeplitz bulk. -/
def coreGrowingShiftEndpointToeplitzBulkKernelZeroPad
    (j : ℕ)
    (x y : CoreGrowingShiftEndpointFourierIndex j) : ℂ :=
  if 1 ≤ x.val ∧ x.val < y.val then
    (coreGrowingShiftEndpointToeplitzBulkKernel j (y.val - x.val) : ℂ)
  else 0

/-- Zero-padded left-edge correction. -/
def coreGrowingShiftEndpointLeftEdgeCorrectionKernelZeroPad
    (j : ℕ)
    (x y : CoreGrowingShiftEndpointFourierIndex j) : ℂ :=
  if 1 ≤ x.val ∧ x.val < y.val then
    (coreGrowingShiftEndpointLeftEdgeCorrectionKernel
      j x.val (y.val - x.val) : ℂ)
  else 0

/-- The Toeplitz bulk coefficient is independent of the left endpoint. -/
theorem coreGrowingShiftEndpointToeplitzBulkKernel_difference_invariant
    {j n₁ m₁ n₂ m₂ : ℕ}
    (hdiff : m₁ - n₁ = m₂ - n₂) :
    coreGrowingShiftEndpointToeplitzBulkKernel j (m₁ - n₁) =
      coreGrowingShiftEndpointToeplitzBulkKernel j (m₂ - n₂) := by
  rw [hdiff]

/-- Exact zero-padded decomposition into strict Toeplitz bulk minus left-edge
correction. -/
theorem coreGrowingShiftEndpointBoundaryKernelZeroPad_eq_toeplitz_sub_leftEdge
    (j : ℕ)
    (x y : CoreGrowingShiftEndpointFourierIndex j) :
    coreGrowingShiftEndpointBoundaryKernelZeroPad j x y =
      coreGrowingShiftEndpointToeplitzBulkKernelZeroPad j x y -
        coreGrowingShiftEndpointLeftEdgeCorrectionKernelZeroPad j x y := by
  by_cases hsupport : 1 ≤ x.val ∧ x.val < y.val
  · have hcoef :=
      coreGrowingShiftEndpointAggregateBoundaryKernel_eq_toeplitz_sub_leftEdge
        (j := j) (n := x.val) (m := y.val)
        hsupport.1 hsupport.2 (ZMod.val_lt y)
    simp [coreGrowingShiftEndpointBoundaryKernelZeroPad,
      coreGrowingShiftEndpointToeplitzBulkKernelZeroPad,
      coreGrowingShiftEndpointLeftEdgeCorrectionKernelZeroPad,
      hsupport, hcoef]
  · simp [coreGrowingShiftEndpointBoundaryKernelZeroPad,
      coreGrowingShiftEndpointToeplitzBulkKernelZeroPad,
      coreGrowingShiftEndpointLeftEdgeCorrectionKernelZeroPad,
      hsupport]

/-- Iterated finite DFT is linear over kernel subtraction. -/
theorem finiteZModKernelDFT2_sub
    {Q : ℕ} [NeZero Q]
    (K R : ZMod Q → ZMod Q → ℂ)
    (r s : ZMod Q) :
    finiteZModKernelDFT2 (fun x y => K x y - R x y) r s =
      finiteZModKernelDFT2 K r s - finiteZModKernelDFT2 R r s := by
  unfold finiteZModKernelDFT2
  have hinner (x : ZMod Q) :
      ZMod.dft (fun y => K x y - R x y) s =
        ZMod.dft (K x) s - ZMod.dft (R x) s := by
    change ZMod.dft ((K x) - (R x)) s = _
    rw [map_sub]
    rfl
  have hfun :
      (fun x => ZMod.dft (fun y => K x y - R x y) s) =
        (fun x => ZMod.dft (K x) s) -
          (fun x => ZMod.dft (R x) s) := by
    funext x
    exact hinner x
  rw [hfun, map_sub]
  rfl

/-- Two-dimensional DFT of the strict Toeplitz bulk. -/
def coreGrowingShiftEndpointToeplitzBulkKernelDFT2
    (j : ℕ)
    (r s : CoreGrowingShiftEndpointFourierIndex j) : ℂ :=
  finiteZModKernelDFT2
    (coreGrowingShiftEndpointToeplitzBulkKernelZeroPad j) r s

/-- Two-dimensional DFT of the left-edge correction. -/
def coreGrowingShiftEndpointLeftEdgeCorrectionKernelDFT2
    (j : ℕ)
    (r s : CoreGrowingShiftEndpointFourierIndex j) : ℂ :=
  finiteZModKernelDFT2
    (coreGrowingShiftEndpointLeftEdgeCorrectionKernelZeroPad j) r s

/-- The boundary transform is exactly the Toeplitz transform minus the
left-edge transform. -/
theorem coreGrowingShiftEndpointBoundaryKernelDFT2_eq_toeplitz_sub_leftEdge
    (j : ℕ)
    (r s : CoreGrowingShiftEndpointFourierIndex j) :
    coreGrowingShiftEndpointBoundaryKernelDFT2 j r s =
      coreGrowingShiftEndpointToeplitzBulkKernelDFT2 j r s -
        coreGrowingShiftEndpointLeftEdgeCorrectionKernelDFT2 j r s := by
  unfold coreGrowingShiftEndpointBoundaryKernelDFT2
    coreGrowingShiftEndpointToeplitzBulkKernelDFT2
    coreGrowingShiftEndpointLeftEdgeCorrectionKernelDFT2
  have hkernel :
      coreGrowingShiftEndpointBoundaryKernelZeroPad j =
        fun x y =>
          coreGrowingShiftEndpointToeplitzBulkKernelZeroPad j x y -
            coreGrowingShiftEndpointLeftEdgeCorrectionKernelZeroPad j x y := by
    funext x y
    exact
      coreGrowingShiftEndpointBoundaryKernelZeroPad_eq_toeplitz_sub_leftEdge
        j x y
  rw [hkernel]
  exact finiteZModKernelDFT2_sub
    (coreGrowingShiftEndpointToeplitzBulkKernelZeroPad j)
    (coreGrowingShiftEndpointLeftEdgeCorrectionKernelZeroPad j) r s

/-- Complete complex signed packet with the Toeplitz bulk and left-edge
correction retained inside one frequency sum. -/
def coreGrowingShiftSignedEndpointToeplitzEdgeFourierPacketComplex
    (j : ℕ) : ℂ :=
  let Y : ℕ := coreGrowingShiftEndpointFourierModulus j
  (Y : ℂ)⁻¹ * (Y : ℂ)⁻¹ *
    ∑ r : CoreGrowingShiftEndpointFourierIndex j,
      ∑ s : CoreGrowingShiftEndpointFourierIndex j,
        ZMod.dft (coreGrowingShiftEndpointMobiusZeroPad j) (-r) *
          ZMod.dft (coreGrowingShiftEndpointMobiusZeroPad j) (-s) *
            (coreGrowingShiftEndpointToeplitzBulkKernelDFT2 j r s -
              coreGrowingShiftEndpointLeftEdgeCorrectionKernelDFT2 j r s)

/-- The parent boundary-frequency packet is exactly the complete signed
Toeplitz-minus-edge packet. -/
theorem coreGrowingShiftSignedEndpointBoundaryFourierPacketComplex_eq_toeplitzEdge
    (j : ℕ) :
    coreGrowingShiftSignedEndpointBoundaryFourierPacketComplex j =
      coreGrowingShiftSignedEndpointToeplitzEdgeFourierPacketComplex j := by
  unfold coreGrowingShiftSignedEndpointBoundaryFourierPacketComplex
    coreGrowingShiftSignedEndpointToeplitzEdgeFourierPacketComplex
  apply congrArg
  apply Finset.sum_congr rfl
  intro r _hr
  apply Finset.sum_congr rfl
  intro s _hs
  rw [coreGrowingShiftEndpointBoundaryKernelDFT2_eq_toeplitz_sub_leftEdge]

/-- The complete Toeplitz-minus-edge complex packet is real. -/
theorem coreGrowingShiftSignedEndpointToeplitzEdgeFourierPacketComplex_im
    (j : ℕ) :
    (coreGrowingShiftSignedEndpointToeplitzEdgeFourierPacketComplex j).im = 0 := by
  rw [← coreGrowingShiftSignedEndpointBoundaryFourierPacketComplex_eq_toeplitzEdge,
    coreGrowingShiftSignedEndpointBoundaryFourierPacketComplex_im]

/-- Real signed Toeplitz-minus-edge frequency packet. -/
def coreGrowingShiftSignedEndpointToeplitzEdgeFourierPacket
    (j : ℕ) : ℝ :=
  (coreGrowingShiftSignedEndpointToeplitzEdgeFourierPacketComplex j).re

/-- Exact equality with the parent closed-boundary frequency packet. -/
theorem coreGrowingShiftSignedEndpointBoundaryFourierPacket_eq_toeplitzEdge
    (j : ℕ) :
    coreGrowingShiftSignedEndpointBoundaryFourierPacket j =
      coreGrowingShiftSignedEndpointToeplitzEdgeFourierPacket j := by
  unfold coreGrowingShiftSignedEndpointBoundaryFourierPacket
    coreGrowingShiftSignedEndpointToeplitzEdgeFourierPacket
  rw [coreGrowingShiftSignedEndpointBoundaryFourierPacketComplex_eq_toeplitzEdge]

/-- Exact RH-facing return through the signed Toeplitz-minus-edge packet. -/
theorem coreGrowingShiftFirstDifferencePacket_eq_two_mul_endpointToeplitzEdgeFourier
    (j : ℕ) :
    coreGrowingShiftFirstDifferencePacket j =
      2 * coreGrowingShiftSignedEndpointToeplitzEdgeFourierPacket j := by
  rw [coreGrowingShiftFirstDifferencePacket_eq_two_mul_endpointBoundaryFourier,
    coreGrowingShiftSignedEndpointBoundaryFourierPacket_eq_toeplitzEdge]

/-- Source-facing condition on the exact signed Toeplitz-minus-edge frequency
packet. -/
def SubpolynomialCoreGrowingShiftSignedEndpointToeplitzEdgeFourierPacket : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      2 * coreGrowingShiftSignedEndpointToeplitzEdgeFourierPacket j ≤
        C * (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- Exact equivalence with the parent closed-boundary Fourier source. -/
theorem subpolynomialCoreGrowingShiftSignedEndpointToeplitzEdgeFourierPacket_iff_boundary :
    SubpolynomialCoreGrowingShiftSignedEndpointToeplitzEdgeFourierPacket ↔
      SubpolynomialCoreGrowingShiftSignedEndpointBoundaryFourierPacket := by
  constructor
  · intro hToeplitz δ hδ
    obtain ⟨C, hC, hbound⟩ := hToeplitz δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [coreGrowingShiftSignedEndpointBoundaryFourierPacket_eq_toeplitzEdge]
    exact hbound j
  · intro hBoundary δ hδ
    obtain ⟨C, hC, hbound⟩ := hBoundary δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [← coreGrowingShiftSignedEndpointBoundaryFourierPacket_eq_toeplitzEdge]
    exact hbound j

/-- Conditional RH endpoint stated on the signed Toeplitz-minus-edge packet. -/
theorem riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointToeplitzEdgeFourierPacket
    (hToeplitz :
      SubpolynomialCoreGrowingShiftSignedEndpointToeplitzEdgeFourierPacket) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointBoundaryFourierPacket
    (subpolynomialCoreGrowingShiftSignedEndpointToeplitzEdgeFourierPacket_iff_boundary.mp
      hToeplitz)

/-- Source profile for a theorem stated on the single signed Toeplitz-minus-
edge frequency packet.  The two pieces are not separately majorized. -/
structure SignedEndpointToeplitzEdgeFourierSource where
  sourceStatement : Prop
  genericIntervalEvaluation : Prop
  differenceOnlyBulkSupport : Prop
  exactLeftEdgeClipping : Prop
  strictEndpointSupport : Prop
  exactZeroPadding : Prop
  noWrapControl : Prop
  dftSignNormalization : Prop
  lowAnchorPreservation : Prop
  signedBulkEdgeCancellation : Prop
  signedTwoFrequencyCancellation : Prop
  allScaleUniformity : Prop
  finiteSmallScaleControl : Prop

/-- Proof-producing boundary for a future signed Toeplitz-minus-edge estimate. -/
structure ToCoreGrowingShiftSignedEndpointToeplitzEdgeFourierPacket
    (d : SignedEndpointToeplitzEdgeFourierSource) : Type where
  toToeplitzEdgeFourier :
    d.sourceStatement →
      d.genericIntervalEvaluation →
      d.differenceOnlyBulkSupport →
      d.exactLeftEdgeClipping →
      d.strictEndpointSupport →
      d.exactZeroPadding →
      d.noWrapControl →
      d.dftSignNormalization →
      d.lowAnchorPreservation →
      d.signedBulkEdgeCancellation →
      d.signedTwoFrequencyCancellation →
      d.allScaleUniformity →
      d.finiteSmallScaleControl →
      SubpolynomialCoreGrowingShiftSignedEndpointToeplitzEdgeFourierPacket

/-- Generic conditional endpoint through an explicitly constructed signed
Toeplitz-minus-edge frequency adapter. -/
theorem riemannHypothesis_of_signedEndpointToeplitzEdgeFourierAdapter
    (d : SignedEndpointToeplitzEdgeFourierSource)
    (bridge : ToCoreGrowingShiftSignedEndpointToeplitzEdgeFourierPacket d)
    (hsource : d.sourceStatement)
    (hinterval : d.genericIntervalEvaluation)
    (hbulk : d.differenceOnlyBulkSupport)
    (hedge : d.exactLeftEdgeClipping)
    (hsupport : d.strictEndpointSupport)
    (hzero : d.exactZeroPadding)
    (hnowrap : d.noWrapControl)
    (hsign : d.dftSignNormalization)
    (hanchor : d.lowAnchorPreservation)
    (hbulkedge : d.signedBulkEdgeCancellation)
    (hfrequency : d.signedTwoFrequencyCancellation)
    (huniform : d.allScaleUniformity)
    (hsmall : d.finiteSmallScaleControl) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointToeplitzEdgeFourierPacket
    (bridge.toToeplitzEdgeFourier hsource hinterval hbulk hedge hsupport
      hzero hnowrap hsign hanchor hbulkedge hfrequency huniform hsmall)

/-- Hostile control: the Toeplitz bulk and left-edge correction may cancel
exactly while their separate absolute masses are positive. -/
theorem signedEndpointToeplitzEdgeCancellation_hostileWitness :
    ((1 : ℂ) - (1 : ℂ)) = 0 ∧
      ‖(1 : ℂ)‖ + ‖(1 : ℂ)‖ = 2 := by
  norm_num

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointDifferenceIntervalKernel_eq_boundary
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointAggregateBoundaryKernel_eq_toeplitz_sub_leftEdge
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointBoundaryKernelZeroPad_eq_toeplitz_sub_leftEdge
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointBoundaryKernelDFT2_eq_toeplitz_sub_leftEdge
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointToeplitzEdgeFourierPacket
