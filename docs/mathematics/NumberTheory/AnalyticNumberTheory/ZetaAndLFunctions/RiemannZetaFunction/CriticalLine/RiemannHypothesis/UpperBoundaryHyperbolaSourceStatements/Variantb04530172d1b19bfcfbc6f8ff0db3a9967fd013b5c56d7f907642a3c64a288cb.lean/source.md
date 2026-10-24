# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.UpperBoundaryHyperbolaSourceStatements.Variantb04530172d1b19bfcfbc6f8ff0db3a9967fd013b5c56d7f907642a3c64a288cb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `574f267539876cb0297629c674ff79d07ca5615d` · SHA-256 `b04530172d1b19bfcfbc6f8ff0db3a9967fd013b5c56d7f907642a3c64a288cb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbola
set_option autoImplicit false
section SourceUpperBoundaryHyperbolaStatements
open Finset MeasureTheory
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbola

example (N : ℕ) (x : ℝ) : upperSmallIndices N x =
    (Ioc (N / 2) N).filter (fun i : ℕ ↦ (i : ℝ) ^ 2 ≤ x) := rfl

example (N : ℕ) (x : ℝ) : upperSmallSum N x =
    ∑ i ∈ upperSmallIndices N x, (ArithmeticFunction.moebius i : ℝ) := rfl

example (N : ℕ) (x : ℝ) : upperHyperbola N x =
    ∑ i ∈ upperSmallIndices N x, (ArithmeticFunction.moebius i : ℝ) *
      ∑ j ∈ (Ioc (N / 2) N).filter (fun j : ℕ ↦ ((i * j : ℕ) : ℝ) ≤ x),
        (ArithmeticFunction.moebius j : ℝ) := rfl

example (N i : ℕ) (x : ℝ) :
    i ∈ upperSmallIndices N x ↔ N / 2 < i ∧ i ≤ N ∧ (i : ℝ) ^ 2 ≤ x :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbola.mem_upperSmallIndices_iff N i x

example (N : ℕ) (x : ℝ) (hx : 0 ≤ x) :
    upperSmallIndices N x = Ioc (N / 2) (min N ⌊Real.sqrt x⌋₊) :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbola.upperSmallIndices_eq_sqrt_cutoff N x hx

example (N : ℕ) (x : ℝ) (hx : 0 ≤ x) :
    UpperBoundaryAbel.upperProductSummatory N x =
      2 * upperHyperbola N x - upperSmallSum N x ^ 2 :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbola.upperProductSummatory_eq_hyperbola N x hx

example (N : ℕ) (x : ℝ) :
    0 ≤ upperSmallSum N x ^ 2 :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbola.upperSmallSum_square_nonneg N x

example (N i : ℕ) (x : ℝ) (hx : 0 ≤ x) (hi : 0 < i) :
    (Ioc (N / 2) N).filter (fun j : ℕ ↦ ((i * j : ℕ) : ℝ) ≤ x) =
      Ioc (N / 2) (min N ⌊x / (i : ℝ)⌋₊) :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbola.upperRowIndices_eq_div_cutoff N i x hx hi

example (N : ℕ) (x : ℝ) (hx : 0 ≤ x) :
    upperHyperbola N x =
      ∑ i ∈ Ioc (N / 2) (min N ⌊Real.sqrt x⌋₊),
        (ArithmeticFunction.moebius i : ℝ) *
          ∑ j ∈ Ioc (N / 2) (min N ⌊x / (i : ℝ)⌋₊),
            (ArithmeticFunction.moebius j : ℝ) :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbola.upperHyperbola_eq_floor_sum N x hx

example (N : ℕ) (x : ℝ) (hx : 0 ≤ x) :
    upperSmallSum N x =
      ∑ i ∈ Ioc (N / 2) (min N ⌊Real.sqrt x⌋₊), (ArithmeticFunction.moebius i : ℝ) :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbola.upperSmallSum_eq_floor_sum N x hx

example (N : ℕ) (x : ℝ) (hx : 0 ≤ x) :
    UpperBoundaryAbel.upperProductSummatory N x =
      2 * (∑ i ∈ Ioc (N / 2) (min N ⌊Real.sqrt x⌋₊),
        (ArithmeticFunction.moebius i : ℝ) *
          ∑ j ∈ Ioc (N / 2) (min N ⌊x / (i : ℝ)⌋₊),
            (ArithmeticFunction.moebius j : ℝ)) -
      (∑ i ∈ Ioc (N / 2) (min N ⌊Real.sqrt x⌋₊),
        (ArithmeticFunction.moebius i : ℝ)) ^ 2 :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbola.upperProductSummatory_eq_floor_hyperbola N x hx

example (N : ℕ) : Measurable (upperSmallSum N) :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbola.upperSmallSum_measurable N

example (N : ℕ) (x : ℝ) :
    |upperSmallSum N x| ≤
      ∑ i ∈ Ioc (N / 2) N, |(ArithmeticFunction.moebius i : ℝ)| :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbola.upperSmallSum_abs_le N x

example (N : ℕ) (g : ℝ → ℝ) (a b : ℝ)
    (hg : IntegrableOn g (Set.Icc a b)) :
    IntegrableOn (fun x ↦ upperSmallSum N x ^ 2 * g x) (Set.Icc a b) :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbola.upperSmallSum_square_mul_integrableOn N g a b hg

example (N : ℕ) (g : ℝ → ℝ) (a b : ℝ)
    (ha : 0 ≤ a) (hg : IntegrableOn g (Set.Icc a b)) :
    IntegrableOn (fun x ↦ upperHyperbola N x * g x) (Set.Icc a b) :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbola.upperHyperbola_mul_integrableOn N g a b ha hg

example (N : ℕ) (g : ℝ → ℝ) (a b : ℝ)
    (ha : 0 ≤ a) (hab : a ≤ b) (hg : IntegrableOn g (Set.Icc a b)) :
    (∫ x in a..b, UpperBoundaryAbel.upperProductSummatory N x * g x) =
      2 * (∫ x in a..b, upperHyperbola N x * g x) -
        ∫ x in a..b, upperSmallSum N x ^ 2 * g x :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbola.upperProduct_integral_eq_hyperbola N g a b ha hab hg

example (A : ℝ) (hA : 1 ≤ A) :
    IntegrableOn
      (fun x ↦ upperHyperbola ⌊Real.exp A⌋₊ x *
        deriv (SourceSampling.sourceSamplingKernel A) x)
      (Set.Icc 1 (Real.exp (2 * A))) :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbola.source_hyperbola_derivative_integrableOn A hA

example (A : ℝ) (hA : 1 ≤ A) :
    IntegrableOn
      (fun x ↦ upperSmallSum ⌊Real.exp A⌋₊ x ^ 2 *
        deriv (SourceSampling.sourceSamplingKernel A) x)
      (Set.Icc 1 (Real.exp (2 * A))) :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbola.source_square_derivative_integrableOn A hA

example (A : ℝ) (hA : 1 ≤ A) :
    sourceQuadraticValue explicitSecondDerivative A =
      UpperBoundaryChannels.coreValue A +
        4 * (∫ x in 1..Real.exp (2 * A), upperHyperbola ⌊Real.exp A⌋₊ x *
          deriv (SourceSampling.sourceSamplingKernel A) x) -
        2 * ∫ x in 1..Real.exp (2 * A), upperSmallSum ⌊Real.exp A⌋₊ x ^ 2 *
          deriv (SourceSampling.sourceSamplingKernel A) x :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbola.sourceQuadraticValue_eq_hyperbola_integrals A hA

end SourceUpperBoundaryHyperbolaStatements
```
