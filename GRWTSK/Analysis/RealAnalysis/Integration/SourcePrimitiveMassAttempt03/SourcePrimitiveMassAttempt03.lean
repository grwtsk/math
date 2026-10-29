import SourcePrimitiveEnvelope
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic

/-! Genuine integrability and finite mass bound for the actual reflected source primitive.
Direction: grwtsk contributors. Scratch proof: OpenAI Codex.
No atom-density substitution or arithmetic signed estimate is inferred. -/
set_option autoImplicit false
set_option backward.isDefEq.respectTransparency false
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
  have hh : IntegrableOn (fun y : ℝ => (2:ℝ)^n*(Real.exp (-((1/2:ℝ)*y))*((1/2:ℝ)*y)^n))
      (Ioi (0:ℝ)) := hc.const_mul ((2:ℝ)^n)
  have he : (fun y : ℝ => (2:ℝ)^n*(Real.exp (-((1/2:ℝ)*y))*((1/2:ℝ)*y)^n))=
      (fun y : ℝ => y^n*Real.exp (-y/2)) := by
    funext y
    rw [mul_pow]
    have hn : (2:ℝ)^n*(1/2:ℝ)^n=1 := by rw [←mul_pow]; norm_num
    have hx : -((1/2:ℝ)*y)=-y/2 := by ring
    rw [hx]
    calc
      _ = Real.exp (-y/2)*y^n*((2:ℝ)^n*(1/2:ℝ)^n) := by ring
      _ = _ := by rw [hn]; ring
  exact he ▸ hh

theorem expHalfMoment_integral (n : ℕ) :
    (∫ y : ℝ in Ioi 0,y^n*Real.exp (-y/2))=(2:ℝ)^(n+1)*(n.factorial:ℝ) := by
  have h := Real.integral_rpow_mul_exp_neg_mul_Ioi
    (a:=(n:ℝ)+1) (r:=(1/2:ℝ)) (by positivity) (by norm_num)
  simp only [add_sub_cancel_right] at h
  simp_rw [Real.rpow_natCast (n:=n),Real.Gamma_nat_eq_factorial] at h
  norm_num only [one_div_div,div_one] at h
  rw [show (n:ℝ)+1=((n+1:ℕ):ℝ) by norm_num] at h
  simp_rw [Real.rpow_natCast (n:=n+1)] at h
  have he : ∀y:ℝ,-((1/2:ℝ)*y)=-y/2 := by intro y; ring
  simp_rw [he] at h
  exact h

theorem reflectedEnvelope_integrable :
    IntegrableOn reflectedEnvelope (Ioi (0:ℝ)) := by
  have h := ((expHalfMoment_integrable 9).add ((expHalfMoment_integrable 8).const_mul 36)).add
    ((expHalfMoment_integrable 7).const_mul 288)
  have hh := h.const_mul (2431/896:ℝ)
  refine IntegrableOn.congr_fun hh ?_ measurableSet_Ioi
  intro y _
  simp only [Pi.add_apply]
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
  have h98 : IntegrableOn (fun y : ℝ => y^9*Real.exp (-y/2)+36*(y^8*Real.exp (-y/2)))
      (Ioi (0:ℝ)) := by
    simpa only [Pi.add_apply] using
      ((expHalfMoment_integrable 9).add ((expHalfMoment_integrable 8).const_mul 36))
  rw [he,integral_const_mul,integral_add h98
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
  · apply setIntegral_nonneg measurableSet_Ioc
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
