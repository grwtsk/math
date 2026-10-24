/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #904. Parent: draft PR #888 at
`4a2750ae0d7f4a07561bcdf6f9b1e3933cd89f52`.
-/
import GRWTSK.NumberTheory.Moebius.CoreGrowingShiftSignedEndpointDoubledConvolutionFourier

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open AddChar

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- The exact ordinary increment of the left-endpoint clipping coefficient.
It is one inherited staircase coefficient precisely while the moving upper
endpoint crosses the full difference interval. -/
def coreGrowingShiftEndpointPrefixClippingIncrementKernel
    (j n h : ℕ) : ℝ :=
  if coreGrowingShiftEndpointDifferencePrefixLower j h ≤ n ∧
      n < coreGrowingShiftEndpointDifferencePrefixUpper j h then
    coreGrowingShiftSignedStaircaseWeight j n h
  else 0

/-- The difference-only lower clipping cutoff is at least two. -/
theorem coreGrowingShiftEndpointDifferencePrefixLower_two_le
    (j h : ℕ) :
    2 ≤ coreGrowingShiftEndpointDifferencePrefixLower j h := by
  have hH : 1 ≤ logarithmicShiftThreshold j := by
    unfold logarithmicShiftThreshold
    omega
  unfold coreGrowingShiftEndpointDifferencePrefixLower
  exact le_trans (by omega)
    (le_max_left (logarithmicShiftThreshold j + 1) (2 ^ j - h))

/-- The clipping coefficient vanishes at the cyclic origin. -/
theorem coreGrowingShiftEndpointPrefixClippingKernel_zero
    (j h : ℕ) :
    coreGrowingShiftEndpointPrefixClippingKernel j 0 h = 0 := by
  apply coreGrowingShiftEndpointPrefixClippingKernel_eq_zero
  exact Nat.zero_le _

/-- The clipping coefficient also vanishes at the first positive endpoint. -/
theorem coreGrowingShiftEndpointPrefixClippingKernel_one
    (j h : ℕ) :
    coreGrowingShiftEndpointPrefixClippingKernel j 1 h = 0 := by
  apply coreGrowingShiftEndpointPrefixClippingKernel_eq_zero
  exact le_trans (by omega)
    (coreGrowingShiftEndpointDifferencePrefixLower_two_le j h)

/-- Exact ordinary successor difference of the clipping coefficient. -/
theorem coreGrowingShiftEndpointPrefixClippingKernel_succ_sub
    (j n h : ℕ) :
    coreGrowingShiftEndpointPrefixClippingKernel j (n + 1) h -
        coreGrowingShiftEndpointPrefixClippingKernel j n h =
      coreGrowingShiftEndpointPrefixClippingIncrementKernel j n h := by
  let D := coreGrowingShiftEndpointDifferencePrefixLower j h
  let U := coreGrowingShiftEndpointDifferencePrefixUpper j h
  unfold coreGrowingShiftEndpointPrefixClippingKernel
  rw [← coreGrowingShiftEndpointIntervalSum_eq_closed,
    ← coreGrowingShiftEndpointIntervalSum_eq_closed]
  change
    (∑ N ∈ Finset.Ico D (min (n + 1) U),
      coreGrowingShiftSignedStaircaseWeight j N h) -
      (∑ N ∈ Finset.Ico D (min n U),
        coreGrowingShiftSignedStaircaseWeight j N h) =
      coreGrowingShiftEndpointPrefixClippingIncrementKernel j n h
  by_cases hDn : D ≤ n
  · by_cases hnU : n < U
    · have hminn : min n U = n := min_eq_left (Nat.le_of_lt hnU)
      have hminsucc : min (n + 1) U = n + 1 :=
        min_eq_left (by omega)
      rw [hminn, hminsucc, Finset.sum_Ico_succ_top hDn]
      simp [coreGrowingShiftEndpointPrefixClippingIncrementKernel,
        D, U, hDn, hnU]
    · have hUn : U ≤ n := Nat.le_of_not_gt hnU
      have hminn : min n U = U := min_eq_right hUn
      have hminsucc : min (n + 1) U = U :=
        min_eq_right (by omega)
      rw [hminn, hminsucc]
      simp [coreGrowingShiftEndpointPrefixClippingIncrementKernel,
        D, U, hnU]
  · have hnD : n < D := Nat.lt_of_not_ge hDn
    have hE0 : Finset.Ico D (min n U) = ∅ := by
      apply Finset.Ico_eq_empty_iff.mpr
      omega
    have hE1 : Finset.Ico D (min (n + 1) U) = ∅ := by
      apply Finset.Ico_eq_empty_iff.mpr
      omega
    rw [hE0, hE1]
    simp [coreGrowingShiftEndpointPrefixClippingIncrementKernel,
      D, U, hDn]

/-- Ordinary sheared clipping coefficient with the exact strict endpoint
window imposed in `(n,h)` coordinates. -/
def coreGrowingShiftEndpointShearedPrefixClippingKernelNatZeroPad
    (j n h : ℕ) : ℂ :=
  let Y := coreGrowingShiftEndpointFourierModulus j
  if 1 ≤ n ∧ 1 ≤ h ∧ n + h < Y then
    (coreGrowingShiftEndpointPrefixClippingKernel j n h : ℂ)
  else 0

/-- Interior ordinary clipping increment in sheared coordinates. -/
def coreGrowingShiftEndpointShearedPrefixClippingIncrementNatZeroPad
    (j n h : ℕ) : ℂ :=
  let Y := coreGrowingShiftEndpointFourierModulus j
  if 1 ≤ n ∧ 1 ≤ h ∧ n + h + 1 < Y then
    (coreGrowingShiftEndpointPrefixClippingIncrementKernel j n h : ℂ)
  else 0

/-- Explicit right-window atom created by zero-padding the sheared clipping
coefficient at `n+h=Y-1`. -/
def coreGrowingShiftEndpointShearedPrefixClippingRightBoundaryNatZeroPad
    (j n h : ℕ) : ℂ :=
  let Y := coreGrowingShiftEndpointFourierModulus j
  if 1 ≤ n ∧ 1 ≤ h ∧ n + h + 1 = Y then
    -(coreGrowingShiftEndpointPrefixClippingKernel j n h : ℂ)
  else 0

/-- The ordinary forward difference of the strict sheared clipping kernel is
exactly its interior staircase increment plus its right-window boundary atom. -/
theorem coreGrowingShiftEndpointShearedPrefixClippingNat_forwardDifference
    (j n h : ℕ) :
    coreGrowingShiftEndpointShearedPrefixClippingKernelNatZeroPad j (n + 1) h -
        coreGrowingShiftEndpointShearedPrefixClippingKernelNatZeroPad j n h =
      coreGrowingShiftEndpointShearedPrefixClippingIncrementNatZeroPad j n h +
        coreGrowingShiftEndpointShearedPrefixClippingRightBoundaryNatZeroPad
          j n h := by
  let Y := coreGrowingShiftEndpointFourierModulus j
  by_cases hn : 1 ≤ n
  · by_cases hh : 1 ≤ h
    · by_cases hinterior : n + h + 1 < Y
      · have hnow : n + h < Y := by omega
        have hnext : n + 1 + h < Y := by omega
        simp [coreGrowingShiftEndpointShearedPrefixClippingKernelNatZeroPad,
          coreGrowingShiftEndpointShearedPrefixClippingIncrementNatZeroPad,
          coreGrowingShiftEndpointShearedPrefixClippingRightBoundaryNatZeroPad,
          Y, hn, hh, hnow, hnext, hinterior,
          coreGrowingShiftEndpointPrefixClippingKernel_succ_sub]
      · by_cases hboundary : n + h + 1 = Y
        · have hnow : n + h < Y := by omega
          have hnext : ¬ n + 1 + h < Y := by omega
          simp [coreGrowingShiftEndpointShearedPrefixClippingKernelNatZeroPad,
            coreGrowingShiftEndpointShearedPrefixClippingIncrementNatZeroPad,
            coreGrowingShiftEndpointShearedPrefixClippingRightBoundaryNatZeroPad,
            Y, hn, hh, hnow, hnext, hinterior, hboundary]
        · have hnow : ¬ n + h < Y := by omega
          have hnext : ¬ n + 1 + h < Y := by omega
          simp [coreGrowingShiftEndpointShearedPrefixClippingKernelNatZeroPad,
            coreGrowingShiftEndpointShearedPrefixClippingIncrementNatZeroPad,
            coreGrowingShiftEndpointShearedPrefixClippingRightBoundaryNatZeroPad,
            Y, hn, hh, hnow, hnext, hinterior, hboundary]
    · simp [coreGrowingShiftEndpointShearedPrefixClippingKernelNatZeroPad,
        coreGrowingShiftEndpointShearedPrefixClippingIncrementNatZeroPad,
        coreGrowingShiftEndpointShearedPrefixClippingRightBoundaryNatZeroPad,
        Y, hh]
  · have hn0 : n = 0 := by omega
    subst n
    simp [coreGrowingShiftEndpointShearedPrefixClippingKernelNatZeroPad,
      coreGrowingShiftEndpointShearedPrefixClippingIncrementNatZeroPad,
      coreGrowingShiftEndpointShearedPrefixClippingRightBoundaryNatZeroPad,
      Y, coreGrowingShiftEndpointPrefixClippingKernel_one,
      coreGrowingShiftEndpointPrefixClippingKernel_zero]

/-- Strict sheared clipping kernel on the doubled cyclic group. -/
def coreGrowingShiftEndpointDoubledShearedPrefixClippingKernelZeroPad
    (j : ℕ)
    (x h : CoreGrowingShiftEndpointDoubledFourierIndex j) : ℂ :=
  coreGrowingShiftEndpointShearedPrefixClippingKernelNatZeroPad
    j x.val h.val

/-- Doubled zero-padding of the ordinary interior clipping increment. -/
def coreGrowingShiftEndpointDoubledShearedPrefixClippingIncrementZeroPad
    (j : ℕ)
    (x h : CoreGrowingShiftEndpointDoubledFourierIndex j) : ℂ :=
  coreGrowingShiftEndpointShearedPrefixClippingIncrementNatZeroPad
    j x.val h.val

/-- Doubled right-window boundary atom in sheared coordinates. -/
def coreGrowingShiftEndpointDoubledShearedPrefixClippingRightBoundaryZeroPad
    (j : ℕ)
    (x h : CoreGrowingShiftEndpointDoubledFourierIndex j) : ℂ :=
  coreGrowingShiftEndpointShearedPrefixClippingRightBoundaryNatZeroPad
    j x.val h.val

/-- Cyclic forward difference in the left-endpoint coordinate. -/
def coreGrowingShiftEndpointDoubledShearedPrefixClippingForwardDifference
    (j : ℕ)
    (x h : CoreGrowingShiftEndpointDoubledFourierIndex j) : ℂ :=
  coreGrowingShiftEndpointDoubledShearedPrefixClippingKernelZeroPad j (x + 1) h -
    coreGrowingShiftEndpointDoubledShearedPrefixClippingKernelZeroPad j x h

/-- The doubled modulus has at least two elements. -/
theorem coreGrowingShiftEndpointDoubledFourierModulus_two_le
    (j : ℕ) :
    2 ≤ coreGrowingShiftEndpointDoubledFourierModulus j := by
  unfold coreGrowingShiftEndpointDoubledFourierModulus
    coreGrowingShiftEndpointFourierModulus
  positivity

/-- Exact canonical representative of cyclic successor on the doubled group. -/
theorem coreGrowingShiftEndpointDoubled_val_add_one
    (j : ℕ)
    (x : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    (x + 1).val =
      if x.val + 1 < coreGrowingShiftEndpointDoubledFourierModulus j then
        x.val + 1
      else 0 := by
  let Q := coreGrowingShiftEndpointDoubledFourierModulus j
  have hQ : 1 < Q := by
    exact coreGrowingShiftEndpointDoubledFourierModulus_two_le j
  have hone : (1 : ZMod Q).val = 1 := by
    rw [ZMod.val_natCast]
    exact Nat.mod_eq_of_lt hQ
  rw [ZMod.val_add, hone]
  by_cases hx : x.val + 1 < Q
  · rw [if_pos hx, Nat.mod_eq_of_lt hx]
  · rw [if_neg hx]
    have hxlt := ZMod.val_lt x
    have heq : x.val + 1 = Q := by omega
    rw [heq, Nat.mod_self]

/-- The cyclic forward difference has exactly the ordinary interior increment
and the explicit right-window boundary atom.  There is no left boundary atom. -/
theorem coreGrowingShiftEndpointDoubledShearedPrefixClippingForwardDifference_eq_increment_add_boundary
    (j : ℕ)
    (x h : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointDoubledShearedPrefixClippingForwardDifference j x h =
      coreGrowingShiftEndpointDoubledShearedPrefixClippingIncrementZeroPad j x h +
        coreGrowingShiftEndpointDoubledShearedPrefixClippingRightBoundaryZeroPad
          j x h := by
  unfold coreGrowingShiftEndpointDoubledShearedPrefixClippingForwardDifference
    coreGrowingShiftEndpointDoubledShearedPrefixClippingKernelZeroPad
    coreGrowingShiftEndpointDoubledShearedPrefixClippingIncrementZeroPad
    coreGrowingShiftEndpointDoubledShearedPrefixClippingRightBoundaryZeroPad
  rw [coreGrowingShiftEndpointDoubled_val_add_one]
  by_cases hx :
      x.val + 1 < coreGrowingShiftEndpointDoubledFourierModulus j
  · rw [if_pos hx]
    exact coreGrowingShiftEndpointShearedPrefixClippingNat_forwardDifference
      j x.val h.val
  · rw [if_neg hx]
    have hxlt := ZMod.val_lt x
    have hxQ :
        x.val + 1 = coreGrowingShiftEndpointDoubledFourierModulus j := by
      omega
    have hxY : coreGrowingShiftEndpointFourierModulus j ≤ x.val := by
      unfold coreGrowingShiftEndpointDoubledFourierModulus at hxQ
      omega
    simp [coreGrowingShiftEndpointShearedPrefixClippingKernelNatZeroPad,
      coreGrowingShiftEndpointShearedPrefixClippingIncrementNatZeroPad,
      coreGrowingShiftEndpointShearedPrefixClippingRightBoundaryNatZeroPad,
      hxY]

/-- The exact doubled clipping lift is the inverse shear of the strict
`(x,h)` clipping kernel. -/
theorem coreGrowingShiftEndpointDoubledPrefixClippingKernelZeroPad_eq_shear
    (j : ℕ)
    (x y : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointDoubledPrefixClippingKernelZeroPad j x y =
      coreGrowingShiftEndpointDoubledShearedPrefixClippingKernelZeroPad
        j x (y - x) := by
  let Y := coreGrowingShiftEndpointFourierModulus j
  by_cases hxY : x.val < Y
  · by_cases hyY : y.val < Y
    · by_cases hx1 : 1 ≤ x.val
      · by_cases hxy : x.val < y.val
        · have hdiff :=
            coreGrowingShiftEndpointDoubledDifference_val_of_lt hxy
          have hpos : 1 ≤ (y - x).val := by omega
          have hsum : x.val + (y - x).val = y.val := by omega
          have hxval :
              ZMod.val (x.val : CoreGrowingShiftEndpointFourierIndex j) =
                x.val := ZMod.val_cast_of_lt hxY
          have hyval :
              ZMod.val (y.val : CoreGrowingShiftEndpointFourierIndex j) =
                y.val := ZMod.val_cast_of_lt hyY
          simp [coreGrowingShiftEndpointDoubledPrefixClippingKernelZeroPad,
            coreGrowingShiftEndpointPrefixClippingKernelZeroPad,
            coreGrowingShiftEndpointDoubledShearedPrefixClippingKernelZeroPad,
            coreGrowingShiftEndpointShearedPrefixClippingKernelNatZeroPad,
            Y, hxY, hyY, hx1, hxy, hdiff, hpos, hsum, hxval, hyval]
        · by_cases heq : x.val = y.val
          · have hxy' : x = y := ZMod.val_injective heq
            subst y
            simp [coreGrowingShiftEndpointDoubledPrefixClippingKernelZeroPad,
              coreGrowingShiftEndpointPrefixClippingKernelZeroPad,
              coreGrowingShiftEndpointDoubledShearedPrefixClippingKernelZeroPad,
              coreGrowingShiftEndpointShearedPrefixClippingKernelNatZeroPad,
              Y, hxY, hx1]
          · have hyx : y.val < x.val := by omega
            have hge :=
              coreGrowingShiftEndpointDoubledReverseDifference_ge_window
                hxY hyx
            simp [coreGrowingShiftEndpointDoubledPrefixClippingKernelZeroPad,
              coreGrowingShiftEndpointPrefixClippingKernelZeroPad,
              coreGrowingShiftEndpointDoubledShearedPrefixClippingKernelZeroPad,
              coreGrowingShiftEndpointShearedPrefixClippingKernelNatZeroPad,
              Y, hxY, hyY, hx1, hxy, hge]
      · have hx0 : x.val = 0 := by omega
        simp [coreGrowingShiftEndpointDoubledPrefixClippingKernelZeroPad,
          coreGrowingShiftEndpointPrefixClippingKernelZeroPad,
          coreGrowingShiftEndpointDoubledShearedPrefixClippingKernelZeroPad,
          coreGrowingShiftEndpointShearedPrefixClippingKernelNatZeroPad,
          Y, hxY, hyY, hx0]
    · by_cases hxy : x.val < y.val
      · have hdiff :=
          coreGrowingShiftEndpointDoubledDifference_val_of_lt hxy
        have hsum : x.val + (y - x).val = y.val := by omega
        simp [coreGrowingShiftEndpointDoubledPrefixClippingKernelZeroPad,
          coreGrowingShiftEndpointDoubledShearedPrefixClippingKernelZeroPad,
          coreGrowingShiftEndpointShearedPrefixClippingKernelNatZeroPad,
          Y, hxY, hyY, hdiff, hsum]
      · have hyx : y.val ≤ x.val := Nat.le_of_not_gt hxy
        have hnot : ¬ x.val + (y - x).val < Y := by
          by_cases heq : x.val = y.val
          · have hxy' : x = y := ZMod.val_injective heq
            subst y
            simp
          · have hyx' : y.val < x.val := by omega
            have hge :=
              coreGrowingShiftEndpointDoubledReverseDifference_ge_window
                hxY hyx'
            omega
        simp [coreGrowingShiftEndpointDoubledPrefixClippingKernelZeroPad,
          coreGrowingShiftEndpointDoubledShearedPrefixClippingKernelZeroPad,
          coreGrowingShiftEndpointShearedPrefixClippingKernelNatZeroPad,
          Y, hxY, hyY, hnot]
  · have hnot :
        ¬ 1 ≤ x.val ∧ 1 ≤ (y - x).val ∧
          x.val + (y - x).val < Y := by omega
    simp [coreGrowingShiftEndpointDoubledPrefixClippingKernelZeroPad,
      coreGrowingShiftEndpointDoubledShearedPrefixClippingKernelZeroPad,
      coreGrowingShiftEndpointShearedPrefixClippingKernelNatZeroPad,
      Y, hxY, hnot]

/-- Generic finite shear theorem.  Under Mathlib's DFT sign convention, the
left-endpoint frequency is the transverse sum `r+s`. -/
theorem finiteZModKernelDFT2_shear
    {Q : ℕ} [NeZero Q]
    (C : ZMod Q → ZMod Q → ℂ)
    (r s : ZMod Q) :
    finiteZModKernelDFT2 (fun x y => C x (y - x)) r s =
      finiteZModKernelDFT2 C (r + s) s := by
  classical
  unfold finiteZModKernelDFT2
  simp only [ZMod.dft_apply, smul_eq_mul]
  apply Finset.sum_congr rfl
  intro x _hx
  have hshift :
      (∑ y : ZMod Q,
        ZMod.stdAddChar (-(y * s)) * C x (y - x)) =
        ZMod.stdAddChar (-(x * s)) *
          ∑ h : ZMod Q,
            ZMod.stdAddChar (-(h * s)) * C x h := by
    calc
      (∑ y : ZMod Q,
        ZMod.stdAddChar (-(y * s)) * C x (y - x)) =
          ∑ h : ZMod Q,
            ZMod.stdAddChar (-((x + h) * s)) * C x h := by
              refine Fintype.sum_equiv (Equiv.addLeft x).symm _ _ ?_
              intro y
              simp
      _ = ∑ h : ZMod Q,
          (ZMod.stdAddChar (-(x * s)) *
            ZMod.stdAddChar (-(h * s))) * C x h := by
            apply Finset.sum_congr rfl
            intro h _hh
            rw [add_mul, neg_add, map_add_eq_mul]
      _ = ZMod.stdAddChar (-(x * s)) *
          ∑ h : ZMod Q,
            ZMod.stdAddChar (-(h * s)) * C x h := by
              rw [Finset.mul_sum]
              apply Finset.sum_congr rfl
              intro h _hh
              ring
  rw [hshift]
  rw [mul_add, neg_add, map_add_eq_mul]
  ring

/-- Two-dimensional DFT of the sheared clipping kernel. -/
def coreGrowingShiftEndpointDoubledShearedPrefixClippingKernelDFT2
    (j : ℕ)
    (u s : CoreGrowingShiftEndpointDoubledFourierIndex j) : ℂ :=
  finiteZModKernelDFT2
    (coreGrowingShiftEndpointDoubledShearedPrefixClippingKernelZeroPad j) u s

/-- The old `(x,y)` clipping transform is exactly the sheared transform at
transverse frequency `u=r+s`. -/
theorem coreGrowingShiftEndpointDoubledPrefixClippingKernelDFT2_eq_sheared
    (j : ℕ)
    (r s : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointDoubledPrefixClippingKernelDFT2 j r s =
      coreGrowingShiftEndpointDoubledShearedPrefixClippingKernelDFT2
        j (r + s) s := by
  unfold coreGrowingShiftEndpointDoubledPrefixClippingKernelDFT2
    coreGrowingShiftEndpointDoubledShearedPrefixClippingKernelDFT2
  rw [show coreGrowingShiftEndpointDoubledPrefixClippingKernelZeroPad j =
      fun x y =>
        coreGrowingShiftEndpointDoubledShearedPrefixClippingKernelZeroPad
          j x (y - x) by
    funext x y
    exact coreGrowingShiftEndpointDoubledPrefixClippingKernelZeroPad_eq_shear
      j x y]
  exact finiteZModKernelDFT2_shear
    (coreGrowingShiftEndpointDoubledShearedPrefixClippingKernelZeroPad j) r s

/-- Generic cyclic forward difference in the first kernel coordinate. -/
def finiteZModKernelForwardDifference
    {Q : ℕ} [NeZero Q]
    (C : ZMod Q → ZMod Q → ℂ)
    (x h : ZMod Q) : ℂ :=
  C (x + 1) h - C x h

/-- The DFT of cyclic forward difference is multiplication by the exact
additive-character factor. -/
theorem finiteZModKernelDFT2_forwardDifference
    {Q : ℕ} [NeZero Q]
    (C : ZMod Q → ZMod Q → ℂ)
    (u s : ZMod Q) :
    finiteZModKernelDFT2 (finiteZModKernelForwardDifference C) u s =
      (ZMod.stdAddChar u - 1) * finiteZModKernelDFT2 C u s := by
  classical
  let G : ZMod Q → ℂ := fun x => ZMod.dft (C x) s
  have hinner (x : ZMod Q) :
      ZMod.dft (fun h => C (x + 1) h - C x h) s =
        G (x + 1) - G x := by
    unfold G
    simpa using congrFun
      (map_sub (ZMod.dft (N := Q) (E := ℂ)) (C (x + 1)) (C x)) s
  have hshift :
      (∑ x : ZMod Q,
        ZMod.stdAddChar (-(x * u)) * G (x + 1)) =
        ZMod.stdAddChar u *
          ∑ x : ZMod Q,
            ZMod.stdAddChar (-(x * u)) * G x := by
    calc
      (∑ x : ZMod Q,
        ZMod.stdAddChar (-(x * u)) * G (x + 1)) =
          ∑ z : ZMod Q,
            ZMod.stdAddChar (-((z - 1) * u)) * G z := by
              refine Fintype.sum_equiv (Equiv.addRight (1 : ZMod Q)) _ _ ?_
              intro x
              simp
      _ = ∑ z : ZMod Q,
          (ZMod.stdAddChar u *
            ZMod.stdAddChar (-(z * u))) * G z := by
            apply Finset.sum_congr rfl
            intro z _hz
            have harg : -((z - 1) * u) = u + -(z * u) := by ring
            rw [harg, map_add_eq_mul]
      _ = ZMod.stdAddChar u *
          ∑ z : ZMod Q,
            ZMod.stdAddChar (-(z * u)) * G z := by
              rw [Finset.mul_sum]
              apply Finset.sum_congr rfl
              intro z _hz
              ring
  unfold finiteZModKernelDFT2 finiteZModKernelForwardDifference
  simp only [ZMod.dft_apply, smul_eq_mul]
  simp_rw [hinner]
  simp_rw [mul_sub, Finset.sum_sub_distrib]
  rw [hshift]
  ring

/-- DFT of the cyclic forward difference of the sheared clipping kernel. -/
def coreGrowingShiftEndpointDoubledShearedPrefixClippingForwardDifferenceDFT2
    (j : ℕ)
    (u s : CoreGrowingShiftEndpointDoubledFourierIndex j) : ℂ :=
  finiteZModKernelDFT2
    (coreGrowingShiftEndpointDoubledShearedPrefixClippingForwardDifference j) u s

/-- DFT of the zero-padded ordinary clipping increment. -/
def coreGrowingShiftEndpointDoubledShearedPrefixClippingIncrementDFT2
    (j : ℕ)
    (u s : CoreGrowingShiftEndpointDoubledFourierIndex j) : ℂ :=
  finiteZModKernelDFT2
    (coreGrowingShiftEndpointDoubledShearedPrefixClippingIncrementZeroPad j) u s

/-- DFT of the explicit right-window boundary atom. -/
def coreGrowingShiftEndpointDoubledShearedPrefixClippingRightBoundaryDFT2
    (j : ℕ)
    (u s : CoreGrowingShiftEndpointDoubledFourierIndex j) : ℂ :=
  finiteZModKernelDFT2
    (coreGrowingShiftEndpointDoubledShearedPrefixClippingRightBoundaryZeroPad j)
    u s

/-- Fourier linearity transports the pointwise interior-plus-boundary split. -/
theorem coreGrowingShiftEndpointDoubledShearedPrefixClippingForwardDifferenceDFT2_eq_increment_add_boundary
    (j : ℕ)
    (u s : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointDoubledShearedPrefixClippingForwardDifferenceDFT2
        j u s =
      coreGrowingShiftEndpointDoubledShearedPrefixClippingIncrementDFT2 j u s +
        coreGrowingShiftEndpointDoubledShearedPrefixClippingRightBoundaryDFT2
          j u s := by
  unfold coreGrowingShiftEndpointDoubledShearedPrefixClippingForwardDifferenceDFT2
    coreGrowingShiftEndpointDoubledShearedPrefixClippingIncrementDFT2
    coreGrowingShiftEndpointDoubledShearedPrefixClippingRightBoundaryDFT2
    finiteZModKernelDFT2
  simp_rw [coreGrowingShiftEndpointDoubledShearedPrefixClippingForwardDifference_eq_increment_add_boundary]
  rw [map_add]
  rfl

/-- Exact transverse multiplier formula for the sheared clipping kernel. -/
theorem coreGrowingShiftEndpointDoubledShearedPrefixClippingForwardDifferenceDFT2_eq_multiplier
    (j : ℕ)
    (u s : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointDoubledShearedPrefixClippingForwardDifferenceDFT2
        j u s =
      (ZMod.stdAddChar u - 1) *
        coreGrowingShiftEndpointDoubledShearedPrefixClippingKernelDFT2 j u s := by
  unfold coreGrowingShiftEndpointDoubledShearedPrefixClippingForwardDifferenceDFT2
    coreGrowingShiftEndpointDoubledShearedPrefixClippingForwardDifference
    coreGrowingShiftEndpointDoubledShearedPrefixClippingKernelDFT2
  exact finiteZModKernelDFT2_forwardDifference
    (coreGrowingShiftEndpointDoubledShearedPrefixClippingKernelZeroPad j) u s

/-- Exact discrete-antiderivative equation.  The boundary term is retained. -/
theorem coreGrowingShiftEndpointDoubledShearedPrefixClipping_antiderivativeEquation
    (j : ℕ)
    (u s : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    (ZMod.stdAddChar u - 1) *
        coreGrowingShiftEndpointDoubledShearedPrefixClippingKernelDFT2 j u s =
      coreGrowingShiftEndpointDoubledShearedPrefixClippingIncrementDFT2 j u s +
        coreGrowingShiftEndpointDoubledShearedPrefixClippingRightBoundaryDFT2
          j u s := by
  rw [← coreGrowingShiftEndpointDoubledShearedPrefixClippingForwardDifferenceDFT2_eq_multiplier,
    coreGrowingShiftEndpointDoubledShearedPrefixClippingForwardDifferenceDFT2_eq_increment_add_boundary]

/-- At transverse frequency zero, the increment and right boundary cancel.
This mode cannot be recovered by division by the multiplier. -/
theorem coreGrowingShiftEndpointDoubledShearedPrefixClipping_zeroMode
    (j : ℕ)
    (s : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointDoubledShearedPrefixClippingIncrementDFT2 j 0 s +
        coreGrowingShiftEndpointDoubledShearedPrefixClippingRightBoundaryDFT2
          j 0 s = 0 := by
  have h :=
    coreGrowingShiftEndpointDoubledShearedPrefixClipping_antiderivativeEquation
      j 0 s
  simpa using h.symm

/-- Clipping packet written directly in transverse coordinates. -/
def coreGrowingShiftSignedEndpointDoubledShearedPrefixClippingFourierPacketComplex
    (j : ℕ) : ℂ :=
  let Q := coreGrowingShiftEndpointDoubledFourierModulus j
  (Q : ℂ)⁻¹ * (Q : ℂ)⁻¹ *
    ∑ r : CoreGrowingShiftEndpointDoubledFourierIndex j,
      ∑ s : CoreGrowingShiftEndpointDoubledFourierIndex j,
        ZMod.dft (coreGrowingShiftEndpointDoubledMobiusZeroPad j) (-r) *
          ZMod.dft (coreGrowingShiftEndpointDoubledMobiusZeroPad j) (-s) *
            coreGrowingShiftEndpointDoubledShearedPrefixClippingKernelDFT2
              j (r + s) s

/-- Shearing changes no clipping Fourier packet. -/
theorem coreGrowingShiftSignedEndpointDoubledShearedPrefixClippingFourierPacketComplex_eq_parent
    (j : ℕ) :
    coreGrowingShiftSignedEndpointDoubledShearedPrefixClippingFourierPacketComplex j =
      coreGrowingShiftSignedEndpointDoubledPrefixClippingFourierPacketComplex j := by
  unfold coreGrowingShiftSignedEndpointDoubledShearedPrefixClippingFourierPacketComplex
    coreGrowingShiftSignedEndpointDoubledPrefixClippingFourierPacketComplex
  apply congrArg
  apply Finset.sum_congr rfl
  intro r _hr
  apply Finset.sum_congr rfl
  intro s _hs
  rw [coreGrowingShiftEndpointDoubledPrefixClippingKernelDFT2_eq_sheared]

/-- Complete endpoint packet with a one-frequency bulk and a sheared clipping
correction in the shared transverse coordinates. -/
def coreGrowingShiftSignedEndpointClippingShearFourierPacketComplex
    (j : ℕ) : ℂ :=
  coreGrowingShiftSignedEndpointDoubledDifferenceBulkOneFrequencyPacketComplex j -
    coreGrowingShiftSignedEndpointDoubledShearedPrefixClippingFourierPacketComplex j

/-- Exact equality with the parent doubled-convolution packet. -/
theorem coreGrowingShiftSignedEndpointClippingShearFourierPacketComplex_eq_parent
    (j : ℕ) :
    coreGrowingShiftSignedEndpointClippingShearFourierPacketComplex j =
      coreGrowingShiftSignedEndpointDoubledConvolutionFourierPacketComplex j := by
  unfold coreGrowingShiftSignedEndpointClippingShearFourierPacketComplex
    coreGrowingShiftSignedEndpointDoubledConvolutionFourierPacketComplex
  rw [coreGrowingShiftSignedEndpointDoubledShearedPrefixClippingFourierPacketComplex_eq_parent]

/-- The complete sheared packet is real only after the signed bulk/clipping
combination. -/
theorem coreGrowingShiftSignedEndpointClippingShearFourierPacketComplex_im
    (j : ℕ) :
    (coreGrowingShiftSignedEndpointClippingShearFourierPacketComplex j).im = 0 := by
  rw [coreGrowingShiftSignedEndpointClippingShearFourierPacketComplex_eq_parent,
    coreGrowingShiftSignedEndpointDoubledConvolutionFourierPacketComplex_im]

/-- Real one-frequency-bulk-minus-sheared-clipping packet. -/
def coreGrowingShiftSignedEndpointClippingShearFourierPacket
    (j : ℕ) : ℝ :=
  (coreGrowingShiftSignedEndpointClippingShearFourierPacketComplex j).re

/-- Exact equality with the parent real doubled-convolution packet. -/
theorem coreGrowingShiftSignedEndpointClippingShearFourierPacket_eq_parent
    (j : ℕ) :
    coreGrowingShiftSignedEndpointClippingShearFourierPacket j =
      coreGrowingShiftSignedEndpointDoubledConvolutionFourierPacket j := by
  unfold coreGrowingShiftSignedEndpointClippingShearFourierPacket
    coreGrowingShiftSignedEndpointDoubledConvolutionFourierPacket
  rw [coreGrowingShiftSignedEndpointClippingShearFourierPacketComplex_eq_parent]

/-- Exact RH-facing return through the sheared clipping packet. -/
theorem coreGrowingShiftFirstDifferencePacket_eq_two_mul_endpointClippingShearFourier
    (j : ℕ) :
    coreGrowingShiftFirstDifferencePacket j =
      2 * coreGrowingShiftSignedEndpointClippingShearFourierPacket j := by
  rw [coreGrowingShiftFirstDifferencePacket_eq_two_mul_endpointDoubledConvolutionFourier,
    ← coreGrowingShiftSignedEndpointClippingShearFourierPacket_eq_parent]

/-- Source-facing all-scale condition on the complete sheared packet. -/
def SubpolynomialCoreGrowingShiftSignedEndpointClippingShearFourierPacket : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      2 * coreGrowingShiftSignedEndpointClippingShearFourierPacket j ≤
        C * (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- Exact equivalence with the parent doubled-convolution source. -/
theorem subpolynomialCoreGrowingShiftSignedEndpointClippingShearFourierPacket_iff_parent :
    SubpolynomialCoreGrowingShiftSignedEndpointClippingShearFourierPacket ↔
      SubpolynomialCoreGrowingShiftSignedEndpointDoubledConvolutionFourierPacket := by
  constructor
  · intro hShear δ hδ
    obtain ⟨C, hC, hbound⟩ := hShear δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [← coreGrowingShiftSignedEndpointClippingShearFourierPacket_eq_parent]
    exact hbound j
  · intro hParent δ hδ
    obtain ⟨C, hC, hbound⟩ := hParent δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [coreGrowingShiftSignedEndpointClippingShearFourierPacket_eq_parent]
    exact hbound j

/-- Conditional RH endpoint stated on the exact sheared packet. -/
theorem riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointClippingShearFourierPacket
    (hShear :
      SubpolynomialCoreGrowingShiftSignedEndpointClippingShearFourierPacket) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointDoubledConvolutionFourierPacket
    (subpolynomialCoreGrowingShiftSignedEndpointClippingShearFourierPacket_iff_parent.mp
      hShear)

/-- Source profile for a future analytic theorem in transverse clipping
coordinates. -/
structure SignedEndpointClippingShearFourierSource where
  sourceStatement : Prop
  exactClippingSuccessorDifference : Prop
  exactShearReindexing : Prop
  transverseDFTNormalization : Prop
  cyclicForwardDifferenceMultiplier : Prop
  rightWindowBoundaryPreservation : Prop
  transverseZeroModePreservation : Prop
  lowAnchorPreservation : Prop
  signedBulkMultiplierPreservation : Prop
  jointBulkClipSignedCancellation : Prop
  allScaleUniformity : Prop
  finiteSmallScaleControl : Prop

/-- Proof-producing boundary for a future estimate of the complete sheared
packet.  No division by the transverse multiplier is supplied here. -/
structure ToCoreGrowingShiftSignedEndpointClippingShearFourierPacket
    (d : SignedEndpointClippingShearFourierSource) : Type where
  toClippingShear :
    d.sourceStatement →
      d.exactClippingSuccessorDifference →
      d.exactShearReindexing →
      d.transverseDFTNormalization →
      d.cyclicForwardDifferenceMultiplier →
      d.rightWindowBoundaryPreservation →
      d.transverseZeroModePreservation →
      d.lowAnchorPreservation →
      d.signedBulkMultiplierPreservation →
      d.jointBulkClipSignedCancellation →
      d.allScaleUniformity →
      d.finiteSmallScaleControl →
      SubpolynomialCoreGrowingShiftSignedEndpointClippingShearFourierPacket

/-- Generic conditional endpoint through an explicitly constructed clipping
shear adapter. -/
theorem riemannHypothesis_of_signedEndpointClippingShearFourierAdapter
    (d : SignedEndpointClippingShearFourierSource)
    (bridge : ToCoreGrowingShiftSignedEndpointClippingShearFourierPacket d)
    (hsource : d.sourceStatement)
    (hsucc : d.exactClippingSuccessorDifference)
    (hshear : d.exactShearReindexing)
    (htransverse : d.transverseDFTNormalization)
    (hmultiplier : d.cyclicForwardDifferenceMultiplier)
    (hboundary : d.rightWindowBoundaryPreservation)
    (hzero : d.transverseZeroModePreservation)
    (hanchor : d.lowAnchorPreservation)
    (hbulk : d.signedBulkMultiplierPreservation)
    (hjoint : d.jointBulkClipSignedCancellation)
    (huniform : d.allScaleUniformity)
    (hsmall : d.finiteSmallScaleControl) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointClippingShearFourierPacket
    (bridge.toClippingShear hsource hsucc hshear htransverse hmultiplier
      hboundary hzero hanchor hbulk hjoint huniform hsmall)

/-- Hostile control: the transverse multiplier vanishes at zero, so its
inverse cannot be introduced uniformly. -/
theorem signedEndpointClippingShear_zeroMultiplier_hostileWitness :
    ZMod.stdAddChar (0 : ZMod 2) - 1 = 0 := by
  simp

/-- Hostile control: the clipping interior increment and boundary atom may
cancel exactly before any positive norm is taken. -/
theorem signedEndpointClippingShear_boundaryCancellation_hostileWitness :
    ((1 : ℂ) + (-1 : ℂ)) = 0 ∧
      ‖(1 : ℂ)‖ + ‖(-1 : ℂ)‖ = 2 := by
  norm_num

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointPrefixClippingKernel_succ_sub
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointDoubledPrefixClippingKernelZeroPad_eq_shear
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.finiteZModKernelDFT2_shear
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointDoubledShearedPrefixClipping_antiderivativeEquation
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftSignedEndpointClippingShearFourierPacketComplex_eq_parent
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointClippingShearFourierPacket