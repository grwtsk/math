
namespace FiniteControllerEnergyLiteral
open MeasureTheory Set
open scoped BigOperators
open FormalResearch.RiemannHypothesis.SourceComparison
open HalfLineExponential HalfLineOperator ExponentialCovariance FixedLaplaceContinuation
open FixedSourceKernel FiniteControllerEnergyScratch
noncomputable section
example (n : ℕ) (a : Fin n → ℝ) (ha : ∀ i, 0 < a i) (c : Fin n → ℝ) :
    finiteController n a ha c = ∑ i, (c i : ℂ) • controller (a i) (ha i) := rfl
example (a b : ℝ) : sourceGram a b =
    ∫ u : ℝ in Ioi 0, ∫ v : ℝ in Ioi 0,
      fixedKernel u * fixedKernel v * overlap a b u v := rfl
example (n : ℕ) (a : Fin n → ℝ) (ha : ∀ i, 0 < a i) (c : Fin n → ℝ) :
    (inner ℂ referenceVector (sourceOperator (finiteController n a ha c))).re =
      ∑ i, c i * (actualLaplace 1).re / (1 + a i) :=
  finiteController_reference_re n a ha c
example (n : ℕ) (a : Fin n → ℝ) (ha : ∀ i, 0 < a i) (c : Fin n → ℝ) :
    ‖finiteController n a ha c‖ ^ 2 = ∑ i, ∑ j, c i * c j / (a i + a j) :=
  finiteController_norm_sq n a ha c
example (n : ℕ) (a : Fin n → ℝ) (ha : ∀ i, 0 < a i) (c : Fin n → ℝ) :
    ‖sourceOperator (finiteController n a ha c)‖ ^ 2 =
      ∑ i, ∑ j, c i * c j * sourceGram (a i) (a j) :=
  finiteController_response_norm_sq n a ha c
example (n : ℕ) (a : Fin n → ℝ) (ha : ∀ i, 0 < a i) (c : Fin n → ℝ) (α : ℝ) :
    ‖referenceVector - sourceOperator (finiteController n a ha c)‖ ^ 2 +
      α * ‖finiteController n a ha c‖ ^ 2 =
      1 / 2 - 2 * (∑ i, c i * (actualLaplace 1).re / (1 + a i)) +
        ∑ i, ∑ j, c i * c j * (sourceGram (a i) (a j) + α / (a i + a j)) :=
  finiteController_energy n a ha c α
end
end FiniteControllerEnergyLiteral
