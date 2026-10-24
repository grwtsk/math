/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI Codex. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedEulerSplicing
import Mathlib.Data.Finset.Card

/-!
# Finite maximal directed trails

A finite supply consists of distinct edge identities. Erasing a chosen edge
constructs a maximal edge-simple walk by induction on the supply. In a
balanced supply its terminal vertex must equal its start. A vertex with an
outgoing supplied edge therefore admits a genuine nonempty closed trail.
No weak-connectivity or full Euler-existence conclusion is asserted here.
-/

set_option autoImplicit false

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedEulerSplicing.Walk

universe u v

variable {V : Type u} {E : Type v} {tail head : E → V}

/-- A finite edge supply has an actual edge-simple directed walk from any
start vertex, and every supplied edge out of its terminal vertex was used.
The proof recursively erases the chosen first edge; maximality is derived. -/
theorem exists_maximal_trail (available : Finset E) (a : V) :
    ∃ (b : V) (p : Walk tail head a b),
      p.edges.Nodup ∧
      (∀ e ∈ p.edges, e ∈ available) ∧
      ∀ e ∈ available, tail e = b → e ∈ p.edges := by
  classical
  induction available using Finset.strongInductionOn generalizing a with
  | _ available ih =>
      by_cases hex : ∃ e ∈ available, tail e = a
      · obtain ⟨e, he, ht⟩ := hex
        subst a
        obtain ⟨b, q, hnodup, hallowed, hstop⟩ :=
          ih (available.erase e) (Finset.erase_ssubset he) (head e)
        refine ⟨b, .cons e q, ?_, ?_, ?_⟩
        · change (e :: q.edges).Nodup
          refine List.nodup_cons.mpr ⟨?_, hnodup⟩
          intro hmem
          exact (Finset.mem_erase.mp (hallowed e hmem)).1 rfl
        · intro f hf
          change f ∈ e :: q.edges at hf
          rcases List.mem_cons.mp hf with hfe | hf
          · simpa only [hfe] using he
          · exact Finset.mem_of_mem_erase (hallowed f hf)
        · intro f hf htail
          change f ∈ e :: q.edges
          by_cases hfe : f = e
          · exact List.mem_cons.mpr (Or.inl hfe)
          · exact List.mem_cons.mpr (Or.inr
              (hstop f (Finset.mem_erase.mpr ⟨hfe, hf⟩) htail))
      · refine ⟨a, .nil a, by simp, ?_, ?_⟩
        · intro e he
          exact False.elim (List.not_mem_nil he)
        · intro e he htail
          exact False.elim (hex ⟨e, he, htail⟩)

/-- In a balanced finite edge supply, the constructed maximal trail is
closed. Every supplied edge leaving the chosen start has been used. -/
theorem exists_closed_maximal_trail [DecidableEq V]
    (available : Finset E) (a : V)
    (hbalance : ∀ x : V,
      (available.val.map tail).count x = (available.val.map head).count x) :
    ∃ p : Walk tail head a a,
      p.edges.Nodup ∧
      (∀ e ∈ p.edges, e ∈ available) ∧
      ∀ e ∈ available, tail e = a → e ∈ p.edges := by
  classical
  obtain ⟨b, p, hnodup, hallowed, hstop⟩ :=
    exists_maximal_trail (tail := tail) (head := head) available a
  have hle : (p.edges : Multiset E) ≤ available.val :=
    (Multiset.le_iff_subset (Multiset.coe_nodup.mpr hnodup)).mpr
      (fun e he => hallowed e he)
  let remaining : Multiset E := available.val - (p.edges : Multiset E)
  have hpartition : available.val = (p.edges : Multiset E) + remaining := by
    dsimp only [remaining]
    rw [add_comm]
    exact (Multiset.sub_add_cancel hle).symm
  have hterminal : (remaining.map tail).count b = 0 := by
    apply Multiset.count_eq_zero.mpr
    intro hb
    obtain ⟨e, he, ht⟩ := Multiset.mem_map.mp hb
    have heparts := (Multiset.mem_sub_of_nodup available.nodup).mp he
    exact heparts.2 (hstop e heparts.1 ht)
  have hab : a = b := terminal_eq_start_of_no_residual_outgoing
    p available.val remaining hpartition hbalance hterminal
  subst b
  exact ⟨p, hnodup, hallowed, hstop⟩

/-- A balanced finite edge supply with an outgoing edge at `a` contains a
nonempty closed edge-simple trail at `a`. This is genuine existence, with no
assumed trail, loop, maximality field, or connectivity premise. -/
theorem exists_nonempty_closed_trail [DecidableEq V]
    (available : Finset E) (a : V)
    (hbalance : ∀ x : V,
      (available.val.map tail).count x = (available.val.map head).count x)
    (hstart : ∃ e ∈ available, tail e = a) :
    ∃ p : Walk tail head a a,
      p.edges.Nodup ∧
      (∀ e ∈ p.edges, e ∈ available) ∧
      p.edges ≠ [] ∧
      ∀ e ∈ available, tail e = a → e ∈ p.edges := by
  obtain ⟨p, hnodup, hallowed, hstop⟩ := exists_closed_maximal_trail available a hbalance
  refine ⟨p, hnodup, hallowed, ?_, hstop⟩
  obtain ⟨e, he, ht⟩ := hstart
  have hmem := hstop e he ht
  intro hempty
  simp only [hempty, List.not_mem_nil] at hmem

end GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedEulerSplicing.Walk
