import Mathlib.GroupTheory.Commutator.Basic
import Mathlib.Order.CompleteLattice.Finset
import Mathlib.Data.ZMod.Basic

/-!
# Perfect images survive normal intersections

This is the independently usable group-theoretic intersection step from
`glue:perfect-intersections` in the negative family-206 manuscript, at
openai/math commit adc7f1241b42e322a6451854ab7e4b4c146bf78a.
The proof below is a native construction; it assumes exactly the commutator
identity needed, and does not invoke the negative representation conclusion.
-/

namespace FormalResearch.FiniteLatticeArithmetic

open scoped commutatorElement

/-- Two normal subgroups both mapping over a perfect subgroup retain that image
in their intersection. Finiteness is unnecessary for the two-subgroup step. -/
theorem perfect_image_intersection {G H : Type*} [Group G] [Group H]
    (f : G →* H) (P : Subgroup H) (hP : ⁅P, P⁆ = P)
    (B C : Subgroup G) [B.Normal] [C.Normal]
    (hB : P ≤ B.map f) (hC : P ≤ C.map f) : P ≤ (B ⊓ C).map f := by
  calc
    P = ⁅P, P⁆ := hP.symm
    _ ≤ ⁅B.map f, C.map f⁆ := Subgroup.commutator_mono hB hC
    _ = (⁅B, C⁆).map f := (Subgroup.map_commutator B C f).symm
    _ ≤ (B ⊓ C).map f := Subgroup.map_mono (Subgroup.commutator_le_inf B C)

/-- The same retained image survives a nonempty finite family of normal intersections. -/
theorem perfect_image_finset_intersection {G H ι : Type*} [Group G] [Group H]
    (f : G →* H) (P : Subgroup H) (hP : ⁅P, P⁆ = P)
    (B : ι → Subgroup G) [∀ i, (B i).Normal]
    (s : Finset ι) (hne : s.Nonempty) (hB : ∀ i ∈ s, P ≤ (B i).map f) :
    P ≤ (⨅ i ∈ s, B i).map f := by
  classical
  induction s using Finset.induction_on with
  | empty => simp at hne
  | @insert i s hi ih =>
    by_cases hs : s.Nonempty
    · have hfirst := hB i (Finset.mem_insert_self i s)
      have hrest := ih hs (fun j hj => hB j (Finset.mem_insert_of_mem hj))
      have : (⨅ j ∈ s, B j).Normal :=
        Subgroup.normal_iInf_normal (fun _ => Subgroup.normal_iInf_normal (fun _ => inferInstance))
      simpa only [Finset.iInf_insert] using
        perfect_image_intersection f P hP (B i) (⨅ j ∈ s, B j) hfirst hrest
    · have hs0 : s = ∅ := Finset.not_nonempty_iff_eq_empty.mp hs
      subst s
      simpa using hB i (Finset.mem_insert_self i ∅)

/-- The actual divisor/CRT cyclic source is abelian. Its only perfect subgroup
is trivial, so the nonabelian-inner-image gluing route has no nontrivial packet here. -/
theorem perfect_cyclic_source_subgroup_eq_bot (M : ℕ) (P : AddSubgroup (ZMod M))
    (hP : ⁅P.toSubgroup, P.toSubgroup⁆ = P.toSubgroup) : P = ⊥ := by
  have hbot : ⁅P.toSubgroup, P.toSubgroup⁆ = ⊥ :=
    (Subgroup.commutator_self_eq_bot_iff (H := P.toSubgroup)).mpr inferInstance
  apply AddSubgroup.toSubgroup.injective
  exact hP.symm.trans hbot

end FormalResearch.FiniteLatticeArithmetic
