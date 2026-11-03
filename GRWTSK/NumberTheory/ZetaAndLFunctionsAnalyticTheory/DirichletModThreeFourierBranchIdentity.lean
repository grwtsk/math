/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletModThreePrimitiveGauss
import Mathlib.Analysis.SpecialFunctions.Complex.CircleAddChar

set_option autoImplicit false
noncomputable section

/-! Exact genuine-character Fourier branch identity and Gauss normalization.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreeFourierBranchIdentity
open DirichletModThreeQuadraticConstruction DirichletModThreePrimitiveGauss

def branchNormalizer : ℂ := ZMod.stdAddChar (1 : ZMod 3)-ZMod.stdAddChar (-1 : ZMod 3)

theorem branchNormalizer_ne_zero : branchNormalizer≠0 := by
  intro h
  have he := sub_eq_zero.mp h
  have hi := ZMod.injective_stdAddChar he
  norm_num at hi

theorem genuine_character_branch_scaled (j : ZMod 3) :
    modThreeQuadratic j*branchNormalizer=ZMod.stdAddChar j-ZMod.stdAddChar (-j) := by
  have hu : (Finset.univ : Finset (ZMod 3))={0,1,2} := by decide
  have hj := Finset.mem_univ j
  rw [hu] at hj
  simp only [Finset.mem_insert,Finset.mem_singleton] at hj
  rcases hj with rfl | rfl | rfl
  all_goals norm_num [branchNormalizer,modThreeQuadratic_one,modThreeQuadratic_two]
  all_goals ring

theorem genuine_character_two_branches (j : ZMod 3) :
    modThreeQuadratic j=(ZMod.stdAddChar j-ZMod.stdAddChar (-j))/branchNormalizer :=
  (eq_div_iff branchNormalizer_ne_zero).mpr (genuine_character_branch_scaled j)

theorem actual_gauss_branch_normalizer :
    gaussSum modThreeQuadratic (ZMod.stdAddChar (N := 3))=branchNormalizer := by
  have hu : (Finset.univ : Finset (ZMod 3))={0,1,2} := by decide
  simp [gaussSum,hu,branchNormalizer,modThreeQuadratic_one,modThreeQuadratic_two]

theorem branchNormalizer_norm_sq : ‖branchNormalizer‖^2=3 := by
  rw [← actual_gauss_branch_normalizer,modThreeQuadratic_gauss_norm]
  exact Real.sq_sqrt (by norm_num)

theorem actual_twisted_character_branches (k j : ZMod 3) :
    (ZMod.stdAddChar (k*j)*modThreeQuadratic j)*branchNormalizer=
      ZMod.stdAddChar ((k+1)*j)-ZMod.stdAddChar ((k-1)*j) := by
  have hp : ZMod.stdAddChar ((k+1)*j)=ZMod.stdAddChar (k*j)*ZMod.stdAddChar j := by
    rw [add_mul,one_mul,AddChar.map_add_eq_mul]
  have hm : ZMod.stdAddChar ((k-1)*j)=ZMod.stdAddChar (k*j)*ZMod.stdAddChar (-j) := by
    rw [sub_mul,one_mul,sub_eq_add_neg,AddChar.map_add_eq_mul]
  rw [hp,hm, mul_assoc,genuine_character_branch_scaled]
  ring

/- Growing-cycle phase transport and orthogonal branch projections require
separate source bridges. Dropping one branch loses half of the genuine
source energy; scalar analytic cancellation does not pass to each branch.
No analytic-zero spectral identification is supplied. -/
end GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreeFourierBranchIdentity
