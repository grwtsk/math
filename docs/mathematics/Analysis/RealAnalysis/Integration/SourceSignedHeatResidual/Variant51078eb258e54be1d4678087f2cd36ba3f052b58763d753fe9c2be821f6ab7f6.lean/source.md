# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SourceSignedHeatResidual.Variant51078eb258e54be1d4678087f2cd36ba3f052b58763d753fe9c2be821f6ab7f6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fe94b55769564b538b433410a267c624a86ba560` · SHA-256 `5d6d18061ba67f4e9adc4c2a4576c38833c29223be56a3c6d7df36ad1dbe7474`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ActualSourceResidualJoin.Variant37defdf37bc34ee0fb7bc6ab96f5302fa73aa18bb0353ad2b8de0a90ea15d194","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"37defdf37bc34ee0fb7bc6ab96f5302fa73aa18bb0353ad2b8de0a90ea15d194","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ActualSourceResidualJoin.Variant37defdf37bc34ee0fb7bc6ab96f5302fa73aa18bb0353ad2b8de0a90ea15d194","mathematical_subject":"Analysis.Integration","original_sha256":"37defdf37bc34ee0fb7bc6ab96f5302fa73aa18bb0353ad2b8de0a90ea15d194","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/FormalResearch/RiemannHypothesis/SourceSignedHeatResidual.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceSignedHeat

/-!
# Conditional residual joins for the actual signed heat source

A pointwise source-symbol join uses the same normalized Fourier probability
measure throughout. Its nonlinear correction retains the mixed square. A paid
scalar sector row alone does not establish this join or pay that correction.
The actual K-C14 residual join and uniform arithmetic supplier are not asserted.

Research direction: grwtsk contributors. Particular exact correction and native
formal construction: OpenAI Codex, 7 October 2026.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.ActualSourceResidualJoin.Variant37defdf37bc34ee0fb7bc6ab96f5302fa73aa18bb0353ad2b8de0a90ea15d194

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceSignedHeatResidual

open MeasureTheory
open SourceSignedHeat SourceCompensatedFourier SourceKapitzaCompensatedReadout
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

/-- The scalar time-integrated odd heat observation. -/
def heatRemainderKernel (τ x : ℝ) : ℝ := x * (1 - Real.exp (-τ * x ^ 2))

/-- The complete nonlinear cost of adding a paid symbol to a residual. -/
def heatResidualCorrection (τ r p : ℝ) : ℝ :=
  heatRemainderKernel τ (r + p) - heatRemainderKernel τ r

/-- The correction includes the interaction of the residual and paid symbol. -/
theorem heatResidualCorrection_eq_mixed (τ r p : ℝ) :
    heatResidualCorrection τ r p =
      p * (1 - Real.exp (-τ * (r ^ 2 + 2 * r * p + p ^ 2))) +
        r * (Real.exp (-τ * r ^ 2) -
          Real.exp (-τ * (r ^ 2 + 2 * r * p + p ^ 2))) := by
  unfold heatResidualCorrection heatRemainderKernel
  rw [show (r + p) ^ 2 = r ^ 2 + 2 * r * p + p ^ 2 by ring]
  ring

/-- The correction equals the linear paid readout minus a terminal heat change. -/
theorem heatResidualCorrection_eq_paid_sub_terminal (τ r p : ℝ) :
    heatResidualCorrection τ r p = p -
      ((r + p) * Real.exp (-τ * (r + p) ^ 2) - r * Real.exp (-τ * r ^ 2)) := by
  unfold heatResidualCorrection heatRemainderKernel
  ring

/-- Two unit sectors expose a nonzero nonlinear interaction at positive heat time. -/
theorem heatRemainderKernel_unit_difference (τ : ℝ) :
    heatRemainderKernel τ (1 + 1) - heatRemainderKernel τ 1 - heatRemainderKernel τ 1 =
      2 * (Real.exp (-τ) - Real.exp (-4 * τ)) := by
  unfold heatRemainderKernel
  rw [show -τ * (1 + 1 : ℝ) ^ 2 = -4 * τ by ring]
  simp only [one_pow, mul_one]
  ring

/-- Heating the sum cannot be reconstructed by adding the separately heated sectors. -/
theorem heatRemainderKernel_not_additive {τ : ℝ} (hτ : 0 < τ) :
    0 < heatRemainderKernel τ (1 + 1) -
      heatRemainderKernel τ 1 - heatRemainderKernel τ 1 := by
  rw [heatRemainderKernel_unit_difference]
  have he : Real.exp (-4 * τ) < Real.exp (-τ) :=
    Real.exp_lt_exp.mpr (by linarith)
  exact mul_pos (by norm_num) (sub_pos.mpr he)

/-- Integral of the exact nonlinear correction in the original source measure. -/
def heatResidualCorrectionIntegral {α : Type*} [MeasurableSpace α]
    (μ : Measure α) (r p : α → ℝ) (τ : ℝ) : ℝ :=
  ∫ x, heatResidualCorrection τ (r x) (p x) ∂μ

variable {α : Type*} [MeasurableSpace α] {μ : Measure α} [IsFiniteMeasure μ]
    {r p : α → ℝ} {Mr Mp : ℝ}

private theorem bounded_integrable (hr : Measurable r) (hMr : 0 ≤ Mr)
    (hbr : ∀ x, |r x| ≤ Mr) : Integrable r μ := by
  simpa only [neg_zero, zero_mul, Real.exp_zero, mul_one] using
    signedHeat_integrable hr hMr hbr (μ := μ) 0

private theorem add_bound {β : Type*} {f g : β → ℝ} {a b : ℝ}
    (hf : ∀ x, |f x| ≤ a) (hg : ∀ x, |g x| ≤ b) :
    ∀ x, |f x + g x| ≤ a + b := by
  intro x
  exact (abs_add_le _ _).trans (add_le_add (hf x) (hg x))

/-- Bounded measurable source symbols give an actual integrable scalar heat kernel. -/
theorem heatRemainderKernel_integrable (hr : Measurable r) (hMr : 0 ≤ Mr)
    (hbr : ∀ x, |r x| ≤ Mr) (τ : ℝ) :
    Integrable (fun x => heatRemainderKernel τ (r x)) μ := by
  apply ((bounded_integrable hr hMr hbr).sub
    (signedHeat_integrable hr hMr hbr τ)).congr
  exact ae_of_all _ (fun x => by
    dsimp only [Pi.sub_apply]
    unfold heatRemainderKernel
    ring)

/-- The pointwise kernel integral is the rigorously integrated cubic heat remainder. -/
theorem heatRemainderKernel_integral_eq (hr : Measurable r) (hMr : 0 ≤ Mr)
    (hbr : ∀ x, |r x| ≤ Mr) {τ : ℝ} (hτ : 0 ≤ τ) :
    (∫ x, heatRemainderKernel τ (r x) ∂μ) = signedHeatRemainder μ r τ := by
  have he : (fun x => heatRemainderKernel τ (r x)) =
      fun x => r x - r x * Real.exp (-τ * r x ^ 2) := by
    funext x
    unfold heatRemainderKernel
    ring
  rw [he, integral_sub (bounded_integrable hr hMr hbr)
    (signedHeat_integrable hr hMr hbr τ)]
  have hd := signedHeat_decomposition hr hMr hbr (μ := μ) hτ
  unfold signedHeat at hd
  linarith

/-- Every nonlinear interaction is integrable at each fixed bounded source. -/
theorem heatResidualCorrection_integrable (hr : Measurable r) (hp : Measurable p)
    (hMr : 0 ≤ Mr) (hMp : 0 ≤ Mp) (hbr : ∀ x, |r x| ≤ Mr)
    (hbp : ∀ x, |p x| ≤ Mp) (τ : ℝ) :
    Integrable (fun x => heatResidualCorrection τ (r x) (p x)) μ := by
  exact (heatRemainderKernel_integrable (r := fun x => r x + p x) (μ := μ)
    (hr.add hp) (add_nonneg hMr hMp)
    (add_bound hbr hbp) τ).sub (heatRemainderKernel_integrable hr hMr hbr τ)

/-- Exact remainder splitting retains the complete mixed nonlinear correction. -/
theorem heatResidualCorrectionIntegral_eq_remainder_sub (hr : Measurable r)
    (hp : Measurable p) (hMr : 0 ≤ Mr) (hMp : 0 ≤ Mp)
    (hbr : ∀ x, |r x| ≤ Mr) (hbp : ∀ x, |p x| ≤ Mp) {τ : ℝ} (hτ : 0 ≤ τ) :
    heatResidualCorrectionIntegral μ r p τ =
      signedHeatRemainder μ (fun x => r x + p x) τ - signedHeatRemainder μ r τ := by
  unfold heatResidualCorrectionIntegral heatResidualCorrection
  rw [integral_sub
    (heatRemainderKernel_integrable (r := fun x => r x + p x) (μ := μ)
      (hr.add hp) (add_nonneg hMr hMp)
      (add_bound hbr hbp) τ)
    (heatRemainderKernel_integrable hr hMr hbr τ),
    heatRemainderKernel_integral_eq (r := fun x => r x + p x) (μ := μ)
      (hr.add hp) (add_nonneg hMr hMp) (add_bound hbr hbp) hτ,
    heatRemainderKernel_integral_eq hr hMr hbr hτ]

/-- The full terminal remains attached to the full source;
the residual pays its mixed correction. -/
theorem integral_split_full_terminal (hr : Measurable r) (hp : Measurable p)
    (hMr : 0 ≤ Mr) (hMp : 0 ≤ Mp) (hbr : ∀ x, |r x| ≤ Mr)
    (hbp : ∀ x, |p x| ≤ Mp) {τ : ℝ} (hτ : 0 ≤ τ) :
    (∫ x, r x + p x ∂μ) = signedHeat μ (fun x => r x + p x) τ +
      signedHeatRemainder μ r τ + heatResidualCorrectionIntegral μ r p τ := by
  have hd := signedHeat_decomposition (k := fun x => r x + p x) (hr.add hp) (add_nonneg hMr hMp)
    (add_bound hbr hbp) (μ := μ) hτ
  have hc := heatResidualCorrectionIntegral_eq_remainder_sub hr hp hMr hMp hbr hbp
    (μ := μ) hτ
  linarith

/-- A residual terminal uses the linear paid readout, a different correction contract. -/
theorem integral_split_residual_terminal (hr : Measurable r) (hp : Measurable p)
    (hMr : 0 ≤ Mr) (hMp : 0 ≤ Mp) (hbr : ∀ x, |r x| ≤ Mr)
    (hbp : ∀ x, |p x| ≤ Mp) {τ : ℝ} (hτ : 0 ≤ τ) :
    (∫ x, r x + p x ∂μ) = signedHeat μ r τ + signedHeatRemainder μ r τ +
      (∫ x, p x ∂μ) := by
  rw [integral_add (bounded_integrable hr hMr hbr) (bounded_integrable hp hMp hbp),
    signedHeat_decomposition hr hMr hbr hτ]

/-- The nonlinear payment and linear payment differ by the entire terminal change. -/
theorem heatResidualCorrectionIntegral_eq_paid_sub_terminals (hr : Measurable r)
    (hp : Measurable p) (hMr : 0 ≤ Mr) (hMp : 0 ≤ Mp)
    (hbr : ∀ x, |r x| ≤ Mr) (hbp : ∀ x, |p x| ≤ Mp) {τ : ℝ} (hτ : 0 ≤ τ) :
    heatResidualCorrectionIntegral μ r p τ = (∫ x, p x ∂μ) -
      (signedHeat μ (fun x => r x + p x) τ - signedHeat μ r τ) := by
  have hf := integral_split_full_terminal hr hp hMr hMp hbr hbp (μ := μ) hτ
  have hr' := integral_split_residual_terminal hr hp hMr hMp hbr hbp (μ := μ) hτ
  linarith

/-- A conditional pointwise join of the actual full symbol, with fixed-scale residual regularity.
This record does not assert that the reported K-C14 sectors supply such a join. -/
structure ActualSourceResidualJoin (R : ℝ) (residual paid : ℝ → ℝ → ℝ) : Prop where
  /-- Residual observations are measurable in the original Fourier coordinate. -/
  residual_measurable : ∀ A : ℝ, R ≤ A → Measurable (residual A)
  /-- Only a finite bound at each individual scale is required for analytic interchange. -/
  residual_bounded : ∀ A : ℝ, R ≤ A → ∃ M : ℝ, 0 ≤ M ∧ ∀ ξ : ℝ, |residual A ξ| ≤ M
  /-- The complete actual symbol, including every signed coefficient, is preserved pointwise. -/
  source_eq : ∀ A : ℝ, R ≤ A → ∀ ξ : ℝ,
    compensatedFourierSymbol A ξ = residual A ξ + paid A ξ

/-- Residual heat terminal in the same normalized actual-source probability measure. -/
def sourceResidualSignedHeat (residual : ℝ → ℝ → ℝ) (A τ : ℝ) : ℝ :=
  signedHeat (sourceProbabilityMeasure A) (residual A) τ

/-- Residual cubic heat remainder in the same normalized actual-source measure. -/
def sourceResidualHeatRemainder (residual : ℝ → ℝ → ℝ) (A τ : ℝ) : ℝ :=
  signedHeatRemainder (sourceProbabilityMeasure A) (residual A) τ

/-- The complete nonlinear paid correction, without a separate-sector substitution. -/
def sourceResidualCorrection (residual paid : ℝ → ℝ → ℝ) (A τ : ℝ) : ℝ :=
  heatResidualCorrectionIntegral (sourceProbabilityMeasure A) (residual A) (paid A) τ

/-- The linear paid readout has its own source-bound contract. -/
def sourcePaidReadout (paid : ℝ → ℝ → ℝ) (A : ℝ) : ℝ :=
  ∫ ξ, paid A ξ ∂sourceProbabilityMeasure A

/-- The actual join makes the paid symbol exactly the full symbol minus the residual. -/
theorem ActualSourceResidualJoin.paid_eq {R : ℝ} {residual paid : ℝ → ℝ → ℝ}
    (join : ActualSourceResidualJoin R residual paid) (A : ℝ) (hRA : R ≤ A) :
    paid A = fun ξ => compensatedFourierSymbol A ξ - residual A ξ := by
  funext ξ
  have h := join.source_eq A hRA ξ
  linarith

/-- Measurability of the paid symbol follows from an actual pointwise source join. -/
theorem ActualSourceResidualJoin.paid_measurable {R : ℝ} {residual paid : ℝ → ℝ → ℝ}
    (join : ActualSourceResidualJoin R residual paid) (A : ℝ) (hRA : R ≤ A) :
    Measurable (paid A) := by
  rw [join.paid_eq A hRA]
  exact (compensatedFourierSymbol_measurable A).sub (join.residual_measurable A hRA)

/-- The paid symbol is bounded at the same scale, without a claimed uniform envelope. -/
theorem ActualSourceResidualJoin.paid_bound {R M : ℝ} {residual paid : ℝ → ℝ → ℝ}
    (join : ActualSourceResidualJoin R residual paid) (A : ℝ) (hRA : R ≤ A)
    (hbr : ∀ ξ, |residual A ξ| ≤ M) :
    ∀ ξ, |paid A ξ| ≤ sourceSymbolBound A + M := by
  intro ξ
  rw [join.paid_eq A hRA]
  calc
    _ ≤ |compensatedFourierSymbol A ξ| + |residual A ξ| := by
      simpa only [sub_eq_add_neg, abs_neg] using
        abs_add_le (compensatedFourierSymbol A ξ) (-residual A ξ)
    _ ≤ _ := add_le_add (compensatedFourierSymbol_abs_le A ξ) (hbr ξ)

/-- The actual compensated readout retains its full terminal and the paid mixed correction. -/
theorem compensatedSourceSum_eq_fullTerminal_residualRemainder_correction
    {R : ℝ} {residual paid : ℝ → ℝ → ℝ} (join : ActualSourceResidualJoin R residual paid)
    (A : ℝ) (hA : 1 ≤ A) (hRA : R ≤ A) {τ : ℝ} (hτ : 0 ≤ τ) :
    compensatedSourceSum A = sourceSignedHeat A τ +
      sourceResidualHeatRemainder residual A τ + sourceResidualCorrection residual paid A τ := by
  let _ := sourceProbabilityMeasure_isProbability A hA
  obtain ⟨M, hM, hb⟩ := join.residual_bounded A hRA
  have he : (fun ξ => residual A ξ + paid A ξ) = compensatedFourierSymbol A := by
    funext ξ
    exact (join.source_eq A hRA ξ).symm
  have hg := integral_split_full_terminal (join.residual_measurable A hRA)
    (join.paid_measurable A hRA) hM (add_nonneg (sourceSymbolBound_nonneg A) hM)
    hb (join.paid_bound A hRA hb) (μ := sourceProbabilityMeasure A) hτ
  rw [he, sourceProbabilityMeasure_integral A hA,
    ← compensatedSourceSum_eq_standardSourceIntegral (by linarith : 0 < A)] at hg
  exact hg

/-- The alternative terminal belongs to the residual
and therefore pays the linear source readout. -/
theorem compensatedSourceSum_eq_residualTerminal_remainder_paid
    {R : ℝ} {residual paid : ℝ → ℝ → ℝ} (join : ActualSourceResidualJoin R residual paid)
    (A : ℝ) (hA : 1 ≤ A) (hRA : R ≤ A) {τ : ℝ} (hτ : 0 ≤ τ) :
    compensatedSourceSum A = sourceResidualSignedHeat residual A τ +
      sourceResidualHeatRemainder residual A τ + sourcePaidReadout paid A := by
  let _ := sourceProbabilityMeasure_isProbability A hA
  obtain ⟨M, hM, hb⟩ := join.residual_bounded A hRA
  have he : (fun ξ => residual A ξ + paid A ξ) = compensatedFourierSymbol A := by
    funext ξ
    exact (join.source_eq A hRA ξ).symm
  have hg := integral_split_residual_terminal (join.residual_measurable A hRA)
    (join.paid_measurable A hRA) hM (add_nonneg (sourceSymbolBound_nonneg A) hM)
    hb (join.paid_bound A hRA hb) (μ := sourceProbabilityMeasure A) hτ
  rw [he, sourceProbabilityMeasure_integral A hA,
    ← compensatedSourceSum_eq_standardSourceIntegral (by linarith : 0 < A)] at hg
  exact hg

/-- Its residual terminal is a distinct observation with the same probability-source bound. -/
theorem sourceResidualSignedHeat_terminal_bound (residual : ℝ → ℝ → ℝ)
    (A : ℝ) (hA : 1 ≤ A) {τ : ℝ} (hτ : 0 < τ) :
    |sourceResidualSignedHeat residual A τ| ≤ terminalCap τ := by
  let _ := sourceProbabilityMeasure_isProbability A hA
  exact signedHeat_terminal_bound hτ

/-- A uniform residual remainder plus a uniform mixed correction pays the actual compensated cap. -/
theorem compensated_tail_of_residual_heat_split {residual paid : ℝ → ℝ → ℝ}
    (R τ C P : ℝ) (hR : 1 ≤ R) (hτ : 0 < τ)
    (join : ActualSourceResidualJoin R residual paid)
    (hrem : ∀ A : ℝ, R ≤ A → sourceResidualHeatRemainder residual A τ ≤ C)
    (hcorr : ∀ A : ℝ, R ≤ A → sourceResidualCorrection residual paid A τ ≤ P) :
    SourceKapitzaSignedReduction.CompensatedTailUpperBound := by
  refine ⟨R, hR, C + P + terminalCap τ, ?_⟩
  intro A hRA
  have hA := hR.trans hRA
  rw [compensatedSourceSum_eq_fullTerminal_residualRemainder_correction join A hA hRA hτ.le]
  have hf := (abs_le.mp (sourceSignedHeat_terminal_bound A hA hτ)).2
  linarith [hrem A hRA, hcorr A hRA]

/-- A separately supplied residual terminal bound pairs with the linear paid source readout. -/
theorem compensated_tail_of_residual_terminal_bound {residual paid : ℝ → ℝ → ℝ}
    (R τ T C P : ℝ) (hR : 1 ≤ R) (hτ : 0 ≤ τ)
    (join : ActualSourceResidualJoin R residual paid)
    (hterm : ∀ A : ℝ, R ≤ A → sourceResidualSignedHeat residual A τ ≤ T)
    (hrem : ∀ A : ℝ, R ≤ A → sourceResidualHeatRemainder residual A τ ≤ C)
    (hpaid : ∀ A : ℝ, R ≤ A → sourcePaidReadout paid A ≤ P) :
    SourceKapitzaSignedReduction.CompensatedTailUpperBound := by
  refine ⟨R, hR, T + C + P, ?_⟩
  intro A hRA
  have hA := hR.trans hRA
  rw [compensatedSourceSum_eq_residualTerminal_remainder_paid join A hA hRA hτ]
  linarith [hterm A hRA, hrem A hRA, hpaid A hRA]

/-- A positive-time residual terminal pays its universal bound beside the linear source readout. -/
theorem compensated_tail_of_residual_linear_paid {residual paid : ℝ → ℝ → ℝ}
    (R τ C P : ℝ) (hR : 1 ≤ R) (hτ : 0 < τ)
    (join : ActualSourceResidualJoin R residual paid)
    (hrem : ∀ A : ℝ, R ≤ A → sourceResidualHeatRemainder residual A τ ≤ C)
    (hpaid : ∀ A : ℝ, R ≤ A → sourcePaidReadout paid A ≤ P) :
    SourceKapitzaSignedReduction.CompensatedTailUpperBound := by
  apply compensated_tail_of_residual_terminal_bound R τ (terminalCap τ) C P hR hτ.le
    join _ hrem hpaid
  intro A hRA
  exact (abs_le.mp (sourceResidualSignedHeat_terminal_bound residual A (hR.trans hRA) hτ)).2

/-- Joined scalar paid bounds consume the residual cap with its paid probability terminal. -/
theorem estimate_of_residual_linear_paid {residual paid : ℝ → ℝ → ℝ}
    (R τ C P : ℝ) (hR : 1 ≤ R) (hτ : 0 < τ)
    (join : ActualSourceResidualJoin R residual paid)
    (hrem : ∀ A : ℝ, R ≤ A → sourceResidualHeatRemainder residual A τ ≤ C)
    (hpaid : ∀ A : ℝ, R ≤ A → sourcePaidReadout paid A ≤ P) :
    CorrelationAssembly.EstimateObligation :=
  SourceKapitzaSignedReduction.estimate_of_compensated_tail
    (compensated_tail_of_residual_linear_paid R τ C P hR hτ join hrem hpaid)

/-- The exact residual join and mixed uniform payment use the existing estimate consumer. -/
theorem estimate_of_residual_heat_split {residual paid : ℝ → ℝ → ℝ}
    (R τ C P : ℝ) (hR : 1 ≤ R) (hτ : 0 < τ)
    (join : ActualSourceResidualJoin R residual paid)
    (hrem : ∀ A : ℝ, R ≤ A → sourceResidualHeatRemainder residual A τ ≤ C)
    (hcorr : ∀ A : ℝ, R ≤ A → sourceResidualCorrection residual paid A τ ≤ P) :
    CorrelationAssembly.EstimateObligation :=
  SourceKapitzaSignedReduction.estimate_of_compensated_tail
    (compensated_tail_of_residual_heat_split R τ C P hR hτ join hrem hcorr)

/-- A supplied residual terminal bound and linear payment use the existing estimate consumer. -/
theorem estimate_of_residual_terminal_bound {residual paid : ℝ → ℝ → ℝ}
    (R τ T C P : ℝ) (hR : 1 ≤ R) (hτ : 0 ≤ τ)
    (join : ActualSourceResidualJoin R residual paid)
    (hterm : ∀ A : ℝ, R ≤ A → sourceResidualSignedHeat residual A τ ≤ T)
    (hrem : ∀ A : ℝ, R ≤ A → sourceResidualHeatRemainder residual A τ ≤ C)
    (hpaid : ∀ A : ℝ, R ≤ A → sourcePaidReadout paid A ≤ P) :
    CorrelationAssembly.EstimateObligation :=
  SourceKapitzaSignedReduction.estimate_of_compensated_tail
    (compensated_tail_of_residual_terminal_bound R τ T C P hR hτ join hterm hrem hpaid)

end FormalResearch.RiemannHypothesis.SourceSignedHeatResidual
```
