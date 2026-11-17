/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import Mathlib.Analysis.SpecificLimits.Basic
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimitiveRationalWindowApproximation
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimitiveRationalWindowUniformH1

/-! # Density of the normalized rational codes in the original stage topology -/

set_option autoImplicit false

open Filter MeasureTheory Set
open scoped Topology

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open NativeMixedGammaH1

private noncomputable def admissibleClassicalH1 {q : ℕ} [NeZero q]
    {χ : DirichletCharacter ℂ q} {T : ℝ} {f : ℝ → ℝ} (hf : Admissible χ T f) :
    ClassicalRealH1 f := by
  have hdiff := hf.2.1
  have hcompact := hf.2.2.1
  have hd := hdiff.continuous_deriv (by norm_num)
  exact ⟨deriv f, fun x => ((hdiff.differentiable (by norm_num)) x).hasDerivAt,
    hd, hdiff.continuous.memLp_of_hasCompactSupport hcompact,
    hd.memLp_of_hasCompactSupport hcompact.deriv⟩

/-- The original stage mass ball has a dense range of normalized rational
coefficient lists under its native product-L² topology. -/
theorem denseRange_primitiveStageMassTestOfNormalizedCode
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q) (j : ℕ) :
    @DenseRange (PrimitiveStageMassTest χ j) (primitiveStageH1Topology χ j)
      (List ℚ) (primitiveStageMassTestOfNormalizedCode χ j) := by
  let _ := primitiveStageH1Topology χ j
  intro f
  have hT : (0 : ℝ) < (j : ℝ) + 1 := by positivity
  let δ (n : ℕ) : ℝ := 1 / ((n : ℝ) + 1)
  have hδ (n : ℕ) : 0 < δ n := by dsimp [δ]; positivity
  have hcodes (n : ℕ) := admissible_exists_rationalWindowTest_near_with_derivative
    χ hT f.property.1 (hδ n)
  choose cs hcs using hcodes
  let hraw (n : ℕ) := admissibleClassicalH1 (rationalWindowTest_admissible χ hT (cs n))
  let htarget := admissibleClassicalH1 f.property.1
  have hlim : Tendsto δ atTop (𝓝 0) := tendsto_one_div_add_atTop_nhds_zero_nat
  have hconv := tendsto_normalized_stage_of_uniform_window_error χ j cs f htarget hraw
    δ (fun n => (hδ n).le) hlim
    (fun n x hx => (hcs n x hx).1.le)
    (fun n x hx => by simpa only [hraw, htarget, admissibleClassicalH1] using (hcs n x hx).2.le)
  exact mem_closure_of_tendsto hconv
    (Eventually.of_forall fun n => mem_range_self (cs n))

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
