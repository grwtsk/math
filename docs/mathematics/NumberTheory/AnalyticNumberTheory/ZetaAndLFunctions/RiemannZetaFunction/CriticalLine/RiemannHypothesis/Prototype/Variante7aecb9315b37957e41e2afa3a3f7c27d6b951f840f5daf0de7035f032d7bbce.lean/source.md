# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Prototype.Variante7aecb9315b37957e41e2afa3a3f7c27d6b951f840f5daf0de7035f032d7bbce

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `74c5c515d776c154fbf569d784913f7bbc555732` · SHA-256 `2682221a8e38bd18af31e784dbc4ad9e241dbb163c29312eb327d3e57265671f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CriticalPrimeTestSubOneEqPhasePrefix.Variant11d9527f3c2d9c0350ffbe146bd771b4cc75af017c2bd8e4f6108138ff1a2171","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"11d9527f3c2d9c0350ffbe146bd771b4cc75af017c2bd8e4f6108138ff1a2171","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.CriticalPrimeTestSubOneEqPhasePrefix.Variant11d9527f3c2d9c0350ffbe146bd771b4cc75af017c2bd8e4f6108138ff1a2171","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"11d9527f3c2d9c0350ffbe146bd771b4cc75af017c2bd8e4f6108138ff1a2171","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle14/phase-mass-ftc/attempt-02/Prototype.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourcePairedTailPrimeBlock

/-!
# Actual source derivative-phase mass from the FTC

This private unit retains the literal critical prime test and its two derivative
phases. A point of the actual source gives an exponential lower bound for phase
mass. No prime error, arithmetic state, operator error, or RH estimate is bounded
by that mass, and no Hilbert phase representation is constructed here.

AI attribution: developed with OpenAI Codex; Lean checks the proof terms.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CriticalPrimeTestSubOneEqPhasePrefix.Variant11d9527f3c2d9c0350ffbe146bd771b4cc75af017c2bd8e4f6108138ff1a2171

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourcePhaseMassFTC

open MeasureTheory
open scoped Interval
open SourcePairedPrimeWork SourceFirstPrimeAbel SourcePairedTailPrimeBlock
open SourcePairedTailTest

/-- The literal normalized source endpoint is retained in this exact prefix FTC. -/
theorem criticalPrimeTest_sub_one_eq_phase_prefix {A : ℝ} (hA : 1 ≤ A) (u : ℝ) :
    criticalPrimeTest A u - 1 =
      (∫ t in 0..u, positiveSlope A t) - (∫ t in 0..u, negativeSlope A t) := by
  have hp : 0 < A := by linarith
  rw [← intervalIntegral.integral_sub
    ((positiveSlope_continuous hp).intervalIntegrable _ _)
    ((negativeSlope_continuous hp).intervalIntegrable _ _)]
  simp_rw [slope_difference]
  rw [intervalIntegral.integral_deriv_eq_sub
    (fun t _ => ((criticalPrimeTest_contDiff A hp).differentiable (by norm_num) t))
    ((criticalPrimeTest_contDiff A hp).continuous_deriv_one.intervalIntegrable _ _),
    criticalPrimeTest_at_zero A hA]

/-- Restricting the nonnegative positive phase to an initial subinterval loses no mass. -/
theorem positive_phase_prefix_le_mass {A u : ℝ} (hA : 1 ≤ A)
    (hu : u ∈ Set.Icc 0 (2 * A)) :
    (∫ t in 0..u, positiveSlope A t) ≤ positiveMass A := by
  have hp : 0 < A := by linarith
  have hr : 0 ≤ ∫ t in u..2 * A, positiveSlope A t :=
    intervalIntegral.integral_nonneg hu.2 (fun t _ => positiveSlope_nonneg A t)
  have hadd := intervalIntegral.integral_add_adjacent_intervals (μ := volume)
    ((positiveSlope_continuous hp).intervalIntegrable 0 u)
    ((positiveSlope_continuous hp).intervalIntegrable u (2 * A))
  change (∫ t in 0..u, positiveSlope A t) ≤ ∫ t in 0..2 * A, positiveSlope A t
  linarith

/-- A source value controls phase mass before any arithmetic error is introduced. -/
theorem positiveMass_ge_criticalPrimeTest_sub_one {A u : ℝ} (hA : 1 ≤ A)
    (hu : u ∈ Set.Icc 0 (2 * A)) : criticalPrimeTest A u - 1 ≤ positiveMass A := by
  have hn : 0 ≤ ∫ t in 0..u, negativeSlope A t :=
    intervalIntegral.integral_nonneg hu.1 (fun t _ => negativeSlope_nonneg A t)
  have hf := criticalPrimeTest_sub_one_eq_phase_prefix hA u
  have hm := positive_phase_prefix_le_mass hA hu
  linarith

/-- The existing five-over-A source bound controls this literal early source point. -/
theorem criticalPrimeTest_early_point_ge {A : ℝ} (hA : 1 ≤ A) :
    (7 / 8 : ℝ) * Real.exp (A / 80) ≤ criticalPrimeTest A (A / 40) := by
  have hc := earlyCorrelation_ge hA (show 0 ≤ A / 40 by linarith) (le_refl (A / 40))
  unfold criticalPrimeTest
  have hm := mul_le_mul_of_nonneg_left hc (Real.exp_pos ((A / 40) / 2)).le
  rw [show (A / 40) / 2 = A / 80 by ring] at hm
  simpa only [mul_comm] using hm

/-- Exponential phase-mass growth follows from the unchanged source, for every A at least one. -/
theorem positiveMass_ge_early_exponential {A : ℝ} (hA : 1 ≤ A) :
    (7 / 8 : ℝ) * Real.exp (A / 80) - 1 ≤ positiveMass A := by
  have hu : A / 40 ∈ Set.Icc 0 (2 * A) := by constructor <;> linarith
  have hp := positiveMass_ge_criticalPrimeTest_sub_one hA hu
  have hg := criticalPrimeTest_early_point_ge hA
  linarith

/-- The negative derivative mass has the exact extra endpoint one. -/
theorem negativeMass_ge_early_exponential {A : ℝ} (hA : 1 ≤ A) :
    (7 / 8 : ℝ) * Real.exp (A / 80) ≤ negativeMass A := by
  rw [negativeMass_eq_positive_add_one hA]
  linarith [positiveMass_ge_early_exponential hA]

/-- Both derivative magnitudes grow, without asserting a sign for their arithmetic work. -/
theorem criticalPrimeTest_variation_ge_early_exponential {A : ℝ} (hA : 1 ≤ A) :
    (7 / 4 : ℝ) * Real.exp (A / 80) - 1 ≤
      ∫ t in 0..2 * A, |deriv (criticalPrimeTest A) t| := by
  rw [variation_eq_twice_positive_add_one hA]
  linarith [positiveMass_ge_early_exponential hA]

/-- The paired tail test has a different endpoint budget, with variation exactly twice P. -/
theorem pairedTailTest_variation_ge_early_exponential {A : ℝ} (hA : 1 ≤ A) :
    (7 / 4 : ℝ) * Real.exp (A / 80) - 2 ≤
      ∫ t in 0..2 * A, |deriv (pairedTailTest A) t| := by
  rw [pairedTailTest_variation_eq hA]
  linarith [positiveMass_ge_early_exponential hA]

/-- A weaker explicit linear bound makes the absence of a uniform phase-mass budget constructive. -/
theorem positiveMass_ge_linear {A : ℝ} (hA : 1 ≤ A) :
    7 * A / 640 - (1 / 8 : ℝ) ≤ positiveMass A := by
  have he := Real.add_one_le_exp (A / 80)
  have hp := positiveMass_ge_early_exponential hA
  linarith

/-- An eventual upper bound on this source phase mass is impossible; no work bound follows. -/
theorem positiveMass_not_eventually_bounded :
    ¬ ∃ B R : ℝ, ∀ A : ℝ, 1 ≤ A → R ≤ A → positiveMass A ≤ B := by
  rintro ⟨B, R, h⟩
  let A : ℝ := max 1 (max R ((640 / 7) * (B+1)))
  have hA : 1 ≤ A := le_max_left _ _
  have hR : R ≤ A := (le_max_left _ _).trans (le_max_right _ _)
  have hB : (640 / 7) * (B+1) ≤ A := (le_max_right _ _).trans (le_max_right _ _)
  have hl := positiveMass_ge_linear hA
  have hu := h A hA hR
  linarith

end FormalResearch.RiemannHypothesis.SourcePhaseMassFTC
```
