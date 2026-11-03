/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / PARSING_NOT_RUN / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.CategoryTheoryHomologicalAlgebra.HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors.ThetaKummerIsotropy
import GRWTSK.CategoryTheoryHomologicalAlgebra.HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors.LocalAbelianTateCupDescent
import GRWTSK.CategoryTheoryHomologicalAlgebra.HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors.LocalKummerAdjointKernel
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# An exact consumer chain: theta obstruction -> genuine local Kummer duality

All THREE existing GRWTSK proofs are composed at the SAME coefficient
carriers; no replacement linear algebra, synthetic theta group, rank,
or analytic BSD input is inserted.

Original arithmetic target:
  H = continuous H¹(F,E[n]),
  Q = ORIGINAL H¹(F,E)[n],
  P = E(F)/nE(F),
  Z = normalized H²(F,mu_n) = ZMod n,
  delta = ORIGINAL elliptic Kummer connecting map,
  q = ORIGINAL coefficient map,
  cup = ORIGINAL Weil-evaluation/cup/Brauer normalized pairing,
  theta = genuine Mumford period-index obstruction.

This file DERIVES the unique abelian cup descent and EXACT annihilator
criterion after the following source-typed independent obligations:
  * the original theta obstruction vanishes on the Kummer image,
  * theta polarization ALONG the genuine Kummer image is the cup,
  * the original Kummer row is exact and q is onto,
  * the descended abelian Tate pairing separates the original Q.

ThetaKummerData includes the FIRST TWO as explicit arithmetic
hypotheses, not as an arbitrary fitted scalar quadratic form.
The source-specific geometry, Galois continuity and separation
remain OPEN. No general BSD theorem is asserted.
-/

namespace GRWTSK.CategoryTheoryHomologicalAlgebra.ThetaToKummerLocalDuality

open GRWTSK.CategoryTheoryHomologicalAlgebra.ThetaKummerIsotropy
open GRWTSK.CategoryTheoryHomologicalAlgebra.LocalAbelianTateCupDescent

variable {H P Q Z : Type*}
variable [AddCommGroup H] [AddCommGroup P]
variable [AddCommGroup Q] [AddCommGroup Z]

/-- The actual annihilator of the original Kummer image, using
the original degree-(1,1) cup, not a chosen perfect form. -/
def ThetaKummerData.cupAnnihilator
    (D : ThetaKummerData H P Z) : AddSubgroup H where
  carrier := {x | ∀ p : P, D.cup x (D.delta p) = 0}
  zero_mem' := by
    intro p
    simp
  add_mem' := by
    intro x y hx hy p
    simp only [Set.mem_setOf_eq] at hx hy
    simp only [map_add, AddMonoidHom.add_apply, hx p, hy p, add_zero]
  neg_mem' := by
    intro x hx p
    simp only [Set.mem_setOf_eq] at hx
    simp only [map_neg, AddMonoidHom.neg_apply, hx p, neg_zero]

/-- The genuine source theta identities imply the original
Kummer image is cup isotropic, without a cardinality argument. -/
theorem ThetaKummerData.kummer_le_cupAnnihilator
    (D : ThetaKummerData H P Z) :
    D.delta.range ≤ D.cupAnnihilator := by
  rintro x ⟨p, rfl⟩ r
  exact D.kummer_isotropic p r

/-- Construct an abelian local pairing ON THE ORIGINAL Q and
P by descending the genuine original cup along q. This reuses
the previously proved source geometric theta -> Kummer
isotropy and the genuine source exact Kummer sequence. -/
noncomputable def ThetaKummerData.descendedAbelianTate
    (D : ThetaKummerData H P Z) (q : H →+ Q)
    (hq : Function.Surjective q)
    (hexact : D.delta.range = q.ker) :
    Q →+ P →+ Z :=
  abelianCupDescentOfKummerIsotropy q hq D.delta D.cup
    hexact D.kummer_isotropic

/-- The constructed actual source quotient pairing has the
EXACT connecting-map/cup adjunction; it is not assumed as a
field of an interface. -/
theorem ThetaKummerData.descendedAbelianTate_lift
    (D : ThetaKummerData H P Z) (q : H →+ Q)
    (hq : Function.Surjective q)
    (hexact : D.delta.range = q.ker)
    (x : H) (p : P) :
    D.descendedAbelianTate q hq hexact (q x) p =
      D.cup x (D.delta p) :=
  abelianCupDescentOfKummerIsotropy_lift q hq D.delta
    D.cup hexact D.kummer_isotropic x p

/-- The local pairing is UNIQUE under the same exact
original cup/connecting equation. A future independent
Poincare/divisor pairing must equal this one if it satisfies
that equation, not merely have the same cardinality. -/
theorem ThetaKummerData.descendedAbelianTate_unique
    (D : ThetaKummerData H P Z)
    (q : H →+ Q) (hq : Function.Surjective q)
    (hexact : D.delta.range = q.ker)
    (T : Q →+ P →+ Z)
    (hT : ∀ (x : H) (p : P),
      T (q x) p = D.cup x (D.delta p)) :
    T = D.descendedAbelianTate q hq hexact := by
  change T = abelianCupDescent q hq D.delta D.cup
    (kernel_vanishing_of_kummer_isotropy
      q D.delta D.cup hexact D.kummer_isotropic)
  exact abelianCupDescent_unique q hq D.delta D.cup
    _ T hT

/-- This is the original EXACT local annihilator theorem,
derived from the theta-period-index identities, actual
Kummer exactness, and nondegeneracy of the CONSTRUCTED
quotient pairing on its original Weil--Chatelet target.
The only remaining extra arithmetic premise is the
separating duality statement; it is NOT claimed to follow
from finite Weil perfectness without a local point theorem. -/
theorem ThetaKummerData.kummer_eq_cupAnnihilator_of_separating
    (D : ThetaKummerData H P Z)
    (q : H →+ Q) (hq : Function.Surjective q)
    (hexact : D.delta.range = q.ker)
    (hseparating : ∀ a : Q,
      (∀ p : P, D.descendedAbelianTate q hq hexact a p = 0) →
        a = 0) :
    D.delta.range = D.cupAnnihilator := by
  apply le_antisymm
  · exact D.kummer_le_cupAnnihilator
  · intro x hx
    have hqx : q x = 0 := by
      apply hseparating
      intro p
      rw [D.descendedAbelianTate_lift q hq hexact]
      exact hx p
    have : x ∈ q.ker := hqx
    rwa [← hexact] at this

end GRWTSK.CategoryTheoryHomologicalAlgebra.ThetaToKummerLocalDuality
