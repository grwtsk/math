/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.CategoryTheoryHomologicalAlgebra.HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors.LocalPointKummerFiber
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# The canonical degree <= 1 good truncation of the local Kummer cone

Let U=Fib(C_cont(G_v,E[p^n]) ⊕ E(F)[0] -> C_cont(G_v,E)).
The full U has H0=E(F)[p^n] and H1=E(F)/p^nE(F),
but in general H2(U)=H1(F,E), the original local Weil--Chatelet
group. The full complex is NOT quasi-isomorphic to a two-term local
point complex without an extra vanishing assumption.

This file retains the actual original low-degree differential and
constructs its canonical connective GOOD TRUNCATION tau_<=1 U:
   degree 0 = U0,
   degree 1 = ker(dU1 : U1 -> U2),
   differential dU0 with codomain restricted to ker dU1.
It is concentrated in degrees 0 and 1 by construction, with the
SAME H0 and H1 as the full U, not an arbitrary replacement.

The actual elliptic point, Galois, Kummer and invariant-point
suppliers are external Tau Ceti objects and MUST be separately
instantiated; a same-dimensional Hilbert proxy does not qualify.
-/

namespace GRWTSK.CategoryTheoryHomologicalAlgebra.LocalKummerGoodTruncation

open GRWTSK.CategoryTheoryHomologicalAlgebra.LocalPointKummerFiber

variable {A₀ A₁ A₂ B₀ B₁ P : Type*}
variable [AddCommGroup A₀] [AddCommGroup A₁] [AddCommGroup A₂]
variable [AddCommGroup B₀] [AddCommGroup B₁] [AddCommGroup P]

variable (D : PointConeData (A₀ := A₀) (A₁ := A₁)
  (A₂ := A₂) (B₀ := B₀) (B₁ := B₁) (P := P))

/-- The degree-one term is the original degree-one COCYCLE subgroup,
not the entire degree-one cochain group. -/
abbrev goodTruncOne := D.cyclesOne

/-- The true good-truncation differential with unchanged source U0. -/
def goodTruncD0 : (A₀ × P) →+ D.goodTruncOne :=
  D.boundaryOne

/-- Genuine H0 of the good truncation. -/
abbrev goodTruncHZero := D.goodTruncD0.ker

/-- Genuine H1 of the good truncation. Its higher cochain groups are
literally zero, rather than assumed cohomologically zero in U. -/
abbrev goodTruncHOne := D.goodTruncOne ⧸ D.goodTruncD0.range

/-- The good truncation H0 agrees with that of the FULL original
point cone without suppressing the point correction. -/
theorem goodTruncHZero_iff (x : A₀ × P) :
    x ∈ D.goodTruncHZero ↔ D.uD0 x = 0 := by
  change D.boundaryOne x = 0 ↔ D.uD0 x = 0
  constructor
  · intro h
    exact congrArg Subtype.val h
  · intro h
    apply Subtype.ext
    exact h

/-- The good truncation H1 is LITERALLY the original H1 quotient,
not merely isomorphic after arbitrary choices. -/
theorem goodTruncHOne_eq_original :
    D.goodTruncHOne = D.HOne := rfl

/-- The original A-valued cocycle subgroup of the coefficient
complex and its genuine A-boundary map. -/
abbrev AOneCycles := D.dA1.ker

def aBoundaryToCycles : A₀ →+ D.AOneCycles :=
  D.dA0.codRestrict _ D.sqA

/-- The EXACT source cohomological Kummer image, prior to dividing
A-one-cocycles by their original A-boundaries. -/
def localRepresentatives : AddSubgroup A₁ :=
  D.dA1.ker ⊓ D.dB0.range.comap D.j1

/-- Every local point-corrected cone cocycle projects to a true
A-one-cocycle whose E-coefficient image is an E-boundary. -/
def projectionToLocalRepresentatives :
    D.cyclesOne →+ D.localRepresentatives where
  toFun x := by
    refine ⟨x.val.1, ?_⟩
    have hA := congrArg Prod.fst x.property
    have hB := congrArg Prod.snd x.property
    constructor
    · change D.dA1 x.val.1 = 0
      exact hA
    · change D.j1 x.val.1 - D.dB0 x.val.2 = 0 at hB
      exact ⟨x.val.2, (sub_eq_zero.mp hB).symm⟩
  map_zero' := by
    apply Subtype.ext
    rfl
  map_add' x y := by
    apply Subtype.ext
    rfl

/-- EVERY actual local Kummer representative has a genuine
E-coefficient nullhomotopy, hence a cone cocycle lifting it. -/
theorem projection_surjective :
    Function.Surjective D.projectionToLocalRepresentatives := by
  rintro ⟨c, hc⟩
  have hclosed : D.dA1 c = 0 := hc.1
  obtain ⟨b,hb⟩ :=
    (D.lift_iff_coeff_boundary c hclosed).2 hc.2
  refine ⟨⟨(c,b), hb⟩, ?_⟩
  apply Subtype.ext
  rfl

/-- A local representative in the image of the real A-cochain
coboundary lifts to an original U-boundary if local invariant
geometric E-points are EXACTLY the rational E(F)-points. -/
theorem projection_boundary_reflecting
    (hInv : D.FullInvariants) (z : D.cyclesOne)
    (h : z.val.1 ∈ D.dA0.range) :
    z ∈ D.boundaryOne.range := by
  obtain ⟨a,ha⟩ := h
  obtain ⟨w,hw⟩ :=
    D.cycle_is_boundary_of_A_boundary hInv
      z.val.1 z.val.2 z.property a ha
  refine ⟨w, ?_⟩
  apply Subtype.ext
  exact hw

/-- The first cohomology of the TRUNCATED local condition has
no extra class that projects to zero in the true torsion-coefficient
H1. It is the source-faithful injective Kummer direction, with
the real invariant-point hypothesis explicit rather than assumed. -/
theorem projection_zero_kernel_of_full_invariants
    (hInv : D.FullInvariants) (z : D.cyclesOne)
    (hz : z.val.1 ∈ D.dA0.range) :
    z ∈ D.goodTruncD0.range := by
  exact D.projection_boundary_reflecting hInv z hz

end GRWTSK.CategoryTheoryHomologicalAlgebra.LocalKummerGoodTruncation
