/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / PARSING_NOT_RUN / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# n-torsion of the commutator in a central extension

If [x,y]=xyx⁻¹y⁻¹ is central and x^n commutes with y, then

               [x,y]^n = [x^n,y] = 1.

For the ORIGINAL geometric theta group, x^n lies in its
central constant-field kernel because its elliptic point
coordinate is annihilated by n. Thus its actual commutator
has values in the true group mu_n of n-th roots of unity.

This does NOT assert that this theta commutator already
equals Tau Ceti's original Isogeny.weilPairing. That final
geometric divisor comparison and its sign require an
independent source proof.
-/

namespace GRWTSK.CategoryTheoryHomologicalAlgebra.CentralCommutatorNTorsion

variable {Θ : Type*} [Group Θ]

/-- A CENTRAL commutator is n-torsion whenever the n-th
power of the first lift commutes with the second lift.
Pure original group algebra, with no elliptic proxy. -/
theorem commutator_pow_eq_one_of_pow_central
    (x y : Θ) (n : ℕ)
    (hcomm : ∀ z : Θ, Commute ⁅x,y⁆ z)
    (hxn : Commute (x ^ n) y) :
    ⁅x,y⁆ ^ n = 1 := by
  have hc : Commute y ⁅x,y⁆ := (hcomm y).symm
  have hp : ⁅x ^ n,y⁆ = ⁅x,y⁆ ^ n :=
    hc.commutatorElement_pow_left n
  have hz : ⁅x ^ n,y⁆ = 1 :=
    commutatorElement_eq_one_iff_commute.mpr hxn
  exact hp.symm.trans hz

end GRWTSK.CategoryTheoryHomologicalAlgebra.CentralCommutatorNTorsion
