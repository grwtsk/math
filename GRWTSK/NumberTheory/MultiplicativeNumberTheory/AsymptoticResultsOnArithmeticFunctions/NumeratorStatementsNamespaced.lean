-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.MobiusPoleNumerator.Variant23dea4c378c00515f717a3154a504b9fe8f47b6f8166c8a3bc0aed08bcbfd6ed","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"23dea4c378c00515f717a3154a504b9fe8f47b6f8166c8a3bc0aed08bcbfd6ed","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.MobiusPoleNumerator.Variant23dea4c378c00515f717a3154a504b9fe8f47b6f8166c8a3bc0aed08bcbfd6ed","mathematical_subject":"Analysis.Calculus","original_sha256":"23dea4c378c00515f717a3154a504b9fe8f47b6f8166c8a3bc0aed08bcbfd6ed","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/spectral-mobius-normalization/NumeratorStatements.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.MobiusPoleNumerator


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.MobiusPoleNumerator.Variant23dea4c378c00515f717a3154a504b9fe8f47b6f8166c8a3bc0aed08bcbfd6ed

namespace MobiusPoleNumeratorLiteral
open Finset MeasureTheory Filter
open scoped Topology
open FormalResearch.RiemannHypothesis.SourceComparison
open FiniteMobiusController MobiusPoleNumerator

example (X : ℕ) (z : ℂ) : dirichletNumerator X z =
    ∑ n ∈ Icc 1 X, (ArithmeticFunction.moebius n : ℂ) *
      Complex.exp (-(1 / 2 + z) * (Real.log (n : ℝ) : ℂ)) := rfl
example (X : ℕ) (z : ℂ) : correctedNumerator X z =
    dirichletNumerator X z - (mobiusReciprocalSum X : ℂ) *
      Complex.exp ((1 / 2 - z) * (Real.log (X : ℝ) : ℂ)) := rfl
example (X : ℕ) : logNormalization X =
    ∑ n ∈ Icc 1 X, (ArithmeticFunction.moebius n : ℝ) / (n : ℝ) *
      Real.log ((X : ℝ) / (n : ℝ)) := rfl
example (n : ℕ) (hn : 1 ≤ n) :
    Complex.exp (-(1 / 2 + (1 / 2 : ℂ)) * (Real.log (n : ℝ) : ℂ)) =
      (n : ℂ)⁻¹ := exponential_at_half n hn
example (X : ℕ) : dirichletNumerator X (1 / 2) = (mobiusReciprocalSum X : ℂ) :=
  dirichletNumerator_half X
example (X : ℕ) : correctedNumerator X (1 / 2) = 0 := correctedNumerator_half X
example (X : ℕ) : Differentiable ℂ (correctedNumerator X) :=
  correctedNumerator_differentiable X
example (X : ℕ) (z : ℂ) : HasDerivAt (correctedNumerator X)
    ((∑ n ∈ Icc 1 X, (ArithmeticFunction.moebius n : ℂ) *
      (Complex.exp (-(1 / 2 + z) * (Real.log (n : ℝ) : ℂ)) *
        (-(Real.log (n : ℝ) : ℂ)))) +
      (mobiusReciprocalSum X : ℂ) *
        (Complex.exp ((1 / 2 - z) * (Real.log (X : ℝ) : ℂ)) *
          (Real.log (X : ℝ) : ℂ))) z := correctedNumerator_hasDerivAt X z
example (X : ℕ) (hX : 1 ≤ X) : (logNormalization X : ℂ) =
    (mobiusReciprocalSum X : ℂ) * (Real.log (X : ℝ) : ℂ) -
      ∑ n ∈ Icc 1 X, (ArithmeticFunction.moebius n : ℂ) / (n : ℂ) *
        (Real.log (n : ℝ) : ℂ) := logNormalization_eq X hX
example (X : ℕ) (hX : 1 ≤ X) :
    HasDerivAt (correctedNumerator X) (logNormalization X : ℂ) (1 / 2) :=
  correctedNumerator_hasDerivAt_half X hX
example (X : ℕ) : correctedQuotient X = dslope (correctedNumerator X) (1 / 2) := rfl
example (X : ℕ) (z : ℂ) (hz : z ≠ 1 / 2) :
    correctedQuotient X z = correctedNumerator X z / (z - 1 / 2) :=
  correctedQuotient_of_ne X z hz
example (X : ℕ) (z : ℂ) :
    correctedNumerator X z = (z - 1 / 2) * correctedQuotient X z :=
  correctedNumerator_factor X z
example (X : ℕ) : Differentiable ℂ (correctedQuotient X) := correctedQuotient_differentiable X
example (X : ℕ) (hX : 1 ≤ X) : correctedQuotient X (1 / 2) = (logNormalization X : ℂ) :=
  correctedQuotient_half X hX
example (X : ℕ) (hX : 1 ≤ X) :
    Tendsto (fun z : ℂ => correctedNumerator X z / (z - 1 / 2))
      (𝓝[≠] (1 / 2)) (𝓝 (logNormalization X : ℂ)) := correctedQuotient_tendsto_half X hX
example (X : ℕ) (hX : 1 ≤ X) : HasDerivAt
    (fun z : ℂ =>
      (∑ n ∈ Icc 1 X, (ArithmeticFunction.moebius n : ℂ) *
        Complex.exp (-(1 / 2 + z) * (Real.log (n : ℝ) : ℂ))) -
        ((∑ n ∈ Icc 1 X, (ArithmeticFunction.moebius n : ℝ) / (n : ℝ)) : ℂ) *
          Complex.exp ((1 / 2 - z) * (Real.log (X : ℝ) : ℂ)))
    ((∑ n ∈ Icc 1 X, (ArithmeticFunction.moebius n : ℝ) / (n : ℝ) *
      Real.log ((X : ℝ) / (n : ℝ))) : ℂ) (1 / 2) :=
  by
    convert! correctedNumerator_hasDerivAt_half X hX using 1
    · funext z
      unfold correctedNumerator dirichletNumerator mobiusReciprocalSum
      simp only [Complex.ofReal_sum, Complex.ofReal_div, Complex.ofReal_natCast,
        Complex.ofReal_intCast]
    · simp only [logNormalization, Complex.ofReal_sum, Complex.ofReal_mul,
        Complex.ofReal_div, Complex.ofReal_natCast, Complex.ofReal_intCast]
end MobiusPoleNumeratorLiteral
