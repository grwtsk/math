# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.NormArithmeticV1Prebytes.Variant5d9d9c149576f6da7ce10c49ca5092cc57bd58ccc2b1b0e99d404c45c1662a78

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9d58848e723bc15a46cca7704082ffa342a4fe70` · SHA-256 `6f1d0209ae7f43f8011f7665c741c89701109954a342b9c93891885c6f4006a4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.MangoldtBaseline.Variantb3622322b9cae0d8cf5a0ab0b8720e07cfb12ff33ebbc49758766ef40317d51f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b3622322b9cae0d8cf5a0ab0b8720e07cfb12ff33ebbc49758766ef40317d51f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.MangoldtBaseline.Variantb3622322b9cae0d8cf5a0ab0b8720e07cfb12ff33ebbc49758766ef40317d51f","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"b3622322b9cae0d8cf5a0ab0b8720e07cfb12ff33ebbc49758766ef40317d51f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle8/mangoldt-norm/norm-arithmetic-v1-prebytes.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceMangoldtInteraction
import FormalResearch.RiemannHypothesis.SourceCorrelationEnergy
import FormalResearch.RiemannHypothesis.WeightedPrimeMertens
import Mathlib.Analysis.Calculus.MeanValue

/-!
# Full norm of the literal Mangoldt interaction

Independent-radius unit source probes determine the full finite operator norm.
Its growth obstructs a uniform operator-norm budget, not the matched-source
signed upper bound. No constant L² vector or norm-attaining eigenvector is used.

AI attribution: developed with OpenAI Codex; checked by Lean.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.MangoldtBaseline.Variantb3622322b9cae0d8cf5a0ab0b8720e07cfb12ff33ebbc49758766ef40317d51f

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceMangoldtNorm
open Filter Set ArithmeticFunction
open scoped Topology InnerProductSpace
open SourceReflectionDuality SourceScaleL2Continuity SourceMangoldtInteraction
open SourceCorrelationEnergy SourcePrimeMomentScale WeightedPrimeMertens SourceMangoldtAbel
open SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity PrimePowerDescent

private abbrev mangoldtBaseline (A : ℝ) : ℝ :=
  ∑ n ∈ primePowerInventory (2 * A), mangoldtCoefficient n

private theorem mangoldtCoefficient_nonneg (n : ℕ) : 0 ≤ mangoldtCoefficient n :=
  mul_nonneg vonMangoldt_nonneg (Real.exp_pos _).le

/-- Shift-weighted finite coefficient mass uses the same complete closed inventory. -/
def interactionShiftMass (A : ℝ) : ℝ :=
  ∑ n ∈ primePowerInventory (2 * A), mangoldtCoefficient n * |Real.log n|

/-- Every shift-weighted term is nonnegative, including zero coefficients. -/
theorem interactionShiftMass_nonneg (A : ℝ) : 0 ≤ interactionShiftMass A :=
  Finset.sum_nonneg fun n _ => mul_nonneg (mangoldtCoefficient_nonneg n) (abs_nonneg _)

/-- Nonnegative total mass is independent of any source readout. -/
theorem mangoldtBaseline_nonneg (A : ℝ) : 0 ≤ mangoldtBaseline A :=
  Finset.sum_nonneg fun n _ => mangoldtCoefficient_nonneg n

/-- Opposite translations averaged with coefficient one half are contractions. -/
theorem symmetricTranslation_norm_apply_le (s : ℝ) (f : ComplexL2) :
    ‖symmetricTranslation s f‖ ≤ ‖f‖ := by
  rw [symmetricTranslation_apply, norm_smul]
  have hc : ‖(1 / 2 : ℂ)‖ = (1 / 2 : ℝ) := by norm_num
  rw [hc]
  have h := norm_add_le (translation s f) (translation (-s) f)
  simp only [LinearIsometryEquiv.norm_map] at h
  nlinarith

/-- The shift average has operator norm at most one; no positivity is asserted. -/
theorem symmetricTranslation_norm_le_one (s : ℝ) : ‖symmetricTranslation s‖ ≤ 1 := by
  apply ContinuousLinearMap.opNorm_le_bound _ (by norm_num)
  intro f
  simpa using symmetricTranslation_norm_apply_le s f

/-- Separation differentiation gives the actual correlation a uniform Lipschitz rate. -/
theorem sourceCorrelation_sub_one_abs_le {R : ℝ} (hR : 1 ≤ R) (s : ℝ) :
    |sourceCorrelation explicitSecondDerivative R s - 1| ≤ 5 * |s| / R := by
  have hp : 0 < R := by linarith
  have hd := (sourceCorrelation_contDiff R hp).differentiable (by norm_num)
  have h := (convex_univ : Convex ℝ (univ : Set ℝ)).norm_image_sub_le_of_norm_deriv_le
    (f := sourceCorrelation explicitSecondDerivative R) (x := 0) (y := s)
    (fun x _ => hd x)
    (fun x _ => by simpa only [Real.norm_eq_abs] using
      sourceCorrelation_deriv_abs_le_five_div hR x) (by trivial) (by trivial)
  calc
    _ ≤ (5 / R) * |s| := by
      simpa only [Real.norm_eq_abs, sourceCorrelation_zero hp, sub_zero] using h
    _ = _ := by ring

/-- The actual source correlation tends to one at a fixed separation as radius grows. -/
theorem sourceCorrelation_tendsto_one (s : ℝ) :
    Tendsto (fun R : ℝ => sourceCorrelation explicitSecondDerivative R s) atTop (𝓝 1) := by
  apply Metric.tendsto_nhds.mpr
  intro ε hε
  filter_upwards [eventually_ge_atTop (1 + 5 * |s| / ε)] with R hR
  have hR1 : 1 ≤ R := by
    have hratio : 0 ≤ 5 * |s| / ε := by positivity
    linarith
  have hp : 0 < R := by linarith
  have hlt : 5 * |s| / R < ε := by
    apply (div_lt_iff₀ hp).2
    have hc : 0 ≤ 5 * |s| := by positivity
    have hm := mul_le_mul_of_nonneg_right hR hε.le
    have he : (1 + 5 * |s| / ε) * ε = ε + 5 * |s| := by field_simp
    rw [he] at hm
    linarith
  simpa only [Real.dist_eq] using (sourceCorrelation_sub_one_abs_le hR1 s).trans_lt hlt

/-- The unit source probe may have a radius unrelated to the fixed arithmetic scale. -/
theorem interaction_probe_eq_sum (A : ℝ) {R : ℝ} (hR : 0 < R) :
    (⟪originalSourceState R, mangoldtInteraction A (originalSourceState R)⟫_ℂ).re =
      ∑ n ∈ primePowerInventory (2 * A), mangoldtCoefficient n *
        sourceCorrelation explicitSecondDerivative R (Real.log n) := by
  rw [mangoldtInteraction_self_real]
  simp_rw [sourceCorrelation_eq_inner hR]

/-- Finite probe approximation preserves all coefficients before taking a norm error. -/
theorem interaction_probe_mass_error (A : ℝ) {R : ℝ} (hR : 1 ≤ R) :
    |(⟪originalSourceState R, mangoldtInteraction A (originalSourceState R)⟫_ℂ).re -
      mangoldtBaseline A| ≤ 5 * interactionShiftMass A / R := by
  rw [interaction_probe_eq_sum A (by linarith), mangoldtBaseline, ← Finset.sum_sub_distrib]
  calc
    _ ≤ ∑ n ∈ primePowerInventory (2 * A),
        |mangoldtCoefficient n * sourceCorrelation explicitSecondDerivative R (Real.log n) -
          mangoldtCoefficient n| := Finset.abs_sum_le_sum_abs _ _
    _ = ∑ n ∈ primePowerInventory (2 * A), mangoldtCoefficient n *
        |sourceCorrelation explicitSecondDerivative R (Real.log n) - 1| := by
      apply Finset.sum_congr rfl
      intro n _
      rw [show mangoldtCoefficient n *
        sourceCorrelation explicitSecondDerivative R (Real.log n) - mangoldtCoefficient n =
        mangoldtCoefficient n *
          (sourceCorrelation explicitSecondDerivative R (Real.log n) - 1) by ring]
      rw [abs_mul, abs_of_nonneg (mangoldtCoefficient_nonneg n)]
    _ ≤ ∑ n ∈ primePowerInventory (2 * A),
        mangoldtCoefficient n * (5 * |Real.log n| / R) := by
      exact Finset.sum_le_sum fun n _ => mul_le_mul_of_nonneg_left
        (sourceCorrelation_sub_one_abs_le hR _) (mangoldtCoefficient_nonneg n)
    _ = _ := by
      unfold interactionShiftMass
      rw [Finset.mul_sum, Finset.sum_div]
      apply Finset.sum_congr rfl
      intro n _
      ring

/-- A finite triangle estimate uses the actual coefficient mass. -/
theorem mangoldtInteraction_norm_apply_le (A : ℝ) (f : ComplexL2) :
    ‖mangoldtInteraction A f‖ ≤ mangoldtBaseline A * ‖f‖ := by
  rw [mangoldtInteraction_apply]
  calc
    _ ≤ ∑ n ∈ primePowerInventory (2 * A),
        ‖(mangoldtCoefficient n : ℂ) • symmetricTranslation (Real.log n) f‖ := norm_sum_le _ _
    _ = ∑ n ∈ primePowerInventory (2 * A), mangoldtCoefficient n *
        ‖symmetricTranslation (Real.log n) f‖ := by
      apply Finset.sum_congr rfl
      intro n _
      rw [norm_smul, Complex.norm_real, Real.norm_eq_abs,
        abs_of_nonneg (mangoldtCoefficient_nonneg n)]
    _ ≤ ∑ n ∈ primePowerInventory (2 * A), mangoldtCoefficient n * ‖f‖ :=
      Finset.sum_le_sum fun n _ => mul_le_mul_of_nonneg_left
        (symmetricTranslation_norm_apply_le _ _) (mangoldtCoefficient_nonneg n)
    _ = _ := by rw [mangoldtBaseline, Finset.sum_mul]

/-- Full operator norm is no larger than the independent coefficient mass. -/
theorem mangoldtInteraction_norm_le_mass (A : ℝ) :
    ‖mangoldtInteraction A‖ ≤ mangoldtBaseline A :=
  ContinuousLinearMap.opNorm_le_bound _ (mangoldtBaseline_nonneg A)
    (mangoldtInteraction_norm_apply_le A)

/-- Cauchy–Schwarz bounds each independent-radius unit probe by the full norm. -/
theorem interaction_probe_le_norm (A : ℝ) {R : ℝ} (hR : 0 < R) :
    (⟪originalSourceState R, mangoldtInteraction A (originalSourceState R)⟫_ℂ).re ≤
      ‖mangoldtInteraction A‖ := by
  have h := re_inner_le_norm (𝕜 := ℂ) (originalSourceState R)
    (mangoldtInteraction A (originalSourceState R))
  have hq := originalSourceState_norm hR
  rw [hq, one_mul] at h
  exact h.trans (by simpa only [hq, mul_one] using
    (mangoldtInteraction A).le_opNorm (originalSourceState R))

/-- The finite mass is reached arbitrarily closely, without a constant L² vector. -/
theorem mass_le_mangoldtInteraction_norm (A : ℝ) :
    mangoldtBaseline A ≤ ‖mangoldtInteraction A‖ := by
  by_contra hh
  have hδ : 0 < mangoldtBaseline A - ‖mangoldtInteraction A‖ := by linarith
  let R : ℝ := 1 + 5 * interactionShiftMass A /
    (mangoldtBaseline A - ‖mangoldtInteraction A‖)
  have hR : 1 ≤ R := by
    dsimp [R]
    exact le_add_of_nonneg_right (div_nonneg
      (mul_nonneg (by norm_num) (interactionShiftMass_nonneg A)) hδ.le)
  have hp : 0 < R := by linarith
  have hsmall : 5 * interactionShiftMass A / R <
      mangoldtBaseline A - ‖mangoldtInteraction A‖ := by
    apply (div_lt_iff₀ hp).2
    dsimp [R]
    field_simp
    nlinarith
  have he := (abs_le.mp (interaction_probe_mass_error A hR)).1
  have hu := interaction_probe_le_norm A hp
  linarith

/-- Exact norm of the literal full operator; its matched-source readout is distinct. -/
theorem mangoldtInteraction_norm_eq_mass (A : ℝ) :
    ‖mangoldtInteraction A‖ = mangoldtBaseline A :=
  le_antisymm (mangoldtInteraction_norm_le_mass A) (mass_le_mangoldtInteraction_norm A)

/-- Zero shift mass yields an exact probe readout, with no division by that mass. -/
theorem interaction_probe_eq_mass_of_shiftMass_zero (A : ℝ) {R : ℝ} (hR : 1 ≤ R)
    (hL : interactionShiftMass A = 0) :
    (⟪originalSourceState R, mangoldtInteraction A (originalSourceState R)⟫_ℂ).re =
      mangoldtBaseline A := by
  have h := interaction_probe_mass_error A hR
  rw [hL, mul_zero, zero_div] at h
  exact sub_eq_zero.mp (abs_nonpos_iff.mp h)

/-- Zero arithmetic mass is exactly the zero full operator. -/
theorem mangoldtInteraction_eq_zero_iff_mass_eq_zero (A : ℝ) :
    mangoldtInteraction A = 0 ↔ mangoldtBaseline A = 0 := by
  rw [← norm_eq_zero, mangoldtInteraction_norm_eq_mass]

/-- Inventory shifts are at most twice the fixed arithmetic scale. -/
theorem interactionShiftMass_le_scaled_mass (A : ℝ) :
    interactionShiftMass A ≤ 2 * A * mangoldtBaseline A := by
  unfold interactionShiftMass mangoldtBaseline
  rw [Finset.mul_sum]
  apply Finset.sum_le_sum
  intro n hn
  have hb := mangoldtInventory_log_bounds (2 * A) n hn
  rw [abs_of_nonneg hb.1]
  have h := mul_le_mul_of_nonneg_left hb.2 (mangoldtCoefficient_nonneg n)
  nlinarith

/-- The original exponential weight dominates the elementary weighted-Mangoldt weight. -/
theorem weightedMangoldt_term_le_coefficient {n : ℕ} (hn : 1 ≤ n) :
    vonMangoldt n / (n : ℝ) ≤ mangoldtCoefficient n := by
  have hnR : 0 < (n : ℝ) := by exact_mod_cast (by omega : 0 < n)
  have hlog : 0 ≤ Real.log (n : ℝ) := Real.log_nonneg (by exact_mod_cast hn)
  have h := Real.exp_le_exp.mpr (show -Real.log (n : ℝ) ≤
    -Real.log (n : ℝ) / 2 by linarith)
  rw [Real.exp_neg, Real.exp_log hnR] at h
  simpa only [mangoldtCoefficient, div_eq_mul_inv] using
    mul_le_mul_of_nonneg_left h (vonMangoldt_nonneg (n := n))

/-- The existing closed-prefix inventory adapter deletes only the zero n=1 term. -/
theorem weightedMangoldt_le_mass (A : ℝ) :
    weightedMangoldt ⌊Real.exp (2 * A)⌋₊ ≤ mangoldtBaseline A := by
  change mangoldtLogPrefix (2 * A) ≤ mangoldtBaseline A
  rw [mangoldtLogPrefix_eq_sum, mangoldtBaseline]
  apply Finset.sum_le_sum
  intro n hn
  exact weightedMangoldt_term_le_coefficient (by
    have hn' := Finset.mem_Icc.mp hn
    omega)

/-- Full operator norm grows at least linearly, using only the weighted lower theorem. -/
theorem mangoldtInteraction_norm_lower {A : ℝ} (hA : 1 ≤ A) :
    2 * A - Real.log 2 - 1 ≤ ‖mangoldtInteraction A‖ := by
  have hx : 1 ≤ Real.exp (2 * A) := Real.one_le_exp_iff.mpr (by linarith)
  have hN : 1 ≤ ⌊Real.exp (2 * A)⌋₊ := (Nat.one_le_floor_iff _).mpr hx
  have hm := (weightedMangoldt_sub_log_bounds ⌊Real.exp (2 * A)⌋₊ hN).1
  have hf := (abs_le.mp (log_floor_error (Real.exp (2 * A)) hx)).1
  rw [Real.log_exp] at hf
  have hw := weightedMangoldt_le_mass A
  rw [mangoldtInteraction_norm_eq_mass]
  linarith

/-- The actual family admits no eventual uniform full operator-norm budget. -/
theorem mangoldtInteraction_norm_not_eventually_bounded :
    ¬ ∃ D : ℝ, 0 ≤ D ∧ ∃ R : ℝ, 1 ≤ R ∧
      ∀ A : ℝ, R ≤ A → ‖mangoldtInteraction A‖ ≤ D := by
  rintro ⟨D, _, R, hR, h⟩
  let A : ℝ := max R (D + Real.log 2 + 2)
  have hAR : R ≤ A := le_max_left _ _
  have hAD : D + Real.log 2 + 2 ≤ A := le_max_right _ _
  have hl := mangoldtInteraction_norm_lower (hR.trans hAR)
  have hu := h A hAR
  linarith

end FormalResearch.RiemannHypothesis.SourceMangoldtNorm
```
