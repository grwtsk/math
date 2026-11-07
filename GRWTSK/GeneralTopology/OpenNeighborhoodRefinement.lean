/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.Topology.Homeomorph.Lemmas
import GRWTSK.OrderLatticesOrderedAlgebraicStructures.OrderedSets.FiniteCofinality
import Mathlib.Data.Set.Finite.Basic
import Mathlib.Tactic

/-!
# Refinement of open neighborhoods of a specified point

Neighborhoods, rather than functions or paths, are the ordered objects.
Reverse inclusion makes intersections common upper bounds. A homeomorphism
transports this order from p to its actual image, not to an arbitrarily named
point. At a nonisolated T1 point there is no finite cofinal family.

Primary proof: a common refinement of a finite cofinal family would lie in
every open neighborhood of the point. T1 separation then makes that open
refinement the singleton, contradicting nonisolation. The finite intersection
argument is independent of the exterior-disk scalar-escape calculation, but
is not claimed as independent human review or as new general topology.

The concrete consumer is the OnePoint-complex exterior-disk development.
No particular PGL action, Möbius classification or arithmetic conclusion is
postulated. Elaboration, compilation, fresh kernel replay and transitive
axiom auditing at publication: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open Set

namespace GRWTSK.Topology

/-- Open neighborhoods of p, retaining p in the type. -/
def OpenNeighborhood {X : Type*} [TopologicalSpace X] (p : X) :=
  {U : Set X // IsOpen U ∧ p ∈ U}

namespace OpenNeighborhood

variable {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y] {p : X}

instance : PartialOrder (OpenNeighborhood p) where
  le U V := V.val ⊆ U.val
  le_refl _ := Set.Subset.rfl
  le_trans _ _ _ hUV hVW := hVW.trans hUV
  le_antisymm _ _ hUV hVU := Subtype.ext (Set.Subset.antisymm hVU hUV)

@[simp] theorem le_def (U V : OpenNeighborhood p) : U ≤ V ↔ V.val ⊆ U.val := Iff.rfl

def whole (p : X) : OpenNeighborhood p := ⟨Set.univ, isOpen_univ, Set.mem_univ _⟩

def intersection (U V : OpenNeighborhood p) : OpenNeighborhood p :=
  ⟨U.val ∩ V.val, U.property.1.inter V.property.1, U.property.2, V.property.2⟩

theorem exists_common_refinement (U V : OpenNeighborhood p) :
    ∃ W : OpenNeighborhood p, U ≤ W ∧ V ≤ W :=
  ⟨intersection U V, Set.inter_subset_left, Set.inter_subset_right⟩

/-- Direct finite intersection, through the general finite directed-order theorem. -/
theorem finite_common_refinement {S : Set (OpenNeighborhood p)} (hS : S.Finite) :
    ∃ U : OpenNeighborhood p, ∀ V ∈ S, V ≤ U :=
  GRWTSK.Order.finite_common_upper_bound (whole p) exists_common_refinement hS

/-- A finite neighborhood base at a T1 point would make the point isolated. -/
theorem not_isCofinal_of_finite [T1Space X] (hp : ¬ IsOpen ({p} : Set X))
    {S : Set (OpenNeighborhood p)} (hS : S.Finite) : ¬ IsCofinal S := by
  intro hc
  obtain ⟨U, hU⟩ := finite_common_refinement hS
  have hs : U.val = {p} := by
    ext z
    constructor
    · intro hz
      by_contra hn
      have hzp : z ≠ p := by simpa only [Set.mem_singleton_iff] using hn
      let V : OpenNeighborhood p :=
        ⟨{z}ᶜ, isClosed_singleton.isOpen_compl, by simpa using hzp.symm⟩
      obtain ⟨W, hWS, hVW⟩ := hc V
      have hzW : z ∈ W.val := hU W hWS hz
      have hzV : z ∈ V.val := hVW hzW
      simpa [V] using hzV
    · intro hz
      rw [Set.mem_singleton_iff] at hz
      subst z
      exact U.property.2
  exact hp (hs ▸ U.property.1)

/-- The target point is h(p). No assertion that h fixes p is smuggled in. -/
def transport (h : X ≃ₜ Y) (p : X) : OpenNeighborhood p ≃o OpenNeighborhood (h p) where
  toFun U := ⟨h '' U.val, h.isOpenMap _ U.property.1, ⟨p, U.property.2, rfl⟩⟩
  invFun V := ⟨h ⁻¹' V.val, V.property.1.preimage h.continuous, V.property.2⟩
  left_inv U := by
    apply Subtype.ext
    exact Set.preimage_image_eq _ h.injective
  right_inv V := by
    apply Subtype.ext
    exact Set.image_preimage_eq _ h.surjective
  map_rel_iff' := by
    intro U V
    change (h '' V.val ⊆ h '' U.val) ↔ V.val ⊆ U.val
    constructor
    · intro hs z hz
      obtain ⟨w, hw, he⟩ := hs ⟨z, hz, rfl⟩
      have hwz : w = z := h.injective he
      simpa only [hwz] using hw
    · exact fun hs => Set.image_mono hs

theorem transport_isCofinal (h : X ≃ₜ Y) (p : X)
    {S : Set (OpenNeighborhood p)} (hS : IsCofinal S) :
    IsCofinal (transport h p '' S) :=
  (transport h p).map_isCofinal hS

end OpenNeighborhood
end GRWTSK.Topology
