/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletModThreeFixedOrdinateObstruction

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Full phase-retaining block energy. Literal growing cyclic embedding is
still separate. SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreeTwistBlockEnergy

def characterBlock : Fin 3 → ℝ := ![0,1,-1]
def differenceBlock : Fin 3 → ℝ := ![2,-1,-1]

def twistResidualBlock (a : ℂ) (b : ℝ) (j : Fin 3) : ℂ :=
  a*(characterBlock j : ℂ)+Complex.I*(b : ℂ)*(differenceBlock j : ℂ)

theorem full_twist_block_energy (a : ℂ) (b : ℝ) :
    (∑ j : Fin 3, ‖twistResidualBlock a b j‖^2)=2*‖a‖^2+6*b^2 := by
  simp [Fin.sum_univ_succ,twistResidualBlock,characterBlock,differenceBlock,
    Complex.sq_norm,Complex.normSq_apply,Complex.mul_re,Complex.mul_im]
  <;> ring

theorem phase_retaining_block_energy (a : ℂ) (b : ℝ) (phase : Fin 3 → ℂ)
    (hphase : ∀ j, ‖phase j‖=1) :
    (∑ j : Fin 3, ‖phase j*twistResidualBlock a b j‖^2)=2*‖a‖^2+6*b^2 := by
  simp_rw [norm_mul,hphase,one_mul]
  exact full_twist_block_energy a b

theorem growing_full_block_energy (M : ℕ) (a : ℂ) (b : ℝ)
    (phase : Fin M → Fin 3 → ℂ) (hphase : ∀ k j, ‖phase k j‖=1) :
    (∑ k : Fin M, ∑ j : Fin 3, ‖phase k j*twistResidualBlock a b j‖^2)=
      (M : ℝ)*(2*‖a‖^2+6*b^2) := by
  simp_rw [phase_retaining_block_energy a b _ (hphase _)]
  simp

/- For the proposed cyclic twist a=w-t*cos(theta)-lambda,b=t*sin(theta).
The zero-character site contributes 4*b^2 per block and cannot be removed.
The cyclic site equivalence, source shift identity and normalization must
be supplied before this finite block identity is an operator theorem.
No analytic zero supplies a residual budget here. -/
end GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreeTwistBlockEnergy
