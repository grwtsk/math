/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Local Kummer condition as an actual cochain mapping fiber

Let A be the genuine torsion coefficient E[m] and B the full
geometric point coefficient E(Ksep) at one local Galois group G_v.
The natural equivariant inclusion j:A->B induces a cochain map.

The local condition complex is NOT an abstract chosen H¹ subgroup:
    U_v^+ := Cone(C_cont(G_v,A) -> C_cont(G_v,B))[-1].
This module formalizes its first three degrees for actual source
cochain groups supplied as arguments. Its arithmetically typed
specialization to Tau Ceti continuous Galois cochains is recorded
in the separately pinned adapter under documentation/adapters/.

All differential square-zero/coefficient-map naturality hypotheses
are explicit and must come from the true Galois cochains. The
degree-one cocycle calculation shows that the IMAGE of H¹(U)
in H¹(G_v,A) is the kernel of the coefficient inclusion map.
Tau Ceti's genuine range_kummerMap identifies this image with
the actual local elliptic Kummer classes.

It is false in general that H¹(U) injects into H¹(G_v,A):
the kernel contains coker(H⁰(G_v,A) -> H⁰(G_v,B)).
No height, spectral assumption, higher BSD rank or Sha finiteness
is used here. No root import/dependency migration.
-/

namespace GRWTSK.CategoryTheoryHomologicalAlgebra.LocalKummerConditionCone

variable {A₀ A₁ A₂ B₀ B₁ : Type*}
variable [AddCommGroup A₀] [AddCommGroup A₁] [AddCommGroup A₂]
variable [AddCommGroup B₀] [AddCommGroup B₁]

/-- The source first two differentials of the actual torsion-coefficient
complex A, the first differential of the full-point complex B, and
the first two components of the genuine coefficient inclusion. -/
structure LocalInclusionData where
  dA0 : A₀ →+ A₁
  dA1 : A₁ →+ A₂
  dB0 : B₀ →+ B₁
  j0 : A₀ →+ B₀
  j1 : A₁ →+ B₁
  a_squared : ∀ a, dA1 (dA0 a) = 0
  j_natural : ∀ a, dB0 (j0 a) = j1 (dA0 a)

/-- The actual degrees of Cone(A -> B)[-1]. -/
abbrev LocalZero := A₀
abbrev LocalOne := A₁ × B₀
abbrev LocalTwo := A₂ × B₁

/-- Degree zero local Kummer fiber differential: (d_A a,j a). -/
def LocalInclusionData.localD0 (D : LocalInclusionData
    (A₀ := A₀) (A₁ := A₁) (A₂ := A₂)
    (B₀ := B₀) (B₁ := B₁)) :
    A₀ →+ (A₁ × B₀) where
  toFun a := (D.dA0 a, D.j0 a)
  map_zero' := by
    ext <;> simp
  map_add' x y := by
    ext <;> simp [map_add]

/-- Degree one local Kummer fiber differential: (d_A c,j c-d_B b).
The shifted B-cochain has a MINUS sign, required for d²=0. -/
def LocalInclusionData.localD1 (D : LocalInclusionData
    (A₀ := A₀) (A₁ := A₁) (A₂ := A₂)
    (B₀ := B₀) (B₁ := B₁)) :
    (A₁ × B₀) →+ (A₂ × B₁) where
  toFun u := (D.dA1 u.1, D.j1 u.1 - D.dB0 u.2)
  map_zero' := by
    ext <;> simp
  map_add' x y := by
    ext <;> simp [map_add, sub_eq_add_neg, add_assoc,
      add_comm, add_left_comm]

/-- Genuine cochain naturality gives the full complex relation. -/
theorem LocalInclusionData.localD1_localD0
    (D : LocalInclusionData (A₀ := A₀) (A₁ := A₁)
      (A₂ := A₂) (B₀ := B₀) (B₁ := B₁)) (a : A₀) :
    D.localD1 (D.localD0 a) = 0 := by
  apply Prod.ext
  · exact D.a_squared a
  · change D.j1 (D.dA0 a) - D.dB0 (D.j0 a) = 0
    rw [D.j_natural a]
    exact sub_self _

/-- A source A-one cocycle has a local-cone lift exactly when its
full-point coefficient image is a B-boundary. This is the
representative-level core of im H¹(U) = ker H¹(j). -/
theorem LocalInclusionData.lift_iff_coeff_boundary
    (D : LocalInclusionData (A₀ := A₀) (A₁ := A₁)
      (A₂ := A₂) (B₀ := B₀) (B₁ := B₁))
    (c : A₁) (hc : D.dA1 c = 0) :
    (∃ b : B₀, D.localD1 (c, b) = 0) ↔
      D.j1 c ∈ D.dB0.range := by
  constructor
  · rintro ⟨b, h⟩
    have hB := congrArg Prod.snd h
    have hB' : D.j1 c - D.dB0 b = 0 := by
      simpa [LocalInclusionData.localD1] using hB
    refine ⟨b, ?_⟩
    exact (sub_eq_zero.mp hB').symm
  · rintro ⟨b, hb⟩
    refine ⟨b, ?_⟩
    apply Prod.ext
    · exact hc
    · change D.j1 c - D.dB0 b = 0
      rw [hb]
      exact sub_self _

/-- The true preimage of the coefficient-coboundary condition is a
subgroup; no arbitrary choice of a Selmer rank appears. -/
def LocalInclusionData.localRepresentatives
    (D : LocalInclusionData (A₀ := A₀) (A₁ := A₁)
      (A₂ := A₂) (B₀ := B₀) (B₁ := B₁)) :
    AddSubgroup A₁ :=
  D.dA1.ker ⊓ D.dB0.range.comap D.j1

/-- The local representatives are EXACTLY the A-one components of
true local-fiber one-cocycles. -/
theorem LocalInclusionData.mem_localRepresentatives_iff
    (D : LocalInclusionData (A₀ := A₀) (A₁ := A₁)
      (A₂ := A₂) (B₀ := B₀) (B₁ := B₁))
    (c : A₁) :
    c ∈ D.localRepresentatives ↔
      ∃ b : B₀, D.localD1 (c, b) = 0 := by
  constructor
  · intro hc
    have hclosed : D.dA1 c = 0 := hc.1
    exact (D.lift_iff_coeff_boundary c hclosed).2 hc.2
  · rintro ⟨b, hb⟩
    have hA := congrArg Prod.fst hb
    have hclosed : D.dA1 c = 0 := by
      simpa [LocalInclusionData.localD1] using hA
    exact ⟨hclosed, (D.lift_iff_coeff_boundary c hclosed).1 ⟨b, hb⟩⟩

/-- Every genuine A-boundary is in the Kummer local condition,
because the coefficient inclusion commutes with d0. -/
theorem LocalInclusionData.boundary_mem_localRepresentatives
    (D : LocalInclusionData (A₀ := A₀) (A₁ := A₁)
      (A₂ := A₂) (B₀ := B₀) (B₁ := B₁)) (a : A₀) :
    D.dA0 a ∈ D.localRepresentatives := by
  rw [D.mem_localRepresentatives_iff]
  exact ⟨D.j0 a, D.localD1_localD0 a⟩

/-- A first-degree local cocycle survives the same source class
under a genuine A-coboundary, with the B-zero-cochain corrected.
This is an exact representative-independence assertion. -/
theorem LocalInclusionData.lift_under_boundary
    (D : LocalInclusionData (A₀ := A₀) (A₁ := A₁)
      (A₂ := A₂) (B₀ := B₀) (B₁ := B₁))
    (c : A₁) (b : B₀) (a : A₀)
    (hc : D.localD1 (c, b) = 0) :
    D.localD1 (c + D.dA0 a, b + D.j0 a) = 0 := by
  have h := D.localD1_localD0 a
  change D.localD1 ((c, b) + D.localD0 a) = 0
  rw [map_add, hc, h, add_zero]

/-- The LOCAL projected class can be represented by a literal
one-cocycle with its B-nullhomotopy retained. -/
def LocalInclusionData.localCycles
    (D : LocalInclusionData (A₀ := A₀) (A₁ := A₁)
      (A₂ := A₂) (B₀ := B₀) (B₁ := B₁)) :
    AddSubgroup (A₁ × B₀) :=
  D.localD1.ker

/-- The source cochain boundary maps into genuine cone cycles. -/
def LocalInclusionData.boundaryToCycles
    (D : LocalInclusionData (A₀ := A₀) (A₁ := A₁)
      (A₂ := A₂) (B₀ := B₀) (B₁ := B₁)) :
    A₀ →+ D.localCycles :=
  D.localD0.codRestrict _ fun a => D.localD1_localD0 a

/-- True low-degree cohomology of the chosen local-condition cone. -/
abbrev LocalInclusionData.localHOne
    (D : LocalInclusionData (A₀ := A₀) (A₁ := A₁)
      (A₂ := A₂) (B₀ := B₀) (B₁ := B₁)) :=
  D.localCycles ⧸ D.boundaryToCycles.range

/-- The class of a nullhomotopy is not asserted unique; in general
H¹(U_v^+) -> H¹(G_v,E[m]) has a nontrivial H⁰(B)/H⁰(A) kernel.
-/
end GRWTSK.CategoryTheoryHomologicalAlgebra.LocalKummerConditionCone
