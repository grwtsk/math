/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.ArithmeticCyclicZetaResidualBudget
import Mathlib.Algebra.Order.Archimedean.Basic
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Shrinking complete budgets in a fixed arithmetic family

Every witness retains a nonzero full complex vector and the exact signed
five-error decomposition for the same stage, vector and spectral parameter.
The family precedes both zero and scale quantifiers. The natural scale index
is not assumed to equal the selected stage index.

SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
The all-zero/all-scale supplier is UNSUPPLIED. This is a conditional RH
consumer, not a construction of arithmetic residuals or a proof of RH.
-/
namespace GRWTSK.NumberTheory.Zeta.Riemann.ArithmeticCyclicShrinkingBudgets
open ArithmeticCyclicZetaResidualCriterion ArithmeticCyclicZetaResidualBudget
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicHamiltonian
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicOperatorStability
open GRWTSK.Analysis.ErrorBounds.ScrewSpectralReconstruction
open GRWTSK.RiemannHypothesis

def stagePotential (A : ArithmeticStage) : ZMod (A.n + 1) → ℝ :=
  arithmeticPotential (A.n + 1) A.level A.character A.labels
    A.mangoldtCoefficient A.radicalCoefficient A.characterCoefficient

/-- Rescaling the input rescales the complete residual, without spectral progress. -/
theorem residual_smul (N : ℕ) [NeZero N] (t : ℝ) (q : ZMod N → ℝ)
    (s c : ℂ) (x : EuclideanSpace ℂ (ZMod N)) :
    hamiltonianOperator N t q (c • x) - zetaSpectralParameter s • (c • x) =
      c • (hamiltonianOperator N t q x - zetaSpectralParameter s • x) := by
  rw [map_smul, smul_sub, smul_comm c (zetaSpectralParameter s) x]

/-- Nonzero scalar shrinkage cannot improve the relative residual. -/
theorem relative_residual_smul (N : ℕ) [NeZero N] (t : ℝ) (q : ZMod N → ℝ)
    (s c : ℂ) (hc : c ≠ 0) (x : EuclideanSpace ℂ (ZMod N)) :
    ‖hamiltonianOperator N t q (c • x) - zetaSpectralParameter s • (c • x)‖ /
        ‖c • x‖ =
      ‖hamiltonianOperator N t q x - zetaSpectralParameter s • x‖ / ‖x‖ := by
  rw [residual_smul, norm_smul, norm_smul]
  by_cases hx : x = 0
  · simp [hx]
  · field_simp [ne_of_gt (norm_pos_iff.mpr hc), ne_of_gt (norm_pos_iff.mpr hx)]

/-- The bound is relative to the unchanged full vector, not an absolute tolerance. -/
def CompleteBudgetWitness (family : ℕ → ArithmeticStage) (s : ℂ) (τ : ℝ) : Prop :=
  ∃ (k : ℕ) (x : EuclideanSpace ℂ (ZMod ((family k).n + 1))),
    x ≠ 0 ∧ ∃ D : FullResidualDecomposition ((family k).n + 1)
      (family k).hopping (stagePotential (family k)) s x,
      D.budget.total ≤ τ * ‖x‖

theorem approximation_of_complete_budget (family : ℕ → ArithmeticStage)
    (s : ℂ) (τ : ℝ) (h : CompleteBudgetWitness family s τ) :
    ArithmeticApproximation family s τ := by
  obtain ⟨k, x, hx, D, hD⟩ := h
  exact ⟨k, x, hx, D.residual_norm_le.trans hD⟩

/-- Charging each of the five actual terms suffices; no term may be omitted. -/
theorem total_le_of_five_shares {N : ℕ} [NeZero N]
    {t : ℝ} {q : ZMod N → ℝ} {s : ℂ} {x : EuclideanSpace ℂ (ZMod N)}
    (D : FullResidualDecomposition N t q s x) (τ : ℝ)
    (hs : D.budget.source ≤ τ * ‖x‖ / 5)
    (hh : D.budget.hermite ≤ τ * ‖x‖ / 5)
    (ht : D.budget.transport ≤ τ * ‖x‖ / 5)
    (hp : D.budget.spectral ≤ τ * ‖x‖ / 5)
    (hr : D.budget.tail ≤ τ * ‖x‖ / 5) :
    D.budget.total ≤ τ * ‖x‖ := by
  unfold Budget.total
  linarith

/-- An absolute budget is useful only with a retained lower bound on vector norm. -/
theorem relative_budget_of_norm_lower_bound {N : ℕ} [NeZero N]
    {t : ℝ} {q : ZMod N → ℝ} {s : ℂ} {x : EuclideanSpace ℂ (ZMod N)}
    (D : FullResidualDecomposition N t q s x) (m τ : ℝ)
    (hm : 0 < m) (hx : m ≤ ‖x‖) (hτ : 0 ≤ τ)
    (hD : D.budget.total ≤ τ * m) :
    x ≠ 0 ∧ D.budget.total ≤ τ * ‖x‖ := by
  constructor
  · exact norm_pos_iff.mp (hm.trans_le hx)
  · exact hD.trans (mul_le_mul_of_nonneg_left hx hτ)

/-- A cofinal harmonic scale suffices; finitely many scales do not. -/
theorem critical_line_of_harmonic_budgets (family : ℕ → ArithmeticStage) (s : ℂ)
    (h : ∀ n : ℕ, CompleteBudgetWitness family s (1 / (n + 1 : ℝ))) :
    s.re = 1 / 2 := by
  apply critical_line_of_arbitrarily_small_arithmetic_residuals family s
  intro ε hε
  obtain ⟨n, hn⟩ := exists_nat_one_div_lt hε
  obtain ⟨k, x, hx, hr⟩ := approximation_of_complete_budget family s _ (h n)
  refine ⟨k, x, hx, hr.trans ?_⟩
  exact mul_le_mul_of_nonneg_right hn.le (norm_nonneg x)

def ZetaShrinkingBudgetSupplier (family : ℕ → ArithmeticStage) : Prop :=
  ∀ s : ℂ, NontrivialZetaZero s →
    ∀ n : ℕ, CompleteBudgetWitness family s (1 / (n + 1 : ℝ))

theorem riemannHypothesis_of_shrinking_budget_supplier
    (family : ℕ → ArithmeticStage) (h : ZetaShrinkingBudgetSupplier family) :
    _root_.RiemannHypothesis := by
  intro s hz ht hp
  exact critical_line_of_harmonic_budgets family s (h s ⟨hz, ht, hp⟩)

end GRWTSK.NumberTheory.Zeta.Riemann.ArithmeticCyclicShrinkingBudgets
