import Mathlib
import GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ToeplitzHankel
import GRWTSK.Analysis.AsymptoticAnalysis.SublinearDyadic
import GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.SimilarityReconstruction

/-!
Exact zero-time source declarations for the supplied manuscripts.
Research direction: grwtsk contributors. Formalization assistance: ChatGPT.
The regularized completion is essential at s=0 and s=1. We do not define xi
by multiplying totalized pole values and then assert that it is entire.
The full analytic-return theorem is a SPECIFICATION, not a proved instance.
-/
noncomputable section
open scoped Matrix.Norms.L2Operator
namespace GRWTSK.NumberTheory.Zeta.CompletedQuotientSource
open GRWTSK.Analysis.SublinearDyadic
open GRWTSK.Analysis.SimilarityReconstruction
open GRWTSK.Algebra.LinearAlgebra.ToeplitzHankel

/-- Entire xi normalization, including both formerly singular endpoints. -/
def xi (s : ℂ) : ℂ := (s*(s-1)*completedRiemannZeta₀ s+1)/2

@[simp] theorem xi_zero : xi 0=(1/2:ℂ) := by norm_num [xi]
@[simp] theorem xi_one : xi 1=(1/2:ℂ) := by norm_num [xi]

theorem differentiable_xi : Differentiable ℂ xi := by
  unfold xi
  exact (((differentiable_id.mul (differentiable_id.sub_const 1)).mul
    differentiable_completedZeta₀).add_const 1).div_const 2

theorem xi_one_sub (s : ℂ) : xi (1-s)=xi s := by
  simp only [xi, completedRiemannZeta₀_one_sub]
  ring

theorem xi_eq_completed (s : ℂ) (hs0 : s ≠ 0) (hs1 : s ≠ 1) :
    xi s=(1/2:ℂ)*s*(s-1)*completedRiemannZeta s := by
  rw [completedRiemannZeta_eq]
  unfold xi
  have hn : 1-s ≠ 0 := sub_ne_zero.mpr (Ne.symm hs1)
  field_simp [hs0, hn]
  ring

def spectralSource (z : ℂ) : ℂ := xi ((1/2:ℂ)-Complex.I*z)
def denominator (z : ℂ) : ℂ := spectralSource z+Complex.I*deriv spectralSource z
def companion (z : ℂ) : ℂ := spectralSource z-Complex.I*deriv spectralSource z
def cayley (w : ℂ) : ℂ := Complex.I*(1+w)/(1-w)
def quotient (w : ℂ) : ℂ := -companion (cayley w)/denominator (cayley w)

/-- Derivative-defined Taylor data. Convergence and identification of the germ
must be proved, not obtained from this definition alone. -/
def coefficient (k : ℕ) : ℂ :=
  iteratedDeriv k quotient 0 / (Nat.factorial k:ℂ)

def sourceToeplitz (n : ℕ) : Matrix (Fin n) (Fin n) ℂ := toeplitz coefficient n
def sourceHankel (n : ℕ) : Matrix (Fin n) (Fin n) ℂ := hankel coefficient n

def sourceSize (n : ℕ) : ℝ := 1+‖sourceToeplitz n‖
def relativeHankel (n : ℕ) : ℝ := ‖sourceHankel n‖/sourceSize n

theorem sourceSize_ge_one (n : ℕ) : 1 ≤ sourceSize n := by
  dsimp [sourceSize]
  exact le_add_of_nonneg_right (norm_nonneg _)

theorem relativeHankel_nonnegative (n : ℕ) : 0 ≤ relativeHankel n := by
  dsimp [relativeHankel, sourceSize]; positivity

/-- These are elementary Euclidean norm adapters required by the final consumer.
This package proves the exact matrix entries, but does not claim a completed
formal proof of these two Euclidean operator-norm adapters. -/
structure SectionNormLaws : Prop where
  monotone : Monotone sourceSize
  doubling : ∀ n, 1 ≤ n → sourceSize (2*n) ≤ (1+relativeHankel n)*sourceSize n

/-- A precise, UNINHABITED-IN-THIS-PACKAGE specification of the analytic suffix.
No `axiom`, fabricated instance or theorem proof is supplied for this definition. -/
def AnalyticReturnStatement : Prop :=
  Asymptotics.IsLittleO Filter.atTop
    (fun n => Real.log (sourceSize n)) (fun n : ℕ => (n:ℝ)) → RiemannHypothesis

/-- A quantified arithmetic certificate. Its budget field is the open all-depth
arithmetic assertion, not a conclusion of the finite N≤64 computation. -/
structure TensorFamilyBudget where
  conditioning : ℕ → ℝ
  coreBound : ℕ → ℝ
  errorBound : ℕ → ℝ
  conditioning_ge_one : ∀ n, 1 ≤ conditioning n
  core_nonnegative : ∀ n, 0 ≤ coreBound n
  error_nonnegative : ∀ n, 0 ≤ errorBound n
  reconstructed_bound : ∀ n,
    relativeHankel n ≤ conditioning n*(coreBound n+errorBound n)
  all_depth_log_budget : UpperSublinear (fun n =>
    Real.log (conditioning n)+Real.log (1+coreBound n+errorBound n))

/-- This is the proved generic asymptotic consumer instantiated at the declared source. -/
theorem tensorFamilyBudget_returns_growth (laws : SectionNormLaws) (cert : TensorFamilyBudget) :
    Asymptotics.IsLittleO Filter.atTop
      (fun n => Real.log (sourceSize n)) (fun n : ℕ => (n:ℝ)) := by
  exact sublinear_log_of_tensor_budget sourceSize relativeHankel
    cert.conditioning cert.coreBound cert.errorBound sourceSize_ge_one laws.monotone
    relativeHankel_nonnegative cert.conditioning_ge_one cert.core_nonnegative
    cert.error_nonnegative cert.reconstructed_bound laws.doubling cert.all_depth_log_budget

/-- Conditional assembly only. The statement explicitly requires BOTH the
formal analytic-return proof and the all-depth arithmetic certificate. -/
theorem riemannHypothesis_of_supplied_return (analyticReturn : AnalyticReturnStatement)
    (laws : SectionNormLaws) (cert : TensorFamilyBudget) : RiemannHypothesis :=
  analyticReturn (tensorFamilyBudget_returns_growth laws cert)

end GRWTSK.NumberTheory.Zeta.CompletedQuotientSource
