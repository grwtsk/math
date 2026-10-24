# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceGramAudit.Variant3639b577d96e235b13255273b27c235dc06e6434601ab80f51793e5b98e4d475

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `88e593f9f044955b8330864805b5c1380ff2face` · SHA-256 `3639b577d96e235b13255273b27c235dc06e6434601ab80f51793e5b98e4d475`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.FullQuadraticAudit
import FormalResearch.RiemannHypothesis.ArithmeticDirichletGramAudit
import Mathlib.Analysis.InnerProductSpace.GramMatrix
import Mathlib.MeasureTheory.Function.L2Space

/-!
# Actual translated-source Gram matrices and their missing arithmetic budget

The vectors below are the unchanged physical source in real L², translated by
the actual logarithmic prime-power shifts. Gram positivity is unconditional.
It does not make the signed arithmetic scalar a Gram diagonal. The exact square
completion retains the complete quadratic prime-pair term.

AI attribution: Codex authored this module and its proofs.
-/

namespace FormalResearch.RiemannHypothesis.SourceGramAudit

open MeasureTheory
open scoped BigOperators InnerProductSpace
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity PrimePowerPhaseDefect EstimateTailReduction
open FullQuadraticAudit JointPhaseScaling CorrelationSpectralLens
open ArithmeticDirichletGramAudit

noncomputable section

/-- The actual real physical Hilbert space, with Lebesgue measure. -/
abbrev PhysicalHilbert := Lp (α := ℝ) ℝ 2 volume

/-- The physical source translate, with the source convention `v(x-t)`. -/
def translatedTest (A t x : ℝ) : ℝ := normalizedTest explicitSecondDerivative A (x - t)

theorem translated_test_mem_lp (A t : ℝ) (hA : 1 ≤ A) :
    MemLp (translatedTest A t) 2 volume := by
  have hv := (normalizedTest_contDiff A (by linarith)).continuous.memLp_of_hasCompactSupport
    (μ := volume) (p := (2 : ENNReal)) (normalizedTest_hasCompactSupport A (by linarith))
  exact hv.comp_measurePreserving (measurePreserving_sub_right volume t)

/-- A translated copy of the actual source, as a genuine L² vector. -/
def translatedVector (A t : ℝ) (hA : 1 ≤ A) : PhysicalHilbert :=
  (translated_test_mem_lp A t hA).toLp (translatedTest A t)

theorem translated_vector_ae_eq (A t : ℝ) (hA : 1 ≤ A) :
    translatedVector A t hA =ᵐ[volume] translatedTest A t := MemLp.coeFn_toLp _

theorem translated_vector_inner (A s t : ℝ) (hA : 1 ≤ A) :
    ⟪translatedVector A s hA, translatedVector A t hA⟫_ℝ =
      sourceCorrelation explicitSecondDerivative A (t - s) := by
  rw [L2.inner_def]
  calc
    _ = ∫ x, translatedTest A s x * translatedTest A t x := by
      apply integral_congr_ae
      filter_upwards [translated_vector_ae_eq A s hA, translated_vector_ae_eq A t hA]
        with x hs ht
      simp [hs, ht, mul_comm]
    _ = sourceCorrelation explicitSecondDerivative A (t - s) := by
      unfold translatedTest sourceCorrelation
      rw [← integral_sub_right_eq_self (fun x ↦ normalizedTest explicitSecondDerivative A x *
        normalizedTest explicitSecondDerivative A (x - (t - s))) s]
      congr 1
      funext x
      congr 2
      ring

/-- The autocorrelation matrix on any finite family of actual source shifts. -/
def sourceGram {ι : Type*} (A : ℝ) (shift : ι → ℝ) : Matrix ι ι ℝ :=
  fun i j ↦ sourceCorrelation explicitSecondDerivative A (shift j - shift i)

theorem source_gram_eq {ι : Type*} (A : ℝ) (hA : 1 ≤ A) (shift : ι → ℝ) :
    sourceGram A shift = Matrix.gram ℝ (fun i ↦ translatedVector A (shift i) hA) := by
  ext i j
  exact (translated_vector_inner A (shift i) (shift j) hA).symm

theorem source_gram_pos_semidefinite {ι : Type*} [Finite ι]
    (A : ℝ) (hA : 1 ≤ A) (shift : ι → ℝ) : (sourceGram A shift).PosSemidef := by
  rw [source_gram_eq A hA shift]
  exact Matrix.posSemidef_gram ℝ _

/-- The preceding positivity is instantiated on the complete strict RH inventory. -/
theorem strict_prime_gram_pos_semidefinite (A : ℝ) (hA : 1 ≤ A) :
    (sourceGram A (fun n : {n // n ∈ primeIndices A} ↦ Real.log (n : ℕ))).PosSemidef :=
  source_gram_pos_semidefinite A hA _

/-- Every strict prime power is retained, with its native von Mangoldt weight. -/
def primePacket (A : ℝ) (hA : 1 ≤ A) : PhysicalHilbert :=
  ∑ n ∈ primeIndices A,
    primeWeight n • translatedVector A (Real.log n) hA

theorem translated_vector_inner_zero (A : ℝ) (hA : 1 ≤ A) :
    ⟪translatedVector A 0 hA, translatedVector A 0 hA⟫_ℝ = 1 := by
  rw [translated_vector_inner]
  simpa using EstimateCorrelation.actual_correlation_at_zero A hA

theorem source_prime_packet_inner (A : ℝ) (hA : 1 ≤ A) :
    ⟪translatedVector A 0 hA, primePacket A hA⟫_ℝ =
      primePowerContribution explicitSecondDerivative A := by
  simp only [primePacket, inner_sum, inner_smul_right, translated_vector_inner, sub_zero]
  rfl

/-- The prime-pair energy introduced by Cauchy–Schwarz is the complete double sum. -/
theorem prime_packet_norm_sq (A : ℝ) (hA : 1 ≤ A) :
    ‖primePacket A hA‖ ^ 2 =
      ∑ m ∈ primeIndices A,
        ∑ n ∈ primeIndices A,
          primeWeight m * primeWeight n *
            sourceCorrelation explicitSecondDerivative A (Real.log n - Real.log m) := by
  rw [← real_inner_self_eq_norm_sq]
  unfold primePacket
  rw [sum_inner]
  simp only [inner_sum, real_inner_smul_left, real_inner_smul_right,
    translated_vector_inner]
  apply Finset.sum_congr rfl
  intro m hm
  apply Finset.sum_congr rfl
  intro n hn
  ring

/-- The actual second frequency moment decays with scale, rather than merely
remaining bounded. All three immutable bump moments are retained. -/
theorem rescaled_second_moment_le_decay (A u : ℝ) (hA : 1 ≤ A) :
    (u / A) ^ 2 * rescaledDensity A u ≤ secondMomentMajorant u / A ^ 2 := by
  have h2 : 1 ≤ A ^ 2 := one_le_pow₀ hA
  have h4 : A ^ 2 ≤ A ^ 4 := by nlinarith [sq_nonneg (A ^ 2 - 1)]
  have h6 : A ^ 2 ≤ A ^ 6 := by
    nlinarith [mul_le_mul_of_nonneg_left (one_le_pow₀ hA : 1 ≤ A ^ 4) (sq_nonneg A)]
  have hb1 := bump_moment_density_nonneg 1 u
  have hb2 := bump_moment_density_nonneg 2 u
  have hb3 := bump_moment_density_nonneg 3 u
  rw [rescaled_second_moment_eq A u hA]
  calc
    _ ≤ (bumpMomentDensity 1 u / (16 * A ^ 2) +
        bumpMomentDensity 2 u / (2 * A ^ 4) + bumpMomentDensity 3 u / A ^ 6) /
          normalizationFloor := by
      apply div_le_div_of_nonneg_left (by positivity)
        normalization_floor_pos (normalization_floor_le A)
    _ ≤ (bumpMomentDensity 1 u / (16 * A ^ 2) +
        bumpMomentDensity 2 u / (2 * A ^ 2) + bumpMomentDensity 3 u / A ^ 2) /
          normalizationFloor := by
      gcongr
      exact normalization_floor_pos.le
    _ = secondMomentMajorant u / A ^ 2 := by
      unfold secondMomentMajorant
      ring

theorem actual_second_moment_le_decay (A : ℝ) (hA : 1 ≤ A) :
    (∫ ξ, ξ ^ 2 * spectralDensity A ξ) ≤ secondMomentBound / A ^ 2 := by
  rw [spectral_density_second_moment_eq_rescaled A hA]
  have h := integral_mono (rescaled_second_moment_integrable A hA)
    (second_moment_majorant_integrable.div_const (A ^ 2))
    (fun u ↦ rescaled_second_moment_le_decay A u hA)
  simpa [integral_div, secondMomentBound] using h

theorem actual_archimedean_upper_decay (A : ℝ) (hA : 1 ≤ A) :
    archimedeanValue explicitSecondDerivative A ≤
      archimedeanMultiplier 0 + 4 + 2 * secondMomentBound / A ^ 2 := by
  have hi := ((spectralDensity_integrable A hA).const_mul
    (archimedeanMultiplier 0 + 4)).add
      ((spectral_density_second_moment_integrable A hA).const_mul 2)
  have h := integral_mono (actual_archimedeanDensity_integrable A hA) hi
    (fun ξ ↦ show archimedeanMultiplier ξ * spectralDensity A ξ ≤
      (archimedeanMultiplier 0 + 4) * spectralDensity A ξ +
        2 * (ξ ^ 2 * spectralDensity A ξ) by
      nlinarith [mul_le_mul_of_nonneg_right (archimedean_multiplier_upper ξ)
        (spectralDensity_nonneg A ξ)])
  simp only [Pi.add_apply] at h
  rw [integral_add ((spectralDensity_integrable A hA).const_mul _)
    ((spectral_density_second_moment_integrable A hA).const_mul 2), integral_const_mul,
    integral_const_mul, spectralDensity_integral A hA, mul_one] at h
  rw [archimedean_value_eq_density_integral]
  have hMoment := mul_le_mul_of_nonneg_left (actual_second_moment_le_decay A hA)
    (by norm_num : (0 : ℝ) ≤ 2)
  rw [← mul_div_assoc] at hMoment
  linarith

/-- An explicit finite radius beyond which the actual Gamma energy is negative. -/
def gammaNegativityRadius : ℝ :=
  max 1 (2 * secondMomentBound / (-(archimedeanMultiplier 0 + 4)) + 1)

theorem gamma_negativity_radius_ge_one : 1 ≤ gammaNegativityRadius := le_max_left _ _

/-- A source-specific obstruction, independent of the sign of the full form. -/
theorem actual_archimedean_negative (A : ℝ) (hA : gammaNegativityRadius ≤ A) :
    archimedeanValue explicitSecondDerivative A < 0 := by
  have hOne : 1 ≤ A := gamma_negativity_radius_ge_one.trans hA
  have hc := ArithmeticDirichletGramAudit.archimedean_zero_add_four_neg
  have hp : 0 < -(archimedeanMultiplier 0 + 4) := neg_pos.mpr hc
  have hR : 2 * secondMomentBound / (-(archimedeanMultiplier 0 + 4)) + 1 ≤ A :=
    (le_max_right _ _).trans hA
  have hlt : 2 * secondMomentBound / (-(archimedeanMultiplier 0 + 4)) < A := by linarith
  have hm := (div_lt_iff₀ hp).mp hlt
  have hpow : A ≤ A ^ 2 := by nlinarith
  have hprod := mul_le_mul_of_nonneg_right hpow hp.le
  have hdiv : 2 * secondMomentBound / A ^ 2 < -(archimedeanMultiplier 0 + 4) := by
    rw [div_lt_iff₀ (by positivity : 0 < A ^ 2)]
    nlinarith
  have hUpper := actual_archimedean_upper_decay A hOne
  linarith

/-- No positive semidefinite matrix can use the actual Gamma value as any
diagonal at these radii, regardless of its size, entries or chosen prime shifts. -/
theorem no_psd_gamma_diagonal {ι : Type*} (A : ℝ)
    (hA : gammaNegativityRadius ≤ A) (M : Matrix ι ι ℝ) (i : ι)
    (hdiag : M i i = archimedeanValue explicitSecondDerivative A) : ¬M.PosSemidef := by
  intro hM
  have h := hM.diag_nonneg (i := i)
  rw [hdiag] at h
  exact (not_le_of_gt (actual_archimedean_negative A hA)) h

/-- In particular there is no all-scale finite bordered PSD certificate with
the prescribed archimedean diagonal. Additional positive diagonals change this class. -/
theorem no_all_scale_psd_gamma_diagonal {ι : Type*} (i : ι) :
    ¬∃ M : ℝ → Matrix ι ι ℝ, ∀ A, 1 ≤ A →
      (M A).PosSemidef ∧ M A i i = archimedeanValue explicitSecondDerivative A := by
  rintro ⟨M, hM⟩
  obtain ⟨hpos, hdiag⟩ := hM gammaNegativityRadius gamma_negativity_radius_ge_one
  exact no_psd_gamma_diagonal gammaNegativityRadius le_rfl (M gammaNegativityRadius) i hdiag hpos

/-- Exact square completion. The residual arithmetic budget is not discarded. -/
theorem source_quadratic_square_completion (A : ℝ) (hA : 1 ≤ A) :
    sourceQuadraticValue explicitSecondDerivative A =
      ‖translatedVector A 0 hA - primePacket A hA‖ ^ 2 +
        archimedeanValue explicitSecondDerivative A - 1 - ‖primePacket A hA‖ ^ 2 := by
  rw [norm_sub_sq_real, ← real_inner_self_eq_norm_sq (translatedVector A 0 hA),
    translated_vector_inner_zero, source_prime_packet_inner]
  unfold sourceQuadraticValue
  ring

/-- The proved Gamma difference-square integral on the actual source density. -/
def sourceGammaDifferenceMass (A : ℝ) : ℝ :=
  ∫ ξ, (∫ t in Set.Ioi (0 : ℝ), gammaGramIntegrand ξ t) * spectralDensity A ξ

theorem source_gamma_difference_density_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun ξ ↦ (∫ t in Set.Ioi (0 : ℝ), gammaGramIntegrand ξ t) *
      spectralDensity A ξ) := by
  apply ((actual_archimedeanDensity_integrable A hA).sub
    ((spectralDensity_integrable A hA).const_mul (archimedeanMultiplier 0))).congr
  filter_upwards [] with ξ
  rw [← archimedean_difference_eq_gamma_gram_integral]
  change archimedeanMultiplier ξ * spectralDensity A ξ -
    archimedeanMultiplier 0 * spectralDensity A ξ = _
  ring

theorem source_gamma_difference_mass_nonneg (A : ℝ) : 0 ≤ sourceGammaDifferenceMass A := by
  apply integral_nonneg
  intro ξ
  apply mul_nonneg _ (spectralDensity_nonneg A ξ)
  apply integral_nonneg_of_ae
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
  exact gamma_gram_integrand_nonneg ξ t ht

theorem actual_gamma_eq_zero_add_difference_mass (A : ℝ) (hA : 1 ≤ A) :
    archimedeanValue explicitSecondDerivative A =
      archimedeanMultiplier 0 + sourceGammaDifferenceMass A := by
  have hpoint : (fun ξ ↦ (∫ t in Set.Ioi (0 : ℝ), gammaGramIntegrand ξ t) *
      spectralDensity A ξ) =
      (fun ξ ↦ archimedeanMultiplier ξ * spectralDensity A ξ) -
        (fun ξ ↦ archimedeanMultiplier 0 * spectralDensity A ξ) := by
    funext ξ
    rw [← archimedean_difference_eq_gamma_gram_integral]
    simp only [Pi.sub_apply]
    ring
  unfold sourceGammaDifferenceMass
  rw [hpoint]
  change archimedeanValue explicitSecondDerivative A = archimedeanMultiplier 0 +
    ∫ ξ, archimedeanMultiplier ξ * spectralDensity A ξ -
      archimedeanMultiplier 0 * spectralDensity A ξ
  rw [integral_sub (actual_archimedeanDensity_integrable A hA)
    ((spectralDensity_integrable A hA).const_mul _), integral_const_mul,
    spectralDensity_integral A hA, mul_one, archimedean_value_eq_density_integral]
  ring

/-- Both positive sectors are instantiated on the actual source. The entire
strict arithmetic budget remains present; this identity provides no estimate. -/
theorem actual_source_quadratic_eq_scalar_add_positive_masses (A : ℝ) (hA : 1 ≤ A) :
    sourceQuadraticValue explicitSecondDerivative A =
      (archimedeanMultiplier 0 - 2 * totalWeight A) +
        sourceGammaDifferenceMass A + phaseDefectMass A := by
  rw [actual_sourceQuadraticValue_eq_budget_add_phaseDefectMass A hA,
    actual_gamma_eq_zero_add_difference_mass A hA]
  ring

end

end FormalResearch.RiemannHypothesis.SourceGramAudit
```
