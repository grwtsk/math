# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.PoleGreenArithmetic.Variant8f1eae549d4fa8172149213d7fe9297f0be2c99008955cb7fb8512171d712eaa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b4da832018b86ffae5e94ddda85bdb4546190671` · SHA-256 `8f1eae549d4fa8172149213d7fe9297f0be2c99008955cb7fb8512171d712eaa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.PoleGreenWeakIdentity

/-!
# The actual arithmetic Green potential has the exact weak discrepancy equation

The finite atomic terms use the proved translated Green identity. The continuous
term uses a genuinely integrable compact-rectangle Fubini calculation. Pairing
the actual Green inverse with the source correlation therefore observes the
discrepancy on the base correlation, not the discrepancy on the source itself.
No uniform arithmetic estimate is inferred.

AI attribution: Codex authored this module and its proofs.
-/

namespace FormalResearch.RiemannHypothesis.PoleGreenArithmetic

open MeasureTheory Set
open scoped Convolution
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateHigherPrimePowers PrimeSquareEstimate PrimePowerPhaseDefect
open PoleDifferentialCorrelation PoleArithmeticFunctional PoleGreenWeakIdentity

noncomputable section

/-- The fourth-order pole operator vanishes outside the input's actual support. -/
theorem pole_squared_operator_eq_zero_of_not_mem_tsupport (f : ℝ → ℝ) (t : ℝ)
    (ht : t ∉ tsupport f) : poleSquaredDifferentialOperator f t = 0 := by
  have hz (k : ℕ) := iterated_deriv_eq_zero_of_not_mem_tsupport f k t ht
  have h0 : f t = 0 := by simpa using hz 0
  simp [poleSquaredDifferentialOperator, hz 4, hz 2, h0]

/-- The actual differential operator preserves compact support. -/
theorem pole_squared_operator_has_compact_support (f : ℝ → ℝ) (hcf : HasCompactSupport f) :
    HasCompactSupport (poleSquaredDifferentialOperator f) := by
  apply hcf.mono'
  intro t ht
  by_contra h
  simp [Function.mem_support, pole_squared_operator_eq_zero_of_not_mem_tsupport f t h] at ht

/-- Every translated atomic Green pairing is genuinely integrable. -/
theorem translated_green_operator_integrable (f : ℝ → ℝ) (hf : ContDiff ℝ 4 f)
    (hcf : HasCompactSupport f) (x : ℝ) :
    Integrable (fun t ↦ poleSquaredGreenKernel (t - x) * poleSquaredDifferentialOperator f t) := by
  have hg : Continuous (fun t ↦ poleSquaredGreenKernel (t - x)) := by
    unfold poleSquaredGreenKernel
    fun_prop
  exact (hg.mul (pole_squared_operator_continuous f hf)).integrable_of_hasCompactSupport
    (pole_squared_operator_has_compact_support f hcf).mul_left

/-- Evenness of the actual Green kernel puts its translated weak atom at the source label. -/
theorem translated_green_operator_integral (f : ℝ → ℝ) (hf : ContDiff ℝ 4 f)
    (hcf : HasCompactSupport f) (x : ℝ) :
    (∫ t, poleSquaredGreenKernel (t - x) * poleSquaredDifferentialOperator f t) = f x := by
  have hi := pole_squared_green_convolution_identity f hf hcf x
  rw [convolution_lsmul_swap] at hi
  simp only [smul_eq_mul] at hi
  have he (t : ℝ) : poleSquaredGreenKernel (t - x) = poleSquaredGreenKernel (x - t) := by
    unfold poleSquaredGreenKernel
    rw [abs_sub_comm]
  simp_rw [he]
  exact hi

/-- The continuous Green/operator product is integrable on the exact compact rectangle. -/
theorem continuum_green_operator_joint_integrable (A : ℝ) (f : ℝ → ℝ)
    (hf : ContDiff ℝ 4 f) (hcf : HasCompactSupport f) :
    Integrable (fun z : ℝ × ℝ ↦
      ((Icc (0 : ℝ) (2 * A)).indicator
        (fun x ↦ Real.exp (x / 2) * poleSquaredGreenKernel (z.1 - x))) z.2 *
          poleSquaredDifferentialOperator f z.1) (volume.prod volume) := by
  let S := tsupport (poleSquaredDifferentialOperator f) ×ˢ Icc (0 : ℝ) (2 * A)
  let H : ℝ × ℝ → ℝ := fun z ↦ Real.exp (z.2 / 2) *
    poleSquaredGreenKernel (z.1 - z.2) * poleSquaredDifferentialOperator f z.1
  have hS : IsCompact S := (pole_squared_operator_has_compact_support f hcf).isCompact.prod
    isCompact_Icc
  have hH : Continuous H := by
    have hg : Continuous poleSquaredGreenKernel := by unfold poleSquaredGreenKernel; fun_prop
    exact (((Real.continuous_exp.comp (continuous_snd.div_const 2)).mul
      (hg.comp (continuous_fst.sub continuous_snd))).mul
        ((pole_squared_operator_continuous f hf).comp continuous_fst))
  have heq : (fun z : ℝ × ℝ ↦
      ((Icc (0 : ℝ) (2 * A)).indicator
        (fun x ↦ Real.exp (x / 2) * poleSquaredGreenKernel (z.1 - x))) z.2 *
          poleSquaredDifferentialOperator f z.1) = S.indicator H := by
    funext z
    by_cases ht : z.1 ∈ tsupport (poleSquaredDifferentialOperator f)
    · by_cases hx : z.2 ∈ Icc (0 : ℝ) (2 * A) <;>
        simp [S, H, ht, hx]
    · have hz := image_eq_zero_of_notMem_tsupport ht
      simp [S, H, indicator_apply, ht, hz]
  rw [heq]
  exact (hH.continuousOn.integrableOn_compact hS).integrable_indicator hS.measurableSet

/-- Compact-rectangle Fubini evaluates the actual continuous Green contribution exactly. -/
theorem continuum_green_operator_integral (A : ℝ) (hA : 1 ≤ A)
    (f : ℝ → ℝ) (hf : ContDiff ℝ 4 f) (hcf : HasCompactSupport f) :
    (∫ t, (∫ x in (0 : ℝ)..2 * A, Real.exp (x / 2) * poleSquaredGreenKernel (t - x)) *
      poleSquaredDifferentialOperator f t) = ∫ x in (0 : ℝ)..2 * A, Real.exp (x / 2) * f x := by
  let J (t x : ℝ) : ℝ := ((Icc (0 : ℝ) (2 * A)).indicator
    (fun x ↦ Real.exp (x / 2) * poleSquaredGreenKernel (t - x))) x *
      poleSquaredDifferentialOperator f t
  have hi : Integrable (Function.uncurry J) (volume.prod volume) :=
    continuum_green_operator_joint_integrable A f hf hcf
  have hl (t : ℝ) : (∫ x, J t x) =
      (∫ x in (0 : ℝ)..2 * A, Real.exp (x / 2) * poleSquaredGreenKernel (t - x)) *
        poleSquaredDifferentialOperator f t := by
    dsimp only [J]
    rw [integral_mul_const, zeroExtension_integral _ 0 (2 * A) (by linarith)]
  have hr (x : ℝ) : (∫ t, J t x) =
      (Icc (0 : ℝ) (2 * A)).indicator (fun x ↦ Real.exp (x / 2) * f x) x := by
    by_cases hx : x ∈ Icc (0 : ℝ) (2 * A)
    · simp only [J, indicator_of_mem hx]
      simp_rw [mul_assoc]
      rw [integral_const_mul, translated_green_operator_integral f hf hcf x]
    · simp only [J, indicator_of_notMem hx, zero_mul, integral_zero]
  have hs := integral_integral_swap hi
  simp_rw [hl, hr] at hs
  rw [zeroExtension_integral _ 0 (2 * A) (by linarith)] at hs
  exact hs

/-- The actual continuous contribution has genuine whole-line pairing integrability. -/
theorem continuum_green_operator_integrable (A : ℝ) (hA : 1 ≤ A)
    (f : ℝ → ℝ) (hf : ContDiff ℝ 4 f) (hcf : HasCompactSupport f) :
    Integrable (fun t ↦
      (∫ x in (0 : ℝ)..2 * A, Real.exp (x / 2) * poleSquaredGreenKernel (t - x)) *
        poleSquaredDifferentialOperator f t) := by
  have hi := (continuum_green_operator_joint_integrable A f hf hcf).integral_prod_left
  convert hi using 1
  funext t
  dsimp only
  rw [integral_mul_const, zeroExtension_integral _ 0 (2 * A) (by linarith)]

/-- The actual Green residual pairs integrably with every compact `C⁴` pole test. -/
theorem prime_square_green_operator_integrable (A : ℝ) (hA : 1 ≤ A)
    (f : ℝ → ℝ) (hf : ContDiff ℝ 4 f) (hcf : HasCompactSupport f) :
    Integrable (fun t ↦ primeSquareGreenResidual A t * poleSquaredDifferentialOperator f t) := by
  have ha : Integrable (fun t ↦ ∑ n ∈ lowerPowerInventory A,
      primeWeight n * (poleSquaredGreenKernel (t - Real.log n) *
        poleSquaredDifferentialOperator f t)) :=
    integrable_finsetSum _ (fun n _ ↦
      (translated_green_operator_integrable f hf hcf (Real.log n)).const_mul (primeWeight n))
  convert ha.sub (continuum_green_operator_integrable A hA f hf hcf) using 1
  funext t
  simp [primeSquareGreenResidual, sub_mul, Finset.sum_mul, mul_assoc]

/-- The actual finite Green inverse satisfies the exact weak discrete-minus-continuum equation. -/
theorem prime_square_green_weak_discrepancy (A : ℝ) (hA : 1 ≤ A)
    (f : ℝ → ℝ) (hf : ContDiff ℝ 4 f) (hcf : HasCompactSupport f) :
    (∫ t, primeSquareGreenResidual A t * poleSquaredDifferentialOperator f t) =
      lowerPowerDiscrepancy A ⟨f, hf.continuous⟩ := by
  have ha : Integrable (fun t ↦ ∑ n ∈ lowerPowerInventory A,
      primeWeight n * (poleSquaredGreenKernel (t - Real.log n) *
        poleSquaredDifferentialOperator f t)) :=
    integrable_finsetSum _ (fun n _ ↦
      (translated_green_operator_integrable f hf hcf (Real.log n)).const_mul (primeWeight n))
  have he (t : ℝ) : primeSquareGreenResidual A t * poleSquaredDifferentialOperator f t =
      (∑ n ∈ lowerPowerInventory A, primeWeight n *
        (poleSquaredGreenKernel (t - Real.log n) * poleSquaredDifferentialOperator f t)) -
        (∫ x in (0 : ℝ)..2 * A, Real.exp (x / 2) * poleSquaredGreenKernel (t - x)) *
          poleSquaredDifferentialOperator f t := by
    simp [primeSquareGreenResidual, sub_mul, Finset.sum_mul, mul_assoc]
  simp_rw [he]
  rw [integral_sub ha (continuum_green_operator_integrable A hA f hf hcf),
    integral_finsetSum (lowerPowerInventory A) (fun (n : ℕ) _ ↦
      (translated_green_operator_integrable f hf hcf (Real.log n)).const_mul (primeWeight n))]
  simp_rw [integral_const_mul, translated_green_operator_integral f hf hcf]
  rw [continuum_green_operator_integral A hA f hf hcf]
  rfl

/-- The actual inverse/source pairing is genuinely integrable before its evaluation. -/
theorem prime_square_green_source_correlation_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun t ↦ primeSquareGreenResidual A t *
      sourceCorrelation explicitSecondDerivative A t) := by
  simp_rw [source_correlation_eq_pole_operator_sq A _ hA, ← mul_div_assoc]
  exact (prime_square_green_operator_integrable A hA (baseCorrelation A)
    (base_correlation_cont_diff_four A)
    (base_correlation_has_compact_support A (by linarith))).div_const _

/-- Pairing the actual Green inverse with the actual source observes the discrepancy on the base. -/
theorem prime_square_green_source_correlation_pairing (A : ℝ) (hA : 1 ≤ A) :
    (∫ t, primeSquareGreenResidual A t * sourceCorrelation explicitSecondDerivative A t) =
      lowerPowerDiscrepancy A ⟨baseCorrelation A, (base_correlation_cont_diff_four A).continuous⟩ /
        sourceNormalization A := by
  simp_rw [source_correlation_eq_pole_operator_sq A _ hA, ← mul_div_assoc]
  rw [integral_div, prime_square_green_weak_discrepancy A hA (baseCorrelation A)
    (base_correlation_cont_diff_four A) (base_correlation_has_compact_support A (by linarith))]

end

end FormalResearch.RiemannHypothesis.PoleGreenArithmetic
```
