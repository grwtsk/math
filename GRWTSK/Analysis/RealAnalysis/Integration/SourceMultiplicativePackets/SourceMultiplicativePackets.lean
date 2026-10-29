-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.SourceDensity.Variant9a6bbdd3f75f151f1d1379e5b2e606fe960c3f0bb72b775c4c17df9ab46b0c48","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9a6bbdd3f75f151f1d1379e5b2e606fe960c3f0bb72b775c4c17df9ab46b0c48","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.SourceDensity.Variant9a6bbdd3f75f151f1d1379e5b2e606fe960c3f0bb72b775c4c17df9ab46b0c48","mathematical_subject":"Analysis.Integration","original_sha256":"9a6bbdd3f75f151f1d1379e5b2e606fe960c3f0bb72b775c4c17df9ab46b0c48","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/FormalResearch/RiemannHypothesis/SourceMultiplicativePackets.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceSignedHeat

/-!
# Exact signed multiplicative packets of the actual source

The source symbol retains the entire closed integer inventory and its signed
coefficients. Finite products become exact product/ratio packets before any
absolute estimate. The relative support boundary includes its touching endpoint.
These identities provide no uniform signed arithmetic bound.

Research direction: grwtsk contributors.
Native calculation and formal implementation: OpenAI Codex, 7 October 2026.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.SourceDensity.Variant9a6bbdd3f75f151f1d1379e5b2e606fe960c3f0bb72b775c4c17df9ab46b0c48

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.SourceMultiplicativePackets

open MeasureTheory
open scoped FourierTransform
open SourceCompensatedFourier SourceDualFourierJump SourcePrimeMomentScale SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open SourcePlancherel Realization CorrelationRegularity PrimePowerDescent

/-- The genuine standard-frequency source energy, with total mass one. -/
def sourceDensity (A ξ : ℝ) : ℝ := Complex.normSq (standardSourceTransform A ξ)

theorem sourceDensity_integrable {A : ℝ} (hA : 1 ≤ A) :
    Integrable (sourceDensity A) :=
  standardFourier_square_integrable A hA

theorem sourceDensity_mass {A : ℝ} (hA : 1 ≤ A) :
    (∫ ξ : ℝ, sourceDensity A ξ) = 1 :=
  actual_standard_fourier_mass A hA

theorem cosine_sourceDensity_integrable {A : ℝ} (hA : 1 ≤ A) (s : ℝ) :
    Integrable (fun ξ : ℝ => Real.cos (2 * Real.pi * ξ * s) * sourceDensity A ξ) := by
  apply (sourceDensity_integrable hA).bdd_mul
    (by fun_prop) (c := 1)
  filter_upwards [] with ξ
  simpa only [Real.norm_eq_abs] using Real.abs_cos_le_one (2 * Real.pi * ξ * s)

/-- Fourier inversion at every shift, rather than only at zero, gives the actual
cosine observation. Its normalization is the standard-frequency density. -/
theorem sourceCorrelation_eq_cosine_integral {A : ℝ} (hA : 1 ≤ A) (s : ℝ) :
    sourceCorrelation explicitSecondDerivative A s =
      ∫ ξ : ℝ, Real.cos (2 * Real.pi * ξ * s) * sourceDensity A ξ := by
  have hp : 0 < A := by linarith
  have hc : Integrable (fun t : ℝ =>
      (sourceCorrelation explicitSecondDerivative A t : ℂ)) :=
    Complex.ofRealCLM.integrable_comp (sourceCorrelation_integrable A hp)
  have heq : 𝓕 (fun t : ℝ =>
      (sourceCorrelation explicitSecondDerivative A t : ℂ)) =
        fun ξ => (sourceDensity A ξ : ℂ) := funext (fourier_correlation A hA)
  have hfc : Integrable (𝓕 (fun t : ℝ =>
      (sourceCorrelation explicitSecondDerivative A t : ℂ))) := by
    rw [heq]
    exact Complex.ofRealCLM.integrable_comp (sourceDensity_integrable hA)
  have hi := hc.fourierInv_fourier_eq hfc
    (Complex.continuous_ofReal.continuousAt.comp
      (sourceCorrelation_contDiff A hp).continuous.continuousAt :
        ContinuousAt (fun t : ℝ =>
          (sourceCorrelation explicitSecondDerivative A t : ℂ)) s)
  rw [Real.fourierInv_eq_fourier_neg, Real.fourier_real_eq_integral_exp_smul,
    heq] at hi
  have hint : Integrable (fun ξ : ℝ =>
      Complex.exp (((-2 * Real.pi * ξ * -s : ℝ) : ℂ) * Complex.I) *
        (sourceDensity A ξ : ℂ)) := by
    apply (Complex.ofRealCLM.integrable_comp (sourceDensity_integrable hA)).bdd_mul
      (by fun_prop) (c := 1)
    filter_upwards [] with ξ
    simp [Complex.norm_exp]
  have hir : (∫ ξ : ℝ, (Complex.exp
      (((-2 * Real.pi * ξ * -s : ℝ) : ℂ) * Complex.I) *
        (sourceDensity A ξ : ℂ)).re) = sourceCorrelation explicitSecondDerivative A s := by
    calc
      _ = (∫ ξ : ℝ, Complex.exp
          (((-2 * Real.pi * ξ * -s : ℝ) : ℂ) * Complex.I) *
            (sourceDensity A ξ : ℂ)).re := by
              simpa only [RCLike.re_eq_complex_re] using integral_re hint
      _ = _ := by simpa only [smul_eq_mul, Complex.ofReal_re] using congrArg Complex.re hi
  simp only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im,
    mul_zero, sub_zero, Complex.exp_ofReal_mul_I_re] at hir
  have harg : ∀ ξ : ℝ, -2 * Real.pi * ξ * -s = 2 * Real.pi * ξ * s := by
    intro ξ
    ring
  simpa only [harg] using hir.symm

/-- Scale-relative multiplicative separation of positive real labels. -/
def multiplicativeDistance (A u v : ℝ) : ℝ := |Real.log (u / v)| / (2 * A)

theorem multiplicativeDistance_nonneg {A : ℝ} (hA : 0 < A) (u v : ℝ) :
    0 ≤ multiplicativeDistance A u v := div_nonneg (abs_nonneg _) (by positivity)

theorem multiplicativeDistance_self {A u : ℝ} (hu : 0 < u) :
    multiplicativeDistance A u u = 0 := by simp [multiplicativeDistance, hu.ne']

theorem multiplicativeDistance_comm (A : ℝ) {u v : ℝ} (hu : 0 < u) (hv : 0 < v) :
    multiplicativeDistance A u v = multiplicativeDistance A v u := by
  simp only [multiplicativeDistance, Real.log_div hu.ne' hv.ne',
    Real.log_div hv.ne' hu.ne', abs_sub_comm]

theorem multiplicativeDistance_triangle {A u v w : ℝ} (hA : 0 < A)
    (hu : 0 < u) (hv : 0 < v) (hw : 0 < w) :
    multiplicativeDistance A u w ≤
      multiplicativeDistance A u v + multiplicativeDistance A v w := by
  unfold multiplicativeDistance
  rw [Real.log_div hu.ne' hw.ne', Real.log_div hu.ne' hv.ne',
    Real.log_div hv.ne' hw.ne', ← add_div]
  exact div_le_div_of_nonneg_right (abs_sub_le _ _ _) (by positivity)

theorem sourceCorrelation_abs (A s : ℝ) :
    sourceCorrelation explicitSecondDerivative A |s| =
      sourceCorrelation explicitSecondDerivative A s := by
  rcases le_total 0 s with hs | hs
  · rw [abs_of_nonneg hs]
  · rw [abs_of_nonpos hs, sourceCorrelation_even]

/-- The complete signed profile, rather than membership in its support, is read. -/
theorem sourceCorrelation_eq_distance {A : ℝ} (hA : 0 < A) (u v : ℝ) :
    sourceCorrelation explicitSecondDerivative A (Real.log (u / v)) =
      sourceCorrelation explicitSecondDerivative A (2 * A * multiplicativeDistance A u v) := by
  have hz : 2 * A ≠ 0 := by positivity
  rw [multiplicativeDistance, mul_div_cancel₀ _ hz, sourceCorrelation_abs]

/-- The actual source vanishes already at the touching boundary, as well as beyond it. -/
theorem sourceCorrelation_eq_zero_of_one_le_distance {A : ℝ} (hA : 0 < A)
    (u v : ℝ) (hd : 1 ≤ multiplicativeDistance A u v) :
    sourceCorrelation explicitSecondDerivative A (Real.log (u / v)) = 0 := by
  apply sourceCorrelation_eq_zero_of_two_mul_le_abs A _ hA
  simpa only [one_mul] using
    (le_div_iff₀ (by positivity : 0 < 2 * A)).mp hd

theorem sourceCorrelation_eq_zero_of_one_lt_distance {A : ℝ} (hA : 0 < A)
    (u v : ℝ) (hd : 1 < multiplicativeDistance A u v) :
    sourceCorrelation explicitSecondDerivative A (Real.log (u / v)) = 0 :=
  sourceCorrelation_eq_zero_of_one_le_distance hA u v hd.le

/-- The elementary three-factor product identity preserves all four signs. -/
theorem cosine_cubic_product (x y z : ℝ) :
    Real.cos x * Real.cos y * Real.cos z = (1 / 4 : ℝ) *
      (Real.cos (x + y + z) + Real.cos (x + y - z) +
        Real.cos (x - y + z) + Real.cos (-x + y + z)) := by
  simp only [Real.cos_add, Real.cos_sub, Real.cos_neg, Real.sin_add,
    Real.sin_sub, Real.sin_neg]
  ring

/-- All three factors use the same literal source; no separate sector filtering
has removed their interactions. -/
theorem cosine_cubic_source_integral {A : ℝ} (hA : 1 ≤ A) (s t u : ℝ) :
    (∫ ξ : ℝ, (Real.cos (2 * Real.pi * ξ * s) *
      Real.cos (2 * Real.pi * ξ * t) * Real.cos (2 * Real.pi * ξ * u)) *
        sourceDensity A ξ) = (1 / 4 : ℝ) *
          (sourceCorrelation explicitSecondDerivative A (s + t + u) +
            sourceCorrelation explicitSecondDerivative A (s + t - u) +
            sourceCorrelation explicitSecondDerivative A (s - t + u) +
            sourceCorrelation explicitSecondDerivative A (-s + t + u)) := by
  have he : (fun ξ : ℝ => (Real.cos (2 * Real.pi * ξ * s) *
      Real.cos (2 * Real.pi * ξ * t) * Real.cos (2 * Real.pi * ξ * u)) *
        sourceDensity A ξ) =
      fun ξ => (1 / 4 : ℝ) *
        (Real.cos (2 * Real.pi * ξ * (s + t + u)) * sourceDensity A ξ +
          Real.cos (2 * Real.pi * ξ * (s + t - u)) * sourceDensity A ξ +
          Real.cos (2 * Real.pi * ξ * (s - t + u)) * sourceDensity A ξ +
          Real.cos (2 * Real.pi * ξ * (-s + t + u)) * sourceDensity A ξ) := by
    funext ξ
    rw [cosine_cubic_product]
    have h1 : 2 * Real.pi * ξ * s + 2 * Real.pi * ξ * t + 2 * Real.pi * ξ * u =
      2 * Real.pi * ξ * (s + t + u) := by ring
    have h2 : 2 * Real.pi * ξ * s + 2 * Real.pi * ξ * t - 2 * Real.pi * ξ * u =
      2 * Real.pi * ξ * (s + t - u) := by ring
    have h3 : 2 * Real.pi * ξ * s - 2 * Real.pi * ξ * t + 2 * Real.pi * ξ * u =
      2 * Real.pi * ξ * (s - t + u) := by ring
    have h4 : -(2 * Real.pi * ξ * s) + 2 * Real.pi * ξ * t + 2 * Real.pi * ξ * u =
      2 * Real.pi * ξ * (-s + t + u) := by ring
    rw [h1, h2, h3, h4]
    ring
  have hi1 := cosine_sourceDensity_integrable hA (s + t + u)
  have hi2 := cosine_sourceDensity_integrable hA (s + t - u)
  have hi3 := cosine_sourceDensity_integrable hA (s - t + u)
  have hi4 := cosine_sourceDensity_integrable hA (-s + t + u)
  rw [he, integral_const_mul]
  have hadd4 := integral_add ((hi1.add hi2).add hi3) hi4
  have hadd3 := integral_add (hi1.add hi2) hi3
  have hadd2 := integral_add hi1 hi2
  simp only [Pi.add_apply] at hadd4 hadd3 hadd2
  rw [hadd4, hadd3, hadd2]
  rw [← sourceCorrelation_eq_cosine_integral hA, ← sourceCorrelation_eq_cosine_integral hA,
    ← sourceCorrelation_eq_cosine_integral hA, ← sourceCorrelation_eq_cosine_integral hA]

private theorem sum_cube {ι : Type*} (S : Finset ι) (f : ι → ℝ) :
    (∑ n ∈ S, f n) ^ 3 = ∑ n ∈ S, ∑ m ∈ S, ∑ r ∈ S, f n * f m * f r := by
  rw [show (3 : ℕ) = 2 + 1 by rfl, pow_succ, pow_two]
  simp only [Finset.mul_sum, mul_comm, mul_left_comm]

/-- The cubic heat observation at time zero for the complete original inventory. -/
def cubicSourceMoment (A : ℝ) : ℝ :=
  ∫ ξ : ℝ, compensatedFourierSymbol A ξ ^ 3 * sourceDensity A ξ

/-- The exact cubic packet expansion is source-specialized and retains all
prime powers, negative composite weights, and cross terms. -/
theorem cubicSourceMoment_eq_packets {A : ℝ} (hA : 1 ≤ A) :
    cubicSourceMoment A = (1 / 4 : ℝ) *
      ∑ n ∈ primePowerInventory (2 * A),
      ∑ m ∈ primePowerInventory (2 * A),
      ∑ r ∈ primePowerInventory (2 * A),
        compensatedCoefficient n * compensatedCoefficient m * compensatedCoefficient r *
          (sourceCorrelation explicitSecondDerivative A (Real.log n + Real.log m + Real.log r) +
            sourceCorrelation explicitSecondDerivative A (Real.log n + Real.log m - Real.log r) +
            sourceCorrelation explicitSecondDerivative A (Real.log n - Real.log m + Real.log r) +
            sourceCorrelation explicitSecondDerivative A
              (-Real.log n + Real.log m + Real.log r)) := by
  let S := primePowerInventory (2 * A)
  let term : ℕ → ℕ → ℕ → ℝ → ℝ := fun n m r ξ =>
    compensatedCoefficient n * compensatedCoefficient m * compensatedCoefficient r *
      ((Real.cos (2 * Real.pi * ξ * Real.log n) *
        Real.cos (2 * Real.pi * ξ * Real.log m) *
        Real.cos (2 * Real.pi * ξ * Real.log r)) * sourceDensity A ξ)
  have hint : ∀ n m r, Integrable (term n m r) := by
    intro n m r
    dsimp only [term]
    apply Integrable.const_mul
    apply (sourceDensity_integrable hA).bdd_mul (by fun_prop) (c := 1)
    filter_upwards [] with ξ
    simp only [Real.norm_eq_abs, abs_mul]
    calc
      _ ≤ 1 * 1 * 1 := mul_le_mul
        (mul_le_mul (Real.abs_cos_le_one _) (Real.abs_cos_le_one _)
          (abs_nonneg _) (by norm_num)) (Real.abs_cos_le_one _)
        (abs_nonneg _) (by norm_num)
      _ = 1 := by norm_num
  have he : (fun ξ : ℝ => compensatedFourierSymbol A ξ ^ 3 * sourceDensity A ξ) =
      fun ξ => ∑ n ∈ S, ∑ m ∈ S, ∑ r ∈ S, term n m r ξ := by
    funext ξ
    rw [compensatedFourierSymbol, sum_cube]
    simp only [Finset.sum_mul]
    apply Finset.sum_congr rfl
    intro n _
    apply Finset.sum_congr rfl
    intro m _
    apply Finset.sum_congr rfl
    intro r _
    dsimp only [term]
    ring
  unfold cubicSourceMoment
  rw [he]
  rw [integral_finsetSum S (fun n _ =>
    integrable_finsetSum S (fun m _ => integrable_finsetSum S (fun r _ => hint n m r)))]
  simp_rw [integral_finsetSum S (fun m _ =>
    integrable_finsetSum S (fun r _ => hint _ m r))]
  simp_rw [integral_finsetSum S (fun r _ => hint _ _ r)]
  simp_rw [term, integral_const_mul, cosine_cubic_source_integral hA]
  simp only [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n _
  apply Finset.sum_congr rfl
  intro m _
  apply Finset.sum_congr rfl
  intro r _
  ring

/-- Exact fiber grouping, with no positivity assumption on the coefficients.
Choosing rational keys aggregates equal ratios by equality in `ℚ`. -/
theorem sum_grouped_by_key {ι κ : Type*} [DecidableEq κ] (s : Finset ι)
    (key : ι → κ) (weight : ι → ℝ) (response : κ → ℝ) :
    (∑ i ∈ s, weight i * response (key i)) =
      ∑ r ∈ s.image key, (∑ i ∈ s with key i = r, weight i) * response r := by
  classical
  rw [← Finset.sum_fiberwise_of_maps_to (s := s) (t := s.image key)
    (g := key) (by intro i hi; exact Finset.mem_image_of_mem key hi)
    (fun i => weight i * response (key i))]
  apply Finset.sum_congr rfl
  intro r _
  rw [Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro i hi
  rw [(Finset.mem_filter.mp hi).2]

/-- Four exact rational keys for the cubic product-to-sum identity. Rational
arithmetic reduces equal fractions canonically; logarithmic rounding is unused. -/
def cubicRatioKey (n m r : ℕ) (e : Fin 4) : ℚ :=
  if e = 0 then (n : ℚ) * m * r
  else if e = 1 then (n : ℚ) * m / r
  else if e = 2 then (n : ℚ) * r / m
  else (m : ℚ) * r / n

/-- Exact logarithmic coordinates of the rational packet keys. -/
theorem cubic_ratio_response (A : ℝ) {n m r : ℕ}
    (hn : 0 < n) (hm : 0 < m) (hr : 0 < r) :
    (∑ e : Fin 4, sourceCorrelation explicitSecondDerivative A
      (Real.log (cubicRatioKey n m r e : ℝ))) =
        sourceCorrelation explicitSecondDerivative A (Real.log n + Real.log m + Real.log r) +
        sourceCorrelation explicitSecondDerivative A (Real.log n + Real.log m - Real.log r) +
        sourceCorrelation explicitSecondDerivative A (Real.log n - Real.log m + Real.log r) +
        sourceCorrelation explicitSecondDerivative A (-Real.log n + Real.log m + Real.log r) := by
  have hn0 : (n : ℝ) ≠ 0 := by positivity
  have hm0 : (m : ℝ) ≠ 0 := by positivity
  have hr0 : (r : ℝ) ≠ 0 := by positivity
  have h10 : (1 : Fin 4) ≠ 0 := by decide
  have h20 : (2 : Fin 4) ≠ 0 := by decide
  have h21 : (2 : Fin 4) ≠ 1 := by decide
  have h30 : (3 : Fin 4) ≠ 0 := by decide
  have h31 : (3 : Fin 4) ≠ 1 := by decide
  have h32 : (3 : Fin 4) ≠ 2 := by decide
  simp only [Fin.sum_univ_four, cubicRatioKey, ite_true, if_neg h10, if_neg h20,
    if_neg h21, if_neg h30, if_neg h31, if_neg h32,
    Rat.cast_mul, Rat.cast_div, Rat.cast_natCast]
  rw [Real.log_mul (mul_ne_zero hn0 hm0) hr0, Real.log_mul hn0 hm0,
    Real.log_div (mul_ne_zero hn0 hm0) hr0, Real.log_mul hn0 hm0,
    Real.log_div (mul_ne_zero hn0 hr0) hm0, Real.log_mul hn0 hr0,
    Real.log_div (mul_ne_zero hm0 hr0) hn0, Real.log_mul hm0 hr0]
  have h3 : Real.log (n : ℝ) + Real.log (r : ℝ) - Real.log (m : ℝ) =
      Real.log (n : ℝ) - Real.log (m : ℝ) + Real.log (r : ℝ) := by ring
  have h4 : Real.log (m : ℝ) + Real.log (r : ℝ) - Real.log (n : ℝ) =
      -Real.log (n : ℝ) + Real.log (m : ℝ) + Real.log (r : ℝ) := by ring
  rw [h3, h4]

/-- Distinct tuples and signs retain their multiplicity before ratio aggregation. -/
abbrev CubicPacket := ((ℕ × ℕ) × ℕ) × Fin 4

/-- Complete ordered triples from the original integer inventory, with all four
cosine product-to-sum branches. -/
def cubicPacketInventory (A : ℝ) : Finset CubicPacket :=
  ((primePowerInventory (2 * A) ×ˢ primePowerInventory (2 * A)) ×ˢ
    primePowerInventory (2 * A)) ×ˢ Finset.univ

/-- Exact rational product or ratio selected by the packet's cosine branch. -/
def cubicPacketKey (p : CubicPacket) : ℚ := cubicRatioKey p.1.1.1 p.1.1.2 p.1.2 p.2

/-- Signed coefficient product, including the cubic cosine normalization factor. -/
def cubicPacketWeight (p : CubicPacket) : ℝ :=
  (1 / 4 : ℝ) * compensatedCoefficient p.1.1.1 *
    compensatedCoefficient p.1.1.2 * compensatedCoefficient p.1.2

theorem cubicPacketKey_pos {A : ℝ} {p : CubicPacket}
    (hp : p ∈ cubicPacketInventory A) : 0 < cubicPacketKey p := by
  rcases p with ⟨⟨⟨n, m⟩, r⟩, e⟩
  simp only [cubicPacketInventory, Finset.mem_product, primePowerInventory,
    Finset.mem_Icc, Finset.mem_univ] at hp
  have hn : 0 < (n : ℚ) := by
    have := hp.1.1.1.1
    exact_mod_cast (by omega : 0 < n)
  have hm : 0 < (m : ℚ) := by
    have := hp.1.1.2.1
    exact_mod_cast (by omega : 0 < m)
  have hr : 0 < (r : ℚ) := by
    have := hp.1.2.1
    exact_mod_cast (by omega : 0 < r)
  dsimp only [cubicPacketKey, cubicRatioKey]
  split_ifs <;> positivity

/-- Exact exclusion is applicable to each actual positive rational packet. -/
theorem cubicPacket_response_zero_of_one_le_distance {A : ℝ} (hA : 0 < A)
    (p : CubicPacket) (hd : 1 ≤ multiplicativeDistance A (cubicPacketKey p : ℝ) 1) :
    sourceCorrelation explicitSecondDerivative A (Real.log (cubicPacketKey p : ℝ)) = 0 := by
  simpa only [div_one] using sourceCorrelation_eq_zero_of_one_le_distance hA
    (cubicPacketKey p : ℝ) 1 hd

/-- Exact packet readout of the actual cubic source moment. -/
theorem cubicSourceMoment_eq_rational_packets {A : ℝ} (hA : 1 ≤ A) :
    cubicSourceMoment A = ∑ p ∈ cubicPacketInventory A,
      cubicPacketWeight p * sourceCorrelation explicitSecondDerivative A
        (Real.log (cubicPacketKey p : ℝ)) := by
  rw [cubicSourceMoment_eq_packets hA]
  simp only [cubicPacketInventory, Finset.sum_product, cubicPacketWeight, cubicPacketKey]
  simp only [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n hn
  apply Finset.sum_congr rfl
  intro m hm
  apply Finset.sum_congr rfl
  intro r hr
  have hn0 : 0 < n := by
    have := (Finset.mem_Icc.mp hn).1
    omega
  have hm0 : 0 < m := by
    have := (Finset.mem_Icc.mp hm).1
    omega
  have hr0 : 0 < r := by
    have := (Finset.mem_Icc.mp hr).1
    omega
  rw [← Finset.mul_sum, cubic_ratio_response A hn0 hm0 hr0]
  ring

/-- Complete source-specialized aggregation combines the signed coefficients of
all equal rational ratios. No tuple or sign is removed by the grouping. -/
theorem cubicSourceMoment_eq_grouped_packets {A : ℝ} (hA : 1 ≤ A) :
    cubicSourceMoment A = ∑ q ∈ (cubicPacketInventory A).image cubicPacketKey,
      (∑ p ∈ cubicPacketInventory A with cubicPacketKey p = q, cubicPacketWeight p) *
        sourceCorrelation explicitSecondDerivative A (Real.log (q : ℝ)) := by
  rw [cubicSourceMoment_eq_rational_packets hA]
  exact sum_grouped_by_key (cubicPacketInventory A) cubicPacketKey cubicPacketWeight
    (fun q => sourceCorrelation explicitSecondDerivative A (Real.log (q : ℝ)))

/-- Every touching or exterior packet vanishes exactly. The retained interior
still has the full signed correlation response. -/
theorem cubicSourceMoment_eq_interior_packets {A : ℝ} (hA : 1 ≤ A) :
    cubicSourceMoment A =
      ∑ p ∈ cubicPacketInventory A with
        multiplicativeDistance A (cubicPacketKey p : ℝ) 1 < 1,
        cubicPacketWeight p * sourceCorrelation explicitSecondDerivative A
          (Real.log (cubicPacketKey p : ℝ)) := by
  rw [cubicSourceMoment_eq_rational_packets hA, Finset.sum_filter]
  apply Finset.sum_congr rfl
  intro p _
  by_cases hd : multiplicativeDistance A (cubicPacketKey p : ℝ) 1 < 1
  · simp only [hd, ↓reduceIte]
  · rw [if_neg hd, cubicPacket_response_zero_of_one_le_distance
      (by linarith) p (le_of_not_gt hd), mul_zero]

/-- Prioritizing any packet subset leaves an exact, explicitly retained complement. -/
theorem cubicSourceMoment_eq_selected_add_complement {A : ℝ} (hA : 1 ≤ A)
    (selected : Finset CubicPacket) (hselected : selected ⊆ cubicPacketInventory A) :
    cubicSourceMoment A =
      (∑ p ∈ selected, cubicPacketWeight p * sourceCorrelation explicitSecondDerivative A
        (Real.log (cubicPacketKey p : ℝ))) +
      ∑ p ∈ cubicPacketInventory A \ selected,
        cubicPacketWeight p * sourceCorrelation explicitSecondDerivative A
          (Real.log (cubicPacketKey p : ℝ)) := by
  rw [cubicSourceMoment_eq_rational_packets hA]
  rw [add_comm]
  exact (Finset.sum_sdiff hselected).symm

/-- Every omitted packet is paid against the actual signed source profile. This
is a finite-scale certificate, with no claim of a scale-uniform bound. -/
theorem cubic_selected_error_le_profile_budget {A : ℝ} (hA : 1 ≤ A)
    (selected : Finset CubicPacket) (hselected : selected ⊆ cubicPacketInventory A) :
    |cubicSourceMoment A -
      ∑ p ∈ selected, cubicPacketWeight p * sourceCorrelation explicitSecondDerivative A
        (Real.log (cubicPacketKey p : ℝ))| ≤
      ∑ p ∈ cubicPacketInventory A \ selected, |cubicPacketWeight p| *
        |sourceCorrelation explicitSecondDerivative A (Real.log (cubicPacketKey p : ℝ))| := by
  rw [cubicSourceMoment_eq_selected_add_complement hA selected hselected,
    add_sub_cancel_left]
  simpa only [abs_mul] using Finset.abs_sum_le_sum_abs
    (fun p => cubicPacketWeight p * sourceCorrelation explicitSecondDerivative A
      (Real.log (cubicPacketKey p : ℝ))) (cubicPacketInventory A \ selected)

/-- Mass-one normalization bounds the omitted profile budget by the total
variation of its signed packet coefficients. That budget may grow with scale. -/
theorem cubic_selected_error_le_coefficient_budget {A : ℝ} (hA : 1 ≤ A)
    (selected : Finset CubicPacket) (hselected : selected ⊆ cubicPacketInventory A) :
    |cubicSourceMoment A -
      ∑ p ∈ selected, cubicPacketWeight p * sourceCorrelation explicitSecondDerivative A
        (Real.log (cubicPacketKey p : ℝ))| ≤
      ∑ p ∈ cubicPacketInventory A \ selected, |cubicPacketWeight p| := by
  apply (cubic_selected_error_le_profile_budget hA selected hselected).trans
  apply Finset.sum_le_sum
  intro p _
  exact mul_le_of_le_one_right (abs_nonneg _)
    (EstimateCorrelation.actual_correlation_abs_le_one A _ hA)

/-- The packet moment is exactly the actual signed cubic heat observation at
time zero, under the already constructed probability measure. -/
theorem sourceCubicHeat_zero_eq_cubicMoment {A : ℝ} (hA : 1 ≤ A) :
    SourceSignedHeat.sourceCubicHeat A 0 = cubicSourceMoment A := by
  unfold SourceSignedHeat.sourceCubicHeat SourceSignedHeat.cubicHeat
  simp only [neg_zero, zero_mul, Real.exp_zero, mul_one]
  rw [SourceSignedHeat.sourceProbabilityMeasure_integral A hA]
  rfl

/-- Checked source-to-heat-to-rational-packet chain, with the complete signed
inventory and multiplicity retained in every rational fiber. -/
theorem sourceCubicHeat_zero_eq_grouped_packets {A : ℝ} (hA : 1 ≤ A) :
    SourceSignedHeat.sourceCubicHeat A 0 =
      ∑ q ∈ (cubicPacketInventory A).image cubicPacketKey,
        (∑ p ∈ cubicPacketInventory A with cubicPacketKey p = q, cubicPacketWeight p) *
          sourceCorrelation explicitSecondDerivative A (Real.log (q : ℝ)) := by
  rw [sourceCubicHeat_zero_eq_cubicMoment hA]
  exact cubicSourceMoment_eq_grouped_packets hA

end FormalResearch.RiemannHypothesis.SourceMultiplicativePackets
