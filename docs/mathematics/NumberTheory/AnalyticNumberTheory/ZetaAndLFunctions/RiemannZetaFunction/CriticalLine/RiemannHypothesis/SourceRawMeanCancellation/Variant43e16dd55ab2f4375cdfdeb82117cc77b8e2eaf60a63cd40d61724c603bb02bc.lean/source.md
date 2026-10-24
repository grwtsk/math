# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceRawMeanCancellation.Variant43e16dd55ab2f4375cdfdeb82117cc77b8e2eaf60a63cd40d61724c603bb02bc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2f2af9d36ee15a8fa850a7c7baf27c81460b44df` · SHA-256 `bcd7223829eb257d37ba5e69e0825b191ed73e129783c96c41fa6897f0f4bd55`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RawIndependentMainAt.Variant6a7b315dcc2cb1784197440ea46598acb945abd5f1464084d0dbd6f4f66c76b7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6a7b315dcc2cb1784197440ea46598acb945abd5f1464084d0dbd6f4f66c76b7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.RawIndependentMainAt.Variant6a7b315dcc2cb1784197440ea46598acb945abd5f1464084d0dbd6f4f66c76b7","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"6a7b315dcc2cb1784197440ea46598acb945abd5f1464084d0dbd6f4f66c76b7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-tandem-01a1149a/refocus-20261007/mean-audit/pins/SourceRawMeanCancellation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceLargePrimeDiagonal
import FormalResearch.RiemannHypothesis.SourceDiagonalMainTerm

/-!
Exact cancellation of the actual global centering against its fixed source main,
then the actual first-prime physical diagonal against that same linear main.
Direction and conceptual origin: grwtsk contributors.
Source calculation, native construction and applications: OpenAI Codex assistance.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RawIndependentMainAt.Variant6a7b315dcc2cb1784197440ea46598acb945abd5f1464084d0dbd6f4f66c76b7

set_option autoImplicit false
noncomputable section
namespace RH16RawMeanCancellation
open scoped BigOperators InnerProductSpace
open RH16LargePrimeDiagonal RH16MangoldtPrimeDisclosure
open RH16Tandem.SourcePrimeDisclosure
open FormalResearch.RiemannHypothesis.SourceArithmeticOrbit
open FormalResearch.RiemannHypothesis.SourceReflectionDuality
open FormalResearch.RiemannHypothesis.SourceWeightedOrbitAdapter
open FormalResearch.RiemannHypothesis.SourceCutoffFlux
open FormalResearch.RiemannHypothesis.SourceCompensatedReadout
open FormalResearch.RiemannHypothesis.SourceDiagonalPrimeAbel
open FormalResearch.RiemannHypothesis.SourceDiagonalMainTerm
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateBetaCentering EstimateVaughanSource
open EstimateVaughanIdentity EstimateSourceMobiusKernel EstimateMertensAbel

/-- The literal part of the independently fixed source main left after exact mean cancellation. -/
def rawIndependentMainAt (A : ℝ) (U : ℕ) : ℝ :=
  diagonalMainCoefficient A * A - Real.log (U : ℝ) - shortMangoldtAt A U -
    shortLogSamplingAt A U + shortPlainSamplingAt A U

def rawCoefficient (U n : ℕ) : ℂ := ((beta U n / Real.sqrt (n : ℝ) : ℝ) : ℂ)

def rawPrimeFirstDiagonal (A : ℝ) : ℝ :=
  -(∑ p ∈ (Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A)).filter Nat.Prime,
    Real.log (p : ℝ) / (p : ℝ) * sourceCorrelation explicitSecondDerivative A
      (2 * Real.log (p : ℝ)))

def rawPrimeLinearMain (A : ℝ) : ℝ :=
  -diagonalMainCoefficient A * A + Real.log (vaughanCutoff A : ℝ)

/-- All raw off-diagonal power work stays signed; the first-prime diagonal is restored exactly. -/
def rawPrimeCorrectedAt (A : ℝ) : ℝ :=
  uncenteredOffAt A (vaughanCutoff A) (sourceKernelCutoff A) + rawPrimeFirstDiagonal A +
    shortMangoldtAt A (vaughanCutoff A) + shortLogSamplingAt A (vaughanCutoff A) -
      shortPlainSamplingAt A (vaughanCutoff A)

theorem mainTermAt_mean_recovery (A : ℝ) (U N : ℕ) :
    mainTermAt A U N = alpha U * plainOffAt A U N + rawIndependentMainAt A U := by
  unfold mainTermAt rawIndependentMainAt
  ring

theorem jointAt_global_mean_cancels (A : ℝ) (U N : ℕ) :
    jointAt A U N = uncenteredOffAt A U N - rawIndependentMainAt A U := by
  rw [jointAt, centeredOffAt_eq_uncentered_add_mean, mainTermAt_mean_recovery]
  ring

theorem readoutAt_global_mean_cancels (A : ℝ) (hA : 0 < A) (U N : ℕ) :
    readoutAt A hA U N = uncenteredOffAt A U N - rawIndependentMainAt A U := by
  rw [readoutAt_eq_jointAt, jointAt_global_mean_cancels]

theorem raw_beta_of_minFac_gt (U n : ℕ) (hU : 1 ≤ U) (hn : U < n)
    (hmin : U < n.minFac) : beta U n = -1 := by
  rw [beta_eq_centered_sub_alpha, centeredBeta_of_minFac_gt U n hU hn hmin]
  ring

theorem raw_beta_at_large_prime_power (U p k : ℕ) (hU : 1 ≤ U)
    (hp : p.Prime) (hUp : U < p) (hk : 0 < k) : beta U (p ^ k) = -1 := by
  rw [beta_eq_centered_sub_alpha, centeredBeta_at_large_prime_power U p k hU hp hUp hk]
  ring

theorem raw_large_prime_physical_diagonal (q : ComplexL2) (U N p : ℕ)
    (hU : 1 ≤ U) (hUp : U < p) :
    physicalDiagonal q (Finset.Ioc U N) (freshMangoldtRow p) (rawCoefficient U) =
      -physicalDiagonal q (Finset.Ioc U N) (freshMangoldtRow p)
        (fun n => ((1 / Real.sqrt (n : ℝ) : ℝ) : ℂ)) := by
  have hs : ∀ n ∈ Finset.Ioc U N,
      star (freshMangoldtRow p n) * rawCoefficient U n =
        -(star (freshMangoldtRow p n) * ((1 / Real.sqrt (n : ℝ) : ℝ) : ℂ)) := by
    intro n hn
    by_cases hnp : n.minFac = p
    · have hb := raw_beta_of_minFac_gt U n hU (Finset.mem_Ioc.mp hn).1
        (by simpa only [hnp] using hUp)
      unfold rawCoefficient
      rw [hb]
      push_cast
      ring
    · simp only [freshMangoldtRow, if_neg hnp, star_zero, zero_mul, neg_zero]
  unfold physicalDiagonal
  have he : (∑ n ∈ Finset.Ioc U N, star (freshMangoldtRow p n) * rawCoefficient U n *
      ⟪orbitAtom q false false n, reflection (orbitAtom q false false n)⟫_ℂ) =
      -(∑ n ∈ Finset.Ioc U N, star (freshMangoldtRow p n) *
        ((1 / Real.sqrt (n : ℝ) : ℝ) : ℂ) *
          ⟪orbitAtom q false false n, reflection (orbitAtom q false false n)⟫_ℂ) := by
    rw [← Finset.sum_neg_distrib]
    apply Finset.sum_congr rfl
    intro n hn
    rw [hs n hn]
    ring
  rw [he, Complex.neg_re]

theorem raw_first_diagonal_eq_retained (A : ℝ) (hA : 1 ≤ A) :
    rawPrimeFirstDiagonal A = retainedPrimeDiagonal A := by
  classical
  have hA0 : 0 < A := by linarith
  have hupper : ⌊Real.exp A⌋₊ ≤ sourceKernelCutoff A := by
    unfold sourceKernelCutoff sourceUpper
    exact Nat.floor_le_floor (Real.exp_le_exp.mpr (by linarith))
  have hsub : (Finset.Ioc (vaughanCutoff A) ⌊Real.exp A⌋₊).filter Nat.Prime ⊆
      (Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A)).filter Nat.Prime := by
    intro p hp
    rcases Finset.mem_filter.mp hp with ⟨hi, hprime⟩
    exact Finset.mem_filter.mpr ⟨Finset.mem_Ioc.mpr
      ⟨(Finset.mem_Ioc.mp hi).1, (Finset.mem_Ioc.mp hi).2.trans hupper⟩, hprime⟩
  have hz (p : ℕ)
      (hp : p ∈ (Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A)).filter Nat.Prime)
      (hn : p ∉ (Finset.Ioc (vaughanCutoff A) ⌊Real.exp A⌋₊).filter Nat.Prime) :
      Real.log (p : ℝ) / (p : ℝ) * sourceCorrelation explicitSecondDerivative A
        (2 * Real.log (p : ℝ)) = 0 := by
    rcases Finset.mem_filter.mp hp with ⟨hi, hprime⟩
    have hpgt : ⌊Real.exp A⌋₊ < p := by
      by_contra h
      exact hn (Finset.mem_filter.mpr ⟨Finset.mem_Ioc.mpr
        ⟨(Finset.mem_Ioc.mp hi).1, by omega⟩, hprime⟩)
    have hexp : Real.exp A < (p : ℝ) := (Nat.floor_lt (Real.exp_nonneg A)).mp hpgt
    have hplog : A < Real.log (p : ℝ) := by
      rw [← Real.log_exp A]
      exact Real.log_lt_log (Real.exp_pos A) hexp
    rw [sourceCorrelation_eq_zero_of_two_mul_le_abs A (2 * Real.log (p : ℝ)) hA0
      (by rw [abs_of_pos (by linarith : 0 < 2 * Real.log (p : ℝ))]; linarith), mul_zero]
  have hs := Finset.sum_subset hsub hz
  unfold rawPrimeFirstDiagonal retainedPrimeDiagonal
  rw [← hs]
  unfold vaughanCutoff diagonalCorrelation
  rfl

theorem raw_first_diagonal_fixed_main_error :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ A : ℝ, 1 ≤ A →
      |rawPrimeFirstDiagonal A - rawPrimeLinearMain A| ≤ C := by
  obtain ⟨C, hC, hbound⟩ := retainedPrimeDiagonal_main_term_error
  refine ⟨C, hC, ?_⟩
  intro A hA
  rw [raw_first_diagonal_eq_retained A hA]
  unfold rawPrimeLinearMain vaughanCutoff
  convert hbound A hA using 1
  congr 1
  ring

theorem raw_main_prime_linear_cancels (A : ℝ) :
    rawIndependentMainAt A (vaughanCutoff A) + rawPrimeLinearMain A =
      -shortMangoldtAt A (vaughanCutoff A) - shortLogSamplingAt A (vaughanCutoff A) +
        shortPlainSamplingAt A (vaughanCutoff A) := by
  unfold rawIndependentMainAt rawPrimeLinearMain
  ring

theorem actual_readout_raw_prime_recovery (A : ℝ) (hA : 1 ≤ A) :
    arithmeticReadout A hA = rawPrimeCorrectedAt A -
      (rawPrimeFirstDiagonal A - rawPrimeLinearMain A) := by
  rw [← readoutAt_actual A hA, readoutAt_global_mean_cancels]
  unfold rawPrimeCorrectedAt rawIndependentMainAt rawPrimeLinearMain
  ring

theorem actual_readout_raw_prime_fixed_error :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ A : ℝ, ∀ hA : 1 ≤ A,
      |arithmeticReadout A hA - rawPrimeCorrectedAt A| ≤ C := by
  obtain ⟨C, hC, hbound⟩ := raw_first_diagonal_fixed_main_error
  refine ⟨C, hC, ?_⟩
  intro A hA
  rw [actual_readout_raw_prime_recovery A hA]
  have he : rawPrimeCorrectedAt A - (rawPrimeFirstDiagonal A - rawPrimeLinearMain A) -
      rawPrimeCorrectedAt A = -(rawPrimeFirstDiagonal A - rawPrimeLinearMain A) := by ring
  rw [he, abs_neg]
  exact hbound A hA

theorem estimate_of_actual_raw_prime_corrected_tail
    (D R : ℝ) (hR : 1 ≤ R)
    (hbound : ∀ A : ℝ, R ≤ A → rawPrimeCorrectedAt A ≤ D) :
    CorrelationAssembly.EstimateObligation := by
  obtain ⟨C, hC, herr⟩ := actual_readout_raw_prime_fixed_error
  apply estimate_of_arithmeticReadout_tail
  refine ⟨max 0 (D + C), le_max_left _ _, R, hR, ?_⟩
  intro A hA hRA
  have hd := hbound A hRA
  have he := (abs_le.mp (herr A hA)).2
  exact (show arithmeticReadout A hA ≤ D + C by linarith).trans (le_max_right _ _)

end RH16RawMeanCancellation
```
