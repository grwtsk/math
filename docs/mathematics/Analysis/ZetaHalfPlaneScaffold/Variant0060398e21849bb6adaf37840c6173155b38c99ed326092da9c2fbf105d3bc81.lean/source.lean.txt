import Folder.Rebuild.NumberTheory.FiniteEulerProduct
import Folder.Rebuild.ClassicalAnchor
import Mathlib.Analysis.SpecialFunctions.Pow.Real

/-!
# Folder.Rebuild.AnalyticNumberTheory.ZetaHalfPlaneScaffold

Target propositions and finite checked facts for the zeta half-plane route.
-/

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

open scoped BigOperators

def ZetaSeriesConvergesOnRealHalfPlane : Prop :=
  ∀ σ : ℝ, 1 < σ →
    Summable fun n : Nat =>
      if n = 0 then 0 else (n : ℝ) ^ (-σ)

def EulerProductForZetaHalfPlaneTarget : Prop :=
  ∃ A : ClassicalAnchor,
    A.theoremLabel = "finite-to-infinite Euler product route" ∧
      A.formalRole = RebuildProofStatus.theoremTarget

def ZetaNonzeroOnRealGreaterThanOneTarget : Prop :=
  ∃ A : ClassicalAnchor,
    A.shortName = "Euler product" ∧
      A.formalRole = RebuildProofStatus.theoremTarget

def PrimeNumberTheoremTarget : Prop :=
  ∃ A : ClassicalAnchor,
    A.theoremLabel = "PrimeNumberTheoremTarget" ∧
      A.formalRole = RebuildProofStatus.theoremTarget

theorem finite_partial_zeta_sum_nonnegative
    (σ : ℝ)
    (N : Nat) :
    0 ≤
      ∑ n ∈ Finset.Icc 1 N,
        (if n = 0 then 0 else (n : ℝ) ^ (-σ)) := by
  refine Finset.sum_nonneg ?_
  intro n _hn
  by_cases hn0 : n = 0
  · simp [hn0]
  · simp [hn0, Real.rpow_nonneg (by positivity : (0 : ℝ) ≤ n) (-σ)]

end AnalyticNumberTheory
end Rebuild
end Folder
