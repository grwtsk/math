/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.ArithmeticCyclicShrinkingBudgets
import Mathlib.Data.Rat.Encodable

set_option autoImplicit false
noncomputable section

/-!
# Dense scalar-family diagnostic for the residual supplier

One fixed three-site family enumerates all rational scalar Hamiltonians.
It uses genuine arithmetic labels 2, zero hopping, Mangoldt coefficient
r/log(2), and zero remaining coefficients. Full vectors are retained.
Every point on the critical line admits arbitrarily small residuals in
this family, independently of whether it is a zeta zero.

The complete budget interface also permits charging the entire actual
residual to its source component. That is a tautological decomposition,
NOT a construction of an analytic source enclosure or a zero realization.

SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
The all-zero shrinking supplier for this diagnostic family is equivalent
to RH, not a newly supplied premise or an unconditional proof of RH.
-/
namespace GRWTSK.NumberTheory.Zeta.Riemann.ArithmeticCyclicDenseScalarDiagnostic
open ArithmeticCyclicZetaResidualCriterion ArithmeticCyclicZetaResidualBudget
open ArithmeticCyclicShrinkingBudgets
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicHamiltonian
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicOperatorStability
open GRWTSK.Analysis.ErrorBounds.ScrewSpectralReconstruction
open GRWTSK.RiemannHypothesis

def rationalAt (k : ℕ) : ℚ := (Encodable.decode ℚ k).getD 0

def scalarStage (r : ℚ) : ArithmeticStage where
  n := 2
  level := 1
  character := 1
  labels := fun _ => 2
  hopping := 0
  mangoldtCoefficient := (r : ℝ) / Real.log 2
  radicalCoefficient := 0
  characterCoefficient := 0

def scalarFamily (k : ℕ) : ArithmeticStage := scalarStage (rationalAt k)

theorem scalarStage_potential (r : ℚ) (i : ZMod 3) :
    stagePotential (scalarStage r) i = (r : ℝ) := by
  have hlog : Real.log (2 : ℝ) ≠ 0 := ne_of_gt (Real.log_pos (by norm_num))
  simp [stagePotential, scalarStage, arithmeticPotential,
    ArithmeticFunction.vonMangoldt_apply_prime Nat.prime_two, hlog]

theorem scalarStage_apply (r : ℚ) (x : EuclideanSpace ℂ (ZMod 3)) :
    (scalarStage r).operator x = ((r : ℝ) : ℂ) • x := by
  change hamiltonianOperator 3 0 (stagePotential (scalarStage r)) x = _
  apply WithLp.ofLp_injective 2
  rw [hamiltonianOperator_mulVec]
  funext i
  rw [hamiltonian_mulVec, scalarStage_potential]
  simp

theorem scalarFamily_encode_apply (r : ℚ) (x : EuclideanSpace ℂ (ZMod 3)) :
    (scalarFamily (Encodable.encode r)).operator x = ((r : ℝ) : ℂ) • x := by
  simpa [scalarFamily, rationalAt, Encodable.encodek] using scalarStage_apply r x

/-- Structural budget witness only: no analytic meaning is attached to the first term. -/
def chargedResidual (N : ℕ) [NeZero N] (t : ℝ) (q : ZMod N → ℝ) (s : ℂ)
    (x : EuclideanSpace ℂ (ZMod N)) : FullResidualDecomposition N t q s x where
  sourceError := hamiltonianOperator N t q x - zetaSpectralParameter s • x
  hermiteError := 0
  transportError := 0
  spectralError := 0
  tailError := 0
  budget := { source := ‖hamiltonianOperator N t q x - zetaSpectralParameter s • x‖
              hermite := 0, transport := 0, spectral := 0, tail := 0 }
  decomposition := by simp
  sourceBound := le_rfl
  hermiteBound := by simp
  transportBound := by simp
  spectralBound := by simp
  tailBound := by simp

theorem completeBudgetWitness_iff_approximation (family : ℕ → ArithmeticStage)
    (s : ℂ) (τ : ℝ) :
    CompleteBudgetWitness family s τ ↔ ArithmeticApproximation family s τ := by
  constructor
  · exact approximation_of_complete_budget family s τ
  · rintro ⟨k, x, hx, hr⟩
    refine ⟨k, x, hx, chargedResidual ((family k).n + 1)
      (family k).hopping (stagePotential (family k)) s x, ?_⟩
    simpa [chargedResidual, Budget.total, ArithmeticStage.operator, stagePotential] using hr

theorem scalarFamily_approximation_on_line (s : ℂ) (hs : s.re = 1 / 2)
    (ε : ℝ) (hε : 0 < ε) : ArithmeticApproximation scalarFamily s ε := by
  obtain ⟨r, hr⟩ := exists_rat_near s.im hε
  let x : EuclideanSpace ℂ (ZMod 3) := WithLp.toLp 2 (fun _ => (1 : ℂ))
  have hx : x ≠ 0 := by
    intro h
    have h0 := congrArg (fun y : EuclideanSpace ℂ (ZMod 3) => y 0) h
    norm_num [x] at h0
  have hλ : zetaSpectralParameter s = (s.im : ℂ) := by
    apply Complex.ext
    · simp only [zetaSpectralParameter_re, Complex.ofReal_re]
    · simp [zetaSpectralParameter_im, hs]
  refine ⟨Encodable.encode r, x, hx, ?_⟩
  rw [scalarFamily_encode_apply, hλ, ← sub_smul, norm_smul]
  have hb : ‖((r : ℝ) : ℂ) - (s.im : ℂ)‖ ≤ ε := by
    simpa only [← Complex.ofReal_sub, Complex.norm_real, Real.norm_eq_abs, abs_sub_comm]
      using hr.le
  exact mul_le_mul_of_nonneg_right hb (norm_nonneg x)

theorem scalarFamily_harmonic_budgets_iff_line (s : ℂ) :
    (∀ n : ℕ, CompleteBudgetWitness scalarFamily s (1 / (n + 1 : ℝ))) ↔
      s.re = 1 / 2 := by
  constructor
  · exact critical_line_of_harmonic_budgets scalarFamily s
  · intro hs n
    apply (completeBudgetWitness_iff_approximation scalarFamily s _).mpr
    exact scalarFamily_approximation_on_line s hs _ (by positivity)

theorem diagnostic_supplier_iff_riemannHypothesis :
    ZetaShrinkingBudgetSupplier scalarFamily ↔ _root_.RiemannHypothesis := by
  constructor
  · exact riemannHypothesis_of_shrinking_budget_supplier scalarFamily
  · intro h s hz
    exact (scalarFamily_harmonic_budgets_iff_line s).mpr (h s hz.1 hz.2.1 hz.2.2)

end GRWTSK.NumberTheory.Zeta.Riemann.ArithmeticCyclicDenseScalarDiagnostic
