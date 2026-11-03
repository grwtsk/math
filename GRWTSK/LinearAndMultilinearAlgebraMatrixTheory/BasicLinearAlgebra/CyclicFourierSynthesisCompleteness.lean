/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.OperatorTheory.CyclicFourierPotentialMixedForm
import Mathlib.LinearAlgebra.FiniteDimensional.Basic

set_option autoImplicit false
noncomputable section

/-! Full finite Fourier synthesis preserves norm and covers every vector.
No continuum map, Fourier-tail estimate or physical margin is supplied.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicFourierSynthesisCompleteness
open CyclicFourierPotentialMixedForm
variable (N : ℕ) [NeZero N]

def synthesisLinear : EuclideanSpace ℂ (ZMod N) →ₗ[ℂ] EuclideanSpace ℂ (ZMod N) where
  toFun a := synthesis N (fun k => a k)
  map_add' a b := by simp [synthesis, add_smul, Finset.sum_add_distrib]
  map_smul' c a := by simp [synthesis, Finset.smul_sum, smul_smul, mul_comm]

theorem synthesisLinear_inner (a b : EuclideanSpace ℂ (ZMod N)) :
    inner ℂ (synthesisLinear N a) (synthesisLinear N b) = inner ℂ a b := by
  change inner ℂ (synthesis N (fun k => a k)) (synthesis N (fun k => b k)) = _
  rw [synthesis_inner, PiLp.inner_apply]
  apply Finset.sum_congr rfl
  intro k _
  rw [RCLike.inner_apply]

theorem synthesisLinear_norm (a : EuclideanSpace ℂ (ZMod N)) :
    ‖synthesisLinear N a‖=‖a‖ := by
  have h := congrArg Complex.re (synthesisLinear_inner N a a)
  simp only [inner_self_eq_norm_sq] at h
  nlinarith [norm_nonneg (synthesisLinear N a), norm_nonneg a]

theorem synthesisLinear_injective : Function.Injective (synthesisLinear N) := by
  intro a b hab
  have h := synthesisLinear_norm N (a-b)
  rw [map_sub, hab, sub_self, norm_zero] at h
  exact sub_eq_zero.mp (norm_eq_zero.mp h.symm)

theorem synthesisLinear_surjective : Function.Surjective (synthesisLinear N) :=
  LinearMap.surjective_of_injective (synthesisLinear_injective N)

def synthesisEquiv : EuclideanSpace ℂ (ZMod N) ≃ₗ[ℂ] EuclideanSpace ℂ (ZMod N) :=
  LinearEquiv.ofBijective (synthesisLinear N)
    ⟨synthesisLinear_injective N, synthesisLinear_surjective N⟩

end GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicFourierSynthesisCompleteness
