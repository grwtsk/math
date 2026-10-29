/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib retain their upstream attribution and licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonReflectionForm
import Mathlib.Analysis.SpecialFunctions.Exp

/-!
# Gauge intertwining of reflected observables

The reflected vertex gauge is the pullback by theta. The temporal inverse
reverses its two endpoint factors, so the actual configuration reflection
intertwines the actual gauge transformations. This proves gauge invariance
of the concrete unnormalized reflection integrand, the consumer needed for
conditional boundary-Haar gauge fixing.
SOURCE_PROOF_CANDIDATE / compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped ComplexConjugate

namespace GRWTSK.Geometry.GaugeTheory.WilsonReflectedGauge

open GRWTSK.Geometry.GaugeTheory.FinitePeriodicLattice
open GRWTSK.Geometry.GaugeTheory.BondTimeReflection
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.FiniteSU2Wilson
open GRWTSK.Geometry.GaugeTheory.PositiveTimeObservables

def reflectedGauge {L : ℕ} {G : Type*} (h : Gauge L G) : Gauge L G :=
  fun x => h (reflectVertex x)

theorem reflection_gauge {L : ℕ} {G : Type*} [Group G]
    (h : Gauge L G) (U : Configuration L G) :
    reflection (gaugeTransform h U) = gaugeTransform (reflectedGauge h) (reflection U) := by
  funext e
  rcases e with ⟨x, μ⟩
  by_cases hμ : μ = 0
  · subst μ
    simp only [reflection_temporal, gaugeTransform, reflectedGauge,
      reflectVertex_shift_time, shift_temporalBack_time]
    group
  · have hs (V : Configuration L G) (y : Vertex L) :
        reflection V (y, μ) = V (reflectVertex y, μ) := reflection_spatial V y μ hμ
    simp only [hs, gaugeTransform, reflectedGauge, reflectVertex_shift_space x μ hμ]
    group

section ActualPeriod
variable (T : ℕ) [NeZero (2 * T)]

/-- The actual reference-Haar integrand, before the existing Wilson normalization. -/
def unnormalizedReflection (β : ℝ) (F : positiveTimeAlgebra T) (U : Config T) : ℂ :=
  (Real.exp (-β * wilsonAction (2 * T) U) : ℂ) *
    (conj (F.val (reflection U)) * F.val U)

theorem continuous_unnormalizedReflection (β : ℝ) (F : positiveTimeAlgebra T) :
    Continuous (unnormalizedReflection T β F) :=
  (Complex.continuous_ofReal.comp
    (Real.continuous_exp.comp
      (continuous_const.mul (continuous_wilsonAction (2 * T))))).mul
      ((Complex.continuous_conj.comp
        (F.val.continuous.comp continuous_reflection)).mul F.val.continuous)

/-- No gauge invariance of a reflected observable is assumed: intertwining supplies it. -/
theorem unnormalizedReflection_gauge (β : ℝ) (F : positiveTimeAlgebra T)
    (h : Gauge (2 * T) SU2) (U : Config T) :
    unnormalizedReflection T β F (gaugeTransform h U) =
      unnormalizedReflection T β F U := by
  unfold unnormalizedReflection
  rw [wilsonAction_gauge, reflection_gauge,
    gaugeInvariant_of_mem T F (reflectedGauge h) (reflection U),
    gaugeInvariant_of_mem T F h U]

def unnormalizedReflectionMap (β : ℝ) (F : positiveTimeAlgebra T) : C(Config T, ℂ) :=
  ⟨unnormalizedReflection T β F, continuous_unnormalizedReflection T β F⟩

end ActualPeriod
end GRWTSK.Geometry.GaugeTheory.WilsonReflectedGauge
