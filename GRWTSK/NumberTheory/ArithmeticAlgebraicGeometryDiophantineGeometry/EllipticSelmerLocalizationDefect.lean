/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Genuine H¹ Selmer localization as the kernel of a cohomological defect

The arithmetic supplier is NOT a chosen numerical Selmer group. The
genuine source is TauCeti.ContCohomology.SelmerStructure: global
continuous H¹(G,M), local continuous H¹(H_i,N_i), actual pullback
homomorphisms and a local-condition subgroup at each i.

The input here is the common ADDITIVE mathematical type of that exact
source. Passing the real Tau Ceti maps is a separate compiler-gated
adapter step because Tau Ceti currently uses Lean v4.36.0-rc1,
whereas grwtsk/math is pinned to Lean v4.34.1.

This H¹ kernel is NOT the full derived Selmer complex: cochain degrees
0/2, local degree-zero terms, Bockstein deformation, duality and derived
regulator data are not reconstructible from H¹ alone.
-/

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.SelmerLocalDefect

variable {ι G : Type*} {H : ι → Type*}
variable [AddCommGroup G] [∀ i, AddCommGroup (H i)]

/-- Exact degree-one localization source: when supplied from Tau Ceti,
G is the true continuous global H¹, not the original Mordell--Weil group.
-/
structure LocalizedHOne where
  localization : ∀ i, G →+ H i
  localCondition : ∀ i, AddSubgroup (H i)

/-- Actual local-condition Selmer subgroup at the level of H¹. -/
def LocalizedHOne.selmer (D : LocalizedHOne (ι := ι) (G := G) (H := H)) :
    AddSubgroup G :=
  ⨅ i, (D.localCondition i).comap (D.localization i)

/-- The cohomological localization defect is the complete family of
classes modulo their TRUE local Selmer conditions. It is not a
self-adjoint operator, a Hilbert Gram, or a derived p-adic height. -/
def LocalizedHOne.defect (D : LocalizedHOne (ι := ι) (G := G) (H := H)) :
    G →+ (∀ i, H i ⧸ D.localCondition i) where
  toFun x i := (QuotientAddGroup.mk' (D.localCondition i)) (D.localization i x)
  map_zero' := by
    funext i
    simp
  map_add' x y := by
    funext i
    simp [map_add]

/-- EXACT local membership test: the defect vanishes if and only if
EVERY actual local condition holds. -/
theorem LocalizedHOne.defect_eq_zero_iff (D : LocalizedHOne
    (ι := ι) (G := G) (H := H)) (x : G) :
    D.defect x = 0 ↔ ∀ i, D.localization i x ∈ D.localCondition i := by
  constructor
  · intro hx i
    have hi := congrArg (fun f : (∀ j, H j ⧸ D.localCondition j) => f i) hx
    simpa [LocalizedHOne.defect] using hi
  · intro hx
    funext i
    simpa [LocalizedHOne.defect] using hx i

/-- The genuine H¹ Selmer group is precisely the kernel of this exact
localization-defect map. No analytic rank or Sha finiteness is assumed. -/
theorem LocalizedHOne.selmer_eq_defect_ker (D : LocalizedHOne
    (ι := ι) (G := G) (H := H)) :
    D.selmer = D.defect.ker := by
  ext x
  rw [AddMonoidHom.mem_ker, D.defect_eq_zero_iff]
  simp [LocalizedHOne.selmer, AddSubgroup.mem_iInf,
    AddSubgroup.mem_comap]

/-- The H¹ localization-defect *two-term* complex has H⁰ equal to
Selmer, but its H¹ is a cokernel of localization rather than Nekovar's
full derived Selmer H¹. These are genuinely distinct constructions. -/
abbrev LocalizedHOne.defectCokernel (D : LocalizedHOne
    (ι := ι) (G := G) (H := H)) :=
  (∀ i, H i ⧸ D.localCondition i) ⧸ D.defect.range

theorem LocalizedHOne.source_in_selmer_iff_zero_defect
    (D : LocalizedHOne (ι := ι) (G := G) (H := H)) (x : G) :
    x ∈ D.selmer ↔ D.defect x = 0 := by
  rw [D.selmer_eq_defect_ker, AddMonoidHom.mem_ker]

/-- An actual pair of local data supplies the same Selmer subgroup
when they have identical genuine localization morphisms and conditions;
provenance must not be replaced by matching numerical dimensions. -/
theorem LocalizedHOne.selmer_source_invariant
    (D E : LocalizedHOne (ι := ι) (G := G) (H := H))
    (hLoc : D.localization = E.localization)
    (hCond : D.localCondition = E.localCondition) :
    D.selmer = E.selmer := by
  cases D with
  | mk dLoc dCond =>
    cases E with
    | mk eLoc eCond =>
      cases hLoc
      cases hCond
      rfl

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.SelmerLocalDefect
