# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceDivisorLatticeArithmeticReview.Variant681501880003699c7d947dc3c4e044fde9ce01293e1738b6193049fc02013a28

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2f740bdafd87cd5e46223100482482e168ac611d` · SHA-256 `d5f7edf57fa7eb640353eb41e2b1d2b1d3d536838648ef68684fc77ea3963799`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ClassifierEqRecorded.Variant0cc77a7ebc67221c4efc74e48eb41c6285d683e31218597950af992ea84527c5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0cc77a7ebc67221c4efc74e48eb41c6285d683e31218597950af992ea84527c5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ClassifierEqRecorded.Variant0cc77a7ebc67221c4efc74e48eb41c6285d683e31218597950af992ea84527c5","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"0cc77a7ebc67221c4efc74e48eb41c6285d683e31218597950af992ea84527c5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/finite-lattice-arithmetic-gap-20261007/artifacts/finite-lattice-arithmetic/verification/review/SourceDivisorLatticeArithmeticReview.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceDivisorLatticeArithmetic
import SourceDivisorGramRefinement

/-!
# Exact bridge to the reviewed literal Vaughan source

This file depends on the recorded unmerged Vaughan/divisor closure. It is a
review adapter, separate from maintained-root declarations. The bridge retains
all source shifts, root factors, actual floors and centered physical deletion.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ClassifierEqRecorded.Variant0cc77a7ebc67221c4efc74e48eb41c6285d683e31218597950af992ea84527c5

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceDivisorLatticeArithmeticReview
open ArithmeticFunction
open SourcePairing SourceWeightedOrbitAdapter SourceVaughanHankel
open SourceSamplingLedger SourceCompensatedReadout SourceDivisorCounterterms
open SourceDivisorClassification SourceDivisorGramRefinement
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanIdentity EstimateVaughanSource EstimateSourceMobiusKernel
open EstimateBetaCentering
open SourceDivisorLatticeArithmetic SourceDivisorLatticeKernel
open scoped BigOperators

/-- The native classifier is literally the recorded divisor classifier. -/
theorem classifier_eq_recorded (S : Finset ℕ) (n : ℕ) :
    SourceDivisorLatticeClassifier.divisorPattern S n =
      SourceDivisorClassification.divisorPattern S n := rfl

/-- The expanded coefficient is the actual beta-plus-alpha coefficient on the whole long row. -/
theorem discrepancyCoefficient_eq_centeredBeta (U n : ℕ) (hU : 1 ≤ U) (hn : U < n) :
    discrepancyCoefficient U n = centeredBeta U n :=
  (centeredBeta_eq_divisor_discrepancy U n hU hn).symm

/-- Literal source synthesis gives the scalar reflected atom without changing normalization. -/
theorem weightedAtomInteraction_eq_scalar (A : ℝ) (hA : 0 < A) (U m n : ℕ) :
    weightedAtomInteraction A hA U m n =
      (vonMangoldt m * centeredBeta U n / (Real.sqrt (m : ℝ) * Real.sqrt (n : ℝ))) *
        sourceCorrelation explicitSecondDerivative A (Real.log (m : ℝ) + Real.log (n : ℝ)) := by
  unfold weightedAtomInteraction
  rw [source_reflected_atoms]
  simp only [mangoldtCoefficient, centeredCoefficient, Complex.star_def,
    Complex.conj_ofReal, ← Complex.ofReal_mul, Complex.ofReal_re]
  ring

/-- Every actual long-row atom has the native expanded formula, retaining all mixed sectors. -/
theorem weightedAtomInteraction_eq_expanded (A : ℝ) (hA : 0 < A) (U m n : ℕ)
    (hU : 1 ≤ U) (hn : U < n) :
    weightedAtomInteraction A hA U m n = expandedAtom A U m n := by
  rw [weightedAtomInteraction_eq_scalar, expandedAtom,
    discrepancyCoefficient_eq_centeredBeta U n hU hn]

/-- Both actual floors and their open-closed mask are exactly the native inventory. -/
theorem arithmeticInventory_eq_longInventory (A : ℝ) :
    arithmeticInventory A = longInventory A := rfl

/-- The actual lower floor is four at the selected scale. -/
theorem actual_cutoff_two : vaughanCutoff 2 = 4 := by norm_num [vaughanCutoff]

/-- A complete source mixed-block calculation retains the higher prime power and source orientation. -/
theorem actual_five_eight_mixed_identity :
    weightedAtomInteraction 2 (by norm_num) 4 5 8 +
      weightedAtomInteraction 2 (by norm_num) 4 8 5 =
      ((Real.log 5 - 5 * Real.log 2) / (6 * Real.sqrt 5 * Real.sqrt 8)) *
        sourceCorrelation explicitSecondDerivative 2 (Real.log 5 + Real.log 8) := by
  rw [weightedAtomInteraction_eq_expanded 2 (by norm_num) 4 5 8 (by norm_num) (by norm_num),
    weightedAtomInteraction_eq_expanded 2 (by norm_num) 4 8 5 (by norm_num) (by norm_num)]
  exact five_eight_mixed_identity

/-- The actual physical mixed pair is negative, so discarding it as zero is false. -/
theorem actual_five_eight_mixed_neg :
    weightedAtomInteraction 2 (by norm_num) 4 5 8 +
      weightedAtomInteraction 2 (by norm_num) 4 8 5 < 0 := by
  rw [weightedAtomInteraction_eq_expanded 2 (by norm_num) 4 5 8 (by norm_num) (by norm_num),
    weightedAtomInteraction_eq_expanded 2 (by norm_num) 4 8 5 (by norm_num) (by norm_num)]
  exact five_eight_mixed_neg

/-- This is the physical Hermitian coefficient matrix with actual beta and source inner products. -/
def physicalMixedMatrixTwo : Matrix ↥(arithmeticInventory 2) ↥(arithmeticInventory 2) ℂ :=
  fun i j => if i = j then 0 else
    (((weightedAtomInteraction 2 (by norm_num) 4 i j +
      weightedAtomInteraction 2 (by norm_num) 4 j i) / 2 : ℝ) : ℂ)

/-- The matrix equality is checked for every actual long-row atom, before sign selection. -/
theorem physicalMixedMatrixTwo_eq_native :
    physicalMixedMatrixTwo = arithmeticMixedMatrix 2 4 (arithmeticInventory 2) := by
  ext i j
  have hi : 4 < (i : ℕ) := by
    have hh := i.property
    norm_num [arithmeticInventory, Finset.mem_Ioc] at hh
    exact hh.1
  have hj : 4 < (j : ℕ) := by
    have hh := j.property
    norm_num [arithmeticInventory, Finset.mem_Ioc] at hh
    exact hh.1
  unfold physicalMixedMatrixTwo arithmeticMixedMatrix
  rw [weightedAtomInteraction_eq_expanded 2 (by norm_num) 4 i j (by norm_num) hj,
    weightedAtomInteraction_eq_expanded 2 (by norm_num) 4 j i (by norm_num) hi]

/-- The full physical matrix value is the complete actual directed arithmetic sum. -/
theorem physical_full_value_eq_offDiagonal :
    FormalResearch.PositiveAtlas.QuadraticDefect.value physicalMixedMatrixTwo Finset.univ =
      ∑ m ∈ longInventory 2, ∑ n ∈ longInventory 2,
        if m = n then 0 else weightedAtomInteraction 2 (by norm_num) 4 m n := by
  rw [physicalMixedMatrixTwo_eq_native, complete_matrix_value_eq_atoms]
  have hc : (∑ i : ↥(arithmeticInventory 2), ∑ j : ↥(arithmeticInventory 2),
      if i = j then 0 else expandedAtom 2 4 i j) =
      ∑ m ∈ arithmeticInventory 2, ∑ n ∈ arithmeticInventory 2,
        if m = n then 0 else expandedAtom 2 4 m n := by
    simp only [Subtype.ext_iff]
    calc
      _ = ∑ i : ↥(arithmeticInventory 2), ∑ n ∈ arithmeticInventory 2,
          if (i : ℕ) = n then 0 else expandedAtom 2 4 i n := by
        apply Finset.sum_congr rfl
        intro i _
        exact Finset.sum_coe_sort (s := arithmeticInventory 2)
          (f := fun n => if (i : ℕ) = n then 0 else expandedAtom 2 4 i n)
      _ = _ := Finset.sum_coe_sort (s := arithmeticInventory 2)
        (f := fun m => ∑ n ∈ arithmeticInventory 2,
          if m = n then 0 else expandedAtom 2 4 m n)
  rw [hc, arithmeticInventory_eq_longInventory]
  apply Finset.sum_congr rfl
  intro m hm
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hmn : m = n
  · simp [hmn]
  · simp only [hmn, ↓reduceIte]
    have hn4 : 4 < n := by
      have hh := (Finset.mem_Ioc.mp hn).1
      rw [actual_cutoff_two] at hh
      exact hh
    exact (weightedAtomInteraction_eq_expanded 2 (by norm_num) 4 m n (by norm_num) hn4).symm

/-- At its full mask this matrix is the unchanged main-subtracted arithmetic readout. -/
theorem physical_full_readout_eq_actual :
    FormalResearch.PositiveAtlas.QuadraticDefect.value physicalMixedMatrixTwo Finset.univ -
      independentMainTerm 2 = arithmeticReadout 2 (by norm_num) := by
  rw [physical_full_value_eq_offDiagonal, arithmeticReadout_eq_arithmetic_offDiagonal_atoms,
    actual_cutoff_two]

/-- The failed supermodularity implication concerns the actual source, rather than a toy Gram form. -/
theorem physical_matrix_not_supermodular :
    ¬ FormalResearch.PositiveAtlas.MaximalDefect.Supermodular
      (FormalResearch.PositiveAtlas.QuadraticDefect.value physicalMixedMatrixTwo) := by
  rw [physicalMixedMatrixTwo_eq_native]
  exact actual_matrix_not_supermodular

/-- The full parent source keeps every off-diagonal sector, the centered diagonal and independent main. -/
theorem parent_readout_retains_every_sector (A : ℝ) (hA : 1 ≤ A) (S : Finset ℕ) :
    classifiedReadout A hA S =
      (∑ p ∈ patternImage (longInventory A) S,
        ∑ r ∈ patternImage (longInventory A) S, offDiagonalSectorBlock A hA S p r) -
          independentMainTerm A := classifiedReadout_eq_offDiagonal_blocks A hA S

end FormalResearch.RiemannHypothesis.SourceDivisorLatticeArithmeticReview
```
