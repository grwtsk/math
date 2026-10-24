# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SourcePrimitiveMassAttempt01.Varianta1b3b27065ba135bde0cb55ce2cd4224aad92b97b22a226d9b2b35abcf0e4d45

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9a480cb2c4e351d9eb83df40b098998bc58395a8` · SHA-256 `a1b3b27065ba135bde0cb55ce2cd4224aad92b97b22a226d9b2b35abcf0e4d45`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourcePrimitiveEnvelope
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic

/-! Genuine integrability and finite mass bound for the actual reflected source primitive.
Direction: grwtsk contributors. Scratch proof: OpenAI Codex.
No atom-density substitution or arithmetic signed estimate is inferred. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.SourcePrimitiveMass
open MeasureTheory Set
open ContinuousResearch.SourcePositivePrimitive
open ContinuousResearch.ReflectedPositivePrimitive
open ContinuousResearch.SourcePrimitiveEnvelope

theorem expHalfMoment_integrable (n : ℕ) :
    IntegrableOn (fun y : ℝ => y^n*Real.exp (-y/2)) (Ioi (0:ℝ)) := by
  have h := Real.GammaIntegral_convergent (s:=(n:ℝ)+1) (by positivity)
  simp only [add_sub_cancel_right,Real.rpow_natCast] at h
  have hc := (integrableOn_Ioi_comp_mul_left_iff
    (fun y : ℝ => Real.exp (-y)*y^n) 0 (a:=(1/2:ℝ)) (by norm_num)).mpr
      (by simpa using h)
  have hh := hc.const_mul ((2:ℝ)^n)
  apply hh.congr_fun _ measurableSet_Ioi
  intro y _
  dsimp only
  rw [mul_pow]
  have he : -((1/2:ℝ)*y)=-y/2 := by ring
  rw [he]
  ring

theorem expHalfMoment_integral (n : ℕ) :
    (∫ y : ℝ in Ioi 0,y^n*Real.exp (-y/2))=(2:ℝ)^(n+1)*(n.factorial:ℝ) := by
  have h := Real.integral_rpow_mul_exp_neg_mul_Ioi
    (a:=(n:ℝ)+1) (r:=(1/2:ℝ)) (by positivity) (by norm_num)
  rw [add_sub_cancel_right,Real.rpow_natCast,Real.Gamma_nat_eq_factorial] at h
  norm_num only [one_div_div,div_one] at h
  rw [show (n:ℝ)+1=((n+1:ℕ):ℝ) by norm_num,Real.rpow_natCast] at h
  convert h using 1
  congr 1
  funext y
  congr 1
  ring

theorem reflectedEnvelope_integrable :
    IntegrableOn reflectedEnvelope (Ioi (0:ℝ)) := by
  have h := ((expHalfMoment_integrable 9).add ((expHalfMoment_integrable 8).const_mul 36)).add
    ((expHalfMoment_integrable 7).const_mul 288)
  have hh := h.const_mul (2431/896:ℝ)
  apply hh.congr_fun _ measurableSet_Ioi
  intro y _
  unfold reflectedEnvelope
  ring

/-- Exact mass of the independently specified, genuinely integrable positive envelope. -/
theorem reflectedEnvelope_integral :
    (∫ y : ℝ in Ioi 0,reflectedEnvelope y)=4032737280 := by
  have he : reflectedEnvelope=(fun y : ℝ => (2431/896:ℝ)*
      ((y^9*Real.exp (-y/2)+36*(y^8*Real.exp (-y/2)))+288*(y^7*Real.exp (-y/2)))) := by
    funext y
    unfold reflectedEnvelope
    ring
  rw [he,integral_const_mul,integral_add
    ((expHalfMoment_integrable 9).add ((expHalfMoment_integrable 8).const_mul 36))
    ((expHalfMoment_integrable 7).const_mul 288),
    integral_add (expHalfMoment_integrable 9) ((expHalfMoment_integrable 8).const_mul 36),
    integral_const_mul,integral_const_mul,expHalfMoment_integral,expHalfMoment_integral,
    expHalfMoment_integral]
  norm_num

/-- The polynomial-exponential representative is genuinely integrable on every finite interval. -/
theorem reflectedPrimitive_intervalIntegrable (A a b : ℝ) :
    IntervalIntegrable (reflectedPrimitive A) volume a b := by
  apply Continuous.intervalIntegrable
  unfold reflectedPrimitive physicalScale positivePrimitive overlapPolynomial0
    overlapPolynomial1 overlapPolynomial2
  fun_prop

/-- A genuine physical-half mass bound; no second-derivative or atom bound follows. -/
theorem reflectedPrimitive_mass_bounds {A : ℝ} (hA : 1≤A)
    (hthreshold : (136/7:ℝ)≤A^2) :
    0≤(∫ y in (0:ℝ)..(2*A),reflectedPrimitive A y) ∧
      (∫ y in (0:ℝ)..(2*A),reflectedPrimitive A y)≤4032737280 := by
  have hpos : (0:ℝ)≤2*A := by linarith
  have hL : IntegrableOn (reflectedPrimitive A) (Ioc (0:ℝ) (2*A)) :=
    (intervalIntegrable_iff_integrableOn_Ioc_of_le hpos).mp
      (reflectedPrimitive_intervalIntegrable A 0 (2*A))
  have hE : IntegrableOn reflectedEnvelope (Ioc (0:ℝ) (2*A)) :=
    reflectedEnvelope_integrable.mono_set Ioc_subset_Ioi_self
  rw [intervalIntegral.integral_of_le hpos]
  constructor
  · apply setIntegral_nonneg
    intro y hy
    exact reflectedPrimitive_nonneg hA hthreshold ⟨hy.1.le,hy.2⟩
  · have hm := setIntegral_mono_on hL hE measurableSet_Ioc
      (fun y hy => reflectedPrimitive_le_envelope hA ⟨hy.1.le,hy.2⟩)
    apply hm.trans
    rw [←reflectedEnvelope_integral]
    apply setIntegral_mono_set reflectedEnvelope_integrable
    · filter_upwards [ae_restrict_mem measurableSet_Ioi] with y hy
      exact reflectedEnvelope_nonneg hy.le
    · exact Filter.Eventually.of_forall (fun y hy => hy.1)

end ContinuousResearch.SourcePrimitiveMass
```
