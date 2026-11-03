/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletArithmeticFitDirectionalEnergy

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Three explicit normal equations imply an arithmetic-family fit minimum,
including singular channel systems. No small minimum is supplied. NOT_RUN. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletThreeChannelNormalMinimum
open DirichletGlobalResidualEnergy DirichletArithmeticFitDirectionalEnergy
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicHamiltonian
variable (N : ℕ) [NeZero N]

theorem fitCross_three_channels (χ : DirichletCharacter ℂ N) (t : ℝ) (λ : ℂ)
    (q a b c : ZMod N → ℝ) (u v w : ℝ) :
    fitCross N χ t λ q (fun i => u*a i+v*b i+w*c i) =
      u*fitCross N χ t λ q a+v*fitCross N χ t λ q b+w*fitCross N χ t λ q c := by
  classical
  unfold fitCross
  simp only [Finset.mul_sum,← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro i _
  split_ifs <;> ring

theorem three_normal_equations_minimize (χ : DirichletCharacter ℂ N)
    (t : ℝ) (λ : ℂ) (q a b c : ZMod N → ℝ)
    (ha : fitCross N χ t λ q a=0) (hb : fitCross N χ t λ q b=0)
    (hc : fitCross N χ t λ q c=0) (u v w : ℝ) :
    realDiagonalMismatch N χ t q λ ≤
      realDiagonalMismatch N χ t (fun i => q i+(u*a i+v*b i+w*c i)) λ := by
  have hn : fitCross N χ t λ q (fun i => u*a i+v*b i+w*c i)=0 := by
    rw [fitCross_three_channels,ha,hb,hc]
    ring
  simpa only [one_mul] using
    orthogonal_direction_cannot_improve N χ t 1 λ q _ hn

theorem actual_arithmetic_normal_minimum (χ : DirichletCharacter ℂ N)
    (t : ℝ) (λ : ℂ) (level : ℕ) (ψ : DirichletCharacter ℂ level)
    (m : ZMod N → ℕ) (u₀ v₀ w₀ : ℝ)
    (ha : fitCross N χ t λ (arithmeticPotential N level ψ m u₀ v₀ w₀)
      (fun i => ArithmeticFunction.vonMangoldt (m i))=0)
    (hb : fitCross N χ t λ (arithmeticPotential N level ψ m u₀ v₀ w₀)
      (fun i => Real.log (UniqueFactorizationMonoid.radical (m i) : ℝ))=0)
    (hc : fitCross N χ t λ (arithmeticPotential N level ψ m u₀ v₀ w₀)
      (fun i => (ψ (m i : ZMod level)).re)=0) (du dv dw : ℝ) :
    realDiagonalMismatch N χ t (arithmeticPotential N level ψ m u₀ v₀ w₀) λ ≤
      realDiagonalMismatch N χ t
        (arithmeticPotential N level ψ m (u₀+du) (v₀+dv) (w₀+dw)) λ := by
  have hh := three_normal_equations_minimize N χ t λ
    (arithmeticPotential N level ψ m u₀ v₀ w₀) _ _ _ ha hb hc du dv dw
  have he := actual_arithmetic_family_line N level ψ m u₀ v₀ w₀ du dv dw 1
  simp only [one_mul] at he
  rw [he]
  exact hh

end GRWTSK.NumberTheory.Zeta.Riemann.DirichletThreeChannelNormalMinimum
