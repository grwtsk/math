/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.ArithmeticEndpointChannelLeakage
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletModThreeQuadraticConstruction

set_option autoImplicit false
noncomputable section

/-! Literal binary labels and genuine mod3 character yield a signed channel
cancellation plane. SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.ArithmeticBinaryLabelCancellation
open ArithmeticCyclicSecondVariation
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicHamiltonian
open GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreeQuadraticConstruction
variable (N : ℕ) [NeZero N]

def binaryLabels (b : ZMod N → Bool) (j : ZMod N) : ℕ := if b j then 2 else 1

theorem actual_binary_potential (b : ZMod N → Bool) (u v w : ℝ) (j : ZMod N) :
    arithmeticPotential N 3 modThreeQuadratic (binaryLabels N b) u v w j=
      w+(if b j then (u+v)*Real.log 2-2*w else 0) := by
  have hr : UniqueFactorizationMonoid.radical (2 : ℕ)=2 := by
    simpa using UniqueFactorizationMonoid.radical_of_prime Nat.prime_two.prime
  cases hb : b j
  all_goals simp [binaryLabels,hb,arithmeticPotential,hr,
    ArithmeticFunction.vonMangoldt_apply_prime Nat.prime_two,
    modThreeQuadratic_one,modThreeQuadratic_two]
  all_goals ring

theorem actual_binary_cancellation (b : ZMod N → Bool) (u v w : ℝ)
    (hcancel : (u+v)*Real.log 2=2*w) :
    arithmeticPotential N 3 modThreeQuadratic (binaryLabels N b) u v w=fun _ => w := by
  funext j
  rw [actual_binary_potential]
  simp [hcancel]

theorem actual_binary_variation_zero (b : ZMod N → Bool) (u v w : ℝ)
    (hcancel : (u+v)*Real.log 2=2*w) :
    secondVariation N (arithmeticPotential N 3 modThreeQuadratic (binaryLabels N b) u v w)=0 := by
  rw [actual_binary_cancellation N b u v w hcancel]
  simp [secondVariation,secondDifference]

/- This supplies exact zero actual variation for these literal labels and
coefficients, even when the separate-channel triangle budget is positive.
It does not supply cancellation for fixed physical data or a positive
volume-uniform mass gap; constant-potential kinetic gaps can close. -/
end GRWTSK.Analysis.OperatorTheory.SpectralTheory.ArithmeticBinaryLabelCancellation
