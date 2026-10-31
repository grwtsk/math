/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.MeasureAndIntegration.BoltzmannParameterDerivative

/-!
# Covariance response of actual normalized Boltzmann moments

Dominated differentiation is applied separately to the actual numerator and
partition. Separated weighted moments are integrable explicitly, including at
beta=0. The response is a covariance identity, not a uniform covariance bound.
SOURCE_PROOF_CANDIDATE; all four qualification facets NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Analysis.Integration.BoltzmannMomentResponse
open MeasureTheory Filter
open scoped Topology
open GRWTSK.Analysis.Integration.BoltzmannParameterDerivative
variable {X : Type*} [MeasurableSpace X]
variable (μ : Measure X) [IsProbabilityMeasure μ]
variable (S dS G dG : ℝ → X → ℝ) (β : ℝ)

def moment (H : ℝ → X → ℝ) (t : ℝ) : ℝ :=
  (∫ x, H t x*Real.exp (-β*S t x) ∂μ)/partition μ S β t

variable {t : ℝ} {N : Set ℝ} (bZ bG : X → ℝ)
variable (hN : N ∈ 𝓝 t)
  (hZm : ∀ᶠ s in 𝓝 t, AEStronglyMeasurable (fun x => Real.exp (-β*S s x)) μ)
  (hZi : Integrable (fun x => Real.exp (-β*S t x)) μ)
  (hZdm : AEStronglyMeasurable (fun x => -β*(dS t x*Real.exp (-β*S t x))) μ)
  (hZb : ∀ᵐ x ∂μ, ∀ s ∈ N, ‖-β*(dS s x*Real.exp (-β*S s x))‖ ≤ bZ x)
  (hZbi : Integrable bZ μ)
  (hS : ∀ᵐ x ∂μ, ∀ s ∈ N, HasDerivAt (fun r => S r x) (dS s x) s)
  (hGm : ∀ᶠ s in 𝓝 t, AEStronglyMeasurable (fun x => G s x*Real.exp (-β*S s x)) μ)
  (hGi : Integrable (fun x => G t x*Real.exp (-β*S t x)) μ)
  (hGdm : AEStronglyMeasurable (fun x => dG t x*Real.exp (-β*S t x)-
    β*((G t x*dS t x)*Real.exp (-β*S t x))) μ)
  (hGb : ∀ᵐ x ∂μ, ∀ s ∈ N, ‖dG s x*Real.exp (-β*S s x)-
    β*((G s x*dS s x)*Real.exp (-β*S s x))‖ ≤ bG x)
  (hGbi : Integrable bG μ)
  (hG : ∀ᵐ x ∂μ, ∀ s ∈ N, HasDerivAt (fun r => G r x) (dG s x) s)
  (hIdG : Integrable (fun x => dG t x*Real.exp (-β*S t x)) μ)
  (hIGdS : Integrable (fun x => (G t x*dS t x)*Real.exp (-β*S t x)) μ)
  (hIdS : Integrable (fun x => dS t x*Real.exp (-β*S t x)) μ)
include hN hZm hZi hZdm hZb hZbi hS hGm hGi hGdm hGb hGbi hG hIdG hIGdS hIdS

/-- The negative covariance term retains the same actual normalized law. -/
theorem moment_hasDerivAt :
    HasDerivAt (moment μ S β G)
      (moment μ S β dG t-β*(moment μ S β (fun s x => G s x*dS s x) t-
        moment μ S β G t*moment μ S β dS t)) t := by
  have hdiff : ∀ᵐ x ∂μ, ∀ s ∈ N,
      HasDerivAt (fun r => G r x*Real.exp (-β*S r x))
        (dG s x*Real.exp (-β*S s x)-β*((G s x*dS s x)*Real.exp (-β*S s x))) s := by
    filter_upwards [hS,hG] with x hx hy
    intro s hs
    have hd := (hy s hs).mul (((hx s hs).const_mul (-β)).exp)
    convert hd using 1 <;> ring
  have hn := hasDerivAt_integral_of_dominated_loc_of_deriv_le
    (μ := μ) (F := fun s x => G s x*Real.exp (-β*S s x))
    (F' := fun s x => dG s x*Real.exp (-β*S s x)-
      β*((G s x*dS s x)*Real.exp (-β*S s x)))
    (bound := bG) hN hGm hGi hGdm hGb hGbi hdiff
  have hz := partition_hasDerivAt μ S dS β bZ hN hZm hZi hZdm hZb hZbi hS
  have hp : 0 < partition μ S β t := integral_exp_pos hZi
  have heq : (∫ x, dG t x*Real.exp (-β*S t x)-
      β*((G t x*dS t x)*Real.exp (-β*S t x)) ∂μ) =
      (∫ x, dG t x*Real.exp (-β*S t x) ∂μ)-
        β*(∫ x, (G t x*dS t x)*Real.exp (-β*S t x) ∂μ) := by
    rw [integral_sub hIdG (hIGdS.const_mul β), integral_const_mul]
  have hh := hn.2.div hz (ne_of_gt hp)
  rw [heq] at hh
  unfold moment
  convert hh using 1 <;> field_simp [ne_of_gt hp] <;> ring

end GRWTSK.Analysis.Integration.BoltzmannMomentResponse
