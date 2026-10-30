import GRWTSK.SequencesSeriesSummability.ConvergenceAndDivergenceOfInfiniteLimitingProcesses.ConvergenceAndDivergenceOfSeriesAndSequences.GoldenFractionIteration
import Mathlib.Analysis.Calculus.Deriv.Inv
import Mathlib.Tactic

/-!
# Actual rescaled local transformations and fixed-point derivatives

Local attribution: grwtsk contributors.
Grant Sanderson, The other way to visualize derivatives (2018-05-19),
Blog Adaptation Vivek Verma,
https://www.3blue1brown.com/lessons/derivatives-and-transforms/ .
All bodies and inherited suppliers: NOT_RUN_USER_DEFERRED.

A literal rescaled square map has a uniform error over every bounded local
input cluster. Actual inverse calculus supplies the continued-fraction map's
fixed-point derivative magnitudes. These local facts do not replace the separate
positive-orbit convergence proof or classify negative-start basins.
-/

namespace GRWTSK.RealAnalysis.DerivativeLocalTransform

open Filter
open GRWTSK.Sequences.GoldenFractionIteration
open scoped Topology

noncomputable def rescaledSquare (a h u : ℝ) : ℝ := ((a+h*u)^2-a^2)/h

theorem rescaled_square_formula (a h u : ℝ) (hh : h ≠ 0) :
    rescaledSquare a h u = 2*a*u+h*u^2 := by
  dsimp [rescaledSquare]
  field_simp [hh]
  <;> ring

theorem exact_rescaling_error (a h u : ℝ) (hh : h ≠ 0) :
    |rescaledSquare a h u-2*a*u| = |h|*u^2 := by
  rw [rescaled_square_formula a h u hh]
  have he : 2*a*u+h*u^2-2*a*u = h*u^2 := by ring
  rw [he,abs_mul,abs_of_nonneg (sq_nonneg u)]

theorem bounded_cluster_error (a h u R : ℝ) (hh : h ≠ 0)
    (hR : 0 ≤ R) (hu : |u| ≤ R) :
    |rescaledSquare a h u-2*a*u| ≤ |h|*R^2 := by
  rw [exact_rescaling_error a h u hh]
  apply mul_le_mul_of_nonneg_left _ (abs_nonneg h)
  have hs : |u|^2 ≤ R^2 := by nlinarith [abs_nonneg u]
  simpa only [sq_abs] using hs

/-- The same explicit radius controls every local input in the bounded cluster. -/
theorem uniform_cluster_control (a R : ℝ) (hR : 0 ≤ R) (ε : ℝ) (hε : 0 < ε) :
    ∃ δ > 0, ∀ h : ℝ, h ≠ 0 → |h| < δ → ∀ u : ℝ, |u| ≤ R →
      |rescaledSquare a h u-2*a*u| < ε := by
  refine ⟨ε/(R^2+1),by positivity,fun h hh hd u hu => ?_⟩
  have hp : 0 < R^2+1 := by positivity
  have ht : |h|*(R^2+1) < ε := (lt_div_iff₀ hp).mp hd
  calc |rescaledSquare a h u-2*a*u| ≤ |h|*R^2 := bounded_cluster_error a h u R hh hR hu
       _ ≤ |h|*(R^2+1) := by nlinarith [abs_nonneg h]
       _ < ε := ht

theorem local_input_tendsto (a u : ℝ) :
    Tendsto (fun h : ℝ => rescaledSquare a h u) (𝓝[≠] 0) (𝓝 (2*a*u)) := by
  rw [Metric.tendsto_nhdsWithin_nhds]
  intro ε hε
  obtain ⟨δ,hδ,hc⟩ := uniform_cluster_control a |u| (abs_nonneg u) ε hε
  refine ⟨δ,hδ,fun h hh hd => ?_⟩
  have hn : h ≠ 0 := by simpa using hh
  simpa only [Real.dist_eq] using hc h hn (by simpa [Real.dist_eq] using hd) u le_rfl

/-- The four literal centers in the source have distinct stretching/orientation factors. -/
theorem source_centers (h u : ℝ) (hh : h ≠ 0) :
    rescaledSquare 1 h u = 2*u+h*u^2 ∧
    rescaledSquare 3 h u = 6*u+h*u^2 ∧
    rescaledSquare (1/4) h u = (1/2)*u+h*u^2 ∧
    rescaledSquare (-2) h u = -4*u+h*u^2 := by
  simp only [rescaled_square_formula _ _ _ hh]
  constructor
  · ring
  constructor
  · ring
  constructor <;> ring

theorem zero_center_limit (u : ℝ) :
    Tendsto (fun h : ℝ => rescaledSquare 0 h u) (𝓝[≠] 0) (𝓝 0) := by
  simpa using local_input_tendsto 0 u

/-- Limiting collapse is not an exact collapse at any nonzero zoom. -/
theorem finite_zoom_not_collapsed (h : ℝ) (hh : h ≠ 0) :
    rescaledSquare 0 h 1 ≠ 0 := by
  simpa [rescaled_square_formula 0 h 1 hh] using hh

theorem zero_zoom_boundary : rescaledSquare 1 0 1 = 0 ∧ rescaledSquare 1 0 1 ≠ 2 := by
  norm_num [rescaledSquare]

theorem step_derivative (x : ℝ) (hx : x ≠ 0) :
    HasDerivAt step (-1/x^2) x := by
  have hd := ((hasDerivAt_id x).inv hx).const_add 1
  convert hd using 1 <;> simp [step,one_div]

theorem golden_derivative_magnitude : |deriv step Real.goldenRatio| < 1 := by
  rw [(step_derivative Real.goldenRatio Real.goldenRatio_ne_zero).deriv]
  have hp : 0 < Real.goldenRatio^2 := sq_pos_of_ne_zero Real.goldenRatio_ne_zero
  rw [abs_div,abs_of_pos hp]
  norm_num only [abs_neg,abs_one]
  apply (div_lt_iff₀ hp).2
  nlinarith [Real.one_lt_goldenRatio]

theorem conjugate_derivative_magnitude : 1 < |deriv step Real.goldenConj| := by
  rw [(step_derivative Real.goldenConj Real.goldenConj_ne_zero).deriv]
  have hp : 0 < Real.goldenConj^2 := sq_pos_of_ne_zero Real.goldenConj_ne_zero
  rw [abs_div,abs_of_pos hp]
  norm_num only [abs_neg,abs_one]
  apply (lt_div_iff₀ hp).2
  nlinarith [Real.goldenConj_sq,Real.goldenConj_neg]

/-- A derivative-magnitude statement is accompanied by the independent actual orbit consumer. -/
theorem derivative_and_orbit_consumer (x : ℝ) (hx : 0 < x) :
    |deriv step Real.goldenRatio| < 1 ∧
    1 < |deriv step Real.goldenConj| ∧
    Tendsto (orbit x) atTop (𝓝 Real.goldenRatio) :=
  ⟨golden_derivative_magnitude,conjugate_derivative_magnitude,positive_orbit_tendsto hx⟩

end GRWTSK.RealAnalysis.DerivativeLocalTransform
