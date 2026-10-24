# Complete source: GRWTSK.Analysis.MeasureTheory.BranchSignedPrimitiveDecoder.Variant696945be87b8ce89c75933156d2457322c0b4ba0c2ebe3804467a38a90eff2fd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fa2a69ac42b44cda1242a485f0a0f00ba1aacb4a` · SHA-256 `696945be87b8ce89c75933156d2457322c0b4ba0c2ebe3804467a38a90eff2fd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensAbel
import Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts
import Mathlib.Analysis.SpecialFunctions.Sqrt

/-!
# Literal signed first and second primitive decoders

Source: Batch 26, `signed-primitive-certificates.md`, sections 3–4, at
`0dc367dd6a95a34dc8252edd8f7a4ee07c578b3c`. Abel summation retains the
closed-right Mertens prefix and real endpoints. No bound on either signed
primitive is supplied by its finite decoder.

Human mathematical direction: grwtsk contributors. Formalization developed
with OpenAI Codex, using Mathlib and the existing Möbius Abel theorem.
-/

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.BranchSignedPrimitiveDecoder

open MeasureTheory Set
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensAbel

/-- The actual signed Mertens integrand after logarithmic normalization. -/
def primitiveDensity (x : ℝ) : ℝ := mertens x / (x * Real.sqrt x)

/-- First signed primitive in the original positive coordinate. -/
def firstPrimitive (U X : ℝ) : ℝ := ∫ x in U..X, primitiveDensity x

/-- Second signed primitive, retaining its logarithmic triangular weight. -/
def secondPrimitive (U X : ℝ) : ℝ :=
  ∫ x in U..X, Real.log (X / x) * primitiveDensity x

/-- The logarithmic Mertens density in the note. -/
def logDensity (t : ℝ) : ℝ := Real.exp (-t / 2) * mertens (Real.exp t)

/-- The literal second primitive's finite weight J(v,X). -/
def secondWeight (v X : ℝ) : ℝ :=
  (2 * Real.log (X / v) - 4) / Real.sqrt v + 4 / Real.sqrt X

/-- The first Abel antiderivative has the exact negative density multiplier. -/
theorem firstWeight_hasDerivAt {x : ℝ} (hx : 0 < x) :
    HasDerivAt (fun y : ℝ ↦ 2 / Real.sqrt y) (-1 / (x * Real.sqrt x)) x := by
  have hs : Real.sqrt x ≠ 0 := (Real.sqrt_pos.2 hx).ne'
  have hd := (hasDerivAt_const x (2 : ℝ)).div (Real.hasDerivAt_sqrt hx.ne') hs
  apply hd.congr_deriv
  field_simp
  nlinarith [Real.sq_sqrt hx.le]

/-- The second weight differentiates to the exact negative logarithmic density multiplier. -/
theorem secondWeight_hasDerivAt {v X : ℝ} (hv : 0 < v) (hX : 0 < X) :
    HasDerivAt (fun y ↦ secondWeight y X)
      (-Real.log (X / v) / (v * Real.sqrt v)) v := by
  have hs : Real.sqrt v ≠ 0 := (Real.sqrt_pos.2 hv).ne'
  have hl := (Real.hasDerivAt_log (ne_of_gt (div_pos hX hv))).comp v
    ((hasDerivAt_const v X).div (hasDerivAt_id v) hv.ne')
  have hd := (((hl.const_mul 2).sub_const 4).div (Real.hasDerivAt_sqrt hv.ne') hs).add_const
    (4 / Real.sqrt X)
  apply hd.congr_deriv
  simp only [Function.comp_apply]
  field_simp
  rw [Real.sq_sqrt hv.le]
  ring

/-- Continuity of the multiplier on every strictly positive compact interval. -/
theorem inverse_sqrt_density_continuousOn {U X : ℝ} (hU : 0 < U) :
    ContinuousOn (fun x : ℝ ↦ 1 / (x * Real.sqrt x)) (Icc U X) := by
  intro x hx
  have hx0 : 0 < x := hU.trans_le hx.1
  apply ContinuousAt.continuousWithinAt
  fun_prop (disch := first | exact hx0.ne' | exact (Real.sqrt_pos.2 hx0).ne' |
    exact mul_ne_zero hx0.ne' (Real.sqrt_pos.2 hx0).ne')

/-- The first density is genuinely integrable, including all Mertens jumps. -/
theorem primitiveDensity_integrable {U X : ℝ} (hU : 0 < U) :
    IntegrableOn primitiveDensity (Icc U X) := by
  have hi := integrableOn_mul_sum_Icc realMoebius (m := 0) hU.le
    (inverse_sqrt_density_continuousOn (X := X) hU).integrableOn_Icc
  convert hi using 1
  funext x
  dsimp [primitiveDensity, mertens]
  ring

/-- The logarithmically weighted second density is also genuinely integrable. -/
theorem second_density_integrable {U X : ℝ} (hU : 0 < U) (hUX : U ≤ X) :
    IntegrableOn (fun x ↦ Real.log (X / x) * primitiveDensity x) (Icc U X) := by
  have hX : 0 < X := hU.trans_le hUX
  have hc : ContinuousOn (fun x : ℝ ↦ Real.log (X / x) / (x * Real.sqrt x)) (Icc U X) := by
    intro x hx
    have hx0 : 0 < x := hU.trans_le hx.1
    apply ContinuousAt.continuousWithinAt
    fun_prop (disch := first | exact hx0.ne' | exact (Real.sqrt_pos.2 hx0).ne' |
      exact ne_of_gt (div_pos hX hx0) | exact mul_ne_zero hx0.ne' (Real.sqrt_pos.2 hx0).ne')
  have hi := integrableOn_mul_sum_Icc realMoebius (m := 0) hU.le hc.integrableOn_Icc
  convert hi using 1
  ext x
  dsimp [primitiveDensity, mertens]
  ring

/-- Exact closed-right finite first primitive decoder at arbitrary real endpoints. -/
theorem firstPrimitive_finite_decoder {U X : ℝ} (hU : 0 < U) (hUX : U ≤ X) :
    firstPrimitive U X =
      2 * (∑ n ∈ Finset.Ioc ⌊U⌋₊ ⌊X⌋₊, realMoebius n / Real.sqrt n) -
        2 * mertens X / Real.sqrt X + 2 * mertens U / Real.sqrt U := by
  have hd : ∀ x ∈ Icc U X,
      deriv (fun y : ℝ ↦ 2 / Real.sqrt y) x = -1 / (x * Real.sqrt x) :=
    fun x hx ↦ (firstWeight_hasDerivAt (hU.trans_le hx.1)).deriv
  have hi : IntegrableOn (deriv (fun y : ℝ ↦ 2 / Real.sqrt y)) (Icc U X) := by
    have hn := (inverse_sqrt_density_continuousOn (X := X) hU).integrableOn_Icc
      (μ := (volume : Measure ℝ)) |>.neg
    apply hn.congr_fun
    · intro x hx
      rw [hd x hx]
      dsimp only [Pi.neg_apply]
      ring
    · exact measurableSet_Icc
  have ha := mobius_abel_commuted hU.le hUX (fun y ↦ 2 / Real.sqrt y)
    (fun x hx ↦ (firstWeight_hasDerivAt (hU.trans_le hx.1)).differentiableAt) hi
  have he : (∫ x in Ioc U X, mertens x * deriv (fun y : ℝ ↦ 2 / Real.sqrt y) x) =
      -firstPrimitive U X := by
    rw [firstPrimitive, intervalIntegral.integral_of_le hUX, ← integral_neg]
    apply setIntegral_congr_fun measurableSet_Ioc
    intro x hx
    dsimp only
    rw [hd x ⟨hx.1.le, hx.2⟩]
    dsimp [primitiveDensity]
    ring
  have hsum : (∑ n ∈ Finset.Ioc ⌊U⌋₊ ⌊X⌋₊, realMoebius n * (2 / Real.sqrt n)) =
      2 * (∑ n ∈ Finset.Ioc ⌊U⌋₊ ⌊X⌋₊, realMoebius n / Real.sqrt n) := by
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro n _
    ring
  rw [he, hsum] at ha
  linear_combination -ha

/-- The touching upper weight is exactly zero; its closed endpoint is retained. -/
theorem secondWeight_upper {X : ℝ} (hX : 0 < X) : secondWeight X X = 0 := by
  simp only [secondWeight, div_self hX.ne', Real.log_one, mul_zero, zero_sub]
  ring

/-- Exact finite second primitive decoder, retaining the positive-coordinate lower prefix. -/
theorem secondPrimitive_finite_decoder {U X : ℝ} (hU : 0 < U) (hUX : U ≤ X) :
    secondPrimitive U X = mertens U * secondWeight U X +
      ∑ n ∈ Finset.Ioc ⌊U⌋₊ ⌊X⌋₊, realMoebius n * secondWeight n X := by
  have hX := hU.trans_le hUX
  have hd : ∀ x ∈ Icc U X,
      deriv (fun y ↦ secondWeight y X) x = -Real.log (X / x) / (x * Real.sqrt x) :=
    fun x hx ↦ (secondWeight_hasDerivAt (hU.trans_le hx.1) hX).deriv
  have hc : ContinuousOn (fun x ↦ -Real.log (X / x) / (x * Real.sqrt x)) (Icc U X) := by
    intro x hx
    have hx0 : 0 < x := hU.trans_le hx.1
    apply ContinuousAt.continuousWithinAt
    fun_prop (disch := first | exact hx0.ne' | exact (Real.sqrt_pos.2 hx0).ne' |
      exact ne_of_gt (div_pos hX hx0) | exact mul_ne_zero hx0.ne' (Real.sqrt_pos.2 hx0).ne')
  have hi : IntegrableOn (deriv (fun y ↦ secondWeight y X)) (Icc U X) :=
    hc.integrableOn_Icc.congr_fun (fun x hx ↦ (hd x hx).symm) measurableSet_Icc
  have ha := mobius_abel_commuted hU.le hUX (fun y ↦ secondWeight y X)
    (fun x hx ↦ (secondWeight_hasDerivAt (hU.trans_le hx.1) hX).differentiableAt) hi
  have he : (∫ x in Ioc U X, mertens x * deriv (fun y ↦ secondWeight y X) x) =
      -secondPrimitive U X := by
    rw [secondPrimitive, intervalIntegral.integral_of_le hUX, ← integral_neg]
    apply setIntegral_congr_fun measurableSet_Ioc
    intro x hx
    dsimp only
    rw [hd x ⟨hx.1.le, hx.2⟩]
    dsimp [primitiveDensity]
    ring
  rw [he, secondWeight_upper hX, zero_mul] at ha
  linarith

/-- The explicit logarithmic normalization exactly cancels the exponential Jacobian. -/
theorem logDensity_eq_transported (t : ℝ) :
    primitiveDensity (Real.exp t) * Real.exp t = logDensity t := by
  dsimp [primitiveDensity, logDensity]
  rw [← Real.exp_half, neg_div, Real.exp_neg]
  field_simp

/-- Change of variables identifies the first decoder with the actual logarithmic primitive. -/
theorem firstPrimitive_eq_log_integral (a t : ℝ) :
    firstPrimitive (Real.exp a) (Real.exp t) = ∫ u in a..t, logDensity u := by
  have h := intervalIntegral.integral_comp_mul_deriv_of_deriv_nonneg
    (a := a) (b := t)
    (f := Real.exp) (f' := Real.exp) (g := primitiveDensity)
    Real.continuous_exp.continuousOn (fun x _ ↦ Real.hasDerivAt_exp x)
    (fun x _ ↦ (Real.exp_pos x).le)
  simpa only [Function.comp_apply, logDensity_eq_transported, firstPrimitive] using h.symm

/-- The exact logarithmic triangular weight also survives the same change of variables. -/
theorem secondPrimitive_eq_log_integral (a t : ℝ) :
    secondPrimitive (Real.exp a) (Real.exp t) = ∫ u in a..t, (t - u) * logDensity u := by
  have h := intervalIntegral.integral_comp_mul_deriv_of_deriv_nonneg
    (a := a) (b := t)
    (f := Real.exp) (f' := Real.exp) (g := fun x ↦ Real.log (Real.exp t / x) * primitiveDensity x)
    Real.continuous_exp.continuousOn (fun x _ ↦ Real.hasDerivAt_exp x)
    (fun x _ ↦ (Real.exp_pos x).le)
  dsimp only [Function.comp_def] at h
  simp_rw [mul_assoc, logDensity_eq_transported,
    Real.log_div (Real.exp_ne_zero t) (Real.exp_ne_zero _), Real.log_exp] at h
  exact h.symm

/-- J is the actual integral of the nonnegative logarithmic weight. -/
theorem secondWeight_eq_integral {v X : ℝ} (hv : 0 < v) (hvX : v ≤ X) :
    secondWeight v X = ∫ x in v..X, Real.log (X / x) / (x * Real.sqrt x) := by
  have hX := hv.trans_le hvX
  have hc : ContinuousOn (fun x ↦ -Real.log (X / x) / (x * Real.sqrt x)) (Icc v X) := by
    intro x hx
    have hx0 := hv.trans_le hx.1
    apply ContinuousAt.continuousWithinAt
    fun_prop (disch := first | exact hx0.ne' | exact (Real.sqrt_pos.2 hx0).ne' |
      exact ne_of_gt (div_pos hX hx0) | exact mul_ne_zero hx0.ne' (Real.sqrt_pos.2 hx0).ne')
  have hi : IntervalIntegrable (fun x ↦ -Real.log (X / x) / (x * Real.sqrt x)) volume v X :=
    (intervalIntegrable_iff_integrableOn_Icc_of_le hvX).2 hc.integrableOn_Icc
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun x hx ↦ secondWeight_hasDerivAt
      (hv.trans_le (show x ∈ Icc v X by simpa only [uIcc_of_le hvX] using hx).1) hX) hi
  rw [secondWeight_upper hX] at h
  have hn : (fun x : ℝ ↦ -Real.log (X / x) / (x * Real.sqrt x)) =
      fun x ↦ -(Real.log (X / x) / (x * Real.sqrt x)) := by
    funext x
    ring
  rw [hn, intervalIntegral.integral_neg] at h
  linarith

/-- Each J weight is nonnegative; cancellation of the signed Möbius sum is still separate. -/
theorem secondWeight_nonneg {v X : ℝ} (hv : 0 < v) (hvX : v ≤ X) :
    0 ≤ secondWeight v X := by
  rw [secondWeight_eq_integral hv hvX]
  apply intervalIntegral.integral_nonneg hvX
  intro x hx
  have hx0 : 0 < x := hv.trans_le hx.1
  apply div_nonneg
  · exact Real.log_nonneg ((one_le_div hx0).2 hx.2)
  · positivity

/-- Literal finite decoder for P at the original real scale and logarithmic reading time. -/
theorem source_first_primitive_decoder {A t : ℝ} (hA : 1 ≤ A)
    (ht : 2 * Real.log A ≤ t) :
    (∫ u in (2 * Real.log A)..t, logDensity u) =
      2 * (∑ n ∈ Finset.Ioc ⌊A ^ 2⌋₊ ⌊Real.exp t⌋₊, realMoebius n / Real.sqrt n) -
        2 * mertens (Real.exp t) / Real.sqrt (Real.exp t) +
        2 * mertens (A ^ 2) / Real.sqrt (A ^ 2) := by
  have hA0 : 0 < A := lt_of_lt_of_le (by norm_num) hA
  have he : Real.exp (2 * Real.log A) = A ^ 2 := by
    rw [show 2 * Real.log A = Real.log A + Real.log A by ring,
      Real.exp_add, Real.exp_log hA0]
    ring
  rw [← firstPrimitive_eq_log_integral, he]
  exact firstPrimitive_finite_decoder (sq_pos_of_pos hA0)
    (he ▸ Real.exp_le_exp.mpr ht)

/-- Literal finite decoder for Q, including the closed lower Mertens prefix. -/
theorem source_second_primitive_decoder {A t : ℝ} (hA : 1 ≤ A)
    (ht : 2 * Real.log A ≤ t) :
    (∫ u in (2 * Real.log A)..t, (t - u) * logDensity u) =
      mertens (A ^ 2) * secondWeight (A ^ 2) (Real.exp t) +
        ∑ n ∈ Finset.Ioc ⌊A ^ 2⌋₊ ⌊Real.exp t⌋₊, realMoebius n * secondWeight n (Real.exp t) := by
  have hA0 : 0 < A := lt_of_lt_of_le (by norm_num) hA
  have he : Real.exp (2 * Real.log A) = A ^ 2 := by
    rw [show 2 * Real.log A = Real.log A + Real.log A by ring,
      Real.exp_add, Real.exp_log hA0]
    ring
  rw [← secondPrimitive_eq_log_integral, he]
  exact secondPrimitive_finite_decoder (sq_pos_of_pos hA0)
    (he ▸ Real.exp_le_exp.mpr ht)

end FormalResearch.RiemannHypothesis.BranchSignedPrimitiveDecoder
```
