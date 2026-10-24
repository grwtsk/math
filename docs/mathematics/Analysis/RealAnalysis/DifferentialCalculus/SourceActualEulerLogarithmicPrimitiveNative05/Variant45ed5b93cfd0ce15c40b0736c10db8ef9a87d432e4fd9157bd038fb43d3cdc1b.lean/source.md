# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceActualEulerLogarithmicPrimitiveNative05.Variant45ed5b93cfd0ce15c40b0736c10db8ef9a87d432e4fd9157bd038fb43d3cdc1b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7f786061820bbbc84a125cf0ef5b448ef9a842e4` · SHA-256 `b66bb3d1309c904b171f7787df4ef1c9366c2f01880289d74f92c03ca90e60e2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualClosedPrimeLogPotential.Variantf79f3d0c70d8f9d7cc39ef90657fe310415c663697a37bf040618b3845e51519","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f79f3d0c70d8f9d7cc39ef90657fe310415c663697a37bf040618b3845e51519","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.ActualClosedPrimeLogPotential.Variantf79f3d0c70d8f9d7cc39ef90657fe310415c663697a37bf040618b3845e51519","mathematical_subject":"Analysis.Calculus","original_sha256":"f79f3d0c70d8f9d7cc39ef90657fe310415c663697a37bf040618b3845e51519","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/actual-euler-logarithmic-primitive-v1/SourceActualEulerLogarithmicPrimitive-native05.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualEulerSupportHead

/-!
The literal finite logarithmic potential of the closed Mangoldt polynomial.
Its finite contour integration by parts preserves the ordinary complex square,
both endpoints, every prime power and the closed floor cutoff. The quantitative
endpoint payment does not bound the remaining signed derivative-potential bulk.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualClosedPrimeLogPotential.Variantf79f3d0c70d8f9d7cc39ef90657fe310415c663697a37bf040618b3845e51519

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualEulerLogarithmicPrimitive
open MeasureTheory Set Complex Filter
open SourcePairing SourceActualEulerSupportHead SourceActualInitialPrimeContour
open SourceActualPrimeBumpDictionary SourceActualBumpMellinLineBudget
open SourceActualRightBumpTail SourceActualBumpMovingHeight SourceBumpLaplace
noncomputable section

/-- The exact closed finite potential; the actual zero and unit coefficients vanish. -/
def actualClosedPrimeLogPotential (A : ℝ) (s : ℂ) : ℂ :=
  ∑ n ∈ Finset.range (⌊Real.exp (2*A)⌋₊+1),
    ((ArithmeticFunction.vonMangoldt n / Real.log n : ℝ) : ℂ) *
      Complex.exp (-s * (Real.log n : ℂ))

private theorem term_eq_exp (n : ℕ) (s : ℂ) :
    LSeries.term actualMangoldtCoefficients s n =
      (ArithmeticFunction.vonMangoldt n : ℂ) * Complex.exp (-s*(Real.log n:ℂ)) := by
  rcases eq_or_ne n 0 with rfl | hn
  · simp
  have hp : 0 < (n:ℝ) := by exact_mod_cast Nat.pos_of_ne_zero hn
  rw [LSeries.term_of_ne_zero hn, actualMangoldtCoefficients,
    Complex.cpow_def_of_ne_zero (by exact_mod_cast hn)]
  have hlog : Complex.log (n:ℂ) = (Real.log (n:ℝ):ℂ) :=
    (Complex.ofReal_log hp.le).symm
  rw [hlog]
  simp only [div_eq_mul_inv, ← Complex.exp_neg]
  ring

private theorem log_term_hasDerivAt (n : ℕ) (s : ℂ) :
    HasDerivAt (fun z : ℂ =>
      ((ArithmeticFunction.vonMangoldt n / Real.log n : ℝ):ℂ) *
        Complex.exp (-z*(Real.log n:ℂ)))
      (-LSeries.term actualMangoldtCoefficients s n) s := by
  have h := (((hasDerivAt_id s).neg.mul_const (Real.log n:ℂ)).cexp).const_mul
    ((ArithmeticFunction.vonMangoldt n / Real.log n : ℝ):ℂ)
  convert! h using 1
  rcases eq_or_ne n 0 with rfl | hn0
  · simp
  rcases eq_or_ne n 1 with rfl | hn1
  · simp [actualMangoldtCoefficients]
  have hn2 : 2 ≤ n := by omega
  have hl : Real.log (n:ℝ) ≠ 0 := (Real.log_pos (by exact_mod_cast hn2)).ne'
  have hv : ((ArithmeticFunction.vonMangoldt n / Real.log n : ℝ):ℂ) *
      (Real.log n:ℂ) = (ArithmeticFunction.vonMangoldt n:ℂ) := by
    rw [← Complex.ofReal_mul, div_mul_cancel₀ _ hl]
  rw [term_eq_exp]
  dsimp only [Pi.neg_apply, id_eq]
  simp only [neg_one_mul]
  change -(↑(ArithmeticFunction.vonMangoldt n)*Complex.exp (-s*(Real.log n:ℂ))) =
    ((ArithmeticFunction.vonMangoldt n / Real.log n : ℝ):ℂ) *
      (Complex.exp (-s*(Real.log n:ℂ)) * (-(Real.log n:ℂ)))
  rw [mul_neg, mul_comm (Complex.exp _) (Real.log n:ℂ), ← mul_assoc, hv]

/-- Genuine derivative of the literal potential, with all closed actual coefficients. -/
theorem actualClosedPrimeLogPotential_hasDerivAt (A : ℝ) (s : ℂ) :
    HasDerivAt (actualClosedPrimeLogPotential A)
      (-actualClosedPrimeDirichletPolynomial A s) s := by
  have h := HasDerivAt.fun_sum (u := Finset.range (⌊Real.exp (2*A)⌋₊+1))
    (fun n _ => log_term_hasDerivAt n s)
  convert! h using 1
  simp only [actualClosedPrimeDirichletPolynomial, Finset.sum_neg_distrib]

/-- Explicit source derivative, retaining both polynomial and first-moment sectors. -/
def actualEulerMellinSlope (A : ℝ) (s : ℂ) : ℂ :=
  (A/sourceNormalization A : ℂ) *
    ((2*s*(s-1)^2 + 2*s^2*(s-1)) *
        bumpLaplace ((A:ℂ)*(s-1/2))^2 +
      2*(A:ℂ)*s^2*(s-1)^2 * bumpLaplace ((A:ℂ)*(s-1/2)) *
        bumpLaplaceMoment 1 ((A:ℂ)*(s-1/2)))

private theorem bump_hasDerivAt (z : ℂ) :
    HasDerivAt bumpLaplace (bumpLaplaceMoment 1 z) z := by
  have hf : bumpLaplaceMoment 0 = bumpLaplace := funext bump_laplace_moment_zero
  simpa only [hf, Nat.zero_add] using bump_laplace_moment_has_deriv_at 0 z

/-- The actual initial source Mellin multiplier differentiates to its explicit slope. -/
theorem actualEulerMellin_hasDerivAt (A : ℝ) (hA : 1 ≤ A) (s : ℂ) :
    HasDerivAt (actualInitialPrimeMellin A) (actualEulerMellinSlope A s) s := by
  have hb := (bump_hasDerivAt ((A:ℂ)*(s-1/2))).comp s
    (((hasDerivAt_id s).sub_const (1/2)).const_mul (A:ℂ))
  have h := (((hasDerivAt_id s).pow 2).mul
      (((hasDerivAt_id s).sub_const 1).pow 2)).mul (hb.pow 2) |>.const_mul
        (A/sourceNormalization A : ℂ)
  convert! h using 1
  · funext z
    rw [actualInitialPrimeMellin_eq_bumpMellinWeight hA]
    dsimp [bumpMellinWeight]
    push_cast
    ring
  · dsimp [actualEulerMellinSlope, Function.comp_def]
    ring

private theorem potential_continuous (A : ℝ) :
    Continuous (actualClosedPrimeLogPotential A) :=
  continuous_iff_continuousAt.mpr fun s =>
    (actualClosedPrimeLogPotential_hasDerivAt A s).continuousAt

private theorem mellin_continuous (A : ℝ) (hA : 1 ≤ A) :
    Continuous (actualInitialPrimeMellin A) :=
  continuous_iff_continuousAt.mpr fun s => (actualEulerMellin_hasDerivAt A hA s).continuousAt

private theorem slope_continuous (A : ℝ) : Continuous (actualEulerMellinSlope A) := by
  have hb : Continuous bumpLaplace := by
    have hf : bumpLaplaceMoment 0 = bumpLaplace := funext bump_laplace_moment_zero
    simpa only [hf] using bump_laplace_moment_continuous 0
  have hm := bump_laplace_moment_continuous 1
  unfold actualEulerMellinSlope
  fun_prop

private theorem polynomial_continuous (A : ℝ) :
    Continuous (actualClosedPrimeDirichletPolynomial A) := by
  unfold actualClosedPrimeDirichletPolynomial
  simp_rw [term_eq_exp]
  fun_prop

/-- Literal phase-sensitive derivative-potential bulk on the complete retained interval. -/
def actualClosedPrimeLogBulk (A c T : ℝ) : ℂ :=
  (1/(2*Real.pi):ℂ) * ∫ t in -T..T,
    actualEulerMellinSlope A ((c:ℂ)+(t:ℂ)*I) *
      actualClosedPrimeLogPotential A ((c:ℂ)+(t:ℂ)*I)

/-- Both contour endpoints, with their orientation and ordinary complex phases. -/
def actualClosedPrimeLogBoundary (A c T : ℝ) : ℂ :=
  (I/(2*Real.pi):ℂ) *
    (actualInitialPrimeMellin A ((c:ℂ)+(T:ℂ)*I) *
        actualClosedPrimeLogPotential A ((c:ℂ)+(T:ℂ)*I) -
      actualInitialPrimeMellin A ((c:ℂ)+(-T:ℂ)*I) *
        actualClosedPrimeLogPotential A ((c:ℂ)+(-T:ℂ)*I))

/-- Genuine compact L1 of the complete derivative-potential bulk. -/
theorem actualClosedPrimeLogBulk_intervalIntegrable (A c T : ℝ) :
    IntervalIntegrable (fun t : ℝ =>
      actualEulerMellinSlope A ((c:ℂ)+(t:ℂ)*I) *
        actualClosedPrimeLogPotential A ((c:ℂ)+(t:ℂ)*I)) volume (-T) T := by
  have hp := potential_continuous A
  have hs := slope_continuous A
  exact (by fun_prop : Continuous _).intervalIntegrable _ _

/-- Exact finite integration by parts; neither endpoint is discarded. -/
theorem actualClosedPrimeHead_eq_logBulk_add_boundary
    (A c T : ℝ) (hA : 1 ≤ A) :
    actualClosedPrimeHead A c T =
      actualClosedPrimeLogBulk A c T + actualClosedPrimeLogBoundary A c T := by
  let s : ℝ → ℂ := fun t => (c:ℂ)+(t:ℂ)*I
  have hs (t : ℝ) : HasDerivAt s I t := by
    simpa [s] using ((hasDerivAt_id t).ofReal_comp.mul_const I).const_add (c:ℂ)
  have hh (t : ℝ) : HasDerivAt (fun t => actualInitialPrimeMellin A (s t))
      (I*actualEulerMellinSlope A (s t)) t := by
    convert! (actualEulerMellin_hasDerivAt A hA (s t)).comp t (hs t) using 1
    exact mul_comm _ _
  have hp (t : ℝ) : HasDerivAt (fun t => actualClosedPrimeLogPotential A (s t))
      (-I*actualClosedPrimeDirichletPolynomial A (s t)) t := by
    convert! (actualClosedPrimeLogPotential_hasDerivAt A (s t)).comp t (hs t)
      using 1
    rw [neg_mul, mul_comm I, mul_neg]
  have hi := intervalIntegral.integral_deriv_mul_eq_sub
    (a := -T) (b := T) (fun t _ => hh t) (fun t _ => hp t)
    ((by have h := slope_continuous A; fun_prop : Continuous
      (fun t => I*actualEulerMellinSlope A (s t))).intervalIntegrable _ _)
    ((by have h := polynomial_continuous A; fun_prop : Continuous
      (fun t => -I*actualClosedPrimeDirichletPolynomial A (s t))).intervalIntegrable _ _)
  have he : (fun t : ℝ => I*actualEulerMellinSlope A (s t) *
      actualClosedPrimeLogPotential A (s t) + actualInitialPrimeMellin A (s t) *
      (-I*actualClosedPrimeDirichletPolynomial A (s t))) =
      (fun t => I*(actualEulerMellinSlope A (s t)*actualClosedPrimeLogPotential A (s t)) -
        I*(actualInitialPrimeMellin A (s t)*actualClosedPrimeDirichletPolynomial A (s t))) := by
    funext t
    ring
  rw [he, intervalIntegral.integral_sub] at hi
  · simp only [intervalIntegral.integral_const_mul] at hi
    unfold actualClosedPrimeHead actualClosedPrimeLogBulk actualClosedPrimeLogBoundary
    dsimp [s] at hi
    simp only [Complex.ofReal_neg] at hi
    have hi' := congrArg (fun z : ℂ => I*z) hi
    simp only [mul_sub, ← mul_assoc, Complex.I_mul_I, neg_one_mul] at hi'
    linear_combination (1/(2*Real.pi):ℂ)*hi'
  · exact (actualClosedPrimeLogBulk_intervalIntegrable A c T).const_mul I
  · have hm := mellin_continuous A hA
    have hd := polynomial_continuous A
    exact (by fun_prop : Continuous _).intervalIntegrable _ _

private theorem logTerm_norm_le (c t : ℝ) (n : ℕ) :
    ‖((ArithmeticFunction.vonMangoldt n / Real.log n : ℝ):ℂ) *
      Complex.exp (-((c:ℂ)+(t:ℂ)*I)*(Real.log n:ℂ))‖ ≤
        ‖LSeries.term actualMangoldtCoefficients (c:ℂ) n‖ / Real.log 2 := by
  rcases eq_or_ne n 0 with rfl | hn0
  · simp
  rcases eq_or_ne n 1 with rfl | hn1
  · simp [actualMangoldtCoefficients]
  have hn2 : 2 ≤ n := by omega
  have hlog : 0 < Real.log (n:ℝ) := Real.log_pos (by exact_mod_cast hn2)
  have hl2 : 0 < Real.log 2 := Real.log_pos (by norm_num)
  have hlo : Real.log 2 ≤ Real.log (n:ℝ) :=
    Real.log_le_log (by norm_num) (by exact_mod_cast hn2)
  have he : ((ArithmeticFunction.vonMangoldt n / Real.log n : ℝ):ℂ) *
      Complex.exp (-((c:ℂ)+(t:ℂ)*I)*(Real.log n:ℂ)) =
        LSeries.term actualMangoldtCoefficients ((c:ℂ)+(t:ℂ)*I) n /
          (Real.log n:ℂ) := by
    rw [term_eq_exp, Complex.ofReal_div]
    ring
  rw [he, norm_div, Complex.norm_real, Real.norm_eq_abs, abs_of_pos hlog]
  have ht : ‖LSeries.term actualMangoldtCoefficients ((c:ℂ)+(t:ℂ)*I) n‖ =
      ‖LSeries.term actualMangoldtCoefficients (c:ℂ) n‖ := by
    simp [LSeries.norm_term_eq]
  rw [ht]
  exact div_le_div_of_nonneg_left (norm_nonneg _) hl2 hlo

/-- The literal finite potential is uniformly bounded by the genuine initial Dirichlet mass. -/
theorem actualClosedPrimeLogPotential_norm_le (A c t : ℝ) (hc : 1 < c) :
    ‖actualClosedPrimeLogPotential A ((c:ℂ)+(t:ℂ)*I)‖ ≤
      actualRightLineMass c / Real.log 2 := by
  have hl : 0 < Real.log 2 := Real.log_pos (by norm_num)
  unfold actualClosedPrimeLogPotential
  calc
    _ ≤ ∑ n ∈ Finset.range (⌊Real.exp (2*A)⌋₊+1),
        ‖((ArithmeticFunction.vonMangoldt n / Real.log n : ℝ):ℂ) *
          Complex.exp (-((c:ℂ)+(t:ℂ)*I)*(Real.log n:ℂ))‖ := norm_sum_le _ _
    _ ≤ ∑ n ∈ Finset.range (⌊Real.exp (2*A)⌋₊+1),
        ‖LSeries.term actualMangoldtCoefficients (c:ℂ) n‖ / Real.log 2 :=
      Finset.sum_le_sum (fun n _ => logTerm_norm_le c t n)
    _ = (∑ n ∈ Finset.range (⌊Real.exp (2*A)⌋₊+1),
        ‖LSeries.term actualMangoldtCoefficients (c:ℂ) n‖) / Real.log 2 :=
      (Finset.sum_div _ _ _).symm
    _ ≤ actualRightLineMass c / Real.log 2 := by
      apply div_le_div_of_nonneg_right _ hl.le
      exact (actualRightLineMass_summable c hc).sum_le_tsum _ (fun _ _ => norm_nonneg _)

private def mellinEndpointConstant (c : ℝ) : ℝ :=
  (204288:ℝ)^2/(4096/109395)*(1+c^2)*(1+(c-1)^2)

private theorem mellinEndpoint_norm_le (A c t : ℝ) (hA : 1 ≤ A) (hc : 1 < c)
    (ht : |t| = actualBumpMovingHeight A c) :
    ‖actualInitialPrimeMellin A ((c:ℂ)+(t:ℂ)*I)‖ ≤
      mellinEndpointConstant c * Real.exp (-((2*c-1)*A/5)) / A^9 := by
  have hp : 0 < A := by linarith
  have hz := actualBumpNormalization_lower A hA
  have hb := bumpMellinWeight_on_line_norm_le A c t hA hc
    (by rw [ht]; exact actualBumpMovingHeight_ge_one A c hA hc)
  rw [← actualInitialPrimeMellin_eq_bumpMellinWeight hA] at hb
  have hz0 : 0 < sourceNormalization A := source_normalization_pos A hA
  have hex : Real.exp ((2*c-1)*A) / (actualBumpMovingHeight A c)^6 =
      Real.exp (-((2*c-1)*A/5)) := by
    unfold actualBumpMovingHeight
    rw [← Real.exp_nat_mul, ← Real.exp_sub]
    congr 1
    ring
  rw [ht] at hb
  calc
    _ ≤ (204288:ℝ)^2/sourceNormalization A*(1+c^2)*(1+(c-1)^2)*
        Real.exp ((2*c-1)*A)/(A^9*(actualBumpMovingHeight A c)^6) := hb
    _ = ((204288:ℝ)^2/sourceNormalization A*(1+c^2)*(1+(c-1)^2))*
        (Real.exp ((2*c-1)*A)/(actualBumpMovingHeight A c)^6)/A^9 := by ring
    _ = ((204288:ℝ)^2/sourceNormalization A*(1+c^2)*(1+(c-1)^2))*
        Real.exp (-((2*c-1)*A/5))/A^9 := by rw [hex]
    _ ≤ mellinEndpointConstant c*Real.exp (-((2*c-1)*A/5))/A^9 := by
      unfold mellinEndpointConstant
      gcongr

/-- Complete two-endpoint payment; the initial mass remains its authentic arithmetic constant. -/
def actualEulerLogBoundaryConstant (c : ℝ) : ℝ :=
  mellinEndpointConstant c * actualRightLineMass c / (Real.pi*Real.log 2)

/-- Both oriented endpoints have a genuinely exponentially decaying moving-height budget. -/
theorem actualClosedPrimeLogBoundary_moving_norm_le (A c : ℝ)
    (hA : 1 ≤ A) (hc : 1 < c) :
    ‖actualClosedPrimeLogBoundary A c (actualBumpMovingHeight A c)‖ ≤
      actualEulerLogBoundaryConstant c*Real.exp (-((2*c-1)*A/5))/A^9 := by
  let T := actualBumpMovingHeight A c
  have hT : 0 < T := Real.exp_pos _
  have hHp := mellinEndpoint_norm_le A c T hA hc (abs_of_pos hT)
  have hHm := mellinEndpoint_norm_le A c (-T) hA hc (by rw [abs_neg, abs_of_pos hT])
  have hPp := actualClosedPrimeLogPotential_norm_le A c T hc
  have hPm := actualClosedPrimeLogPotential_norm_le A c (-T) hc
  have hK : 0 ≤ mellinEndpointConstant c := by unfold mellinEndpointConstant; positivity
  have hM := actualRightLineMass_nonneg c
  have hl : 0 < Real.log 2 := Real.log_pos (by norm_num)
  unfold actualClosedPrimeLogBoundary
  rw [norm_mul]
  calc
    _ ≤ ‖(I/(2*Real.pi):ℂ)‖ *
        (‖actualInitialPrimeMellin A ((c:ℂ)+(T:ℂ)*I)*
            actualClosedPrimeLogPotential A ((c:ℂ)+(T:ℂ)*I)‖ +
          ‖actualInitialPrimeMellin A ((c:ℂ)+(-T:ℂ)*I)*
            actualClosedPrimeLogPotential A ((c:ℂ)+(-T:ℂ)*I)‖) := by
      exact mul_le_mul_of_nonneg_left (norm_sub_le _ _) (norm_nonneg _)
    _ ≤ (1/(2*Real.pi))*
        (2*(mellinEndpointConstant c*Real.exp (-((2*c-1)*A/5))/A^9)*
          (actualRightLineMass c/Real.log 2)) := by
      have hn : ‖(I/(2*Real.pi):ℂ)‖ = 1/(2*Real.pi) := by
        rw [norm_div, norm_I]
        norm_cast
        rw [abs_of_pos (by positivity)]
      rw [hn, norm_mul, norm_mul]
      have hPm' : ‖actualClosedPrimeLogPotential A ((c:ℂ)+(-T:ℂ)*I)‖ ≤
          actualRightLineMass c/Real.log 2 := by simpa only [Complex.ofReal_neg] using hPm
      have hHm' : ‖actualInitialPrimeMellin A ((c:ℂ)+(-T:ℂ)*I)‖ ≤
          mellinEndpointConstant c*Real.exp (-((2*c-1)*A/5))/A^9 := by
        simpa only [Complex.ofReal_neg] using hHm
      have hb := add_le_add
        (mul_le_mul hHp hPp (norm_nonneg _) (by positivity))
        (mul_le_mul hHm' hPm' (norm_nonneg _) (by positivity))
      nlinarith [Real.pi_pos]
    _ = _ := by unfold actualEulerLogBoundaryConstant; ring

end
end FormalResearch.RiemannHypothesis.SourceActualEulerLogarithmicPrimitive
```
