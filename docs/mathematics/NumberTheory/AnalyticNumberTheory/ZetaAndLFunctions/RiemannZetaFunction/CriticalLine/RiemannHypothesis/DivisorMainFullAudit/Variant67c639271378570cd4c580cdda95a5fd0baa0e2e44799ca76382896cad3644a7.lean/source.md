# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.DivisorMainFullAudit.Variant67c639271378570cd4c580cdda95a5fd0baa0e2e44799ca76382896cad3644a7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bab73e5be4570edc15210578a85b33a24f1095cf` · SHA-256 `a0614d64725d429dd71ca7bafe996aae58da2ef5e0b0da87efb289bf5faabf81`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.DivisorRemainderCore.Variant2035621161fdf21e4442711de1f981023e0443e56ff15bc3538555d88adfc45b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2035621161fdf21e4442711de1f981023e0443e56ff15bc3538555d88adfc45b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.DivisorRemainderCore.Variant2035621161fdf21e4442711de1f981023e0443e56ff15bc3538555d88adfc45b","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"2035621161fdf21e4442711de1f981023e0443e56ff15bc3538555d88adfc45b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/damped-divisor-core/divisor-main-full-audit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.TruncatedDivisorResidual
import FormalResearch.RiemannHypothesis.SourceComparison.CoreTailSplit
import FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorTaylor
import FormalResearch.RiemannHypothesis.SourceComparison.SourceWeightedMultiplier
import FormalResearch.RiemannHypothesis.SourceComparison.FullLinePlancherel
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic
/-! Genuine L2 admission of the exact quadratic divisor-prefix remainder before source filtering. -/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.DivisorRemainderCore.Variant2035621161fdf21e4442711de1f981023e0443e56ff15bc3538555d88adfc45b

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorRemainderNorm
open MeasureTheory Set Complex
open FormalResearch.RiemannHypothesis.SourceComparison
open DampedDivisorCoefficient DampedDivisorTaylor SourceWeightedMultiplier HalfLineExtension
noncomputable section

/-- The original finite divisor-prefix Taylor remainder, cut in logarithmic time before filtering. -/
def divisorRemainderCore (ε Y u : ℝ) : ℂ :=
  (Icc (0 : ℝ) (Real.log Y)).indicator
    (fun u : ℝ => (Real.exp (-u / 2) : ℂ) *
      (((∑ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊, dampedDivisorCoefficient ε n) - 1 -
        ε * ∑ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊, ArithmeticFunction.vonMangoldt n : ℝ) : ℂ)) u

private theorem divisorRemainderCore_measurable (ε Y : ℝ) :
    Measurable (divisorRemainderCore ε Y) := by
  have hm : Measurable (fun u : ℝ =>
      (∑ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊, dampedDivisorCoefficient ε n) - 1 -
        ε * ∑ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊, ArithmeticFunction.vonMangoldt n) :=
    (measurable_from_nat (f := fun N : ℕ =>
      (∑ n ∈ Finset.Icc 1 N, dampedDivisorCoefficient ε n) - 1 -
        ε * ∑ n ∈ Finset.Icc 1 N, ArithmeticFunction.vonMangoldt n)).comp
      (Nat.measurable_floor.comp Real.measurable_exp)
  exact ((Complex.measurable_ofReal.comp (by fun_prop)).mul
    (Complex.measurable_ofReal.comp hm)).indicator measurableSet_Icc

private theorem divisorRemainderCore_sq_le (ε : ℝ) (hε : 0 ≤ ε)
    (Y : ℝ) (_hY : 1 ≤ Y) (u : ℝ) :
    ‖divisorRemainderCore ε Y u‖ ^ 2 ≤
      (Icc (0 : ℝ) (Real.log Y)).indicator
        (fun u : ℝ => ε ^ 4 * Real.exp u * (Real.log Y) ^ 4) u := by
  by_cases hu : u ∈ Icc (0 : ℝ) (Real.log Y)
  · rw [divisorRemainderCore, indicator_of_mem hu, indicator_of_mem hu,
      norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_of_pos (Real.exp_pos _),
      Complex.norm_real, Real.norm_eq_abs]
    have he := dampedDivisorCoefficient_real_prefix_first_order ε hε (Real.exp u)
      (Real.one_le_exp_iff.mpr hu.1)
    rw [Real.log_exp] at he
    have hsq := pow_le_pow_left₀ (abs_nonneg _) he 2
    have hexp : Real.exp (-u / 2) ^ 2 * Real.exp u ^ 2 = Real.exp u := by
      rw [← mul_pow, ← Real.exp_add, pow_two, ← Real.exp_add]
      congr 1
      ring
    have hlog : u ^ 4 ≤ Real.log Y ^ 4 := pow_le_pow_left₀ hu.1 hu.2 4
    calc
      _ ≤ Real.exp (-u / 2) ^ 2 * (ε ^ 2 * Real.exp u * u ^ 2) ^ 2 := by
        rw [mul_pow]
        exact mul_le_mul_of_nonneg_left hsq (sq_nonneg _)
      _ = ε ^ 4 * Real.exp u * u ^ 4 := by
        calc
          _ = ε ^ 4 * (Real.exp (-u / 2) ^ 2 * Real.exp u ^ 2) * u ^ 4 := by ring
          _ = _ := by rw [hexp]
      _ ≤ _ := mul_le_mul_of_nonneg_left hlog (by positivity)
  · simp [divisorRemainderCore, hu]

private theorem remainderMajorant_integrable (ε Y : ℝ) :
    Integrable ((Icc (0 : ℝ) (Real.log Y)).indicator
      (fun u : ℝ => ε ^ 4 * Real.exp u * Real.log Y ^ 4)) :=
  ((show Continuous (fun u : ℝ => ε ^ 4 * Real.exp u * Real.log Y ^ 4) by
    fun_prop).continuousOn.integrableOn_compact isCompact_Icc).integrable_indicator measurableSet_Icc

/-- The exact finite-time quadratic remainder is genuinely admitted in full-line L2. -/
theorem divisorRemainderCore_memLp (ε : ℝ) (hε : 0 ≤ ε) (Y : ℝ) (hY : 1 ≤ Y) :
    MemLp (divisorRemainderCore ε Y) 2 volume := by
  apply (memLp_two_iff_integrable_sq_norm
    (divisorRemainderCore_measurable ε Y).aestronglyMeasurable).mpr
  apply (remainderMajorant_integrable ε Y).mono'
    ((divisorRemainderCore_measurable ε Y).norm.pow_const 2).aestronglyMeasurable
  filter_upwards [] with u
  rw [Real.norm_eq_abs, abs_of_nonneg (sq_nonneg _)]
  exact divisorRemainderCore_sq_le ε hε Y hY u

/-- The genuine full-line L2 vector represented by the original cut divisor-prefix remainder. -/
def divisorRemainderVector (ε : ℝ) (hε : 0 ≤ ε) (Y : ℝ) (hY : 1 ≤ Y) : FullH :=
  (divisorRemainderCore_memLp ε hε Y hY).toLp (divisorRemainderCore ε Y)

/-- Integrating the exact exponential majorant gives the square-root cutoff budget. -/
theorem divisorRemainderVector_norm_le (ε : ℝ) (hε : 0 ≤ ε) (Y : ℝ) (hY : 1 ≤ Y) :
    ‖divisorRemainderVector ε hε Y hY‖ ≤ ε ^ 2 * Real.sqrt (Y - 1) * Real.log Y ^ 2 := by
  have hm := divisorRemainderCore_memLp ε hε Y hY
  have hi := (memLp_two_iff_integrable_sq_norm hm.aestronglyMeasurable).mp hm
  have hb : (∫ u : ℝ, ‖divisorRemainderCore ε Y u‖ ^ 2) ≤
      ε ^ 4 * (Y - 1) * Real.log Y ^ 4 := by
    calc
      _ ≤ ∫ u : ℝ, (Icc (0 : ℝ) (Real.log Y)).indicator
          (fun u : ℝ => ε ^ 4 * Real.exp u * Real.log Y ^ 4) u :=
        integral_mono_ae hi (remainderMajorant_integrable ε Y)
          (Filter.Eventually.of_forall (divisorRemainderCore_sq_le ε hε Y hY))
      _ = _ := by
        rw [integral_indicator measurableSet_Icc, integral_mul_const, integral_const_mul,
          integral_Icc_eq_integral_Ioc, ← intervalIntegral.integral_of_le (Real.log_nonneg hY),
          integral_exp, Real.exp_log (by linarith : 0 < Y), Real.exp_zero]
  apply (sq_le_sq₀ (norm_nonneg _) (by positivity)).mp
  change ‖hm.toLp (divisorRemainderCore ε Y)‖ ^ 2 ≤ _
  rw [FullLinePlancherel.norm_sq_toLp]
  calc
    _ ≤ ε ^ 4 * (Y - 1) * Real.log Y ^ 4 := hb
    _ = _ := by rw [mul_pow, mul_pow, Real.sq_sqrt (by linarith : 0 ≤ Y - 1)]; ring

/-- The actual source multiplier preserves the admitted remainder's uniform quadratic budget. -/
theorem sourceMultiplier_divisorRemainder_norm_le (ε h : ℝ) (hε : 0 < ε)
    (hsmall : ε ≤ 1 / 4) (hh : 0 ≤ h) (Y : ℝ) (hY : 1 ≤ Y) :
    ‖sourceMultiplier ε h hε hsmall hh (divisorRemainderVector ε hε.le Y hY)‖ ≤
      ((4 / 3 : ℝ) * Real.exp (1 / 4)) *
        (ε ^ 2 * Real.sqrt (Y - 1) * Real.log Y ^ 2) :=
  (sourceMultiplier_norm_le ε h hε hsmall hh _).trans
    (mul_le_mul_of_nonneg_left (divisorRemainderVector_norm_le ε hε.le Y hY) (by positivity))

end
end FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorRemainderNorm


/-! Exact arithmetic main-core comparison, retaining every post-cutoff correction. -/
set_option autoImplicit false
namespace DivisorMainComparisonScratch
open MeasureTheory Set Finset Complex
open FormalResearch.RiemannHypothesis.SourceComparison
open TruncatedDivisorResidual DampedDivisorCoefficient DampedDivisorRemainderNorm
open MobiusFractionalResidual MobiusPoleNumerator FiniteMobiusController
open CoreTailSplit SourceWeightedMultiplier HalfLineExtension LogarithmicResidual
open LogarithmicResidualTail
noncomputable section

/-- The explicit arithmetic main term retains its prime-power prefix, every omitted divisor,
and the complete repeated endpoint correction. -/
def divisorMainResidual (X : ℕ) (ε x : ℝ) : ℂ :=
  (x : ℂ) * correctedNumerator X (1 / 2 + (ε : ℂ)) -
    (ε : ℂ) * ((∑ n ∈ Icc 1 ⌊x⌋₊, ArithmeticFunction.vonMangoldt n : ℝ) : ℂ) +
    ((∑ n ∈ Icc 1 ⌊x⌋₊,
      (dampedDivisorCoefficient ε n - truncatedDivisorCoefficient X ε n) : ℝ) : ℂ) +
    (((X : ℝ) * Real.exp (-ε * Real.log (X : ℝ)) * mobiusReciprocalSum X *
      (⌊x / (X : ℝ)⌋₊ : ℝ) : ℝ) : ℂ)

/-- The full original residual is the explicit main term minus the actual finite Taylor remainder.
This identity keeps the post-cutoff signed divisor difference and endpoint atom. -/
theorem arithmeticResidual_eq_main_sub_remainder (X : ℕ) (ε x : ℝ)
    (hX : 1 ≤ X) (hx : 1 ≤ x) :
    arithmeticResidual X ε x = divisorMainResidual X ε x -
      (((∑ n ∈ Icc 1 ⌊x⌋₊, dampedDivisorCoefficient ε n) - 1 -
        ε * ∑ n ∈ Icc 1 ⌊x⌋₊, ArithmeticFunction.vonMangoldt n : ℝ) : ℂ) := by
  rw [arithmeticResidual_eq_truncated_prefix X ε x hX hx]
  simp only [divisorMainResidual, sum_sub_distrib]
  push_cast
  ring

/-- The expanded arithmetic main term is cut in logarithmic time before source filtering. -/
def divisorMainCore (X : ℕ) (ε Y : ℝ) : ℝ → ℂ :=
  (Icc (0 : ℝ) (Real.log Y)).indicator
    (fun u : ℝ => (Real.exp (-u / 2) : ℂ) * divisorMainResidual X ε (Real.exp u))

private theorem mainCore_eq_add (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) (Y : ℝ) :
    divisorMainCore X ε Y =
      (Icc (0 : ℝ) (Real.log Y)).indicator (logResidual X ε) +
        divisorRemainderCore ε Y := by
  funext u
  by_cases hu : u ∈ Icc (0 : ℝ) (Real.log Y)
  · simp only [divisorMainCore, divisorRemainderCore, Pi.add_apply, indicator_of_mem hu,
      logResidual]
    rw [arithmeticResidual_eq_main_sub_remainder X ε (Real.exp u) hX
      (Real.one_le_exp_iff.mpr hu.1)]
    ring
  · simp only [divisorMainCore, divisorRemainderCore, Pi.add_apply, indicator_of_notMem hu,
      zero_add]

/-- Genuine full-line L2 admission follows from the actual source core and the proved remainder. -/
theorem divisorMainCore_memLp (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) (hε : 0 ≤ ε)
    (Y : ℝ) (hY : 1 ≤ Y) : MemLp (divisorMainCore X ε Y) 2 volume := by
  rw [mainCore_eq_add X ε hX Y]
  exact ((logResidual_memLp X ε hX).indicator measurableSet_Icc).add
    (divisorRemainderCore_memLp ε hε Y hY)

/-- The actual L2 vector represented by the fully expanded arithmetic main term
on the closed core. -/
def divisorMainVector (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) (hε : 0 ≤ ε)
    (Y : ℝ) (hY : 1 ≤ Y) : FullH :=
  (divisorMainCore_memLp X ε hX hε Y hY).toLp (divisorMainCore X ε Y)

private theorem mainVector_eq_add (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) (hε : 0 ≤ ε)
    (Y : ℝ) (hY : 1 ≤ Y) :
    divisorMainVector X ε hX hε Y hY =
      coreResidualVector X ε hX Y + divisorRemainderVector ε hε Y hY := by
  have hm : divisorMainVector X ε hX hε Y hY =ᵐ[volume] divisorMainCore X ε Y :=
    (divisorMainCore_memLp X ε hX hε Y hY).coeFn_toLp
  have hr : divisorRemainderVector ε hε Y hY =ᵐ[volume] divisorRemainderCore ε Y :=
    (divisorRemainderCore_memLp ε hε Y hY).coeFn_toLp
  apply Lp.ext
  filter_upwards [hm, hr, coreResidualVector_ae X ε hX Y,
    Lp.coeFn_add (coreResidualVector X ε hX Y) (divisorRemainderVector ε hε Y hY)]
    with u hm hr hc ha
  simp only [Pi.add_apply] at ha
  rw [hm, ha, hc, hr, mainCore_eq_add X ε hX Y]
  rfl

/-- Filtering the actual core and its expanded arithmetic main changes their norms by at most
the proved quadratic remainder budget, uniformly in the admitted filter parameters. -/
theorem filtered_core_main_norm_difference_le (X : ℕ) (ε : ℝ) (hX : 1 ≤ X)
    (h : ℝ) (hε : 0 < ε) (hsmall : ε ≤ 1 / 4) (hh : 0 ≤ h)
    (Y : ℝ) (hY : 1 ≤ Y) :
    |‖sourceMultiplier ε h hε hsmall hh (coreResidualVector X ε hX Y)‖ -
      ‖sourceMultiplier ε h hε hsmall hh (divisorMainVector X ε hX hε.le Y hY)‖| ≤
      ((4 / 3 : ℝ) * Real.exp (1 / 4)) *
        (ε ^ 2 * Real.sqrt (Y - 1) * Real.log Y ^ 2) := by
  let M : FullH →L[ℂ] FullH := sourceMultiplier ε h hε hsmall hh
  have he : M (coreResidualVector X ε hX Y) -
      M (divisorMainVector X ε hX hε.le Y hY) =
        -M (divisorRemainderVector ε hε.le Y hY) := by
    rw [mainVector_eq_add X ε hX hε.le Y hY, map_add]
    abel
  exact (abs_norm_sub_norm_le _ _).trans (by
    rw [he, norm_neg]
    exact sourceMultiplier_divisorRemainder_norm_le ε h hε hsmall hh Y hY)

end
end DivisorMainComparisonScratch

set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#check @DivisorMainComparisonScratch.divisorMainResidual
#print DivisorMainComparisonScratch.divisorMainResidual
#print axioms DivisorMainComparisonScratch.divisorMainResidual
#check @DivisorMainComparisonScratch.arithmeticResidual_eq_main_sub_remainder
#print DivisorMainComparisonScratch.arithmeticResidual_eq_main_sub_remainder
#print axioms DivisorMainComparisonScratch.arithmeticResidual_eq_main_sub_remainder
#check @DivisorMainComparisonScratch.divisorMainCore
#print DivisorMainComparisonScratch.divisorMainCore
#print axioms DivisorMainComparisonScratch.divisorMainCore
#check @DivisorMainComparisonScratch.divisorMainCore_memLp
#print DivisorMainComparisonScratch.divisorMainCore_memLp
#print axioms DivisorMainComparisonScratch.divisorMainCore_memLp
#check @DivisorMainComparisonScratch.divisorMainVector
#print DivisorMainComparisonScratch.divisorMainVector
#print axioms DivisorMainComparisonScratch.divisorMainVector
#check @DivisorMainComparisonScratch.filtered_core_main_norm_difference_le
#print DivisorMainComparisonScratch.filtered_core_main_norm_difference_le
#print axioms DivisorMainComparisonScratch.filtered_core_main_norm_difference_le
```
