/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib's Bochner integration and continuous-map results retain their original
upstream authorship and Apache-2.0 license. Other imports retain their licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.ReflectionHaar
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.PositiveTimeObservables
import Mathlib.MeasureTheory.Function.LocallyIntegrable
import Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap

/-!
# The Hermitian reflection form for the actual finite Wilson measure

The bond reflection is the actual involutive homeomorphism of the complete
configuration space. Its preservation of the constructed Wilson measure was
proved from actual Haar inversion, coordinate permutation and action symmetry.
The integrand of the reflection form is continuous on this compact space and
is therefore integrable under the actual Wilson probability for beta>=0.

Changing variables by this measure-preserving involution proves conjugate
symmetry and a real diagonal. The form is first defined on every continuous
complex observable, then restricted to the actual positive-time gauge-invariant
algebra at L=2*T,T>=2. Reflection exchanges time halves; no invariance of that
positive algebra under reflection is assumed or required.

Conjugate symmetry and a real diagonal do not prove a nonnegative diagonal.
No positivity certificate, Hilbert norm, vacuum Hamiltonian, continuum limit
or mass gap is constructed. Both crossing temporal layers remain integrated.

SOURCE_PROOF_CANDIDATE / compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped ComplexConjugate

namespace GRWTSK.Geometry.GaugeTheory.WilsonReflectionForm

open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.FinitePeriodicLattice
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.FiniteSU2Wilson
open GRWTSK.Geometry.GaugeTheory.BondTimeReflection
open GRWTSK.Geometry.GaugeTheory.ReflectionHaar
open GRWTSK.Geometry.GaugeTheory.PositiveTimeObservables

section NonzeroPeriod

variable (L : ℕ) [NeZero L]

/-- The actual integrand; the full reflected configuration remains present. -/
def reflectionProduct (F G : C(Configuration L SU2, ℂ))
    (U : Configuration L SU2) : ℂ := conj (F (reflection U)) * G U

theorem continuous_reflectionProduct (F G : C(Configuration L SU2, ℂ)) :
    Continuous (reflectionProduct L F G) :=
  (Complex.continuous_conj.comp
    (F.continuous.comp continuous_reflection)).mul G.continuous

/-- Actual observable integrability uses compactness and the proved Wilson
probability property, not a supplied integrability field. -/
theorem integrable_reflectionProduct (β : ℝ) (hβ : 0 ≤ β)
    (F G : C(Configuration L SU2, ℂ)) :
    Integrable (reflectionProduct L F G) (wilsonMeasure L β) := by
  letI : IsProbabilityMeasure (wilsonMeasure L β) :=
    wilsonMeasure_isProbabilityMeasure L β hβ
  exact (continuous_reflectionProduct L F G).integrable_of_hasCompactSupport
    (HasCompactSupport.of_compactSpace _)

/-- The reflection form for the exact finite Wilson density measure. -/
def reflectionForm (β : ℝ) (F G : C(Configuration L SU2, ℂ)) : ℂ :=
  ∫ U, reflectionProduct L F G U ∂wilsonMeasure L β

/-- Conjugate symmetry follows from the proved measure-preserving reflection
and its actual involution law. It requires no positivity premise. The symmetry
identity itself holds for every real beta; probability/integrability is supplied
separately for beta>=0. -/
theorem reflectionForm_hermitian (β : ℝ) (F G : C(Configuration L SU2, ℂ)) :
    reflectionForm L β F G = conj (reflectionForm L β G F) := by
  have hEmb : MeasurableEmbedding
      (reflection : Configuration L SU2 → Configuration L SU2) :=
    (reflectionHomeomorph (L := L) (G := SU2)).measurableEmbedding
  have hchange :
      (∫ U, conj (G U) * F (reflection U) ∂wilsonMeasure L β) =
        reflectionForm L β G F := by
    have h := (measurePreserving_wilson_reflection L β).integral_comp hEmb
      (fun U : Configuration L SU2 => reflectionProduct L G F U)
    simpa only [reflectionProduct, reflection_involutive, reflectionForm] using h
  change (∫ U, conj (F (reflection U)) * G U ∂wilsonMeasure L β) =
    conj (reflectionForm L β G F)
  rw [← hchange, ← integral_conj]
  apply integral_congr_ae
  exact ae_of_all _ (fun U => by
    simp only [map_mul, starRingEnd_self_apply]
    exact mul_comm _ _)

/-- A Hermitian reflection form has a real diagonal, even before any
reflection-positivity theorem has been proved. -/
theorem reflectionForm_diagonal_im_zero (β : ℝ)
    (F : C(Configuration L SU2, ℂ)) : (reflectionForm L β F F).im = 0 :=
  Complex.conj_eq_iff_im.mp (reflectionForm_hermitian L β F F).symm

theorem reflectionForm_diagonal_eq_real (β : ℝ)
    (F : C(Configuration L SU2, ℂ)) :
    reflectionForm L β F F = ((reflectionForm L β F F).re : ℂ) :=
  (Complex.conj_eq_iff_re.mp (reflectionForm_hermitian L β F F).symm).symm

end NonzeroPeriod

/-- The exact existing Wilson measure specialized to the requested period.
The only local instance is proved from T>=2; it is not a measure hypothesis. -/
def positiveWilsonMeasure (T : ℕ) (hT : 2 ≤ T) (β : ℝ) : Measure (Config T) :=
  letI : NeZero (2 * T) := ⟨by omega⟩
  wilsonMeasure (2 * T) β

/-- Restrict the same form to the concrete continuous gauge-invariant
positive-time algebra, retaining integration over every crossing link. -/
def positiveReflectionForm (T : ℕ) (hT : 2 ≤ T) (β : ℝ)
    (F G : positiveTimeAlgebra T) : ℂ :=
  ∫ U, conj (F.val (reflection U)) * G.val U ∂positiveWilsonMeasure T hT β

/-- These actual positive-time observables have integrable reflection
products under the exact full Wilson probability. -/
theorem positiveReflectionForm_integrable (T : ℕ) (hT : 2 ≤ T)
    (β : ℝ) (hβ : 0 ≤ β) (F G : positiveTimeAlgebra T) :
    Integrable (fun U : Config T => conj (F.val (reflection U)) * G.val U)
      (positiveWilsonMeasure T hT β) := by
  letI : NeZero (2 * T) := ⟨by omega⟩
  exact integrable_reflectionProduct (2 * T) β hβ F.val G.val

/-- The genuine Hermitian consumer on the requested observable algebra.
It uses the full-space involution, not an assertion that the positive algebra
is preserved by that involution. -/
theorem positiveReflectionForm_hermitian (T : ℕ) (hT : 2 ≤ T) (β : ℝ)
    (F G : positiveTimeAlgebra T) :
    positiveReflectionForm T hT β F G =
      conj (positiveReflectionForm T hT β G F) := by
  letI : NeZero (2 * T) := ⟨by omega⟩
  exact reflectionForm_hermitian (2 * T) β F.val G.val

/-- The actual positive-time diagonal is real. Its sign remains unproved. -/
theorem positiveReflectionForm_diagonal_im_zero (T : ℕ) (hT : 2 ≤ T) (β : ℝ)
    (F : positiveTimeAlgebra T) : (positiveReflectionForm T hT β F F).im = 0 :=
  Complex.conj_eq_iff_im.mp (positiveReflectionForm_hermitian T hT β F F).symm

theorem positiveReflectionForm_diagonal_eq_real (T : ℕ) (hT : 2 ≤ T) (β : ℝ)
    (F : positiveTimeAlgebra T) :
    positiveReflectionForm T hT β F F =
      ((positiveReflectionForm T hT β F F).re : ℂ) :=
  (Complex.conj_eq_iff_re.mp (positiveReflectionForm_hermitian T hT β F F).symm).symm

/-- The requested finite probability consumer supplies integrability together
with Hermiticity and a real diagonal on the actual positive-time algebra.
No nonnegative-diagonal statement is included. -/
theorem positiveReflectionForm_properties (T : ℕ) (hT : 2 ≤ T)
    (β : ℝ) (hβ : 0 ≤ β) (F G : positiveTimeAlgebra T) :
    Integrable (fun U : Config T => conj (F.val (reflection U)) * G.val U)
        (positiveWilsonMeasure T hT β) ∧
      positiveReflectionForm T hT β F G =
        conj (positiveReflectionForm T hT β G F) ∧
      (positiveReflectionForm T hT β F F).im = 0 :=
  ⟨positiveReflectionForm_integrable T hT β hβ F G,
    positiveReflectionForm_hermitian T hT β F G,
    positiveReflectionForm_diagonal_im_zero T hT β F⟩

end GRWTSK.Geometry.GaugeTheory.WilsonReflectionForm
