/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Exact kernel/annihilator return from a genuine local Kummer duality diagram

For an actual nonarchimedean local elliptic E/F and its dual,
the classical source is the Kummer short exact cohomology row

  0 -> E(F)/nE(F) -> H¹(F,E[n]) --q_E--> H¹(F,E)[n] -> 0

together with local Tate duality for the abelian variety and
the Weil-cup pairing on finite torsion.

Let x in H¹(F,E[n]) and P in E^vee(F)/nE^vee(F).
The nontrivial arithmetic/naturality theorem is the signed
adjunction of the connecting map delta_Evee:

  <x,delta_Evee(P)>_finite = +/- <q_E(x),P>_abelian.

For orthogonal kernels the sign is irrelevant but a real source
must fix it. If the abelian local Tate pairing separates every
element of H¹(F,E)[n], that adjunction proves EXACTLY

  ker q_E = (im delta_Evee)^orth.

This file proves that implication by real AddMonoidHom algebra.
The source maps, their naturality and the local abelian duality
must be constructed as arithmetic objects in the compatible
continuous Galois cochain category before the result may be
specialized to actual E/F.

Neither the desired equality nor an elliptic rank is provided
as a premise. In particular, finite Weil nondegeneracy alone
does not construct the local abelian Tate pairing or the
Kummer-connecting adjunction. No BSD theorem is claimed.
-/

namespace GRWTSK.CategoryTheoryHomologicalAlgebra.LocalKummerAdjointKernel

variable {H Q P V Z : Type*}
variable [AddCommGroup H] [AddCommGroup Q] [AddCommGroup P]
variable [AddCommGroup V] [AddCommGroup Z]

/-- The cohomological data and the TWO nontrivial arithmetic
comparisons needed to return the exact local annihilator.

When instantiated:
H = genuine H¹(F,E[n])
Q = genuine H¹(F,E)[n]
P = E^vee(F)/nE^vee(F)
V = genuine H¹(F,E^vee[n])
Z = normalized H²(F,mu_n).

The quotient map, Kummer map and pairings must be the
source-original maps, not selected operators or chosen ranks. -/
structure AdjointKummerData where
  quotient : H →+ Q
  dualKummer : P →+ V
  finitePair : H →+ V →+ Z
  abelianPair : Q →+ P →+ Z
  connecting_adjunction :
    ∀ x p, finitePair x (dualKummer p) = abelianPair (quotient x) p
  abelian_separating :
    ∀ q, (∀ p, abelianPair q p = 0) → q = 0

/-- The actual Kummer image is the kernel of the ORIGINAL
H¹(E[n]) -> H¹(E)[n] map, once the source Kummer exact
sequence supplies that map and its kernel identity. -/
def AdjointKummerData.originalKummerKernel
    (D : AdjointKummerData (H := H) (Q := Q)
      (P := P) (V := V) (Z := Z)) : AddSubgroup H :=
  D.quotient.ker

/-- Finite local cup-orthogonal to the IMAGE of the genuine
dual Kummer map, not to a rank-selected vector subspace. -/
def AdjointKummerData.dualKummerOrthogonal
    (D : AdjointKummerData (H := H) (Q := Q)
      (P := P) (V := V) (Z := Z)) : AddSubgroup H where
  carrier := {x | ∀ p : P, D.finitePair x (D.dualKummer p) = 0}
  zero_mem' := by
    intro p
    simp
  add_mem' := by
    intro x y hx hy p
    simp [map_add, hx p, hy p]
  neg_mem' := by
    intro x hx p
    simp [map_neg, hx p]

/-- Membership is literal vanishing against EVERY element
of the original dual Kummer image, and no larger test family. -/
theorem AdjointKummerData.mem_dualKummerOrthogonal_iff
    (D : AdjointKummerData (H := H) (Q := Q)
      (P := P) (V := V) (Z := Z)) (x : H) :
    x ∈ D.dualKummerOrthogonal ↔
      ∀ y : V, y ∈ D.dualKummer.range → D.finitePair x y = 0 := by
  constructor
  · intro hx y hy
    obtain ⟨p, hp⟩ := hy
    rw [← hp]
    exact hx p
  · intro hx p
    exact hx (D.dualKummer p) ⟨p, rfl⟩

/-- Exact local annihilator theorem, with the two genuine
arithmetic inputs made explicit. The desired equality is
DERIVED, not assumed or smuggled into an interface. -/
theorem AdjointKummerData.kernel_eq_dualKummerOrthogonal
    (D : AdjointKummerData (H := H) (Q := Q)
      (P := P) (V := V) (Z := Z)) :
    D.originalKummerKernel = D.dualKummerOrthogonal := by
  ext x
  constructor
  · intro hx p
    change D.quotient x = 0 at hx
    rw [D.connecting_adjunction, hx, map_zero]
    simp
  · intro hx
    change D.quotient x = 0
    apply D.abelian_separating
    intro p
    rw [← D.connecting_adjunction]
    exact hx p

/-- A direct membership-level form for future genuine Galois
cohomology consumers, including the original signed finite cup
and local abelian Tate pairing. -/
theorem AdjointKummerData.mem_originalKernel_iff_orthogonal
    (D : AdjointKummerData (H := H) (Q := Q)
      (P := P) (V := V) (Z := Z)) (x : H) :
    D.quotient x = 0 ↔
      ∀ p : P, D.finitePair x (D.dualKummer p) = 0 := by
  change x ∈ D.originalKummerKernel ↔ x ∈ D.dualKummerOrthogonal
  rw [D.kernel_eq_dualKummerOrthogonal]

end GRWTSK.CategoryTheoryHomologicalAlgebra.LocalKummerAdjointKernel
