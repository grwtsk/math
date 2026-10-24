import Mathematics.SpectralClosure.SelfAdjoint
import Mathlib.Algebra.Module.LinearMap.Basic

/-!
# Unitary-profile functional symmetry

The exact algebraic theorem sends an eigenpair at `λ` to an eigenpair at
`-λ` when a linear involution anticommutes with the operator.  Analytic
unitarity and arithmetic interpretation remain separate certificate fields.
-/

namespace Mathematics.SpectralClosure

structure FunctionalSymmetry
    (Vector : Type)
    [AddCommGroup Vector] [Module ℝ Vector] where
  operator : Vector →ₗ[ℝ] Vector
  involution : Vector →ₗ[ℝ] Vector
  involutive :
    involution.comp involution = LinearMap.id
  anticommutes :
    operator.comp involution =
      -(involution.comp operator)
  unitaryStatement : Prop
  unitaryStatus : ProofDisposition

def IsEigenpair
    {Vector : Type}
    [AddCommGroup Vector] [Module ℝ Vector]
    (operator : Vector →ₗ[ℝ] Vector)
    (eigenvalue : ℝ)
    (vector : Vector) : Prop :=
  operator vector = eigenvalue • vector

theorem functional_symmetry_reflects_eigenpair
    {Vector : Type}
    [AddCommGroup Vector] [Module ℝ Vector]
    (symmetry : FunctionalSymmetry Vector)
    (eigenvalue : ℝ)
    (vector : Vector)
    (eigenpair :
      IsEigenpair symmetry.operator eigenvalue vector) :
    IsEigenpair symmetry.operator (-eigenvalue)
      (symmetry.involution vector) := by
  unfold IsEigenpair at eigenpair ⊢
  have antiAt :=
    LinearMap.congr_fun symmetry.anticommutes vector
  simp only [LinearMap.comp_apply, LinearMap.neg_apply] at antiAt
  calc
    symmetry.operator (symmetry.involution vector) =
        -(symmetry.involution (symmetry.operator vector)) := antiAt
    _ = -(symmetry.involution (eigenvalue • vector)) := by
          rw [eigenpair]
    _ = (-eigenvalue) • symmetry.involution vector := by
          simp

structure ArithmeticPurityObligation where
  modelCriticalLineStatement : Prop
  arithmeticIdentificationStatement : Prop
  arithmeticStatus : ProofDisposition

end Mathematics.SpectralClosure
