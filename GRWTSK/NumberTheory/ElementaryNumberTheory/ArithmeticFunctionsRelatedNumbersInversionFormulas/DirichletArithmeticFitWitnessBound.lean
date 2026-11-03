/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.DirichletThreeChannelNormalMinimum
import Mathlib.Algebra.Order.BigOperators.Ring.Finset

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Full unit-residue witness lower bound. A nonzero overlap or conditioned
source witness is not invented. SOURCE_PROOF_CANDIDATES / NOT_RUN. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletArithmeticFitWitnessBound
open DirichletGlobalResidualEnergy DirichletFullPhaseResidualDecomposition
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicHamiltonian
variable (N : ℕ) [NeZero N]

def unitResidues : Finset (ZMod N) := Finset.univ.filter IsUnit

theorem fit_witness_square_bound (χ : DirichletCharacter ℂ N) (t : ℝ) (λ : ℂ)
    (q v : ZMod N → ℝ) (horth : (∑ i ∈ unitResidues N, v i*q i)=0) :
    (∑ i ∈ unitResidues N, v i*optimalRealDiagonal N χ t λ i)^2 ≤
      (∑ i ∈ unitResidues N, v i^2)*realDiagonalMismatch N χ t q λ := by
  have hc : (∑ i ∈ unitResidues N, v i*(q i-optimalRealDiagonal N χ t λ i)) =
      -(∑ i ∈ unitResidues N, v i*optimalRealDiagonal N χ t λ i) := by
    simp_rw [mul_sub]
    rw [Finset.sum_sub_distrib,horth,zero_sub]
  have hm : (∑ i ∈ unitResidues N, (q i-optimalRealDiagonal N χ t λ i)^2) =
      realDiagonalMismatch N χ t q λ := by
    simp [unitResidues,Finset.sum_filter,realDiagonalMismatch]
  have hh := Finset.sum_mul_sq_le_sq_mul_sq (unitResidues N) v
    (fun i => q i-optimalRealDiagonal N χ t λ i)
  rw [hc,neg_sq,hm] at hh
  exact hh

theorem three_channel_witness_orthogonal (level : ℕ) (ψ : DirichletCharacter ℂ level)
    (m : ZMod N → ℕ) (v : ZMod N → ℝ)
    (ha : (∑ i ∈ unitResidues N, v i*ArithmeticFunction.vonMangoldt (m i))=0)
    (hb : (∑ i ∈ unitResidues N, v i*Real.log (UniqueFactorizationMonoid.radical (m i) : ℝ))=0)
    (hc : (∑ i ∈ unitResidues N, v i*(ψ (m i : ZMod level)).re)=0)
    (a b c : ℝ) :
    (∑ i ∈ unitResidues N, v i*arithmeticPotential N level ψ m a b c i)=0 := by
  have he : (∑ i ∈ unitResidues N, v i*arithmeticPotential N level ψ m a b c i) =
      a*(∑ i ∈ unitResidues N, v i*ArithmeticFunction.vonMangoldt (m i))+
      b*(∑ i ∈ unitResidues N, v i*Real.log (UniqueFactorizationMonoid.radical (m i) : ℝ))+
      c*(∑ i ∈ unitResidues N, v i*(ψ (m i : ZMod level)).re) := by
    simp only [Finset.mul_sum,← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro i _
    unfold arithmeticPotential
    ring
  rw [he,ha,hb,hc]
  ring

end GRWTSK.NumberTheory.Zeta.Riemann.DirichletArithmeticFitWitnessBound
