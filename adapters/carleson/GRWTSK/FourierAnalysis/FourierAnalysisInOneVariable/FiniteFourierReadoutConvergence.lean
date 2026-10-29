/- Local attribution: grwtsk contributors.
Upstream Carleson authorship and Apache-2.0 licensing remain in the pinned dependency. -/
import Carleson.Classical.ClassicalCarleson

/-!
# Almost-everywhere convergence for finite weighted Fourier observations

This is a continuous-periodic consumer of the finite scalar-observation shape
used by GRWTSK.RealFunctions.DiscreteFourierReadout. It is not an identification
between a finite cyclic DFT and real-line Fourier series. A countable family
shares one full-measure set; a finite weighted observation converges on that set.
The continuous classical theorem is used rather than the pinned incomplete
Carleson-Hunt Lp endpoint, whose metadata records sorryAx.
SOURCE_PROOF_CANDIDATE: compilation, fresh kernel replay and axiom audit NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Filter Topology
open scoped BigOperators

namespace GRWTSK.FourierAnalysis.FourierAnalysisInOneVariable.FiniteFourierReadoutConvergence

variable {ι : Type*} [Countable ι]

/-- A fixed countable family of continuous 2pi-periodic functions shares one
full-measure convergence set; this is not one set for all continuous functions. -/
theorem countable_family_ae_convergence (f : ι → ℝ → ℂ)
    (hc : ∀ i, Continuous (f i))
    (hp : ∀ i, (f i).Periodic (2 * Real.pi)) :
    ∀ᵐ x : ℝ, ∀ i : ι,
      Tendsto (fun N => partialFourierSum N (f i) x) atTop (𝓝 (f i x)) := by
  exact ae_all_iff.mpr (fun i => _root_.classical_carleson (hc i) (hp i))

/-- Each fixed finite coefficient row gives an a.e. convergent scalar readout.
Coefficients are combined before taking an error norm. -/
theorem finite_weighted_readout_ae_convergence (s : Finset ι) (w : ι → ℂ)
    (f : ι → ℝ → ℂ) (hc : ∀ i, Continuous (f i))
    (hp : ∀ i, (f i).Periodic (2 * Real.pi)) :
    ∀ᵐ x : ℝ,
      Tendsto (fun N => ∑ i ∈ s, w i * partialFourierSum N (f i) x)
        atTop (𝓝 (∑ i ∈ s, w i * f i x)) := by
  filter_upwards [countable_family_ae_convergence f hc hp] with x hx
  exact tendsto_finsetSum s (fun i _ => tendsto_const_nhds.mul (hx i))

/-- The norm of the actual weighted readout residual tends to zero a.e.
No operator-norm rate, uniform family bound or interchange of infinite sums is supplied. -/
theorem finite_weighted_residual_ae_tendsto_zero (s : Finset ι) (w : ι → ℂ)
    (f : ι → ℝ → ℂ) (hc : ∀ i, Continuous (f i))
    (hp : ∀ i, (f i).Periodic (2 * Real.pi)) :
    ∀ᵐ x : ℝ,
      Tendsto (fun N => ‖(∑ i ∈ s, w i * partialFourierSum N (f i) x) -
        (∑ i ∈ s, w i * f i x)‖) atTop (𝓝 0) := by
  filter_upwards [finite_weighted_readout_ae_convergence s w f hc hp] with x hx
  have hconstant : Tendsto (fun _N : ℕ => ∑ i ∈ s, w i * f i x) atTop
      (𝓝 (∑ i ∈ s, w i * f i x)) := tendsto_const_nhds
  simpa only [sub_self, norm_zero] using (hx.sub hconstant).norm

end GRWTSK.FourierAnalysis.FourierAnalysisInOneVariable.FiniteFourierReadoutConvergence
