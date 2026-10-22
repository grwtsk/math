/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #884. Parent: draft PR #879 at
`32a1f8485ae3502f2ca0c95459eb4390a3223a6a`.
-/
import GRWTSK.NumberTheory.Moebius.CoreGrowingShiftSignedEndpointDifferenceFourier
import GRWTSK.NumberTheory.Moebius.CoreGrowingShiftEndpointCyclicCoordinates

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open AddChar

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Canonical representatives identify a finite cyclic group with the
corresponding `Fin`. -/
private def doubledZModValEquiv (Q : ℕ) [NeZero Q] : ZMod Q ≃ Fin Q where
  toFun x := ⟨x.val, ZMod.val_lt x⟩
  invFun x := (x.val : ZMod Q)
  left_inv x := by
    simpa using ZMod.natCast_zmod_val x
  right_inv x := by
    apply Fin.ext
    exact ZMod.val_cast_of_lt x.isLt

private theorem doubled_sum_zmod_eq_sum_fin
    {Q : ℕ} [NeZero Q] (F : ZMod Q → ℂ) :
    (∑ x : ZMod Q, F x) =
      ∑ x : Fin Q, F (x.val : ZMod Q) := by
  refine Fintype.sum_equiv (doubledZModValEquiv Q) F
    (fun x : Fin Q => F (x.val : ZMod Q)) ?_
  intro x
  simp [doubledZModValEquiv, ZMod.natCast_zmod_val]

/-- Summing a zero extension from an initial interval of canonical
representatives changes no finite mass. -/
private theorem sum_zmod_initial_zeroExtension
    {Y Q : ℕ} [NeZero Y] [NeZero Q]
    (hYQ : Y ≤ Q)
    (F : ZMod Y → ℂ) :
    (∑ x : ZMod Q,
      if x.val < Y then F (x.val : ZMod Y) else 0) =
      ∑ x : ZMod Y, F x := by
  classical
  rw [doubled_sum_zmod_eq_sum_fin, doubled_sum_zmod_eq_sum_fin]
  let S : Finset (Fin Q) :=
    (Finset.univ : Finset (Fin Q)).filter fun x => x.val < Y
  calc
    (∑ x : Fin Q,
      if x.val < Y then F (x.val : ZMod Y) else 0) =
        ∑ x ∈ S, F (x.val : ZMod Y) := by
          unfold S
          rw [Finset.sum_filter]
    _ = ∑ x : Fin Y, F (x.val : ZMod Y) := by
      symm
      change
        (∑ x ∈ (Finset.univ : Finset (Fin Y)),
          F (x.val : ZMod Y)) =
          ∑ x ∈ S, F (x.val : ZMod Y)
      apply Finset.sum_bij
        (fun x _hx =>
          (⟨x.val, lt_of_lt_of_le x.isLt hYQ⟩ : Fin Q))
      · intro x hx
        simp [S]
      · intro x _hx y _hy hxy
        apply Fin.ext
        exact congrArg Fin.val hxy
      · intro y hy
        have hyY : y.val < Y := by
          simpa [S] using hy
        refine ⟨(⟨y.val, hyY⟩ : Fin Y), by simp, ?_⟩
        apply Fin.ext
        rfl
      · intro x _hx
        rfl

/-- Two-coordinate version of initial-window zero-extension reindexing. -/
private theorem sum_zmod_initial_zeroExtension₂
    {Y Q : ℕ} [NeZero Y] [NeZero Q]
    (hYQ : Y ≤ Q)
    (F : ZMod Y → ZMod Y → ℂ) :
    (∑ x : ZMod Q, ∑ y : ZMod Q,
      if x.val < Y then
        if y.val < Y then
          F (x.val : ZMod Y) (y.val : ZMod Y)
        else 0
      else 0) =
      ∑ x : ZMod Y, ∑ y : ZMod Y, F x y := by
  classical
  calc
    (∑ x : ZMod Q, ∑ y : ZMod Q,
      if x.val < Y then
        if y.val < Y then
          F (x.val : ZMod Y) (y.val : ZMod Y)
        else 0
      else 0) =
      ∑ x : ZMod Q,
        if x.val < Y then
          (∑ y : ZMod Q,
            if y.val < Y then
              F (x.val : ZMod Y) (y.val : ZMod Y)
            else 0)
        else 0 := by
          apply Fintype.sum_congr
          intro x
          by_cases hx : x.val < Y <;> simp [hx]
    _ = ∑ x : ZMod Y, ∑ y : ZMod Q,
          if y.val < Y then F x (y.val : ZMod Y) else 0 := by
      exact sum_zmod_initial_zeroExtension hYQ
        (fun x : ZMod Y =>
          ∑ y : ZMod Q,
            if y.val < Y then F x (y.val : ZMod Y) else 0)
    _ = ∑ x : ZMod Y, ∑ y : ZMod Y, F x y := by
      apply Fintype.sum_congr
      intro x
      exact sum_zmod_initial_zeroExtension hYQ (F x)

/-- Exact zero extension of the parent endpoint Möbius sequence to the doubled
cyclic group.  The arithmetic window, not the convolution kernel, carries the
finite endpoint cutoff. -/
def coreGrowingShiftEndpointDoubledMobiusZeroPad
    (j : ℕ)
    (x : CoreGrowingShiftEndpointDoubledFourierIndex j) : ℂ :=
  let Y := coreGrowingShiftEndpointFourierModulus j
  if x.val < Y then
    coreGrowingShiftEndpointMobiusZeroPad j
      (x.val : CoreGrowingShiftEndpointFourierIndex j)
  else 0

/-- Positive ordinary-difference symbol.  It is zero on the diagonal, on
reverse wrapped differences, and outside the endpoint window. -/
def coreGrowingShiftEndpointDoubledDifferenceBulkSymbol
    (j : ℕ)
    (z : CoreGrowingShiftEndpointDoubledFourierIndex j) : ℂ :=
  let Y := coreGrowingShiftEndpointFourierModulus j
  if 1 ≤ z.val ∧ z.val < Y then
    (coreGrowingShiftEndpointDifferenceBulkKernel j z.val : ℂ)
  else 0

/-- Genuine cyclic difference convolution on the doubled group. -/
def coreGrowingShiftEndpointDoubledDifferenceBulkConvolutionKernel
    (j : ℕ)
    (x y : CoreGrowingShiftEndpointDoubledFourierIndex j) : ℂ :=
  coreGrowingShiftEndpointDoubledDifferenceBulkSymbol j (y - x)

/-- Exact initial-window lift of the parent clipping correction.  This remains
an endpoint-dependent two-coordinate kernel. -/
def coreGrowingShiftEndpointDoubledPrefixClippingKernelZeroPad
    (j : ℕ)
    (x y : CoreGrowingShiftEndpointDoubledFourierIndex j) : ℂ :=
  let Y := coreGrowingShiftEndpointFourierModulus j
  if x.val < Y then
    if y.val < Y then
      coreGrowingShiftEndpointPrefixClippingKernelZeroPad j
        (x.val : CoreGrowingShiftEndpointFourierIndex j)
        (y.val : CoreGrowingShiftEndpointFourierIndex j)
    else 0
  else 0

/-- Complete doubled signed kernel: convolutional bulk minus exact clipping
lift. -/
def coreGrowingShiftEndpointDoubledDifferenceMinusClipKernelZeroPad
    (j : ℕ)
    (x y : CoreGrowingShiftEndpointDoubledFourierIndex j) : ℂ :=
  coreGrowingShiftEndpointDoubledDifferenceBulkConvolutionKernel j x y -
    coreGrowingShiftEndpointDoubledPrefixClippingKernelZeroPad j x y

/-- The doubled modulus is exactly twice the parent endpoint modulus. -/
theorem coreGrowingShiftEndpointDoubledFourierModulus_eq_two_mul
    (j : ℕ) :
    coreGrowingShiftEndpointDoubledFourierModulus j =
      2 * coreGrowingShiftEndpointFourierModulus j :=
  rfl

/-- Forward ordinary differences do not wrap in the doubled group. -/
theorem coreGrowingShiftEndpointDoubledDifference_val_of_lt
    {j : ℕ}
    {x y : CoreGrowingShiftEndpointDoubledFourierIndex j}
    (hxy : x.val < y.val) :
    (y - x).val = y.val - x.val :=
  ZMod.val_sub (Nat.le_of_lt hxy)

/-- A strict reverse difference of two endpoint-window representatives lands
in the upper half of the doubled group. -/
theorem coreGrowingShiftEndpointDoubledReverseDifference_ge_window
    {j : ℕ}
    {x y : CoreGrowingShiftEndpointDoubledFourierIndex j}
    (hxY : x.val < coreGrowingShiftEndpointFourierModulus j)
    (hyx : y.val < x.val) :
    coreGrowingShiftEndpointFourierModulus j ≤ (y - x).val := by
  have hxyne : x - y ≠ 0 := by
    rw [sub_ne_zero]
    intro hxy
    have := congrArg ZMod.val hxy
    omega
  letI : NeZero (x - y) := ⟨hxyne⟩
  rw [show y - x = -(x - y) by abel,
    ZMod.val_neg_of_ne_zero,
    ZMod.val_sub (Nat.le_of_lt hyx)]
  unfold coreGrowingShiftEndpointDoubledFourierModulus
  omega

/-- On a forward endpoint pair, the doubled symbol is literally the parent
ordinary bulk coefficient. -/
theorem coreGrowingShiftEndpointDoubledDifferenceBulkSymbol_sub_of_lt
    {j : ℕ}
    {x y : CoreGrowingShiftEndpointDoubledFourierIndex j}
    (hyY : y.val < coreGrowingShiftEndpointFourierModulus j)
    (hxy : x.val < y.val) :
    coreGrowingShiftEndpointDoubledDifferenceBulkSymbol j (y - x) =
      (coreGrowingShiftEndpointDifferenceBulkKernel
        j (y.val - x.val) : ℂ) := by
  rw [coreGrowingShiftEndpointDoubledDifference_val_of_lt hxy]
  have hpos : 1 ≤ y.val - x.val := by omega
  have hlt :
      y.val - x.val < coreGrowingShiftEndpointFourierModulus j := by
    omega
  simp [coreGrowingShiftEndpointDoubledDifferenceBulkSymbol, hpos, hlt]

/-- On a diagonal or reverse endpoint pair inside the ordinary window, the
positive-difference symbol vanishes exactly. -/
theorem coreGrowingShiftEndpointDoubledDifferenceBulkSymbol_sub_eq_zero_of_not_lt
    {j : ℕ}
    {x y : CoreGrowingShiftEndpointDoubledFourierIndex j}
    (hxY : x.val < coreGrowingShiftEndpointFourierModulus j)
    (hxy : ¬ x.val < y.val) :
    coreGrowingShiftEndpointDoubledDifferenceBulkSymbol j (y - x) = 0 := by
  by_cases heq : x.val = y.val
  · have hxy' : x = y := by
      apply ZMod.val_injective
      exact heq
    subst y
    simp [coreGrowingShiftEndpointDoubledDifferenceBulkSymbol]
  · have hyx : y.val < x.val := by omega
    have hge :=
      coreGrowingShiftEndpointDoubledReverseDifference_ge_window hxY hyx
    simp [coreGrowingShiftEndpointDoubledDifferenceBulkSymbol,
      not_lt_of_ge hge]

/-- Inside the endpoint window, the doubled clipping lift is exactly the
parent clipping kernel on canonical representatives. -/
theorem coreGrowingShiftEndpointDoubledPrefixClippingKernelZeroPad_eq_parent
    {j : ℕ}
    {x y : CoreGrowingShiftEndpointDoubledFourierIndex j}
    (hxY : x.val < coreGrowingShiftEndpointFourierModulus j)
    (hyY : y.val < coreGrowingShiftEndpointFourierModulus j) :
    coreGrowingShiftEndpointDoubledPrefixClippingKernelZeroPad j x y =
      coreGrowingShiftEndpointPrefixClippingKernelZeroPad j
        (x.val : CoreGrowingShiftEndpointFourierIndex j)
        (y.val : CoreGrowingShiftEndpointFourierIndex j) := by
  simp [coreGrowingShiftEndpointDoubledPrefixClippingKernelZeroPad,
    hxY, hyY]

/-- After multiplication by the endpoint Möbius window, the genuine doubled
convolution is exactly the parent strict triangular bulk kernel. -/
theorem coreGrowingShiftEndpointDoubledBulk_weighted_eq_parent
    {j : ℕ}
    {x y : CoreGrowingShiftEndpointDoubledFourierIndex j}
    (hxY : x.val < coreGrowingShiftEndpointFourierModulus j)
    (hyY : y.val < coreGrowingShiftEndpointFourierModulus j) :
    coreGrowingShiftEndpointDoubledMobiusZeroPad j x *
        coreGrowingShiftEndpointDoubledMobiusZeroPad j y *
        coreGrowingShiftEndpointDoubledDifferenceBulkConvolutionKernel j x y =
      coreGrowingShiftEndpointMobiusZeroPad j
          (x.val : CoreGrowingShiftEndpointFourierIndex j) *
        coreGrowingShiftEndpointMobiusZeroPad j
          (y.val : CoreGrowingShiftEndpointFourierIndex j) *
        coreGrowingShiftEndpointDifferenceBulkKernelZeroPad j
          (x.val : CoreGrowingShiftEndpointFourierIndex j)
          (y.val : CoreGrowingShiftEndpointFourierIndex j) := by
  have hxval :
      ZMod.val (x.val : CoreGrowingShiftEndpointFourierIndex j) = x.val :=
    ZMod.val_cast_of_lt hxY
  have hyval :
      ZMod.val (y.val : CoreGrowingShiftEndpointFourierIndex j) = y.val :=
    ZMod.val_cast_of_lt hyY
  by_cases hx1 : 1 ≤ x.val
  · by_cases hxy : x.val < y.val
    · rw [coreGrowingShiftEndpointDoubledDifferenceBulkSymbol_sub_of_lt
        hyY hxy]
      simp [coreGrowingShiftEndpointDoubledMobiusZeroPad,
        coreGrowingShiftEndpointDoubledDifferenceBulkConvolutionKernel,
        coreGrowingShiftEndpointDifferenceBulkKernelZeroPad,
        hxY, hyY, hxval, hyval, hx1, hxy]
    · rw [coreGrowingShiftEndpointDoubledDifferenceBulkSymbol_sub_eq_zero_of_not_lt
        hxY hxy]
      simp [coreGrowingShiftEndpointDoubledMobiusZeroPad,
        coreGrowingShiftEndpointDoubledDifferenceBulkConvolutionKernel,
        coreGrowingShiftEndpointDifferenceBulkKernelZeroPad,
        hxY, hyY, hxval, hyval, hx1, hxy]
  · have hx0 : x.val = 0 := by omega
    simp [coreGrowingShiftEndpointDoubledMobiusZeroPad,
      coreGrowingShiftEndpointMobiusZeroPad, hxY, hyY, hxval, hyval, hx0]

/-- Pointwise weighted equality with the exact initial-window zero extension of
the parent signed bulk-minus-clipping kernel. -/
theorem coreGrowingShiftEndpointDoubledDifferenceMinusClip_weighted_eq_parentExtension
    (j : ℕ)
    (x y : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointDoubledMobiusZeroPad j x *
        coreGrowingShiftEndpointDoubledMobiusZeroPad j y *
        coreGrowingShiftEndpointDoubledDifferenceMinusClipKernelZeroPad j x y =
      if x.val < coreGrowingShiftEndpointFourierModulus j then
        if y.val < coreGrowingShiftEndpointFourierModulus j then
          coreGrowingShiftEndpointMobiusZeroPad j
              (x.val : CoreGrowingShiftEndpointFourierIndex j) *
            coreGrowingShiftEndpointMobiusZeroPad j
              (y.val : CoreGrowingShiftEndpointFourierIndex j) *
            coreGrowingShiftEndpointDifferenceMinusClipKernelZeroPad j
              (x.val : CoreGrowingShiftEndpointFourierIndex j)
              (y.val : CoreGrowingShiftEndpointFourierIndex j)
        else 0
      else 0 := by
  by_cases hxY : x.val < coreGrowingShiftEndpointFourierModulus j
  · by_cases hyY : y.val < coreGrowingShiftEndpointFourierModulus j
    · rw [if_pos hxY, if_pos hyY]
      unfold coreGrowingShiftEndpointDoubledDifferenceMinusClipKernelZeroPad
        coreGrowingShiftEndpointDifferenceMinusClipKernelZeroPad
      rw [mul_sub,
        coreGrowingShiftEndpointDoubledBulk_weighted_eq_parent hxY hyY,
        coreGrowingShiftEndpointDoubledPrefixClippingKernelZeroPad_eq_parent
          hxY hyY]
      simp [coreGrowingShiftEndpointDoubledMobiusZeroPad, hxY, hyY]
      ring
    · rw [if_pos hxY, if_neg hyY]
      simp [coreGrowingShiftEndpointDoubledMobiusZeroPad, hyY]
  · rw [if_neg hxY]
    simp [coreGrowingShiftEndpointDoubledMobiusZeroPad, hxY]

/-- Parent-modulus real-space bulk packet. -/
def coreGrowingShiftSignedEndpointDifferenceBulkZeroPaddedPacketComplex
    (j : ℕ) : ℂ :=
  ∑ x : CoreGrowingShiftEndpointFourierIndex j,
    ∑ y : CoreGrowingShiftEndpointFourierIndex j,
      coreGrowingShiftEndpointMobiusZeroPad j x *
        coreGrowingShiftEndpointMobiusZeroPad j y *
          coreGrowingShiftEndpointDifferenceBulkKernelZeroPad j x y

/-- Parent-modulus real-space clipping packet. -/
def coreGrowingShiftSignedEndpointPrefixClippingZeroPaddedPacketComplex
    (j : ℕ) : ℂ :=
  ∑ x : CoreGrowingShiftEndpointFourierIndex j,
    ∑ y : CoreGrowingShiftEndpointFourierIndex j,
      coreGrowingShiftEndpointMobiusZeroPad j x *
        coreGrowingShiftEndpointMobiusZeroPad j y *
          coreGrowingShiftEndpointPrefixClippingKernelZeroPad j x y

/-- Parent-modulus real-space signed packet. -/
def coreGrowingShiftSignedEndpointDifferenceMinusClipZeroPaddedPacketComplex
    (j : ℕ) : ℂ :=
  ∑ x : CoreGrowingShiftEndpointFourierIndex j,
    ∑ y : CoreGrowingShiftEndpointFourierIndex j,
      coreGrowingShiftEndpointMobiusZeroPad j x *
        coreGrowingShiftEndpointMobiusZeroPad j y *
          coreGrowingShiftEndpointDifferenceMinusClipKernelZeroPad j x y

/-- Doubled real-space convolutional bulk packet. -/
def coreGrowingShiftSignedEndpointDoubledDifferenceBulkZeroPaddedPacketComplex
    (j : ℕ) : ℂ :=
  ∑ x : CoreGrowingShiftEndpointDoubledFourierIndex j,
    ∑ y : CoreGrowingShiftEndpointDoubledFourierIndex j,
      coreGrowingShiftEndpointDoubledMobiusZeroPad j x *
        coreGrowingShiftEndpointDoubledMobiusZeroPad j y *
          coreGrowingShiftEndpointDoubledDifferenceBulkConvolutionKernel j x y

/-- Doubled real-space exact clipping packet. -/
def coreGrowingShiftSignedEndpointDoubledPrefixClippingZeroPaddedPacketComplex
    (j : ℕ) : ℂ :=
  ∑ x : CoreGrowingShiftEndpointDoubledFourierIndex j,
    ∑ y : CoreGrowingShiftEndpointDoubledFourierIndex j,
      coreGrowingShiftEndpointDoubledMobiusZeroPad j x *
        coreGrowingShiftEndpointDoubledMobiusZeroPad j y *
          coreGrowingShiftEndpointDoubledPrefixClippingKernelZeroPad j x y

/-- Complete doubled real-space signed packet. -/
def coreGrowingShiftSignedEndpointDoubledDifferenceMinusClipZeroPaddedPacketComplex
    (j : ℕ) : ℂ :=
  ∑ x : CoreGrowingShiftEndpointDoubledFourierIndex j,
    ∑ y : CoreGrowingShiftEndpointDoubledFourierIndex j,
      coreGrowingShiftEndpointDoubledMobiusZeroPad j x *
        coreGrowingShiftEndpointDoubledMobiusZeroPad j y *
          coreGrowingShiftEndpointDoubledDifferenceMinusClipKernelZeroPad j x y

/-- Parent real-space signed packet is bulk minus clipping before any norm is
taken. -/
theorem coreGrowingShiftSignedEndpointDifferenceMinusClipZeroPaddedPacketComplex_eq_bulk_sub_clip
    (j : ℕ) :
    coreGrowingShiftSignedEndpointDifferenceMinusClipZeroPaddedPacketComplex j =
      coreGrowingShiftSignedEndpointDifferenceBulkZeroPaddedPacketComplex j -
        coreGrowingShiftSignedEndpointPrefixClippingZeroPaddedPacketComplex j := by
  unfold coreGrowingShiftSignedEndpointDifferenceMinusClipZeroPaddedPacketComplex
    coreGrowingShiftSignedEndpointDifferenceBulkZeroPaddedPacketComplex
    coreGrowingShiftSignedEndpointPrefixClippingZeroPaddedPacketComplex
    coreGrowingShiftEndpointDifferenceMinusClipKernelZeroPad
  simp_rw [mul_sub, Finset.sum_sub_distrib]
  ring

/-- Doubled real-space signed packet is bulk minus clipping before any norm is
taken. -/
theorem coreGrowingShiftSignedEndpointDoubledDifferenceMinusClipZeroPaddedPacketComplex_eq_bulk_sub_clip
    (j : ℕ) :
    coreGrowingShiftSignedEndpointDoubledDifferenceMinusClipZeroPaddedPacketComplex j =
      coreGrowingShiftSignedEndpointDoubledDifferenceBulkZeroPaddedPacketComplex j -
        coreGrowingShiftSignedEndpointDoubledPrefixClippingZeroPaddedPacketComplex j := by
  unfold coreGrowingShiftSignedEndpointDoubledDifferenceMinusClipZeroPaddedPacketComplex
    coreGrowingShiftSignedEndpointDoubledDifferenceBulkZeroPaddedPacketComplex
    coreGrowingShiftSignedEndpointDoubledPrefixClippingZeroPaddedPacketComplex
    coreGrowingShiftEndpointDoubledDifferenceMinusClipKernelZeroPad
  simp_rw [mul_sub, Finset.sum_sub_distrib]
  ring

/-- The doubled convolutional bulk bilinear form is exactly the parent strict
bulk bilinear form. -/
theorem coreGrowingShiftSignedEndpointDoubledDifferenceBulkZeroPaddedPacketComplex_eq_parent
    (j : ℕ) :
    coreGrowingShiftSignedEndpointDoubledDifferenceBulkZeroPaddedPacketComplex j =
      coreGrowingShiftSignedEndpointDifferenceBulkZeroPaddedPacketComplex j := by
  classical
  let Y := coreGrowingShiftEndpointFourierModulus j
  let Q := coreGrowingShiftEndpointDoubledFourierModulus j
  have hYQ : Y ≤ Q := by
    unfold Y Q coreGrowingShiftEndpointDoubledFourierModulus
    omega
  unfold coreGrowingShiftSignedEndpointDoubledDifferenceBulkZeroPaddedPacketComplex
    coreGrowingShiftSignedEndpointDifferenceBulkZeroPaddedPacketComplex
  calc
    (∑ x : CoreGrowingShiftEndpointDoubledFourierIndex j,
      ∑ y : CoreGrowingShiftEndpointDoubledFourierIndex j,
        coreGrowingShiftEndpointDoubledMobiusZeroPad j x *
          coreGrowingShiftEndpointDoubledMobiusZeroPad j y *
            coreGrowingShiftEndpointDoubledDifferenceBulkConvolutionKernel j x y) =
      ∑ x : CoreGrowingShiftEndpointDoubledFourierIndex j,
        ∑ y : CoreGrowingShiftEndpointDoubledFourierIndex j,
          if x.val < Y then
            if y.val < Y then
              coreGrowingShiftEndpointMobiusZeroPad j
                  (x.val : CoreGrowingShiftEndpointFourierIndex j) *
                coreGrowingShiftEndpointMobiusZeroPad j
                  (y.val : CoreGrowingShiftEndpointFourierIndex j) *
                coreGrowingShiftEndpointDifferenceBulkKernelZeroPad j
                  (x.val : CoreGrowingShiftEndpointFourierIndex j)
                  (y.val : CoreGrowingShiftEndpointFourierIndex j)
            else 0
          else 0 := by
            apply Fintype.sum_congr
            intro x
            apply Fintype.sum_congr
            intro y
            by_cases hxY : x.val < Y
            · by_cases hyY : y.val < Y
              · rw [if_pos hxY, if_pos hyY]
                exact coreGrowingShiftEndpointDoubledBulk_weighted_eq_parent
                  hxY hyY
              · rw [if_pos hxY, if_neg hyY]
                simp [coreGrowingShiftEndpointDoubledMobiusZeroPad, hyY]
            · rw [if_neg hxY]
              simp [coreGrowingShiftEndpointDoubledMobiusZeroPad, hxY]
    _ = ∑ x : CoreGrowingShiftEndpointFourierIndex j,
        ∑ y : CoreGrowingShiftEndpointFourierIndex j,
          coreGrowingShiftEndpointMobiusZeroPad j x *
            coreGrowingShiftEndpointMobiusZeroPad j y *
              coreGrowingShiftEndpointDifferenceBulkKernelZeroPad j x y := by
      exact sum_zmod_initial_zeroExtension₂ hYQ
        (fun x y =>
          coreGrowingShiftEndpointMobiusZeroPad j x *
            coreGrowingShiftEndpointMobiusZeroPad j y *
              coreGrowingShiftEndpointDifferenceBulkKernelZeroPad j x y)

/-- The doubled clipping lift changes no clipping bilinear form. -/
theorem coreGrowingShiftSignedEndpointDoubledPrefixClippingZeroPaddedPacketComplex_eq_parent
    (j : ℕ) :
    coreGrowingShiftSignedEndpointDoubledPrefixClippingZeroPaddedPacketComplex j =
      coreGrowingShiftSignedEndpointPrefixClippingZeroPaddedPacketComplex j := by
  classical
  let Y := coreGrowingShiftEndpointFourierModulus j
  let Q := coreGrowingShiftEndpointDoubledFourierModulus j
  have hYQ : Y ≤ Q := by
    unfold Y Q coreGrowingShiftEndpointDoubledFourierModulus
    omega
  unfold coreGrowingShiftSignedEndpointDoubledPrefixClippingZeroPaddedPacketComplex
    coreGrowingShiftSignedEndpointPrefixClippingZeroPaddedPacketComplex
  calc
    (∑ x : CoreGrowingShiftEndpointDoubledFourierIndex j,
      ∑ y : CoreGrowingShiftEndpointDoubledFourierIndex j,
        coreGrowingShiftEndpointDoubledMobiusZeroPad j x *
          coreGrowingShiftEndpointDoubledMobiusZeroPad j y *
            coreGrowingShiftEndpointDoubledPrefixClippingKernelZeroPad j x y) =
      ∑ x : CoreGrowingShiftEndpointDoubledFourierIndex j,
        ∑ y : CoreGrowingShiftEndpointDoubledFourierIndex j,
          if x.val < Y then
            if y.val < Y then
              coreGrowingShiftEndpointMobiusZeroPad j
                  (x.val : CoreGrowingShiftEndpointFourierIndex j) *
                coreGrowingShiftEndpointMobiusZeroPad j
                  (y.val : CoreGrowingShiftEndpointFourierIndex j) *
                coreGrowingShiftEndpointPrefixClippingKernelZeroPad j
                  (x.val : CoreGrowingShiftEndpointFourierIndex j)
                  (y.val : CoreGrowingShiftEndpointFourierIndex j)
            else 0
          else 0 := by
            apply Fintype.sum_congr
            intro x
            apply Fintype.sum_congr
            intro y
            by_cases hxY : x.val < Y <;>
              by_cases hyY : y.val < Y <;>
                simp [coreGrowingShiftEndpointDoubledMobiusZeroPad,
                  coreGrowingShiftEndpointDoubledPrefixClippingKernelZeroPad,
                  hxY, hyY]
    _ = ∑ x : CoreGrowingShiftEndpointFourierIndex j,
        ∑ y : CoreGrowingShiftEndpointFourierIndex j,
          coreGrowingShiftEndpointMobiusZeroPad j x *
            coreGrowingShiftEndpointMobiusZeroPad j y *
              coreGrowingShiftEndpointPrefixClippingKernelZeroPad j x y := by
      exact sum_zmod_initial_zeroExtension₂ hYQ
        (fun x y =>
          coreGrowingShiftEndpointMobiusZeroPad j x *
            coreGrowingShiftEndpointMobiusZeroPad j y *
              coreGrowingShiftEndpointPrefixClippingKernelZeroPad j x y)

/-- The complete doubled signed real-space packet is exactly the parent signed
real-space packet. -/
theorem coreGrowingShiftSignedEndpointDoubledDifferenceMinusClipZeroPaddedPacketComplex_eq_parent
    (j : ℕ) :
    coreGrowingShiftSignedEndpointDoubledDifferenceMinusClipZeroPaddedPacketComplex j =
      coreGrowingShiftSignedEndpointDifferenceMinusClipZeroPaddedPacketComplex j := by
  rw [coreGrowingShiftSignedEndpointDoubledDifferenceMinusClipZeroPaddedPacketComplex_eq_bulk_sub_clip,
    coreGrowingShiftSignedEndpointDoubledDifferenceBulkZeroPaddedPacketComplex_eq_parent,
    coreGrowingShiftSignedEndpointDoubledPrefixClippingZeroPaddedPacketComplex_eq_parent,
    ← coreGrowingShiftSignedEndpointDifferenceMinusClipZeroPaddedPacketComplex_eq_bulk_sub_clip]

/-- The parent direct signed packet has exactly the existing parent Fourier
representation. -/
theorem coreGrowingShiftSignedEndpointDifferenceMinusClipZeroPaddedPacketComplex_eq_fourier
    (j : ℕ) :
    coreGrowingShiftSignedEndpointDifferenceMinusClipZeroPaddedPacketComplex j =
      coreGrowingShiftSignedEndpointDifferenceMinusClipFourierPacketComplex j := by
  unfold coreGrowingShiftSignedEndpointDifferenceMinusClipZeroPaddedPacketComplex
    coreGrowingShiftSignedEndpointDifferenceMinusClipFourierPacketComplex
    coreGrowingShiftEndpointDifferenceMinusClipKernelDFT2
  exact finite_zmod_bilinear_eq_iterated_dft
    (coreGrowingShiftEndpointMobiusZeroPad j)
    (coreGrowingShiftEndpointDifferenceMinusClipKernelZeroPad j)

/-- Finite additive-character orthogonality in the exact sign convention used
by `ZMod.dft`. -/
private theorem finite_stdAddChar_neg_mul_sum
    {Q : ℕ} [NeZero Q]
    (t : ZMod Q) :
    (∑ x : ZMod Q, ZMod.stdAddChar (-(x * t))) =
      if t = 0 then (Q : ℂ) else 0 := by
  classical
  by_cases ht : t = 0
  · simp [ht, ZMod.card]
  · rw [if_neg ht]
    have hneg : -t ≠ 0 := neg_ne_zero.mpr ht
    have hzero :=
      sum_eq_zero_of_ne_one (ZMod.isPrimitive_stdAddChar Q hneg)
    simpa [neg_mul, mul_comm] using hzero

/-- Generic two-dimensional DFT of a cyclic difference kernel.  Its support is
exactly the codimension-one relation `r+s=0`. -/
theorem finiteZModDifferenceKernelDFT2_eq_frequencyDiagonal
    {Q : ℕ} [NeZero Q]
    (a : ZMod Q → ℂ)
    (r s : ZMod Q) :
    finiteZModKernelDFT2 (fun x y => a (y - x)) r s =
      if r + s = 0 then (Q : ℂ) * ZMod.dft a s else 0 := by
  classical
  have hinner (x : ZMod Q) :
      ZMod.dft (fun y => a (y - x)) s =
        ZMod.stdAddChar (-(x * s)) * ZMod.dft a s := by
    rw [ZMod.dft_apply, ZMod.dft_apply]
    simp only [smul_eq_mul]
    calc
      (∑ y : ZMod Q,
        ZMod.stdAddChar (-(y * s)) * a (y - x)) =
          ∑ z : ZMod Q,
            ZMod.stdAddChar (-((z + x) * s)) * a z := by
        refine Fintype.sum_equiv (Equiv.addRight x) _ _ ?_
        intro z
        simp
      _ = ∑ z : ZMod Q,
          ZMod.stdAddChar (-(x * s)) *
            (ZMod.stdAddChar (-(z * s)) * a z) := by
        apply Fintype.sum_congr
        intro z
        rw [add_mul, neg_add, map_add_eq_mul]
        ring
      _ = ZMod.stdAddChar (-(x * s)) *
          ∑ z : ZMod Q,
            ZMod.stdAddChar (-(z * s)) * a z := by
        rw [Finset.mul_sum]
      _ = ZMod.stdAddChar (-(x * s)) * ZMod.dft a s := by
        rfl
  unfold finiteZModKernelDFT2
  rw [ZMod.dft_apply]
  simp only [smul_eq_mul]
  simp_rw [hinner]
  calc
    (∑ x : ZMod Q,
      ZMod.stdAddChar (-(x * r)) *
        (ZMod.stdAddChar (-(x * s)) * ZMod.dft a s)) =
      (∑ x : ZMod Q,
        ZMod.stdAddChar (-(x * (r + s)))) * ZMod.dft a s := by
          rw [Finset.sum_mul]
          apply Finset.sum_congr rfl
          intro x _hx
          rw [mul_add, neg_add, map_add_eq_mul]
          ring
    _ = if r + s = 0 then (Q : ℂ) * ZMod.dft a s else 0 := by
      rw [finite_stdAddChar_neg_mul_sum]
      by_cases hrs : r + s = 0 <;> simp [hrs]

/-- Generic bilinear Fourier packet for a cyclic difference kernel collapses
from two frequencies to one. -/
theorem finite_zmod_difference_bilinear_fourier_collapse
    {Q : ℕ} [NeZero Q]
    (f a : ZMod Q → ℂ) :
    (Q : ℂ)⁻¹ * (Q : ℂ)⁻¹ *
      ∑ r : ZMod Q, ∑ s : ZMod Q,
        ZMod.dft f (-r) * ZMod.dft f (-s) *
          finiteZModKernelDFT2 (fun x y => a (y - x)) r s =
      (Q : ℂ)⁻¹ *
        ∑ s : ZMod Q,
          ZMod.dft f s * ZMod.dft f (-s) * ZMod.dft a s := by
  classical
  have hQ : (Q : ℂ) ≠ 0 := by
    exact_mod_cast (NeZero.ne Q)
  have hinner (s : ZMod Q) :
      (∑ r : ZMod Q,
        ZMod.dft f (-r) * ZMod.dft f (-s) *
          finiteZModKernelDFT2 (fun x y => a (y - x)) r s) =
        (Q : ℂ) *
          (ZMod.dft f s * ZMod.dft f (-s) * ZMod.dft a s) := by
    simp_rw [finiteZModDifferenceKernelDFT2_eq_frequencyDiagonal]
    rw [Finset.sum_eq_single (-s)]
    · simp
      ring
    · intro r _hr hrs
      have hne : r + s ≠ 0 := by
        intro hzero
        apply hrs
        have h := congrArg (fun z => z - s) hzero
        simpa using h
      simp [hne]
    · simp
  simp_rw [hinner]
  rw [← Finset.mul_sum]
  field_simp [hQ]

/-- Doubled two-dimensional DFT of the cyclic bulk. -/
def coreGrowingShiftEndpointDoubledDifferenceBulkKernelDFT2
    (j : ℕ)
    (r s : CoreGrowingShiftEndpointDoubledFourierIndex j) : ℂ :=
  finiteZModKernelDFT2
    (coreGrowingShiftEndpointDoubledDifferenceBulkConvolutionKernel j) r s

/-- Doubled two-dimensional DFT of the exact clipping lift. -/
def coreGrowingShiftEndpointDoubledPrefixClippingKernelDFT2
    (j : ℕ)
    (r s : CoreGrowingShiftEndpointDoubledFourierIndex j) : ℂ :=
  finiteZModKernelDFT2
    (coreGrowingShiftEndpointDoubledPrefixClippingKernelZeroPad j) r s

/-- The doubled bulk DFT is supported exactly on `r+s=0`. -/
theorem coreGrowingShiftEndpointDoubledDifferenceBulkKernelDFT2_eq_frequencyDiagonal
    (j : ℕ)
    (r s : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointDoubledDifferenceBulkKernelDFT2 j r s =
      if r + s = 0 then
        (coreGrowingShiftEndpointDoubledFourierModulus j : ℂ) *
          ZMod.dft
            (coreGrowingShiftEndpointDoubledDifferenceBulkSymbol j) s
      else 0 := by
  unfold coreGrowingShiftEndpointDoubledDifferenceBulkKernelDFT2
    coreGrowingShiftEndpointDoubledDifferenceBulkConvolutionKernel
  exact finiteZModDifferenceKernelDFT2_eq_frequencyDiagonal
    (coreGrowingShiftEndpointDoubledDifferenceBulkSymbol j) r s

/-- Full two-frequency Fourier packet for the doubled cyclic bulk. -/
def coreGrowingShiftSignedEndpointDoubledDifferenceBulkFourierPacketComplex
    (j : ℕ) : ℂ :=
  let Q := coreGrowingShiftEndpointDoubledFourierModulus j
  (Q : ℂ)⁻¹ * (Q : ℂ)⁻¹ *
    ∑ r : CoreGrowingShiftEndpointDoubledFourierIndex j,
      ∑ s : CoreGrowingShiftEndpointDoubledFourierIndex j,
        ZMod.dft (coreGrowingShiftEndpointDoubledMobiusZeroPad j) (-r) *
          ZMod.dft (coreGrowingShiftEndpointDoubledMobiusZeroPad j) (-s) *
            coreGrowingShiftEndpointDoubledDifferenceBulkKernelDFT2 j r s

/-- Full two-frequency Fourier packet for the doubled clipping lift. -/
def coreGrowingShiftSignedEndpointDoubledPrefixClippingFourierPacketComplex
    (j : ℕ) : ℂ :=
  let Q := coreGrowingShiftEndpointDoubledFourierModulus j
  (Q : ℂ)⁻¹ * (Q : ℂ)⁻¹ *
    ∑ r : CoreGrowingShiftEndpointDoubledFourierIndex j,
      ∑ s : CoreGrowingShiftEndpointDoubledFourierIndex j,
        ZMod.dft (coreGrowingShiftEndpointDoubledMobiusZeroPad j) (-r) *
          ZMod.dft (coreGrowingShiftEndpointDoubledMobiusZeroPad j) (-s) *
            coreGrowingShiftEndpointDoubledPrefixClippingKernelDFT2 j r s

/-- Collapsed one-frequency bulk packet.  No positivity is asserted: the
remaining bulk multiplier is the signed complex DFT of the bulk symbol. -/
def coreGrowingShiftSignedEndpointDoubledDifferenceBulkOneFrequencyPacketComplex
    (j : ℕ) : ℂ :=
  let Q := coreGrowingShiftEndpointDoubledFourierModulus j
  (Q : ℂ)⁻¹ *
    ∑ s : CoreGrowingShiftEndpointDoubledFourierIndex j,
      ZMod.dft (coreGrowingShiftEndpointDoubledMobiusZeroPad j) s *
        ZMod.dft (coreGrowingShiftEndpointDoubledMobiusZeroPad j) (-s) *
          ZMod.dft
            (coreGrowingShiftEndpointDoubledDifferenceBulkSymbol j) s

/-- Exact collapse of the doubled bulk packet to one frequency. -/
theorem coreGrowingShiftSignedEndpointDoubledDifferenceBulkFourierPacketComplex_eq_oneFrequency
    (j : ℕ) :
    coreGrowingShiftSignedEndpointDoubledDifferenceBulkFourierPacketComplex j =
      coreGrowingShiftSignedEndpointDoubledDifferenceBulkOneFrequencyPacketComplex j := by
  unfold coreGrowingShiftSignedEndpointDoubledDifferenceBulkFourierPacketComplex
    coreGrowingShiftSignedEndpointDoubledDifferenceBulkOneFrequencyPacketComplex
    coreGrowingShiftEndpointDoubledDifferenceBulkKernelDFT2
    coreGrowingShiftEndpointDoubledDifferenceBulkConvolutionKernel
  exact finite_zmod_difference_bilinear_fourier_collapse
    (coreGrowingShiftEndpointDoubledMobiusZeroPad j)
    (coreGrowingShiftEndpointDoubledDifferenceBulkSymbol j)

/-- Exact Fourier representation of the doubled bulk bilinear form. -/
theorem coreGrowingShiftSignedEndpointDoubledDifferenceBulkZeroPaddedPacketComplex_eq_fourier
    (j : ℕ) :
    coreGrowingShiftSignedEndpointDoubledDifferenceBulkZeroPaddedPacketComplex j =
      coreGrowingShiftSignedEndpointDoubledDifferenceBulkFourierPacketComplex j := by
  unfold coreGrowingShiftSignedEndpointDoubledDifferenceBulkZeroPaddedPacketComplex
    coreGrowingShiftSignedEndpointDoubledDifferenceBulkFourierPacketComplex
    coreGrowingShiftEndpointDoubledDifferenceBulkKernelDFT2
  exact finite_zmod_bilinear_eq_iterated_dft
    (coreGrowingShiftEndpointDoubledMobiusZeroPad j)
    (coreGrowingShiftEndpointDoubledDifferenceBulkConvolutionKernel j)

/-- Exact Fourier representation of the doubled clipping bilinear form. -/
theorem coreGrowingShiftSignedEndpointDoubledPrefixClippingZeroPaddedPacketComplex_eq_fourier
    (j : ℕ) :
    coreGrowingShiftSignedEndpointDoubledPrefixClippingZeroPaddedPacketComplex j =
      coreGrowingShiftSignedEndpointDoubledPrefixClippingFourierPacketComplex j := by
  unfold coreGrowingShiftSignedEndpointDoubledPrefixClippingZeroPaddedPacketComplex
    coreGrowingShiftSignedEndpointDoubledPrefixClippingFourierPacketComplex
    coreGrowingShiftEndpointDoubledPrefixClippingKernelDFT2
  exact finite_zmod_bilinear_eq_iterated_dft
    (coreGrowingShiftEndpointDoubledMobiusZeroPad j)
    (coreGrowingShiftEndpointDoubledPrefixClippingKernelZeroPad j)

/-- Complete deterministic endpoint packet: one-frequency cyclic bulk minus
the unchanged two-frequency clipping correction. -/
def coreGrowingShiftSignedEndpointDoubledConvolutionFourierPacketComplex
    (j : ℕ) : ℂ :=
  coreGrowingShiftSignedEndpointDoubledDifferenceBulkOneFrequencyPacketComplex j -
    coreGrowingShiftSignedEndpointDoubledPrefixClippingFourierPacketComplex j

/-- The collapsed doubled packet is exactly the parent signed
bulk-minus-clipping packet. -/
theorem coreGrowingShiftSignedEndpointDoubledConvolutionFourierPacketComplex_eq_parent
    (j : ℕ) :
    coreGrowingShiftSignedEndpointDoubledConvolutionFourierPacketComplex j =
      coreGrowingShiftSignedEndpointDifferenceMinusClipFourierPacketComplex j := by
  calc
    coreGrowingShiftSignedEndpointDoubledConvolutionFourierPacketComplex j =
      coreGrowingShiftSignedEndpointDoubledDifferenceBulkFourierPacketComplex j -
        coreGrowingShiftSignedEndpointDoubledPrefixClippingFourierPacketComplex j := by
          unfold coreGrowingShiftSignedEndpointDoubledConvolutionFourierPacketComplex
          rw [coreGrowingShiftSignedEndpointDoubledDifferenceBulkFourierPacketComplex_eq_oneFrequency]
    _ = coreGrowingShiftSignedEndpointDoubledDifferenceBulkZeroPaddedPacketComplex j -
        coreGrowingShiftSignedEndpointDoubledPrefixClippingZeroPaddedPacketComplex j := by
          rw [coreGrowingShiftSignedEndpointDoubledDifferenceBulkZeroPaddedPacketComplex_eq_fourier,
            coreGrowingShiftSignedEndpointDoubledPrefixClippingZeroPaddedPacketComplex_eq_fourier]
    _ = coreGrowingShiftSignedEndpointDoubledDifferenceMinusClipZeroPaddedPacketComplex j := by
          rw [coreGrowingShiftSignedEndpointDoubledDifferenceMinusClipZeroPaddedPacketComplex_eq_bulk_sub_clip]
    _ = coreGrowingShiftSignedEndpointDifferenceMinusClipZeroPaddedPacketComplex j :=
          coreGrowingShiftSignedEndpointDoubledDifferenceMinusClipZeroPaddedPacketComplex_eq_parent j
    _ = coreGrowingShiftSignedEndpointDifferenceMinusClipFourierPacketComplex j :=
          coreGrowingShiftSignedEndpointDifferenceMinusClipZeroPaddedPacketComplex_eq_fourier j

/-- The complete collapsed doubled packet is real because it is exactly the
parent real packet after the complete signed bulk/clipping combination. -/
theorem coreGrowingShiftSignedEndpointDoubledConvolutionFourierPacketComplex_im
    (j : ℕ) :
    (coreGrowingShiftSignedEndpointDoubledConvolutionFourierPacketComplex j).im = 0 := by
  rw [coreGrowingShiftSignedEndpointDoubledConvolutionFourierPacketComplex_eq_parent,
    coreGrowingShiftSignedEndpointDifferenceMinusClipFourierPacketComplex_im]

/-- Real one-frequency-bulk-minus-two-frequency-clipping packet. -/
def coreGrowingShiftSignedEndpointDoubledConvolutionFourierPacket
    (j : ℕ) : ℝ :=
  (coreGrowingShiftSignedEndpointDoubledConvolutionFourierPacketComplex j).re

/-- Exact equality with the parent real signed packet. -/
theorem coreGrowingShiftSignedEndpointDoubledConvolutionFourierPacket_eq_parent
    (j : ℕ) :
    coreGrowingShiftSignedEndpointDoubledConvolutionFourierPacket j =
      coreGrowingShiftSignedEndpointDifferenceMinusClipFourierPacket j := by
  unfold coreGrowingShiftSignedEndpointDoubledConvolutionFourierPacket
    coreGrowingShiftSignedEndpointDifferenceMinusClipFourierPacket
  rw [coreGrowingShiftSignedEndpointDoubledConvolutionFourierPacketComplex_eq_parent]

/-- Exact RH-facing return through the doubled cyclic convolution packet. -/
theorem coreGrowingShiftFirstDifferencePacket_eq_two_mul_endpointDoubledConvolutionFourier
    (j : ℕ) :
    coreGrowingShiftFirstDifferencePacket j =
      2 * coreGrowingShiftSignedEndpointDoubledConvolutionFourierPacket j := by
  rw [coreGrowingShiftFirstDifferencePacket_eq_two_mul_endpointDifferenceMinusClipFourier,
    ← coreGrowingShiftSignedEndpointDoubledConvolutionFourierPacket_eq_parent]

/-- Source-facing all-scale condition on the complete collapsed doubled
packet. -/
def SubpolynomialCoreGrowingShiftSignedEndpointDoubledConvolutionFourierPacket : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      2 * coreGrowingShiftSignedEndpointDoubledConvolutionFourierPacket j ≤
        C * (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- Exact equivalence with the parent signed difference-minus-clipping source. -/
theorem subpolynomialCoreGrowingShiftSignedEndpointDoubledConvolutionFourierPacket_iff_parent :
    SubpolynomialCoreGrowingShiftSignedEndpointDoubledConvolutionFourierPacket ↔
      SubpolynomialCoreGrowingShiftSignedEndpointDifferenceMinusClipFourierPacket := by
  constructor
  · intro hDoubled δ hδ
    obtain ⟨C, hC, hbound⟩ := hDoubled δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [← coreGrowingShiftSignedEndpointDoubledConvolutionFourierPacket_eq_parent]
    exact hbound j
  · intro hParent δ hδ
    obtain ⟨C, hC, hbound⟩ := hParent δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [coreGrowingShiftSignedEndpointDoubledConvolutionFourierPacket_eq_parent]
    exact hbound j

/-- Conditional RH endpoint stated on the exact doubled-convolution packet. -/
theorem riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointDoubledConvolutionFourierPacket
    (hDoubled :
      SubpolynomialCoreGrowingShiftSignedEndpointDoubledConvolutionFourierPacket) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointDifferenceMinusClipFourierPacket
    (subpolynomialCoreGrowingShiftSignedEndpointDoubledConvolutionFourierPacket_iff_parent.mp
      hDoubled)

/-- Source profile for an analytic theorem on the exact collapsed packet. -/
structure SignedEndpointDoubledConvolutionFourierSource where
  sourceStatement : Prop
  doubledModulusNoWrap : Prop
  exactWindowZeroExtension : Prop
  cyclicBulkConvolution : Prop
  bulkFrequencyDiagonalSupport : Prop
  clippingLiftPreservation : Prop
  dftSignNormalization : Prop
  lowAnchorPreservation : Prop
  signedBulkMultiplierPreservation : Prop
  jointBulkClipSignedCancellation : Prop
  allScaleUniformity : Prop
  finiteSmallScaleControl : Prop

/-- Proof-producing boundary for a future estimate of the complete collapsed
packet.  The clipping term is not discarded and the bulk multiplier is not
replaced by its absolute value. -/
structure ToCoreGrowingShiftSignedEndpointDoubledConvolutionFourierPacket
    (d : SignedEndpointDoubledConvolutionFourierSource) : Type where
  toDoubledConvolution :
    d.sourceStatement →
      d.doubledModulusNoWrap →
      d.exactWindowZeroExtension →
      d.cyclicBulkConvolution →
      d.bulkFrequencyDiagonalSupport →
      d.clippingLiftPreservation →
      d.dftSignNormalization →
      d.lowAnchorPreservation →
      d.signedBulkMultiplierPreservation →
      d.jointBulkClipSignedCancellation →
      d.allScaleUniformity →
      d.finiteSmallScaleControl →
      SubpolynomialCoreGrowingShiftSignedEndpointDoubledConvolutionFourierPacket

/-- Generic conditional endpoint through an explicitly constructed doubled
convolution adapter. -/
theorem riemannHypothesis_of_signedEndpointDoubledConvolutionFourierAdapter
    (d : SignedEndpointDoubledConvolutionFourierSource)
    (bridge : ToCoreGrowingShiftSignedEndpointDoubledConvolutionFourierPacket d)
    (hsource : d.sourceStatement)
    (hnowrap : d.doubledModulusNoWrap)
    (hwindow : d.exactWindowZeroExtension)
    (hconvolution : d.cyclicBulkConvolution)
    (hdiagonal : d.bulkFrequencyDiagonalSupport)
    (hclip : d.clippingLiftPreservation)
    (hsign : d.dftSignNormalization)
    (hanchor : d.lowAnchorPreservation)
    (hmultiplier : d.signedBulkMultiplierPreservation)
    (hjoint : d.jointBulkClipSignedCancellation)
    (huniform : d.allScaleUniformity)
    (hsmall : d.finiteSmallScaleControl) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointDoubledConvolutionFourierPacket
    (bridge.toDoubledConvolution hsource hnowrap hwindow hconvolution
      hdiagonal hclip hsign hanchor hmultiplier hjoint huniform hsmall)

/-- Hostile control: diagonalizing the bulk does not justify discarding the
clipping correction or taking separate absolute values. -/
theorem signedEndpointDoubledConvolutionCancellation_hostileWitness :
    ((1 : ℂ) - (1 : ℂ)) = 0 ∧
      ‖(1 : ℂ)‖ + ‖(1 : ℂ)‖ = 2 := by
  norm_num

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointDoubledReverseDifference_ge_window
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftSignedEndpointDoubledDifferenceBulkZeroPaddedPacketComplex_eq_parent
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.finiteZModDifferenceKernelDFT2_eq_frequencyDiagonal
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.finite_zmod_difference_bilinear_fourier_collapse
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftSignedEndpointDoubledConvolutionFourierPacketComplex_eq_parent
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointDoubledConvolutionFourierPacket