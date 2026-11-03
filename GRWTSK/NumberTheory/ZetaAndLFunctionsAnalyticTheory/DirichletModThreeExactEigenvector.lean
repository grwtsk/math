/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletGlobalResidualEnergy

set_option autoImplicit false
noncomputable section

/-! Exact three-site calculation for a genuine character with explicitly
retained residue values. Constructing that character and identifying
analytic zeros are separate obligations. NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreeExactEigenvector
open DirichletGenuineCharacterVectorNorm
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory
open ArithmeticCyclicHamiltonian ArithmeticCyclicOperatorStability

theorem genuine_mod_three_neighbor (χ : DirichletCharacter ℂ 3)
    (h₁ : χ 1=1) (h₂ : χ 2 = -1) (i : ZMod 3) :
    χ (i+1)+χ (i-1) = -χ i := by
  have h₀ : χ 0=0 := by simp
  have hu : (Finset.univ : Finset (ZMod 3))={0,1,2} := by decide
  have hi := Finset.mem_univ i
  rw [hu] at hi
  simp only [Finset.mem_insert,Finset.mem_singleton] at hi
  rcases hi with rfl | rfl | rfl <;> norm_num [h₀,h₁,h₂]

theorem genuine_mod_three_constant_eigenvector (χ : DirichletCharacter ℂ 3)
    (h₁ : χ 1=1) (h₂ : χ 2 = -1) (t w : ℝ) :
    hamiltonianOperator 3 t (fun _ => w) (characterVector 3 χ) =
      ((w-t : ℝ) : ℂ) • characterVector 3 χ := by
  apply WithLp.ofLp_injective 2
  funext i
  have hh := congrFun (hamiltonianOperator_mulVec 3 t (fun _ => w) (characterVector 3 χ)) i
  change hamiltonianOperator 3 t (fun _ => w) (characterVector 3 χ) i = _ at hh
  change hamiltonianOperator 3 t (fun _ => w) (characterVector 3 χ) i = _
  rw [hh,hamiltonian_mulVec]
  change (t : ℂ)*(χ (i+1)+χ (i-1))+(w : ℂ)*χ i = ((w-t : ℝ) : ℂ)*χ i
  rw [genuine_mod_three_neighbor χ h₁ h₂]
  push_cast
  ring

/- Allowing w to depend on a desired real eigenvalue changes the operator.
This finite identity contains no analytic L-function zero premise. -/
end GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreeExactEigenvector
