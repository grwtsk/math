import GRWTSK.RealFunctions.FunctionsOfSeveralVariables.CalculusOfVectorFunctions.FourSwirlsFluxCurl

/-!
# Exact-real comparison of the pinned animation's finite helpers

Local attribution: grwtsk contributors.
Grant Sanderson, Divergence and curl (2018-06-21),
https://www.3blue1brown.com/lessons/divergence-and-curl/ .
Current 3b1b/videos306a1346a356c7a7b097875ceb51c5cd67d0a56c,
_2018/div_curl.py37..72,89..97; CC BY-NC-SA4.0/public attribution retained.

This is an exact-real arithmetic model of the written expressions, not Python
floating-point refinement or an original2018 snapshot/narration error claim.
The written divergence expression shifts RIGHT in every loop iteration, despite
binding a different `vect`. The direction-corrected model below is distinct.
All bodies and inherited suppliers: NOT_RUN_USER_DEFERRED.
-/
namespace GRWTSK.VectorCalculus.FourSwirlsFluxCurl

open Filter
open scoped Topology

noncomputable def finiteCurl (x y d : ℝ) : ℝ :=
  (Q (x+d) y-Q x y)/d-(P x (y+d)-P x y)/d

/-- All three components are shifted in x; the third component of this field is zero. -/
noncomputable def writtenFiniteDivergence (x y d : ℝ) : ℝ :=
  (P (x+d) y-P x y)/d+(Q (x+d) y-Q x y)/d+(0-0)/d

/-- A separate model using the corresponding coordinate direction for each component. -/
noncomputable def directionalFiniteDivergence (x y d : ℝ) : ℝ :=
  (P (x+d) y-P x y)/d+(Q x (y+d)-Q x y)/d+(0-0)/d

theorem finite_curl_formula (x y d : ℝ) (hd : d ≠ 0) :
    finiteCurl x y d = scalarCurl x y+3*(x-y)*d/20 := by
  rw [scalar_curl_formula]
  unfold finiteCurl P Q
  field_simp [hd]
  <;> ring

theorem finite_curl_error (x y d : ℝ) (hd : d ≠ 0) :
    |finiteCurl x y d-scalarCurl x y| = 3*|x-y|*|d|/20 := by
  rw [finite_curl_formula x y d hd]
  have he : scalarCurl x y+3*(x-y)*d/20-scalarCurl x y = 3*(x-y)*d/20 := by ring
  rw [he,abs_div,abs_mul,abs_mul]
  norm_num

theorem finite_curl_bounded_error (x y d R : ℝ) (hd : d ≠ 0)
    (hx : |x| ≤ R) (hy : |y| ≤ R) :
    |finiteCurl x y d-scalarCurl x y| ≤ 3*R*|d|/10 := by
  rw [finite_curl_error x y d hd]
  have hxy : |x-y| ≤ 2*R := (abs_sub x y).trans (by linarith)
  have hm := mul_le_mul_of_nonneg_right hxy (abs_nonneg d)
  nlinarith

/-- Radius precedes the choice of both center coordinates and the nonzero step. -/
theorem finite_curl_uniform_control (R ε : ℝ) (hR : 0 ≤ R) (hε : 0 < ε) :
    ∃ δ > 0, ∀ x y d : ℝ, |x| ≤ R → |y| ≤ R → d ≠ 0 → |d| < δ →
      |finiteCurl x y d-scalarCurl x y| < ε := by
  refine ⟨ε/(3*R+1),div_pos hε (by positivity),?_⟩
  intro x y d hx hy hd hstep
  have hm : |d|*(3*R+1) < ε := (lt_div_iff₀ (by positivity : 0 < 3*R+1)).mp hstep
  have hb := finite_curl_bounded_error x y d R hd hx hy
  have hp : 0 ≤ R*|d| := mul_nonneg hR (abs_nonneg d)
  nlinarith [abs_nonneg d]

theorem finite_curl_tendsto (x y : ℝ) :
    Tendsto (finiteCurl x y) (𝓝[≠] (0 : ℝ)) (𝓝 (scalarCurl x y)) := by
  have hc : Continuous (fun d : ℝ => scalarCurl x y+3*(x-y)*d/20) := by fun_prop
  have ht : Tendsto (fun d : ℝ => scalarCurl x y+3*(x-y)*d/20)
      (𝓝[≠] (0 : ℝ)) (𝓝 (scalarCurl x y)) := by
    simpa using hc.continuousAt.tendsto.mono_left nhdsWithin_le_nhds
  apply ht.congr'
  filter_upwards [self_mem_nhdsWithin] with d hd
  exact (finite_curl_formula x y d (by simpa using hd)).symm

theorem written_divergence_formula (x y d : ℝ) (hd : d ≠ 0) :
    writtenFiniteDivergence x y d = (3*x^2+3*x*d+d^2-16)/20 := by
  unfold writtenFiniteDivergence P Q
  field_simp [hd]
  <;> ring

theorem directional_divergence_zero (x y d : ℝ) :
    directionalFiniteDivergence x y d = analyticDivergence x y := by
  rw [divergence_zero]
  simp [directionalFiniteDivergence,P,Q]

theorem written_divergence_counterexample (y : ℝ) :
    writtenFiniteDivergence 0 y 1 = -3/4 ∧ analyticDivergence 0 y = 0 := by
  rw [written_divergence_formula 0 y 1 (by norm_num),divergence_zero]
  norm_num

theorem written_divergence_tendsto (x y : ℝ) :
    Tendsto (writtenFiniteDivergence x y) (𝓝[≠] (0 : ℝ))
      (𝓝 ((3*x^2-16)/20)) := by
  have hc : Continuous (fun d : ℝ => (3*x^2+3*x*d+d^2-16)/20) := by fun_prop
  have ht : Tendsto (fun d : ℝ => (3*x^2+3*x*d+d^2-16)/20)
      (𝓝[≠] (0 : ℝ)) (𝓝 ((3*x^2-16)/20)) := by
    simpa using hc.continuousAt.tendsto.mono_left nhdsWithin_le_nhds
  apply ht.congr'
  filter_upwards [self_mem_nhdsWithin] with d hd
  exact (written_divergence_formula x y d (by simpa using hd)).symm

theorem written_divergence_origin_wrong_limit (y : ℝ) :
    Tendsto (writtenFiniteDivergence 0 y) (𝓝[≠] (0 : ℝ)) (𝓝 (-4/5 : ℝ)) ∧
    (-4/5 : ℝ) ≠ analyticDivergence 0 y := by
  constructor
  · convert written_divergence_tendsto 0 y using 1 <;> norm_num
  · rw [divergence_zero]
    norm_num

/-- Lean total division at zero is outside the nonzero-step formulas. -/
theorem zero_step_boundary (x y : ℝ) :
    finiteCurl x y 0 = 0 ∧ writtenFiniteDivergence x y 0 = 0 := by
  simp [finiteCurl,writtenFiniteDivergence]

theorem finite_curl_nonzero_step_bias : finiteCurl 1 0 1-scalarCurl 1 0 = 3/20 := by
  rw [finite_curl_formula 1 0 1 (by norm_num)]
  ring

end GRWTSK.VectorCalculus.FourSwirlsFluxCurl
