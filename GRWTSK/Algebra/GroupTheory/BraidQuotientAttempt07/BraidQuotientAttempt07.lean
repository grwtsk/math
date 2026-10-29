import Mathlib.GroupTheory.PresentedGroup
import Mathlib.GroupTheory.Subgroup.Centralizer
import Mathlib.LinearAlgebra.Matrix.SpecialLinearGroup
import Mathlib.Tactic

/-! Literal two-generator Artin presentation and its matrix/exponent homomorphisms.
Research direction grwtsk contributors; scratch construction OpenAI Codex.
No complete kernel classification, geometric braid-model equivalence or RH consequence. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.BraidQuotient
open scoped MatrixGroups

/-- The sole relator of the standard algebraic B3 presentation. -/
def braidRelator : FreeGroup (Fin 2) :=
  (FreeGroup.of 0 * FreeGroup.of 1 * FreeGroup.of 0) *
    (FreeGroup.of 1 * FreeGroup.of 0 * FreeGroup.of 1)⁻¹

def braidRelations : Set (FreeGroup (Fin 2)) := {braidRelator}

abbrev B3 := PresentedGroup braidRelations

def sigma1 : B3 := PresentedGroup.of 0

def sigma2 : B3 := PresentedGroup.of 1

theorem braid_relation : sigma1*sigma2*sigma1 = sigma2*sigma1*sigma2 := by
  have h := PresentedGroup.mk_eq_mk_of_mul_inv_mem
    (rels:=braidRelations)
    (x:=FreeGroup.of 0 * FreeGroup.of 1 * FreeGroup.of 0)
    (y:=FreeGroup.of 1 * FreeGroup.of 0 * FreeGroup.of 1)
    (by exact Set.mem_singleton braidRelator)
  simpa only [map_mul, sigma1, sigma2, PresentedGroup.of] using h

/-- Half twist, retaining the chosen positive word convention. -/
def halfTwist : B3 := sigma1*sigma2*sigma1

/-- The full twist; centrality is proved from the sole braid relation. -/
def fullTwist : B3 := (sigma1*sigma2)^3

theorem halfTwist_swap_sigma1 : halfTwist*sigma1 = sigma2*halfTwist := by
  unfold halfTwist
  calc
    (sigma1*sigma2*sigma1)*sigma1 = (sigma2*sigma1*sigma2)*sigma1 :=
      congrArg (fun x : B3 => x*sigma1) braid_relation
    _ = sigma2*(sigma1*sigma2*sigma1) := by simp only [mul_assoc]

theorem halfTwist_swap_sigma2 : halfTwist*sigma2 = sigma1*halfTwist := by
  unfold halfTwist
  calc
    (sigma1*sigma2*sigma1)*sigma2 = sigma1*(sigma2*sigma1*sigma2) := by
      simp only [mul_assoc]
    _ = sigma1*(sigma1*sigma2*sigma1) :=
      congrArg (fun x : B3 => sigma1*x) braid_relation.symm

theorem halfTwist_sq : halfTwist^2 = fullTwist := by
  unfold halfTwist fullTwist
  rw [pow_two]
  calc
    (sigma1*sigma2*sigma1)*(sigma1*sigma2*sigma1) =
        (sigma1*sigma2*sigma1)*(sigma2*sigma1*sigma2) :=
      congrArg (fun x : B3 => (sigma1*sigma2*sigma1)*x) braid_relation
    _ = (sigma1*sigma2)^3 := by simp only [pow_succ,pow_zero,one_mul,mul_assoc]

theorem fullTwist_commute_sigma1 : fullTwist*sigma1 = sigma1*fullTwist := by
  rw [←halfTwist_sq,pow_two]
  calc
    (halfTwist*halfTwist)*sigma1 = halfTwist*(halfTwist*sigma1) := mul_assoc _ _ _
    _ = halfTwist*(sigma2*halfTwist) := congrArg (fun x:B3=>halfTwist*x) halfTwist_swap_sigma1
    _ = (halfTwist*sigma2)*halfTwist := (mul_assoc _ _ _).symm
    _ = (sigma1*halfTwist)*halfTwist := congrArg (fun x:B3=>x*halfTwist) halfTwist_swap_sigma2
    _ = sigma1*(halfTwist*halfTwist) := mul_assoc _ _ _

theorem fullTwist_commute_sigma2 : fullTwist*sigma2 = sigma2*fullTwist := by
  rw [←halfTwist_sq,pow_two]
  calc
    (halfTwist*halfTwist)*sigma2 = halfTwist*(halfTwist*sigma2) := mul_assoc _ _ _
    _ = halfTwist*(sigma1*halfTwist) := congrArg (fun x:B3=>halfTwist*x) halfTwist_swap_sigma2
    _ = (halfTwist*sigma1)*halfTwist := (mul_assoc _ _ _).symm
    _ = (sigma2*halfTwist)*halfTwist := congrArg (fun x:B3=>x*halfTwist) halfTwist_swap_sigma1
    _ = sigma2*(halfTwist*halfTwist) := mul_assoc _ _ _

theorem fullTwist_central (x:B3) : fullTwist*x = x*fullTwist := by
  have hx := PresentedGroup.generated_by braidRelations (Subgroup.centralizer {fullTwist})
    (fun i => by
      apply Subgroup.mem_centralizer_singleton_iff.mpr
      fin_cases i
      · exact fullTwist_commute_sigma1.symm
      · exact fullTwist_commute_sigma2.symm) x
  exact (Subgroup.mem_centralizer_singleton_iff.mp hx).symm

def upperGenerator : SL(2, ℤ) :=
  ⟨!![1,1;0,1], by norm_num [Matrix.det_fin_two]⟩

def lowerGenerator : SL(2, ℤ) :=
  ⟨!![1,0;-1,1], by norm_num [Matrix.det_fin_two]⟩

theorem matrix_braid_relation :
    upperGenerator*lowerGenerator*upperGenerator =
      lowerGenerator*upperGenerator*lowerGenerator := by
  apply Subtype.ext
  change ((!![1,1;0,1] : Matrix (Fin 2) (Fin 2) ℤ)*!![1,0;-1,1]*!![1,1;0,1]) =
    !![1,0;-1,1]*!![1,1;0,1]*!![1,0;-1,1]
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [Matrix.mul_apply,Fin.sum_univ_succ]

def generatorMatrix : Fin 2 → SL(2, ℤ) := fun i => if i=0 then upperGenerator else lowerGenerator

theorem matrix_relator_identity :
    ∀ r ∈ braidRelations, FreeGroup.lift generatorMatrix r = 1 := by
  intro r hr
  change r=braidRelator at hr
  subst r
  simp only [braidRelator,map_mul,map_inv,FreeGroup.lift_apply_of]
  simp only [generatorMatrix,ite_true,show (1:Fin 2)≠0 by decide,ite_false]
  rw [matrix_braid_relation,mul_inv_cancel]

/-- Genuine normal-closure quotient lift; relation satisfaction is proved above. -/
def matrixRepresentation : B3 →* SL(2, ℤ) :=
  PresentedGroup.toGroup matrix_relator_identity

theorem matrixRepresentation_sigma1 : matrixRepresentation sigma1 = upperGenerator := by
  exact PresentedGroup.toGroup.of matrix_relator_identity

theorem matrixRepresentation_sigma2 : matrixRepresentation sigma2 = lowerGenerator := by
  exact PresentedGroup.toGroup.of matrix_relator_identity

/-- Both generators have exponent one. Multiplicative is only the additive-Z type tag. -/
def generatorExponent : Fin 2 → Multiplicative ℤ := fun _ => Multiplicative.ofAdd 1

theorem exponent_relator_identity :
    ∀ r ∈ braidRelations, FreeGroup.lift generatorExponent r = 1 := by
  intro r hr
  change r=braidRelator at hr
  subst r
  simp [braidRelator,generatorExponent]

/-- The actual exponent homomorphism on the presented group, not a word-count premise. -/
def exponentHom : B3 →* Multiplicative ℤ :=
  PresentedGroup.toGroup exponent_relator_identity

theorem exponentHom_sigma1 : exponentHom sigma1 = Multiplicative.ofAdd 1 := by
  exact PresentedGroup.toGroup.of exponent_relator_identity

theorem exponentHom_sigma2 : exponentHom sigma2 = Multiplicative.ofAdd 1 := by
  exact PresentedGroup.toGroup.of exponent_relator_identity

/-- The square of the usual full-twist word. -/
def lostBraid : B3 := (sigma1*sigma2)^6

theorem lostBraid_eq_fullTwist_square : lostBraid = fullTwist^2 := by
  unfold lostBraid fullTwist
  rw [←pow_mul]

theorem lostBraid_central (x:B3) : lostBraid*x = x*lostBraid := by
  rw [lostBraid_eq_fullTwist_square,pow_two]
  calc
    (fullTwist*fullTwist)*x = fullTwist*(fullTwist*x) := mul_assoc _ _ _
    _ = fullTwist*(x*fullTwist) := congrArg (fun y:B3=>fullTwist*y) (fullTwist_central x)
    _ = (fullTwist*x)*fullTwist := (mul_assoc _ _ _).symm
    _ = (x*fullTwist)*fullTwist := congrArg (fun y:B3=>y*fullTwist) (fullTwist_central x)
    _ = x*(fullTwist*fullTwist) := mul_assoc _ _ _

theorem generator_product_matrix :
    ((upperGenerator*lowerGenerator : SL(2,ℤ)) : Matrix (Fin 2) (Fin 2) ℤ) =
      !![0,1;-1,1] := by
  change ((!![1,1;0,1] : Matrix (Fin 2) (Fin 2) ℤ)*!![1,0;-1,1]) = !![0,1;-1,1]
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [Matrix.mul_apply,Fin.sum_univ_succ]

/-- With ordinary matrix multiplication the full twist maps to minus identity. -/
theorem generator_product_cube_matrix :
    (((upperGenerator*lowerGenerator)^3 : SL(2,ℤ)) : Matrix (Fin 2) (Fin 2) ℤ) =
      !![-1,0;0,-1] := by
  rw [Matrix.SpecialLinearGroup.coe_pow,generator_product_matrix]
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [Matrix.mul_apply,Fin.sum_univ_succ,pow_succ]

theorem fullTwist_matrix :
    (matrixRepresentation fullTwist : Matrix (Fin 2) (Fin 2) ℤ) = !![-1,0;0,-1] := by
  simp only [fullTwist,map_pow,map_mul,matrixRepresentation_sigma1,matrixRepresentation_sigma2]
  exact generator_product_cube_matrix

theorem fullTwist_matrix_ne_one : matrixRepresentation fullTwist ≠ 1 := by
  intro h
  have hm := fullTwist_matrix
  rw [h] at hm
  have he := congrArg (fun m:Matrix (Fin 2) (Fin 2) ℤ=>m 0 0) hm
  norm_num at he

theorem generator_product_sixth : (upperGenerator*lowerGenerator)^6 = (1:SL(2,ℤ)) := by
  apply Subtype.ext
  change ((upperGenerator*lowerGenerator : SL(2,ℤ)) : Matrix (Fin 2) (Fin 2) ℤ)^6 = 1
  rw [generator_product_matrix]
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [Matrix.mul_apply,Fin.sum_univ_succ,pow_succ]

theorem lostBraid_matrix_identity : matrixRepresentation lostBraid = 1 := by
  simp only [lostBraid,map_pow,map_mul,matrixRepresentation_sigma1,matrixRepresentation_sigma2]
  exact generator_product_sixth

theorem lostBraid_exponent : Multiplicative.toAdd (exponentHom lostBraid) = (12:ℤ) := by
  simp [lostBraid,exponentHom_sigma1,exponentHom_sigma2]

theorem lostBraid_ne_one : lostBraid≠1 := by
  intro h
  have he := lostBraid_exponent
  rw [h,map_one] at he
  norm_num at he

theorem matrixRepresentation_not_injective : ¬Function.Injective matrixRepresentation := by
  intro h
  exact lostBraid_ne_one (h (lostBraid_matrix_identity.trans (map_one matrixRepresentation).symm))

theorem beta_mul_lostBraid_ne (beta:B3) : beta*lostBraid ≠ beta := by
  intro h
  exact lostBraid_ne_one (mul_left_cancel (h.trans (mul_one beta).symm))

/-- A separately typed factorization premise; it is not a faithful action claim. -/
def FactorsThrough {H:Type*} [Group H] (rho:B3→*H) : Prop :=
  ∃ phi:SL(2,ℤ)→*H, rho=phi.comp matrixRepresentation

theorem factored_kernel_blindness {H:Type*} [Group H] (rho:B3→*H)
    (hrho:FactorsThrough rho) (beta kappa:B3) (hkappa:matrixRepresentation kappa=1) :
    rho (beta*kappa) = rho beta := by
  rcases hrho with ⟨phi,rfl⟩
  simp only [MonoidHom.comp_apply,map_mul,hkappa,map_one,mul_one]

theorem factored_lostBraid_blindness {H:Type*} [Group H] (rho:B3→*H)
    (hrho:FactorsThrough rho) (beta:B3) : rho (beta*lostBraid)=rho beta :=
  factored_kernel_blindness rho hrho beta lostBraid lostBraid_matrix_identity

theorem factored_not_injective {H:Type*} [Group H] (rho:B3→*H)
    (hrho:FactorsThrough rho) : ¬Function.Injective rho := by
  intro h
  have hb := factored_lostBraid_blindness rho hrho 1
  simp only [one_mul] at hb
  exact lostBraid_ne_one (h hb)

end ContinuousResearch.BraidQuotient

/- Full exact public type, proof and trusted-dependency audits. -/
#check ContinuousResearch.BraidQuotient.braidRelator
#print axioms ContinuousResearch.BraidQuotient.braidRelator
#print ContinuousResearch.BraidQuotient.braidRelator
#check ContinuousResearch.BraidQuotient.braidRelations
#print axioms ContinuousResearch.BraidQuotient.braidRelations
#print ContinuousResearch.BraidQuotient.braidRelations
#check ContinuousResearch.BraidQuotient.B3
#print axioms ContinuousResearch.BraidQuotient.B3
#print ContinuousResearch.BraidQuotient.B3
#check ContinuousResearch.BraidQuotient.sigma1
#print axioms ContinuousResearch.BraidQuotient.sigma1
#print ContinuousResearch.BraidQuotient.sigma1
#check ContinuousResearch.BraidQuotient.sigma2
#print axioms ContinuousResearch.BraidQuotient.sigma2
#print ContinuousResearch.BraidQuotient.sigma2
#check ContinuousResearch.BraidQuotient.braid_relation
#print axioms ContinuousResearch.BraidQuotient.braid_relation
#print ContinuousResearch.BraidQuotient.braid_relation
#check ContinuousResearch.BraidQuotient.halfTwist
#print axioms ContinuousResearch.BraidQuotient.halfTwist
#print ContinuousResearch.BraidQuotient.halfTwist
#check ContinuousResearch.BraidQuotient.fullTwist
#print axioms ContinuousResearch.BraidQuotient.fullTwist
#print ContinuousResearch.BraidQuotient.fullTwist
#check ContinuousResearch.BraidQuotient.halfTwist_swap_sigma1
#print axioms ContinuousResearch.BraidQuotient.halfTwist_swap_sigma1
#print ContinuousResearch.BraidQuotient.halfTwist_swap_sigma1
#check ContinuousResearch.BraidQuotient.halfTwist_swap_sigma2
#print axioms ContinuousResearch.BraidQuotient.halfTwist_swap_sigma2
#print ContinuousResearch.BraidQuotient.halfTwist_swap_sigma2
#check ContinuousResearch.BraidQuotient.halfTwist_sq
#print axioms ContinuousResearch.BraidQuotient.halfTwist_sq
#print ContinuousResearch.BraidQuotient.halfTwist_sq
#check ContinuousResearch.BraidQuotient.fullTwist_commute_sigma1
#print axioms ContinuousResearch.BraidQuotient.fullTwist_commute_sigma1
#print ContinuousResearch.BraidQuotient.fullTwist_commute_sigma1
#check ContinuousResearch.BraidQuotient.fullTwist_commute_sigma2
#print axioms ContinuousResearch.BraidQuotient.fullTwist_commute_sigma2
#print ContinuousResearch.BraidQuotient.fullTwist_commute_sigma2
#check ContinuousResearch.BraidQuotient.fullTwist_central
#print axioms ContinuousResearch.BraidQuotient.fullTwist_central
#print ContinuousResearch.BraidQuotient.fullTwist_central
#check ContinuousResearch.BraidQuotient.upperGenerator
#print axioms ContinuousResearch.BraidQuotient.upperGenerator
#print ContinuousResearch.BraidQuotient.upperGenerator
#check ContinuousResearch.BraidQuotient.lowerGenerator
#print axioms ContinuousResearch.BraidQuotient.lowerGenerator
#print ContinuousResearch.BraidQuotient.lowerGenerator
#check ContinuousResearch.BraidQuotient.matrix_braid_relation
#print axioms ContinuousResearch.BraidQuotient.matrix_braid_relation
#print ContinuousResearch.BraidQuotient.matrix_braid_relation
#check ContinuousResearch.BraidQuotient.generatorMatrix
#print axioms ContinuousResearch.BraidQuotient.generatorMatrix
#print ContinuousResearch.BraidQuotient.generatorMatrix
#check ContinuousResearch.BraidQuotient.matrix_relator_identity
#print axioms ContinuousResearch.BraidQuotient.matrix_relator_identity
#print ContinuousResearch.BraidQuotient.matrix_relator_identity
#check ContinuousResearch.BraidQuotient.matrixRepresentation
#print axioms ContinuousResearch.BraidQuotient.matrixRepresentation
#print ContinuousResearch.BraidQuotient.matrixRepresentation
#check ContinuousResearch.BraidQuotient.matrixRepresentation_sigma1
#print axioms ContinuousResearch.BraidQuotient.matrixRepresentation_sigma1
#print ContinuousResearch.BraidQuotient.matrixRepresentation_sigma1
#check ContinuousResearch.BraidQuotient.matrixRepresentation_sigma2
#print axioms ContinuousResearch.BraidQuotient.matrixRepresentation_sigma2
#print ContinuousResearch.BraidQuotient.matrixRepresentation_sigma2
#check ContinuousResearch.BraidQuotient.generatorExponent
#print axioms ContinuousResearch.BraidQuotient.generatorExponent
#print ContinuousResearch.BraidQuotient.generatorExponent
#check ContinuousResearch.BraidQuotient.exponent_relator_identity
#print axioms ContinuousResearch.BraidQuotient.exponent_relator_identity
#print ContinuousResearch.BraidQuotient.exponent_relator_identity
#check ContinuousResearch.BraidQuotient.exponentHom
#print axioms ContinuousResearch.BraidQuotient.exponentHom
#print ContinuousResearch.BraidQuotient.exponentHom
#check ContinuousResearch.BraidQuotient.exponentHom_sigma1
#print axioms ContinuousResearch.BraidQuotient.exponentHom_sigma1
#print ContinuousResearch.BraidQuotient.exponentHom_sigma1
#check ContinuousResearch.BraidQuotient.exponentHom_sigma2
#print axioms ContinuousResearch.BraidQuotient.exponentHom_sigma2
#print ContinuousResearch.BraidQuotient.exponentHom_sigma2
#check ContinuousResearch.BraidQuotient.lostBraid
#print axioms ContinuousResearch.BraidQuotient.lostBraid
#print ContinuousResearch.BraidQuotient.lostBraid
#check ContinuousResearch.BraidQuotient.lostBraid_eq_fullTwist_square
#print axioms ContinuousResearch.BraidQuotient.lostBraid_eq_fullTwist_square
#print ContinuousResearch.BraidQuotient.lostBraid_eq_fullTwist_square
#check ContinuousResearch.BraidQuotient.lostBraid_central
#print axioms ContinuousResearch.BraidQuotient.lostBraid_central
#print ContinuousResearch.BraidQuotient.lostBraid_central
#check ContinuousResearch.BraidQuotient.generator_product_matrix
#print axioms ContinuousResearch.BraidQuotient.generator_product_matrix
#print ContinuousResearch.BraidQuotient.generator_product_matrix
#check ContinuousResearch.BraidQuotient.generator_product_cube_matrix
#print axioms ContinuousResearch.BraidQuotient.generator_product_cube_matrix
#print ContinuousResearch.BraidQuotient.generator_product_cube_matrix
#check ContinuousResearch.BraidQuotient.fullTwist_matrix
#print axioms ContinuousResearch.BraidQuotient.fullTwist_matrix
#print ContinuousResearch.BraidQuotient.fullTwist_matrix
#check ContinuousResearch.BraidQuotient.fullTwist_matrix_ne_one
#print axioms ContinuousResearch.BraidQuotient.fullTwist_matrix_ne_one
#print ContinuousResearch.BraidQuotient.fullTwist_matrix_ne_one
#check ContinuousResearch.BraidQuotient.generator_product_sixth
#print axioms ContinuousResearch.BraidQuotient.generator_product_sixth
#print ContinuousResearch.BraidQuotient.generator_product_sixth
#check ContinuousResearch.BraidQuotient.lostBraid_matrix_identity
#print axioms ContinuousResearch.BraidQuotient.lostBraid_matrix_identity
#print ContinuousResearch.BraidQuotient.lostBraid_matrix_identity
#check ContinuousResearch.BraidQuotient.lostBraid_exponent
#print axioms ContinuousResearch.BraidQuotient.lostBraid_exponent
#print ContinuousResearch.BraidQuotient.lostBraid_exponent
#check ContinuousResearch.BraidQuotient.lostBraid_ne_one
#print axioms ContinuousResearch.BraidQuotient.lostBraid_ne_one
#print ContinuousResearch.BraidQuotient.lostBraid_ne_one
#check ContinuousResearch.BraidQuotient.matrixRepresentation_not_injective
#print axioms ContinuousResearch.BraidQuotient.matrixRepresentation_not_injective
#print ContinuousResearch.BraidQuotient.matrixRepresentation_not_injective
#check ContinuousResearch.BraidQuotient.beta_mul_lostBraid_ne
#print axioms ContinuousResearch.BraidQuotient.beta_mul_lostBraid_ne
#print ContinuousResearch.BraidQuotient.beta_mul_lostBraid_ne
#check ContinuousResearch.BraidQuotient.FactorsThrough
#print axioms ContinuousResearch.BraidQuotient.FactorsThrough
#print ContinuousResearch.BraidQuotient.FactorsThrough
#check ContinuousResearch.BraidQuotient.factored_kernel_blindness
#print axioms ContinuousResearch.BraidQuotient.factored_kernel_blindness
#print ContinuousResearch.BraidQuotient.factored_kernel_blindness
#check ContinuousResearch.BraidQuotient.factored_lostBraid_blindness
#print axioms ContinuousResearch.BraidQuotient.factored_lostBraid_blindness
#print ContinuousResearch.BraidQuotient.factored_lostBraid_blindness
#check ContinuousResearch.BraidQuotient.factored_not_injective
#print axioms ContinuousResearch.BraidQuotient.factored_not_injective
#print ContinuousResearch.BraidQuotient.factored_not_injective
