-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualSourceCoupling.Variant1cc74967f834ede99c8c469d0ce782935cc04e2851ea2d240136751b83c7745a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1cc74967f834ede99c8c469d0ce782935cc04e2851ea2d240136751b83c7745a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualSourceCoupling.Variant1cc74967f834ede99c8c469d0ce782935cc04e2851ea2d240136751b83c7745a","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"1cc74967f834ede99c8c469d0ce782935cc04e2851ea2d240136751b83c7745a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/finite-lattice-arithmetic-gap-20261007/FormalResearch/PositiveAtlas/QuantitativeGapSourceSchur.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.QuantitativeGapSchur
import FormalResearch.PositiveAtlas.QuantitativeGapSourceMetric
import FormalResearch.RiemannHypothesis.SourceDivisorLatticeGram

/-!
# Quantitative Schur certificate for two literal source states

At `A=2`, the retained atoms `5` and `8` supply an actual two-state Gram packet.
Its mixed coefficient `C` satisfies `3287/84700 ≤ C < 1`. The quantitative
Feshbach theorem therefore supplies the strictly positive constant
`(1-C²)/(1+C)²` for this actual Gram matrix. This is an ordinary finite fixed-
source metric estimate, not a signed RH estimate or a regulator-uniform gap.

Originating direction and evaluation: grwtsk contributors.
Proof construction: OpenAI Codex; the quantitative lower mixed entry is from
the parallel arithmetic lane.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualSourceCoupling.Variant1cc74967f834ede99c8c469d0ce782935cc04e2851ea2d240136751b83c7745a

noncomputable section
set_option autoImplicit false

namespace FormalResearch.PositiveAtlas.QuantitativeGap.Source

open MeasureTheory Matrix
open scoped InnerProductSpace
open FormalResearch.RiemannHypothesis.SourceReflectionDuality
open FormalResearch.RiemannHypothesis.SourceArithmeticOrbit
open FormalResearch.RiemannHypothesis.SourceScaleL2Continuity
open FormalResearch.RiemannHypothesis.SourceMangoldtInteraction
open FormalResearch.RiemannHypothesis.SourcePrimeMomentScale
open FormalResearch.RiemannHypothesis.SourceDivisorLatticeGram
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization

/-- The actual stationary mixed entry at the two literal arithmetic shifts. -/
def actualSourceCoupling : ℝ := sourceCorrelation explicitSecondDerivative 2 (Real.log (8 / 5 : ℝ))

theorem actualSourceCoupling_pos : 0 < actualSourceCoupling :=
  actual_five_eight_gram_kernel_pos

/-- Distinct actual source translates improve the Cauchy bound to strictness. -/
theorem actualSourceCoupling_lt_one : actualSourceCoupling < 1 := by
  have hn := actual_five_eight_source_difference_norm_pos (originalSourceState 2)
    (originalSourceState_coe_ae (by norm_num))
  have hs := norm_sub_sq (𝕜 := ℂ)
    (translation (Real.log 5) (originalSourceState 2))
    (translation (Real.log 8) (originalSourceState 2))
  have hn' : 0 < ‖translation (Real.log 5) (originalSourceState 2) -
      translation (Real.log 8) (originalSourceState 2)‖ ^ 2 := by
    apply sq_pos_of_pos
    simpa only [orbitAtom, signedLog, Bool.false_eq_true, ↓reduceIte, Nat.cast_ofNat] using hn
  rw [(translation (Real.log 5)).norm_map, (translation (Real.log 8)).norm_map,
    originalSourceState_norm (by norm_num), translation_inner_stationary] at hs
  change _ = 1 ^ 2 - 2 *
    (⟪originalSourceState 2,
      translation (Real.log 8 - Real.log 5) (originalSourceState 2)⟫_ℂ).re + 1 ^ 2 at hs
  rw [← sourceCorrelation_eq_inner (by norm_num),
    ← Real.log_div (by norm_num : (8 : ℝ) ≠ 0) (by norm_num : (5 : ℝ) ≠ 0)] at hs
  change _ = 1 ^ 2 - 2 * actualSourceCoupling + 1 ^ 2 at hs
  linarith

/-- The full complex inner product is the real-valued literal source correlation. -/
theorem actualSourceCoupling_inner :
    ⟪translation (Real.log 5) (originalSourceState 2),
      translation (Real.log 8) (originalSourceState 2)⟫_ℂ = (actualSourceCoupling : ℂ) := by
  rw [translation_inner_stationary]
  let s : ℝ := Real.log 8 - Real.log 5
  have ht : translation s (originalSourceState 2) =ᵐ[volume]
      fun x => (normalizedTest explicitSecondDerivative 2 (x - s) : ℂ) := by
    filter_upwards [translation_coe_ae s (originalSourceState 2),
      (measurePreserving_sub_right volume s).quasiMeasurePreserving.ae
        (originalSourceState_coe_ae (A := 2) (by norm_num))] with x hx hy
    exact hx.trans hy
  have he : ⟪originalSourceState 2, translation s (originalSourceState 2)⟫_ℂ =
      ((sourceCorrelation explicitSecondDerivative 2 s : ℝ) : ℂ) := by
    rw [L2.inner_def]
    calc
      _ = ∫ x : ℝ, ((normalizedTest explicitSecondDerivative 2 x *
          normalizedTest explicitSecondDerivative 2 (x - s) : ℝ) : ℂ) := by
        apply integral_congr_ae
        filter_upwards [originalSourceState_coe_ae (A := 2) (by norm_num), ht] with x hx hy
        rw [hx, hy, RCLike.inner_apply']
        simp
      _ = _ := integral_complex_ofReal
  rw [he]
  congr 2
  exact (Real.log_div (by norm_num : (8 : ℝ) ≠ 0) (by norm_num : (5 : ℝ) ≠ 0)).symm

/-- The corresponding retained labels inside canonical four-channel synthesis. -/
def twoSourceIndex : Fin 1 ⊕ Fin 1 → OrbitIndex (longInventory 2) :=
  Sum.elim (fun _ => (false, false, ⟨5, five_mem_actual_long⟩))
    (fun _ => (false, false, ⟨8, eight_mem_actual_long⟩))

/-- This matrix is the literal restriction of the canonical actual source Gram matrix. -/
def twoSourceGram : Matrix (Fin 1 ⊕ Fin 1) (Fin 1 ⊕ Fin 1) ℂ :=
  fun i j => gramMatrix (originalSourceState 2) (longInventory 2)
    (twoSourceIndex i) (twoSourceIndex j)

/-- The actual mixed source entry as the one-dimensional complex coupling block. -/
def actualSourceCross : Matrix (Fin 1) (Fin 1) ℂ := fun _ _ => (actualSourceCoupling : ℂ)

theorem twoSourceGram_eq_block :
    twoSourceGram = fromBlocks 1 actualSourceCrossᴴ actualSourceCross 1 := by
  have hn : ‖originalSourceState 2‖ = 1 := originalSourceState_norm (by norm_num)
  have hreverse : ⟪translation (Real.log 8) (originalSourceState 2),
      translation (Real.log 5) (originalSourceState 2)⟫_ℂ = (actualSourceCoupling : ℂ) := by
    rw [← inner_conj_symm, actualSourceCoupling_inner, Complex.conj_ofReal]
  ext i j
  cases i <;> cases j <;> rename_i i j <;> fin_cases i <;> fin_cases j
  all_goals simp [twoSourceGram, twoSourceIndex, gramMatrix, orbitGenerator, orbitAtom,
    signedLog, Matrix.fromBlocks, actualSourceCross, inner_self_eq_norm_sq_to_K,
    hn, actualSourceCoupling_inner, hreverse]

/-- The unit one-dimensional complex block has its canonical inverse. -/
local instance actualSourceOneInvertible :
    Invertible (1 : Matrix (Fin 1) (Fin 1) ℂ) := invertibleOne

theorem actualSourceCross_margin (x : Fin 1 → ℂ) :
    hermitianEnergy (normalizedCoupling (1 : Matrix (Fin 1) (Fin 1) ℂ)
      actualSourceCross 1) x = actualSourceCoupling ^ 2 * ‖WithLp.toLp 2 x‖ ^ 2 := by
  have hmatrix : normalizedCoupling (1 : Matrix (Fin 1) (Fin 1) ℂ)
      actualSourceCross 1 = (actualSourceCoupling ^ 2 : ℝ) • (1 : Matrix (Fin 1) (Fin 1) ℂ) := by
    ext i j
    fin_cases i
    fin_cases j
    simp [normalizedCoupling, actualSourceCross, Matrix.mul_apply, pow_two, Complex.real_smul]
  rw [hmatrix, ← hermitianEnergy_one]
  simp only [hermitianEnergy, Matrix.smul_mulVec, Matrix.one_mulVec]
  rw [dotProduct_smul (actualSourceCoupling ^ 2) (star x) x, Complex.smul_re, smul_eq_mul]

theorem actualSourceCross_norm (x : Fin 1 → ℂ) :
    ‖WithLp.toLp 2 (((⅟(1 : Matrix (Fin 1) (Fin 1) ℂ)) * actualSourceCross).mulVec x)‖ ≤
      actualSourceCoupling * ‖WithLp.toLp 2 x‖ := by
  have hm : ((⅟(1 : Matrix (Fin 1) (Fin 1) ℂ)) * actualSourceCross).mulVec x =
      (actualSourceCoupling : ℂ) • x := by
    ext i
    fin_cases i
    simp [actualSourceCross, Matrix.mulVec, dotProduct]
  rw [hm, WithLp.toLp_smul, norm_smul, Complex.norm_real, Real.norm_eq_abs,
    abs_of_pos actualSourceCoupling_pos]

/-- The finite source margin is strictly positive at its stated fixed scale. -/
def actualSourceGap : ℝ := (1 - actualSourceCoupling ^ 2) / (1 + actualSourceCoupling) ^ 2

theorem actualSourceGap_pos : 0 < actualSourceGap := by
  have hp := actualSourceCoupling_pos
  have hu := actualSourceCoupling_lt_one
  have hη : 0 < 1 - actualSourceCoupling ^ 2 := by
    have h := mul_pos (by linarith : 0 < 1 - actualSourceCoupling)
      (by linarith : 0 < 1 + actualSourceCoupling)
    nlinarith
  exact div_pos hη (sq_pos_of_pos (by linarith))

/-- Actual-source application of the quantitative Schur theorem, with all new
directions of this two-state Gram packet included. Scope: `A=2`, atoms `5,8`. -/
theorem actual_two_source_gram_coercive (x y : Fin 1 → ℂ) :
    actualSourceGap * (‖WithLp.toLp 2 x‖ ^ 2 + ‖WithLp.toLp 2 y‖ ^ 2) ≤
      hermitianEnergy twoSourceGram (Sum.elim x y) := by
  have hp := actualSourceCoupling_pos
  have hu := actualSourceCoupling_lt_one
  have hη : 0 < 1 - actualSourceCoupling ^ 2 := by
    have h := mul_pos (by linarith : 0 < 1 - actualSourceCoupling)
      (by linarith : 0 < 1 + actualSourceCoupling)
    nlinarith
  have hη1 : 1 - actualSourceCoupling ^ 2 ≤ 1 := by nlinarith [sq_nonneg actualSourceCoupling]
  have h := normalized_feshbach_coercive (1 : Matrix (Fin 1) (Fin 1) ℂ) 1 actualSourceCross 1
    Matrix.isHermitian_one 1 (1 - actualSourceCoupling ^ 2) 1 actualSourceCoupling
    (by norm_num) hη (by norm_num) hp.le (by simp)
    (fun z => by rw [hermitianEnergy_one]; simp)
    (fun z => by rw [hermitianEnergy_one]; simp)
    (fun z => by rw [actualSourceCross_margin]; exact le_of_eq (by ring))
    actualSourceCross_norm x y
  rw [← twoSourceGram_eq_block] at h
  simpa only [one_mul, min_eq_left hη1, actualSourceGap] using h

end FormalResearch.PositiveAtlas.QuantitativeGap.Source
