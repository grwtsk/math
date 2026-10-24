/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

The full relative origin-ideal quotient of Y^2+XY=X^3+A X^2+B X.
When B is a unit, construct BOTH algebra maps to the inherited parameter
quotient and prove their inverses and truncation compatibility. This is
point-specific structure-sheaf jet data, not all diagonal principal parts,
a global marked divisor, a line-bundle atlas or a completed analytic curve.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Scripts are unelaborated.
-/
import GRWTSK.AlgebraicGeometry.EllipticCurve.WeierstrassMixedLift
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyJetQuotient

set_option autoImplicit false
noncomputable section

namespace GRWTSK.AlgebraicGeometry.EllipticCurve.WeierstrassOriginJet

open WeierstrassCurve
open GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
open WeierstrassSecondJet WeierstrassMixedLift

variable {R : Type*} [CommRing R]

abbrev Plane (R : Type*) [CommRing R] := MvPolynomial (Fin 2) R
abbrev Parameter (R : Type*) [CommRing R] (N : ℕ) := FreyJetQuotient.Parameter R N

/-- The whole affine equation, in the OLD selected coordinate convention. -/
def equation (A B : R) : Plane R :=
  MvPolynomial.X 1^2+MvPolynomial.X 0*MvPolynomial.X 1-
    MvPolynomial.X 0^3-MvPolynomial.C A*MvPolynomial.X 0^2-
    MvPolynomial.C B*MvPolynomial.X 0

/-- Both coordinate generators and every mixed monomial in the ideal power are retained. -/
def origin : Ideal (Plane R) := Ideal.span {MvPolynomial.X 0,MvPolynomial.X 1}
def relations (A B : R) (N : ℕ) : Ideal (Plane R) :=
  Ideal.span {equation A B} ⊔ origin^ (N+1)
abbrev Jet (A B : R) (N : ℕ) := Plane R ⧸ relations A B N

def quotientMap (A B : R) (N : ℕ) : Plane R →+* Jet A B N :=
  Ideal.Quotient.mk (relations A B N)
def scalar (A B : R) (N : ℕ) : R →+* Jet A B N :=
  (quotientMap A B N).comp MvPolynomial.C
def x (A B : R) (N : ℕ) : Jet A B N := quotientMap A B N (MvPolynomial.X 0)
def y (A B : R) (N : ℕ) : Jet A B N := quotientMap A B N (MvPolynomial.X 1)
def neighborhood (A B : R) (N : ℕ) : Ideal (Jet A B N) :=
  origin.map (quotientMap A B N)

theorem neighborhood_pow (A B : R) (N : ℕ) : neighborhood A B N^(N+1)=⊥ := by
  rw [neighborhood,← Ideal.map_pow]
  exact Ideal.map_mk_eq_bot_of_le (show origin^(N+1) ≤ relations A B N from le_sup_right)

theorem x_mem (A B : R) (N : ℕ) : x A B N ∈ neighborhood A B N :=
  Ideal.mem_map_of_mem _ (Ideal.subset_span (by simp))
theorem y_mem (A B : R) (N : ℕ) : y A B N ∈ neighborhood A B N :=
  Ideal.mem_map_of_mem _ (Ideal.subset_span (by simp))

theorem y_pow (A B : R) (N : ℕ) : y A B N^(N+1)=0 :=
  FreyFormalNeighborhood.element_power_zero _ _ (neighborhood_pow A B N) _ (y_mem A B N)

/-- Actual affine Equation, before a parameter isomorphism is asserted. -/
theorem quotient_equation (A B : R) (N : ℕ) :
    (model (Jet A B N) (scalar A B N A) (scalar A B N B)).toAffine.Equation
      (x A B N) (y A B N) := by
  have he : quotientMap A B N (equation A B)=0 :=
    Ideal.Quotient.eq_zero_iff_mem.mpr (le_sup_left (Ideal.subset_span (by simp)))
  rw [Affine.equation_iff']
  simpa [equation,x,y,scalar,RingHom.comp_apply,model,sub_sub,add_assoc] using he

/-- Universal quotient coordinates, not only a parametrized sample, satisfy the lift. -/
theorem x_eq_lift (A B j : R) (hj : B*j=1) (N : ℕ) :
    x A B N=lift (scalar A B N A) (scalar A B N j) (y A B N) (N+1) := by
  apply solution_eq_lift (neighborhood A B N) (N+1) (neighborhood_pow A B N)
    (scalar A B N A) (scalar A B N B) (scalar A B N j) (y A B N) (x A B N)
  · rw [← map_mul,hj,map_one]
  · exact y_mem A B N
  · exact x_mem A B N
  · exact quotient_equation A B N

def evaluate (A B j : R) (N : ℕ) : Plane R →+* Parameter R N :=
  MvPolynomial.eval₂Hom (FreyJetQuotient.parameterScalar R N)
    ![lift (FreyJetQuotient.parameterScalar R N A)
        (FreyJetQuotient.parameterScalar R N j) (FreyJetQuotient.parameter R N) (N+1),
      FreyJetQuotient.parameter R N]

/-- Both F and the FULL ideal power, including mixed terms, lie in the kernel. -/
theorem relations_le_kernel (A B j : R) (hj : B*j=1) (N : ℕ) :
    relations A B N ≤ RingHom.ker (evaluate A B j N) := by
  let c := FreyJetQuotient.parameterScalar R N
  let e := FreyJetQuotient.parameter R N
  let z := lift (c A) (c j) e (N+1)
  have he : e^(N+1)=0 := FreyJetQuotient.parameter_pow N
  have hs : (model (Parameter R N) (c A) (c B)).toAffine.Equation z e :=
    lift_equation (c A) (c B) (c j) e
      (by rw [← map_mul,hj,map_one]) (N+1) he
  have hem : e ∈ (Ideal.span {e} : Ideal (Parameter R N)) := Ideal.subset_span (by simp)
  have hmap : origin.map (evaluate A B j N) ≤ Ideal.span {e} := by
    apply Ideal.map_le_iff_le_comap.mpr
    apply Ideal.span_le.mpr
    intro p hp
    simp only [Set.mem_insert_iff,Set.mem_singleton_iff] at hp
    rcases hp with rfl | rfl
    · change evaluate A B j N (MvPolynomial.X 0) ∈ _
      simpa [evaluate,c,e,z] using lift_mem (Ideal.span {e}) (c A) (c j) e hem (N+1)
    · change evaluate A B j N (MvPolynomial.X 1) ∈ _
      simpa [evaluate,e] using hem
  have hpow : (origin^(N+1)).map (evaluate A B j N)=⊥ := by
    apply le_antisymm _ bot_le
    calc
      _ = (origin.map (evaluate A B j N))^(N+1) := Ideal.map_pow _ _ _
      _ ≤ (Ideal.span {e})^(N+1) := Ideal.pow_right_mono hmap _
      _ = ⊥ := by rw [Ideal.span_singleton_pow]; simp [he]
  apply sup_le
  · apply Ideal.span_le.mpr
    intro p hp
    have hp' : p=equation A B := Set.mem_singleton_iff.mp hp
    subst p
    change evaluate A B j N (equation A B)=0
    rw [Affine.equation_iff'] at hs
    simpa [evaluate,equation,c,e,z,model,sub_sub,add_assoc] using hs
  · exact Ideal.map_eq_bot_iff_le_ker.mp hpow

def toParameter (A B j : R) (hj : B*j=1) (N : ℕ) :
    Jet A B N →+* Parameter R N :=
  Ideal.Quotient.lift _ (evaluate A B j N) (relations_le_kernel A B j hj N)

def fromParameter (A B : R) (N : ℕ) : Parameter R N →+* Jet A B N :=
  AdjoinRoot.lift (scalar A B N) (y A B N) (by simpa using y_pow A B N)

@[simp] theorem toParameter_scalar (A B j : R) (hj : B*j=1) (N : ℕ) (s : R) :
    toParameter A B j hj N (scalar A B N s)=FreyJetQuotient.parameterScalar R N s := by
  simp [toParameter,scalar,quotientMap,evaluate]
@[simp] theorem toParameter_x (A B j : R) (hj : B*j=1) (N : ℕ) :
    toParameter A B j hj N (x A B N)=lift (FreyJetQuotient.parameterScalar R N A)
      (FreyJetQuotient.parameterScalar R N j) (FreyJetQuotient.parameter R N) (N+1) := by
  simp [toParameter,x,quotientMap,evaluate]
@[simp] theorem toParameter_y (A B j : R) (hj : B*j=1) (N : ℕ) :
    toParameter A B j hj N (y A B N)=FreyJetQuotient.parameter R N := by
  simp [toParameter,y,quotientMap,evaluate]
@[simp] theorem fromParameter_scalar (A B : R) (N : ℕ) (s : R) :
    fromParameter A B N (FreyJetQuotient.parameterScalar R N s)=scalar A B N s := by
  simp [fromParameter,FreyJetQuotient.parameterScalar]
@[simp] theorem fromParameter_parameter (A B : R) (N : ℕ) :
    fromParameter A B N (FreyJetQuotient.parameter R N)=y A B N := by
  simp [fromParameter,FreyJetQuotient.parameter]

theorem hom_ext (A B : R) (N : ℕ) {S : Type*} [CommRing S]
    {f g : Jet A B N →+* S}
    (hc : ∀ s, f (scalar A B N s)=g (scalar A B N s))
    (hx : f (x A B N)=g (x A B N)) (hy : f (y A B N)=g (y A B N)) : f=g := by
  apply Ideal.Quotient.ringHom_ext
  apply MvPolynomial.ringHom_ext
  · exact hc
  · intro i
    fin_cases i
    · exact hx
    · exact hy

theorem from_to (A B j : R) (hj : B*j=1) (N : ℕ) :
    (fromParameter A B N).comp (toParameter A B j hj N)=RingHom.id (Jet A B N) := by
  apply hom_ext A B N
  · intro s; simp
  · simp only [RingHom.comp_apply,toParameter_x,map_lift,fromParameter_scalar,
      fromParameter_parameter,RingHom.id_apply]
    exact (x_eq_lift A B j hj N).symm
  · simp

theorem to_from (A B j : R) (hj : B*j=1) (N : ℕ) :
    (toParameter A B j hj N).comp (fromParameter A B N)=RingHom.id (Parameter R N) := by
  apply AdjoinRoot.ringHom_ext
  · ext s
    change toParameter A B j hj N (fromParameter A B N
      (FreyJetQuotient.parameterScalar R N s))=FreyJetQuotient.parameterScalar R N s
    simp
  · change toParameter A B j hj N (fromParameter A B N
      (FreyJetQuotient.parameter R N))=FreyJetQuotient.parameter R N
    simp

/-- An actual algebra equivalence for each order, not equality of dimensions. -/
def algebraEquiv (A B j : R) (hj : B*j=1) (N : ℕ) :
    Jet A B N ≃ₐ[R] Parameter R N where
  toFun := toParameter A B j hj N
  invFun := fromParameter A B N
  left_inv z := DFunLike.congr_fun (from_to A B j hj N) z
  right_inv z := DFunLike.congr_fun (to_from A B j hj N) z
  map_mul' := map_mul (toParameter A B j hj N)
  map_add' := map_add (toParameter A B j hj N)
  commutes' s := by
    change toParameter A B j hj N (scalar A B N s)=FreyJetQuotient.parameterScalar R N s
    exact toParameter_scalar A B j hj N s

/-- Monic-quotient basis; adding an order adds a real coefficient slot. -/
def parameterBasis [Nontrivial R] (N : ℕ) :
    Module.Basis (Fin (N+1)) R (Parameter R N) := by
  simpa only [Polynomial.natDegree_X_pow] using
    (AdjoinRoot.powerBasis' (Polynomial.monic_X_pow (N+1) :
      ((Polynomial.X : Polynomial R)^(N+1)).Monic)).basis

/-- Transfer the basis through the actual same-equation algebra equivalence. -/
def jetBasis [Nontrivial R] (A B j : R) (hj : B*j=1) (N : ℕ) :
    Module.Basis (Fin (N+1)) R (Jet A B N) :=
  (parameterBasis (R := R) N).map (algebraEquiv A B j hj N).symm.toLinearEquiv

theorem jet_finrank [Nontrivial R] [StrongRankCondition R]
    (A B j : R) (hj : B*j=1) (N : ℕ) : Module.finrank R (Jet A B N)=N+1 := by
  simpa using Module.finrank_eq_card_basis (jetBasis A B j hj N)

/-- Completeness: no extra relation or other cubic branch enters the presentation. -/
theorem kernel_evaluate (A B j : R) (hj : B*j=1) (N : ℕ) :
    RingHom.ker (evaluate A B j N)=relations A B N := by
  apply le_antisymm _ (relations_le_kernel A B j hj N)
  intro f hf
  apply Ideal.Quotient.eq_zero_iff_mem.mp
  apply (algebraEquiv A B j hj N).injective
  change toParameter A B j hj N (quotientMap A B N f)=toParameter A B j hj N 0
  rw [map_zero]
  exact hf

/-- Truncations are independently defined ideal-quotient maps, not fitted to the equivalence. -/
def truncate (A B : R) (M N : ℕ) (hMN : M≤N) : Jet A B N →+* Jet A B M :=
  Ideal.Quotient.lift _ (quotientMap A B M) (fun f hf =>
    Ideal.Quotient.eq_zero_iff_mem.mpr
      ((sup_le_sup le_rfl (Ideal.pow_le_pow_right (Nat.succ_le_succ hMN))) hf))

@[simp] theorem truncate_scalar (A B : R) (M N : ℕ) (hMN : M≤N) (s : R) :
    truncate A B M N hMN (scalar A B N s)=scalar A B M s := rfl
@[simp] theorem truncate_x (A B : R) (M N : ℕ) (hMN : M≤N) :
    truncate A B M N hMN (x A B N)=x A B M := rfl
@[simp] theorem truncate_y (A B : R) (M N : ℕ) (hMN : M≤N) :
    truncate A B M N hMN (y A B N)=y A B M := rfl

theorem fromParameter_truncate (A B : R) (M N : ℕ) (hMN : M≤N) :
    (fromParameter A B M).comp (FreyJetQuotient.parameterTruncate R M N hMN)=
      (truncate A B M N hMN).comp (fromParameter A B N) := by
  apply AdjoinRoot.ringHom_ext
  · ext s
    change fromParameter A B M (FreyJetQuotient.parameterTruncate R M N hMN
      (FreyJetQuotient.parameterScalar R N s))=
      truncate A B M N hMN (fromParameter A B N (FreyJetQuotient.parameterScalar R N s))
    simp
  · change fromParameter A B M (FreyJetQuotient.parameterTruncate R M N hMN
      (FreyJetQuotient.parameter R N))=
      truncate A B M N hMN (fromParameter A B N (FreyJetQuotient.parameter R N))
    simp

theorem toParameter_truncate (A B j : R) (hj : B*j=1)
    (M N : ℕ) (hMN : M≤N) (z : Jet A B N) :
    toParameter A B j hj M (truncate A B M N hMN z)=
      FreyJetQuotient.parameterTruncate R M N hMN (toParameter A B j hj N z) := by
  apply (algebraEquiv A B j hj M).symm.injective
  change fromParameter A B M (toParameter A B j hj M (truncate A B M N hMN z))=
    fromParameter A B M (FreyJetQuotient.parameterTruncate R M N hMN
      (toParameter A B j hj N z))
  rw [show fromParameter A B M (toParameter A B j hj M (truncate A B M N hMN z))=
    truncate A B M N hMN z from DFunLike.congr_fun (from_to A B j hj M) _]
  have h := DFunLike.congr_fun (fromParameter_truncate A B M N hMN)
    (toParameter A B j hj N z)
  simpa only [RingHom.comp_apply,show fromParameter A B N (toParameter A B j hj N z)=z
    from DFunLike.congr_fun (from_to A B j hj N) z] using h.symm

theorem truncate_id (A B : R) (N : ℕ) : truncate A B N N (le_refl N)=RingHom.id _ := by
  apply hom_ext A B N <;> intros <;> rfl

theorem truncate_comp (A B : R) (L M N : ℕ) (hLM : L≤M) (hMN : M≤N) :
    (truncate A B L M hLM).comp (truncate A B M N hMN)=truncate A B L N (hLM.trans hMN) := by
  apply hom_ext A B N <;> intros <;> rfl

end GRWTSK.AlgebraicGeometry.EllipticCurve.WeierstrassOriginJet
