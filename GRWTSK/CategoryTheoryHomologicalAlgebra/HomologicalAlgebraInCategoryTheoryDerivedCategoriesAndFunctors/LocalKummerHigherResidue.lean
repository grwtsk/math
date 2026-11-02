/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.CategoryTheoryHomologicalAlgebra.HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors.LocalPointKummerFiber
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Degree-two Weil--Chatelet residue of a full Kummer point cone

The prior assertion that Fib(C(E[p^n]) ⊕ E(F)[0] -> C(E))
is quasi-isomorphic AS A FULL COMPLEX to
[E(F) --p^n--> E(F)] is FALSE in general.

The actual coefficient short exact triangle implies
 Fib(C(A) ⊕ E(F)[0] -> C(B))
    ≃ Fib(E(F)[0] --p^n--> C(B)).
Hence H0=E(F)[p^n], H1=E(F)/p^n E(F), but
 H^i ≅ H^(i-1)(F,E) for i>=2.
In particular H2 is the genuine Weil--Chatelet H1(F,E),
usually nonzero at a nonarchimedean local place.
The canonical good truncation preserves H0/H1 and drops
that *explicitly recorded* extra higher cohomology.

This source formalizes the next differential and one exact hostile
nonzero H2 test. The toy model is explicitly NOT an elliptic curve;
it refutes an unjustified general quasi-isomorphism inference.
-/

namespace GRWTSK.CategoryTheoryHomologicalAlgebra.LocalKummerHigherResidue

open GRWTSK.CategoryTheoryHomologicalAlgebra.LocalPointKummerFiber

variable {A₀ A₁ A₂ A₃ B₀ B₁ B₂ P : Type*}
variable [AddCommGroup A₀] [AddCommGroup A₁] [AddCommGroup A₂]
variable [AddCommGroup A₃] [AddCommGroup B₀] [AddCommGroup B₁]
variable [AddCommGroup B₂] [AddCommGroup P]

/-- One more ORIGINAL differential from each full cochain complex.
The squared-zero and coefficient-naturality fields are the real
Galois cochain identities, not an assigned obstruction class. -/
structure HigherConeData where
  low : PointConeData
    (A₀ := A₀) (A₁ := A₁) (A₂ := A₂)
    (B₀ := B₀) (B₁ := B₁) (P := P)
  dA2 : A₂ →+ A₃
  dB1 : B₁ →+ B₂
  j2 : A₂ →+ B₂
  a_sq1 : ∀ c, dA2 (low.dA1 c) = 0
  b_sq0 : ∀ b, dB1 (low.dB0 b) = 0
  natural1 : ∀ c, dB1 (low.j1 c) = j2 (low.dA1 c)

/-- The genuine degree-two differential of the FULL point cone. -/
def HigherConeData.uD2 (D : HigherConeData
    (A₀ := A₀) (A₁ := A₁) (A₂ := A₂) (A₃ := A₃)
    (B₀ := B₀) (B₁ := B₁) (B₂ := B₂) (P := P)) :
    (A₂ × B₁) →+ (A₃ × B₂) where
  toFun x := (D.dA2 x.1, D.j2 x.1 - D.dB1 x.2)
  map_zero' := by ext <;> simp
  map_add' x y := by
    apply Prod.ext
    · simp [map_add]
    · change D.j2 (x.1 + y.1) - D.dB1 (x.2 + y.2) =
        (D.j2 x.1 - D.dB1 x.2) +
        (D.j2 y.1 - D.dB1 y.2)
      simp only [map_add]
      abel

/-- Complete next differential identity; there are NO hidden
degree-two terms or assumed analytic rank conditions. -/
theorem HigherConeData.uD2_uD1 (D : HigherConeData
    (A₀ := A₀) (A₁ := A₁) (A₂ := A₂) (A₃ := A₃)
    (B₀ := B₀) (B₁ := B₁) (B₂ := B₂) (P := P))
    (x : A₁ × B₀) : D.uD2 (D.low.uD1 x) = 0 := by
  apply Prod.ext
  · exact D.a_sq1 x.1
  · change D.j2 (D.low.dA1 x.1) -
        D.dB1 (D.low.j1 x.1 - D.low.dB0 x.2) = 0
    rw [map_sub, ← D.natural1 x.1, D.b_sq0 x.2]
    abel

/-- Every genuine B-one cocycle gives a FULL cone degree-two cocycle
of the form (0,b). It may be nonzero in H2 and must not be erased. -/
theorem HigherConeData.geometric_one_cocycle_closed
    (D : HigherConeData (A₀ := A₀) (A₁ := A₁)
      (A₂ := A₂) (A₃ := A₃) (B₀ := B₀)
      (B₁ := B₁) (B₂ := B₂) (P := P))
    (b : B₁) (hb : D.dB1 b = 0) :
    D.uD2 (0,b) = 0 := by
  apply Prod.ext
  · simp [HigherConeData.uD2]
  · change D.j2 0 - D.dB1 b = 0
    simp [hb]

/-! ## A hostile source-exact degree-two residue

Take A=0, P=B0=Q with eta=id, and a geometric cochain
complex B0=Q, B1=Q with zero differential. Multiplication by 2
on B is invertible, so 0->A->B--2->B is a degreewise short
exact complex, and the point resolution [Q--2->Q] is acyclic.
Nevertheless the FULL corrected cone has a nonzero H2=Q.
The source model is elementary rational cochains, NOT a Galois E.
-/

private abbrev ZeroC := Fin 0 → ℚ

private def hostileLow :
    PointConeData (A₀ := ZeroC) (A₁ := ZeroC)
      (A₂ := ZeroC) (B₀ := ℚ) (B₁ := ℚ) (P := ℚ) where
  dA0 := 0
  dA1 := 0
  dB0 := 0
  j0 := 0
  j1 := 0
  eta := AddMonoidHom.id ℚ
  sqA := by intro a; rfl
  natJ := by intro a; rfl
  etaClosed := by intro p; rfl

private def hostileHigher :
    HigherConeData (A₀ := ZeroC) (A₁ := ZeroC)
      (A₂ := ZeroC) (A₃ := ZeroC)
      (B₀ := ℚ) (B₁ := ℚ) (B₂ := ℚ) (P := ℚ) where
  low := hostileLow
  dA2 := 0
  dB1 := 0
  j2 := 0
  a_sq1 := by intro c; rfl
  b_sq0 := by intro b; rfl
  natural1 := by intro c; rfl

/-- A genuinely closed high-degree witness. -/
theorem hostile_two_cocycle :
    hostileHigher.uD2 (0,(1 : ℚ)) = 0 := by
  simp [HigherConeData.uD2, hostileHigher]

/-- This nonzero high-degree witness is NOT the boundary of
any degree-one cone cochain. Therefore the FULL cone is not
two-term acyclic despite having the same H0/H1 as that model. -/
theorem hostile_two_cocycle_not_boundary :
    ¬ ∃ x : ZeroC × ℚ, hostileHigher.low.uD1 x =
      (0,(1 : ℚ)) := by
  rintro ⟨x,hx⟩
  have h := congrArg Prod.snd hx
  norm_num [HigherConeData.low, hostileHigher,
    hostileLow, PointConeData.uD1] at h

end GRWTSK.CategoryTheoryHomologicalAlgebra.LocalKummerHigherResidue
