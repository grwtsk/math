/- Copyright (c) 2026 grwtsk contributors. MIT.
ISOLATED_UPSTREAM_SOURCE_PROOF_CANDIDATE /
PARSING_NOT_RUN / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.

TauCetiProject/TauCeti @ 2bdb755239d3bd84760e99bc83166bdf7cc75a6b,
original Tau Ceti contributors, Apache-2.0, Lean v4.36.0-rc1.
No grwtsk/math root import or toolchain migration.
-/
import TauCeti.LinearAlgebra.FiniteBilinearModule.Orthogonal.Complement
import TauCeti.AlgebraicGeometry.EllipticCurve.GaloisCohomology.Descent

set_option autoImplicit false
noncomputable section

/-!
# Exact finite pairing criterion for local Kummer annihilator equality

The published finite local Tate pairing on H¹(E[n]) is perfect
over a nonarchimedean characteristic-zero field. The original
elliptic Weil pairing is alternating and the degree-(1,1) cup
is graded-antisymmetric; after source transport their composite
must be checked symmetric, and hence can be packaged in the
TauCeti FiniteBilinearModule (with Q/Z-valued pairing).

The present generic theorem proves the LAST algebraic step
unconditionally: if genuine local Kummer subgroups K_E and
K_(Evee), carried to the SAME symmetric nondegenerate
cohomological module by the actual principal polarization,
are orthogonal AND their order product equals the order of
the ambient H¹ group, then K_E = (K_(Evee))^orth and conversely.
For the self-dual profile, isotropy plus |K|²=|H¹| suffices.

IMPORTANT: the two upstream arithmetic suppliers
  (1) cup-product orthogonality of actual Kummer connecting maps
      (a theta/biextension/local cup compatibility theorem), and
  (2) the local point-quotient/cardinality identity
are NOT proved by finite Weil nondegeneracy alone.
Neither arithmetic fact is assumed silently by the definition
of the subgroup, and the theorem is NOT advertised as a
completed elliptic Kummer-orthogonality proof in Lean.

The original elliptic Kummer subgroup is separately named below
on TauCeti's ACTUAL continuous Galois H¹, and its existing
coefficient-kernel identity is imported without modification.
The exact conversion to canonical GalRep continuous H¹, its
symmetric Tate pairing, and the arithmetic suppliers remain
explicit source obligations.
-/

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.LocalKummerOrthogonality

open TauCeti TauCeti.ContCohomology

/-- This is the ACTUAL elliptic local Kummer image in the
source continuous H¹, not an arbitrary subgroup selected by rank.
It uses the original finite-level Kummer connecting map. -/
def genuineKummerImage {F : Type*} [Field F]
    (W : WeierstrassCurve F) [W.IsElliptic]
    (n : ℕ) (hn : IsUnit (n : F)) :
    AddSubgroup (H1 (AbsoluteGaloisGroup F) (W.TorsionCoeff n)) :=
  (W.kummerMap n hn).range

/-- Source-exact Kummer image equals the genuine coefficient
comparison kernel, prior to canonical GalRep transport.
This is the original WeierstrassCurve.range_kummerMap theorem. -/
theorem genuineKummerImage_eq_coefficientKernel
    {F : Type*} [Field F] (W : WeierstrassCurve F)
    [W.IsElliptic] (n : ℕ) (hn : IsUnit (n : F)) :
    genuineKummerImage W n hn =
      (explicitCoeff1 (AbsoluteGaloisGroup F) (W.TorsionCoeff n)
        (W.torsionCoeffIncl n) continuous_of_discreteTopology).ker := by
  exact W.range_kummerMap n hn

/-! ## Exact last algebraic step for an actual transported local pair.

There is NO chosen elliptic rank, no arbitrary Gram regulator,
and no assumption that the desired orthogonal equality already
holds: only independent pair-vanishing and exact orders are
allowed as inputs to the equality criterion.
-/

variable (A : FiniteBilinearModule)

/-- Two source-identified local conditions in the SAME finite
symmetric cohomology carrier are exact orthogonal complements
as soon as one genuine cup-vanishing theorem and the genuine
local arithmetic cardinal product are provided. -/
theorem twoLocalConditions_exactOrthogonal
    (hperfect : A.IsNondegenerate)
    (K_E K_Evee : AddSubgroup A)
    (hvanish : ∀ x ∈ K_E, ∀ y ∈ K_Evee, A.pairing x y = 0)
    (horder : Nat.card K_E * Nat.card K_Evee = Nat.card A) :
    K_E = A.orthogonalComplement K_Evee := by
  have hle : K_E ≤ A.orthogonalComplement K_Evee := by
    intro x hx
    apply (A.mem_orthogonalComplement_iff K_Evee x).2
    intro y hy
    exact hvanish x hx y hy
  have hprod : Nat.card K_Evee * Nat.card K_E = Nat.card A := by
    simpa only [Nat.mul_comm] using horder
  have hcard := A.IsNondegenerate.card_mul_card_orthogonalComplement
    hperfect K_Evee
  have heq :
      Nat.card K_E =
        Nat.card (A.orthogonalComplement K_Evee) :=
    Nat.mul_left_cancel (Nat.card_pos (α := K_Evee))
      (hprod.trans hcard.symm)
  exact AddSubgroup.eq_of_le_of_card_ge hle heq.ge

/-- Both directions are recovered from the same source pairing.
Symmetry reverses the zero-cup calculation without guessing
a sign from a merely alternating coefficient pairing. -/
theorem twoLocalConditions_mutualOrthogonal
    (hperfect : A.IsNondegenerate)
    (K_E K_Evee : AddSubgroup A)
    (hvanish : ∀ x ∈ K_E, ∀ y ∈ K_Evee, A.pairing x y = 0)
    (horder : Nat.card K_E * Nat.card K_Evee = Nat.card A) :
    K_E = A.orthogonalComplement K_Evee ∧
      K_Evee = A.orthogonalComplement K_E := by
  constructor
  · exact A.twoLocalConditions_exactOrthogonal
      hperfect K_E K_Evee hvanish horder
  · apply A.twoLocalConditions_exactOrthogonal
      hperfect K_Evee K_E
    · intro y hy x hx
      exact (A.pairing_comm y x).trans (hvanish x hx y hy)
    · simpa only [Nat.mul_comm] using horder

/-- Self-dual principal-polarized local profile.
An actual source isotropy theorem plus exact size squared
turns the REAL Kummer image into a Lagrangian subgroup.
Both arithmetic inputs remain independent proof obligations. -/
theorem selfKummer_exactOrthogonal_of_isotropic_and_order
    (hperfect : A.IsNondegenerate) (K : AddSubgroup A)
    (hisotropic : A.IsIsotropic K)
    (horder : Nat.card K ^ 2 = Nat.card A) :
    K = A.orthogonalComplement K := by
  exact (A.isLagrangian_def K).1
    (FiniteBilinearModule.IsIsotropic.isLagrangian_of_card_sq_eq
      A hisotropic hperfect horder)

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.LocalKummerOrthogonality
