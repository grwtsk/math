/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under the repository's existing license.
-/
import Std
import Lean.Elab.Tactic.Omega

/-!
# Evidence support and consistent refinement

Two independent objects are retained: the origins represented by record rows,
and the set of worlds compatible with explicitly assumed constraints. Copying
rows does not create origins. Narrowing a consistent set of worlds can increase
its consequences; inconsistent constraints instead entail every proposition.
Neither membership in a record nor formal consistency proves empirical truth.

Primary arguments: reindexing support transports its row witness; surjectivity
provides the converse. Predicate entailment is reverse-monotone in compatible
worlds. An actual-world witness establishes soundness only if it satisfies all
constraints. The infinite-family counterexample uses `n ≤ w`: every finite
prefix has a witness, but no natural number lies in the whole intersection.
Consumers: provenance-preserving copies, corrections, and uncertainty tracking.
Hostile checks explicitly include duplicate rows, false recorded claims,
inconsistent updates, and the failure of an infinite quantifier exchange.

No theorem of statistical independence or credibility is asserted. Distinct
origin identifiers alone do not establish independent observations.
Novelty not assessed; independent review and all Lean verification: NOT_RUN.
Target: leanprover/lean4:v4.34.1, standard library and kernel-producing omega.
-/

namespace GRWTSK.Logic.Evidence

universe u v w z

namespace Provenance

variable {Row : Type u} {Origin : Type v} {Claim : Type w}

/-- A row carries an origin and a claim; neither field certifies the claim. -/
structure Entry (Origin : Type v) (Claim : Type w) where
  origin : Origin
  claim : Claim

/-- Support is indexed by origins, not by the number of copies of a row. -/
def Supports (rows : Row → Entry Origin Claim) (c : Claim) (o : Origin) : Prop :=
  ∃ r, (rows r).origin = o ∧ (rows r).claim = c

/-- Reindexing can discard support, but cannot introduce a new supporting origin. -/
theorem supports_reindex_subset {NewRow : Type z}
    (rows : Row → Entry Origin Claim) (index : NewRow → Row)
    (c : Claim) (o : Origin) :
    Supports (fun r => rows (index r)) c o → Supports rows c o := by
  intro h
  obtain ⟨r, ho, hc⟩ := h
  exact ⟨index r, ho, hc⟩

/-- Surjective replication preserves support exactly, regardless of multiplicity. -/
theorem supports_reindex_iff {NewRow : Type z}
    (rows : Row → Entry Origin Claim) (index : NewRow → Row)
    (surjective : ∀ r, ∃ s, index s = r) (c : Claim) (o : Origin) :
    Supports (fun r => rows (index r)) c o ↔ Supports rows c o := by
  constructor
  · exact supports_reindex_subset rows index c o
  · intro h
    obtain ⟨r, ho, hc⟩ := h
    obtain ⟨s, hs⟩ := surjective r
    refine ⟨s, ?_, ?_⟩
    · simpa [hs] using ho
    · simpa [hs] using hc

/-- Every positive number of labeled copies has the original support. -/
theorem supports_labeled_copies {Copy : Type z} (copy : Copy)
    (rows : Row → Entry Origin Claim) (c : Claim) (o : Origin) :
    Supports (fun r : Row × Copy => rows r.1) c o ↔ Supports rows c o := by
  apply supports_reindex_iff rows Prod.fst
  intro r
  exact ⟨(r, copy), rfl⟩

/-- Renaming origins transports support by image, not by an invented inverse. -/
theorem supports_renamed_iff {NewOrigin : Type z}
    (rows : Row → Entry Origin Claim) (rename : Origin → NewOrigin)
    (c : Claim) (o : NewOrigin) :
    Supports (fun r => ({ origin := rename (rows r).origin,
      claim := (rows r).claim } : Entry NewOrigin Claim)) c o ↔
      ∃ old, rename old = o ∧ Supports rows c old := by
  constructor
  · intro h
    obtain ⟨r, ho, hc⟩ := h
    exact ⟨(rows r).origin, ho, r, rfl, hc⟩
  · intro h
    obtain ⟨old, ho, r, hr, hc⟩ := h
    refine ⟨r, ?_, hc⟩
    change rename (rows r).origin = o
    rw [hr]
    exact ho

/-- Truth requires an explicitly supplied reliability bridge. -/
theorem true_of_supported (rows : Row → Entry Origin Claim) (truth : Claim → Prop)
    (reliable : ∀ r, truth (rows r).claim) (c : Claim) (o : Origin)
    (h : Supports rows c o) : truth c := by
  obtain ⟨r, _, hc⟩ := h
  rw [← hc]
  exact reliable r

/-- A recorded statement may be false in the separately specified semantics. -/
theorem recording_does_not_imply_truth :
    ∃ rows : Unit → Entry Unit Bool,
      Supports rows false () ∧ ¬ ((false : Bool) = true) := by
  refine ⟨fun _ => ⟨(), false⟩, ?_, ?_⟩
  · exact ⟨(), rfl, rfl⟩
  · decide

/-- Different rows can have exactly the same provenance. -/
theorem distinct_rows_need_not_have_distinct_origins :
    ∃ rows : Bool → Entry Unit Bool,
      (false : Bool) ≠ true ∧ (rows false).origin = (rows true).origin := by
  exact ⟨fun _ => ⟨(), true⟩, by decide, rfl⟩

end Provenance

namespace VersionSpace

variable {World : Type u}

abbrev Space (World : Type u) := World → Prop

def Consistent (K : Space World) : Prop := ∃ w, K w

def Entails (K : Space World) (P : World → Prop) : Prop := ∀ w, K w → P w

def Possible (K : Space World) (P : World → Prop) : Prop := ∃ w, K w ∧ P w

def Refines (K L : Space World) : Prop := ∀ w, L w → K w

def update (K : Space World) (E : World → Prop) : Space World := fun w => K w ∧ E w

/-- Both sides retain witnesses: uncertainty is not silently converted to negation. -/
def Ambiguous (K : Space World) (P : World → Prop) : Prop :=
  Possible K P ∧ Possible K (fun w => ¬ P w)

theorem update_refines (K : Space World) (E : World → Prop) :
    Refines K (update K E) := fun _ h => h.1

theorem entails_of_refines {K L : Space World} {P : World → Prop}
    (hKL : Refines K L) (hP : Entails K P) : Entails L P := by
  intro w hw
  exact hP w (hKL w hw)

theorem possible_of_refines {K L : Space World} {P : World → Prop}
    (hKL : Refines K L) (hP : Possible L P) : Possible K P := by
  obtain ⟨w, hw, hp⟩ := hP
  exact ⟨w, hKL w hw, hp⟩

theorem update_consistent_iff (K : Space World) (E : World → Prop) :
    Consistent (update K E) ↔ Possible K E := Iff.rfl

theorem update_comm (K : Space World) (E F : World → Prop) :
    update (update K E) F = update (update K F) E := by
  funext w
  apply propext
  constructor
  · intro h
    exact ⟨⟨h.1.1, h.2⟩, h.1.2⟩
  · intro h
    exact ⟨⟨h.1.1, h.2⟩, h.1.2⟩

theorem update_idempotent (K : Space World) (E : World → Prop) :
    update (update K E) E = update K E := by
  funext w
  apply propext
  exact ⟨fun h => h.1, fun h => ⟨h, h.2⟩⟩

/-- Actual-world soundness is conditional on source compatibility. -/
theorem true_at_compatible_world {K : Space World} {P : World → Prop}
    {actual : World} (compatible : K actual) (h : Entails K P) : P actual :=
  h actual compatible

theorem update_preserves_actual {K : Space World} {E : World → Prop}
    {actual : World} (compatible : K actual) (correct : E actual) :
    update K E actual := ⟨compatible, correct⟩

theorem entails_and_not_impossible {K : Space World} {P : World → Prop}
    (consistent : Consistent K) : ¬ (Entails K P ∧ Entails K (fun w => ¬ P w)) := by
  intro h
  obtain ⟨w, hw⟩ := consistent
  exact h.2 w hw (h.1 w hw)

theorem ambiguous_not_entails {K : Space World} {P : World → Prop}
    (h : Ambiguous K P) : ¬ Entails K P ∧ ¬ Entails K (fun w => ¬ P w) := by
  obtain ⟨⟨x, hx, hp⟩, y, hy, hn⟩ := h
  constructor
  · intro allP
    exact hn (allP y hy)
  · intro allNotP
    exact allNotP x hx hp

/-- The empty model makes every claim derivable; consistency is a separate duty. -/
theorem inconsistent_space_entails_everything (P : World → Prop) :
    Entails (fun _ : World => False) P := fun _ h => h.elim

/-- A correction can preserve consistency and make a previously unsettled fact definite. -/
theorem consistent_refinement_can_resolve_ambiguity :
    Ambiguous (fun _ : Bool => True) (fun b => b = true) ∧
    Consistent (update (fun _ : Bool => True) (fun b => b = true)) ∧
    Entails (update (fun _ : Bool => True) (fun b => b = true))
      (fun b => b = true) := by
  refine ⟨?_, ?_, ?_⟩
  · exact ⟨⟨true, trivial, rfl⟩, ⟨false, trivial, by decide⟩⟩
  · exact ⟨true, trivial, rfl⟩
  · intro w hw
    exact hw.2

/-- Finite compatibility does not justify swapping the infinite quantifiers. -/
theorem finite_prefixes_do_not_supply_a_global_world :
    (∀ n : Nat, ∃ w : Nat, ∀ k, k ≤ n → k ≤ w) ∧
      ¬ (∃ w : Nat, ∀ n : Nat, n ≤ w) := by
  constructor
  · intro n
    exact ⟨n, fun _ hk => hk⟩
  · intro h
    obtain ⟨w, hw⟩ := h
    have impossible := hw (w + 1)
    omega

/-- Deciding every predicate is exactly the absence of distinct compatible worlds. -/
theorem all_predicates_decided_iff_at_most_one (K : Space World) :
    (∀ P : World → Prop, Entails K P ∨ Entails K (fun w => ¬ P w)) ↔
      (∀ x y, K x → K y → x = y) := by
  classical
  constructor
  · intro h x y hx hy
    cases h (fun w => w = x) with
    | inl hp => exact (hp y hy).symm
    | inr hn => exact (hn x hx rfl).elim
  · intro unique P
    by_cases nonempty : Consistent K
    · obtain ⟨x, hx⟩ := nonempty
      by_cases hp : P x
      · left
        intro y hy
        have heq := unique x y hx hy
        rw [← heq]
        exact hp
      · right
        intro y hy
        have heq := unique x y hx hy
        rw [← heq]
        exact hp
    · left
      intro w hw
      exact (nonempty ⟨w, hw⟩).elim

end VersionSpace

end GRWTSK.Logic.Evidence
