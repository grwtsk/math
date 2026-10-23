/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #858. Parent: draft PR #850 at
`5576c62aa169bf138564cf33fc5bba4f9aeb109e`.

Integration provenance (PR #860): this sibling retains the source authored at
`4c328c190a1d3d86dd035c21cf3d7fda83ab0299` under the original module
`GRWTSK.NumberTheory.Moebius.CoreGrowingShiftSignedEndpointDifferenceFourier`.
Its three overlapping difference-prefix/bulk declarations have fresh names
containing `CorrectionDifference`; all hypotheses and proof scripts otherwise
remain as authored. The independent issue #876 module remains unchanged.
This relocation supplies no elaboration or kernel-audit evidence.
-/
import GRWTSK.NumberTheory.Moebius.CoreGrowingShiftSignedEndpointBoundaryFourier

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-! ## A closed coefficient for an arbitrary prefix interval -/

/-- Constant-anchor part of an arbitrary prefix interval. -/
def coreGrowingShiftEndpointClosedIntervalAnchorSet
    (j h A B : ℕ) : Finset ℕ :=
  Finset.Ico A
    (min B (coreGrowingShiftEndpointAggregateTailStart j h))

/-- First affine-tail prefix in an arbitrary prefix interval. -/
def coreGrowingShiftEndpointClosedIntervalTailLower
    (j h A : ℕ) : ℕ :=
  max A (coreGrowingShiftEndpointAggregateTailStart j h)

/-- Affine-tail part of an arbitrary prefix interval. -/
def coreGrowingShiftEndpointClosedIntervalTailSet
    (j h A B : ℕ) : Finset ℕ :=
  Finset.Ico
    (coreGrowingShiftEndpointClosedIntervalTailLower j h A) B

/-- Exact clipped multiplicity of the constant-anchor block. -/
def coreGrowingShiftEndpointClosedIntervalAnchorMultiplicity
    (j h A B : ℕ) : ℕ :=
  (coreGrowingShiftEndpointClosedIntervalAnchorSet j h A B).card

/-- Telescoped affine tail, with an empty interval represented by zero. -/
def coreGrowingShiftEndpointClosedIntervalTailBoundary
    (j h A B : ℕ) : ℝ :=
  let L := coreGrowingShiftEndpointClosedIntervalTailLower j h A
  let q := coreGrowingShiftEndpointAggregateEffectiveShift j h
  if L ≤ B then
    (((L + q : ℕ) : ℝ))⁻¹ - (((B + q : ℕ) : ℝ))⁻¹
  else 0

/-- Closed evaluation of the inherited clamped reciprocal coefficient on an
arbitrary half-open prefix interval. -/
def coreGrowingShiftEndpointClosedIntervalKernel
    (j h A B : ℕ) : ℝ :=
  (coreGrowingShiftEndpointClosedIntervalAnchorMultiplicity j h A B : ℝ) *
      coreGrowingShiftEndpointReciprocalDrop
        (coreGrowingShiftEndpointAggregateAnchorDenominator j) +
    coreGrowingShiftEndpointClosedIntervalTailBoundary j h A B

/-- An arbitrary prefix interval is the disjoint union of its anchor and tail
pieces. -/
theorem coreGrowingShiftEndpoint_Ico_eq_closedAnchor_union_tail
    (j h A B : ℕ) :
    Finset.Ico A B =
      coreGrowingShiftEndpointClosedIntervalAnchorSet j h A B ∪
        coreGrowingShiftEndpointClosedIntervalTailSet j h A B := by
  ext N
  simp only [coreGrowingShiftEndpointClosedIntervalAnchorSet,
    coreGrowingShiftEndpointClosedIntervalTailSet,
    coreGrowingShiftEndpointClosedIntervalTailLower,
    Finset.mem_Ico, Finset.mem_union]
  omega

/-- The two pieces in the arbitrary-interval split are disjoint. -/
theorem coreGrowingShiftEndpoint_closedAnchor_disjoint_tail
    (j h A B : ℕ) :
    Disjoint
      (coreGrowingShiftEndpointClosedIntervalAnchorSet j h A B)
      (coreGrowingShiftEndpointClosedIntervalTailSet j h A B) := by
  refine Finset.disjoint_left.mpr ?_
  intro N hA hT
  simp only [coreGrowingShiftEndpointClosedIntervalAnchorSet,
    coreGrowingShiftEndpointClosedIntervalTailSet,
    coreGrowingShiftEndpointClosedIntervalTailLower,
    Finset.mem_Ico] at hA hT
  omega

/-- On the anchor part of an arbitrary interval, the inherited staircase
weight is the constant anchor reciprocal drop. -/
theorem coreGrowingShiftSignedStaircaseWeight_eq_closedAnchorDrop
    {j h A B N : ℕ}
    (hN : N ∈ coreGrowingShiftEndpointClosedIntervalAnchorSet j h A B) :
    coreGrowingShiftSignedStaircaseWeight j N h =
      coreGrowingShiftEndpointReciprocalDrop
        (coreGrowingShiftEndpointAggregateAnchorDenominator j) := by
  have hmem := hN
  simp only [coreGrowingShiftEndpointClosedIntervalAnchorSet,
    Finset.mem_Ico] at hmem
  unfold coreGrowingShiftSignedStaircaseWeight
    coreGrowingShiftEndpointReciprocalDrop
  rw [coreGrowingShiftSignedStaircaseDenominator_eq_max]
  have hmax :
      max (coreGrowingShiftEndpointAggregateAnchorDenominator j)
          (N + coreGrowingShiftEndpointAggregateEffectiveShift j h) =
        coreGrowingShiftEndpointAggregateAnchorDenominator j := by
    unfold coreGrowingShiftEndpointAggregateTailStart
      coreGrowingShiftEndpointAggregateAnchorDenominator at hmem ⊢
    apply max_eq_left
    omega
  rw [hmax]

/-- On the tail part of an arbitrary interval, the inherited staircase weight
is the literal affine reciprocal drop. -/
theorem coreGrowingShiftSignedStaircaseWeight_eq_closedTailDrop
    {j h A B N : ℕ}
    (hN : N ∈ coreGrowingShiftEndpointClosedIntervalTailSet j h A B) :
    coreGrowingShiftSignedStaircaseWeight j N h =
      coreGrowingShiftEndpointReciprocalDrop
        (N + coreGrowingShiftEndpointAggregateEffectiveShift j h) := by
  have hmem := hN
  simp only [coreGrowingShiftEndpointClosedIntervalTailSet,
    coreGrowingShiftEndpointClosedIntervalTailLower,
    Finset.mem_Ico] at hmem
  unfold coreGrowingShiftSignedStaircaseWeight
    coreGrowingShiftEndpointReciprocalDrop
  rw [coreGrowingShiftSignedStaircaseDenominator_eq_max]
  have hmax :
      max (coreGrowingShiftEndpointAggregateAnchorDenominator j)
          (N + coreGrowingShiftEndpointAggregateEffectiveShift j h) =
        N + coreGrowingShiftEndpointAggregateEffectiveShift j h := by
    unfold coreGrowingShiftEndpointAggregateTailStart
      coreGrowingShiftEndpointAggregateAnchorDenominator at hmem ⊢
    apply max_eq_right
    omega
  rw [hmax]

/-- Exact anchor sum on an arbitrary prefix interval. -/
theorem coreGrowingShiftEndpointClosedIntervalAnchorSum
    (j h A B : ℕ) :
    (∑ N ∈ coreGrowingShiftEndpointClosedIntervalAnchorSet j h A B,
      coreGrowingShiftSignedStaircaseWeight j N h) =
      (coreGrowingShiftEndpointClosedIntervalAnchorMultiplicity j h A B : ℝ) *
        coreGrowingShiftEndpointReciprocalDrop
          (coreGrowingShiftEndpointAggregateAnchorDenominator j) := by
  calc
    (∑ N ∈ coreGrowingShiftEndpointClosedIntervalAnchorSet j h A B,
      coreGrowingShiftSignedStaircaseWeight j N h) =
      ∑ _N ∈ coreGrowingShiftEndpointClosedIntervalAnchorSet j h A B,
        coreGrowingShiftEndpointReciprocalDrop
          (coreGrowingShiftEndpointAggregateAnchorDenominator j) := by
      apply Finset.sum_congr rfl
      intro N hN
      exact coreGrowingShiftSignedStaircaseWeight_eq_closedAnchorDrop hN
    _ = _ := by
      simp [coreGrowingShiftEndpointClosedIntervalAnchorMultiplicity,
        nsmul_eq_mul]

/-- Exact telescoped tail on an arbitrary prefix interval. -/
theorem coreGrowingShiftEndpointClosedIntervalTailSum
    (j h A B : ℕ) :
    (∑ N ∈ coreGrowingShiftEndpointClosedIntervalTailSet j h A B,
      coreGrowingShiftSignedStaircaseWeight j N h) =
      coreGrowingShiftEndpointClosedIntervalTailBoundary j h A B := by
  let L := coreGrowingShiftEndpointClosedIntervalTailLower j h A
  let q := coreGrowingShiftEndpointAggregateEffectiveShift j h
  by_cases hLB : L ≤ B
  · unfold coreGrowingShiftEndpointClosedIntervalTailBoundary
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
        apply coreGrowingShiftSignedStaircaseWeight_eq_closedTailDrop
        simpa [coreGrowingShiftEndpointClosedIntervalTailSet, L] using hN
      _ = (((L + q : ℕ) : ℝ))⁻¹ - (((B + q : ℕ) : ℝ))⁻¹ :=
        finite_reciprocalDrop_Ico q L B hLB
  · have hnotlt : ¬ L < B := by omega
    have hempty : Finset.Ico L B = ∅ :=
      Finset.Ico_eq_empty_iff.mpr hnotlt
    unfold coreGrowingShiftEndpointClosedIntervalTailBoundary
    rw [if_neg hLB]
    change
      (∑ N ∈ Finset.Ico L B,
        coreGrowingShiftSignedStaircaseWeight j N h) = 0
    rw [hempty]
    simp

/-- The closed arbitrary-interval formula is exactly the inherited finite
prefix sum. -/
theorem coreGrowingShiftEndpointClosedIntervalKernel_eq_sum
    (j h A B : ℕ) :
    coreGrowingShiftEndpointClosedIntervalKernel j h A B =
      ∑ N ∈ Finset.Ico A B,
        coreGrowingShiftSignedStaircaseWeight j N h := by
  rw [coreGrowingShiftEndpoint_Ico_eq_closedAnchor_union_tail,
    Finset.sum_union
      (coreGrowingShiftEndpoint_closedAnchor_disjoint_tail j h A B),
    coreGrowingShiftEndpointClosedIntervalAnchorSum,
    coreGrowingShiftEndpointClosedIntervalTailSum]
  rfl

/-! ## Difference-only bulk and the left-endpoint clipping correction -/

/-- Difference-only lower prefix boundary before the left endpoint `n` is
imposed. -/
def coreGrowingShiftEndpointCorrectionDifferencePrefixLower
    (j h : ℕ) : ℕ :=
  max (logarithmicShiftThreshold j + 1) (2 ^ j - h)

/-- Difference-only exclusive upper prefix boundary. -/
def coreGrowingShiftEndpointCorrectionDifferencePrefixUpper
    (j h : ℕ) : ℕ :=
  min (2 ^ (j + 1) - logarithmicShiftThreshold j)
    (2 ^ (j + 1) - h)

/-- Closed bulk coefficient depending only on the endpoint difference. -/
def coreGrowingShiftEndpointCorrectionDifferenceBulkKernel
    (j h : ℕ) : ℝ :=
  coreGrowingShiftEndpointClosedIntervalKernel j h
    (coreGrowingShiftEndpointCorrectionDifferencePrefixLower j h)
    (coreGrowingShiftEndpointCorrectionDifferencePrefixUpper j h)

/-- Exact coefficient removed when the left endpoint clips the difference-only
prefix interval. -/
def coreGrowingShiftEndpointLeftClippingCorrection
    (j n h : ℕ) : ℝ :=
  coreGrowingShiftEndpointClosedIntervalKernel j h
    (coreGrowingShiftEndpointCorrectionDifferencePrefixLower j h)
    (min n (coreGrowingShiftEndpointCorrectionDifferencePrefixUpper j h))

/-- The inherited active-prefix lower boundary is the maximum of the
difference-only lower boundary and the left endpoint. -/
theorem coreGrowingShiftEndpointAggregatePrefixLower_eq_difference_max
    (j n m : ℕ) :
    coreGrowingShiftEndpointAggregatePrefixLower j n m =
      max (coreGrowingShiftEndpointCorrectionDifferencePrefixLower j (m - n)) n := by
  unfold coreGrowingShiftEndpointAggregatePrefixLower
    coreGrowingShiftEndpointCorrectionDifferencePrefixLower
  omega

/-- The inherited active-prefix upper boundary depends only on the endpoint
difference. -/
theorem coreGrowingShiftEndpointAggregatePrefixUpper_eq_difference
    (j n m : ℕ) :
    coreGrowingShiftEndpointAggregatePrefixUpper j n m =
      coreGrowingShiftEndpointCorrectionDifferencePrefixUpper j (m - n) := by
  rfl

private theorem Ico_eq_prefix_union_suffix
    (A B n : ℕ) :
    Finset.Ico A B =
      Finset.Ico A (min n B) ∪ Finset.Ico (max A n) B := by
  ext k
  simp only [Finset.mem_Ico, Finset.mem_union]
  omega

private theorem Ico_prefix_disjoint_suffix
    (A B n : ℕ) :
    Disjoint (Finset.Ico A (min n B)) (Finset.Ico (max A n) B) := by
  refine Finset.disjoint_left.mpr ?_
  intro k hk₁ hk₂
  simp only [Finset.mem_Ico] at hk₁ hk₂
  omega

/-- Exact finite interval subtraction: the actual endpoint coefficient is the
difference-only bulk minus the left-endpoint clipping correction. -/
theorem coreGrowingShiftEndpointAggregateBoundaryKernel_eq_difference_sub_left
    {j n m : ℕ}
    (hn : 1 ≤ n)
    (hnm : n < m)
    (hmY : m < 2 ^ (j + 1)) :
    coreGrowingShiftEndpointAggregateBoundaryKernel j n m =
      coreGrowingShiftEndpointCorrectionDifferenceBulkKernel j (m - n) -
        coreGrowingShiftEndpointLeftClippingCorrection j n (m - n) := by
  let h := m - n
  let A := coreGrowingShiftEndpointCorrectionDifferencePrefixLower j h
  let B := coreGrowingShiftEndpointCorrectionDifferencePrefixUpper j h
  have hpartition :
      Finset.Ico A B = Finset.Ico A (min n B) ∪ Finset.Ico (max A n) B :=
    Ico_eq_prefix_union_suffix A B n
  have hdisjoint :
      Disjoint (Finset.Ico A (min n B)) (Finset.Ico (max A n) B) :=
    Ico_prefix_disjoint_suffix A B n
  have hsum :
      (∑ N ∈ Finset.Ico (max A n) B,
        coreGrowingShiftSignedStaircaseWeight j N h) =
      (∑ N ∈ Finset.Ico A B,
        coreGrowingShiftSignedStaircaseWeight j N h) -
      (∑ N ∈ Finset.Ico A (min n B),
        coreGrowingShiftSignedStaircaseWeight j N h) := by
    rw [hpartition, Finset.sum_union hdisjoint]
    ring
  rw [← coreGrowingShiftEndpointAggregateKernel_eq_boundary hn hnm hmY,
    coreGrowingShiftEndpointAggregateKernel_eq_explicitInterval hn hnm hmY]
  unfold coreGrowingShiftEndpointExplicitPrefixSet
    coreGrowingShiftSignedEndpointKernel
  rw [coreGrowingShiftEndpointAggregatePrefixLower_eq_difference_max,
    coreGrowingShiftEndpointAggregatePrefixUpper_eq_difference]
  change
    (∑ N ∈ Finset.Ico (max A n) B,
      coreGrowingShiftSignedStaircaseWeight j N h) = _
  rw [hsum]
  unfold coreGrowingShiftEndpointCorrectionDifferenceBulkKernel
    coreGrowingShiftEndpointLeftClippingCorrection
  rw [coreGrowingShiftEndpointClosedIntervalKernel_eq_sum,
    coreGrowingShiftEndpointClosedIntervalKernel_eq_sum]

/-! ## Strict and cyclic zero-padded kernels -/

/-- Difference profile on the ambient cyclic group.  The zero difference is
set to zero; every nonzero canonical representative carries the exact closed
bulk coefficient. -/
def coreGrowingShiftEndpointDifferenceProfile
    (j : ℕ)
    (z : CoreGrowingShiftEndpointFourierIndex j) : ℂ :=
  if z = 0 then 0
  else (coreGrowingShiftEndpointCorrectionDifferenceBulkKernel j z.val : ℂ)

/-- Full translation-invariant cyclic difference kernel. -/
def coreGrowingShiftEndpointCyclicDifferenceKernel
    (j : ℕ)
    (x y : CoreGrowingShiftEndpointFourierIndex j) : ℂ :=
  coreGrowingShiftEndpointDifferenceProfile j (y - x)

/-- Difference-only bulk restricted to the exact positive strict upper
triangle. -/
def coreGrowingShiftEndpointStrictDifferenceBulkKernelZeroPad
    (j : ℕ)
    (x y : CoreGrowingShiftEndpointFourierIndex j) : ℂ :=
  if 1 ≤ x.val ∧ x.val < y.val then
    (coreGrowingShiftEndpointCorrectionDifferenceBulkKernel j (y.val - x.val) : ℂ)
  else 0

/-- Left-endpoint clipping correction on the exact strict support. -/
def coreGrowingShiftEndpointLeftClippingCorrectionZeroPad
    (j : ℕ)
    (x y : CoreGrowingShiftEndpointFourierIndex j) : ℂ :=
  if 1 ≤ x.val ∧ x.val < y.val then
    (coreGrowingShiftEndpointLeftClippingCorrection
      j x.val (y.val - x.val) : ℂ)
  else 0

/-- Correction required to replace the strict ordinary upper-triangle bulk by
the full cyclic convolution kernel. -/
def coreGrowingShiftEndpointCyclicSupportCorrectionZeroPad
    (j : ℕ)
    (x y : CoreGrowingShiftEndpointFourierIndex j) : ℂ :=
  coreGrowingShiftEndpointCyclicDifferenceKernel j x y -
    coreGrowingShiftEndpointStrictDifferenceBulkKernelZeroPad j x y

private theorem zmod_sub_val_of_lt
    {Q : ℕ} [NeZero Q]
    {x y : ZMod Q}
    (hxy : x.val < y.val) :
    (y - x).val = y.val - x.val := by
  have hdiff : y.val - x.val < Q :=
    lt_of_le_of_lt (Nat.sub_le y.val x.val) (ZMod.val_lt y)
  have hcast :
      y - x = ((y.val - x.val : ℕ) : ZMod Q) := by
    rw [← ZMod.natCast_zmod_val y, ← ZMod.natCast_zmod_val x]
    exact_mod_cast Nat.cast_sub (Nat.le_of_lt hxy)
  rw [hcast, ZMod.val_cast_of_lt hdiff]

/-- On the exact strict ordinary support, the cyclic difference kernel is the
strict difference-only bulk. -/
theorem coreGrowingShiftEndpointCyclicDifferenceKernel_eq_strict_of_support
    {j : ℕ}
    {x y : CoreGrowingShiftEndpointFourierIndex j}
    (hx : 1 ≤ x.val)
    (hxy : x.val < y.val) :
    coreGrowingShiftEndpointCyclicDifferenceKernel j x y =
      coreGrowingShiftEndpointStrictDifferenceBulkKernelZeroPad j x y := by
  have hsub := zmod_sub_val_of_lt hxy
  have hne : y - x ≠ 0 := by
    intro hzero
    have := congrArg ZMod.val hzero
    rw [hsub] at this
    simp at this
    omega
  simp [coreGrowingShiftEndpointCyclicDifferenceKernel,
    coreGrowingShiftEndpointDifferenceProfile,
    coreGrowingShiftEndpointStrictDifferenceBulkKernelZeroPad,
    hx, hxy, hne, hsub]

/-- The cyclic support correction vanishes on the exact strict ordinary
support. -/
theorem coreGrowingShiftEndpointCyclicSupportCorrectionZeroPad_eq_zero_of_support
    {j : ℕ}
    {x y : CoreGrowingShiftEndpointFourierIndex j}
    (hx : 1 ≤ x.val)
    (hxy : x.val < y.val) :
    coreGrowingShiftEndpointCyclicSupportCorrectionZeroPad j x y = 0 := by
  unfold coreGrowingShiftEndpointCyclicSupportCorrectionZeroPad
  rw [coreGrowingShiftEndpointCyclicDifferenceKernel_eq_strict_of_support
    hx hxy]
  ring

/-- The parent closed boundary kernel is strict difference bulk minus the
left-endpoint clipping correction. -/
theorem coreGrowingShiftEndpointBoundaryKernelZeroPad_eq_strictBulk_sub_left
    (j : ℕ)
    (x y : CoreGrowingShiftEndpointFourierIndex j) :
    coreGrowingShiftEndpointBoundaryKernelZeroPad j x y =
      coreGrowingShiftEndpointStrictDifferenceBulkKernelZeroPad j x y -
        coreGrowingShiftEndpointLeftClippingCorrectionZeroPad j x y := by
  by_cases hsupport : 1 ≤ x.val ∧ x.val < y.val
  · have hboundary :=
      coreGrowingShiftEndpointAggregateBoundaryKernel_eq_difference_sub_left
        hsupport.1 hsupport.2 (ZMod.val_lt y)
    simp [coreGrowingShiftEndpointBoundaryKernelZeroPad,
      coreGrowingShiftEndpointStrictDifferenceBulkKernelZeroPad,
      coreGrowingShiftEndpointLeftClippingCorrectionZeroPad,
      hsupport, hboundary]
  · simp [coreGrowingShiftEndpointBoundaryKernelZeroPad,
      coreGrowingShiftEndpointStrictDifferenceBulkKernelZeroPad,
      coreGrowingShiftEndpointLeftClippingCorrectionZeroPad,
      hsupport]

/-- Exact translation-invariant bulk plus two explicit endpoint corrections. -/
theorem coreGrowingShiftEndpointBoundaryKernelZeroPad_eq_cyclic_sub_corrections
    (j : ℕ)
    (x y : CoreGrowingShiftEndpointFourierIndex j) :
    coreGrowingShiftEndpointBoundaryKernelZeroPad j x y =
      coreGrowingShiftEndpointCyclicDifferenceKernel j x y -
        coreGrowingShiftEndpointCyclicSupportCorrectionZeroPad j x y -
        coreGrowingShiftEndpointLeftClippingCorrectionZeroPad j x y := by
  rw [coreGrowingShiftEndpointBoundaryKernelZeroPad_eq_strictBulk_sub_left]
  unfold coreGrowingShiftEndpointCyclicSupportCorrectionZeroPad
  ring

/-! ## Exact finite Fourier diagonalization of a cyclic difference kernel -/

open Finset AddChar ZMod

private theorem zmod_character_orthogonality
    {Q : ℕ} [NeZero Q]
    (t : ZMod Q) :
    (∑ x : ZMod Q, ZMod.stdAddChar (x * t)) =
      if t = 0 then (Q : ℂ) else 0 := by
  split_ifs with ht
  · simp [ht]
  · exact sum_eq_zero_of_ne_one (isPrimitive_stdAddChar Q ht)

private theorem finite_zmod_dft_difference_slice
    {Q : ℕ} [NeZero Q]
    (d : ZMod Q → ℂ)
    (x s : ZMod Q) :
    ZMod.dft (fun y => d (y - x)) s =
      ZMod.stdAddChar (-(x * s)) * ZMod.dft d s := by
  classical
  rw [ZMod.dft_apply, ZMod.dft_apply]
  let e : ZMod Q ≃ ZMod Q := Equiv.addRight x
  refine Fintype.sum_equiv e
    (fun y : ZMod Q =>
      ZMod.stdAddChar (-(y * s)) • d (y - x))
    (fun z : ZMod Q =>
      ZMod.stdAddChar (-(x * s)) *
        (ZMod.stdAddChar (-(z * s)) • d z)) ?_
  intro z
  simp only [e, Equiv.addRight_apply, add_sub_cancel_right,
    smul_eq_mul]
  rw [← map_add_eq_mul]
  congr 2
  ring

/-- The two-dimensional DFT of a cyclic difference kernel is supported on the
anti-diagonal `r+s=0`. -/
theorem finite_zmod_differenceKernelDFT2
    {Q : ℕ} [NeZero Q]
    (d : ZMod Q → ℂ)
    (r s : ZMod Q) :
    finiteZModKernelDFT2 (fun x y => d (y - x)) r s =
      if r + s = 0 then (Q : ℂ) * ZMod.dft d s else 0 := by
  classical
  unfold finiteZModKernelDFT2
  rw [ZMod.dft_apply]
  simp_rw [finite_zmod_dft_difference_slice]
  simp only [smul_eq_mul]
  have hfactor :
      (∑ x : ZMod Q,
        ZMod.stdAddChar (-(x * r)) *
          (ZMod.stdAddChar (-(x * s)) * ZMod.dft d s)) =
      (∑ x : ZMod Q,
        ZMod.stdAddChar (x * (-(r + s)))) * ZMod.dft d s := by
    apply Fintype.sum_congr
    intro x
    rw [← map_add_eq_mul]
    congr 2
    ring
  rw [hfactor, ← Finset.sum_mul,
    zmod_character_orthogonality (-(r + s))]
  by_cases hrs : r + s = 0
  · simp [hrs]
  · have hneg : -(r + s) ≠ 0 := neg_ne_zero.mpr hrs
    simp [hrs, hneg]

/-- The complete bilinear Fourier packet of a cyclic difference kernel
collapses from two frequencies to one. -/
theorem finite_zmod_differenceKernel_bilinearFourier_collapse
    {Q : ℕ} [NeZero Q]
    (f d : ZMod Q → ℂ) :
    (Q : ℂ)⁻¹ * (Q : ℂ)⁻¹ *
        ∑ r : ZMod Q, ∑ s : ZMod Q,
          ZMod.dft f (-r) * ZMod.dft f (-s) *
            finiteZModKernelDFT2 (fun x y => d (y - x)) r s =
      (Q : ℂ)⁻¹ *
        ∑ s : ZMod Q,
          ZMod.dft f s * ZMod.dft f (-s) * ZMod.dft d s := by
  classical
  simp_rw [finite_zmod_differenceKernelDFT2]
  have hinner (s : ZMod Q) :
      (∑ r : ZMod Q,
        ZMod.dft f (-r) * ZMod.dft f (-s) *
          (if r + s = 0 then (Q : ℂ) * ZMod.dft d s else 0)) =
      ZMod.dft f s * ZMod.dft f (-s) *
        ((Q : ℂ) * ZMod.dft d s) := by
    rw [Finset.sum_eq_single (-s)]
    · simp
    · intro r _hr hrs
      have hne : r + s ≠ 0 := by
        intro hz
        have : r = -s := by omega
        exact hrs this
      simp [hne]
    · intro hnot
      exact (hnot (Finset.mem_univ (-s))).elim
  simp_rw [hinner]
  have hQ : (Q : ℂ) ≠ 0 := by exact_mod_cast NeZero.ne Q
  field_simp [hQ]
  ring

/-! ## Frequency packets for the bulk and corrections -/

/-- Generic two-frequency packet attached to a zero-padded endpoint kernel. -/
def coreGrowingShiftEndpointKernelFourierPacketComplex
    (j : ℕ)
    (K : CoreGrowingShiftEndpointFourierIndex j →
      CoreGrowingShiftEndpointFourierIndex j → ℂ) : ℂ :=
  let Y : ℕ := coreGrowingShiftEndpointFourierModulus j
  (Y : ℂ)⁻¹ * (Y : ℂ)⁻¹ *
    ∑ r : CoreGrowingShiftEndpointFourierIndex j,
      ∑ s : CoreGrowingShiftEndpointFourierIndex j,
        ZMod.dft (coreGrowingShiftEndpointMobiusZeroPad j) (-r) *
          ZMod.dft (coreGrowingShiftEndpointMobiusZeroPad j) (-s) *
            finiteZModKernelDFT2 K r s

/-- Generic packet is exactly the corresponding finite bilinear form. -/
theorem coreGrowingShiftEndpointKernelFourierPacketComplex_eq_bilinear
    (j : ℕ)
    (K : CoreGrowingShiftEndpointFourierIndex j →
      CoreGrowingShiftEndpointFourierIndex j → ℂ) :
    coreGrowingShiftEndpointKernelFourierPacketComplex j K =
      ∑ x : CoreGrowingShiftEndpointFourierIndex j,
        ∑ y : CoreGrowingShiftEndpointFourierIndex j,
          coreGrowingShiftEndpointMobiusZeroPad j x *
            coreGrowingShiftEndpointMobiusZeroPad j y * K x y := by
  unfold coreGrowingShiftEndpointKernelFourierPacketComplex
  symm
  exact finite_zmod_bilinear_eq_iterated_dft
    (coreGrowingShiftEndpointMobiusZeroPad j) K

/-- One-frequency spectral packet of the translation-invariant bulk. -/
def coreGrowingShiftEndpointCyclicDifferenceBulkFourierPacketComplex
    (j : ℕ) : ℂ :=
  let Y : ℕ := coreGrowingShiftEndpointFourierModulus j
  (Y : ℂ)⁻¹ *
    ∑ s : CoreGrowingShiftEndpointFourierIndex j,
      ZMod.dft (coreGrowingShiftEndpointMobiusZeroPad j) s *
        ZMod.dft (coreGrowingShiftEndpointMobiusZeroPad j) (-s) *
          ZMod.dft (coreGrowingShiftEndpointDifferenceProfile j) s

/-- The cyclic bulk two-frequency packet is exactly its one-frequency
anti-diagonal collapse. -/
theorem coreGrowingShiftEndpointCyclicDifferenceKernel_fourier_collapse
    (j : ℕ) :
    coreGrowingShiftEndpointKernelFourierPacketComplex j
        (coreGrowingShiftEndpointCyclicDifferenceKernel j) =
      coreGrowingShiftEndpointCyclicDifferenceBulkFourierPacketComplex j := by
  unfold coreGrowingShiftEndpointKernelFourierPacketComplex
    coreGrowingShiftEndpointCyclicDifferenceKernel
    coreGrowingShiftEndpointCyclicDifferenceBulkFourierPacketComplex
  exact finite_zmod_differenceKernel_bilinearFourier_collapse
    (coreGrowingShiftEndpointMobiusZeroPad j)
    (coreGrowingShiftEndpointDifferenceProfile j)

/-- Signed two-frequency packet of the strict-to-cyclic support correction. -/
def coreGrowingShiftEndpointCyclicSupportCorrectionFourierPacketComplex
    (j : ℕ) : ℂ :=
  coreGrowingShiftEndpointKernelFourierPacketComplex j
    (coreGrowingShiftEndpointCyclicSupportCorrectionZeroPad j)

/-- Signed two-frequency packet of the left-endpoint clipping correction. -/
def coreGrowingShiftEndpointLeftClippingCorrectionFourierPacketComplex
    (j : ℕ) : ℂ :=
  coreGrowingShiftEndpointKernelFourierPacketComplex j
    (coreGrowingShiftEndpointLeftClippingCorrectionZeroPad j)

/-- Complete signed frequency combination: one-frequency cyclic bulk minus the
two exact endpoint corrections. -/
def coreGrowingShiftSignedEndpointDifferenceCorrectionFourierPacketComplex
    (j : ℕ) : ℂ :=
  coreGrowingShiftEndpointCyclicDifferenceBulkFourierPacketComplex j -
    coreGrowingShiftEndpointCyclicSupportCorrectionFourierPacketComplex j -
    coreGrowingShiftEndpointLeftClippingCorrectionFourierPacketComplex j

/-- Exact equality with the parent closed-boundary complex packet. -/
theorem coreGrowingShiftSignedEndpointDifferenceCorrectionFourierPacketComplex_eq_boundary
    (j : ℕ) :
    coreGrowingShiftSignedEndpointDifferenceCorrectionFourierPacketComplex j =
      coreGrowingShiftSignedEndpointBoundaryFourierPacketComplex j := by
  rw [← coreGrowingShiftEndpointCyclicDifferenceKernel_fourier_collapse]
  unfold coreGrowingShiftSignedEndpointDifferenceCorrectionFourierPacketComplex
    coreGrowingShiftEndpointCyclicSupportCorrectionFourierPacketComplex
    coreGrowingShiftEndpointLeftClippingCorrectionFourierPacketComplex
  rw [coreGrowingShiftEndpointKernelFourierPacketComplex_eq_bilinear,
    coreGrowingShiftEndpointKernelFourierPacketComplex_eq_bilinear,
    coreGrowingShiftEndpointKernelFourierPacketComplex_eq_bilinear]
  have hboundary :
      coreGrowingShiftSignedEndpointBoundaryFourierPacketComplex j =
        coreGrowingShiftEndpointKernelFourierPacketComplex j
          (coreGrowingShiftEndpointBoundaryKernelZeroPad j) := by
    rfl
  rw [hboundary,
    coreGrowingShiftEndpointKernelFourierPacketComplex_eq_bilinear]
  simp_rw [coreGrowingShiftEndpointBoundaryKernelZeroPad_eq_cyclic_sub_corrections]
  simp_rw [mul_sub]
  rw [Finset.sum_sub_distrib, Finset.sum_sub_distrib]
  apply congrArg₂ (· - ·)
  · apply congrArg₂ (· - ·) <;> rfl
  · rfl

/-- The complete difference/correction packet is real. -/
theorem coreGrowingShiftSignedEndpointDifferenceCorrectionFourierPacketComplex_im
    (j : ℕ) :
    (coreGrowingShiftSignedEndpointDifferenceCorrectionFourierPacketComplex j).im = 0 := by
  rw [coreGrowingShiftSignedEndpointDifferenceCorrectionFourierPacketComplex_eq_boundary,
    coreGrowingShiftSignedEndpointBoundaryFourierPacketComplex_im]

/-- Real signed difference/correction frequency packet. -/
def coreGrowingShiftSignedEndpointDifferenceCorrectionFourierPacket
    (j : ℕ) : ℝ :=
  (coreGrowingShiftSignedEndpointDifferenceCorrectionFourierPacketComplex j).re

/-- Exact equality with the parent real boundary-kernel packet. -/
theorem coreGrowingShiftSignedEndpointDifferenceCorrectionFourierPacket_eq_boundary
    (j : ℕ) :
    coreGrowingShiftSignedEndpointDifferenceCorrectionFourierPacket j =
      coreGrowingShiftSignedEndpointBoundaryFourierPacket j := by
  unfold coreGrowingShiftSignedEndpointDifferenceCorrectionFourierPacket
    coreGrowingShiftSignedEndpointBoundaryFourierPacket
  rw [coreGrowingShiftSignedEndpointDifferenceCorrectionFourierPacketComplex_eq_boundary]

/-- Exact RH-facing packet identity after the cyclic difference split. -/
theorem coreGrowingShiftFirstDifferencePacket_eq_two_mul_endpointDifferenceCorrectionFourier
    (j : ℕ) :
    coreGrowingShiftFirstDifferencePacket j =
      2 * coreGrowingShiftSignedEndpointDifferenceCorrectionFourierPacket j := by
  rw [coreGrowingShiftFirstDifferencePacket_eq_two_mul_endpointBoundaryFourier,
    ← coreGrowingShiftSignedEndpointDifferenceCorrectionFourierPacket_eq_boundary]

/-- Source-facing all-scale condition on the complete signed bulk-minus-
corrections frequency packet. -/
def SubpolynomialCoreGrowingShiftSignedEndpointDifferenceCorrectionFourierPacket : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      2 * coreGrowingShiftSignedEndpointDifferenceCorrectionFourierPacket j ≤
        C * (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- Exact equivalence with the parent closed-boundary Fourier source. -/
theorem subpolynomialCoreGrowingShiftSignedEndpointDifferenceCorrectionFourierPacket_iff_boundary :
    SubpolynomialCoreGrowingShiftSignedEndpointDifferenceCorrectionFourierPacket ↔
      SubpolynomialCoreGrowingShiftSignedEndpointBoundaryFourierPacket := by
  constructor
  · intro hSplit δ hδ
    obtain ⟨C, hC, hbound⟩ := hSplit δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [← coreGrowingShiftSignedEndpointDifferenceCorrectionFourierPacket_eq_boundary]
    exact hbound j
  · intro hBoundary δ hδ
    obtain ⟨C, hC, hbound⟩ := hBoundary δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [coreGrowingShiftSignedEndpointDifferenceCorrectionFourierPacket_eq_boundary]
    exact hbound j

/-- Conditional RH endpoint stated on the exact signed difference/correction
frequency packet. -/
theorem riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointDifferenceCorrectionFourierPacket
    (hSplit :
      SubpolynomialCoreGrowingShiftSignedEndpointDifferenceCorrectionFourierPacket) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointBoundaryFourierPacket
    (subpolynomialCoreGrowingShiftSignedEndpointDifferenceCorrectionFourierPacket_iff_boundary.mp
      hSplit)

/-- Scope descriptor for a theorem stated on the complete signed difference
bulk minus endpoint corrections.  The three pieces are not required to admit
independent absolute estimates. -/
structure SignedEndpointDifferenceCorrectionFourierSource where
  sourceStatement : Prop
  arbitraryIntervalEvaluation : Prop
  bulkMinusLeftCorrectionIdentity : Prop
  strictToCyclicSupportCorrection : Prop
  exactZeroPadding : Prop
  noWrapControl : Prop
  dftSignNormalization : Prop
  cyclicBulkAntiDiagonalCollapse : Prop
  signedCombinedFrequencyCancellation : Prop
  allScaleUniformity : Prop
  finiteSmallScaleControl : Prop

/-- Proof-producing boundary for a future signed estimate of the complete
bulk-minus-corrections packet. -/
structure ToCoreGrowingShiftSignedEndpointDifferenceCorrectionFourierPacket
    (d : SignedEndpointDifferenceCorrectionFourierSource) : Type where
  toDifferenceCorrection :
    d.sourceStatement →
      d.arbitraryIntervalEvaluation →
      d.bulkMinusLeftCorrectionIdentity →
      d.strictToCyclicSupportCorrection →
      d.exactZeroPadding →
      d.noWrapControl →
      d.dftSignNormalization →
      d.cyclicBulkAntiDiagonalCollapse →
      d.signedCombinedFrequencyCancellation →
      d.allScaleUniformity →
      d.finiteSmallScaleControl →
      SubpolynomialCoreGrowingShiftSignedEndpointDifferenceCorrectionFourierPacket

/-- Generic conditional endpoint through an explicitly constructed signed
bulk/correction frequency adapter. -/
theorem riemannHypothesis_of_signedEndpointDifferenceCorrectionFourierAdapter
    (d : SignedEndpointDifferenceCorrectionFourierSource)
    (bridge :
      ToCoreGrowingShiftSignedEndpointDifferenceCorrectionFourierPacket d)
    (hsource : d.sourceStatement)
    (hinterval : d.arbitraryIntervalEvaluation)
    (hleft : d.bulkMinusLeftCorrectionIdentity)
    (hcyclic : d.strictToCyclicSupportCorrection)
    (hzero : d.exactZeroPadding)
    (hnowrap : d.noWrapControl)
    (hsign : d.dftSignNormalization)
    (hcollapse : d.cyclicBulkAntiDiagonalCollapse)
    (hfrequency : d.signedCombinedFrequencyCancellation)
    (huniform : d.allScaleUniformity)
    (hsmall : d.finiteSmallScaleControl) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointDifferenceCorrectionFourierPacket
    (bridge.toDifferenceCorrection hsource hinterval hleft hcyclic hzero
      hnowrap hsign hcollapse hfrequency huniform hsmall)

/-- Hostile control: the one-frequency cyclic bulk and the two correction
packets may cancel exactly while their separate absolute masses are positive. -/
theorem signedEndpointDifferenceCorrectionCancellation_hostileWitness :
    ((2 : ℝ) + (-1 : ℝ) + (-1 : ℝ)) = 0 ∧
      |(2 : ℝ)| + |(-1 : ℝ)| + |(-1 : ℝ)| = 4 := by
  norm_num

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointClosedIntervalKernel_eq_sum
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointAggregateBoundaryKernel_eq_difference_sub_left
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.finite_zmod_differenceKernelDFT2
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftSignedEndpointDifferenceCorrectionFourierPacketComplex_eq_boundary
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointDifferenceCorrectionFourierPacket
