# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.WeilArithmeticTransport.Variantb2a6d3e8d991a97b85aac68db79a027469f6c582e006c0cfa6fe3cfa7e5ab18b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `460ca494088df4b27c60cc992e636e2ab4e0c6d8` · SHA-256 `b2a6d3e8d991a97b85aac68db79a027469f6c582e006c0cfa6fe3cfa7e5ab18b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.ZeroSide.WeilFormulaImport
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.AdmissionSource

/-!
# Z2.6 arithmetic transport for the pinned Weil formula

This module identifies every term of the imported literature RHS with the
independently defined source arithmetic form for the prescribed smooth
mollifications.

The transport retains:

* both pole evaluations and their independently proved vanishing;
* the actual digamma/Gamma multiplier and the source Fourier convention;
* both signed prime shifts;
* the von Mangoldt weights;
* the strict prime-power cutoff at the fixed smoothing inventory radius `A + 1`.

No arithmetic form is redefined by a zero sum.  The result closes the Z2.6
smooth explicit-formula obligation only; dominated descent to the nonsmooth
source remains Z2.7.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.ZeroSide.WeilArithmeticTransport

open MeasureTheory Set Filter Complex
open scoped Convolution ComplexConjugate
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open FormalResearch.RiemannHypothesis.SourcePairing
open ZeroSideTargets ZeroObject ZeroSmoothing ZeroSmoothingDerivative
  ZeroSmoothingTransform BridgeAdmissibility
open SmoothExplicitFormula SmoothExplicitFormulaTransport WeilFormulaImport

noncomputable section

private def realKernel (A ε : ℝ) (hε : 0 < ε) (t : ℝ) : ℝ :=
  ∫ x, smoothedTest A ε hε x * smoothedTest A ε hε (x - t)

private theorem smoothKernel_eq_realKernel (A ε : ℝ) (hε : 0 < ε) (t : ℝ) :
    smoothKernel A ε hε t = (realKernel A ε hε t : ℂ) := rfl

private theorem realKernel_eq_convolution (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    realKernel A ε hε =
      smoothedTest A ε hε ⋆[ContinuousLinearMap.lsmul ℝ ℝ, volume]
        smoothedTest A ε hε := by
  funext t
  change (∫ x, smoothedTest A ε hε x * smoothedTest A ε hε (x - t)) =
    ∫ x, smoothedTest A ε hε x * smoothedTest A ε hε (t - x)
  apply integral_congr_ae
  exact Eventually.of_forall fun x ↦ by
    dsimp only
    rw [← neg_sub t x, smoothedTest_even A ε hA hε]

private theorem realKernel_even (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    Function.Even (realKernel A ε hε) := by
  rw [realKernel_eq_convolution A ε hA hε]
  intro t
  exact convolution_neg_of_neg_eq (ContinuousLinearMap.lsmul ℝ ℝ)
    (Eventually.of_forall (smoothedTest_even A ε hA hε))
    (Eventually.of_forall (smoothedTest_even A ε hA hε))

private theorem smoothKernel_even (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    Function.Even (smoothKernel A ε hε) := by
  intro t
  rw [smoothKernel_eq_realKernel, smoothKernel_eq_realKernel, realKernel_even A ε hA hε]

private theorem smoothed_support_open (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε)
    (hε1 : ε ≤ 1) :
    Function.support (smoothedTest A ε hε) ⊆ Ioo (-(A + 1)) (A + 1) := by
  intro t ht
  obtain ⟨x, hx, y, hy, rfl⟩ :=
    support_convolution_subset (ContinuousLinearMap.lsmul ℝ ℝ) ht
  rw [ZeroSmoothing.mollifier_support ε hε] at hx
  have hy' := ZeroTestRegularity.actualTest_support_subset A hA hy
  constructor <;> linarith [hx.1, hx.2, hy'.1, hy'.2]

private theorem realKernel_support_open
    (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) (hε1 : ε ≤ 1) :
    Function.support (realKernel A ε hε) ⊆
      Ioo (-(2 * (A + 1))) (2 * (A + 1)) := by
  rw [realKernel_eq_convolution A ε hA hε]
  intro t ht
  obtain ⟨x, hx, y, hy, rfl⟩ :=
    support_convolution_subset (ContinuousLinearMap.lsmul ℝ ℝ) ht
  have hx' := smoothed_support_open A ε hA hε hε1 hx
  have hy' := smoothed_support_open A ε hA hε hε1 hy
  constructor <;> linarith [hx'.1, hx'.2, hy'.1, hy'.2]

private theorem smoothKernel_support_open
    (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) (hε1 : ε ≤ 1) :
    Function.support (smoothKernel A ε hε) ⊆
      Ioo (-(2 * (A + 1))) (2 * (A + 1)) := by
  intro t ht
  apply realKernel_support_open A ε hA hε hε1
  intro hz
  exact ht (by rw [smoothKernel_eq_realKernel, hz]; simp)

private def primeIndices (B : ℝ) : Finset ℕ :=
  (Finset.Icc 2 ⌊Real.exp (2 * B)⌋₊).filter
    (fun n : ℕ ↦ (n : ℝ) < Real.exp (2 * B))

private theorem mem_primeIndices_iff (B : ℝ) (n : ℕ) :
    n ∈ primeIndices B ↔ 2 ≤ n ∧ (n : ℝ) < Real.exp (2 * B) := by
  simp only [primeIndices, Finset.mem_filter, Finset.mem_Icc,
    Nat.le_floor_iff (Real.exp_pos (2 * B)).le]
  exact ⟨fun h ↦ ⟨h.1.1, h.2⟩, fun h ↦ ⟨⟨h.1, h.2.le⟩, h.2⟩⟩

private def primeSummand (A ε : ℝ) (hε : 0 < ε) (n : ℕ) : ℂ :=
  ((ArithmeticFunction.vonMangoldt n / Real.sqrt n : ℝ) : ℂ) *
    (smoothKernel A ε hε (Real.log n) + smoothKernel A ε hε (-Real.log n))

private theorem primeSummand_zero
    (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) (hε1 : ε ≤ 1)
    (n : ℕ) (hout : n ∉ primeIndices (A + 1)) :
    primeSummand A ε hε n = 0 := by
  by_cases hn : 2 ≤ n
  · have hexp : Real.exp (2 * (A + 1)) ≤ (n : ℝ) := by
      by_contra h
      exact hout ((mem_primeIndices_iff (A + 1) n).mpr ⟨hn, lt_of_not_ge h⟩)
    have hlog : 2 * (A + 1) ≤ Real.log n := by
      simpa only [Real.log_exp] using
        Real.log_le_log (Real.exp_pos (2 * (A + 1))) hexp
    have hk : smoothKernel A ε hε (Real.log n) = 0 := by
      by_contra h
      have hs := smoothKernel_support_open A ε hA hε hε1 h
      linarith [hs.2]
    rw [primeSummand, smoothKernel_even A ε hA hε, hk]
    simp
  · have hsmall : n = 0 ∨ n = 1 := by omega
    rcases hsmall with rfl | rfl <;> simp [primeSummand]

/-- The all-natural-number literature prime sum is exactly the source's strict
finite prime-power sum at the fixed smoothing radius. -/
theorem prime_sum_eq
    (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) (hε1 : ε ≤ 1) :
    (∑' n : ℕ, primeSummand A ε hε n) =
      ((2 * ∑ n ∈ primeIndices (A + 1),
        ArithmeticFunction.vonMangoldt n / Real.sqrt n *
          (∫ x : ℝ,
            smoothedTest A ε hε x *
              smoothedTest A ε hε (x - Real.log n)) : ℝ) : ℂ) := by
  classical
  rw [tsum_eq_sum (s := primeIndices (A + 1))
    (fun n hn ↦ primeSummand_zero A ε hA hε hε1 n hn)]
  push_cast
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n _
  rw [primeSummand, smoothKernel_even A ε hA hε,
    smoothKernel_eq_realKernel, realKernel]
  push_cast
  ring

private theorem source_fourier_conj
    (f : ℝ → ℝ) (he : Function.Even f) (ξ : ℝ) :
    conj (sourceFourier f ξ) = sourceFourier f ξ := by
  unfold sourceFourier
  rw [← integral_conj, ← integral_neg_eq_self]
  apply integral_congr_ae
  exact Eventually.of_forall fun x ↦ by
    simp only [map_mul, map_neg, Complex.conj_ofReal, ← Complex.exp_conj,
      Complex.conj_I, Complex.ofReal_neg]
    rw [he]
    congr 1
    ring

/-- On the real Fourier axis, and only there, the source's ordinary square is
the true norm square used by the archimedean term. -/
theorem paperFT_kernel_real
    (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) (ξ : ℝ) :
    Zeta23.paperFT (smoothKernel A ε hε) (ξ : ℂ) =
      (Complex.normSq (sourceFourier (smoothedTest A ε hε) ξ) : ℂ) := by
  rw [paperFT_smoothKernel, smoothKernelFT_eq_square A ε hA hε]
  change sourceFourier (smoothedTest A ε hε) ξ ^ 2 =
    (Complex.normSq (sourceFourier (smoothedTest A ε hε) ξ) : ℂ)
  rw [pow_two, Complex.normSq_eq_conj_mul_self,
    source_fourier_conj (smoothedTest A ε hε) (smoothedTest_even A ε hA hε) ξ]

private theorem smoothed_archimedean_integrable
    (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    Integrable (fun ξ ↦ archimedeanMultiplier ξ *
      Complex.normSq (sourceFourier (smoothedTest A ε hε) ξ)) volume := by
  let f := smoothedTest A ε hε
  have hfint : Integrable f volume := smoothedTest_integrable A ε hA hε
  have hfdiff : Differentiable ℝ f :=
    (smoothedTest_contDiff A ε hA hε).differentiable (by norm_num)
  have hfderiv : Integrable (deriv f) volume :=
    smoothedTest_deriv_integrable A ε hA hε
  have hzero := BridgeFourier.fourier_normSq_integrable f hfint hfdiff hfderiv
  have hlog := BridgeFourier.logarithmic_fourier_integrable f hfint hfdiff hfderiv
  have hc := BridgeFourier.sourceFourier_continuous hfint
  have hm : AEStronglyMeasurable (fun ξ ↦ archimedeanMultiplier ξ *
      Complex.normSq (sourceFourier f ξ)) volume :=
    (BridgeMultiplier.archimedeanMultiplier_measurable.mul
      (Complex.continuous_normSq.comp hc).measurable).aestronglyMeasurable
  have hmajor := (hzero.const_mul (|BridgeAdmissibility.archimedeanConstant| + 4)).add
    (hlog.div_const 2)
  apply hmajor.mono' hm
  filter_upwards [] with ξ
  rw [Real.norm_eq_abs, abs_mul,
    abs_of_nonneg (Complex.normSq_nonneg _)]
  have hb := BridgeMultiplier.multiplier_abs_le_of_estimate
    AdmissionSource.multiplier_estimate ξ
  calc
    |archimedeanMultiplier ξ| * Complex.normSq (sourceFourier f ξ) ≤
        (|BridgeAdmissibility.archimedeanConstant| + 4 +
          Real.log (1 + 4 * ξ ^ 2) / 2) *
          Complex.normSq (sourceFourier f ξ) :=
      mul_le_mul_of_nonneg_right hb (Complex.normSq_nonneg _)
    _ = _ := by simp only [Pi.add_apply]; ring

private theorem gamma_integrand_eq
    (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) (ξ : ℝ) :
    Zeta23.paperFT (smoothKernel A ε hε) (ξ : ℂ) *
      (Zeta23.EF.gammaBracket ξ : ℂ) =
      ((archimedeanMultiplier ξ *
        Complex.normSq (sourceFourier (smoothedTest A ε hε) ξ) : ℝ) : ℂ) := by
  rw [paperFT_kernel_real A ε hA hε ξ]
  change (Complex.normSq (sourceFourier (smoothedTest A ε hε) ξ) : ℂ) *
    (archimedeanMultiplier ξ : ℂ) = _
  rw [Complex.ofReal_mul, mul_comm]

/-- The actual Gamma integral is genuine before it is transported. -/
theorem gamma_integrand_integrable
    (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    Integrable (fun ξ : ℝ ↦
      Zeta23.paperFT (smoothKernel A ε hε) (ξ : ℂ) *
        (Zeta23.EF.gammaBracket ξ : ℂ)) := by
  simp_rw [gamma_integrand_eq A ε hA hε]
  exact (smoothed_archimedean_integrable A ε hA hε).ofReal

private theorem gamma_integral_eq
    (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    (∫ ξ : ℝ,
      Zeta23.paperFT (smoothKernel A ε hε) (ξ : ℂ) *
        (Zeta23.EF.gammaBracket ξ : ℂ)) =
      ((∫ ξ : ℝ, archimedeanMultiplier ξ *
        Complex.normSq (sourceFourier (smoothedTest A ε hε) ξ) : ℝ) : ℂ) := by
  simp_rw [gamma_integrand_eq A ε hA hε]
  exact integral_complex_ofReal

private theorem positive_real_moment_zero
    (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    (∫ x : ℝ, Real.exp (x / 2) * smoothedTest A ε hε x) = 0 := by
  have heq :
      ((∫ x : ℝ, Real.exp (x / 2) * smoothedTest A ε hε x : ℝ) : ℂ) =
        smoothedBilateralTransform A ε hε (1 / 2) := by
    rw [← integral_complex_ofReal, smoothedBilateralTransform]
    apply integral_congr_ae
    exact Eventually.of_forall fun x ↦ by
      have hx : ((x / 2 : ℝ) : ℂ) = (1 / 2 : ℂ) * (x : ℂ) := by
        push_cast
        ring
      simp only [Complex.ofReal_mul, Complex.ofReal_exp, hx]
      exact mul_comm _ _
  have hz := (smoothed_pole_bilateral A ε hA hε).1
  exact_mod_cast heq.trans hz

private theorem real_pole_contribution_zero
    (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    realPoleContribution (smoothedTest A ε hε) = 0 := by
  rw [realPoleContribution, positive_real_moment_zero A ε hA hε]
  ring

private theorem kernel_pole_values
    (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    Zeta23.paperFT (smoothKernel A ε hε) (Complex.I / 2) = 0 ∧
    Zeta23.paperFT (smoothKernel A ε hε) (-Complex.I / 2) = 0 := by
  obtain ⟨hplus, hminus⟩ := smoothed_pole_bilateral A ε hA hε
  constructor
  · rw [paperFT_smoothKernel, smoothKernelFT_eq_square A ε hA hε]
    have he : Complex.I * (Complex.I / 2) = (-1 / 2 : ℂ) := by
      rw [← mul_div_assoc, Complex.I_mul_I]
    rw [he, hminus]
    norm_num
  · rw [paperFT_smoothKernel, smoothKernelFT_eq_square A ε hA hε]
    have he : Complex.I * (-Complex.I / 2) = (1 / 2 : ℂ) := by
      rw [← mul_div_assoc, mul_neg, Complex.I_mul_I]
      norm_num
    rw [he, hplus]
    norm_num

/-- Every term of the imported literature RHS is the corresponding term of the
independently defined source arithmetic form. -/
theorem literatureRHS_eq_arithmetic
    (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) (hε1 : ε ≤ 1) :
    Zeta23.EF.literatureRHS (smoothKernel A ε hε) =
      (realArithmeticForm (A + 1) (smoothedTest A ε hε) : ℂ) := by
  obtain ⟨hplus, hminus⟩ := kernel_pole_values A ε hA hε
  have hprime := prime_sum_eq A ε hA hε hε1
  dsimp only [primeSummand, primeIndices] at hprime
  unfold Zeta23.EF.literatureRHS
  rw [hplus, hminus, hprime, gamma_integral_eq A ε hA hε]
  rw [realArithmeticForm, real_pole_contribution_zero A ε hA hε]
  push_cast
  ring

/-- The pinned literature formula now has exactly the weighted-point source
arithmetic conclusion required by the multiplicity transport. -/
theorem kernel_point_formula : KernelPointFormulaObligation := by
  intro A hA ε hε hε1
  have h := (smooth_kernel_literature_formula A ε hA hε hε1).2
  rw [literatureRHS_eq_arithmetic A ε hA hε hε1] at h
  exact h

/-- Z2.6 closure: the prescribed smooth source satisfies the exact convergent
ordinary-square explicit formula with the unchanged arithmetic form. -/
theorem smooth_explicit_formula : SmoothExplicitFormulaObligation :=
  smooth_explicit_formula_of_kernel_point_formula kernel_point_formula

end
end FormalResearch.RiemannHypothesis.ZeroSide.WeilArithmeticTransport
```
