/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #915. Parent: draft PR #908 at
`0a9c48648261477ab9d25cac4565a4424b8183d1`.
-/
import GRWTSK.NumberTheory.Moebius.CoreGrowingShiftSignedEndpointClippingShearFourier
import GRWTSK.NumberTheory.Moebius.CoreGrowingShiftEndpointCyclicCoordinates
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open AddChar

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Twice the circular distance is at most the doubled modulus. -/
theorem coreGrowingShiftEndpointTransverseCircularDistance_two_mul_le
    (j : ℕ)
    (u : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    2 * coreGrowingShiftEndpointTransverseCircularDistance j u ≤
      coreGrowingShiftEndpointDoubledFourierModulus j := by
  by_cases hu : u = 0
  · subst u
    simp [coreGrowingShiftEndpointTransverseCircularDistance]
  · letI : NeZero u := ⟨hu⟩
    rw [coreGrowingShiftEndpointTransverseCircularDistance,
      ZMod.val_neg_of_ne_zero]
    by_cases hside :
        u.val ≤ coreGrowingShiftEndpointDoubledFourierModulus j - u.val
    · rw [min_eq_left hside]
      have hult := ZMod.val_lt u
      omega
    · rw [min_eq_right (Nat.le_of_not_ge hside)]
      have hult := ZMod.val_lt u
      omega

/-- Circular distance lies in the endpoint half-window. -/
theorem coreGrowingShiftEndpointTransverseCircularDistance_le_window
    (j : ℕ)
    (u : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointTransverseCircularDistance j u ≤
      coreGrowingShiftEndpointFourierModulus j := by
  have h :=
    coreGrowingShiftEndpointTransverseCircularDistance_two_mul_le j u
  unfold coreGrowingShiftEndpointDoubledFourierModulus at h
  omega

/-- Negating a finite cyclic frequency does not change the norm of the
standard-character finite-difference multiplier. -/
private theorem finiteZMod_stdAddChar_sub_one_norm_neg
    {Q : ℕ} [NeZero Q]
    (u : ZMod Q) :
    ‖ZMod.stdAddChar (-u) - 1‖ = ‖ZMod.stdAddChar u - 1‖ := by
  have hprod :
      ZMod.stdAddChar (-u) * ZMod.stdAddChar u = 1 := by
    rw [← map_add_eq_mul]
    simp
  have hfactor :
      ZMod.stdAddChar (-u) - 1 =
        -ZMod.stdAddChar (-u) * (ZMod.stdAddChar u - 1) := by
    rw [mul_sub, neg_mul, hprod]
    ring
  rw [hfactor, norm_mul, norm_neg]
  have hchar : ‖ZMod.stdAddChar (-u)‖ = 1 := by
    rw [ZMod.stdAddChar_apply]
    simp
  rw [hchar, one_mul]

/-- Exact character geometry using the canonical representative of a finite
cyclic frequency. -/
private theorem finiteZMod_stdAddChar_sub_one_norm_eq_valSine
    {Q : ℕ} [NeZero Q]
    (u : ZMod Q) :
    ‖ZMod.stdAddChar u - 1‖ =
      ‖(2 : ℝ) *
        Real.sin
          (Real.pi * (u.val : ℝ) / (Q : ℝ))‖ := by
  have hQreal : (Q : ℝ) ≠ 0 := by
    exact_mod_cast (NeZero.ne Q)
  rw [ZMod.stdAddChar_apply, ZMod.toCircle_apply, Circle.coe_exp]
  convert
    Complex.norm_exp_I_mul_ofReal_sub_one
      (2 * Real.pi * (u.val : ℝ) / (Q : ℝ)) using 1
  · congr 2
    push_cast
    field_simp [hQreal]
    ring
  · congr 2
    field_simp [hQreal]
    ring

/-- Exact sine formula for the transverse multiplier in terms of circular
distance.  No lower bound is asserted. -/
theorem coreGrowingShiftEndpointTransverseMultiplier_norm_eq_sineDistance
    (j : ℕ)
    (u : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    ‖coreGrowingShiftEndpointTransverseMultiplier j u‖ =
      ‖(2 : ℝ) *
        Real.sin
          (Real.pi *
            (coreGrowingShiftEndpointTransverseCircularDistance j u : ℝ) /
              (coreGrowingShiftEndpointDoubledFourierModulus j : ℝ))‖ := by
  unfold coreGrowingShiftEndpointTransverseMultiplier
    coreGrowingShiftEndpointTransverseCircularDistance
  by_cases hside : u.val ≤ (-u).val
  · rw [min_eq_left hside]
    exact finiteZMod_stdAddChar_sub_one_norm_eq_valSine u
  · rw [min_eq_right (Nat.le_of_not_ge hside)]
    rw [← finiteZMod_stdAddChar_sub_one_norm_neg u]
    exact finiteZMod_stdAddChar_sub_one_norm_eq_valSine (-u)

/-- Exact norm of the inverse multiplier.  This records, but does not estimate,
the transverse small divisor. -/
theorem coreGrowingShiftEndpointTransverseMultiplier_inv_norm_eq
    (j : ℕ)
    (u : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    ‖(coreGrowingShiftEndpointTransverseMultiplier j u)⁻¹‖ =
      ‖(2 : ℝ) *
        Real.sin
          (Real.pi *
            (coreGrowingShiftEndpointTransverseCircularDistance j u : ℝ) /
              (coreGrowingShiftEndpointDoubledFourierModulus j : ℝ))‖⁻¹ := by
  rw [norm_inv,
    coreGrowingShiftEndpointTransverseMultiplier_norm_eq_sineDistance]

/-- Singleton transverse zero-frequency set. -/
def coreGrowingShiftEndpointTransverseZeroFrequencySet
    (j : ℕ) :
    Finset (CoreGrowingShiftEndpointDoubledFourierIndex j) :=
  {0}

/-- Nonzero low transverse frequencies up to an arbitrary circular cutoff. -/
def coreGrowingShiftEndpointTransverseLowFrequencySet
    (j L : ℕ) :
    Finset (CoreGrowingShiftEndpointDoubledFourierIndex j) :=
  Finset.univ.filter fun u =>
    u ≠ 0 ∧ coreGrowingShiftEndpointTransverseCircularDistance j u ≤ L

/-- Transverse frequencies beyond an arbitrary circular cutoff. -/
def coreGrowingShiftEndpointTransverseRegularFrequencySet
    (j L : ℕ) :
    Finset (CoreGrowingShiftEndpointDoubledFourierIndex j) :=
  Finset.univ.filter fun u =>
    L < coreGrowingShiftEndpointTransverseCircularDistance j u

theorem mem_coreGrowingShiftEndpointTransverseLowFrequencySet_iff
    {j L : ℕ}
    {u : CoreGrowingShiftEndpointDoubledFourierIndex j} :
    u ∈ coreGrowingShiftEndpointTransverseLowFrequencySet j L ↔
      u ≠ 0 ∧
        coreGrowingShiftEndpointTransverseCircularDistance j u ≤ L := by
  simp [coreGrowingShiftEndpointTransverseLowFrequencySet]

theorem mem_coreGrowingShiftEndpointTransverseRegularFrequencySet_iff
    {j L : ℕ}
    {u : CoreGrowingShiftEndpointDoubledFourierIndex j} :
    u ∈ coreGrowingShiftEndpointTransverseRegularFrequencySet j L ↔
      L < coreGrowingShiftEndpointTransverseCircularDistance j u := by
  simp [coreGrowingShiftEndpointTransverseRegularFrequencySet]

/-- Every low transverse frequency is nonzero. -/
theorem coreGrowingShiftEndpointTransverseLowFrequencySet_ne_zero
    {j L : ℕ}
    {u : CoreGrowingShiftEndpointDoubledFourierIndex j}
    (hu : u ∈ coreGrowingShiftEndpointTransverseLowFrequencySet j L) :
    u ≠ 0 :=
  (mem_coreGrowingShiftEndpointTransverseLowFrequencySet_iff.mp hu).1

/-- Every regular transverse frequency is nonzero. -/
theorem coreGrowingShiftEndpointTransverseRegularFrequencySet_ne_zero
    {j L : ℕ}
    {u : CoreGrowingShiftEndpointDoubledFourierIndex j}
    (hu : u ∈ coreGrowingShiftEndpointTransverseRegularFrequencySet j L) :
    u ≠ 0 := by
  intro hzero
  subst u
  have hmem :=
    mem_coreGrowingShiftEndpointTransverseRegularFrequencySet_iff.mp hu
  simp [coreGrowingShiftEndpointTransverseCircularDistance] at hmem

/-- Zero, low nonzero, and regular transverse frequencies partition the full
doubled frequency group. -/
theorem coreGrowingShiftEndpointTransverseFrequency_univ_eq_partition
    (j L : ℕ) :
    (Finset.univ :
      Finset (CoreGrowingShiftEndpointDoubledFourierIndex j)) =
      coreGrowingShiftEndpointTransverseZeroFrequencySet j ∪
        (coreGrowingShiftEndpointTransverseLowFrequencySet j L ∪
          coreGrowingShiftEndpointTransverseRegularFrequencySet j L) := by
  ext u
  simp only [Finset.mem_univ, true_iff, Finset.mem_union,
    Finset.mem_singleton]
  by_cases hu : u = 0
  · left
    simpa [coreGrowingShiftEndpointTransverseZeroFrequencySet] using hu
  · right
    by_cases hd :
        coreGrowingShiftEndpointTransverseCircularDistance j u ≤ L
    · left
      simpa [coreGrowingShiftEndpointTransverseLowFrequencySet, hu, hd]
    · right
      have hLd :
          L < coreGrowingShiftEndpointTransverseCircularDistance j u :=
        Nat.lt_of_not_ge hd
      simpa [coreGrowingShiftEndpointTransverseRegularFrequencySet, hLd]

/-- The zero set is disjoint from the low nonzero set. -/
theorem coreGrowingShiftEndpointTransverseZero_disjoint_low
    (j L : ℕ) :
    Disjoint
      (coreGrowingShiftEndpointTransverseZeroFrequencySet j)
      (coreGrowingShiftEndpointTransverseLowFrequencySet j L) := by
  refine Finset.disjoint_left.mpr ?_
  intro u hzero hlow
  have hu0 : u = 0 := by
    simpa [coreGrowingShiftEndpointTransverseZeroFrequencySet] using hzero
  exact
    (coreGrowingShiftEndpointTransverseLowFrequencySet_ne_zero hlow) hu0

/-- The zero set is disjoint from the regular set. -/
theorem coreGrowingShiftEndpointTransverseZero_disjoint_regular
    (j L : ℕ) :
    Disjoint
      (coreGrowingShiftEndpointTransverseZeroFrequencySet j)
      (coreGrowingShiftEndpointTransverseRegularFrequencySet j L) := by
  refine Finset.disjoint_left.mpr ?_
  intro u hzero hregular
  have hu0 : u = 0 := by
    simpa [coreGrowingShiftEndpointTransverseZeroFrequencySet] using hzero
  exact
    (coreGrowingShiftEndpointTransverseRegularFrequencySet_ne_zero hregular)
      hu0

/-- Low and regular transverse sets are disjoint. -/
theorem coreGrowingShiftEndpointTransverseLow_disjoint_regular
    (j L : ℕ) :
    Disjoint
      (coreGrowingShiftEndpointTransverseLowFrequencySet j L)
      (coreGrowingShiftEndpointTransverseRegularFrequencySet j L) := by
  refine Finset.disjoint_left.mpr ?_
  intro u hlow hregular
  have hlo :=
    (mem_coreGrowingShiftEndpointTransverseLowFrequencySet_iff.mp hlow).2
  have hreg :=
    mem_coreGrowingShiftEndpointTransverseRegularFrequencySet_iff.mp hregular
  omega

/-- Exact finite-sum decomposition over the transverse partition. -/
theorem coreGrowingShiftEndpointTransverse_sum_eq_zero_add_low_add_regular
    (j L : ℕ)
    (F : CoreGrowingShiftEndpointDoubledFourierIndex j → ℂ) :
    (∑ u : CoreGrowingShiftEndpointDoubledFourierIndex j, F u) =
      F 0 +
        (∑ u ∈ coreGrowingShiftEndpointTransverseLowFrequencySet j L, F u) +
        ∑ u ∈ coreGrowingShiftEndpointTransverseRegularFrequencySet j L, F u := by
  classical
  rw [← Finset.sum_univ, coreGrowingShiftEndpointTransverseFrequency_univ_eq_partition]
  have hzeroUnion :
      Disjoint
        (coreGrowingShiftEndpointTransverseZeroFrequencySet j)
        (coreGrowingShiftEndpointTransverseLowFrequencySet j L ∪
          coreGrowingShiftEndpointTransverseRegularFrequencySet j L) := by
    exact
      (coreGrowingShiftEndpointTransverseZero_disjoint_low j L).union_right
        (coreGrowingShiftEndpointTransverseZero_disjoint_regular j L)
  rw [Finset.sum_union hzeroUnion,
    Finset.sum_union
      (coreGrowingShiftEndpointTransverseLow_disjoint_regular j L)]
  simp [coreGrowingShiftEndpointTransverseZeroFrequencySet]
  ring

/-- Clipping packet after exact frequency shear and the reindexing `u=r+s`. -/
def coreGrowingShiftSignedEndpointTransverseReindexedClippingFourierPacketComplex
    (j : ℕ) : ℂ :=
  let Q := coreGrowingShiftEndpointDoubledFourierModulus j
  (Q : ℂ)⁻¹ * (Q : ℂ)⁻¹ *
    ∑ u : CoreGrowingShiftEndpointDoubledFourierIndex j,
      ∑ s : CoreGrowingShiftEndpointDoubledFourierIndex j,
        ZMod.dft (coreGrowingShiftEndpointDoubledMobiusZeroPad j) (s - u) *
          ZMod.dft (coreGrowingShiftEndpointDoubledMobiusZeroPad j) (-s) *
            coreGrowingShiftEndpointDoubledShearedPrefixClippingKernelDFT2
              j u s

/-- Reindexing from `(r,s)` to `(u=r+s,s)` changes no clipping packet. -/
theorem coreGrowingShiftSignedEndpointTransverseReindexedClippingFourierPacketComplex_eq_parent
    (j : ℕ) :
    coreGrowingShiftSignedEndpointTransverseReindexedClippingFourierPacketComplex j =
      coreGrowingShiftSignedEndpointDoubledShearedPrefixClippingFourierPacketComplex j := by
  classical
  unfold coreGrowingShiftSignedEndpointTransverseReindexedClippingFourierPacketComplex
    coreGrowingShiftSignedEndpointDoubledShearedPrefixClippingFourierPacketComplex
  apply congrArg
  calc
    (∑ u : CoreGrowingShiftEndpointDoubledFourierIndex j,
      ∑ s : CoreGrowingShiftEndpointDoubledFourierIndex j,
        ZMod.dft (coreGrowingShiftEndpointDoubledMobiusZeroPad j) (s - u) *
          ZMod.dft (coreGrowingShiftEndpointDoubledMobiusZeroPad j) (-s) *
            coreGrowingShiftEndpointDoubledShearedPrefixClippingKernelDFT2
              j u s) =
      ∑ s : CoreGrowingShiftEndpointDoubledFourierIndex j,
        ∑ u : CoreGrowingShiftEndpointDoubledFourierIndex j,
          ZMod.dft (coreGrowingShiftEndpointDoubledMobiusZeroPad j) (s - u) *
            ZMod.dft (coreGrowingShiftEndpointDoubledMobiusZeroPad j) (-s) *
              coreGrowingShiftEndpointDoubledShearedPrefixClippingKernelDFT2
                j u s := by
                  rw [Finset.sum_comm]
    _ = ∑ s : CoreGrowingShiftEndpointDoubledFourierIndex j,
        ∑ r : CoreGrowingShiftEndpointDoubledFourierIndex j,
          ZMod.dft (coreGrowingShiftEndpointDoubledMobiusZeroPad j) (-r) *
            ZMod.dft (coreGrowingShiftEndpointDoubledMobiusZeroPad j) (-s) *
              coreGrowingShiftEndpointDoubledShearedPrefixClippingKernelDFT2
                j (r + s) s := by
      apply Fintype.sum_congr
      intro s
      symm
      refine Fintype.sum_equiv (Equiv.addRight s) _ _ ?_
      intro r
      have harg : s - (r + s) = -r := by abel
      simp [harg]
    _ = ∑ r : CoreGrowingShiftEndpointDoubledFourierIndex j,
        ∑ s : CoreGrowingShiftEndpointDoubledFourierIndex j,
          ZMod.dft (coreGrowingShiftEndpointDoubledMobiusZeroPad j) (-r) *
            ZMod.dft (coreGrowingShiftEndpointDoubledMobiusZeroPad j) (-s) *
              coreGrowingShiftEndpointDoubledShearedPrefixClippingKernelDFT2
                j (r + s) s := by
                  rw [Finset.sum_comm]

/-- Exact nonzero transverse resolvent for the sheared clipping transform. -/
def coreGrowingShiftEndpointDoubledShearedPrefixClippingResolvedDFT2
    (j : ℕ)
    (u s : CoreGrowingShiftEndpointDoubledFourierIndex j) : ℂ :=
  (coreGrowingShiftEndpointTransverseMultiplier j u)⁻¹ *
    (coreGrowingShiftEndpointDoubledShearedPrefixClippingIncrementDFT2 j u s +
      coreGrowingShiftEndpointDoubledShearedPrefixClippingRightBoundaryDFT2
        j u s)

/-- On every nonzero transverse mode, the exact resolvent equals the clipping
transform. -/
theorem coreGrowingShiftEndpointDoubledShearedPrefixClippingResolvedDFT2_eq_kernel
    {j : ℕ}
    {u s : CoreGrowingShiftEndpointDoubledFourierIndex j}
    (hu : u ≠ 0) :
    coreGrowingShiftEndpointDoubledShearedPrefixClippingResolvedDFT2 j u s =
      coreGrowingShiftEndpointDoubledShearedPrefixClippingKernelDFT2 j u s := by
  have hm :
      coreGrowingShiftEndpointTransverseMultiplier j u ≠ 0 :=
    coreGrowingShiftEndpointTransverseMultiplier_ne_zero hu
  unfold coreGrowingShiftEndpointDoubledShearedPrefixClippingResolvedDFT2
    coreGrowingShiftEndpointTransverseMultiplier
  rw [← coreGrowingShiftEndpointDoubledShearedPrefixClipping_antiderivativeEquation]
  rw [← mul_assoc, inv_mul_cancel₀ hm, one_mul]

/-- Direct transverse zero-mode clipping packet.  This mode is never inverted. -/
def coreGrowingShiftSignedEndpointTransverseZeroClippingFourierPacketComplex
    (j : ℕ) : ℂ :=
  let Q := coreGrowingShiftEndpointDoubledFourierModulus j
  (Q : ℂ)⁻¹ * (Q : ℂ)⁻¹ *
    ∑ s : CoreGrowingShiftEndpointDoubledFourierIndex j,
      ZMod.dft (coreGrowingShiftEndpointDoubledMobiusZeroPad j) s *
        ZMod.dft (coreGrowingShiftEndpointDoubledMobiusZeroPad j) (-s) *
          coreGrowingShiftEndpointDoubledShearedPrefixClippingKernelDFT2
            j 0 s

/-- Low nonzero clipping packet with the exact multiplier inverse left
unestimated. -/
def coreGrowingShiftSignedEndpointTransverseLowClippingFourierPacketComplex
    (j L : ℕ) : ℂ :=
  let Q := coreGrowingShiftEndpointDoubledFourierModulus j
  (Q : ℂ)⁻¹ * (Q : ℂ)⁻¹ *
    ∑ u ∈ coreGrowingShiftEndpointTransverseLowFrequencySet j L,
      ∑ s : CoreGrowingShiftEndpointDoubledFourierIndex j,
        ZMod.dft (coreGrowingShiftEndpointDoubledMobiusZeroPad j) (s - u) *
          ZMod.dft (coreGrowingShiftEndpointDoubledMobiusZeroPad j) (-s) *
            coreGrowingShiftEndpointDoubledShearedPrefixClippingResolvedDFT2
              j u s

/-- Regular clipping packet with the exact multiplier inverse left
unestimated. -/
def coreGrowingShiftSignedEndpointTransverseRegularClippingFourierPacketComplex
    (j L : ℕ) : ℂ :=
  let Q := coreGrowingShiftEndpointDoubledFourierModulus j
  (Q : ℂ)⁻¹ * (Q : ℂ)⁻¹ *
    ∑ u ∈ coreGrowingShiftEndpointTransverseRegularFrequencySet j L,
      ∑ s : CoreGrowingShiftEndpointDoubledFourierIndex j,
        ZMod.dft (coreGrowingShiftEndpointDoubledMobiusZeroPad j) (s - u) *
          ZMod.dft (coreGrowingShiftEndpointDoubledMobiusZeroPad j) (-s) *
            coreGrowingShiftEndpointDoubledShearedPrefixClippingResolvedDFT2
              j u s

/-- Exact clipping decomposition into direct zero, low nonzero, and regular
transverse modes. -/
theorem coreGrowingShiftSignedEndpointTransverseReindexedClippingFourierPacketComplex_eq_zero_add_low_add_regular
    (j L : ℕ) :
    coreGrowingShiftSignedEndpointTransverseReindexedClippingFourierPacketComplex j =
      coreGrowingShiftSignedEndpointTransverseZeroClippingFourierPacketComplex j +
        coreGrowingShiftSignedEndpointTransverseLowClippingFourierPacketComplex j L +
        coreGrowingShiftSignedEndpointTransverseRegularClippingFourierPacketComplex
          j L := by
  classical
  let F :
      CoreGrowingShiftEndpointDoubledFourierIndex j →
        CoreGrowingShiftEndpointDoubledFourierIndex j → ℂ :=
    fun u s =>
      ZMod.dft (coreGrowingShiftEndpointDoubledMobiusZeroPad j) (s - u) *
        ZMod.dft (coreGrowingShiftEndpointDoubledMobiusZeroPad j) (-s) *
          coreGrowingShiftEndpointDoubledShearedPrefixClippingKernelDFT2
            j u s
  have hpartition :=
    coreGrowingShiftEndpointTransverse_sum_eq_zero_add_low_add_regular
      j L (fun u => ∑ s, F u s)
  unfold coreGrowingShiftSignedEndpointTransverseReindexedClippingFourierPacketComplex
    coreGrowingShiftSignedEndpointTransverseZeroClippingFourierPacketComplex
    coreGrowingShiftSignedEndpointTransverseLowClippingFourierPacketComplex
    coreGrowingShiftSignedEndpointTransverseRegularClippingFourierPacketComplex
  rw [hpartition]
  have hlow :
      (∑ u ∈ coreGrowingShiftEndpointTransverseLowFrequencySet j L,
        ∑ s : CoreGrowingShiftEndpointDoubledFourierIndex j, F u s) =
      ∑ u ∈ coreGrowingShiftEndpointTransverseLowFrequencySet j L,
        ∑ s : CoreGrowingShiftEndpointDoubledFourierIndex j,
          ZMod.dft (coreGrowingShiftEndpointDoubledMobiusZeroPad j) (s - u) *
            ZMod.dft (coreGrowingShiftEndpointDoubledMobiusZeroPad j) (-s) *
              coreGrowingShiftEndpointDoubledShearedPrefixClippingResolvedDFT2
                j u s := by
    apply Finset.sum_congr rfl
    intro u hu
    apply Fintype.sum_congr
    intro s
    rw [coreGrowingShiftEndpointDoubledShearedPrefixClippingResolvedDFT2_eq_kernel
      (coreGrowingShiftEndpointTransverseLowFrequencySet_ne_zero hu)]
  have hregular :
      (∑ u ∈ coreGrowingShiftEndpointTransverseRegularFrequencySet j L,
        ∑ s : CoreGrowingShiftEndpointDoubledFourierIndex j, F u s) =
      ∑ u ∈ coreGrowingShiftEndpointTransverseRegularFrequencySet j L,
        ∑ s : CoreGrowingShiftEndpointDoubledFourierIndex j,
          ZMod.dft (coreGrowingShiftEndpointDoubledMobiusZeroPad j) (s - u) *
            ZMod.dft (coreGrowingShiftEndpointDoubledMobiusZeroPad j) (-s) *
              coreGrowingShiftEndpointDoubledShearedPrefixClippingResolvedDFT2
                j u s := by
    apply Finset.sum_congr rfl
    intro u hu
    apply Fintype.sum_congr
    intro s
    rw [coreGrowingShiftEndpointDoubledShearedPrefixClippingResolvedDFT2_eq_kernel
      (coreGrowingShiftEndpointTransverseRegularFrequencySet_ne_zero hu)]
  rw [hlow, hregular]
  simp [F]
  ring

/-- Signed joint packet on the transverse zero mode: the one-frequency bulk
multiplier and the direct clipping zero mode are kept together. -/
def coreGrowingShiftSignedEndpointTransverseZeroModeJointFourierPacketComplex
    (j : ℕ) : ℂ :=
  let Q := coreGrowingShiftEndpointDoubledFourierModulus j
  (Q : ℂ)⁻¹ *
    ∑ s : CoreGrowingShiftEndpointDoubledFourierIndex j,
      ZMod.dft (coreGrowingShiftEndpointDoubledMobiusZeroPad j) s *
        ZMod.dft (coreGrowingShiftEndpointDoubledMobiusZeroPad j) (-s) *
          (ZMod.dft
              (coreGrowingShiftEndpointDoubledDifferenceBulkSymbol j) s -
            (Q : ℂ)⁻¹ *
              coreGrowingShiftEndpointDoubledShearedPrefixClippingKernelDFT2
                j 0 s)

/-- The joint zero-mode packet is exactly bulk minus direct clipping zero
mode. -/
theorem coreGrowingShiftSignedEndpointTransverseZeroModeJointFourierPacketComplex_eq_bulk_sub_zeroClip
    (j : ℕ) :
    coreGrowingShiftSignedEndpointTransverseZeroModeJointFourierPacketComplex j =
      coreGrowingShiftSignedEndpointDoubledDifferenceBulkOneFrequencyPacketComplex
          j -
        coreGrowingShiftSignedEndpointTransverseZeroClippingFourierPacketComplex
          j := by
  unfold coreGrowingShiftSignedEndpointTransverseZeroModeJointFourierPacketComplex
    coreGrowingShiftSignedEndpointDoubledDifferenceBulkOneFrequencyPacketComplex
    coreGrowingShiftSignedEndpointTransverseZeroClippingFourierPacketComplex
  simp_rw [mul_sub, Finset.sum_sub_distrib]
  ring

/-- Complete exact transverse split at an arbitrary circular cutoff. -/
def coreGrowingShiftSignedEndpointTransverseFrequencySplitAtCutoffFourierPacketComplex
    (j L : ℕ) : ℂ :=
  coreGrowingShiftSignedEndpointTransverseZeroModeJointFourierPacketComplex j -
    coreGrowingShiftSignedEndpointTransverseLowClippingFourierPacketComplex j L -
      coreGrowingShiftSignedEndpointTransverseRegularClippingFourierPacketComplex
        j L

/-- Every cutoff gives exactly the parent clipping-shear packet. -/
theorem coreGrowingShiftSignedEndpointTransverseFrequencySplitAtCutoffFourierPacketComplex_eq_parent
    (j L : ℕ) :
    coreGrowingShiftSignedEndpointTransverseFrequencySplitAtCutoffFourierPacketComplex
        j L =
      coreGrowingShiftSignedEndpointClippingShearFourierPacketComplex j := by
  unfold coreGrowingShiftSignedEndpointTransverseFrequencySplitAtCutoffFourierPacketComplex
    coreGrowingShiftSignedEndpointClippingShearFourierPacketComplex
  rw [coreGrowingShiftSignedEndpointTransverseZeroModeJointFourierPacketComplex_eq_bulk_sub_zeroClip]
  calc
    (coreGrowingShiftSignedEndpointDoubledDifferenceBulkOneFrequencyPacketComplex j -
        coreGrowingShiftSignedEndpointTransverseZeroClippingFourierPacketComplex j) -
          coreGrowingShiftSignedEndpointTransverseLowClippingFourierPacketComplex j L -
            coreGrowingShiftSignedEndpointTransverseRegularClippingFourierPacketComplex j L =
      coreGrowingShiftSignedEndpointDoubledDifferenceBulkOneFrequencyPacketComplex j -
        (coreGrowingShiftSignedEndpointTransverseZeroClippingFourierPacketComplex j +
          coreGrowingShiftSignedEndpointTransverseLowClippingFourierPacketComplex j L +
            coreGrowingShiftSignedEndpointTransverseRegularClippingFourierPacketComplex
              j L) := by ring
    _ = coreGrowingShiftSignedEndpointDoubledDifferenceBulkOneFrequencyPacketComplex j -
        coreGrowingShiftSignedEndpointTransverseReindexedClippingFourierPacketComplex j := by
      rw [coreGrowingShiftSignedEndpointTransverseReindexedClippingFourierPacketComplex_eq_zero_add_low_add_regular]
    _ = coreGrowingShiftSignedEndpointDoubledDifferenceBulkOneFrequencyPacketComplex j -
        coreGrowingShiftSignedEndpointDoubledShearedPrefixClippingFourierPacketComplex j := by
      rw [coreGrowingShiftSignedEndpointTransverseReindexedClippingFourierPacketComplex_eq_parent]

/-- Canonical transverse cutoff inherited from the logarithmic shift scale. -/
def coreGrowingShiftEndpointCanonicalTransverseFrequencyCutoff
    (j : ℕ) : ℕ :=
  logarithmicShiftThreshold j

/-- Canonical exact transverse frequency split packet. -/
def coreGrowingShiftSignedEndpointTransverseFrequencySplitFourierPacketComplex
    (j : ℕ) : ℂ :=
  coreGrowingShiftSignedEndpointTransverseFrequencySplitAtCutoffFourierPacketComplex
    j (coreGrowingShiftEndpointCanonicalTransverseFrequencyCutoff j)

/-- The canonical split packet is exactly the parent clipping-shear packet. -/
theorem coreGrowingShiftSignedEndpointTransverseFrequencySplitFourierPacketComplex_eq_parent
    (j : ℕ) :
    coreGrowingShiftSignedEndpointTransverseFrequencySplitFourierPacketComplex j =
      coreGrowingShiftSignedEndpointClippingShearFourierPacketComplex j := by
  unfold coreGrowingShiftSignedEndpointTransverseFrequencySplitFourierPacketComplex
  exact
    coreGrowingShiftSignedEndpointTransverseFrequencySplitAtCutoffFourierPacketComplex_eq_parent
      j (coreGrowingShiftEndpointCanonicalTransverseFrequencyCutoff j)

/-- The canonical split packet is real only after the complete signed mode
combination. -/
theorem coreGrowingShiftSignedEndpointTransverseFrequencySplitFourierPacketComplex_im
    (j : ℕ) :
    (coreGrowingShiftSignedEndpointTransverseFrequencySplitFourierPacketComplex j).im =
      0 := by
  rw [coreGrowingShiftSignedEndpointTransverseFrequencySplitFourierPacketComplex_eq_parent,
    coreGrowingShiftSignedEndpointClippingShearFourierPacketComplex_im]

/-- Real canonical zero/low/regular transverse split packet. -/
def coreGrowingShiftSignedEndpointTransverseFrequencySplitFourierPacket
    (j : ℕ) : ℝ :=
  (coreGrowingShiftSignedEndpointTransverseFrequencySplitFourierPacketComplex j).re

/-- Exact equality with the parent real clipping-shear packet. -/
theorem coreGrowingShiftSignedEndpointTransverseFrequencySplitFourierPacket_eq_parent
    (j : ℕ) :
    coreGrowingShiftSignedEndpointTransverseFrequencySplitFourierPacket j =
      coreGrowingShiftSignedEndpointClippingShearFourierPacket j := by
  unfold coreGrowingShiftSignedEndpointTransverseFrequencySplitFourierPacket
    coreGrowingShiftSignedEndpointClippingShearFourierPacket
  rw [coreGrowingShiftSignedEndpointTransverseFrequencySplitFourierPacketComplex_eq_parent]

/-- Exact RH-facing return through the canonical transverse frequency split. -/
theorem coreGrowingShiftFirstDifferencePacket_eq_two_mul_endpointTransverseFrequencySplitFourier
    (j : ℕ) :
    coreGrowingShiftFirstDifferencePacket j =
      2 * coreGrowingShiftSignedEndpointTransverseFrequencySplitFourierPacket j := by
  rw [coreGrowingShiftFirstDifferencePacket_eq_two_mul_endpointClippingShearFourier,
    ← coreGrowingShiftSignedEndpointTransverseFrequencySplitFourierPacket_eq_parent]

/-- Source-facing all-scale condition on the complete canonical transverse
split packet. -/
def SubpolynomialCoreGrowingShiftSignedEndpointTransverseFrequencySplitFourierPacket :
    Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      2 * coreGrowingShiftSignedEndpointTransverseFrequencySplitFourierPacket j ≤
        C * (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- Exact equivalence with the parent clipping-shear source. -/
theorem subpolynomialCoreGrowingShiftSignedEndpointTransverseFrequencySplitFourierPacket_iff_parent :
    SubpolynomialCoreGrowingShiftSignedEndpointTransverseFrequencySplitFourierPacket ↔
      SubpolynomialCoreGrowingShiftSignedEndpointClippingShearFourierPacket := by
  constructor
  · intro hSplit δ hδ
    obtain ⟨C, hC, hbound⟩ := hSplit δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [← coreGrowingShiftSignedEndpointTransverseFrequencySplitFourierPacket_eq_parent]
    exact hbound j
  · intro hParent δ hδ
    obtain ⟨C, hC, hbound⟩ := hParent δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [coreGrowingShiftSignedEndpointTransverseFrequencySplitFourierPacket_eq_parent]
    exact hbound j

/-- Conditional RH endpoint stated on the exact transverse frequency split. -/
theorem riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointTransverseFrequencySplitFourierPacket
    (hSplit :
      SubpolynomialCoreGrowingShiftSignedEndpointTransverseFrequencySplitFourierPacket) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointClippingShearFourierPacket
    (subpolynomialCoreGrowingShiftSignedEndpointTransverseFrequencySplitFourierPacket_iff_parent.mp
      hSplit)

/-- Source profile for a future analytic theorem after exact transverse mode
separation. -/
structure SignedEndpointTransverseFrequencySplitFourierSource where
  sourceStatement : Prop
  circularDistanceGeometry : Prop
  exactCharacterNormIdentity : Prop
  exactZeroLowRegularPartition : Prop
  transversePacketReindexing : Prop
  directZeroModePreservation : Prop
  lowModePreservation : Prop
  regularModeResolventPreservation : Prop
  rightWindowBoundaryPreservation : Prop
  lowAnchorPreservation : Prop
  signedBulkClipCancellation : Prop
  allScaleUniformity : Prop
  finiteSmallScaleControl : Prop

/-- Proof-producing boundary for a future estimate of the complete split
packet.  No multiplier lower bound or Fourier estimate is included. -/
structure ToCoreGrowingShiftSignedEndpointTransverseFrequencySplitFourierPacket
    (d : SignedEndpointTransverseFrequencySplitFourierSource) : Type where
  toTransverseSplit :
    d.sourceStatement →
      d.circularDistanceGeometry →
      d.exactCharacterNormIdentity →
      d.exactZeroLowRegularPartition →
      d.transversePacketReindexing →
      d.directZeroModePreservation →
      d.lowModePreservation →
      d.regularModeResolventPreservation →
      d.rightWindowBoundaryPreservation →
      d.lowAnchorPreservation →
      d.signedBulkClipCancellation →
      d.allScaleUniformity →
      d.finiteSmallScaleControl →
      SubpolynomialCoreGrowingShiftSignedEndpointTransverseFrequencySplitFourierPacket

/-- Generic conditional endpoint through an explicitly constructed transverse
mode-split adapter. -/
theorem riemannHypothesis_of_signedEndpointTransverseFrequencySplitFourierAdapter
    (d : SignedEndpointTransverseFrequencySplitFourierSource)
    (bridge :
      ToCoreGrowingShiftSignedEndpointTransverseFrequencySplitFourierPacket d)
    (hsource : d.sourceStatement)
    (hdistance : d.circularDistanceGeometry)
    (hcharacter : d.exactCharacterNormIdentity)
    (hpartition : d.exactZeroLowRegularPartition)
    (hreindex : d.transversePacketReindexing)
    (hzero : d.directZeroModePreservation)
    (hlow : d.lowModePreservation)
    (hregular : d.regularModeResolventPreservation)
    (hboundary : d.rightWindowBoundaryPreservation)
    (hanchor : d.lowAnchorPreservation)
    (hjoint : d.signedBulkClipCancellation)
    (huniform : d.allScaleUniformity)
    (hsmall : d.finiteSmallScaleControl) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointTransverseFrequencySplitFourierPacket
    (bridge.toTransverseSplit hsource hdistance hcharacter hpartition hreindex
      hzero hlow hregular hboundary hanchor hjoint huniform hsmall)

/-- Hostile control: the zero multiplier cannot be inverted. -/
theorem signedEndpointTransverseFrequencySplit_zeroMultiplier_hostileWitness :
    coreGrowingShiftEndpointTransverseMultiplier 0
      (0 : CoreGrowingShiftEndpointDoubledFourierIndex 0) = 0 := by
  simp [coreGrowingShiftEndpointTransverseMultiplier]

/-- Hostile control: a signed zero-mode bulk/clipping cancellation can be exact
while separate absolute masses remain positive. -/
theorem signedEndpointTransverseFrequencySplit_zeroModeCancellation_hostileWitness :
    ((1 : ℂ) - (1 : ℂ)) = 0 ∧
      ‖(1 : ℂ)‖ + ‖(1 : ℂ)‖ = 2 := by
  norm_num

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointTransverseCircularDistance_two_mul_le
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointTransverseMultiplier_norm_eq_sineDistance
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointTransverseFrequency_univ_eq_partition
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftSignedEndpointTransverseReindexedClippingFourierPacketComplex_eq_parent
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointDoubledShearedPrefixClippingResolvedDFT2_eq_kernel
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftSignedEndpointTransverseFrequencySplitAtCutoffFourierPacketComplex_eq_parent
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointTransverseFrequencySplitFourierPacket