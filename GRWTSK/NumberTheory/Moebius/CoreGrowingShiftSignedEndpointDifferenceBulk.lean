/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #863. Parent: draft PR #850 at
`5576c62aa169bf138564cf33fc5bba4f9aeb109e`.
-/
import GRWTSK.NumberTheory.Moebius.CoreGrowingShiftSignedEndpointBoundaryFourier

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Difference-only lower prefix before clipping by the left endpoint. -/
def coreGrowingShiftEndpointDifferencePrefixLower
    (j h : ℕ) : ℕ :=
  max (logarithmicShiftThreshold j + 1) (2 ^ j - h)

/-- Difference-only exclusive upper prefix. -/
def coreGrowingShiftEndpointDifferencePrefixUpper
    (j h : ℕ) : ℕ :=
  min (2 ^ (j + 1) - logarithmicShiftThreshold j)
    (2 ^ (j + 1) - h)

/-- Full difference-only prefix interval. -/
def coreGrowingShiftEndpointDifferenceBulkPrefixSet
    (j h : ℕ) : Finset ℕ :=
  Finset.Ico
    (coreGrowingShiftEndpointDifferencePrefixLower j h)
    (coreGrowingShiftEndpointDifferencePrefixUpper j h)

/-- Prefixes removed when the left endpoint clips the difference-only bulk. -/
def coreGrowingShiftEndpointDifferenceLeftClipPrefixSet
    (j n h : ℕ) : Finset ℕ :=
  Finset.Ico
    (coreGrowingShiftEndpointDifferencePrefixLower j h)
    (min n (coreGrowingShiftEndpointDifferencePrefixUpper j h))

/-- Prefixes retained after clipping by the left endpoint. -/
def coreGrowingShiftEndpointDifferenceRetainedPrefixSet
    (j n h : ℕ) : Finset ℕ :=
  Finset.Ico
    (max n (coreGrowingShiftEndpointDifferencePrefixLower j h))
    (coreGrowingShiftEndpointDifferencePrefixUpper j h)

/-- The parent lower endpoint is the maximum of the left endpoint and the
pure-difference lower endpoint. -/
theorem coreGrowingShiftEndpointAggregatePrefixLower_eq_max_difference
    (j n m : ℕ) :
    coreGrowingShiftEndpointAggregatePrefixLower j n m =
      max n
        (coreGrowingShiftEndpointDifferencePrefixLower j (m - n)) := by
  unfold coreGrowingShiftEndpointAggregatePrefixLower
    coreGrowingShiftEndpointDifferencePrefixLower
  omega

/-- The parent upper endpoint depends only on the endpoint difference. -/
theorem coreGrowingShiftEndpointAggregatePrefixUpper_eq_difference
    (j n m : ℕ) :
    coreGrowingShiftEndpointAggregatePrefixUpper j n m =
      coreGrowingShiftEndpointDifferencePrefixUpper j (m - n) := by
  rfl

/-- The exact active-prefix interval is the retained part of the
pure-difference interval. -/
theorem coreGrowingShiftEndpointExplicitPrefixSet_eq_differenceRetained
    (j n m : ℕ) :
    coreGrowingShiftEndpointExplicitPrefixSet j n m =
      coreGrowingShiftEndpointDifferenceRetainedPrefixSet j n (m - n) := by
  ext N
  simp only [coreGrowingShiftEndpointExplicitPrefixSet,
    coreGrowingShiftEndpointDifferenceRetainedPrefixSet,
    Finset.mem_Ico,
    coreGrowingShiftEndpointAggregatePrefixLower_eq_max_difference,
    coreGrowingShiftEndpointAggregatePrefixUpper_eq_difference]

/-- The bulk interval is exactly the disjoint union of the removed left clip
and the retained interval. -/
theorem coreGrowingShiftEndpointDifferenceBulkPrefixSet_eq_clip_union_retained
    (j n h : ℕ) :
    coreGrowingShiftEndpointDifferenceBulkPrefixSet j h =
      coreGrowingShiftEndpointDifferenceLeftClipPrefixSet j n h ∪
        coreGrowingShiftEndpointDifferenceRetainedPrefixSet j n h := by
  ext N
  simp only [coreGrowingShiftEndpointDifferenceBulkPrefixSet,
    coreGrowingShiftEndpointDifferenceLeftClipPrefixSet,
    coreGrowingShiftEndpointDifferenceRetainedPrefixSet,
    Finset.mem_Ico, Finset.mem_union]
  omega

/-- The removed and retained prefix intervals are disjoint. -/
theorem coreGrowingShiftEndpointDifferenceLeftClip_disjoint_retained
    (j n h : ℕ) :
    Disjoint
      (coreGrowingShiftEndpointDifferenceLeftClipPrefixSet j n h)
      (coreGrowingShiftEndpointDifferenceRetainedPrefixSet j n h) := by
  refine Finset.disjoint_left.mpr ?_
  intro N hclip hretain
  simp only [coreGrowingShiftEndpointDifferenceLeftClipPrefixSet,
    coreGrowingShiftEndpointDifferenceRetainedPrefixSet,
    Finset.mem_Ico] at hclip hretain
  omega

/-- One prefix coefficient written only in terms of the endpoint difference. -/
def coreGrowingShiftEndpointDifferencePrefixKernel
    (j N h : ℕ) : ℝ :=
  coreGrowingShiftEndpointReciprocalDrop
    (max (coreGrowingShiftEndpointAggregateAnchorDenominator j)
      (N + coreGrowingShiftEndpointAggregateEffectiveShift j h))

/-- The inherited endpoint coefficient depends on endpoints only through their
difference once the prefix is fixed. -/
theorem coreGrowingShiftSignedEndpointKernel_eq_differencePrefixKernel
    (j N n m : ℕ) :
    coreGrowingShiftSignedEndpointKernel j N n m =
      coreGrowingShiftEndpointDifferencePrefixKernel j N (m - n) := by
  simpa [coreGrowingShiftEndpointDifferencePrefixKernel] using
    coreGrowingShiftSignedEndpointKernel_eq_normalizedDrop j N n m

/-- Difference-only bulk coefficient before left-endpoint clipping. -/
def coreGrowingShiftEndpointDifferenceBulkKernel
    (j h : ℕ) : ℝ :=
  ∑ N ∈ coreGrowingShiftEndpointDifferenceBulkPrefixSet j h,
    coreGrowingShiftEndpointDifferencePrefixKernel j N h

/-- Exact coefficient removed by clipping at the left endpoint. -/
def coreGrowingShiftEndpointDifferenceLeftClipCorrection
    (j n h : ℕ) : ℝ :=
  ∑ N ∈ coreGrowingShiftEndpointDifferenceLeftClipPrefixSet j n h,
    coreGrowingShiftEndpointDifferencePrefixKernel j N h

/-- The parent aggregate coefficient is the difference-only bulk minus the
exact left-endpoint clipping correction. -/
theorem coreGrowingShiftEndpointAggregateKernel_eq_differenceBulk_sub_leftClip
    {j n m : ℕ}
    (hn : 1 ≤ n)
    (hnm : n < m)
    (hmY : m < 2 ^ (j + 1)) :
    coreGrowingShiftEndpointAggregateKernel j n m =
      coreGrowingShiftEndpointDifferenceBulkKernel j (m - n) -
        coreGrowingShiftEndpointDifferenceLeftClipCorrection
          j n (m - n) := by
  rw [coreGrowingShiftEndpointAggregateKernel_eq_explicitInterval hn hnm hmY,
    coreGrowingShiftEndpointExplicitPrefixSet_eq_differenceRetained]
  have hbulk :
      coreGrowingShiftEndpointDifferenceBulkKernel j (m - n) =
        coreGrowingShiftEndpointDifferenceLeftClipCorrection j n (m - n) +
          ∑ N ∈
              coreGrowingShiftEndpointDifferenceRetainedPrefixSet
                j n (m - n),
            coreGrowingShiftEndpointDifferencePrefixKernel j N (m - n) := by
    unfold coreGrowingShiftEndpointDifferenceBulkKernel
      coreGrowingShiftEndpointDifferenceLeftClipCorrection
    rw [coreGrowingShiftEndpointDifferenceBulkPrefixSet_eq_clip_union_retained,
      Finset.sum_union
        (coreGrowingShiftEndpointDifferenceLeftClip_disjoint_retained
          j n (m - n))]
  calc
    (∑ N ∈
        coreGrowingShiftEndpointDifferenceRetainedPrefixSet j n (m - n),
      coreGrowingShiftSignedEndpointKernel j N n m) =
        ∑ N ∈
            coreGrowingShiftEndpointDifferenceRetainedPrefixSet j n (m - n),
          coreGrowingShiftEndpointDifferencePrefixKernel j N (m - n) := by
      apply Finset.sum_congr rfl
      intro N _hN
      exact coreGrowingShiftSignedEndpointKernel_eq_differencePrefixKernel
        j N n m
    _ = coreGrowingShiftEndpointDifferenceBulkKernel j (m - n) -
        coreGrowingShiftEndpointDifferenceLeftClipCorrection
          j n (m - n) := by
      linarith

/-- Closed parent boundary coefficient in bulk-minus-clip form. -/
theorem coreGrowingShiftEndpointAggregateBoundaryKernel_eq_differenceBulk_sub_leftClip
    {j n m : ℕ}
    (hn : 1 ≤ n)
    (hnm : n < m)
    (hmY : m < 2 ^ (j + 1)) :
    coreGrowingShiftEndpointAggregateBoundaryKernel j n m =
      coreGrowingShiftEndpointDifferenceBulkKernel j (m - n) -
        coreGrowingShiftEndpointDifferenceLeftClipCorrection
          j n (m - n) := by
  rw [← coreGrowingShiftEndpointAggregateKernel_eq_boundary hn hnm hmY]
  exact coreGrowingShiftEndpointAggregateKernel_eq_differenceBulk_sub_leftClip
    hn hnm hmY

/-- Anchor portion of a generic difference-prefix interval. -/
def coreGrowingShiftEndpointDifferenceIntervalAnchorSet
    (j h L U : ℕ) : Finset ℕ :=
  Finset.Ico L
    (min U (coreGrowingShiftEndpointAggregateTailStart j h))

/-- First affine-tail prefix of a generic interval. -/
def coreGrowingShiftEndpointDifferenceIntervalTailLower
    (j h L : ℕ) : ℕ :=
  max L (coreGrowingShiftEndpointAggregateTailStart j h)

/-- Affine-tail portion of a generic difference-prefix interval. -/
def coreGrowingShiftEndpointDifferenceIntervalTailSet
    (j h L U : ℕ) : Finset ℕ :=
  Finset.Ico
    (coreGrowingShiftEndpointDifferenceIntervalTailLower j h L) U

/-- A generic interval is the disjoint union of its anchor and affine tail. -/
theorem coreGrowingShiftEndpointDifferenceInterval_eq_anchor_union_tail
    (j h L U : ℕ) :
    Finset.Ico L U =
      coreGrowingShiftEndpointDifferenceIntervalAnchorSet j h L U ∪
        coreGrowingShiftEndpointDifferenceIntervalTailSet j h L U := by
  ext N
  simp only [coreGrowingShiftEndpointDifferenceIntervalAnchorSet,
    coreGrowingShiftEndpointDifferenceIntervalTailSet,
    coreGrowingShiftEndpointDifferenceIntervalTailLower,
    Finset.mem_Ico, Finset.mem_union]
  omega

/-- Generic anchor and tail intervals are disjoint. -/
theorem coreGrowingShiftEndpointDifferenceIntervalAnchor_disjoint_tail
    (j h L U : ℕ) :
    Disjoint
      (coreGrowingShiftEndpointDifferenceIntervalAnchorSet j h L U)
      (coreGrowingShiftEndpointDifferenceIntervalTailSet j h L U) := by
  refine Finset.disjoint_left.mpr ?_
  intro N hanchor htail
  simp only [coreGrowingShiftEndpointDifferenceIntervalAnchorSet,
    coreGrowingShiftEndpointDifferenceIntervalTailSet,
    coreGrowingShiftEndpointDifferenceIntervalTailLower,
    Finset.mem_Ico] at hanchor htail
  omega

/-- On a generic anchor interval the difference-prefix coefficient is the
constant low-anchor reciprocal drop. -/
theorem coreGrowingShiftEndpointDifferencePrefixKernel_eq_anchor
    {j h L U N : ℕ}
    (hN : N ∈
      coreGrowingShiftEndpointDifferenceIntervalAnchorSet j h L U) :
    coreGrowingShiftEndpointDifferencePrefixKernel j N h =
      coreGrowingShiftEndpointReciprocalDrop
        (coreGrowingShiftEndpointAggregateAnchorDenominator j) := by
  have hmem := hN
  simp only [coreGrowingShiftEndpointDifferenceIntervalAnchorSet,
    Finset.mem_Ico] at hmem
  unfold coreGrowingShiftEndpointDifferencePrefixKernel
    coreGrowingShiftEndpointAggregateTailStart
    coreGrowingShiftEndpointAggregateAnchorDenominator at hmem ⊢
  rw [max_eq_left]
  omega

/-- On a generic tail interval the coefficient is the literal affine
reciprocal drop. -/
theorem coreGrowingShiftEndpointDifferencePrefixKernel_eq_tail
    {j h L U N : ℕ}
    (hN : N ∈
      coreGrowingShiftEndpointDifferenceIntervalTailSet j h L U) :
    coreGrowingShiftEndpointDifferencePrefixKernel j N h =
      coreGrowingShiftEndpointReciprocalDrop
        (N + coreGrowingShiftEndpointAggregateEffectiveShift j h) := by
  have hmem := hN
  simp only [coreGrowingShiftEndpointDifferenceIntervalTailSet,
    coreGrowingShiftEndpointDifferenceIntervalTailLower,
    Finset.mem_Ico] at hmem
  unfold coreGrowingShiftEndpointDifferencePrefixKernel
    coreGrowingShiftEndpointAggregateTailStart
    coreGrowingShiftEndpointAggregateAnchorDenominator at hmem ⊢
  rw [max_eq_right]
  omega

/-- Exact generic anchor multiplicity. -/
def coreGrowingShiftEndpointDifferenceIntervalAnchorMultiplicity
    (j h L U : ℕ) : ℕ :=
  (coreGrowingShiftEndpointDifferenceIntervalAnchorSet j h L U).card

/-- Telescoped generic affine-tail boundary. -/
def coreGrowingShiftEndpointDifferenceIntervalTailBoundary
    (j h L U : ℕ) : ℝ :=
  let A := coreGrowingShiftEndpointDifferenceIntervalTailLower j h L
  let q := coreGrowingShiftEndpointAggregateEffectiveShift j h
  if A ≤ U then
    (((A + q : ℕ) : ℝ))⁻¹ - (((U + q : ℕ) : ℝ))⁻¹
  else 0

/-- Closed evaluation of a generic difference-prefix interval. -/
def coreGrowingShiftEndpointDifferenceIntervalBoundaryKernel
    (j h L U : ℕ) : ℝ :=
  (coreGrowingShiftEndpointDifferenceIntervalAnchorMultiplicity
      j h L U : ℝ) *
      coreGrowingShiftEndpointReciprocalDrop
        (coreGrowingShiftEndpointAggregateAnchorDenominator j) +
    coreGrowingShiftEndpointDifferenceIntervalTailBoundary j h L U

/-- Generic anchor interval sum. -/
theorem coreGrowingShiftEndpointDifferenceIntervalAnchorSum
    (j h L U : ℕ) :
    (∑ N ∈ coreGrowingShiftEndpointDifferenceIntervalAnchorSet j h L U,
      coreGrowingShiftEndpointDifferencePrefixKernel j N h) =
      (coreGrowingShiftEndpointDifferenceIntervalAnchorMultiplicity
          j h L U : ℝ) *
        coreGrowingShiftEndpointReciprocalDrop
          (coreGrowingShiftEndpointAggregateAnchorDenominator j) := by
  calc
    (∑ N ∈ coreGrowingShiftEndpointDifferenceIntervalAnchorSet j h L U,
      coreGrowingShiftEndpointDifferencePrefixKernel j N h) =
        ∑ _N ∈
            coreGrowingShiftEndpointDifferenceIntervalAnchorSet j h L U,
          coreGrowingShiftEndpointReciprocalDrop
            (coreGrowingShiftEndpointAggregateAnchorDenominator j) := by
      apply Finset.sum_congr rfl
      intro N hN
      exact coreGrowingShiftEndpointDifferencePrefixKernel_eq_anchor hN
    _ = (coreGrowingShiftEndpointDifferenceIntervalAnchorMultiplicity
          j h L U : ℝ) *
        coreGrowingShiftEndpointReciprocalDrop
          (coreGrowingShiftEndpointAggregateAnchorDenominator j) := by
      simp [coreGrowingShiftEndpointDifferenceIntervalAnchorMultiplicity,
        nsmul_eq_mul]

/-- Generic affine-tail sum. -/
theorem coreGrowingShiftEndpointDifferenceIntervalTailSum
    (j h L U : ℕ) :
    (∑ N ∈ coreGrowingShiftEndpointDifferenceIntervalTailSet j h L U,
      coreGrowingShiftEndpointDifferencePrefixKernel j N h) =
      coreGrowingShiftEndpointDifferenceIntervalTailBoundary j h L U := by
  let A := coreGrowingShiftEndpointDifferenceIntervalTailLower j h L
  let q := coreGrowingShiftEndpointAggregateEffectiveShift j h
  by_cases hAU : A ≤ U
  · unfold coreGrowingShiftEndpointDifferenceIntervalTailBoundary
    rw [if_pos hAU]
    change
      (∑ N ∈ Finset.Ico A U,
        coreGrowingShiftEndpointDifferencePrefixKernel j N h) =
        (((A + q : ℕ) : ℝ))⁻¹ - (((U + q : ℕ) : ℝ))⁻¹
    calc
      (∑ N ∈ Finset.Ico A U,
        coreGrowingShiftEndpointDifferencePrefixKernel j N h) =
          ∑ N ∈ Finset.Ico A U,
            coreGrowingShiftEndpointReciprocalDrop (N + q) := by
        apply Finset.sum_congr rfl
        intro N hN
        apply coreGrowingShiftEndpointDifferencePrefixKernel_eq_tail
        simpa [coreGrowingShiftEndpointDifferenceIntervalTailSet, A] using hN
      _ = (((A + q : ℕ) : ℝ))⁻¹ - (((U + q : ℕ) : ℝ))⁻¹ :=
        finite_reciprocalDrop_Ico q A U hAU
  · have hnotlt : ¬ A < U := by omega
    have hempty : Finset.Ico A U = ∅ :=
      Finset.Ico_eq_empty_iff.mpr hnotlt
    unfold coreGrowingShiftEndpointDifferenceIntervalTailBoundary
    rw [if_neg hAU]
    change
      (∑ N ∈ Finset.Ico A U,
        coreGrowingShiftEndpointDifferencePrefixKernel j N h) = 0
    rw [hempty]
    simp

/-- Exact closed evaluation of an arbitrary difference-prefix interval. -/
theorem coreGrowingShiftEndpointDifferenceIntervalSum_eq_boundary
    (j h L U : ℕ) :
    (∑ N ∈ Finset.Ico L U,
      coreGrowingShiftEndpointDifferencePrefixKernel j N h) =
      coreGrowingShiftEndpointDifferenceIntervalBoundaryKernel j h L U := by
  rw [coreGrowingShiftEndpointDifferenceInterval_eq_anchor_union_tail,
    Finset.sum_union
      (coreGrowingShiftEndpointDifferenceIntervalAnchor_disjoint_tail
        j h L U),
    coreGrowingShiftEndpointDifferenceIntervalAnchorSum,
    coreGrowingShiftEndpointDifferenceIntervalTailSum]
  rfl

/-- Closed difference-only bulk coefficient. -/
def coreGrowingShiftEndpointDifferenceBulkBoundaryKernel
    (j h : ℕ) : ℝ :=
  coreGrowingShiftEndpointDifferenceIntervalBoundaryKernel j h
    (coreGrowingShiftEndpointDifferencePrefixLower j h)
    (coreGrowingShiftEndpointDifferencePrefixUpper j h)

/-- Closed left-endpoint clipping correction. -/
def coreGrowingShiftEndpointDifferenceLeftClipBoundaryCorrection
    (j n h : ℕ) : ℝ :=
  coreGrowingShiftEndpointDifferenceIntervalBoundaryKernel j h
    (coreGrowingShiftEndpointDifferencePrefixLower j h)
    (min n (coreGrowingShiftEndpointDifferencePrefixUpper j h))

/-- The difference-only bulk sum has the closed anchor-and-boundary formula. -/
theorem coreGrowingShiftEndpointDifferenceBulkKernel_eq_boundary
    (j h : ℕ) :
    coreGrowingShiftEndpointDifferenceBulkKernel j h =
      coreGrowingShiftEndpointDifferenceBulkBoundaryKernel j h := by
  unfold coreGrowingShiftEndpointDifferenceBulkKernel
    coreGrowingShiftEndpointDifferenceBulkPrefixSet
    coreGrowingShiftEndpointDifferenceBulkBoundaryKernel
  exact coreGrowingShiftEndpointDifferenceIntervalSum_eq_boundary j h
    (coreGrowingShiftEndpointDifferencePrefixLower j h)
    (coreGrowingShiftEndpointDifferencePrefixUpper j h)

/-- The left-clip sum has the corresponding closed formula. -/
theorem coreGrowingShiftEndpointDifferenceLeftClipCorrection_eq_boundary
    (j n h : ℕ) :
    coreGrowingShiftEndpointDifferenceLeftClipCorrection j n h =
      coreGrowingShiftEndpointDifferenceLeftClipBoundaryCorrection j n h := by
  unfold coreGrowingShiftEndpointDifferenceLeftClipCorrection
    coreGrowingShiftEndpointDifferenceLeftClipPrefixSet
    coreGrowingShiftEndpointDifferenceLeftClipBoundaryCorrection
  exact coreGrowingShiftEndpointDifferenceIntervalSum_eq_boundary j h
    (coreGrowingShiftEndpointDifferencePrefixLower j h)
    (min n (coreGrowingShiftEndpointDifferencePrefixUpper j h))

/-- Fully closed bulk-minus-left-clip evaluation of the parent coefficient. -/
theorem coreGrowingShiftEndpointAggregateBoundaryKernel_eq_closedDifferenceSplit
    {j n m : ℕ}
    (hn : 1 ≤ n)
    (hnm : n < m)
    (hmY : m < 2 ^ (j + 1)) :
    coreGrowingShiftEndpointAggregateBoundaryKernel j n m =
      coreGrowingShiftEndpointDifferenceBulkBoundaryKernel j (m - n) -
        coreGrowingShiftEndpointDifferenceLeftClipBoundaryCorrection
          j n (m - n) := by
  rw [coreGrowingShiftEndpointAggregateBoundaryKernel_eq_differenceBulk_sub_leftClip
      hn hnm hmY,
    coreGrowingShiftEndpointDifferenceBulkKernel_eq_boundary,
    coreGrowingShiftEndpointDifferenceLeftClipCorrection_eq_boundary]

/-- One-variable bulk symbol; the zero difference is explicitly removed. -/
def coreGrowingShiftEndpointDifferenceBulkSymbol
    (j h : ℕ) : ℝ :=
  if h = 0 then 0
  else coreGrowingShiftEndpointDifferenceBulkBoundaryKernel j h

/-- Simultaneous-translation-invariant cyclic extension of the difference-only
bulk coefficient. -/
def coreGrowingShiftEndpointCyclicDifferenceBulkKernel
    (j : ℕ)
    (x y : CoreGrowingShiftEndpointFourierIndex j) : ℂ :=
  (coreGrowingShiftEndpointDifferenceBulkSymbol j (y - x).val : ℂ)

/-- The cyclic bulk is invariant under simultaneous translation. -/
theorem coreGrowingShiftEndpointCyclicDifferenceBulkKernel_add
    (j : ℕ)
    (a x y : CoreGrowingShiftEndpointFourierIndex j) :
    coreGrowingShiftEndpointCyclicDifferenceBulkKernel j (x + a) (y + a) =
      coreGrowingShiftEndpointCyclicDifferenceBulkKernel j x y := by
  unfold coreGrowingShiftEndpointCyclicDifferenceBulkKernel
  have hdiff : (y + a) - (x + a) = y - x := by ring
  rw [hdiff]

/-- On the ordinary strict upper triangle, the cyclic difference representative
is the literal natural difference. -/
theorem coreGrowingShiftEndpointCyclicDifference_val_eq_natSub
    {j : ℕ}
    {x y : CoreGrowingShiftEndpointFourierIndex j}
    (hxy : x.val < y.val) :
    (y - x).val = y.val - x.val := by
  have hcast :
      y - x =
        ((y.val - x.val : ℕ) :
          CoreGrowingShiftEndpointFourierIndex j) := by
    calc
      y - x =
          (y.val : CoreGrowingShiftEndpointFourierIndex j) -
            (x.val : CoreGrowingShiftEndpointFourierIndex j) := by
              rw [ZMod.natCast_zmod_val y, ZMod.natCast_zmod_val x]
      _ = ((y.val - x.val : ℕ) :
          CoreGrowingShiftEndpointFourierIndex j) := by
            rw [Nat.cast_sub hxy.le]
  have hdiffLt :
      y.val - x.val < coreGrowingShiftEndpointFourierModulus j :=
    lt_of_le_of_lt (Nat.sub_le _ _) (ZMod.val_lt y)
  have hval := congrArg ZMod.val hcast
  simpa [ZMod.val_cast_of_lt hdiffLt] using hval

/-- The cyclic bulk agrees with the closed ordinary difference coefficient on
strict support. -/
theorem coreGrowingShiftEndpointCyclicDifferenceBulkKernel_eq_ordinary
    {j : ℕ}
    {x y : CoreGrowingShiftEndpointFourierIndex j}
    (hxy : x.val < y.val) :
    coreGrowingShiftEndpointCyclicDifferenceBulkKernel j x y =
      (coreGrowingShiftEndpointDifferenceBulkBoundaryKernel
        j (y.val - x.val) : ℂ) := by
  unfold coreGrowingShiftEndpointCyclicDifferenceBulkKernel
    coreGrowingShiftEndpointDifferenceBulkSymbol
  rw [coreGrowingShiftEndpointCyclicDifference_val_eq_natSub hxy]
  rw [if_neg (Nat.ne_of_gt (Nat.sub_pos_of_lt hxy))]

/-- Removes the cyclic bulk away from the exact positive strict endpoint
support. -/
def coreGrowingShiftEndpointDifferenceSupportCorrectionKernel
    (j : ℕ)
    (x y : CoreGrowingShiftEndpointFourierIndex j) : ℂ :=
  if 1 ≤ x.val ∧ x.val < y.val then 0
  else coreGrowingShiftEndpointCyclicDifferenceBulkKernel j x y

/-- Exact left-endpoint clipping correction on strict support. -/
def coreGrowingShiftEndpointDifferenceLeftClipCorrectionKernel
    (j : ℕ)
    (x y : CoreGrowingShiftEndpointFourierIndex j) : ℂ :=
  if 1 ≤ x.val ∧ x.val < y.val then
    (coreGrowingShiftEndpointDifferenceLeftClipBoundaryCorrection
      j x.val (y.val - x.val) : ℂ)
  else 0

/-- Pointwise decomposition of the closed zero-padded endpoint kernel into one
cyclic difference bulk and two exact boundary corrections. -/
theorem coreGrowingShiftEndpointBoundaryKernelZeroPad_eq_differenceDecomposition
    (j : ℕ)
    (x y : CoreGrowingShiftEndpointFourierIndex j) :
    coreGrowingShiftEndpointBoundaryKernelZeroPad j x y =
      coreGrowingShiftEndpointCyclicDifferenceBulkKernel j x y -
        coreGrowingShiftEndpointDifferenceSupportCorrectionKernel j x y -
          coreGrowingShiftEndpointDifferenceLeftClipCorrectionKernel j x y := by
  by_cases hsupport : 1 ≤ x.val ∧ x.val < y.val
  · simp only [coreGrowingShiftEndpointBoundaryKernelZeroPad,
      coreGrowingShiftEndpointDifferenceSupportCorrectionKernel,
      coreGrowingShiftEndpointDifferenceLeftClipCorrectionKernel,
      if_pos hsupport, sub_zero]
    rw [coreGrowingShiftEndpointCyclicDifferenceBulkKernel_eq_ordinary
      hsupport.2]
    rw [coreGrowingShiftEndpointAggregateBoundaryKernel_eq_closedDifferenceSplit
      hsupport.1 hsupport.2 (ZMod.val_lt y)]
    push_cast
    ring
  · simp [coreGrowingShiftEndpointBoundaryKernelZeroPad,
      coreGrowingShiftEndpointDifferenceSupportCorrectionKernel,
      coreGrowingShiftEndpointDifferenceLeftClipCorrectionKernel,
      hsupport]

/-- Two-dimensional DFT of the cyclic difference bulk. -/
def coreGrowingShiftEndpointCyclicDifferenceBulkKernelDFT2
    (j : ℕ)
    (r s : CoreGrowingShiftEndpointFourierIndex j) : ℂ :=
  finiteZModKernelDFT2
    (coreGrowingShiftEndpointCyclicDifferenceBulkKernel j) r s

/-- Two-dimensional DFT of the strict-support correction. -/
def coreGrowingShiftEndpointDifferenceSupportCorrectionKernelDFT2
    (j : ℕ)
    (r s : CoreGrowingShiftEndpointFourierIndex j) : ℂ :=
  finiteZModKernelDFT2
    (coreGrowingShiftEndpointDifferenceSupportCorrectionKernel j) r s

/-- Two-dimensional DFT of the left-clipping correction. -/
def coreGrowingShiftEndpointDifferenceLeftClipCorrectionKernelDFT2
    (j : ℕ)
    (r s : CoreGrowingShiftEndpointFourierIndex j) : ℂ :=
  finiteZModKernelDFT2
    (coreGrowingShiftEndpointDifferenceLeftClipCorrectionKernel j) r s

/-- Complete signed transform of the bulk-minus-corrections kernel. -/
def coreGrowingShiftEndpointDifferenceDecompositionKernelDFT2
    (j : ℕ)
    (r s : CoreGrowingShiftEndpointFourierIndex j) : ℂ :=
  coreGrowingShiftEndpointCyclicDifferenceBulkKernelDFT2 j r s -
    coreGrowingShiftEndpointDifferenceSupportCorrectionKernelDFT2 j r s -
      coreGrowingShiftEndpointDifferenceLeftClipCorrectionKernelDFT2 j r s

/-- The parent boundary transform is exactly the signed three-term transform. -/
theorem coreGrowingShiftEndpointBoundaryKernelDFT2_eq_differenceDecomposition
    (j : ℕ)
    (r s : CoreGrowingShiftEndpointFourierIndex j) :
    coreGrowingShiftEndpointBoundaryKernelDFT2 j r s =
      coreGrowingShiftEndpointDifferenceDecompositionKernelDFT2 j r s := by
  unfold coreGrowingShiftEndpointBoundaryKernelDFT2
    coreGrowingShiftEndpointCyclicDifferenceBulkKernelDFT2
    coreGrowingShiftEndpointDifferenceSupportCorrectionKernelDFT2
    coreGrowingShiftEndpointDifferenceLeftClipCorrectionKernelDFT2
    coreGrowingShiftEndpointDifferenceDecompositionKernelDFT2
    finiteZModKernelDFT2
  have hfun :
      coreGrowingShiftEndpointBoundaryKernelZeroPad j =
        fun x y =>
          coreGrowingShiftEndpointCyclicDifferenceBulkKernel j x y -
            coreGrowingShiftEndpointDifferenceSupportCorrectionKernel j x y -
              coreGrowingShiftEndpointDifferenceLeftClipCorrectionKernel j x y := by
    funext x y
    exact coreGrowingShiftEndpointBoundaryKernelZeroPad_eq_differenceDecomposition
      j x y
  rw [hfun]
  simp only [map_sub, Pi.sub_apply]
  rfl

/-- Complex frequency packet retaining the full signed bulk/correction sum. -/
def coreGrowingShiftSignedEndpointDifferenceDecompositionFourierPacketComplex
    (j : ℕ) : ℂ :=
  let Y : ℕ := coreGrowingShiftEndpointFourierModulus j
  (Y : ℂ)⁻¹ * (Y : ℂ)⁻¹ *
    ∑ r : CoreGrowingShiftEndpointFourierIndex j,
      ∑ s : CoreGrowingShiftEndpointFourierIndex j,
        ZMod.dft (coreGrowingShiftEndpointMobiusZeroPad j) (-r) *
          ZMod.dft (coreGrowingShiftEndpointMobiusZeroPad j) (-s) *
            coreGrowingShiftEndpointDifferenceDecompositionKernelDFT2 j r s

/-- The signed difference decomposition is exactly the parent boundary packet. -/
theorem coreGrowingShiftSignedEndpointDifferenceDecompositionFourierPacketComplex_eq_boundary
    (j : ℕ) :
    coreGrowingShiftSignedEndpointDifferenceDecompositionFourierPacketComplex j =
      coreGrowingShiftSignedEndpointBoundaryFourierPacketComplex j := by
  unfold coreGrowingShiftSignedEndpointDifferenceDecompositionFourierPacketComplex
    coreGrowingShiftSignedEndpointBoundaryFourierPacketComplex
  apply congrArg
  apply Finset.sum_congr rfl
  intro r _hr
  apply Finset.sum_congr rfl
  intro s _hs
  rw [← coreGrowingShiftEndpointBoundaryKernelDFT2_eq_differenceDecomposition]

/-- Real signed packet for the complete difference-bulk/correction frequency
sum. -/
def coreGrowingShiftSignedEndpointDifferenceDecompositionFourierPacket
    (j : ℕ) : ℝ :=
  (coreGrowingShiftSignedEndpointDifferenceDecompositionFourierPacketComplex j).re

/-- Exact equality with the parent real boundary-kernel Fourier packet. -/
theorem coreGrowingShiftSignedEndpointDifferenceDecompositionFourierPacket_eq_boundary
    (j : ℕ) :
    coreGrowingShiftSignedEndpointDifferenceDecompositionFourierPacket j =
      coreGrowingShiftSignedEndpointBoundaryFourierPacket j := by
  unfold coreGrowingShiftSignedEndpointDifferenceDecompositionFourierPacket
    coreGrowingShiftSignedEndpointBoundaryFourierPacket
  rw [coreGrowingShiftSignedEndpointDifferenceDecompositionFourierPacketComplex_eq_boundary]

/-- Exact RH-facing return through the cyclic difference bulk and its two
boundary corrections. -/
theorem coreGrowingShiftFirstDifferencePacket_eq_two_mul_endpointDifferenceDecompositionFourier
    (j : ℕ) :
    coreGrowingShiftFirstDifferencePacket j =
      2 * coreGrowingShiftSignedEndpointDifferenceDecompositionFourierPacket j := by
  rw [coreGrowingShiftFirstDifferencePacket_eq_two_mul_endpointBoundaryFourier,
    ← coreGrowingShiftSignedEndpointDifferenceDecompositionFourierPacket_eq_boundary]

/-- Source-facing condition on the complete signed difference decomposition. -/
def SubpolynomialCoreGrowingShiftSignedEndpointDifferenceDecompositionFourierPacket :
    Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      2 * coreGrowingShiftSignedEndpointDifferenceDecompositionFourierPacket j ≤
        C * (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- Exact equivalence with the parent boundary-frequency source. -/
theorem subpolynomialCoreGrowingShiftSignedEndpointDifferenceDecompositionFourierPacket_iff_boundary :
    SubpolynomialCoreGrowingShiftSignedEndpointDifferenceDecompositionFourierPacket ↔
      SubpolynomialCoreGrowingShiftSignedEndpointBoundaryFourierPacket := by
  constructor
  · intro hSplit δ hδ
    obtain ⟨C, hC, hbound⟩ := hSplit δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [← coreGrowingShiftSignedEndpointDifferenceDecompositionFourierPacket_eq_boundary]
    exact hbound j
  · intro hBoundary δ hδ
    obtain ⟨C, hC, hbound⟩ := hBoundary δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [coreGrowingShiftSignedEndpointDifferenceDecompositionFourierPacket_eq_boundary]
    exact hbound j

/-- Conditional RH endpoint stated on the complete signed bulk/correction
frequency decomposition. -/
theorem riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointDifferenceDecompositionFourierPacket
    (hSplit :
      SubpolynomialCoreGrowingShiftSignedEndpointDifferenceDecompositionFourierPacket) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointBoundaryFourierPacket
    (subpolynomialCoreGrowingShiftSignedEndpointDifferenceDecompositionFourierPacket_iff_boundary.mp
      hSplit)

/-- Source profile for a theorem stated on the complete signed cyclic-bulk and
boundary-correction frequency sum. -/
structure SignedEndpointDifferenceDecompositionFourierSource where
  sourceStatement : Prop
  exactBulkClipPartition : Prop
  exactAnchorTailEvaluation : Prop
  ordinaryToCyclicDifference : Prop
  bulkTranslationInvariance : Prop
  strictSupportCorrection : Prop
  leftEndpointClipCorrection : Prop
  dftSignNormalization : Prop
  completeSignedThreeTermCancellation : Prop
  allScaleUniformity : Prop
  finiteSmallScaleControl : Prop

/-- Proof-producing boundary for a future estimate on the complete signed
three-term frequency decomposition. -/
structure ToCoreGrowingShiftSignedEndpointDifferenceDecompositionFourierPacket
    (d : SignedEndpointDifferenceDecompositionFourierSource) : Type where
  toDifferenceDecomposition :
    d.sourceStatement →
      d.exactBulkClipPartition →
      d.exactAnchorTailEvaluation →
      d.ordinaryToCyclicDifference →
      d.bulkTranslationInvariance →
      d.strictSupportCorrection →
      d.leftEndpointClipCorrection →
      d.dftSignNormalization →
      d.completeSignedThreeTermCancellation →
      d.allScaleUniformity →
      d.finiteSmallScaleControl →
      SubpolynomialCoreGrowingShiftSignedEndpointDifferenceDecompositionFourierPacket

/-- Generic conditional endpoint through an explicitly constructed complete
signed difference-decomposition adapter. -/
theorem riemannHypothesis_of_signedEndpointDifferenceDecompositionAdapter
    (d : SignedEndpointDifferenceDecompositionFourierSource)
    (bridge :
      ToCoreGrowingShiftSignedEndpointDifferenceDecompositionFourierPacket d)
    (hsource : d.sourceStatement)
    (hpartition : d.exactBulkClipPartition)
    (hevaluation : d.exactAnchorTailEvaluation)
    (hcyclic : d.ordinaryToCyclicDifference)
    (hinvariant : d.bulkTranslationInvariance)
    (hsupport : d.strictSupportCorrection)
    (hclip : d.leftEndpointClipCorrection)
    (hsign : d.dftSignNormalization)
    (hcancellation : d.completeSignedThreeTermCancellation)
    (huniform : d.allScaleUniformity)
    (hsmall : d.finiteSmallScaleControl) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointDifferenceDecompositionFourierPacket
    (bridge.toDifferenceDecomposition hsource hpartition hevaluation hcyclic
      hinvariant hsupport hclip hsign hcancellation huniform hsmall)

/-- Hostile control: the cyclic bulk and the two boundary corrections may
cancel only after the complete signed sum. -/
theorem signedEndpointDifferenceDecompositionCancellation_hostileWitness :
    ((2 : ℝ) - 1 - 1) = 0 ∧
      |(2 : ℝ)| + |(-1 : ℝ)| + |(-1 : ℝ)| = 4 := by
  norm_num

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointAggregateBoundaryKernel_eq_closedDifferenceSplit
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointCyclicDifferenceBulkKernel_add
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointBoundaryKernelZeroPad_eq_differenceDecomposition
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointBoundaryKernelDFT2_eq_differenceDecomposition
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointDifferenceDecompositionFourierPacket
