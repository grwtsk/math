/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib's submodule quotients and semilinear lifts retain Johannes Hölzl,
Mario Carneiro, Kevin Buzzard and Yury Kudryashov's authorship and
Apache-2.0 license. Other imports retain their upstream attribution and licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonReflectionRadical
import Mathlib.LinearAlgebra.Quotient.Basic

/-!
# The algebraic null quotient of the actual finite Wilson reflection form

Both descents use Mathlib's actual submodule quotient and liftQ. The kernel
conditions are proved by annihilation in the corresponding slot of the
existing normalized integral. No representative is selected and no assumed
quotient-pairing certificate is introduced.

The quotient form is Hermitian and positive definite. No norm, completion,
time translation, transfer operator or physical Hamiltonian is constructed.
In particular the null submodule is not asserted to be an algebra ideal:
this is a complex vector-space quotient, not a quotient algebra.

SOURCE_PROOF_CANDIDATE; compilation, fresh kernel replay and transitive
axiom audit NOT_RUN for this source and its complete inherited chain.
-/
set_option autoImplicit false
noncomputable section
open scoped ComplexConjugate

namespace GRWTSK.Geometry.GaugeTheory.WilsonReflectionQuotient

open GRWTSK.Geometry.GaugeTheory.PositiveTimeObservables
open GRWTSK.Geometry.GaugeTheory.WilsonReflectionForm
open GRWTSK.Geometry.GaugeTheory.WilsonReflectionPositivity
open GRWTSK.Geometry.GaugeTheory.WilsonReflectionSesquilinear
open GRWTSK.Geometry.GaugeTheory.WilsonReflectionRadical

variable (T : ℕ) (hT : 2 ≤ T) (β : ℝ) (hβ : 0 ≤ β)

/-- The actual complex vector-space quotient by the proved null radical. -/
abbrev ReflectionQuotient :=
  positiveTimeAlgebra T ⧸ nullSubmodule T hT β hβ

/-- Descend the second (linear) slot using the proved right annihilation.
The result remains conjugate-linear in the unquotiented first slot. -/
def rightQuotientForm :
    positiveTimeAlgebra T →ₛₗ[starRingEnd ℂ] ReflectionQuotient T hT β hβ →ₗ[ℂ] ℂ where
  toFun F := (nullSubmodule T hT β hβ).liftQ
    (reflectionSesqForm T hT β hβ F) (by
      intro n hn
      change positiveReflectionForm T hT β F n = 0
      exact null_annihilates_right T hT β hβ n hn F)
  map_add' := by
    intro F G
    ext q
    refine Submodule.Quotient.induction_on _ q ?_
    intro H
    change positiveReflectionForm T hT β (F + G) H =
      positiveReflectionForm T hT β F H + positiveReflectionForm T hT β G H
    exact positiveReflectionForm_add_left T hT β hβ F G H
  map_smul' := by
    intro z F
    ext q
    refine Submodule.Quotient.induction_on _ q ?_
    intro G
    change positiveReflectionForm T hT β (z • F) G =
      conj z * positiveReflectionForm T hT β F G
    exact positiveReflectionForm_smul_left T hT β z F G

@[simp] theorem rightQuotientForm_apply_mk (F G : positiveTimeAlgebra T) :
    rightQuotientForm T hT β hβ F (Submodule.Quotient.mk G) =
      positiveReflectionForm T hT β F G := rfl

/-- Descend the first (conjugate-linear) slot using actual left annihilation. -/
def quotientReflectionForm :
    ReflectionQuotient T hT β hβ →ₛₗ[starRingEnd ℂ]
      ReflectionQuotient T hT β hβ →ₗ[ℂ] ℂ :=
  (nullSubmodule T hT β hβ).liftQ (rightQuotientForm T hT β hβ) (by
    intro n hn
    change rightQuotientForm T hT β hβ n = 0
    ext q
    refine Submodule.Quotient.induction_on _ q ?_
    intro F
    change positiveReflectionForm T hT β n F = 0
    exact null_annihilates_left T hT β hβ n hn F)

/-- Exact return to the original normalized reflection integral. -/
@[simp] theorem quotientReflectionForm_mk_mk (F G : positiveTimeAlgebra T) :
    quotientReflectionForm T hT β hβ
      (Submodule.Quotient.mk F) (Submodule.Quotient.mk G) =
        positiveReflectionForm T hT β F G := rfl

/-- Representatives differing by this exact null submodule give the same
pairing. Both differences and both argument slots are accounted for. -/
theorem positiveReflectionForm_representative_independent
    (F F' G G' : positiveTimeAlgebra T)
    (hF : F - F' ∈ nullSubmodule T hT β hβ)
    (hG : G - G' ∈ nullSubmodule T hT β hβ) :
    positiveReflectionForm T hT β F G = positiveReflectionForm T hT β F' G' := by
  have eF : (Submodule.Quotient.mk F : ReflectionQuotient T hT β hβ) =
      Submodule.Quotient.mk F' := (Submodule.Quotient.eq _).mpr hF
  have eG : (Submodule.Quotient.mk G : ReflectionQuotient T hT β hβ) =
      Submodule.Quotient.mk G' := (Submodule.Quotient.eq _).mpr hG
  calc
    positiveReflectionForm T hT β F G =
      quotientReflectionForm T hT β hβ
        (Submodule.Quotient.mk F) (Submodule.Quotient.mk G) := rfl
    _ = quotientReflectionForm T hT β hβ
        (Submodule.Quotient.mk F') (Submodule.Quotient.mk G') := by rw [eF, eG]
    _ = positiveReflectionForm T hT β F' G' := rfl

theorem quotientReflectionForm_hermitian (q r : ReflectionQuotient T hT β hβ) :
    quotientReflectionForm T hT β hβ q r =
      conj (quotientReflectionForm T hT β hβ r q) := by
  refine Submodule.Quotient.induction_on _ q ?_
  intro F
  refine Submodule.Quotient.induction_on _ r ?_
  intro G
  exact positiveReflectionForm_hermitian T hT β F G

theorem quotientReflectionForm_isSymm :
    (quotientReflectionForm T hT β hβ).IsSymm := by
  constructor
  intro q r
  exact (quotientReflectionForm_hermitian T hT β hβ r q).symm

theorem quotientReflectionForm_diagonal_eq_real (q : ReflectionQuotient T hT β hβ) :
    quotientReflectionForm T hT β hβ q q =
      ((quotientReflectionForm T hT β hβ q q).re : ℂ) :=
  (Complex.conj_eq_iff_re.mp
    (quotientReflectionForm_hermitian T hT β hβ q q).symm).symm

theorem quotientReflectionForm_nonnegative (q : ReflectionQuotient T hT β hβ) :
    0 ≤ (quotientReflectionForm T hT β hβ q q).re := by
  refine Submodule.Quotient.induction_on _ q ?_
  intro F
  exact finiteWilson_reflection_positive T hT β hβ F

/-- Positive definiteness is proved only after quotienting by the full radical. -/
theorem quotientReflectionForm_re_self_eq_zero_iff (q : ReflectionQuotient T hT β hβ) :
    (quotientReflectionForm T hT β hβ q q).re = 0 ↔ q = 0 := by
  refine Submodule.Quotient.induction_on _ q ?_
  intro F
  change (positiveReflectionForm T hT β F F).re = 0 ↔
    (Submodule.Quotient.mk F : ReflectionQuotient T hT β hβ) = 0
  exact (mem_nullSubmodule_iff T hT β hβ F).symm.trans
    Submodule.Quotient.mk_eq_zero.symm

theorem quotientReflectionForm_definite (q : ReflectionQuotient T hT β hβ)
    (hq : quotientReflectionForm T hT β hβ q q = 0) : q = 0 := by
  apply (quotientReflectionForm_re_self_eq_zero_iff T hT β hβ q).mp
  rw [hq]
  rfl

theorem quotientReflectionForm_positive_of_ne_zero
    (q : ReflectionQuotient T hT β hβ) (hq : q ≠ 0) :
    0 < (quotientReflectionForm T hT β hβ q q).re := by
  have hn : (quotientReflectionForm T hT β hβ q q).re ≠ 0 :=
    fun h => hq ((quotientReflectionForm_re_self_eq_zero_iff T hT β hβ q).mp h)
  exact lt_of_le_of_ne (quotientReflectionForm_nonnegative T hT β hβ q) (Ne.symm hn)

end GRWTSK.Geometry.GaugeTheory.WilsonReflectionQuotient

