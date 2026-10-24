# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.OddUpperRowDyadicSourceStatements.Variant61a2375d80e87d1ca50af0b3b5feee467be438a4ce0a506291e5e8e94cc9b7df

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8b086f9d4dd5cb3abca3e6a7ad77920779072a0d` · SHA-256 `d5530b327c2635e9f1c30ac5bc5a71f0ccef3179015a44660723bf57330baa8b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.OddUpperRowDyadic.Variantcf17136ed979740c95ebb48626c49248a5ef10109b28a3e2838d7473c9059597","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cf17136ed979740c95ebb48626c49248a5ef10109b28a3e2838d7473c9059597","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.OddUpperRowDyadic.Variantcf17136ed979740c95ebb48626c49248a5ef10109b28a3e2838d7473c9059597","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"cf17136ed979740c95ebb48626c49248a5ef10109b28a3e2838d7473c9059597","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/prime-budget/OddUpperRowDyadicSourceStatements.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.OddUpperRowDyadic


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.OddUpperRowDyadic.Variantcf17136ed979740c95ebb48626c49248a5ef10109b28a3e2838d7473c9059597

set_option autoImplicit false
namespace OddUpperRowDyadicSourceStatements
open Finset FormalResearch.RiemannHypothesis.SourceComparison.OddUpperRowDyadic
open FormalResearch.RiemannHypothesis.SourceComparison
noncomputable section

example (A : ℝ) (i : ℕ) : oddColumnRow A i =
    ∑ j ∈ (Icc 1 ⌊Real.exp A⌋₊).filter (fun j ↦ Nat.Coprime j 2),
      (ArithmeticFunction.moebius j : ℝ)*ThetaKernelTransport.thetaKernel A (i*j) := rfl

example (A : ℝ) (i : ℕ) (hi : 1 ≤ i)
    (hcut : Real.exp (2*A) ≤ 2*(i:ℝ)) : oddColumnRow A i = 0 :=
  FormalResearch.RiemannHypothesis.SourceComparison.OddUpperRowDyadic.oddColumnRow_zero A i hi hcut

example (A : ℝ) (i : ℕ)
    (hi : ⌊Real.exp A⌋₊/2 < i) :
    (∑ j ∈ (Icc 1 (⌊Real.exp A⌋₊/2)).filter (fun j ↦ Nat.Coprime j 2),
      (ArithmeticFunction.moebius j : ℝ)*ThetaKernelTransport.thetaKernel A (i*(2*j))) =
        oddColumnRow A (2*i) :=
  FormalResearch.RiemannHypothesis.SourceComparison.OddUpperRowDyadic.oddColumnRow_half_padding A i hi

example (A : ℝ) (i : ℕ) (hA : 1 ≤ A)
    (hi : ⌊Real.exp A⌋₊/2 < i) :
    oddColumnRow A i - oddColumnRow A (2*i) = SourceSampling.sourceSamplingKernel A i :=
  FormalResearch.RiemannHypothesis.SourceComparison.OddUpperRowDyadic.oddColumnRow_two_difference A i hA hi

example (A : ℝ) (i k : ℕ) (hi : ⌊Real.exp A⌋₊/2 < i) :
    ⌊Real.exp A⌋₊/2 < 2^k*i :=
  FormalResearch.RiemannHypothesis.SourceComparison.OddUpperRowDyadic.dyadic_upper_row A i k hi

example (A : ℝ) (i K : ℕ) (hA : 1 ≤ A)
    (hi : ⌊Real.exp A⌋₊/2 < i) :
    oddColumnRow A i =
      (∑ k ∈ range K, SourceSampling.sourceSamplingKernel A ((2^k*i:ℕ):ℝ)) +
        oddColumnRow A (2^K*i) :=
  FormalResearch.RiemannHypothesis.SourceComparison.OddUpperRowDyadic.oddColumnRow_telescope A i K hA hi

example (A : ℝ) (i : ℕ) (hi : 1 ≤ i) :
    oddColumnRow A (2^(Nat.clog 2 ⌈Real.exp (2*A)⌉₊)*i)=0 :=
  FormalResearch.RiemannHypothesis.SourceComparison.OddUpperRowDyadic.oddColumnRow_dyadic_tail_zero A i hi

example (A : ℝ) (i : ℕ) (hA : 1 ≤ A)
    (hi : ⌊Real.exp A⌋₊/2 < i) :
    oddColumnRow A i =
      ∑ k ∈ range (Nat.clog 2 ⌈Real.exp (2*A)⌉₊),
        SourceSampling.sourceSamplingKernel A ((2^k*i:ℕ):ℝ) :=
  FormalResearch.RiemannHypothesis.SourceComparison.OddUpperRowDyadic.oddColumnRow_eq_dyadic A i hA hi

example (A : ℝ) :
    Nat.clog 2 ⌈Real.exp (2*A)⌉₊ ≤ ⌈2*A / Real.log 2⌉₊ :=
  FormalResearch.RiemannHypothesis.SourceComparison.OddUpperRowDyadic.dyadicCutoff_le A

example (N M : ℕ) (F : ℕ → ℝ) (hMN : M ≤ N) :
    (∑ j ∈ (Icc 1 N).filter (fun j ↦ Nat.Coprime j 2),
      (ArithmeticFunction.moebius j : ℝ)*F j) =
      (∑ j ∈ (Icc 1 M).filter (fun j ↦ Nat.Coprime j 2),
        (ArithmeticFunction.moebius j : ℝ)*F j) +
      ∑ j ∈ (Ioc M N).filter (fun j ↦ Nat.Coprime j 2),
        (ArithmeticFunction.moebius j : ℝ)*F j :=
  FormalResearch.RiemannHypothesis.SourceComparison.OddUpperRowDyadic.positive_odd_sum_split N M F hMN

example (A : ℝ) (i J : ℕ) (hA : 1 ≤ A)
    (hi : ⌊Real.exp A⌋₊/2 < i) (hMJ : ⌊Real.exp A⌋₊/2 ≤ J) (hJN : J ≤ ⌊Real.exp A⌋₊) :
    (∑ j ∈ (Ioc (⌊Real.exp A⌋₊/2) J).filter (fun j ↦ Nat.Coprime j 2),
      (ArithmeticFunction.moebius j : ℝ)*SourceSampling.sourceSamplingKernel A ((i*j:ℕ):ℝ)) =
      (∑ k ∈ range (Nat.clog 2 ⌈Real.exp (2*A)⌉₊),
        SourceSampling.sourceSamplingKernel A ((2^k*i:ℕ):ℝ)) -
      (∑ j ∈ (Icc 1 (⌊Real.exp A⌋₊/2)).filter (fun j ↦ Nat.Coprime j 2),
        (ArithmeticFunction.moebius j : ℝ)*ThetaKernelTransport.thetaKernel A (i*j)) -
      ∑ j ∈ (Ioc J ⌊Real.exp A⌋₊).filter (fun j ↦ Nat.Coprime j 2),
        (ArithmeticFunction.moebius j : ℝ)*SourceSampling.sourceSamplingKernel A ((i*j:ℕ):ℝ) :=
  FormalResearch.RiemannHypothesis.SourceComparison.OddUpperRowDyadic.clipped_odd_upper_row_eq A i J hA hi hMJ hJN

example (A : ℝ) (i : ℕ) (hA : 1 ≤ A)
    (hi : ⌊Real.exp A⌋₊/2 < i) :
    (∑ j ∈ (Ioc (⌊Real.exp A⌋₊/2) ⌊Real.exp A⌋₊).filter (fun j ↦ Nat.Coprime j 2),
      (ArithmeticFunction.moebius j : ℝ)*SourceSampling.sourceSamplingKernel A ((i*j:ℕ):ℝ)) =
      (∑ k ∈ range (Nat.clog 2 ⌈Real.exp (2*A)⌉₊),
        SourceSampling.sourceSamplingKernel A ((2^k*i:ℕ):ℝ)) -
      ∑ j ∈ (Icc 1 (⌊Real.exp A⌋₊/2)).filter (fun j ↦ Nat.Coprime j 2),
        (ArithmeticFunction.moebius j : ℝ)*ThetaKernelTransport.thetaKernel A (i*j) :=
  FormalResearch.RiemannHypothesis.SourceComparison.OddUpperRowDyadic.full_odd_upper_row_eq A i hA hi

end
end OddUpperRowDyadicSourceStatements
```
