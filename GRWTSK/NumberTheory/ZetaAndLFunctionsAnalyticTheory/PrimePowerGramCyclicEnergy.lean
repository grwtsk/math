/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.PrimePowerVonMangoldt
import GRWTSK.OperatorTheory.DeterminantSectorCoercivity

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Exact prime-power Gram realization as cyclic arithmetic energy

A supplied bijection enumerates every atom of the actual finite source
stage exactly once. With zero hopping and the literal Mangoldt labels,
the real test samples form a full vector whose Hamiltonian energy equals
the existing stageEnergy. No arbitrary source weights are substituted.
The bijection requires a nonempty stage for NeZero N; no empty-stage or
infinite-limit conclusion is implicit. Signed quartic extraction and the
analytic zero-to-vector realization remain missing.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.NumberTheory.Zeta.Riemann.PrimePowerGramCyclicEnergy
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicHamiltonian
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicOperatorStability
open GRWTSK.Analysis.OperatorTheory.SpectralTheory.DeterminantSectorCoercivity
open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.PrimePowerAtoms
open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.PrimePowerVonMangoldt

variable (N : ℕ) [NeZero N]

theorem diagonal_real_sample_energy (q r : ZMod N → ℝ) :
    hamiltonianEnergy N 0 q (WithLp.toLp 2 (fun i => (r i : ℂ))) =
      ∑ i, q i * (r i) ^ 2 := by
  have he : WithLp.ofLp (hamiltonianOperator N 0 q
      (WithLp.toLp 2 (fun i => (r i : ℂ)))) = fun i => (q i : ℂ) * (r i : ℂ) := by
    funext i
    rw [hamiltonianOperator_mulVec, hamiltonian_mulVec]
    simp
  unfold hamiltonianEnergy
  rw [PiLp.inner_apply]
  simp only [map_sum]
  apply Finset.sum_congr rfl
  intro i _
  change (inner ℂ (r i : ℂ)
    (WithLp.ofLp (hamiltonianOperator N 0 q (WithLp.toLp 2 (fun j => (r j : ℂ)))) i)).re = _
  rw [he, RCLike.inner_apply]
  simp only [Complex.conj_ofReal, ← Complex.ofReal_mul, Complex.ofReal_re]
  ring

def stageVector (stage : PrimePowerWitnessStage) (e : ZMod N ≃ stage.WitnessIndex)
    (f : ℝ → ℝ) : EuclideanSpace ℂ (ZMod N) :=
  WithLp.toLp 2 (fun i => (f (logLocation (e i).1) : ℂ))

theorem actual_stageEnergy_eq_cyclic_energy (stage : PrimePowerWitnessStage)
    (e : ZMod N ≃ stage.WitnessIndex) (f : ℝ → ℝ)
    (level : ℕ) (χ : DirichletCharacter ℂ level) :
    hamiltonianEnergy N 0
      (arithmeticPotential N level χ (fun i => atomNat (e i).1) 1 0 0)
      (stageVector N stage e f) = stageEnergy stage f := by
  unfold stageVector
  rw [diagonal_real_sample_energy]
  simp only [arithmeticPotential, one_mul, zero_mul, add_zero]
  rw [stageEnergy_eq_vonMangoldt_sum]
  apply Fintype.sum_equiv e
  intro i
  rfl

end GRWTSK.NumberTheory.Zeta.Riemann.PrimePowerGramCyclicEnergy
