# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualSourceDiscreteLogRowFiniteVolterraNegativeRightStrip.Variant7a10dcff64ae825a3d61c6317e56af0051843645c251938e6bf65c9c4be745bc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `82de71621fa9f1a4b030b305798e3ce24458f50f` · SHA-256 `7a10dcff64ae825a3d61c6317e56af0051843645c251938e6bf65c9c4be745bc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateWeightedMobiusPairing

/-!
The literal complete discrete log row and its genuine finite continuous
comparison use the actual normalized explicitSecondDerivative source.
Two finite FTC identities turn the continuous q row into phi plus Volterra(phi).
The right support strip gives a quantitative negative Euler discrepancy;
it does not sign the pairing with the actual signed Mobius profile.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/
set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualDiscreteLogRowVolterra
open MeasureTheory Set
open scoped Interval BigOperators
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity
noncomputable section

/-- The original full closed log profile, including its zero unit atom. -/
def actualDiscreteLogProfile (A x : ℝ) : ℝ :=
  ∑ k ∈ Finset.Icc 1 ⌊Real.exp (2*A)⌋₊,
    Real.log k / Real.sqrt k * normalizedTest explicitSecondDerivative A (x+Real.log k)

/-- The true continuous k>=1 comparison in its physical log coordinate. -/
def actualContinuousLogProfile (A x : ℝ) : ℝ :=
  ∫ y in x..A, (y-x)*Real.exp ((y-x)/2)*
    normalizedTest explicitSecondDerivative A y

/-- Every discrete atom vanishes on the closed right strip of width log2. -/
theorem actualDiscreteLogProfile_right_strip_zero (A s : ℝ) (hA : 1 ≤ A)
    (hs : s ≤ Real.log 2) : actualDiscreteLogProfile A (A-s) = 0 := by
  unfold actualDiscreteLogProfile
  apply Finset.sum_eq_zero
  intro k hk
  have hk1 : 1 ≤ k := (Finset.mem_Icc.mp hk).1
  by_cases hk2 : k = 1
  · subst k
    simp
  · have hkpos : 0 < k := by omega
    have hkge : 2 ≤ k := by omega
    have hl : Real.log 2 ≤ Real.log (k : ℝ) :=
      Real.log_le_log (by norm_num) (by exact_mod_cast hkge)
    have hx : A ≤ |A-s+Real.log (k : ℝ)| :=
      le_trans (by linarith) (le_abs_self _)
    rw [normalizedTest_zero_of_le_abs A _ (by linarith) hx, mul_zero]

private theorem interior_agreement (A y : ℝ) (hA : 1 ≤ A)
    (hy : y ∈ Icc (-A) A) :
    normalizedTest explicitSecondDerivative A y = normalizedInterior A y := by
  rw [normalizedTest_eq_indicator A (by linarith), indicator_of_mem hy]

/-- Two finite FTC identities retain the exact source phi and both upper traces. -/
theorem actualContinuousLogProfile_eq_volterra (A x : ℝ) (hA : 1 ≤ A)
    (hx0 : -A ≤ x) (hxA : x ≤ A) :
    actualContinuousLogProfile A x =
      bumpInterior A x / Real.sqrt (sourceNormalization A) +
      Real.exp (-x/2) * ∫ y in x..A,
        Real.exp (y/2) * (bumpInterior A y / Real.sqrt (sourceNormalization A)) := by
  let Z := Real.sqrt (sourceNormalization A)
  let f : ℝ → ℝ := fun y => bumpInterior A y / Z
  let g : ℝ → ℝ := fun y => firstInterior A y / Z
  let e : ℝ → ℝ := fun y => secondInterior A y / Z
  let J : ℝ → ℝ := fun y => Real.exp (y/2)*f y
  let F : ℝ → ℝ := fun y => Real.exp (y/2)*(g y-f y/2)
  let R : ℝ → ℝ := fun y => (y-x)*F y
  let E : ℝ → ℝ := fun y => Real.exp (y/2)*normalizedInterior A y
  have hf : Continuous f := (bumpInterior_continuous A).div_const _
  have hg : Continuous g := (firstInterior_continuous A).div_const _
  have he : Continuous e := (secondInterior_continuous A).div_const _
  have hJ : Continuous J := by dsimp [J]; fun_prop
  have hF : Continuous F := by dsimp [F]; fun_prop
  have hNI : Continuous (normalizedInterior A) := by
    unfold normalizedInterior
    exact ((secondInterior_continuous A).sub
      ((bumpInterior_continuous A).div_const 4)).div_const _
  have hE : Continuous E := by dsimp [E]; fun_prop
  have hRE : Continuous (fun y => (y-x)*E y) :=
    (continuous_id.sub continuous_const).mul hE
  have hJ' (y : ℝ) : HasDerivAt J (F y+J y) y := by
    have h := (((hasDerivAt_id y).div_const 2).exp).mul
      ((bumpInterior_hasDerivAt A y).div_const Z)
    convert! h using 1
    dsimp [J, F, f, g]
    ring
  have hF' (y : ℝ) : HasDerivAt F (E y) y := by
    have h := (((hasDerivAt_id y).div_const 2).exp).mul
      (((firstInterior_hasDerivAt A y).div_const Z).sub
        (((bumpInterior_hasDerivAt A y).div_const Z).div_const 2))
    convert! h using 1
    dsimp [F, E, f, g, normalizedInterior]
    ring
  have hR' (y : ℝ) : HasDerivAt R (F y+(y-x)*E y) y := by
    have h := ((hasDerivAt_id y).sub_const x).mul (hF' y)
    convert! h using 1
    dsimp [R]
    ring
  have hJint := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun y _ => hJ' y)
    ((hF.add hJ).intervalIntegrable x A)
  have hRint := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun y _ => hR' y)
    ((hF.add ((continuous_id.sub continuous_const).mul hE)).intervalIntegrable x A)
  have hb := bumpInterior_endpoints A (by linarith : A ≠ 0)
  have hd := firstInterior_endpoints A (by linarith : A ≠ 0)
  have hJA : J A = 0 := by simp [J, f, hb.2]
  have hRA : R A = 0 := by simp [R, F, f, g, hb.2, hd.2]
  have hRx : R x = 0 := by simp [R]
  rw [hJA, intervalIntegral.integral_add (hF.intervalIntegrable _ _)
    (hJ.intervalIntegrable _ _)] at hJint
  rw [hRA, hRx, intervalIntegral.integral_add (hF.intervalIntegrable _ _)
    (hRE.intervalIntegrable _ _)] at hRint
  have hcalc : (∫ y in x..A, (y-x)*E y) = J x + ∫ y in x..A, J y := by
    linear_combination hRint-hJint
  have hbody : actualContinuousLogProfile A x =
      Real.exp (-x/2) * (∫ y in x..A, (y-x)*E y) := by
    unfold actualContinuousLogProfile
    rw [← intervalIntegral.integral_const_mul]
    apply intervalIntegral.integral_congr
    intro y hy
    rw [uIcc_of_le hxA] at hy
    dsimp only
    rw [interior_agreement A y hA ⟨hx0.trans hy.1,hy.2⟩]
    dsimp [E]
    rw [show (y-x)/2 = -x/2+y/2 by ring, Real.exp_add]
    ring
  rw [hbody, hcalc, mul_add]
  change Real.exp (-x/2)*(Real.exp (x/2)*f x) +
      Real.exp (-x/2)*(∫ y in x..A, J y) = _
  have hex : Real.exp (-x/2)*Real.exp (x/2) = 1 := by
    rw [← Real.exp_add]; ring_nf; exact Real.exp_zero
  rw [← mul_assoc, hex, one_mul]

private theorem bump_endpoint (A s : ℝ) (hA : 1 ≤ A) :
    bumpInterior A (A-s) = s^4*(2-s/A)^4/(A^4*Real.sqrt A) := by
  unfold bumpInterior
  field_simp [show A ≠ 0 by linarith]
  ring

/-- The actual continuous q comparison has a positive order-four phi payment. -/
theorem actualContinuousLogProfile_right_strip_lower (A s : ℝ) (hA : 1 ≤ A)
    (hs0 : 0 ≤ s) (hsA : s ≤ A) :
    s^4/(A^4*Real.sqrt A*Real.sqrt (sourceNormalization A)) ≤
      actualContinuousLogProfile A (A-s) := by
  have hz : 0 < Real.sqrt (sourceNormalization A) :=
    Real.sqrt_pos.2 (source_normalization_pos A hA)
  have hden : 0 < A^4*Real.sqrt A*Real.sqrt (sourceNormalization A) := by positivity
  rw [actualContinuousLogProfile_eq_volterra A (A-s) hA (by linarith) (by linarith)]
  have hint : 0 ≤ ∫ y in A-s..A,
      Real.exp (y/2)*(bumpInterior A y/Real.sqrt (sourceNormalization A)) := by
    apply intervalIntegral.integral_nonneg (by linarith)
    intro y hy
    unfold bumpInterior
    positivity
  have hpow : 1 ≤ (2-s/A)^4 := by
    have hq : s/A ≤ 1 := (div_le_iff₀ (by linarith : 0 < A)).2 (by simpa using hsA)
    have hp : 1 ≤ 2-s/A := by linarith
    nlinarith [sq_nonneg (2-s/A), sq_nonneg ((2-s/A)^2-1)]
  have hb : s^4/(A^4*Real.sqrt A*Real.sqrt (sourceNormalization A)) ≤
      bumpInterior A (A-s)/Real.sqrt (sourceNormalization A) := by
    rw [bump_endpoint A s hA, div_div]
    apply div_le_div_of_nonneg_right _ hden.le
    nlinarith [show 0 ≤ s^4 by positivity]
  exact hb.trans (le_add_of_nonneg_right (mul_nonneg (Real.exp_pos _).le hint))

/-- The literal discrete-minus-continuous remainder is negative on this genuine strip. -/
theorem actualLogRowEulerRemainder_right_strip_le (A s : ℝ) (hA : 1 ≤ A)
    (hs0 : 0 ≤ s) (hsA : s ≤ A) (hslog : s ≤ Real.log 2) :
    actualDiscreteLogProfile A (A-s)-actualContinuousLogProfile A (A-s) ≤
      -(s^4/(A^4*Real.sqrt A*Real.sqrt (sourceNormalization A))) := by
  rw [actualDiscreteLogProfile_right_strip_zero A s hA hslog]
  have h := actualContinuousLogProfile_right_strip_lower A s hA hs0 hsA
  linarith

/-- A strictly positive strip coordinate refutes a nonnegative Euler remainder. -/
theorem actualLogRowEulerRemainder_right_strip_neg (A s : ℝ) (hA : 1 ≤ A)
    (hs0 : 0 < s) (hsA : s ≤ A) (hslog : s ≤ Real.log 2) :
    actualDiscreteLogProfile A (A-s)-actualContinuousLogProfile A (A-s) < 0 := by
  have h := actualLogRowEulerRemainder_right_strip_le A s hA hs0.le hsA hslog
  have hp : 0 < s^4/(A^4*Real.sqrt A*Real.sqrt (sourceNormalization A)) := by
    have hz := source_normalization_pos A hA
    positivity
  linarith

end
end FormalResearch.RiemannHypothesis.SourceActualDiscreteLogRowVolterra
```
