# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.ArithmeticDirichletGramAudit.Variant3c34b01a9e361ccf20740d2f6538a0588e174f939af976c49857fce3c86664a5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5a8f813ecc1afdf2e171c9d1d9506c2f3ebda69b` · SHA-256 `3c34b01a9e361ccf20740d2f6538a0588e174f939af976c49857fce3c86664a5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.FullQuadraticObstruction
import Zeta23.GammaFacts.Mu
import Mathlib.Analysis.Complex.ExponentialBounds
import FormalResearch.MathematicalTooling.HalfLinePolynomialLaplace
import Mathlib.MeasureTheory.Integral.DominatedConvergence
/-!
# Exact arithmetic Dirichlet and Gram positivity audit

The actual digamma and complete strict prime-power inventory retain their
normalizations and signs. Positive difference-square terms do not erase the
radius-dependent negative scalar budget. The Gamma increment is a genuinely
integrable positive translation difference-square density. The complete symbol
retains its exact zero-frequency scalar plus the Gamma and ALL-prime-power
difference squares. A positive translation-Gram representation with a uniformly
lower-bounded mass correction cannot represent the full form on the entire
ambient Gamma domain. This obstruction does not exclude source-specific or
cross-scale constructions. No RH estimate or positivity of the source value is
claimed.

AI attribution: Codex authored this module and its proofs.
-/

open FormalResearch.RiemannHypothesis.SourcePairing
open Filter
open scoped BigOperators
namespace FormalResearch.RiemannHypothesis.ArithmeticDirichletGramAudit

/-- Native quarter-line digamma bounds give a strict negative scalar margin. -/
theorem archimedean_zero_add_four_lt_neg_half : archimedeanMultiplier 0 + 4 < -1 / 2 := by
  let u : ℕ → ℝ := fun n ↦ 1 / ((n : ℝ) + 1) -
    ((n : ℝ) + 1 + 1 / 4) / (((n : ℝ) + 1 + 1 / 4) ^ 2 + 0 ^ 2)
  have hu : Summable u := Zeta23.MuFields.summable_re_terms
    (a := 1 / 4) (by norm_num) (by norm_num) 0
  have hterm (n : ℕ) : u n ≤
      1 / ((n : ℝ) + 1) - 1 / ((n : ℝ) + 2) := by
    dsimp [u]
    have hn : 0 ≤ (n : ℝ) := Nat.cast_nonneg n
    norm_num only [zero_pow (by norm_num : 2 ≠ 0), add_zero]
    apply sub_le_sub_left
    apply (div_le_div_iff₀ (by positivity) (by positivity)).2
    nlinarith
  have hfinite (N : ℕ) : ∑ n ∈ Finset.range N, u n ≤ 1 := by
    calc
      _ ≤ ∑ n ∈ Finset.range N,
          (1 / ((n : ℝ) + 1) - 1 / ((n : ℝ) + 2)) :=
        Finset.sum_le_sum fun n _ ↦ hterm n
      _ = 1 - 1 / ((N : ℝ) + 1) := by
        simpa only [Nat.cast_add, Nat.cast_zero, Nat.cast_one, zero_add, one_div_one,
          add_assoc, one_add_one_eq_two] using
          Finset.sum_range_sub' (fun n : ℕ ↦ 1 / ((n : ℝ) + 1)) N
      _ ≤ 1 := by
        have hp : 0 ≤ 1 / ((N : ℝ) + 1) := by positivity
        linarith
  have hsum : ∑' n : ℕ, u n ≤ 1 :=
    le_of_tendsto hu.hasSum.tendsto_sum_nat (Eventually.of_forall hfinite)
  have hd := Zeta23.MuFields.re_digamma_vertical (a := 1 / 4)
    (by norm_num) (by norm_num) 0
  have hpi : 1 < Real.log Real.pi :=
    (Real.lt_log_iff_exp_lt Real.pi_pos).mpr (Real.exp_one_lt_three.trans Real.pi_gt_three)
  norm_num at hd
  have hdu : (Complex.digamma (1 / 4)).re =
      -Real.eulerMascheroniConstant - 4 + ∑' n, u n := by
    simpa [u] using hd
  simp only [archimedeanMultiplier, Complex.ofReal_zero, mul_zero, zero_div, add_zero]
  linarith [Real.one_half_lt_eulerMascheroniConstant]
/-- The actual zero-frequency Gamma constant plus the coarse constant four is negative. -/
theorem archimedean_zero_add_four_neg : archimedeanMultiplier 0 + 4 < 0 :=
  archimedean_zero_add_four_lt_neg_half.trans (by norm_num)

open MeasureTheory Set
open FormalResearch.MathematicalTooling.HalfLinePolynomialLaplace
open FormalResearch.Analysis.ReciprocalKernel
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open BridgeAdmissibility AdmissionSource
open scoped BigOperators

theorem exponential_cosine_laplace_integrable (a b : ℝ) (ha : 0 < a) :
    IntegrableOn (fun t : ℝ ↦ Real.exp (-a * t) * Real.cos (b * t)) (Ioi 0) := by
  have h := half_line_polynomial_laplace_integrable 0
    ((a : ℂ) + (b : ℂ) * Complex.I) (by simpa using ha)
  have he (t : ℝ) : (Complex.exp (-((a : ℂ) + (b : ℂ) * Complex.I) * (t : ℂ))).re =
      Real.exp (-a * t) * Real.cos (b * t) := by
    rw [Complex.exp_re]
    simp
  simp only [pow_zero, one_mul] at h
  exact h.re.congr (Filter.Eventually.of_forall he)

theorem exponential_cosine_laplace_integral (a b : ℝ) (ha : 0 < a) :
    (∫ t in Ioi (0 : ℝ), Real.exp (-a * t) * Real.cos (b * t)) = a / (a ^ 2 + b ^ 2) := by
  have h := half_line_polynomial_laplace_integrable 0
    ((a : ℂ) + (b : ℂ) * Complex.I) (by simpa using ha)
  simp only [pow_zero, one_mul] at h
  have hi := half_line_polynomial_laplace_integral 0
    ((a : ℂ) + (b : ℂ) * Complex.I) (by simpa using ha)
  simp only [pow_zero, one_mul, Nat.factorial_zero, Nat.cast_one, zero_add, pow_one] at hi
  have he (t : ℝ) : (Complex.exp (-((a : ℂ) + (b : ℂ) * Complex.I) * (t : ℂ))).re =
      Real.exp (-a * t) * Real.cos (b * t) := by
    rw [Complex.exp_re]
    simp
  calc
    _ = ∫ t in Ioi (0 : ℝ), (Complex.exp
        (-((a : ℂ) + (b : ℂ) * Complex.I) * (t : ℂ))).re := by
      exact integral_congr_ae (Filter.Eventually.of_forall fun t ↦ (he t).symm)
    _ = (∫ t in Ioi (0 : ℝ), Complex.exp
        (-((a : ℂ) + (b : ℂ) * Complex.I) * (t : ℂ))).re := integral_re h
    _ = _ := by rw [hi]; simp [Complex.normSq_apply, pow_two]

theorem reciprocal_kernel_difference_integrable (a b : ℝ) (ha : 0 < a) :
    IntegrableOn (fun t : ℝ ↦ Real.exp (-a * t) * (1 - Real.cos (b * t))) (Ioi 0) := by
  have h0 := exponential_cosine_laplace_integrable a 0 ha
  simp only [zero_mul, Real.cos_zero, mul_one] at h0
  apply (h0.sub (exponential_cosine_laplace_integrable a b ha)).congr
  filter_upwards [] with t
  change Real.exp (-a * t) - Real.exp (-a * t) * Real.cos (b * t) = _
  ring

theorem reciprocal_kernel_difference_integral (a b : ℝ) (ha : 0 < a) :
    (∫ t in Ioi (0 : ℝ), Real.exp (-a * t) * (1 - Real.cos (b * t))) = kernel b a := by
  have he : (fun t : ℝ ↦ Real.exp (-a * t) * (1 - Real.cos (b * t))) =
      (fun t : ℝ ↦ Real.exp (-a * t) * Real.cos (0 * t) -
        Real.exp (-a * t) * Real.cos (b * t)) := by
    funext t
    simp only [zero_mul, Real.cos_zero, mul_one]
    ring
  rw [he, integral_sub (exponential_cosine_laplace_integrable a 0 ha)
    (exponential_cosine_laplace_integrable a b ha),
    exponential_cosine_laplace_integral a 0 ha, exponential_cosine_laplace_integral a b ha]
  unfold kernel
  field_simp
  ring
open FormalResearch.RiemannHypothesis.MultiplicativePhase

/-- A nonnegative Laplace atom of the actual quarter-line digamma increment. -/
noncomputable def gammaDifferenceAtom (ξ : ℝ) (n : ℕ) (t : ℝ) : ℝ :=
  Real.exp (-((n : ℝ) + 1 / 4) * t) * (1 - Real.cos ((ξ / 2) * t))

/-- The positive quarter-line digamma translation density on the positive half-line. -/
noncomputable def gammaDirichletDensity (t : ℝ) : ℝ :=
  Real.exp (-t / 4) / (1 - Real.exp (-t))

/-- The exact Gamma difference-square integrand using the existing phase character. -/
noncomputable def gammaGramIntegrand (ξ t : ℝ) : ℝ :=
  gammaDirichletDensity t / 2 * Complex.normSq (1 - chi ξ (Real.exp (t / 2)))

theorem gamma_gram_integrand_eq_cosine (ξ t : ℝ) :
    gammaGramIntegrand ξ t = gammaDirichletDensity t * (1 - Real.cos ((ξ / 2) * t)) := by
  unfold gammaGramIntegrand
  rw [normSq_one_sub_chi, Real.log_exp]
  have he : ξ * (t / 2) = (ξ / 2) * t := by ring
  rw [he]
  ring

theorem gamma_difference_atom_nonneg (ξ : ℝ) (n : ℕ) (t : ℝ) :
    0 ≤ gammaDifferenceAtom ξ n t := by
  unfold gammaDifferenceAtom
  exact mul_nonneg (Real.exp_nonneg _) (sub_nonneg.mpr (Real.cos_le_one _))

theorem gamma_difference_atom_integrable (ξ : ℝ) (n : ℕ) :
    IntegrableOn (gammaDifferenceAtom ξ n) (Ioi 0) :=
  reciprocal_kernel_difference_integrable ((n : ℝ) + 1 / 4) (ξ / 2) (by positivity)

theorem gamma_difference_atom_integral (ξ : ℝ) (n : ℕ) :
    (∫ t in Ioi (0 : ℝ), gammaDifferenceAtom ξ n t) = kernel (ξ / 2) ((n : ℝ) + 1 / 4) :=
  reciprocal_kernel_difference_integral ((n : ℝ) + 1 / 4) (ξ / 2) (by positivity)

theorem gamma_difference_atom_eq_geometric (ξ : ℝ) (n : ℕ) (t : ℝ) :
    gammaDifferenceAtom ξ n t =
      Real.exp (-t / 4) * Real.exp (-t) ^ n * (1 - Real.cos ((ξ / 2) * t)) := by
  unfold gammaDifferenceAtom
  rw [← Real.exp_nat_mul, ← Real.exp_add]
  congr 2
  ring

theorem gamma_difference_atoms_summable (ξ t : ℝ) (ht : 0 < t) :
    Summable (fun n : ℕ ↦ gammaDifferenceAtom ξ n t) := by
  simp_rw [gamma_difference_atom_eq_geometric]
  exact ((summable_geometric_of_lt_one (Real.exp_nonneg (-t))
    (Real.exp_lt_one_iff.mpr (by linarith))).mul_left _).mul_right _

theorem gamma_difference_atoms_tsum (ξ t : ℝ) (ht : 0 < t) :
    (∑' n : ℕ, gammaDifferenceAtom ξ n t) = gammaGramIntegrand ξ t := by
  simp_rw [gamma_difference_atom_eq_geometric]
  rw [tsum_mul_right, tsum_mul_left,
    tsum_geometric_of_lt_one (Real.exp_nonneg (-t)) (Real.exp_lt_one_iff.mpr (by linarith)),
    gamma_gram_integrand_eq_cosine]
  unfold gammaDirichletDensity
  ring

theorem gamma_gram_integrand_nonneg (ξ t : ℝ) (ht : 0 < t) :
    0 ≤ gammaGramIntegrand ξ t := by
  rw [gamma_gram_integrand_eq_cosine]
  unfold gammaDirichletDensity
  exact mul_nonneg (div_nonneg (Real.exp_nonneg _)
    (sub_nonneg.mpr (Real.exp_lt_one_iff.mpr (by linarith)).le))
      (sub_nonneg.mpr (Real.cos_le_one _))

theorem gamma_atom_integral_norms_summable (ξ : ℝ) :
    Summable (fun n : ℕ ↦ ∫ t in Ioi (0 : ℝ), ‖gammaDifferenceAtom ξ n t‖) := by
  simp_rw [Real.norm_eq_abs, abs_of_nonneg (gamma_difference_atom_nonneg _ _ _),
    gamma_difference_atom_integral]
  exact kernel_summable _ _ (by norm_num)

theorem gamma_gram_integrand_integrable (ξ : ℝ) :
    IntegrableOn (gammaGramIntegrand ξ) (Ioi 0) := by
  have hm : AEStronglyMeasurable (gammaGramIntegrand ξ) (volume.restrict (Ioi 0)) := by
    change AEStronglyMeasurable (fun t ↦ gammaGramIntegrand ξ t) _
    simp_rw [gamma_gram_integrand_eq_cosine]
    unfold gammaDirichletDensity
    fun_prop
  have hL : (∫⁻ t in Ioi (0 : ℝ), ENNReal.ofReal (gammaGramIntegrand ξ t)) =
      ENNReal.ofReal (∑' n : ℕ, kernel (ξ / 2) ((n : ℝ) + 1 / 4)) := by
    calc
      _ = ∫⁻ t in Ioi (0 : ℝ), ∑' n : ℕ, ENNReal.ofReal (gammaDifferenceAtom ξ n t) := by
        apply lintegral_congr_ae
        filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
        rw [← gamma_difference_atoms_tsum ξ t ht,
          ENNReal.ofReal_tsum_of_nonneg (gamma_difference_atom_nonneg ξ · t)
            (gamma_difference_atoms_summable ξ t ht)]
      _ = ∑' n : ℕ, ∫⁻ t in Ioi (0 : ℝ),
          ENNReal.ofReal (gammaDifferenceAtom ξ n t) := by
        apply lintegral_tsum
        intro n
        unfold gammaDifferenceAtom
        fun_prop
      _ = ∑' n : ℕ, ENNReal.ofReal (kernel (ξ / 2) ((n : ℝ) + 1 / 4)) := by
        apply tsum_congr
        intro n
        rw [← ofReal_integral_eq_lintegral_ofReal (gamma_difference_atom_integrable ξ n)
          (Filter.Eventually.of_forall (gamma_difference_atom_nonneg ξ n)),
          gamma_difference_atom_integral]
      _ = _ := (ENNReal.ofReal_tsum_of_nonneg (fun n ↦ kernel_nonneg _ _ (by positivity))
        (kernel_summable _ _ (by norm_num))).symm
  refine ⟨hm, (hasFiniteIntegral_iff_ofReal ?_).mpr ?_⟩
  · filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    exact gamma_gram_integrand_nonneg ξ t ht
  · rw [hL]
    exact ENNReal.ofReal_lt_top

theorem archimedean_difference_eq_gamma_gram_integral (ξ : ℝ) :
    archimedeanMultiplier ξ - archimedeanMultiplier 0 =
      ∫ t in Ioi (0 : ℝ), gammaGramIntegrand ξ t := by
  have h := integral_tsum_of_summable_integral_norm
    (gamma_difference_atom_integrable ξ) (gamma_atom_integral_norms_summable ξ)
  have hp := (AdmissionSource.quarter_series ξ).tsum_eq
  have hc : archimedeanMultiplier 0 = -archimedeanConstant := by
    simp [archimedeanMultiplier, archimedeanConstant]
  rw [hc]
  rw [show archimedeanMultiplier ξ - -archimedeanConstant =
    archimedeanMultiplier ξ + archimedeanConstant by ring, ← hp]
  simp_rw [gamma_difference_atom_integral] at h
  rw [h]
  apply integral_congr_ae
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
  exact gamma_difference_atoms_tsum ξ t ht


open PrimePowerPhaseDefect

/-- The complete strict source multiplier retains its negative scalar budget and both
positive difference-square pieces, without a lower-inventory substitution. -/
theorem full_symbol_eq_scalar_add_gamma_gram_add_prime_power_defect (A ξ : ℝ) :
    spectralMultiplier A ξ = spectralMultiplier A 0 +
      (∫ t in Ioi (0 : ℝ), gammaGramIntegrand ξ t) + phaseDefect A ξ := by
  rw [spectralMultiplier_eq_budget_add_defect, spectralMultiplier_zero_frequency,
    ← archimedean_difference_eq_gamma_gram_integral]
  ring

/-- Zero frequency is the pointwise minimum of each complete source multiplier. -/
theorem full_symbol_zero_le (A ξ : ℝ) : spectralMultiplier A 0 ≤ spectralMultiplier A ξ := by
  rw [full_symbol_eq_scalar_add_gamma_gram_add_prime_power_defect A ξ]
  have hi : 0 ≤ ∫ t in Ioi (0 : ℝ), gammaGramIntegrand ξ t := by
    apply integral_nonneg_of_ae
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    exact gamma_gram_integrand_nonneg ξ t ht
  linarith [phaseDefect_nonneg A ξ]
open MeasureTheory
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open PrimePowerPhaseDefect
open FullQuadraticOperator
open MultiplicativePhase

/-- A positive measure gives a nonnegative translation difference-square Fourier energy. -/
noncomputable def translationGramForm (μ : Measure ℝ) (f : Hilbert) : ℝ :=
  ∫ y, (∫ ξ, Complex.normSq ((chi ξ (Real.exp y) - 1) * f ξ)) ∂μ

theorem translation_gram_form_nonneg (μ : Measure ℝ) (f : Hilbert) :
    0 ≤ translationGramForm μ f :=
  integral_nonneg (fun _ ↦ integral_nonneg (fun _ ↦ Complex.normSq_nonneg _))

/-- No positive translation energy with a correction bounded below by one radius-independent
multiple of Hilbert mass can represent the full form on its entire Gamma domain. -/
theorem no_uniform_translation_gram_certificate :
    ¬ ∃ (K : ℝ) (μ : ℝ → Measure ℝ) (E : ℝ → Hilbert → ℝ),
      (∀ A, 1 ≤ A → ∀ f, GammaFormDomain f →
        -K * ‖f‖ ^ 2 ≤ E A f) ∧
      (∀ A, 1 ≤ A → ∀ f, GammaFormDomain f →
        fullQuadraticForm A f = translationGramForm (μ A) f + E A f) := by
  rintro ⟨K, μ, E, hE, he⟩
  obtain ⟨A, hA, f, hnorm, hdom, hneg⟩ :=
    FullQuadraticObstruction.full_form_unit_values_unbounded_below (-K)
  have hc := hE A hA f hdom
  rw [hnorm] at hc
  have hp := translation_gram_form_nonneg (μ A) f
  rw [he A hA f hdom] at hneg
  nlinarith


end FormalResearch.RiemannHypothesis.ArithmeticDirichletGramAudit
```
