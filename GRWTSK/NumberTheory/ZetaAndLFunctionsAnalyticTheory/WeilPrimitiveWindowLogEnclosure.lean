/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimitiveRationalWindowBounds

/-! # Rational correlation enclosures at logarithmic shifts -/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open SourcePrimeCorrelation

/-- The exact sample and error radius, both computed from the normalized list. -/
def rationalStageCorrelationEnclosure (j : ℕ) (cs : List ℚ) (s δ : ℚ) : ℚ × ℚ :=
  let T := (j : ℚ) + 1
  let ds := cs.map (fun c => rationalWindowMassScale (rationalWindowMass T cs) * c)
  (rationalWindowOverlap T s ds,
    2 * T * rationalWindowAmplitudeBound T ds * rationalWindowLipschitzBound T ds * δ)

/-- A certified log approximation encloses the native correlation of the
same normalized test at the genuine log argument. -/
theorem norm_normalizedCode_correlation_log_sub_sample_le
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q) (j : ℕ) (cs : List ℚ)
    (n : ℕ) (s δ : ℚ) (hs : 0 ≤ s) (hlog : |Real.log (n : ℝ) - (s : ℝ)| ≤ (δ : ℝ)) :
    ‖correlation (liftReal (primitiveStageMassTestOfNormalizedCode χ j cs).val)
        (Real.log (n : ℝ)) - ((rationalStageCorrelationEnclosure j cs s δ).1 : ℂ)‖ ≤
      ((rationalStageCorrelationEnclosure j cs s δ).2 : ℝ) := by
  let T : ℚ := (j : ℚ) + 1
  let ds := cs.map (fun c => rationalWindowMassScale (rationalWindowMass T cs) * c)
  have hT : 0 < T := by dsimp [T]; positivity
  have hs' : 0 ≤ (s : ℝ) := by exact_mod_cast hs
  have hT' : 0 ≤ (T : ℝ) := by exact_mod_cast hT.le
  have hsample : (rationalWindowOverlap T s ds : ℂ) =
      correlation (liftReal (rationalWindowTest (T : ℝ) ds)) (s : ℝ) := by
    rw [correlation_rationalWindowTest_eq_overlap hT' hs', ← Complex.ofReal_ratCast]
    congr 1
    simpa only [rationalWindowPolynomialTest] using rationalWindowOverlap_cast T s ds
  have hrad : (T : ℝ) = (j : ℝ) + 1 := by simp [T]
  rw [hrad] at hsample
  have hb := rationalWindowTest_bounds χ hT ds
  rw [hrad] at hb
  change ‖correlation (liftReal (primitiveStageMassTestOfNormalizedCode χ j cs).val)
    (Real.log (n : ℝ)) - (rationalWindowOverlap T s ds : ℂ)‖ ≤
      ((2 * T * rationalWindowAmplitudeBound T ds * rationalWindowLipschitzBound T ds * δ : ℚ) : ℝ)
  have htest : (primitiveStageMassTestOfNormalizedCode χ j cs).val =
      rationalWindowTest ((j : ℝ) + 1) ds := rfl
  rw [hsample, ← htest]
  simpa only [Rat.cast_mul, Rat.cast_ofNat, hrad] using
    norm_normalizedCode_correlation_log_sub_le χ j cs n (s : ℝ)
      hb.1 hb.2.1 hb.2.2.1 hb.2.2.2 hlog

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
