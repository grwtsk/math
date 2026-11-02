/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# The three first degrees of the Nekovar Selmer mapping fiber

For a genuine elliptic Galois representation, the source MUST be
the actual continuous global cochain complex C_G, the local cochain
complex C_L and its true local-condition cochain complex U_L, with
actual restriction and local-condition inclusion cochain maps.

The Selmer mapping fiber is cone(C_G ⊕ U_L -> C_L)[-1].
At the first three degrees it has
 F^0 = C_G^0 ⊕ U_L^0,
 F^1 = C_G^1 ⊕ U_L^1 ⊕ C_L^0,
 F^2 = C_G^2 ⊕ U_L^2 ⊕ C_L^1,
 differential d(g,u,l)=(d_G g,d_U u,res g-inc u-d_L l).

This source CONSTRUCTS those additive differential maps and proves
d^1 * d^0=0 from exact cochain-map naturality. It does NOT import
an incompatible Tau Ceti version, supply genuine elliptic cochains,
construct Iwasawa deformations or prove derived p-adic heights or BSD.
Tau Ceti has genuine continuous cochain d0,d1,d2 and their square
zero proofs, but a complete local-condition COCHAIN inclusion is
a separate supplier: its H¹-level SelmerStructure is insufficient.

The local degree-zero cochain L^0 is a real extra correction.
Suppressing it changes the mapping fiber's H¹ in general.
-/

namespace GRWTSK.CategoryTheoryHomologicalAlgebra.SelmerMappingFiber

variable {G₀ G₁ G₂ U₀ U₁ U₂ L₀ L₁ : Type*}
variable [AddCommGroup G₀] [AddCommGroup G₁] [AddCommGroup G₂]
variable [AddCommGroup U₀] [AddCommGroup U₁] [AddCommGroup U₂]
variable [AddCommGroup L₀] [AddCommGroup L₁]

/-- Three consecutive degrees of source global/local/local-condition
complexes, and the ACTUAL cochain naturality statements. A genuine
elliptic adapter must supply these maps, not infer them from H¹ groups.
-/
structure ConeData where
  globalD0 : G₀ →+ G₁
  globalD1 : G₁ →+ G₂
  conditionD0 : U₀ →+ U₁
  conditionD1 : U₁ →+ U₂
  localD0 : L₀ →+ L₁
  restriction0 : G₀ →+ L₀
  restriction1 : G₁ →+ L₁
  inclusion0 : U₀ →+ L₀
  inclusion1 : U₁ →+ L₁
  global_sq : ∀ x, globalD1 (globalD0 x) = 0
  condition_sq : ∀ x, conditionD1 (conditionD0 x) = 0
  restriction_natural : ∀ x, localD0 (restriction0 x) =
    restriction1 (globalD0 x)
  inclusion_natural : ∀ x, localD0 (inclusion0 x) =
    inclusion1 (conditionD0 x)

/-- Exact degree-zero terms of the Selmer mapping fiber. -/
abbrev ConeDegreeZero := G₀ × U₀

/-- The local degree-zero term survives as the THIRD coordinate. -/
abbrev ConeDegreeOne := (G₁ × U₁) × L₀

abbrev ConeDegreeTwo := (G₂ × U₂) × L₁

/-- Source-faithful first mapping-fiber differential, including signed
restriction and local-condition inclusion. -/
def ConeData.coneD0 (D : ConeData (G₀ := G₀) (G₁ := G₁) (G₂ := G₂)
    (U₀ := U₀) (U₁ := U₁) (U₂ := U₂) (L₀ := L₀) (L₁ := L₁)) :
    ConeDegreeZero (G₀ := G₀) (U₀ := U₀) →+
      ConeDegreeOne (G₁ := G₁) (U₁ := U₁) (L₀ := L₀) where
  toFun x := ((D.globalD0 x.1, D.conditionD0 x.2),
    D.restriction0 x.1 - D.inclusion0 x.2)
  map_zero' := by
    ext <;> simp
  map_add' x y := by
    ext <;> simp [map_add, sub_eq_add_neg, add_assoc, add_left_comm, add_comm]

/-- The local degree-one differential comes with the necessary
MINUS sign on the shifted local cochain coordinate. -/
def ConeData.coneD1 (D : ConeData (G₀ := G₀) (G₁ := G₁) (G₂ := G₂)
    (U₀ := U₀) (U₁ := U₁) (U₂ := U₂) (L₀ := L₀) (L₁ := L₁)) :
    ConeDegreeOne (G₁ := G₁) (U₁ := U₁) (L₀ := L₀) →+
      ConeDegreeTwo (G₂ := G₂) (U₂ := U₂) (L₁ := L₁) where
  toFun x := ((D.globalD1 x.1.1, D.conditionD1 x.1.2),
    D.restriction1 x.1.1 - D.inclusion1 x.1.2 -
      D.localD0 x.2)
  map_zero' := by
    ext <;> simp
  map_add' x y := by
    ext <;> simp [map_add, sub_eq_add_neg, add_assoc, add_left_comm, add_comm]

/-- A *proved* complex: the shifted local minus sign and genuine
cochain-map naturality cancel every local term. -/
theorem ConeData.coneD1_coneD0 (D : ConeData (G₀ := G₀) (G₁ := G₁)
    (G₂ := G₂) (U₀ := U₀) (U₁ := U₁) (U₂ := U₂)
    (L₀ := L₀) (L₁ := L₁)) (x : ConeDegreeZero
    (G₀ := G₀) (U₀ := U₀)) :
    D.coneD1 (D.coneD0 x) = 0 := by
  apply Prod.ext
  · apply Prod.ext
    · exact D.global_sq x.1
    · exact D.condition_sq x.2
  · change D.restriction1 (D.globalD0 x.1) -
        D.inclusion1 (D.conditionD0 x.2) -
        D.localD0 (D.restriction0 x.1 -
          D.inclusion0 x.2) = 0
    rw [map_sub, ← D.restriction_natural x.1,
      ← D.inclusion_natural x.2]
    abel

/-- Literal cycles at fiber degree one. -/
abbrev ConeData.cocyclesOne (D : ConeData (G₀ := G₀) (G₁ := G₁)
    (G₂ := G₂) (U₀ := U₀) (U₁ := U₁) (U₂ := U₂)
    (L₀ := L₀) (L₁ := L₁)) :=
  D.coneD1.ker

/-- Actual degree-zero boundaries are degree-one cocycles. -/
theorem ConeData.boundary_is_cocycle (D : ConeData (G₀ := G₀) (G₁ := G₁)
    (G₂ := G₂) (U₀ := U₀) (U₁ := U₁) (U₂ := U₂)
    (L₀ := L₀) (L₁ := L₁)) (x : ConeDegreeZero
    (G₀ := G₀) (U₀ := U₀)) :
    D.coneD0 x ∈ D.cocyclesOne := by
  change D.coneD1 (D.coneD0 x) = 0
  exact D.coneD1_coneD0 x

/-- A genuine boundary map into the actual cocycle subgroup. -/
def ConeData.boundaryOne (D : ConeData (G₀ := G₀) (G₁ := G₁)
    (G₂ := G₂) (U₀ := U₀) (U₁ := U₁) (U₂ := U₂)
    (L₀ := L₀) (L₁ := L₁)) :
    ConeDegreeZero (G₀ := G₀) (U₀ := U₀) →+ D.cocyclesOne :=
  D.coneD0.codRestrict _ D.boundary_is_cocycle

/-- This is the ACTUAL H¹ of the constructed three-term mapping fiber,
not the H¹ kernel-only Selmer group. -/
abbrev ConeData.fiberHOne (D : ConeData (G₀ := G₀) (G₁ := G₁)
    (G₂ := G₂) (U₀ := U₀) (U₁ := U₁) (U₂ := U₂)
    (L₀ := L₀) (L₁ := L₁)) :=
  D.cocyclesOne ⧸ D.boundaryOne.range

/-- Inclusion of a shifted local degree-zero cochain in fiber degree
one. The summand is part of Nekovar's mapping fiber, not decoration. -/
def ConeData.localZeroShift (D : ConeData (G₀ := G₀) (G₁ := G₁)
    (G₂ := G₂) (U₀ := U₀) (U₁ := U₁) (U₂ := U₂)
    (L₀ := L₀) (L₁ := L₁)) (l : L₀) :
    ConeDegreeOne (G₁ := G₁) (U₁ := U₁) (L₀ := L₀) :=
  ((0, 0), l)

/-- A closed local zero-cochain produces a genuine fiber 1-cocycle.
Whether it is a boundary requires a separate degree-zero lift. -/
theorem ConeData.localZeroShift_is_cocycle
    (D : ConeData (G₀ := G₀) (G₁ := G₁)
      (G₂ := G₂) (U₀ := U₀) (U₁ := U₁) (U₂ := U₂)
      (L₀ := L₀) (L₁ := L₁)) (l : L₀)
    (hclosed : D.localD0 l = 0) :
    D.localZeroShift l ∈ D.cocyclesOne := by
  change D.coneD1 (D.localZeroShift l) = 0
  apply Prod.ext
  · apply Prod.ext <;> simp [ConeData.coneD1, ConeData.localZeroShift]
  · simp [ConeData.coneD1, ConeData.localZeroShift, hclosed]

/-- Exact low-degree correction: a local degree-zero cochain
is a fiber boundary only when it is the signed difference of the
restrictions and local-condition inclusions of closed degree-zero
cochains. H¹ localization kernels alone omit this test. -/
theorem ConeData.localZeroShift_boundary_iff
    (D : ConeData (G₀ := G₀) (G₁ := G₁)
      (G₂ := G₂) (U₀ := U₀) (U₁ := U₁) (U₂ := U₂)
      (L₀ := L₀) (L₁ := L₁)) (l : L₀) :
    (∃ x : ConeDegreeZero (G₀ := G₀) (U₀ := U₀),
        D.coneD0 x = D.localZeroShift l) ↔
      ∃ g : G₀, ∃ u : U₀,
        D.globalD0 g = 0 ∧ D.conditionD0 u = 0 ∧
          D.restriction0 g - D.inclusion0 u = l := by
  constructor
  · rintro ⟨⟨g,u⟩, h⟩
    refine ⟨g, u, ?_, ?_, ?_⟩
    · exact congrArg (fun x : ConeDegreeOne (G₁ := G₁) (U₁ := U₁)
        (L₀ := L₀) => x.1.1) h
    · exact congrArg (fun x : ConeDegreeOne (G₁ := G₁) (U₁ := U₁)
        (L₀ := L₀) => x.1.2) h
    · exact congrArg (fun x : ConeDegreeOne (G₁ := G₁) (U₁ := U₁)
        (L₀ := L₀) => x.2) h
  · rintro ⟨g, u, hg, hu, hl⟩
    refine ⟨(g, u), ?_⟩
    apply Prod.ext
    · apply Prod.ext
      · exact hg
      · exact hu
    · exact hl


/-- A local zero-degree class that does not arise from closed
global/condition zero-cochains survives as a NONBOUNDARY class in
the derived mapping fiber. This is why a degree-one Selmer kernel
cannot be silently substituted for Selmer-complex H¹. -/
theorem ConeData.localZeroShift_not_boundary
    (D : ConeData (G₀ := G₀) (G₁ := G₁)
      (G₂ := G₂) (U₀ := U₀) (U₁ := U₁) (U₂ := U₂)
      (L₀ := L₀) (L₁ := L₁)) (l : L₀)
    (hl : D.localD0 l = 0)
    (hnot : ¬ ∃ g : G₀, ∃ u : U₀,
        D.globalD0 g = 0 ∧ D.conditionD0 u = 0 ∧
        D.restriction0 g - D.inclusion0 u = l) :
    (⟨D.localZeroShift l,
      D.localZeroShift_is_cocycle l hl⟩ : D.cocyclesOne) ∉
        D.boundaryOne.range := by
  rintro ⟨x, hx⟩
  have h : D.coneD0 x = D.localZeroShift l := by
    exact congrArg Subtype.val hx
  exact hnot ((D.localZeroShift_boundary_iff l).mp ⟨x, h⟩)

end GRWTSK.CategoryTheoryHomologicalAlgebra.SelmerMappingFiber
