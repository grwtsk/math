import FormalResearch.RiemannHypothesis.SourceComparison.OddUpperRowDyadic

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
