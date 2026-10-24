# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OddUpperRowDyadicStatements.Variant5130689176bcc75bc55970d69c86167d2da06cb43f311c80ad817958102ff466

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f11e90c27d6d472144c749e91e234460f50a97dd` · SHA-256 `9a5cd4bd8a336cc135b4b37c8ef4f2c4c5b1f257256bb0a72e4623148d0b4c41`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OddUpperRowDyadic.Variant6061df4694a33e609a0bcb63d8f69c6ef1b81a0eae96013f6169a89786144ff0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6061df4694a33e609a0bcb63d8f69c6ef1b81a0eae96013f6169a89786144ff0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.OddUpperRowDyadic.Variant6061df4694a33e609a0bcb63d8f69c6ef1b81a0eae96013f6169a89786144ff0","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"6061df4694a33e609a0bcb63d8f69c6ef1b81a0eae96013f6169a89786144ff0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/prime-budget/OddUpperRowDyadicStatements.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import OddUpperRowDyadic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OddUpperRowDyadic.Variant6061df4694a33e609a0bcb63d8f69c6ef1b81a0eae96013f6169a89786144ff0

set_option autoImplicit false
namespace OddUpperRowDyadicStatements
open Finset OddUpperRowDyadicScratch
open FormalResearch.RiemannHypothesis.SourceComparison
noncomputable section

example (A : ℝ) (i : ℕ) : oddColumnRow A i =
    ∑ j ∈ (Icc 1 ⌊Real.exp A⌋₊).filter (fun j ↦ Nat.Coprime j 2),
      (ArithmeticFunction.moebius j : ℝ)*ThetaKernelTransport.thetaKernel A (i*j) := rfl

example (A : ℝ) (i : ℕ) (hi : 1 ≤ i)
    (hcut : Real.exp (2*A) ≤ 2*(i:ℝ)) : oddColumnRow A i = 0 :=
  OddUpperRowDyadicScratch.oddColumnRow_zero A i hi hcut

example (A : ℝ) (i : ℕ)
    (hi : ⌊Real.exp A⌋₊/2 < i) :
    (∑ j ∈ (Icc 1 (⌊Real.exp A⌋₊/2)).filter (fun j ↦ Nat.Coprime j 2),
      (ArithmeticFunction.moebius j : ℝ)*ThetaKernelTransport.thetaKernel A (i*(2*j))) =
        oddColumnRow A (2*i) :=
  OddUpperRowDyadicScratch.oddColumnRow_half_padding A i hi

example (A : ℝ) (i : ℕ) (hA : 1 ≤ A)
    (hi : ⌊Real.exp A⌋₊/2 < i) :
    oddColumnRow A i - oddColumnRow A (2*i) = SourceSampling.sourceSamplingKernel A i :=
  OddUpperRowDyadicScratch.oddColumnRow_two_difference A i hA hi

example (A : ℝ) (i k : ℕ) (hi : ⌊Real.exp A⌋₊/2 < i) :
    ⌊Real.exp A⌋₊/2 < 2^k*i :=
  OddUpperRowDyadicScratch.dyadic_upper_row A i k hi

example (A : ℝ) (i K : ℕ) (hA : 1 ≤ A)
    (hi : ⌊Real.exp A⌋₊/2 < i) :
    oddColumnRow A i =
      (∑ k ∈ range K, SourceSampling.sourceSamplingKernel A ((2^k*i:ℕ):ℝ)) +
        oddColumnRow A (2^K*i) :=
  OddUpperRowDyadicScratch.oddColumnRow_telescope A i K hA hi

example (A : ℝ) (i : ℕ) (hi : 1 ≤ i) :
    oddColumnRow A (2^(Nat.clog 2 ⌈Real.exp (2*A)⌉₊)*i)=0 :=
  OddUpperRowDyadicScratch.oddColumnRow_dyadic_tail_zero A i hi

example (A : ℝ) (i : ℕ) (hA : 1 ≤ A)
    (hi : ⌊Real.exp A⌋₊/2 < i) :
    oddColumnRow A i =
      ∑ k ∈ range (Nat.clog 2 ⌈Real.exp (2*A)⌉₊),
        SourceSampling.sourceSamplingKernel A ((2^k*i:ℕ):ℝ) :=
  OddUpperRowDyadicScratch.oddColumnRow_eq_dyadic A i hA hi

example (A : ℝ) :
    Nat.clog 2 ⌈Real.exp (2*A)⌉₊ ≤ ⌈2*A / Real.log 2⌉₊ :=
  OddUpperRowDyadicScratch.dyadicCutoff_le A

example (N M : ℕ) (F : ℕ → ℝ) (hMN : M ≤ N) :
    (∑ j ∈ (Icc 1 N).filter (fun j ↦ Nat.Coprime j 2),
      (ArithmeticFunction.moebius j : ℝ)*F j) =
      (∑ j ∈ (Icc 1 M).filter (fun j ↦ Nat.Coprime j 2),
        (ArithmeticFunction.moebius j : ℝ)*F j) +
      ∑ j ∈ (Ioc M N).filter (fun j ↦ Nat.Coprime j 2),
        (ArithmeticFunction.moebius j : ℝ)*F j :=
  OddUpperRowDyadicScratch.positive_odd_sum_split N M F hMN

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
  OddUpperRowDyadicScratch.clipped_odd_upper_row_eq A i J hA hi hMJ hJN

example (A : ℝ) (i : ℕ) (hA : 1 ≤ A)
    (hi : ⌊Real.exp A⌋₊/2 < i) :
    (∑ j ∈ (Ioc (⌊Real.exp A⌋₊/2) ⌊Real.exp A⌋₊).filter (fun j ↦ Nat.Coprime j 2),
      (ArithmeticFunction.moebius j : ℝ)*SourceSampling.sourceSamplingKernel A ((i*j:ℕ):ℝ)) =
      (∑ k ∈ range (Nat.clog 2 ⌈Real.exp (2*A)⌉₊),
        SourceSampling.sourceSamplingKernel A ((2^k*i:ℕ):ℝ)) -
      ∑ j ∈ (Icc 1 (⌊Real.exp A⌋₊/2)).filter (fun j ↦ Nat.Coprime j 2),
        (ArithmeticFunction.moebius j : ℝ)*ThetaKernelTransport.thetaKernel A (i*j) :=
  OddUpperRowDyadicScratch.full_odd_upper_row_eq A i hA hi

end
end OddUpperRowDyadicStatements
```
