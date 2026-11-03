/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.ArithmeticCyclicHamiltonian

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Actual arithmetic channels in the cyclic second-difference budget.
No smoothness of the source labels or uniform joint bound is assumed.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.ArithmeticCyclicSecondVariation
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicHamiltonian
variable (N : ℕ) [NeZero N]

def secondDifference (q : ZMod N → ℝ) (i : ZMod N) : ℝ :=
  2*q i-q (i+1)-q (i-1)

def secondVariation (q : ZMod N → ℝ) : ℝ := ∑ i : ZMod N, |secondDifference N q i|

theorem secondDifference_three_channels (a b c : ZMod N → ℝ) (u v w : ℝ)
    (i : ZMod N) :
    secondDifference N (fun j => u*a j+v*b j+w*c j) i =
      u*secondDifference N a i+v*secondDifference N b i+w*secondDifference N c i := by
  unfold secondDifference
  ring

theorem secondVariation_three_channels (a b c : ZMod N → ℝ) (u v w : ℝ) :
    secondVariation N (fun j => u*a j+v*b j+w*c j) ≤
      |u|*secondVariation N a+|v|*secondVariation N b+|w|*secondVariation N c := by
  unfold secondVariation
  simp only [Finset.mul_sum,← Finset.sum_add_distrib]
  apply Finset.sum_le_sum
  intro i _
  rw [secondDifference_three_channels]
  calc
    _ ≤ |u*secondDifference N a i+v*secondDifference N b i|+
        |w*secondDifference N c i| := abs_add_le _ _
    _ ≤ (|u*secondDifference N a i|+|v*secondDifference N b i|)+
        |w*secondDifference N c i| := add_le_add_right (abs_add_le _ _) _
    _ = _ := by simp only [abs_mul]

theorem actual_arithmetic_secondVariation_bound (level : ℕ)
    (χ : DirichletCharacter ℂ level) (m : ZMod N → ℕ) (u v w : ℝ) :
    secondVariation N (arithmeticPotential N level χ m u v w) ≤
      |u|*secondVariation N (fun j => ArithmeticFunction.vonMangoldt (m j))+
      |v|*secondVariation N (fun j => Real.log (UniqueFactorizationMonoid.radical (m j) : ℝ))+
      |w|*secondVariation N (fun j => (χ (m j : ZMod level)).re) := by
  exact secondVariation_three_channels N _ _ _ u v w

end GRWTSK.Analysis.OperatorTheory.SpectralTheory.ArithmeticCyclicSecondVariation
