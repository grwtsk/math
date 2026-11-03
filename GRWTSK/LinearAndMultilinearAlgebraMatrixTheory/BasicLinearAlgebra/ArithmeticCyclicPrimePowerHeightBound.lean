/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.ArithmeticCyclicPrimePowerHeight

set_option autoImplicit false
noncomputable section

/-! SOURCE_PROOF_CANDIDATE / NOT_RUN. Retaining and bounding the exponent
repairs one lost channel. No uniform bound on ABC triples is supplied. -/
namespace GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicPrimePowerHeightBound
open ArithmeticCyclicHamiltonian ArithmeticCyclicPrimePowerHeight

theorem height_le_of_retained_exponent_bound (N : ℕ) [NeZero N]
    (level : ℕ) (χ : DirichletCharacter ℂ level) (p k : ZMod N → ℕ)
    (hp : ∀ i, (p i).Prime) (hk : ∀ i, 0 < k i)
    (u v : ℝ) (hcoef : u + v ≠ 0) (K : ℝ) (i : ZMod N)
    (hK : (k i : ℝ) ≤ K) :
    Real.log ((p i ^ k i : ℕ) : ℝ) ≤
      K * (arithmeticPotential N level χ (fun j => p j ^ k j) u v 0 i / (u + v)) := by
  have hrad := log_radical_recovery N level χ p k hp hk u v hcoef i
  have hlog : 0 ≤ Real.log (UniqueFactorizationMonoid.radical (p i ^ k i) : ℝ) := by
    rw [ArithmeticFeatureGram.radical_prime_power (hp i) (hk i)]
    exact Real.log_nonneg (by exact_mod_cast (hp i).one_lt.le)
  have hq : 0 ≤ arithmeticPotential N level χ (fun j => p j ^ k j) u v 0 i /
      (u + v) := by linarith
  rw [log_height_recovery N level χ p k hp hk u v hcoef i, mul_div_assoc]
  exact mul_le_mul_of_nonneg_right hK hq

end GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicPrimePowerHeightBound
