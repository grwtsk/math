-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory.ArithmeticFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.FiniteHalfHarmonic.Variantf0997e52b4a4395bb0f8dc2b5387023cc29ad7e4b796b05fa93d6ca6f31e72f6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f0997e52b4a4395bb0f8dc2b5387023cc29ad7e4b796b05fa93d6ca6f31e72f6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.ArithmeticFunctions.SourceCorpus.FiniteHalfHarmonic.Variantf0997e52b4a4395bb0f8dc2b5387023cc29ad7e4b796b05fa93d6ca6f31e72f6","mathematical_subject":"NumberTheory.ArithmeticFunctions","original_sha256":"f0997e52b4a4395bb0f8dc2b5387023cc29ad7e4b796b05fa93d6ca6f31e72f6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/actual-centered-half-harmonic/attempt01-source.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualAdjointColumnTrace
import Mathlib.NumberTheory.ArithmeticFunction.Misc

/-!
The actual closed centered-beta half inventory is expanded through the original
short-divisor mean and finite square-root harmonic sums. The literal Vaughan
beta sign and closed unit are retained; no critical Moebius bound is assumed.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.FiniteHalfHarmonic.Variantf0997e52b4a4395bb0f8dc2b5387023cc29ad7e4b796b05fa93d6ca6f31e72f6

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualCenteredHalfHarmonic
open ArithmeticFunction
open scoped BigOperators
open SourceActualAdjointColumnTrace SourceActualLogColumnTransport
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateVaughanIdentity EstimateBetaCentering
noncomputable section

/-- The finite harmonic sum uses every closed positive integer, including one. -/
def finiteHalfHarmonic (L : ℕ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 L, 1 / Real.sqrt (n : ℝ)

/-- The actual short Moebius half inventory keeps all signs and the closed cutoff. -/
def actualCriticalMoebiusHalf (U : ℕ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) / Real.sqrt (d : ℝ)

/-- The generic closed centered-beta half inventory preserves the original coefficient. -/
def closedCenteredHalfInventory (U L : ℕ) : ℝ :=
  ∑ n ∈ Finset.Ioc U L, centeredBeta U n / Real.sqrt (n : ℝ)

private def halfMoebius : ArithmeticFunction ℝ :=
  ⟨fun n => (moebius n : ℝ) / Real.sqrt (n : ℝ), by simp⟩

private def halfOne : ArithmeticFunction ℝ :=
  ⟨fun n => 1 / Real.sqrt (n : ℝ), by simp⟩

private theorem weighted_short_convolution (U n : ℕ) (hn : 0 < n) :
    (shortPart U halfMoebius * halfOne) n =
      ((shortPart U (moebius : ArithmeticFunction ℝ) * zeta) n) /
        Real.sqrt (n : ℝ) := by
  classical
  simp only [ArithmeticFunction.mul_apply, Finset.sum_div]
  apply Finset.sum_congr rfl
  intro p hp
  have he := (Nat.mem_divisorsAntidiagonal.mp hp).1
  have hd : 0 < p.1 := Nat.pos_of_ne_zero (left_ne_zero_of_mul (he ▸ hn.ne'))
  have hm : 0 < p.2 := Nat.pos_of_ne_zero (right_ne_zero_of_mul (he ▸ hn.ne'))
  have hdR : 0 ≤ (p.1 : ℝ) := Nat.cast_nonneg _
  rw [shortPart_apply, shortPart_apply]
  dsimp only [halfMoebius, halfOne]
  rw [zeta_apply, if_neg (by omega : p.2 ≠ 0)]
  split_ifs
  · rw [← he, Nat.cast_mul, Real.sqrt_mul hdR]
    ring
  · simp

private theorem weighted_short_sum (U L : ℕ) (hUL : U ≤ L) :
    (∑ n ∈ Finset.Icc 1 L,
      ((shortPart U (moebius : ArithmeticFunction ℝ) * zeta) n) /
        Real.sqrt (n : ℝ)) =
      ∑ d ∈ Finset.Icc 1 U,
        (moebius d : ℝ) / Real.sqrt (d : ℝ) * finiteHalfHarmonic (L / d) := by
  have hc := ArithmeticFunction.sum_Ioc_mul_eq_sum_sum
    (shortPart U halfMoebius) halfOne L
  rw [← Finset.Icc_add_one_left_eq_Ioc, ← Finset.Icc_add_one_left_eq_Ioc] at hc
  have hl : (∑ n ∈ Finset.Icc 1 L,
      ((shortPart U (moebius : ArithmeticFunction ℝ) * zeta) n) /
        Real.sqrt (n : ℝ)) = ∑ n ∈ Finset.Icc 1 L,
          (shortPart U halfMoebius * halfOne) n := by
    apply Finset.sum_congr rfl
    intro n hn
    exact (weighted_short_convolution U n (by have := (Finset.mem_Icc.mp hn).1; omega)).symm
  rw [hl, hc]
  have he : (∑ d ∈ Finset.Icc 1 L, shortPart U halfMoebius d *
      ∑ m ∈ Finset.Icc 1 (L / d), halfOne m) =
      ∑ d ∈ Finset.Icc 1 L,
        if d ≤ U then (moebius d : ℝ) / Real.sqrt (d : ℝ) *
          finiteHalfHarmonic (L / d) else 0 := by
    apply Finset.sum_congr rfl
    intro d _
    simp [shortPart_apply, halfMoebius, halfOne, finiteHalfHarmonic, ite_mul]
  rw [he, ← Finset.sum_filter]
  congr 1
  ext d
  simp only [Finset.mem_filter, Finset.mem_Icc]
  omega

/-- The actual positive centered inventory has the source sign and a retained plus unit. -/
theorem closedCenteredHalfInventory_eq_finite_harmonics
    (U L : ℕ) (hU : 1 ≤ U) (hUL : U ≤ L) :
    closedCenteredHalfInventory U L =
      alpha U * finiteHalfHarmonic L -
        (∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) / Real.sqrt (d : ℝ) *
          finiteHalfHarmonic (L / d)) + 1 - alpha U * finiteHalfHarmonic U := by
  have hfull : (∑ n ∈ Finset.Icc 1 L, beta U n / Real.sqrt (n : ℝ)) =
      1 - ∑ d ∈ Finset.Icc 1 U,
        (moebius d : ℝ) / Real.sqrt (d : ℝ) * finiteHalfHarmonic (L / d) := by
    have hc := weighted_short_sum U L hUL
    have hn (n : ℕ) : beta U n =
        (if n = 1 then (1 : ℝ) else 0) -
          (shortPart U (moebius : ArithmeticFunction ℝ) * zeta) n := by
      rw [beta_eq_long_convolution, longPart, sub_mul, coe_moebius_mul_coe_zeta]
      simp only [ArithmeticFunction.sub_apply, ArithmeticFunction.one_apply]
    simp_rw [hn, sub_div, Finset.sum_sub_distrib]
    rw [hc]
    have he : (∑ n ∈ Finset.Icc 1 L,
        (if n = 1 then (1 : ℝ) else 0) / Real.sqrt (n : ℝ)) = 1 := by
      simp [ite_div, hU.trans hUL]
    rw [he]
  have hshort : (∑ n ∈ Finset.Icc 1 U, beta U n / Real.sqrt (n : ℝ)) = 0 := by
    apply Finset.sum_eq_zero
    intro n hn
    rw [beta_zero_of_le U n (Finset.mem_Icc.mp hn).2, zero_div]
  have hsplit := Finset.sum_Ioc_consecutive
    (fun n => beta U n / Real.sqrt (n : ℝ)) (Nat.zero_le U) hUL
  rw [← Finset.Icc_add_one_left_eq_Ioc, ← Finset.Icc_add_one_left_eq_Ioc,
    hshort, zero_add, hfull] at hsplit
  have hh := Finset.sum_Ioc_consecutive
    (fun n : ℕ => 1 / Real.sqrt (n : ℝ)) (Nat.zero_le U) hUL
  rw [← Finset.Icc_add_one_left_eq_Ioc, ← Finset.Icc_add_one_left_eq_Ioc] at hh
  unfold closedCenteredHalfInventory
  simp_rw [centeredBeta, add_div]
  rw [Finset.sum_add_distrib, hsplit, ← Finset.mul_sum]
  unfold finiteHalfHarmonic
  nlinarith [congrArg (fun x : ℝ => alpha U * x) hh]

/-- The original natural-quotient closed inventory is the same positive harmonic formula. -/
theorem actualCenteredColumnHalfInventory_eq_finite_harmonics {A : ℝ} (hA : 1 ≤ A) :
    actualCenteredColumnHalfInventory A =
      alpha (vaughanCutoff A) *
        finiteHalfHarmonic (sourceKernelCutoff A / (vaughanCutoff A + 1) - 1) -
        (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), (moebius d : ℝ) / Real.sqrt (d : ℝ) *
          finiteHalfHarmonic ((sourceKernelCutoff A / (vaughanCutoff A + 1) - 1) / d)) +
        1 - alpha (vaughanCutoff A) * finiteHalfHarmonic (vaughanCutoff A) := by
  have hK := actual_column_window_nonempty hA
  exact closedCenteredHalfInventory_eq_finite_harmonics _ _
    (vaughanCutoff_pos A hA) (by omega)

end
end FormalResearch.RiemannHypothesis.SourceActualCenteredHalfHarmonic
