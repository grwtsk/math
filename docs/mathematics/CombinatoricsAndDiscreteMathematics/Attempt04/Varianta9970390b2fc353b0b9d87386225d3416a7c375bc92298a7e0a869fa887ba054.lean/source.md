# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Attempt04.Varianta9970390b2fc353b0b9d87386225d3416a7c375bc92298a7e0a869fa887ba054

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ec5ebbec54e0839f35218615c55954e1d98db296` · SHA-256 `a9970390b2fc353b0b9d87386225d3416a7c375bc92298a7e0a869fa887ba054`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceRawMeanCancellation
import SourceSamplingLedger

/-!
One-sided diagonal/source-ledger consumers for the original real-scale source.
Direction and conceptual origin: grwtsk contributors.
Source-sign audit, additive native construction: OpenAI Codex assistance.
No uniform arithmetic readout witness is supplied.
-/
set_option autoImplicit false
noncomputable section
namespace RH16OneSidedMeanAudit
open scoped BigOperators
open ArithmeticFunction
open RH16RawMeanCancellation
open FormalResearch.RiemannHypothesis
open SourcePairing SourceDiagonalMainTerm SourceDiagonalPrimeAbel SourceSamplingLedger
open SourceShortSamplingInventory SourceSamplingPointwise SourceSamplingCoefficients
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateVaughanSource EstimateVaughanTranslationGate
open EstimateBetaSourceRecombination EstimateMertensResidual EstimateTailReduction
open EstimateSourceMobiusKernel

/-- Actual long-base non-prime index set; composite non-powers have zero Mangoldt weight. -/
def actualProperDiagonalInventory (A : ℝ) : Finset ℕ :=
  ((Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A)).filter
    (fun n => vaughanCutoff A < n.minFac)).filter (fun n => ¬n.Prime)

/-- Full-minus-first diagonal is the signed proper-power source, with every cutoff retained. -/
theorem actual_proper_diagonal_eq (A : ℝ) (hA : 1 ≤ A) :
    typeTwoDiagonal A - retainedPrimeDiagonal A =
      -(∑ n ∈ actualProperDiagonalInventory A, vonMangoldt n / (n : ℝ) *
        sourceCorrelation explicitSecondDerivative A (2 * Real.log (n : ℝ))) := by
  classical
  let F := (Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A)).filter
    (fun n => vaughanCutoff A < n.minFac)
  let w := fun n : ℕ => vonMangoldt n / (n : ℝ) *
    sourceCorrelation explicitSecondDerivative A (2 * Real.log (n : ℝ))
  have hp : F.filter Nat.Prime =
      (Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A)).filter Nat.Prime := by
    ext n
    simp only [F, Finset.mem_filter]
    constructor
    · rintro ⟨⟨hi, _⟩, hn⟩
      exact ⟨hi, hn⟩
    · rintro ⟨hi, hn⟩
      exact ⟨⟨hi, by simpa only [hn.minFac_eq] using (Finset.mem_Ioc.mp hi).1⟩, hn⟩
  have hs : (∑ n ∈ F, w n) =
      (∑ n ∈ F.filter Nat.Prime, w n) +
      (∑ n ∈ F.filter (fun n => ¬n.Prime), w n) := by
    rw [Finset.sum_filter, Finset.sum_filter, ← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro n _
    by_cases hn : n.Prime <;> simp [hn]
  have hprime : -(∑ n ∈ F.filter Nat.Prime, w n) = rawPrimeFirstDiagonal A := by
    rw [hp]
    unfold rawPrimeFirstDiagonal
    congr 1
    apply Finset.sum_congr rfl
    intro n hn
    simp only [w, vonMangoldt_apply_prime (Finset.mem_filter.mp hn).2]
  rw [typeTwoDiagonal_eq_longBase_sum A hA]
  change -(∑ n ∈ F, w n) - retainedPrimeDiagonal A = _
  rw [hs, ← raw_first_diagonal_eq_retained A hA]
  change _ = -(∑ n ∈ F.filter (fun n => ¬n.Prime), w n)
  linarith only [hprime]

/-- Only the upper proper-diagonal loss enters the ledger. -/
theorem ledger_one_sided (A b0 b1 b2 Cp rho Elog Eplain : ℝ)
    (hproper : typeTwoDiagonal A - retainedPrimeDiagonal A ≤ rho)
    (hprime : retainedPrimeDiagonal A + diagonalMainCoefficient A * A -
      Real.log (vaughanCutoff A : ℝ) ≤ Cp)
    (hlog : shortLogSource A - shortLogMainTerm A (logLinearMain A b1 b2) ≤ Elog)
    (hplain : -Eplain ≤ shortPlainSource A - shortPlainMainTerm A (plainLinearMain A b0 b1)) :
    betaMainLedger A + coefficientMainTerm A b0 b1 b2 ≤ Cp + rho + Elog + Eplain := by
  rw [ledger_plus_coefficientMainTerm]
  linarith

/-- Instantiate the one-sided ledger on the independently fixed actual coefficient main. -/
theorem residual_one_sided (A D Cp rho Elog Eplain : ℝ) (hA : 1 ≤ A)
    (hreadout : VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A ≤ D)
    (hproper : typeTwoDiagonal A - retainedPrimeDiagonal A ≤ rho)
    (hprime : retainedPrimeDiagonal A + diagonalMainCoefficient A * A -
      Real.log (vaughanCutoff A : ℝ) ≤ Cp)
    (hlog : shortLogSource A - shortLogMainTerm A
      (logLinearMain A samplingAlpha1 samplingAlpha2) ≤ Elog)
    (hplain : -Eplain ≤ shortPlainSource A - shortPlainMainTerm A
      (plainLinearMain A samplingAlpha0 samplingAlpha1)) :
    mertensResidual A ≤ D + Cp + rho + Elog + Eplain := by
  have hl := ledger_one_sided A samplingAlpha0 samplingAlpha1 samplingAlpha2
    Cp rho Elog Eplain hproper hprime hlog hplain
  change betaMainLedger A + independentMainTerm A ≤ _ at hl
  rw [actual_residual_decomposition A hA]
  linarith

/-- Existing prime source-main proof supplies its fixed Cp, preserving every real tail scale. -/
theorem residual_tail_of_one_sided_diagonal (D rho Elog Eplain Q : ℝ) (hQ : 1 ≤ Q)
    (hreadout : ∀ A : ℝ, Q ≤ A →
      VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A ≤ D)
    (hproper : ∀ A : ℝ, Q ≤ A → typeTwoDiagonal A - retainedPrimeDiagonal A ≤ rho)
    (hlog : ∀ A : ℝ, Q ≤ A → shortLogSource A - shortLogMainTerm A
      (logLinearMain A samplingAlpha1 samplingAlpha2) ≤ Elog)
    (hplain : ∀ A : ℝ, Q ≤ A → -Eplain ≤ shortPlainSource A - shortPlainMainTerm A
      (plainLinearMain A samplingAlpha0 samplingAlpha1)) :
    ∃ Cp : ℝ, 0 ≤ Cp ∧ ∀ A : ℝ, Q ≤ A →
      mertensResidual A ≤ D + Cp + rho + Elog + Eplain := by
  obtain ⟨Cp, hCp, hprime⟩ := retainedPrimeDiagonal_main_term_error
  refine ⟨Cp, hCp, ?_⟩
  intro A hQA
  have hA := hQ.trans hQA
  apply residual_one_sided A D Cp rho Elog Eplain hA (hreadout A hQA)
    (hproper A hQA) _ (hlog A hQA) (hplain A hQA)
  have hp := (abs_le.mp (hprime A hA)).2
  simpa only [vaughanCutoff] using hp

/-- The literal original EstimateObligation consumes the one-sided source certificate. -/
theorem estimate_of_one_sided_diagonal (D rho Elog Eplain Q : ℝ) (hQ : 1 ≤ Q)
    (hreadout : ∀ A : ℝ, Q ≤ A →
      VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A ≤ D)
    (hproper : ∀ A : ℝ, Q ≤ A → typeTwoDiagonal A - retainedPrimeDiagonal A ≤ rho)
    (hlog : ∀ A : ℝ, Q ≤ A → shortLogSource A - shortLogMainTerm A
      (logLinearMain A samplingAlpha1 samplingAlpha2) ≤ Elog)
    (hplain : ∀ A : ℝ, Q ≤ A → -Eplain ≤ shortPlainSource A - shortPlainMainTerm A
      (plainLinearMain A samplingAlpha0 samplingAlpha1)) :
    CorrelationAssembly.EstimateObligation := by
  obtain ⟨Cp, _, hr⟩ := residual_tail_of_one_sided_diagonal D rho Elog Eplain Q hQ
    hreadout hproper hlog hplain
  apply estimate_of_mertens_residual_tail
  refine ⟨max 0 (D + Cp + rho + Elog + Eplain), le_max_left _ _, Q, hQ, ?_⟩
  intro A hQA
  exact (hr A hQA).trans (le_max_right _ _)

end RH16OneSidedMeanAudit
```
