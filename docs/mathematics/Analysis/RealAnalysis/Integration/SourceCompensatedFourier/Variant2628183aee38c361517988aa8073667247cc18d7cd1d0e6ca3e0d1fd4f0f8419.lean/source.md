# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SourceCompensatedFourier.Variant2628183aee38c361517988aa8073667247cc18d7cd1d0e6ca3e0d1fd4f0f8419

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0cce7baa9bd4b1cf1d24cbced651d6c0f7990fc5` · SHA-256 `2628183aee38c361517988aa8073667247cc18d7cd1d0e6ca3e0d1fd4f0f8419`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceMangoldtInteractionFourier
import FormalResearch.RiemannHypothesis.SourceKapitzaCompensatedReadout
import FormalResearch.RiemannHypothesis.SourceKapitzaCycle

/-!
# Literal compensated signed Fourier and Abel readouts

Every integer in the closed inventory starts at two and retains `Lambda(n)-1`.
The Fourier density is genuinely integrable. The finite Abel identity retains
both the closed upper inventory and its vanishing source boundary. These exact
readouts do not provide a uniform arithmetic cap.

Research direction: grwtsk contributors. Particular native calculations and
formal construction: OpenAI Codex, 7 October 2026.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceCompensatedFourier
open MeasureTheory Filter Set
open scoped FourierTransform InnerProductSpace Interval
open SourceReflectionDuality SourceMangoldtInteraction SourceMangoldtInteractionFourier
open SourceScaleL2Continuity SourceDualFourierJump SourceKapitzaCompensatedReadout
open SourcePrimeMomentScale SourceScaleDerivative SourceDualRotation
open SourcePairing SourceKapitzaReconstruction SourceMangoldtAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open PrimePowerDescent EstimateMertensResidual EstimatePrimeSmoothDefect
open EstimateMobiusSplit Realization
open CorrelationRegularity SourceFirstPrimeAbel SourcePlancherel BridgeFourier

/-- Literal jointly signed coefficient; index one is outside the inventory. -/
def compensatedCoefficient (n : ℕ) : ℝ :=
  (ArithmeticFunction.vonMangoldt n - 1) * Real.exp (-Real.log n / 2)

/-- Actual finite standard-frequency symbol. -/
def compensatedFourierSymbol (A ξ : ℝ) : ℝ :=
  ∑ n ∈ primePowerInventory (2 * A),
    compensatedCoefficient n * Real.cos (2 * Real.pi * ξ * Real.log n)

/-- Actual signed spatial translation operator. -/
def compensatedInteraction (A : ℝ) : ComplexL2 →L[ℂ] ComplexL2 :=
  ∑ n ∈ primePowerInventory (2 * A), (compensatedCoefficient n : ℂ) •
    symmetricTranslation (Real.log n)

/-- Actual frequency operator with the same complete signed coefficients. -/
def compensatedFourierMultiplier (A : ℝ) : ComplexL2 →L[ℂ] ComplexL2 :=
  ∑ n ∈ primePowerInventory (2 * A), (compensatedCoefficient n : ℂ) •
    symmetricPhaseMultiplier (Real.log n)

theorem compensatedInteraction_apply (A : ℝ) (f : ComplexL2) :
    compensatedInteraction A f = ∑ n ∈ primePowerInventory (2 * A),
      (compensatedCoefficient n : ℂ) • symmetricTranslation (Real.log n) f := by
  simp only [compensatedInteraction, sum_apply, _root_.smul_apply]

theorem compensatedFourierMultiplier_apply (A : ℝ) (f : ComplexL2) :
    compensatedFourierMultiplier A f = ∑ n ∈ primePowerInventory (2 * A),
      (compensatedCoefficient n : ℂ) • symmetricPhaseMultiplier (Real.log n) f := by
  simp only [compensatedFourierMultiplier, sum_apply, _root_.smul_apply]

theorem fourier_compensatedInteraction (A : ℝ) (f : ComplexL2) :
    𝓕 (compensatedInteraction A f) = compensatedFourierMultiplier A (𝓕 f) := by
  simp only [compensatedInteraction_apply, FourierTransform.fourier_sum,
    FourierTransform.fourier_smul, fourier_symmetricTranslation,
    compensatedFourierMultiplier_apply]

theorem compensatedFourierMultiplier_coe_ae (A : ℝ) (f : ComplexL2) :
    compensatedFourierMultiplier A f =ᵐ[volume]
      fun ξ => (compensatedFourierSymbol A ξ : ℂ) * f ξ := by
  let S := primePowerInventory (2 * A)
  have hterms : ∀ᵐ ξ ∂volume, ∀ n ∈ S,
      ((compensatedCoefficient n : ℂ) • symmetricPhaseMultiplier (Real.log n) f) ξ =
        (compensatedCoefficient n : ℂ) *
          (Real.cos (2 * Real.pi * ξ * Real.log n) : ℂ) * f ξ := by
    apply (Filter.eventually_all_finset S).mpr
    intro n _
    filter_upwards [Lp.coeFn_smul (compensatedCoefficient n : ℂ)
      (symmetricPhaseMultiplier (Real.log n) f),
      symmetricPhaseMultiplier_coe_ae (Real.log n) f] with ξ hs hc
    simp only [Pi.smul_apply, smul_eq_mul] at hs
    rw [hs, hc]
    ring
  filter_upwards [Lp.coeFn_fun_finsetSum S (fun n =>
    (compensatedCoefficient n : ℂ) • symmetricPhaseMultiplier (Real.log n) f), hterms]
    with ξ hs ht
  rw [compensatedFourierMultiplier_apply]
  change (∑ n ∈ S, (compensatedCoefficient n : ℂ) •
    symmetricPhaseMultiplier (Real.log n) f) ξ = _
  rw [hs]
  simp only [compensatedFourierSymbol, Complex.ofReal_sum, Complex.ofReal_mul,
    Finset.sum_mul]
  exact Finset.sum_congr rfl ht

private theorem inner_real_multiplier (a : ℝ) (z : ℂ) :
    (⟪z, (a : ℂ) * z⟫_ℂ).re = a * Complex.normSq z := by
  rw [RCLike.inner_apply']
  have he : starRingEnd ℂ z * ((a : ℂ) * z) =
      (a : ℂ) * (Complex.normSq z : ℂ) := by
    rw [Complex.normSq_eq_conj_mul_self]
    ring
  rw [he, ← Complex.ofReal_mul, Complex.ofReal_re]

/-- Integrability comes from an actual L² pairing, not a total-integral fallback. -/
theorem compensatedFourierDensity_integrable (A : ℝ) (f : ComplexL2) :
    Integrable (fun ξ => compensatedFourierSymbol A ξ * Complex.normSq (f ξ)) := by
  apply ((L2.integrable_inner (𝕜 := ℂ) f (compensatedFourierMultiplier A f)).re).congr
  filter_upwards [compensatedFourierMultiplier_coe_ae A f] with ξ hξ
  rw [hξ]
  exact inner_real_multiplier _ _

theorem compensatedFourierMultiplier_quadratic_integral (A : ℝ) (f : ComplexL2) :
    (⟪f, compensatedFourierMultiplier A f⟫_ℂ).re =
      ∫ ξ : ℝ, compensatedFourierSymbol A ξ * Complex.normSq (f ξ) := by
  rw [L2.inner_def]
  change RCLike.re (∫ ξ : ℝ, ⟪f ξ, (compensatedFourierMultiplier A f) ξ⟫_ℂ) = _
  rw [← integral_re (L2.integrable_inner (𝕜 := ℂ) f (compensatedFourierMultiplier A f))]
  apply integral_congr_ae
  filter_upwards [compensatedFourierMultiplier_coe_ae A f] with ξ hξ
  rw [hξ]
  exact inner_real_multiplier _ _

theorem compensatedInteraction_self_real (A : ℝ) (f : ComplexL2) :
    (⟪f, compensatedInteraction A f⟫_ℂ).re =
      ∑ n ∈ primePowerInventory (2 * A), compensatedCoefficient n *
        (⟪f, translation (Real.log n) f⟫_ℂ).re := by
  simp only [compensatedInteraction_apply, inner_sum, inner_smul_right,
    Complex.re_sum, Complex.re_ofReal_mul, symmetricTranslation_self_real]

theorem compensatedSourceSum_eq_quadratic {A : ℝ} (hA : 0 < A) :
    compensatedSourceSum A =
      (⟪originalSourceState A,
        compensatedInteraction A (originalSourceState A)⟫_ℂ).re := by
  rw [compensatedInteraction_self_real]
  unfold compensatedSourceSum compensatedCoefficient exponentialTest
  apply Finset.sum_congr rfl
  intro n _
  rw [sourceCorrelation_eq_inner hA]
  ring

/-- The manuscript's square-root coefficients equal the original exponential weights. -/
theorem compensatedSourceSum_eq_sqrt_sum (A : ℝ) :
    compensatedSourceSum A = ∑ n ∈ Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊,
      (ArithmeticFunction.vonMangoldt n - 1) *
        sourceCorrelation explicitSecondDerivative A (Real.log n) / Real.sqrt n := by
  unfold compensatedSourceSum primePowerInventory
  apply Finset.sum_congr rfl
  intro n hn
  rw [exponentialTest_log _ n (by have := (Finset.mem_Icc.mp hn).1; omega)]
  ring

/-- Literal standard density with no angular measure prefactor. -/
theorem compensatedStandardSourceDensity_integrable {A : ℝ} (hA : 0 < A) :
    Integrable (fun ξ => compensatedFourierSymbol A ξ *
      Complex.normSq (standardSourceTransform A ξ)) := by
  apply (compensatedFourierDensity_integrable A (𝓕 (originalSourceState A))).congr
  filter_upwards [originalSourceState_fourier_coe_ae hA] with ξ hξ
  rw [hξ]

theorem compensatedSourceSum_eq_standardSourceIntegral {A : ℝ} (hA : 0 < A) :
    compensatedSourceSum A = ∫ ξ : ℝ,
      compensatedFourierSymbol A ξ * Complex.normSq (standardSourceTransform A ξ) := by
  rw [compensatedSourceSum_eq_quadratic hA, ← Lp.inner_fourier_eq,
    fourier_compensatedInteraction, compensatedFourierMultiplier_quadratic_integral]
  apply integral_congr_ae
  filter_upwards [originalSourceState_fourier_coe_ae hA] with ξ hξ
  rw [hξ]

/-- The jointly compensated positive-angular symbol; no extra index-one atom. -/
def compensatedAngularSymbol (A ω : ℝ) : ℝ :=
  ∑ n ∈ primePowerInventory (2 * A), compensatedCoefficient n * Real.cos (ω * Real.log n)

theorem compensatedAngularSymbol_eq_sqrt_sum (A ω : ℝ) :
    compensatedAngularSymbol A ω =
      ∑ n ∈ Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊,
        (ArithmeticFunction.vonMangoldt n - 1) / Real.sqrt n * Real.cos (ω * Real.log n) := by
  unfold compensatedAngularSymbol compensatedCoefficient primePowerInventory
  apply Finset.sum_congr rfl
  intro n hn
  have he := exponentialTest_log (fun _ : ℝ => 1) n
    (by have := (Finset.mem_Icc.mp hn).1; omega)
  simp only [exponentialTest, mul_one, one_div] at he
  rw [he]
  ring

theorem compensatedFourierSymbol_eq_angular (A ξ : ℝ) :
    compensatedFourierSymbol A ξ = compensatedAngularSymbol A (-(2 * Real.pi) * ξ) := by
  unfold compensatedFourierSymbol compensatedAngularSymbol
  apply Finset.sum_congr rfl
  intro n _
  have he : -(2 * Real.pi) * ξ * Real.log n = -(2 * Real.pi * ξ * Real.log n) := by ring
  rw [he, Real.cos_neg]

/-- Actual integrability of the positive-angular signed density. -/
theorem compensatedAngularSourceDensity_integrable {A : ℝ} (hA : 0 < A) :
    Integrable (fun ω => compensatedAngularSymbol A ω *
      Complex.normSq (sourceFourier (normalizedTest explicitSecondDerivative A) ω)) := by
  have hint := compensatedStandardSourceDensity_integrable hA
  simp only [standardSourceTransform, standardFourier_eq_sourceFourier,
    compensatedFourierSymbol_eq_angular] at hint
  exact (integrable_comp_mul_left_iff _
    (neg_ne_zero.mpr (mul_ne_zero two_ne_zero Real.pi_ne_zero))).mp hint

/-- Exact literal signed Fourier readout with the paid `1/(2π)` conversion. -/
theorem compensatedSourceSum_eq_angularSourceIntegral {A : ℝ} (hA : 0 < A) :
    compensatedSourceSum A = (1 / (2 * Real.pi)) * ∫ ω : ℝ,
      compensatedAngularSymbol A ω *
        Complex.normSq (sourceFourier (normalizedTest explicitSecondDerivative A) ω) := by
  rw [compensatedSourceSum_eq_standardSourceIntegral hA]
  simp only [standardSourceTransform, standardFourier_eq_sourceFourier,
    compensatedFourierSymbol_eq_angular]
  rw [Measure.integral_comp_mul_left
    (fun ω => compensatedAngularSymbol A ω *
      Complex.normSq (sourceFourier (normalizedTest explicitSecondDerivative A) ω))
    (-(2 * Real.pi)), smul_eq_mul, abs_inv, abs_neg,
    abs_of_pos (by positivity : 0 < 2 * Real.pi)]
  simp only [one_div]

/-- The original finite inventory explicitly excludes index one. -/
theorem one_not_mem_compensatedInventory (A : ℝ) :
    1 ∉ primePowerInventory (2 * A) := by
  simp [primePowerInventory]

/-- The forbidden index-one coefficient really is minus one; it was excluded, not zero. -/
theorem compensatedCoefficient_one : compensatedCoefficient 1 = -1 := by
  simp [compensatedCoefficient]

/-- Each zero-Mangoldt composite retains its negative integer-lattice compensation. -/
theorem compensatedCoefficient_of_zeroMangoldt {n : ℕ}
    (hn : ArithmeticFunction.vonMangoldt n = 0) :
    compensatedCoefficient n = -Real.exp (-Real.log n / 2) := by
  simp [compensatedCoefficient, hn]

/-- Adding the excluded index-one atom changes the actual normalized readout by minus one.
This control checks both the signed inventory and angular mass normalization. -/
theorem angularIntegral_with_extra_one_atom {A : ℝ} (hA : 1 ≤ A) :
    (1 / (2 * Real.pi)) * (∫ ω : ℝ, (compensatedAngularSymbol A ω - 1) *
      Complex.normSq (sourceFourier (normalizedTest explicitSecondDerivative A) ω)) =
        compensatedSourceSum A - 1 := by
  have hp : 0 < A := by linarith
  have hi := compensatedAngularSourceDensity_integrable hp
  have hm := actual_fourier_square_integrable A hA
  have he : (fun ω : ℝ => (compensatedAngularSymbol A ω - 1) *
      Complex.normSq (sourceFourier (normalizedTest explicitSecondDerivative A) ω)) =
      (fun ω => compensatedAngularSymbol A ω *
        Complex.normSq (sourceFourier (normalizedTest explicitSecondDerivative A) ω)) -
      (fun ω => Complex.normSq
        (sourceFourier (normalizedTest explicitSecondDerivative A) ω)) := by
    ext ω
    simp only [Pi.sub_apply]
    ring
  rw [he]
  change (1 / (2 * Real.pi)) * (∫ ω : ℝ,
      compensatedAngularSymbol A ω *
        Complex.normSq (sourceFourier (normalizedTest explicitSecondDerivative A) ω) -
      Complex.normSq (sourceFourier (normalizedTest explicitSecondDerivative A) ω)) = _
  rw [integral_sub hi hm, actual_source_fourier_mass A hA,
    mul_sub, ← compensatedSourceSum_eq_angularSourceIntegral hp]
  have hpi : 2 * Real.pi ≠ 0 := by positivity
  rw [div_mul_cancel₀ _ hpi]

/-- Literal compensated Chebyshev prefix in the arithmetic coordinate. -/
def compensatedPrefix (x : ℝ) : ℝ := Chebyshev.psi x - (⌊x⌋₊ : ℝ) + 1

theorem compensatedPrefix_one : compensatedPrefix 1 = 0 := by
  unfold compensatedPrefix
  rw [Chebyshev.psi_eq_sum_Icc]
  norm_num only [Nat.floor_one, Nat.cast_one, sub_add_cancel]
  apply Finset.sum_eq_zero
  intro n hn
  have hn1 := (Finset.mem_Icc.mp hn).2
  interval_cases n <;> simp

/-- At positive logarithmic input this equals the finite sum from index two. -/
theorem compensatedPrefix_exp_eq_sum (s : ℝ) (hs : 0 ≤ s) :
    compensatedPrefix (Real.exp s) = ∑ n ∈ primePowerInventory s,
      (ArithmeticFunction.vonMangoldt n - 1) := by
  have hu := unitPrefix_eq_phase s hs
  unfold compensatedPrefix
  rw [← SourceKapitzaCycle.source_chebyshev_eq_psi]
  change (∑ n ∈ primePowerInventory s, ArithmeticFunction.vonMangoldt n) -
    (⌊Real.exp s⌋₊ : ℝ) + 1 = _
  rw [Finset.sum_sub_distrib]
  change _ = (∑ n ∈ primePowerInventory s, ArithmeticFunction.vonMangoldt n) - unitPrefix s
  rw [hu]
  unfold cutoffPhase
  ring

theorem compensatedPrefix_mul_eq_steps (b s y : ℝ) (hs0 : 0 ≤ s) (hs : s ≤ b) :
    compensatedPrefix (Real.exp s) * y = ∑ n ∈ primePowerInventory b,
      (ArithmeticFunction.vonMangoldt n - 1) * (if Real.log n ≤ s then y else 0) := by
  rw [compensatedPrefix_exp_eq_sum s hs0, ← primePowerInventory_filter_log b s hs,
    Finset.sum_filter, Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro n _
  split_ifs <;> simp

/-- Genuine finite-step integrability on the complete logarithmic interval. -/
theorem compensatedPrefix_mul_deriv_intervalIntegrable (b : ℝ) (hb : 0 ≤ b)
    (F : ℝ → ℝ) (hF : ContDiff ℝ 1 F) :
    IntervalIntegrable (fun s => compensatedPrefix (Real.exp s) * deriv F s)
      volume 0 b := by
  have hi : IntervalIntegrable (∑ n ∈ primePowerInventory b, fun s : ℝ =>
      (ArithmeticFunction.vonMangoldt n - 1) *
        (if Real.log n ≤ s then deriv F s else 0)) volume 0 b :=
    IntervalIntegrable.sum _ (fun n _ =>
      (intervalIntegrable_closed_step 0 b (Real.log n) (deriv F)
        (hF.continuous_deriv_one.intervalIntegrable 0 b)).const_mul _)
  have he : (∑ n ∈ primePowerInventory b, fun s : ℝ =>
      (ArithmeticFunction.vonMangoldt n - 1) *
        (if Real.log n ≤ s then deriv F s else 0)) =
      (fun s => ∑ n ∈ primePowerInventory b, (ArithmeticFunction.vonMangoldt n - 1) *
        (if Real.log n ≤ s then deriv F s else 0)) := by ext s; simp
  rw [he] at hi
  apply hi.congr
  intro s hs
  have hsb := uIoc_of_le hb ▸ hs
  exact (compensatedPrefix_mul_eq_steps b s (deriv F s) hsb.1.le hsb.2).symm

/-- Finite Abel formula includes the full closed upper boundary term. -/
theorem compensatedPrefix_abel (b : ℝ) (hb : 0 ≤ b)
    (F : ℝ → ℝ) (hF : ContDiff ℝ 1 F) :
    (∫ s in 0..b, compensatedPrefix (Real.exp s) * deriv F s) =
      compensatedPrefix (Real.exp b) * F b - ∑ n ∈ primePowerInventory b,
        (ArithmeticFunction.vonMangoldt n - 1) * F (Real.log n) := by
  have ht := integral_finite_steps_deriv 0 b (primePowerInventory b)
    (fun n => Real.log n) (fun n => ArithmeticFunction.vonMangoldt n - 1)
    (fun n hn => mangoldtInventory_log_bounds b n hn) F hF
  have he : (∫ s in 0..b, compensatedPrefix (Real.exp s) * deriv F s) =
      ∫ s in 0..b, ∑ n ∈ primePowerInventory b,
        (ArithmeticFunction.vonMangoldt n - 1) *
          (if Real.log n ≤ s then deriv F s else 0) := by
    apply intervalIntegral.integral_congr
    intro s hs
    have hsb := uIcc_of_le hb ▸ hs
    exact compensatedPrefix_mul_eq_steps b s (deriv F s) hsb.1 hsb.2
  rw [he, ht]
  simp_rw [mul_sub]
  rw [Finset.sum_sub_distrib, ← Finset.sum_mul, compensatedPrefix_exp_eq_sum b hb]

/-- Literal finite Abel readout: the upper source boundary vanishes even at an atom. -/
theorem compensatedSourceSum_eq_abelIntegral {A : ℝ} (hA : 0 < A) :
    compensatedSourceSum A = ∫ s in 0..2 * A,
      compensatedPrefix (Real.exp s) * Real.exp (-s / 2) * kapitzaKernel A s := by
  let C := sourceCorrelation explicitSecondDerivative A
  let F := exponentialTest C
  have hc : ContDiff ℝ 1 C := sourceCorrelation_contDiff A hA
  have hf : ContDiff ℝ 1 F := exponentialTest_contDiff C hc
  have hu : F (2 * A) = 0 := by
    dsimp [F, exponentialTest, C]
    rw [sourceCorrelation_upper_endpoint A hA, mul_zero]
  have hd : deriv F = fun s => -Real.exp (-s / 2) * kapitzaKernel A s := by
    ext s
    rw [exponentialTest_deriv C hc]
    dsimp [kapitzaKernel, C]
    ring
  have ht := compensatedPrefix_abel (2 * A) (by linarith) F hf
  rw [hu, mul_zero, zero_sub] at ht
  change (∫ s in 0..2 * A, compensatedPrefix (Real.exp s) * deriv F s) =
    -compensatedSourceSum A at ht
  rw [hd] at ht
  have he : (∫ s in 0..2 * A, compensatedPrefix (Real.exp s) *
      (-Real.exp (-s / 2) * kapitzaKernel A s)) =
      -(∫ s in 0..2 * A, compensatedPrefix (Real.exp s) *
        Real.exp (-s / 2) * kapitzaKernel A s) := by
    rw [← intervalIntegral.integral_neg]
    apply intervalIntegral.integral_congr
    intro s _
    ring
  rw [he] at ht
  linarith

/-- The Abel readout is a genuinely integrable finite-step pairing. -/
theorem compensatedAbelDensity_intervalIntegrable {A : ℝ} (hA : 0 < A) :
    IntervalIntegrable (fun s => compensatedPrefix (Real.exp s) *
      Real.exp (-s / 2) * kapitzaKernel A s) volume 0 (2 * A) := by
  let C := sourceCorrelation explicitSecondDerivative A
  let F := exponentialTest C
  have hc : ContDiff ℝ 1 C := sourceCorrelation_contDiff A hA
  have hf : ContDiff ℝ 1 F := exponentialTest_contDiff C hc
  have hd : deriv F = fun s => -Real.exp (-s / 2) * kapitzaKernel A s := by
    ext s
    rw [exponentialTest_deriv C hc]
    dsimp [kapitzaKernel, C]
    ring
  apply (compensatedPrefix_mul_deriv_intervalIntegrable (2 * A) (by linarith) F hf).neg.congr
  intro s _
  change -(compensatedPrefix (Real.exp s) * deriv F s) = _
  rw [hd]
  ring

/-- A common moving spatial window commutes with every literal translation atom. -/
theorem compensatedInteraction_translation_commute (A u : ℝ) (f : ComplexL2) :
    translation u (compensatedInteraction A f) =
      compensatedInteraction A (translation u f) := by
  simp only [compensatedInteraction_apply, map_sum, map_smul,
    symmetricTranslation_apply, map_add, translation_add]
  apply Finset.sum_congr rfl
  intro n _
  rw [add_comm u (Real.log n), add_comm u (-Real.log n)]

/-- Exact transport cancellation for the actual signed source, with every atom retained.
Moving the common window therefore supplies no decrease in the signed arithmetic value. -/
theorem compensated_translated_source_readout_eq {A : ℝ} (hA : 0 < A) (u : ℝ) :
    (⟪translation u (originalSourceState A),
      compensatedInteraction A (translation u (originalSourceState A))⟫_ℂ).re =
        compensatedSourceSum A := by
  rw [← compensatedInteraction_translation_commute, (translation u).inner_map_map,
    compensatedSourceSum_eq_quadratic hA]

/-- The genuine sign dual also commutes with the compensated even translation inventory. -/
theorem compensatedInteraction_angular_commute (A : ℝ) (f : ComplexL2) :
    angularSignDuality (compensatedInteraction A f) =
      compensatedInteraction A (angularSignDuality f) := by
  simp only [compensatedInteraction_apply, map_sum, map_smul,
    symmetricTranslation_angular_commute]

/-- A fixed complete inventory locally represents the compensated scalar, not its state. -/
def compensatedSourceSumFixed (N : ℕ) (A : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 2 N,
    (ArithmeticFunction.vonMangoldt n - 1) * closedPrimeWeight A n

/-- An independently specified signed shape derivative. -/
def compensatedScaleDerivative (A : ℝ) : ℝ :=
  ∑ n ∈ primePowerInventory (2 * A),
    (ArithmeticFunction.vonMangoldt n - 1) * closedPrimeWeightScaleDerivative A n

/-- Outside the current cutoff, padding costs exactly zero from the actual source support. -/
theorem compensatedSourceSum_eq_fixed {A : ℝ} (hA : 0 < A) (N : ℕ)
    (hN : ⌊Real.exp (2 * A)⌋₊ ≤ N) :
    compensatedSourceSum A = compensatedSourceSumFixed N A := by
  change (∑ n ∈ Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊,
    (ArithmeticFunction.vonMangoldt n - 1) * closedPrimeWeight A n) = _
  unfold compensatedSourceSumFixed
  apply Finset.sum_subset
  · intro n hn
    exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hn).1, (Finset.mem_Icc.mp hn).2.trans hN⟩
  · intro n hn hnold
    have hn2 := (Finset.mem_Icc.mp hn).1
    have hcut : ⌊Real.exp (2 * A)⌋₊ < n := by
      simp only [Finset.mem_Icc] at hnold
      omega
    rw [closedPrimeWeight_zero_above_cutoff hA hn2 hcut, mul_zero]

theorem compensatedScaleDerivative_eq_fixed {A : ℝ} (hA : 0 < A) (N : ℕ)
    (hN : ⌊Real.exp (2 * A)⌋₊ ≤ N) :
    compensatedScaleDerivative A = ∑ n ∈ Finset.Icc 2 N,
      (ArithmeticFunction.vonMangoldt n - 1) * closedPrimeWeightScaleDerivative A n := by
  unfold compensatedScaleDerivative primePowerInventory
  apply Finset.sum_subset
  · intro n hn
    exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hn).1, (Finset.mem_Icc.mp hn).2.trans hN⟩
  · intro n hn hnold
    have hn2 := (Finset.mem_Icc.mp hn).1
    have hcut : ⌊Real.exp (2 * A)⌋₊ < n := by
      simp only [Finset.mem_Icc] at hnold
      omega
    rw [closedPrimeWeightScaleDerivative_zero_above_cutoff hA hn2 hcut, mul_zero]

theorem compensatedSourceSum_eventually_eq_fixed {A : ℝ} (hA : 0 < A) :
    compensatedSourceSum =ᶠ[nhds A] compensatedSourceSumFixed (localUpperCutoff A) := by
  filter_upwards [eventually_gt_nhds hA, eventually_lt_nhds (lt_add_one A)] with B hB hBA
  apply compensatedSourceSum_eq_fixed hB
  exact Nat.floor_mono (Real.exp_le_exp.mpr (by linarith))

/-- The actual all-integer compensated scalar is differentiable across cutoff changes. -/
theorem compensatedSourceSum_hasDerivAt {A : ℝ} (hA : 0 < A) :
    HasDerivAt compensatedSourceSum (compensatedScaleDerivative A) A := by
  have hf : HasDerivAt (compensatedSourceSumFixed (localUpperCutoff A))
      (∑ n ∈ Finset.Icc 2 (localUpperCutoff A),
        (ArithmeticFunction.vonMangoldt n - 1) * closedPrimeWeightScaleDerivative A n) A := by
    unfold compensatedSourceSumFixed
    exact HasDerivAt.fun_sum fun n _ => (closedPrimeWeight_hasDerivAt hA n).const_mul _
  have hN : ⌊Real.exp (2 * A)⌋₊ ≤ localUpperCutoff A :=
    Nat.floor_mono (Real.exp_le_exp.mpr (by linarith))
  rw [← compensatedScaleDerivative_eq_fixed hA _ hN] at hf
  exact hf.congr_of_eventuallyEq (compensatedSourceSum_eventually_eq_fixed hA)

/-- The observable is C¹ on every positive scale, retaining all-real quantification. -/
theorem compensatedSourceSum_contDiffOn :
    ContDiffOn ℝ 1 compensatedSourceSum (Ioi 0) := by
  intro A hA
  have hf : ContDiffAt ℝ 1 (compensatedSourceSumFixed (localUpperCutoff A)) A := by
    unfold compensatedSourceSumFixed
    exact ContDiffAt.sum fun n _ =>
      contDiffAt_const.mul (closedPrimeWeight_contDiffAt hA n)
  exact (hf.congr_of_eventuallyEq
    (compensatedSourceSum_eventually_eq_fixed hA)).contDiffWithinAt

/-- A touching inventory birth retains its signed coefficient but has zero scalar reset. -/
theorem compensated_source_atom_zero_at_birth {A : ℝ} (hA : 0 < A)
    {n : ℕ} (hn : (n : ℝ) = Real.exp (2 * A)) :
    (ArithmeticFunction.vonMangoldt n - 1) * closedPrimeWeight A n = 0 := by
  rw [closedPrimeWeight_zero_at_birth hA hn, mul_zero]

/-- The birth's shape derivative also vanishes by independently proved source regularity. -/
theorem compensated_source_atom_derivative_zero_at_birth {A : ℝ} (hA : 0 < A)
    {n : ℕ} (hn : (n : ℝ) = Real.exp (2 * A)) :
    (ArithmeticFunction.vonMangoldt n - 1) * closedPrimeWeightScaleDerivative A n = 0 := by
  rw [closedPrimeWeightScaleDerivative_zero_at_birth hA hn, mul_zero]

/-- A finite mixed readout retains the complete real compensated coefficient row. -/
theorem compensatedInteraction_mixed_real (A : ℝ) (f g : ComplexL2) :
    (⟪f, compensatedInteraction A g⟫_ℂ).re =
      ∑ n ∈ primePowerInventory (2 * A), compensatedCoefficient n *
        (⟪f, symmetricTranslation (Real.log n) g⟫_ℂ).re := by
  simp only [compensatedInteraction_apply, inner_sum, inner_smul_right,
    Complex.re_sum, Complex.re_ofReal_mul]

/-- The surviving scale-port work is exactly its signed mixed source coefficient.
Both source product-rule terms are retained before self-adjoint symmetry combines them. -/
theorem compensatedScaleDerivative_eq_mixed (A : ℝ) :
    compensatedScaleDerivative A =
      2 * (⟪scaleDerivativeState A,
        compensatedInteraction A (originalSourceState A)⟫_ℂ).re := by
  rw [compensatedInteraction_mixed_real, Finset.mul_sum]
  unfold compensatedScaleDerivative closedPrimeWeightScaleDerivative compensatedCoefficient
  apply Finset.sum_congr rfl
  intro n _
  rw [correlationScaleDerivative_eq_mixed]
  ring

/-- The signed shape derivative remains continuous across all literal integer births. -/
theorem compensatedScaleDerivative_continuousOn :
    ContinuousOn compensatedScaleDerivative (Ioi 0) := by
  apply (compensatedSourceSum_contDiffOn.continuousOn_deriv_of_isOpen isOpen_Ioi le_rfl).congr
  intro A hA
  exact (compensatedSourceSum_hasDerivAt hA).deriv.symm

private theorem uIcc_subset_positive {a b : ℝ} (ha : 0 < a) (hb : 0 < b) :
    uIcc a b ⊆ Ioi 0 := by
  intro A hA
  exact lt_of_lt_of_le (lt_min ha hb) hA.1

/-- Every finite real scale interval has a genuinely integrable signed source slope. -/
theorem compensatedScaleDerivative_intervalIntegrable {a b : ℝ}
    (ha : 0 < a) (hb : 0 < b) :
    IntervalIntegrable compensatedScaleDerivative volume a b :=
  (compensatedScaleDerivative_continuousOn.mono
    (uIcc_subset_positive ha hb)).intervalIntegrable

/-- Exact moving-observation scale law. Cutoff resets contribute zero; the complete
signed shape work remains. Neither phase preservation nor this identity pays it. -/
theorem compensatedSourceSum_scale_flux {a b : ℝ} (ha : 0 < a) (hb : 0 < b) :
    (∫ A in a..b, compensatedScaleDerivative A) =
      compensatedSourceSum b - compensatedSourceSum a :=
  intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun _ hA => compensatedSourceSum_hasDerivAt (uIcc_subset_positive ha hb hA))
    (compensatedScaleDerivative_intervalIntegrable ha hb)

end FormalResearch.RiemannHypothesis.SourceCompensatedFourier
```
