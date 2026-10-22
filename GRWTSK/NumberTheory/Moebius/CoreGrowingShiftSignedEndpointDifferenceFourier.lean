/- 
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #876. Parent: draft PR #850 at
`5576c62aa169bf138564cf33fc5bba4f9aeb109e`.
-/
import GRWTSK.NumberTheory.Moebius.CoreGrowingShiftSignedEndpointBoundaryFourier

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Difference-only lower prefix cutoff. -/
def coreGrowingShiftEndpointDifferencePrefixLower
    (j h : ℕ) : ℕ :=
  max (logarithmicShiftThreshold j + 1) (2 ^ j - h)

/-- Difference-only exclusive upper prefix cutoff. -/
def coreGrowingShiftEndpointDifferencePrefixUpper
    (j h : ℕ) : ℕ :=
  min (2 ^ (j + 1) - logarithmicShiftThreshold j)
    (2 ^ (j + 1) - h)

/-- Full prefix interval available to one ordinary positive difference. -/
def coreGrowingShiftEndpointDifferencePrefixSet
    (j h : ℕ) : Finset ℕ :=
  Finset.Ico
    (coreGrowingShiftEndpointDifferencePrefixLower j h)
    (coreGrowingShiftEndpointDifferencePrefixUpper j h)

/-- Prefixes removed solely by the left-endpoint constraint `N ≥ n`. -/
def coreGrowingShiftEndpointClippedPrefixSet
    (j n h : ℕ) : Finset ℕ :=
  Finset.Ico
    (coreGrowingShiftEndpointDifferencePrefixLower j h)
    (min n (coreGrowingShiftEndpointDifferencePrefixUpper j h))

/-- The parent active-prefix lower bound is `max n D_j(h)`. -/
theorem coreGrowingShiftEndpointExplicitPrefixSet_eq_differenceClipped
    (j n m : ℕ) :
    coreGrowingShiftEndpointExplicitPrefixSet j n m =
      Finset.Ico
        (max n
          (coreGrowingShiftEndpointDifferencePrefixLower j (m - n)))
        (coreGrowingShiftEndpointDifferencePrefixUpper j (m - n)) := by
  ext N
  simp [coreGrowingShiftEndpointExplicitPrefixSet,
    coreGrowingShiftEndpointAggregatePrefixLower,
    coreGrowingShiftEndpointAggregatePrefixUpper,
    coreGrowingShiftEndpointDifferencePrefixLower,
    coreGrowingShiftEndpointDifferencePrefixUpper,
    max_le_iff, lt_min_iff, and_assoc, and_left_comm, and_comm]

/-- Generic anchor block for an arbitrary prefix interval. -/
def coreGrowingShiftEndpointIntervalAnchorPrefixSet
    (j h L U : ℕ) : Finset ℕ :=
  Finset.Ico L
    (min U (coreGrowingShiftEndpointAggregateTailStart j h))

/-- Generic affine-tail lower endpoint. -/
def coreGrowingShiftEndpointIntervalTailLower
    (j h L : ℕ) : ℕ :=
  max L (coreGrowingShiftEndpointAggregateTailStart j h)

/-- Generic affine-tail block for an arbitrary prefix interval. -/
def coreGrowingShiftEndpointIntervalTailPrefixSet
    (j h L U : ℕ) : Finset ℕ :=
  Finset.Ico (coreGrowingShiftEndpointIntervalTailLower j h L) U

/-- Generic constant-anchor multiplicity. -/
def coreGrowingShiftEndpointIntervalAnchorMultiplicity
    (j h L U : ℕ) : ℕ :=
  (coreGrowingShiftEndpointIntervalAnchorPrefixSet j h L U).card

/-- Generic telescoped affine-tail boundary. -/
def coreGrowingShiftEndpointIntervalTailBoundary
    (j h L U : ℕ) : ℝ :=
  let A := coreGrowingShiftEndpointIntervalTailLower j h L
  let q := coreGrowingShiftEndpointAggregateEffectiveShift j h
  if A ≤ U then
    (((A + q : ℕ) : ℝ))⁻¹ -
      (((U + q : ℕ) : ℝ))⁻¹
  else 0

/-- Closed coefficient for the inherited reciprocal-drop weight on an
arbitrary ordinary prefix interval. -/
def coreGrowingShiftEndpointIntervalClosedKernel
    (j h L U : ℕ) : ℝ :=
  (coreGrowingShiftEndpointIntervalAnchorMultiplicity j h L U : ℝ) *
      coreGrowingShiftEndpointReciprocalDrop
        (coreGrowingShiftEndpointAggregateAnchorDenominator j) +
    coreGrowingShiftEndpointIntervalTailBoundary j h L U

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

/-- An arbitrary prefix interval is exactly its constant-anchor block plus its
affine-tail block. -/
theorem coreGrowingShiftEndpointInterval_eq_anchor_union_tail
    (j h L U : ℕ) :
    Finset.Ico L U =
      coreGrowingShiftEndpointIntervalAnchorPrefixSet j h L U ∪
        coreGrowingShiftEndpointIntervalTailPrefixSet j h L U := by
  ext N
  simp [coreGrowingShiftEndpointIntervalAnchorPrefixSet,
    coreGrowingShiftEndpointIntervalTailPrefixSet,
    coreGrowingShiftEndpointIntervalTailLower]
  omega

/-- The generic anchor and tail blocks are disjoint. -/
theorem coreGrowingShiftEndpointIntervalAnchor_disjoint_tail
    (j h L U : ℕ) :
    Disjoint
      (coreGrowingShiftEndpointIntervalAnchorPrefixSet j h L U)
      (coreGrowingShiftEndpointIntervalTailPrefixSet j h L U) := by
  refine Finset.disjoint_left.mpr ?_
  intro N hA hT
  simp [coreGrowingShiftEndpointIntervalAnchorPrefixSet,
    coreGrowingShiftEndpointIntervalTailPrefixSet,
    coreGrowingShiftEndpointIntervalTailLower] at hA hT
  omega

/-- On the generic anchor block, the normalized denominator is constant. -/
theorem coreGrowingShiftEndpointIntervalDenominator_eq_anchor
    {j h L U N : ℕ}
    (hN : N ∈ coreGrowingShiftEndpointIntervalAnchorPrefixSet j h L U) :
    max (coreGrowingShiftEndpointAggregateAnchorDenominator j)
        (N + coreGrowingShiftEndpointAggregateEffectiveShift j h) =
      coreGrowingShiftEndpointAggregateAnchorDenominator j := by
  have hmem := hN
  simp [coreGrowingShiftEndpointIntervalAnchorPrefixSet] at hmem
  unfold coreGrowingShiftEndpointAggregateTailStart
    coreGrowingShiftEndpointAggregateAnchorDenominator at hmem ⊢
  apply max_eq_left
  omega

/-- On the generic tail block, the normalized denominator is affine. -/
theorem coreGrowingShiftEndpointIntervalDenominator_eq_tail
    {j h L U N : ℕ}
    (hN : N ∈ coreGrowingShiftEndpointIntervalTailPrefixSet j h L U) :
    max (coreGrowingShiftEndpointAggregateAnchorDenominator j)
        (N + coreGrowingShiftEndpointAggregateEffectiveShift j h) =
      N + coreGrowingShiftEndpointAggregateEffectiveShift j h := by
  have hmem := hN
  simp [coreGrowingShiftEndpointIntervalTailPrefixSet,
    coreGrowingShiftEndpointIntervalTailLower] at hmem
  unfold coreGrowingShiftEndpointAggregateTailStart
    coreGrowingShiftEndpointAggregateAnchorDenominator at hmem ⊢
  apply max_eq_right
  omega

/-- The generic anchor sum is multiplicity times one constant drop. -/
theorem coreGrowingShiftEndpointIntervalAnchorSum
    (j h L U : ℕ) :
    (∑ N ∈ coreGrowingShiftEndpointIntervalAnchorPrefixSet j h L U,
      coreGrowingShiftSignedStaircaseWeight j N h) =
      (coreGrowingShiftEndpointIntervalAnchorMultiplicity j h L U : ℝ) *
        coreGrowingShiftEndpointReciprocalDrop
          (coreGrowingShiftEndpointAggregateAnchorDenominator j) := by
  calc
    (∑ N ∈ coreGrowingShiftEndpointIntervalAnchorPrefixSet j h L U,
      coreGrowingShiftSignedStaircaseWeight j N h) =
      ∑ _N ∈ coreGrowingShiftEndpointIntervalAnchorPrefixSet j h L U,
        coreGrowingShiftEndpointReciprocalDrop
          (coreGrowingShiftEndpointAggregateAnchorDenominator j) := by
      apply Finset.sum_congr rfl
      intro N hN
      rw [coreGrowingShiftSignedStaircaseWeight_eq_normalizedDrop,
        coreGrowingShiftEndpointIntervalDenominator_eq_anchor hN]
    _ = (coreGrowingShiftEndpointIntervalAnchorMultiplicity j h L U : ℝ) *
        coreGrowingShiftEndpointReciprocalDrop
          (coreGrowingShiftEndpointAggregateAnchorDenominator j) := by
      simp [coreGrowingShiftEndpointIntervalAnchorMultiplicity, nsmul_eq_mul]

/-- The generic affine tail telescopes to two reciprocal boundary values. -/
theorem coreGrowingShiftEndpointIntervalTailSum
    (j h L U : ℕ) :
    (∑ N ∈ coreGrowingShiftEndpointIntervalTailPrefixSet j h L U,
      coreGrowingShiftSignedStaircaseWeight j N h) =
      coreGrowingShiftEndpointIntervalTailBoundary j h L U := by
  let A := coreGrowingShiftEndpointIntervalTailLower j h L
  let q := coreGrowingShiftEndpointAggregateEffectiveShift j h
  by_cases hAU : A ≤ U
  · unfold coreGrowingShiftEndpointIntervalTailBoundary
    rw [if_pos hAU]
    change
      (∑ N ∈ Finset.Ico A U,
        coreGrowingShiftSignedStaircaseWeight j N h) =
        (((A + q : ℕ) : ℝ))⁻¹ - (((U + q : ℕ) : ℝ))⁻¹
    calc
      (∑ N ∈ Finset.Ico A U,
        coreGrowingShiftSignedStaircaseWeight j N h) =
          ∑ N ∈ Finset.Ico A U,
            coreGrowingShiftEndpointReciprocalDrop (N + q) := by
        apply Finset.sum_congr rfl
        intro N hN
        rw [coreGrowingShiftSignedStaircaseWeight_eq_normalizedDrop,
          coreGrowingShiftEndpointIntervalDenominator_eq_tail]
        · rfl
        · simpa [coreGrowingShiftEndpointIntervalTailPrefixSet, A] using hN
      _ = (((A + q : ℕ) : ℝ))⁻¹ - (((U + q : ℕ) : ℝ))⁻¹ :=
        finite_reciprocalDrop_Ico q A U hAU
  · have hnotlt : ¬ A < U := by omega
    have hempty : Finset.Ico A U = ∅ :=
      Finset.Ico_eq_empty_iff.mpr hnotlt
    unfold coreGrowingShiftEndpointIntervalTailBoundary
    rw [if_neg hAU]
    change
      (∑ N ∈ Finset.Ico A U,
        coreGrowingShiftSignedStaircaseWeight j N h) = 0
    rw [hempty]
    simp

/-- Generic closed evaluation of the reciprocal-drop weight on every finite
prefix interval, including empty intervals. -/
theorem coreGrowingShiftEndpointIntervalSum_eq_closed
    (j h L U : ℕ) :
    (∑ N ∈ Finset.Ico L U,
      coreGrowingShiftSignedStaircaseWeight j N h) =
      coreGrowingShiftEndpointIntervalClosedKernel j h L U := by
  rw [coreGrowingShiftEndpointInterval_eq_anchor_union_tail,
    Finset.sum_union
      (coreGrowingShiftEndpointIntervalAnchor_disjoint_tail j h L U),
    coreGrowingShiftEndpointIntervalAnchorSum,
    coreGrowingShiftEndpointIntervalTailSum]
  rfl

/-- Difference-only closed bulk coefficient. -/
def coreGrowingShiftEndpointDifferenceBulkKernel
    (j h : ℕ) : ℝ :=
  coreGrowingShiftEndpointIntervalClosedKernel j h
    (coreGrowingShiftEndpointDifferencePrefixLower j h)
    (coreGrowingShiftEndpointDifferencePrefixUpper j h)

/-- Closed correction for prefixes removed by the left endpoint. -/
def coreGrowingShiftEndpointPrefixClippingKernel
    (j n h : ℕ) : ℝ :=
  coreGrowingShiftEndpointIntervalClosedKernel j h
    (coreGrowingShiftEndpointDifferencePrefixLower j h)
    (min n (coreGrowingShiftEndpointDifferencePrefixUpper j h))

/-- The full difference prefix set is the disjoint union of the clipped
prefixes and the actual active prefixes. -/
theorem coreGrowingShiftEndpointDifferencePrefixSet_eq_clip_union_active
    (j n h : ℕ) :
    coreGrowingShiftEndpointDifferencePrefixSet j h =
      coreGrowingShiftEndpointClippedPrefixSet j n h ∪
        Finset.Ico
          (max n (coreGrowingShiftEndpointDifferencePrefixLower j h))
          (coreGrowingShiftEndpointDifferencePrefixUpper j h) := by
  ext N
  simp [coreGrowingShiftEndpointDifferencePrefixSet,
    coreGrowingShiftEndpointClippedPrefixSet]
  omega

/-- The clipped and active prefix intervals are disjoint. -/
theorem coreGrowingShiftEndpointClippedPrefixSet_disjoint_active
    (j n h : ℕ) :
    Disjoint
      (coreGrowingShiftEndpointClippedPrefixSet j n h)
      (Finset.Ico
        (max n (coreGrowingShiftEndpointDifferencePrefixLower j h))
        (coreGrowingShiftEndpointDifferencePrefixUpper j h)) := by
  refine Finset.disjoint_left.mpr ?_
  intro N hC hA
  simp [coreGrowingShiftEndpointClippedPrefixSet] at hC hA
  omega

/-- Removing the clipped prefixes from the difference-only bulk leaves the
actual closed active coefficient. -/
theorem coreGrowingShiftEndpointDifferenceBulk_sub_clip_eq_active
    (j n h : ℕ) :
    coreGrowingShiftEndpointDifferenceBulkKernel j h -
        coreGrowingShiftEndpointPrefixClippingKernel j n h =
      coreGrowingShiftEndpointIntervalClosedKernel j h
        (max n (coreGrowingShiftEndpointDifferencePrefixLower j h))
        (coreGrowingShiftEndpointDifferencePrefixUpper j h) := by
  rw [← coreGrowingShiftEndpointIntervalSum_eq_closed,
    ← coreGrowingShiftEndpointIntervalSum_eq_closed,
    ← coreGrowingShiftEndpointIntervalSum_eq_closed]
  have hsplit :=
    coreGrowingShiftEndpointDifferencePrefixSet_eq_clip_union_active j n h
  have hdis :=
    coreGrowingShiftEndpointClippedPrefixSet_disjoint_active j n h
  unfold coreGrowingShiftEndpointDifferencePrefixSet at hsplit
  rw [hsplit, Finset.sum_union hdis]
  ring

/-- The clipping correction vanishes before the left endpoint reaches the
difference-only lower cutoff. -/
theorem coreGrowingShiftEndpointPrefixClippingKernel_eq_zero
    {j n h : ℕ}
    (hn : n ≤ coreGrowingShiftEndpointDifferencePrefixLower j h) :
    coreGrowingShiftEndpointPrefixClippingKernel j n h = 0 := by
  rw [← coreGrowingShiftEndpointIntervalSum_eq_closed]
  have hempty :
      Finset.Ico
        (coreGrowingShiftEndpointDifferencePrefixLower j h)
        (min n (coreGrowingShiftEndpointDifferencePrefixUpper j h)) = ∅ := by
    apply Finset.Ico_eq_empty_iff.mpr
    omega
  rw [hempty]
  simp

/-- Exact closed endpoint coefficient as a translation-invariant difference
bulk minus the left-endpoint clipping correction. -/
theorem coreGrowingShiftEndpointAggregateBoundaryKernel_eq_difference_sub_clip
    {j n m : ℕ}
    (hn : 1 ≤ n)
    (hnm : n < m)
    (hmY : m < 2 ^ (j + 1)) :
    coreGrowingShiftEndpointAggregateBoundaryKernel j n m =
      coreGrowingShiftEndpointDifferenceBulkKernel j (m - n) -
        coreGrowingShiftEndpointPrefixClippingKernel j n (m - n) := by
  rw [← coreGrowingShiftEndpointAggregateKernel_eq_boundary hn hnm hmY,
    coreGrowingShiftEndpointAggregateKernel_eq_explicitInterval hn hnm hmY,
    coreGrowingShiftEndpointExplicitPrefixSet_eq_differenceClipped]
  change
    (∑ N ∈ Finset.Ico
      (max n
        (coreGrowingShiftEndpointDifferencePrefixLower j (m - n)))
      (coreGrowingShiftEndpointDifferencePrefixUpper j (m - n)),
      coreGrowingShiftSignedStaircaseWeight j N (m - n)) =
      coreGrowingShiftEndpointDifferenceBulkKernel j (m - n) -
        coreGrowingShiftEndpointPrefixClippingKernel j n (m - n)
  rw [coreGrowingShiftEndpointIntervalSum_eq_closed]
  exact
    (coreGrowingShiftEndpointDifferenceBulk_sub_clip_eq_active
      j n (m - n)).symm

/-- Strict zero-padded difference-only bulk kernel. -/
def coreGrowingShiftEndpointDifferenceBulkKernelZeroPad
    (j : ℕ)
    (x y : CoreGrowingShiftEndpointFourierIndex j) : ℂ :=
  if 1 ≤ x.val ∧ x.val < y.val then
    (coreGrowingShiftEndpointDifferenceBulkKernel
      j (y.val - x.val) : ℂ)
  else 0

/-- Strict zero-padded left-endpoint clipping correction. -/
def coreGrowingShiftEndpointPrefixClippingKernelZeroPad
    (j : ℕ)
    (x y : CoreGrowingShiftEndpointFourierIndex j) : ℂ :=
  if 1 ≤ x.val ∧ x.val < y.val then
    (coreGrowingShiftEndpointPrefixClippingKernel
      j x.val (y.val - x.val) : ℂ)
  else 0

/-- The signed combined kernel is kept as one object. -/
def coreGrowingShiftEndpointDifferenceMinusClipKernelZeroPad
    (j : ℕ)
    (x y : CoreGrowingShiftEndpointFourierIndex j) : ℂ :=
  coreGrowingShiftEndpointDifferenceBulkKernelZeroPad j x y -
    coreGrowingShiftEndpointPrefixClippingKernelZeroPad j x y

/-- Pointwise equality with the parent closed boundary kernel. -/
theorem coreGrowingShiftEndpointDifferenceMinusClipKernelZeroPad_eq_boundary
    (j : ℕ)
    (x y : CoreGrowingShiftEndpointFourierIndex j) :
    coreGrowingShiftEndpointDifferenceMinusClipKernelZeroPad j x y =
      coreGrowingShiftEndpointBoundaryKernelZeroPad j x y := by
  by_cases hsupport : 1 ≤ x.val ∧ x.val < y.val
  · rw [coreGrowingShiftEndpointAggregateBoundaryKernel_eq_difference_sub_clip
      hsupport.1 hsupport.2 (ZMod.val_lt y)]
    simp [coreGrowingShiftEndpointDifferenceMinusClipKernelZeroPad,
      coreGrowingShiftEndpointDifferenceBulkKernelZeroPad,
      coreGrowingShiftEndpointPrefixClippingKernelZeroPad,
      coreGrowingShiftEndpointBoundaryKernelZeroPad, hsupport]
  · simp [coreGrowingShiftEndpointDifferenceMinusClipKernelZeroPad,
      coreGrowingShiftEndpointDifferenceBulkKernelZeroPad,
      coreGrowingShiftEndpointPrefixClippingKernelZeroPad,
      coreGrowingShiftEndpointBoundaryKernelZeroPad, hsupport]

/-- Two-dimensional DFT of the complete signed difference-minus-clipping
kernel. -/
def coreGrowingShiftEndpointDifferenceMinusClipKernelDFT2
    (j : ℕ)
    (r s : CoreGrowingShiftEndpointFourierIndex j) : ℂ :=
  finiteZModKernelDFT2
    (coreGrowingShiftEndpointDifferenceMinusClipKernelZeroPad j) r s

/-- The combined spectral kernel is exactly the parent boundary spectral
kernel. -/
theorem coreGrowingShiftEndpointDifferenceMinusClipKernelDFT2_eq_boundary
    (j : ℕ)
    (r s : CoreGrowingShiftEndpointFourierIndex j) :
    coreGrowingShiftEndpointDifferenceMinusClipKernelDFT2 j r s =
      coreGrowingShiftEndpointBoundaryKernelDFT2 j r s := by
  unfold coreGrowingShiftEndpointDifferenceMinusClipKernelDFT2
    coreGrowingShiftEndpointBoundaryKernelDFT2
    finiteZModKernelDFT2
  simp_rw [coreGrowingShiftEndpointDifferenceMinusClipKernelZeroPad_eq_boundary]

/-- Complex frequency packet for the complete signed difference-minus-clipping
kernel. -/
def coreGrowingShiftSignedEndpointDifferenceMinusClipFourierPacketComplex
    (j : ℕ) : ℂ :=
  let Y : ℕ := coreGrowingShiftEndpointFourierModulus j
  (Y : ℂ)⁻¹ * (Y : ℂ)⁻¹ *
    ∑ r : CoreGrowingShiftEndpointFourierIndex j,
      ∑ s : CoreGrowingShiftEndpointFourierIndex j,
        ZMod.dft (coreGrowingShiftEndpointMobiusZeroPad j) (-r) *
          ZMod.dft (coreGrowingShiftEndpointMobiusZeroPad j) (-s) *
            coreGrowingShiftEndpointDifferenceMinusClipKernelDFT2 j r s

/-- Exact equality with the parent boundary complex packet. -/
theorem coreGrowingShiftSignedEndpointDifferenceMinusClipFourierPacketComplex_eq_boundary
    (j : ℕ) :
    coreGrowingShiftSignedEndpointDifferenceMinusClipFourierPacketComplex j =
      coreGrowingShiftSignedEndpointBoundaryFourierPacketComplex j := by
  unfold coreGrowingShiftSignedEndpointDifferenceMinusClipFourierPacketComplex
    coreGrowingShiftSignedEndpointBoundaryFourierPacketComplex
  apply congrArg
  apply Finset.sum_congr rfl
  intro r _hr
  apply Finset.sum_congr rfl
  intro s _hs
  rw [coreGrowingShiftEndpointDifferenceMinusClipKernelDFT2_eq_boundary]

/-- The complete difference-minus-clipping complex packet is real. -/
theorem coreGrowingShiftSignedEndpointDifferenceMinusClipFourierPacketComplex_im
    (j : ℕ) :
    (coreGrowingShiftSignedEndpointDifferenceMinusClipFourierPacketComplex j).im = 0 := by
  rw [coreGrowingShiftSignedEndpointDifferenceMinusClipFourierPacketComplex_eq_boundary,
    coreGrowingShiftSignedEndpointBoundaryFourierPacketComplex_im]

/-- Real signed difference-minus-clipping frequency packet. -/
def coreGrowingShiftSignedEndpointDifferenceMinusClipFourierPacket
    (j : ℕ) : ℝ :=
  (coreGrowingShiftSignedEndpointDifferenceMinusClipFourierPacketComplex j).re

/-- Exact equality with the parent boundary packet. -/
theorem coreGrowingShiftSignedEndpointDifferenceMinusClipFourierPacket_eq_boundary
    (j : ℕ) :
    coreGrowingShiftSignedEndpointDifferenceMinusClipFourierPacket j =
      coreGrowingShiftSignedEndpointBoundaryFourierPacket j := by
  unfold coreGrowingShiftSignedEndpointDifferenceMinusClipFourierPacket
    coreGrowingShiftSignedEndpointBoundaryFourierPacket
  rw [coreGrowingShiftSignedEndpointDifferenceMinusClipFourierPacketComplex_eq_boundary]

/-- Exact RH-facing return through the complete signed difference-minus-clip
kernel. -/
theorem coreGrowingShiftFirstDifferencePacket_eq_two_mul_endpointDifferenceMinusClipFourier
    (j : ℕ) :
    coreGrowingShiftFirstDifferencePacket j =
      2 * coreGrowingShiftSignedEndpointDifferenceMinusClipFourierPacket j := by
  rw [coreGrowingShiftFirstDifferencePacket_eq_two_mul_endpointBoundaryFourier,
    ← coreGrowingShiftSignedEndpointDifferenceMinusClipFourierPacket_eq_boundary]

/-- Source-facing condition on the complete signed difference-minus-clipping
frequency packet. -/
def SubpolynomialCoreGrowingShiftSignedEndpointDifferenceMinusClipFourierPacket : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      2 * coreGrowingShiftSignedEndpointDifferenceMinusClipFourierPacket j ≤
        C * (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- Exact equivalence with the parent closed boundary-kernel source. -/
theorem subpolynomialCoreGrowingShiftSignedEndpointDifferenceMinusClipFourierPacket_iff_boundary :
    SubpolynomialCoreGrowingShiftSignedEndpointDifferenceMinusClipFourierPacket ↔
      SubpolynomialCoreGrowingShiftSignedEndpointBoundaryFourierPacket := by
  constructor
  · intro hDiff δ hδ
    obtain ⟨C, hC, hbound⟩ := hDiff δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [← coreGrowingShiftSignedEndpointDifferenceMinusClipFourierPacket_eq_boundary]
    exact hbound j
  · intro hBoundary δ hδ
    obtain ⟨C, hC, hbound⟩ := hBoundary δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [coreGrowingShiftSignedEndpointDifferenceMinusClipFourierPacket_eq_boundary]
    exact hbound j

/-- Conditional RH endpoint stated on the complete signed difference-minus-
clipping spectral kernel. -/
theorem riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointDifferenceMinusClipFourierPacket
    (hDiff :
      SubpolynomialCoreGrowingShiftSignedEndpointDifferenceMinusClipFourierPacket) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointBoundaryFourierPacket
    (subpolynomialCoreGrowingShiftSignedEndpointDifferenceMinusClipFourierPacket_iff_boundary.mp
      hDiff)

/-- Source profile for a theorem stated on the joint difference-minus-clipping
spectral packet.  Bulk and clipping are not separate analytic premises. -/
structure SignedEndpointDifferenceMinusClipFourierSource where
  sourceStatement : Prop
  exactDifferenceSupport : Prop
  genericClosedIntervalEvaluation : Prop
  clippingSupportControl : Prop
  strictEndpointSupport : Prop
  exactZeroPadding : Prop
  noWrapControl : Prop
  dftSignNormalization : Prop
  lowAnchorPreservation : Prop
  jointBulkClipSignedCancellation : Prop
  allScaleUniformity : Prop
  finiteSmallScaleControl : Prop

/-- Proof-producing boundary for a future signed difference-minus-clipping
estimate. -/
structure ToCoreGrowingShiftSignedEndpointDifferenceMinusClipFourierPacket
    (d : SignedEndpointDifferenceMinusClipFourierSource) : Type where
  toDifferenceMinusClip :
    d.sourceStatement →
      d.exactDifferenceSupport →
      d.genericClosedIntervalEvaluation →
      d.clippingSupportControl →
      d.strictEndpointSupport →
      d.exactZeroPadding →
      d.noWrapControl →
      d.dftSignNormalization →
      d.lowAnchorPreservation →
      d.jointBulkClipSignedCancellation →
      d.allScaleUniformity →
      d.finiteSmallScaleControl →
      SubpolynomialCoreGrowingShiftSignedEndpointDifferenceMinusClipFourierPacket

/-- Generic conditional endpoint through an explicitly constructed joint
bulk/correction signed adapter. -/
theorem riemannHypothesis_of_signedEndpointDifferenceMinusClipFourierAdapter
    (d : SignedEndpointDifferenceMinusClipFourierSource)
    (bridge : ToCoreGrowingShiftSignedEndpointDifferenceMinusClipFourierPacket d)
    (hsource : d.sourceStatement)
    (hdifference : d.exactDifferenceSupport)
    (hclosed : d.genericClosedIntervalEvaluation)
    (hclip : d.clippingSupportControl)
    (hsupport : d.strictEndpointSupport)
    (hzero : d.exactZeroPadding)
    (hnowrap : d.noWrapControl)
    (hsign : d.dftSignNormalization)
    (hanchor : d.lowAnchorPreservation)
    (hjoint : d.jointBulkClipSignedCancellation)
    (huniform : d.allScaleUniformity)
    (hsmall : d.finiteSmallScaleControl) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointDifferenceMinusClipFourierPacket
    (bridge.toDifferenceMinusClip hsource hdifference hclosed hclip hsupport
      hzero hnowrap hsign hanchor hjoint huniform hsmall)

/-- Hostile control: bulk and clipping may cancel before any positive norm is
taken. -/
theorem signedEndpointDifferenceMinusClipCancellation_hostileWitness :
    ((1 : ℝ) - (1 : ℝ)) = 0 ∧
      |(1 : ℝ)| + |(1 : ℝ)| = 2 := by
  norm_num

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointIntervalSum_eq_closed
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointAggregateBoundaryKernel_eq_difference_sub_clip
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointDifferenceMinusClipKernelZeroPad_eq_boundary
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftFirstDifferencePacket_eq_two_mul_endpointDifferenceMinusClipFourier
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointDifferenceMinusClipFourierPacket
