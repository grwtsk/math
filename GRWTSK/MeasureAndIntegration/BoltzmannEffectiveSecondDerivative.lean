/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.MeasureAndIntegration.BoltzmannMomentResponse

/-!
# Actual effective-action second derivative with its negative covariance loss

First derivatives are proved on an open neighborhood from pointwise action
regularity and domination. Their equality with the moment slope is transported
before taking its derivative. This is a real-parameter derivative, not an
unproved identification with a Riemannian gauge Hessian or a curvature bound.
SOURCE_PROOF_CANDIDATE; compilation, replay, axioms and interfaces NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Analysis.Integration.BoltzmannEffectiveSecondDerivative
open MeasureTheory Filter
open scoped Topology
open GRWTSK.Analysis.Integration.BoltzmannParameterDerivative
open GRWTSK.Analysis.Integration.BoltzmannMomentResponse
variable {X : Type*} [MeasurableSpace X]
variable (μ : Measure X) [IsProbabilityMeasure μ]
variable (S dS ddS : ℝ → X → ℝ) (β : ℝ)

/-- Every differential and domination premise concerns actual integrands. -/
theorem effectiveAction_second_hasDerivAt
    {t : ℝ} {N : Set ℝ} (hNo : IsOpen N) (ht : t ∈ N) (bZ bG : X → ℝ)
    (hZm : ∀ s ∈ N, AEStronglyMeasurable (fun x => Real.exp (-β*S s x)) μ)
    (hZi : ∀ s ∈ N, Integrable (fun x => Real.exp (-β*S s x)) μ)
    (hZdm : ∀ s ∈ N, AEStronglyMeasurable
      (fun x => -β*(dS s x*Real.exp (-β*S s x))) μ)
    (hZb : ∀ᵐ x ∂μ, ∀ s ∈ N, ‖-β*(dS s x*Real.exp (-β*S s x))‖ ≤ bZ x)
    (hZbi : Integrable bZ μ)
    (hS : ∀ᵐ x ∂μ, ∀ s ∈ N, HasDerivAt (fun r => S r x) (dS s x) s)
    (hGm : ∀ s ∈ N, AEStronglyMeasurable (fun x => dS s x*Real.exp (-β*S s x)) μ)
    (hGi : Integrable (fun x => dS t x*Real.exp (-β*S t x)) μ)
    (hGdm : AEStronglyMeasurable (fun x => ddS t x*Real.exp (-β*S t x)-
      β*((dS t x*dS t x)*Real.exp (-β*S t x))) μ)
    (hGb : ∀ᵐ x ∂μ, ∀ s ∈ N, ‖ddS s x*Real.exp (-β*S s x)-
      β*((dS s x*dS s x)*Real.exp (-β*S s x))‖ ≤ bG x)
    (hGbi : Integrable bG μ)
    (hG : ∀ᵐ x ∂μ, ∀ s ∈ N, HasDerivAt (fun r => dS r x) (ddS s x) s)
    (hIddS : Integrable (fun x => ddS t x*Real.exp (-β*S t x)) μ)
    (hIdSsq : Integrable (fun x => (dS t x*dS t x)*Real.exp (-β*S t x)) μ) :
    HasDerivAt (deriv (effectiveAction μ S β))
      (β*moment μ S β ddS t-β^2*(moment μ S β (fun s x => dS s x*dS s x) t-
        (moment μ S β dS t)^2)) t := by
  have hN : N ∈ 𝓝 t := hNo.mem_nhds ht
  have hnear : deriv (effectiveAction μ S β) =ᶠ[𝓝 t]
      (fun s => β*moment μ S β dS s) := by
    filter_upwards [hN] with s hs
    have hsN : N ∈ 𝓝 s := hNo.mem_nhds hs
    have hmeas : ∀ᶠ r in 𝓝 s, AEStronglyMeasurable
        (fun x => Real.exp (-β*S r x)) μ := by
      filter_upwards [hsN] with r hr
      exact hZm r hr
    have hd := effectiveAction_hasDerivAt μ S dS β bZ hsN hmeas (hZi s hs)
      (hZdm s hs) hZb hZbi hS
    exact hd.deriv
  have hmeas : ∀ᶠ s in 𝓝 t, AEStronglyMeasurable
      (fun x => Real.exp (-β*S s x)) μ := by
    filter_upwards [hN] with s hs
    exact hZm s hs
  have hnummeas : ∀ᶠ s in 𝓝 t, AEStronglyMeasurable
      (fun x => dS s x*Real.exp (-β*S s x)) μ := by
    filter_upwards [hN] with s hs
    exact hGm s hs
  have hm := moment_hasDerivAt μ S dS dS ddS β bZ bG hN hmeas (hZi t ht)
    (hZdm t ht) hZb hZbi hS hnummeas hGi hGdm hGb hGbi hG hIddS hIdSsq hGi
  have hd := (hm.const_mul β).congr_of_eventuallyEq hnear
  convert hd using 1 <;> ring

end GRWTSK.Analysis.Integration.BoltzmannEffectiveSecondDerivative
