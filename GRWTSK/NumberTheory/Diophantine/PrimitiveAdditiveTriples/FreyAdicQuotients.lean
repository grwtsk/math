/- Copyright (c) 2026 grwtsk contributors. MIT.
Uses Mathlib ideal images and the third isomorphism theorem (Apache-2.0).
Formalization assistance: OpenAI.

The actual affine coordinate algebra and powers of its selected section ideal.
The double-quotient comparison is independent of a root or unit-Jacobian
hypothesis. It is not a scheme-stalk, metric, conductor or height theorem.
These are unelaborated source proof scripts.
-/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyJetQuotient

set_option autoImplicit false

noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyAdicQuotients

open FreyJetQuotient

variable {R : Type*} [CommRing R]

/-- Only the cubic relation is imposed in the affine coordinate algebra. -/
def cubicIdeal (a b : R) : Ideal (Plane R) := Ideal.span {equation a b}

abbrev Coordinate (a b : R) := Plane R ⧸ cubicIdeal a b

/-- The original polynomial presentation, with the named X and Y retained. -/
def coordinateMap (a b : R) : Plane R →+* Coordinate a b :=
  Ideal.Quotient.mk (cubicIdeal a b)

/-- The image of (X-r,Y) in the actual affine coordinate algebra. -/
def curveSectionIdeal (a b r : R) : Ideal (Coordinate a b) :=
  (sectionIdeal r).map (coordinateMap a b)

/-- Image and power commute, with the same quotient map and exponent. -/
theorem curveSectionIdeal_pow (a b r : R) (n : ℕ) :
    curveSectionIdeal a b r ^ n = (sectionIdeal r ^ n).map (coordinateMap a b) := by
  exact (Ideal.map_pow (coordinateMap a b) (sectionIdeal r) n).symm

/-- Canonical powers in the coordinate algebra, including the zeroth power. -/
abbrev PowerQuotient (a b r : R) (n : ℕ) :=
  Coordinate a b ⧸ curveSectionIdeal a b r ^ n

/-- The usual map from the n-th ideal-power quotient down to the m-th. -/
def transition (a b r : R) (m n : ℕ) (hmn : m ≤ n) :
    PowerQuotient a b r n →ₐ[R] PowerQuotient a b r m :=
  Ideal.Quotient.factorₐ R (Ideal.pow_le_pow_right hmn)

@[simp] theorem transition_mk (a b r : R) (m n : ℕ) (hmn : m ≤ n)
    (c : Coordinate a b) :
    transition a b r m n hmn (Ideal.Quotient.mk (curveSectionIdeal a b r ^ n) c) =
      Ideal.Quotient.mk (curveSectionIdeal a b r ^ m) c := rfl

/-- Composition is proved on the quotient presentation, before any limit map. -/
theorem transition_comp (a b r : R) (l m n : ℕ) (hlm : l ≤ m) (hmn : m ≤ n) :
    (transition a b r l m hlm).comp (transition a b r m n hmn) =
      transition a b r l n (hlm.trans hmn) := by
  apply AlgHom.ext
  intro u
  obtain ⟨c, rfl⟩ := Ideal.Quotient.mk_surjective u
  rfl

/-- The finite relative jet is the (N+1)-st power quotient of the affine ring.
This is the third isomorphism theorem plus the exact image-of-powers identity. -/
def finiteEquiv (a b r : R) (N : ℕ) :
    PowerQuotient a b r (N + 1) ≃ₐ[R] Jet a b r N :=
  (Ideal.quotientEquivAlgOfEq R (curveSectionIdeal_pow a b r (N + 1))).trans
    (DoubleQuot.quotQuotEquivQuotSupₐ R (cubicIdeal a b) (sectionIdeal r ^ (N + 1)))

/-- The double-quotient comparison fixes every polynomial representative. -/
@[simp] theorem finiteEquiv_mk (a b r : R) (N : ℕ) (p : Plane R) :
    finiteEquiv a b r N
      (Ideal.Quotient.mk (curveSectionIdeal a b r ^ (N + 1)) (coordinateMap a b p)) =
        quotientMap a b r N p := by
  simp only [finiteEquiv, AlgEquiv.trans_apply, Ideal.quotientEquivAlgOfEq_mk] <;> rfl

/-- The inverse retains the same representative and both successive quotients. -/
@[simp] theorem finiteEquiv_symm_mk (a b r : R) (N : ℕ) (p : Plane R) :
    (finiteEquiv a b r N).symm (quotientMap a b r N p) =
      Ideal.Quotient.mk (curveSectionIdeal a b r ^ (N + 1)) (coordinateMap a b p) := by
  apply (finiteEquiv a b r N).injective
  rw [AlgEquiv.apply_symm_apply, finiteEquiv_mk]

/-- The two independently defined finite transition systems agree. -/
theorem finiteEquiv_transition (a b r : R) (M N : ℕ) (hMN : M ≤ N)
    (u : PowerQuotient a b r (N + 1)) :
    finiteEquiv a b r M
        (transition a b r (M + 1) (N + 1) (Nat.succ_le_succ hMN) u) =
      truncate a b r M N hMN (finiteEquiv a b r N u) := by
  obtain ⟨c, rfl⟩ := Ideal.Quotient.mk_surjective u
  obtain ⟨p, rfl⟩ := Ideal.Quotient.mk_surjective c
  rw [transition_mk, finiteEquiv_mk, finiteEquiv_mk] <;> rfl

/-- Naturality of the inverse comparison, needed to reconstruct all adic levels. -/
theorem finiteEquiv_symm_transition (a b r : R) (M N : ℕ) (hMN : M ≤ N)
    (u : Jet a b r N) :
    transition a b r (M + 1) (N + 1) (Nat.succ_le_succ hMN)
        ((finiteEquiv a b r N).symm u) =
      (finiteEquiv a b r M).symm (truncate a b r M N hMN u) := by
  apply (finiteEquiv a b r M).injective
  rw [finiteEquiv_transition, AlgEquiv.apply_symm_apply, AlgEquiv.apply_symm_apply]

/-- Canonical adic level zero has no coefficient data: I^0 is the unit ideal.
It must not be identified with the order-zero jet, which uses I^1. -/
theorem powerQuotient_zero (a b r : R) (u : PowerQuotient a b r 0) : u = 0 := by
  obtain ⟨c, rfl⟩ := Ideal.Quotient.mk_surjective u
  apply Ideal.Quotient.eq_zero_iff_mem.mpr
  simp

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyAdicQuotients
