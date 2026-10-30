/- Local attribution: grwtsk contributors.
Imported Carleson and Mathlib source keeps its public authorship and Apache-2.0 notices. -/
import GRWTSK.FourierAnalysis.FourierAnalysisInOneVariable.FiniteFourierReadoutConvergence

/-!
# Actual finite Fourier readout limits with convergent coefficient rows

The existing countable continuous-periodic family has one Lebesgue-full-measure
set of coordinate convergence. On that same set, products of convergent scalar
coefficients with the Fourier coordinates converge, and finite summation gives
the actual readout limit with the limiting coefficients.

The full-measure event is before all choices of finite support, coefficient
sequences and limiting rows. Each support is fixed as the Fourier cutoff varies;
the coefficient convergence premise is required only on that support. No l1
bound on the rows is needed. Empty support is included. The eventual cutoff may
depend on x, the support, the rows and their convergence, so no uniform rate over
convergent rows, growing-support result or infinite-sum interchange is supplied.

This advances the existing actual scalar-observation consumer: a residual against
its own moving coefficient row can vanish while the readout oscillates. Here an
explicit coefficient-convergence premise instead gives a fixed limiting readout.
Coefficient convergence is a premise for each selected row; the theorem constructs
no convergent coefficient family. The fixed countable function family
remains outside the a.e. quantifier; there is no common set for all continuous
functions and no finite cyclic-DFT/real-line Fourier-series representation bridge.

The selected endpoint is the pinned continuous classical Carleson theorem,
not the incomplete Carleson-Hunt Lp endpoint. The old six-root module is imported
without editing its source or historical verification scope. The native isolated
package retains Lean 4.36.0-rc1 and Mathlib d88814353fcbcc0461c55b2a4585d3f44d903df1.
SOURCE_PROOF_CANDIDATE: compilation, literal expected-interface checks, fresh
independent kernel replay and complete transitive axiom audit remain NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Filter Topology
open scoped BigOperators

namespace GRWTSK.FourierAnalysis.FourierAnalysisInOneVariable.ConvergentFourierReadouts

variable {ι : Type*} [Countable ι]

/-- One event for the fixed function family supports every finite readout whose
coefficient coordinates converge on its fixed support. The coefficients may be
chosen after x; their convergence remains an explicit pointwise premise. -/
theorem convergent_coefficients_readout_ae (f : ι → ℝ → ℂ)
    (hc : ∀ i, Continuous (f i))
    (hp : ∀ i, (f i).Periodic (2 * Real.pi)) :
    ∀ᵐ x : ℝ, ∀ s : Finset ι, ∀ W : ℕ → ι → ℂ, ∀ w : ι → ℂ,
      (∀ i ∈ s, Tendsto (fun N : ℕ => W N i) atTop (𝓝 (w i))) →
      Tendsto (fun N : ℕ => ∑ i ∈ s, W N i * partialFourierSum N (f i) x)
        atTop (𝓝 (∑ i ∈ s, w i * f i x)) := by
  filter_upwards [FiniteFourierReadoutConvergence.countable_family_ae_convergence f hc hp]
    with x hx
  intro s W w hW
  exact tendsto_finsetSum s (fun i hi => (hW i hi).mul (hx i))

/-- The actual residual from the fixed limiting-weight reference tends to zero
on the same kind of event before all finite supports and convergent rows. -/
theorem convergent_coefficients_fixed_residual_ae_tendsto_zero (f : ι → ℝ → ℂ)
    (hc : ∀ i, Continuous (f i))
    (hp : ∀ i, (f i).Periodic (2 * Real.pi)) :
    ∀ᵐ x : ℝ, ∀ s : Finset ι, ∀ W : ℕ → ι → ℂ, ∀ w : ι → ℂ,
      (∀ i ∈ s, Tendsto (fun N : ℕ => W N i) atTop (𝓝 (w i))) →
      Tendsto (fun N : ℕ => ‖(∑ i ∈ s, W N i * partialFourierSum N (f i) x) -
        (∑ i ∈ s, w i * f i x)‖) atTop (𝓝 0) := by
  filter_upwards [convergent_coefficients_readout_ae f hc hp] with x hx
  intro s W w hW
  have hconstant : Tendsto (fun _N : ℕ => ∑ i ∈ s, w i * f i x) atTop
      (𝓝 (∑ i ∈ s, w i * f i x)) := tendsto_const_nhds
  simpa only [sub_self, norm_zero] using ((hx s W w hW).sub hconstant).norm

end GRWTSK.FourierAnalysis.FourierAnalysisInOneVariable.ConvergentFourierReadouts
