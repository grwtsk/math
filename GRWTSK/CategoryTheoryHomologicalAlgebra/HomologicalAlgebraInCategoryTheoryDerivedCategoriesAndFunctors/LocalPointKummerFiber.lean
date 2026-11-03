/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import Mathlib
set_option autoImplicit false
noncomputable section

/-!
# The point-corrected local Kummer mapping fiber

For actual local E/F, A=E[p^n](Fsep), B=E(Fsep), P=E(F),
U=Fiber(C_cont(G,A) ⊕ P[0] -> C_cont(G,B)).
Mathematically H0(U)=E(F)[p^n], H1(U)=E(F)/p^n E(F);
the source projection on H1 is the injective Kummer map.
IMPORTANT: the FULL U generally has H2(U)=H1(F,E), not zero.
The two-term rational-point resolution instead matches the GOOD
TRUNCATION tau_<=1 U in low-degree cohomology. The higher residue
must be retained in any untruncated derived comparison; see
LocalKummerHigherResidue and LocalKummerGoodTruncation.

The old uncorrected cone(A->B)[-1] has an extra H0(B)/H0(A)
contribution and cannot be used unchanged to form the inverse
p-power tower. These are abstract additive cochain declarations
intended for the real upstream Tau Ceti elliptic coefficients, not
a claim of already compiled source integration.
-/

namespace GRWTSK.CategoryTheoryHomologicalAlgebra.LocalPointKummerFiber

variable {A₀ A₁ A₂ B₀ B₁ P : Type*}
variable [AddCommGroup A₀] [AddCommGroup A₁] [AddCommGroup A₂]
variable [AddCommGroup B₀] [AddCommGroup B₁] [AddCommGroup P]

structure PointConeData where
  dA0 : A₀ →+ A₁
  dA1 : A₁ →+ A₂
  dB0 : B₀ →+ B₁
  j0 : A₀ →+ B₀
  j1 : A₁ →+ B₁
  eta : P →+ B₀
  sqA : ∀ a, dA1 (dA0 a) = 0
  natJ : ∀ a, dB0 (j0 a) = j1 (dA0 a)
  etaClosed : ∀ p, dB0 (eta p) = 0

def PointConeData.uD0 (D : PointConeData (A₀ := A₀) (A₁ := A₁)
    (A₂ := A₂) (B₀ := B₀) (B₁ := B₁) (P := P)) :
    (A₀ × P) →+ (A₁ × B₀) where
  toFun x := (D.dA0 x.1, D.j0 x.1 - D.eta x.2)
  map_zero' := by ext <;> simp
  map_add' x y := by
    apply Prod.ext
    · simp [map_add]
    · change D.j0 (x.1 + y.1) - D.eta (x.2 + y.2) =
          (D.j0 x.1 - D.eta x.2) +
          (D.j0 y.1 - D.eta y.2)
      simp only [map_add]
      abel

def PointConeData.uD1 (D : PointConeData (A₀ := A₀) (A₁ := A₁)
    (A₂ := A₂) (B₀ := B₀) (B₁ := B₁) (P := P)) :
    (A₁ × B₀) →+ (A₂ × B₁) where
  toFun x := (D.dA1 x.1, D.j1 x.1 - D.dB0 x.2)
  map_zero' := by ext <;> simp
  map_add' x y := by
    apply Prod.ext
    · simp [map_add]
    · change D.j1 (x.1 + y.1) - D.dB0 (x.2 + y.2) =
          (D.j1 x.1 - D.dB0 x.2) +
          (D.j1 y.1 - D.dB0 y.2)
      simp only [map_add]
      abel

theorem PointConeData.uD1_uD0 (D : PointConeData
    (A₀ := A₀) (A₁ := A₁) (A₂ := A₂)
    (B₀ := B₀) (B₁ := B₁) (P := P)) (x : A₀ × P) :
    D.uD1 (D.uD0 x) = 0 := by
  apply Prod.ext
  · exact D.sqA x.1
  · change D.j1 (D.dA0 x.1) -
        D.dB0 (D.j0 x.1 - D.eta x.2) = 0
    rw [map_sub, D.natJ x.1, D.etaClosed x.2]
    abel

/-- The exact degree-zero condition includes actual invariant
rational points. It is never discarded by a rank hypothesis. -/
theorem PointConeData.zero_cycle_iff (D : PointConeData
    (A₀ := A₀) (A₁ := A₁) (A₂ := A₂)
    (B₀ := B₀) (B₁ := B₁) (P := P)) (x : A₀ × P) :
    D.uD0 x = 0 ↔
      D.dA0 x.1 = 0 ∧ D.j0 x.1 = D.eta x.2 := by
  constructor
  · intro h
    constructor
    · exact congrArg Prod.fst h
    · have h2 := congrArg Prod.snd h
      change D.j0 x.1 - D.eta x.2 = 0 at h2
      exact sub_eq_zero.mp h2
  · rintro ⟨ha,hp⟩
    apply Prod.ext
    · exact ha
    · change D.j0 x.1 - D.eta x.2 = 0
      rw [hp]
      simp

/-- Exactly the cochain-level Kummer lift: a closed torsion
cocycle lifts to the cone iff its geometric-point image is a
coboundary. This uses no analytic rank. -/
theorem PointConeData.lift_iff_coeff_boundary
    (D : PointConeData (A₀ := A₀) (A₁ := A₁)
      (A₂ := A₂) (B₀ := B₀) (B₁ := B₁) (P := P))
    (c : A₁) (hc : D.dA1 c = 0) :
    (∃ b : B₀, D.uD1 (c,b) = 0) ↔ D.j1 c ∈ D.dB0.range := by
  constructor
  · rintro ⟨b,h⟩
    have hB := congrArg Prod.snd h
    change D.j1 c - D.dB0 b = 0 at hB
    exact ⟨b,(sub_eq_zero.mp hB).symm⟩
  · rintro ⟨b,hb⟩
    refine ⟨b,?_⟩
    apply Prod.ext
    · exact hc
    · change D.j1 c - D.dB0 b = 0
      rw [hb]
      simp

/-- In the actual source eta:E(F)->E(Fsep), every invariant
geometric point is rational. This condition is not true of an
arbitrary chosen subgroup. -/
def PointConeData.FullInvariants (D : PointConeData
    (A₀ := A₀) (A₁ := A₁) (A₂ := A₂)
    (B₀ := B₀) (B₁ := B₁) (P := P)) : Prop :=
  ∀ b : B₀, D.dB0 b = 0 → ∃ p : P, D.eta p = b

/-- The point correction eliminates the false H0 excess: a cone
cycle whose A-coordinate is an A-boundary is itself a cone boundary. -/
theorem PointConeData.cycle_is_boundary_of_A_boundary
    (D : PointConeData (A₀ := A₀) (A₁ := A₁)
      (A₂ := A₂) (B₀ := B₀) (B₁ := B₁) (P := P))
    (hInv : D.FullInvariants) (c : A₁) (b : B₀)
    (hc : D.uD1 (c,b) = 0) (a : A₀) (ha : D.dA0 a = c) :
    ∃ x : A₀ × P, D.uD0 x = (c,b) := by
  have hB := congrArg Prod.snd hc
  have hB' : D.j1 c = D.dB0 b :=
    sub_eq_zero.mp (show D.j1 c - D.dB0 b = 0 from hB)
  have hInvB : D.dB0 (D.j0 a - b) = 0 := by
    rw [map_sub, D.natJ a, ha, hB']
    simp
  obtain ⟨p,hp⟩ := hInv _ hInvB
  refine ⟨(a,p),?_⟩
  apply Prod.ext
  · exact ha
  · change D.j0 a - D.eta p = b
    rw [hp]
    abel

abbrev PointConeData.cyclesOne (D : PointConeData
    (A₀ := A₀) (A₁ := A₁) (A₂ := A₂)
    (B₀ := B₀) (B₁ := B₁) (P := P)) := D.uD1.ker

def PointConeData.boundaryOne (D : PointConeData
    (A₀ := A₀) (A₁ := A₁) (A₂ := A₂)
    (B₀ := B₀) (B₁ := B₁) (P := P)) :
    (A₀ × P) →+ D.cyclesOne :=
  D.uD0.codRestrict _ D.uD1_uD0

abbrev PointConeData.HOne (D : PointConeData
    (A₀ := A₀) (A₁ := A₁) (A₂ := A₂)
    (B₀ := B₀) (B₁ := B₁) (P := P)) :=
  D.cyclesOne ⧸ D.boundaryOne.range

end GRWTSK.CategoryTheoryHomologicalAlgebra.LocalPointKummerFiber
