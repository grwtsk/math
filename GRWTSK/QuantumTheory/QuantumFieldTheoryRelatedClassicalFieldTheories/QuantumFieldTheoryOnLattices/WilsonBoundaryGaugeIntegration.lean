/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib's Haar and product integration results retain their upstream authorship
and Apache-2.0 license. Imported GRWTSK retains its attribution and licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonHaarCoordinates
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonReflectedGauge

/-!
# Conditional Haar gauge fixing at both temporal boundaries

The gauge is identity on positive vertices, inverse crossing transport at
time0, crossing transport from timeT at timeT+1, and identity elsewhere.
All crossing variables are integrated before the resulting equality is
simplified. Fixed boundary data act on the negative half by actual fixed
two-sided Haar translations. No collapse map is claimed measure preserving.

The terminal consumer is the actual unnormalized Wilson reflection
integrand of an existing positive-time observable. Its action is retained
literally; no action-factorization or positivity certificate is assumed.
SOURCE_PROOF_CANDIDATE / compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
attribute [local instance] Classical.propDecidable
open scoped ComplexConjugate

namespace GRWTSK.Geometry.GaugeTheory.WilsonBoundaryGaugeIntegration

open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.FinitePeriodicLattice
open GRWTSK.Geometry.GaugeTheory.PositiveTimeObservables
open GRWTSK.Geometry.GaugeTheory.BondTimeReflection
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.SU2Haar
open GRWTSK.Geometry.GaugeTheory.FiniteSU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonTimeSplit
open GRWTSK.Geometry.GaugeTheory.WilsonHaarCoordinates
open GRWTSK.Geometry.GaugeTheory.WilsonReflectedGauge

def previousTime {L : ℕ} (x : Vertex L) : Vertex L :=
  fun ρ => x ρ - if ρ = 0 then 1 else 0

@[simp] theorem previousTime_shift {L : ℕ} (x : Vertex L) :
    previousTime (shift x 0) = x := by
  funext ρ
  by_cases hρ : ρ = 0 <;> simp [previousTime, shift, hρ]

@[simp] theorem shift_previousTime {L : ℕ} (x : Vertex L) :
    shift (previousTime x) 0 = x := by
  funext ρ
  by_cases hρ : ρ = 0 <;> simp [previousTime, shift, hρ]

section ActualPeriod
variable (T : ℕ) [NeZero (2 * T)]

theorem previousTime_val_at_top (hT : 2 ≤ T) (x : Vertex (2 * T))
    (hx : (x 0).val = T + 1) : (previousTime x 0).val = T := by
  have h1 : (1 : ZMod (2 * T)).val = 1 := ZMod.val_one'' (by omega)
  change (x 0 - 1).val = T
  rw [ZMod.val_sub (a := x 0) (b := 1) (by omega), h1, hx]
  omega

/-- Every multiplier is an actual crossing Haar coordinate or its inverse. -/
def boundaryGauge (hT : 2 ≤ T) (t : CrossConfig T) : Gauge (2 * T) SU2 :=
  fun x =>
    if h0 : (x 0).val = 0 then
      (t ⟨(x, 0), ⟨rfl, Or.inl h0⟩⟩)⁻¹
    else if ht : (x 0).val = T + 1 then
      t ⟨(previousTime x, 0),
        ⟨rfl, Or.inr (previousTime_val_at_top T hT x ht)⟩⟩
    else 1

theorem boundaryGauge_positive (hT : 2 ≤ T) (t : CrossConfig T)
    (x : Vertex (2 * T)) (hx : positiveVertex T x) :
    boundaryGauge T hT t x = 1 := by
  have h0 : (x 0).val ≠ 0 := by
    have := hx.1
    omega
  have ht : (x 0).val ≠ T + 1 := by
    have := hx.2
    omega
  simp only [boundaryGauge, dif_neg h0, dif_neg ht]

theorem boundaryGauge_at_zero (hT : 2 ≤ T) (t : CrossConfig T)
    (x : Vertex (2 * T)) (hx : (x 0).val = 0) :
    boundaryGauge T hT t x = (t ⟨(x, 0), ⟨rfl, Or.inl hx⟩⟩)⁻¹ := by
  simp only [boundaryGauge, dif_pos hx]

theorem boundaryGauge_at_top (hT : 2 ≤ T) (t : CrossConfig T)
    (x : Vertex (2 * T)) (hx : (x 0).val = T + 1) :
    boundaryGauge T hT t x =
      t ⟨(previousTime x, 0), ⟨rfl, Or.inr (previousTime_val_at_top T hT x hx)⟩⟩ := by
  have h0 : (x 0).val ≠ 0 := by omega
  simp only [boundaryGauge, dif_neg h0, dif_pos hx]

theorem boundaryGauge_top_target (hT : 2 ≤ T) (t : CrossConfig T)
    (x : Vertex (2 * T)) (hx : (x 0).val = T) :
    boundaryGauge T hT t (shift x 0) = t ⟨(x, 0), ⟨rfl, Or.inr hx⟩⟩ := by
  rw [boundaryGauge_at_top T hT t (shift x 0) (temporal_target_val_at_T hT x hx)]
  apply congrArg t
  apply Subtype.ext
  simp only [previousTime_shift]

/-- Both crossing layers are sent to one, with the opposite endpoint signs. -/
theorem boundaryGauge_cross (hT : 2 ≤ T) (t : CrossConfig T) (e : CrossLink T) :
    boundaryGauge T hT t e.val.1 * t e *
      (boundaryGauge T hT t (shift e.val.1 e.val.2))⁻¹ = 1 := by
  rcases e with ⟨⟨x, μ⟩, hμ, hx⟩
  subst μ
  rcases hx with h0 | ht
  · have htarget : positiveVertex T (shift x 0) := by
      have hv : (shift x 0 0).val = 1 := by
        change (x 0 + 1).val = 1
        rw [successor_time_val hT, h0]
        simp only [zero_add, if_pos (by omega : 1 < 2 * T)]
      change 1 ≤ (shift x 0 0).val ∧ (shift x 0 0).val ≤ T
      rw [hv]
      omega
    rw [boundaryGauge_at_zero T hT t x h0,
      boundaryGauge_positive T hT t (shift x 0) htarget]
    simp only [inv_one, mul_one, inv_mul_cancel]
  · have hsource : positiveVertex T x := by
      change 1 ≤ (x 0).val ∧ (x 0).val ≤ T
      rw [ht]
      omega
    rw [boundaryGauge_positive T hT t x hsource, boundaryGauge_top_target T hT t x ht]
    simp only [one_mul, mul_inv_cancel]

/-- The exact induced transformation of reflected-positive coordinates. -/
def negativeHalf (hT : 2 ≤ T) (t : CrossConfig T) (v : HalfConfig T) : HalfConfig T :=
  fun e => boundaryGauge T hT t (reflectVertex e.val.1) * v e *
    (boundaryGauge T hT t (reflectVertex (shift e.val.1 e.val.2)))⁻¹

def negativeHalfEquiv (hT : 2 ≤ T) (t : CrossConfig T) : HalfConfig T ≃ᵐ HalfConfig T where
  toEquiv :=
    { toFun := negativeHalf T hT t
      invFun := fun v e =>
        (boundaryGauge T hT t (reflectVertex e.val.1))⁻¹ * v e *
          boundaryGauge T hT t (reflectVertex (shift e.val.1 e.val.2))
      left_inv := by
        intro v
        funext e
        unfold negativeHalf
        group
      right_inv := by
        intro v
        funext e
        unfold negativeHalf
        group }
  measurable_toFun := by
    apply measurable_pi_iff.mpr
    intro e
    exact (measurable_const.mul (measurable_pi_apply e)).mul measurable_const
  measurable_invFun := by
    apply measurable_pi_iff.mpr
    intro e
    exact (measurable_const.mul (measurable_pi_apply e)).mul measurable_const

/-- Fixed boundary data act by fixed translations of every negative coordinate. -/
theorem measurePreserving_negativeHalf (hT : 2 ≤ T) (t : CrossConfig T) :
    MeasurePreserving (negativeHalfEquiv T hT t) (halfMeasure T) (halfMeasure T) :=
  measurePreserving_twoSidedProduct
    (fun e : PlusLink T => boundaryGauge T hT t (reflectVertex e.val.1))
    (fun e : PlusLink T => (boundaryGauge T hT t (reflectVertex (shift e.val.1 e.val.2)))⁻¹)

/-- Actual field identity; it is not a claim that boundary collapse preserves Haar. -/
theorem gauge_glue (hT : 2 ≤ T) (u v : HalfConfig T) (t : CrossConfig T) :
    gaugeTransform (boundaryGauge T hT t) (glue T hT u v t) =
      glue T hT u (negativeHalf T hT t v) 1 := by
  apply config_ext T hT
  · intro e
    change boundaryGauge T hT t e.val.1 * glue T hT u v t e.val *
      (boundaryGauge T hT t (shift e.val.1 e.val.2))⁻¹ =
        glue T hT u (negativeHalf T hT t v) 1 e.val
    rw [glue_plus, glue_plus, boundaryGauge_positive T hT t _ e.prop.1,
      boundaryGauge_positive T hT t _ e.prop.2]
    simp
  · intro e
    rw [reflection_gauge, reflection_glue_plus]
    change boundaryGauge T hT t (reflectVertex e.val.1) *
      reflection (glue T hT u v t) e.val *
        (boundaryGauge T hT t (reflectVertex (shift e.val.1 e.val.2)))⁻¹ = _
    rw [reflection_glue_plus]
    rfl
  · intro e
    change boundaryGauge T hT t e.val.1 * glue T hT u v t e.val *
      (boundaryGauge T hT t (shift e.val.1 e.val.2))⁻¹ =
        glue T hT u (negativeHalf T hT t v) 1 e.val
    rw [glue_cross, glue_cross]
    exact boundaryGauge_cross T hT t e

/-- The conditional inner integral is independent of the crossing transports. -/
theorem conditional_boundary_integral (hT : 2 ≤ T) (I : C(Config T, ℂ))
    (hI : ∀ h : Gauge (2 * T) SU2, ∀ U : Config T, I (gaugeTransform h U) = I U)
    (t : CrossConfig T) :
    (∫ a, I (glue T hT a.1 a.2 t) ∂((halfMeasure T).prod (halfMeasure T))) =
      ∫ a, I (glue T hT a.1 a.2 1) ∂((halfMeasure T).prod (halfMeasure T)) := by
  let e : (HalfConfig T × HalfConfig T) ≃ᵐ (HalfConfig T × HalfConfig T) :=
    MeasurableEquiv.prodCongr (MeasurableEquiv.refl _) (negativeHalfEquiv T hT t)
  have hid : MeasurePreserving (fun u : HalfConfig T => u) (halfMeasure T) (halfMeasure T) :=
    ⟨measurable_id, by simp⟩
  have he : MeasurePreserving e ((halfMeasure T).prod (halfMeasure T))
      ((halfMeasure T).prod (halfMeasure T)) :=
    hid.prod (measurePreserving_negativeHalf T hT t)
  calc
    _ = ∫ a, I (glue T hT a.1 (negativeHalf T hT t a.2) 1)
        ∂((halfMeasure T).prod (halfMeasure T)) := by
      apply integral_congr_ae
      exact ae_of_all _ (fun a =>
        (hI (boundaryGauge T hT t) (glue T hT a.1 a.2 t)).symm.trans
          (congrArg I (gauge_glue T hT a.1 a.2 t)))
    _ = _ := he.integral_comp' (fun a => I (glue T hT a.1 a.2 1))

/-- Conditional Haar gluing, derived from actual coordinates and actual gauges.
Both original crossing Haar integrations are present before their mass-one return. -/
theorem two_boundary_gauge_haar_gluing (hT : 2 ≤ T) (I : C(Config T, ℂ))
    (hI : ∀ h : Gauge (2 * T) SU2, ∀ U : Config T, I (gaugeTransform h U) = I U) :
    (∫ U, I U ∂referenceMeasure (2 * T)) =
      ∫ u, ∫ v, I (glue T hT u v 1) ∂halfMeasure T ∂halfMeasure T := by
  have hi : Integrable (fun a : HalfConfig T × HalfConfig T =>
      I (glue T hT a.1 a.2 1)) ((halfMeasure T).prod (halfMeasure T)) :=
    (I.continuous.comp ((continuous_glue T hT).comp
      (continuous_id.prodMk continuous_const))).integrable_of_hasCompactSupport
        (HasCompactSupport.of_compactSpace _)
  calc
    _ = ∫ t, ∫ a, I (glue T hT a.1 a.2 t)
        ∂((halfMeasure T).prod (halfMeasure T)) ∂crossMeasure T :=
      integral_glue_cross_first T hT I
    _ = ∫ t : CrossConfig T, (∫ a, I (glue T hT a.1 a.2 1)
        ∂((halfMeasure T).prod (halfMeasure T))) ∂crossMeasure T := by
      apply integral_congr_ae
      exact ae_of_all _ (conditional_boundary_integral T hT I hI)
    _ = ∫ a, I (glue T hT a.1 a.2 1) ∂((halfMeasure T).prod (halfMeasure T)) := by
      simp only [integral_const, probReal_univ, one_smul]
    _ = _ := integral_prod _ hi

/-- A concrete consumer supplies gauge invariance by proof, not by a certificate. -/
theorem unnormalizedReflection_boundary_gluing (hT : 2 ≤ T) (β : ℝ)
    (F : positiveTimeAlgebra T) :
    (∫ U, unnormalizedReflection T β F U ∂referenceMeasure (2 * T)) =
      ∫ u, ∫ v, unnormalizedReflection T β F (glue T hT u v 1)
        ∂halfMeasure T ∂halfMeasure T :=
  two_boundary_gauge_haar_gluing T hT (unnormalizedReflectionMap T β F)
    (unnormalizedReflection_gauge T β F)

end ActualPeriod
end GRWTSK.Geometry.GaugeTheory.WilsonBoundaryGaugeIntegration
