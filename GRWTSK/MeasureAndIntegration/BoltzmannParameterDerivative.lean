/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib dominated differentiation retains upstream attribution and licenses. -/
import Mathlib.Analysis.Calculus.ParametricIntegral
import Mathlib.Analysis.SpecialFunctions.Log.Deriv
import Mathlib.MeasureTheory.Integral.Bochner.Basic
import Mathlib.Tactic

/-!
# Actual Boltzmann partition derivatives from pointwise action derivatives

No derivative of an integral is assumed. Local domination applies to the actual
weighted action derivative on a parameter neighborhood. The negative-log slope
is a normalized moment, preceding the second-derivative covariance identity.
No Wilson path, Hessian lower bound, multiscale flow or physical gap is supplied.
SOURCE_PROOF_CANDIDATE; all four qualification facets NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Analysis.Integration.BoltzmannParameterDerivative
open MeasureTheory Filter
open scoped Topology
variable {X : Type*} [MeasurableSpace X]
variable (μ : Measure X) [IsProbabilityMeasure μ]
variable (S dS : ℝ → X → ℝ) (β : ℝ)

def partition (t : ℝ) : ℝ := ∫ x, Real.exp (-β*S t x) ∂μ
def effectiveAction (t : ℝ) : ℝ := -Real.log (partition μ S β t)

variable {t : ℝ} {N : Set ℝ} (bound : X → ℝ)
variable (hN : N ∈ 𝓝 t)
  (hmeas : ∀ᶠ s in 𝓝 t, AEStronglyMeasurable (fun x => Real.exp (-β*S s x)) μ)
  (hint : Integrable (fun x => Real.exp (-β*S t x)) μ)
  (hdmeas : AEStronglyMeasurable (fun x => -β*(dS t x*Real.exp (-β*S t x))) μ)
  (hbound : ∀ᵐ x ∂μ, ∀ s ∈ N, ‖-β*(dS s x*Real.exp (-β*S s x))‖ ≤ bound x)
  (hib : Integrable bound μ)
  (hderiv : ∀ᵐ x ∂μ, ∀ s ∈ N, HasDerivAt (fun r => S r x) (dS s x) s)
include hN hmeas hint hdmeas hbound hib hderiv

/-- The integrated derivative is produced by dominated differentiation. -/
theorem partition_hasDerivAt :
    HasDerivAt (partition μ S β)
      (-β*(∫ x, dS t x*Real.exp (-β*S t x) ∂μ)) t := by
  have hdiff : ∀ᵐ x ∂μ, ∀ s ∈ N,
      HasDerivAt (fun r => Real.exp (-β*S r x))
        (-β*(dS s x*Real.exp (-β*S s x))) s := by
    filter_upwards [hderiv] with x hx
    intro s hs
    have hd := ((hx s hs).const_mul (-β)).exp
    convert hd using 1 <;> ring
  have h := hasDerivAt_integral_of_dominated_loc_of_deriv_le
    (μ := μ) (F := fun s x => Real.exp (-β*S s x))
    (F' := fun s x => -β*(dS s x*Real.exp (-β*S s x)))
    (bound := bound) hN hmeas hint hdmeas hbound hib hdiff
  simpa only [partition, integral_const_mul] using h.2

/-- Positivity follows from the actual exponential integral, not an opaque field. -/
theorem effectiveAction_hasDerivAt :
    HasDerivAt (effectiveAction μ S β)
      (β*((∫ x, dS t x*Real.exp (-β*S t x) ∂μ)/partition μ S β t)) t := by
  have hz := partition_hasDerivAt μ S dS β bound hN hmeas hint hdmeas hbound hib hderiv
  have hp : 0 < partition μ S β t := integral_exp_pos hint
  have hh := (hz.log (ne_of_gt hp)).neg
  change HasDerivAt (fun r => -Real.log (partition μ S β r)) _ t
  convert hh using 1 <;> ring

end GRWTSK.Analysis.Integration.BoltzmannParameterDerivative
