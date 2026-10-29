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

/-- Every l1-unit-ball coefficient row is controlled by the actual finite sum
of coordinate residual norms. The same bound therefore controls rows chosen
after the cutoff is known; no coefficient convergence premise is needed. -/
theorem unit_ball_residual_le_coordinate_sum (s : Finset ι) (w : ι → ℂ)
    (f : ι → ℝ → ℂ) (N : ℕ) (x : ℝ)
    (hw : (∑ i ∈ s, ‖w i‖) ≤ 1) :
    ‖(∑ i ∈ s, w i * partialFourierSum N (f i) x) -
      (∑ i ∈ s, w i * f i x)‖ ≤
      ∑ i ∈ s, ‖partialFourierSum N (f i) x - f i x‖ := by
  classical
  calc
    _ = ‖∑ i ∈ s, w i * (partialFourierSum N (f i) x - f i x)‖ := by
      congr 1
      rw [← Finset.sum_sub_distrib]
      apply Finset.sum_congr rfl
      intro i _
      ring
    _ ≤ ∑ i ∈ s, ‖w i * (partialFourierSum N (f i) x - f i x)‖ :=
      norm_sum_le _ _
    _ ≤ ∑ i ∈ s, ‖partialFourierSum N (f i) x - f i x‖ := by
      apply Finset.sum_le_sum
      intro i hi
      have hwi : ‖w i‖ ≤ 1 :=
        (Finset.single_le_sum (fun j _ => norm_nonneg (w j)) hi).trans hw
      rw [norm_mul]
      simpa only [one_mul] using
        mul_le_mul_of_nonneg_right hwi (norm_nonneg (partialFourierSum N (f i) x - f i x))

/-- For one fixed finite family, one a.e. convergence set gives an eventual
error bound simultaneously for every l1-unit-ball coefficient row. The cutoff
threshold may depend on x, epsilon, the functions and s, but not on the row. -/
theorem finite_unit_ball_residual_ae_uniform (s : Finset ι)
    (f : ι → ℝ → ℂ) (hc : ∀ i, Continuous (f i))
    (hp : ∀ i, (f i).Periodic (2 * Real.pi)) :
    ∀ᵐ x : ℝ, ∀ ε : ℝ, 0 < ε → ∀ᶠ N : ℕ in atTop,
      ∀ w : ι → ℂ, (∑ i ∈ s, ‖w i‖) ≤ 1 →
        ‖(∑ i ∈ s, w i * partialFourierSum N (f i) x) -
          (∑ i ∈ s, w i * f i x)‖ < ε := by
  filter_upwards [countable_family_ae_convergence f hc hp] with x hx
  have hcoordinate (i : ι) :
      Tendsto (fun N => ‖partialFourierSum N (f i) x - f i x‖) atTop (𝓝 0) := by
    have hconstant : Tendsto (fun _N : ℕ => f i x) atTop (𝓝 (f i x)) :=
      tendsto_const_nhds
    simpa only [sub_self, norm_zero] using ((hx i).sub hconstant).norm
  have hsum : Tendsto
      (fun N => ∑ i ∈ s, ‖partialFourierSum N (f i) x - f i x‖) atTop (𝓝 0) := by
    simpa only [Finset.sum_const_zero] using
      tendsto_finsetSum s (fun i _ => hcoordinate i)
  intro ε hε
  filter_upwards [(tendsto_order.mp hsum).2 ε hε] with N hN
  intro w hw
  exact (unit_ball_residual_le_coordinate_sum s w f N x hw).trans_lt hN

/-- Cutoff-dependent coefficient rows may oscillate arbitrarily inside the
fixed finite-family l1 unit ball: their actual scalar residual still tends to
zero a.e. There is no growing support, rate, or cyclic-DFT representation claim. -/
theorem cutoff_dependent_unit_ball_residual_ae_tendsto_zero (s : Finset ι)
    (W : ℕ → ι → ℂ) (hW : ∀ N, (∑ i ∈ s, ‖W N i‖) ≤ 1)
    (f : ι → ℝ → ℂ) (hc : ∀ i, Continuous (f i))
    (hp : ∀ i, (f i).Periodic (2 * Real.pi)) :
    ∀ᵐ x : ℝ,
      Tendsto (fun N => ‖(∑ i ∈ s, W N i * partialFourierSum N (f i) x) -
        (∑ i ∈ s, W N i * f i x)‖) atTop (𝓝 0) := by
  filter_upwards [finite_unit_ball_residual_ae_uniform s f hc hp] with x hx
  apply tendsto_order.mpr
  constructor
  · intro a ha
    exact Filter.Eventually.of_forall (fun N => ha.trans_le (norm_nonneg _))
  · intro ε hε
    filter_upwards [hx ε hε] with N hN
    exact hN (W N) (hW N)

end GRWTSK.FourierAnalysis.FourierAnalysisInOneVariable.FiniteFourierReadoutConvergence
