/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.MathematicalLogicAndFoundations.ProofTheoryAndConstructiveMathematics.FiniteJointPremiseClosure
import Mathlib.Tactic

/-!
# Candidate search, validation, and complete-inventory boundaries

Ranking and retrieval produce candidates; a separately specified checker decides
acceptance. Reordering a complete inventory preserves accepted membership, but
truncation need not preserve completeness. An empty result establishes absence
only with BOTH coverage of the target class and checker completeness on it.

The inference consumer reuses the existing joint-premise closure. Its semantic
soundness still needs true starting facts and validity of EVERY supplied rule.
Nothing here authenticates sources, extracts Lean terms, models an AI provider,
measures retrieval quality, or authorizes an external action.

Proof: list-filter membership and the existing run-preserves induction. Hostile
check: ranking a false candidate first followed by budget-one truncation loses
the sole accepted candidate. This is a finite counterexample, not a performance
claim. See the authored prime-pole research note for the actual search inventory.
AI-assisted source candidate. Elaboration, kernel replay, axiom audit, independent
review: NOT_RUN. Existing definitions and dependency pins are unchanged.
-/

set_option autoImplicit false

namespace GRWTSK.Logic.SearchValidation

universe u
variable {α : Type u}

def accepted (check : α → Bool) (candidates : List α) : List α :=
  candidates.filter check

@[simp] theorem mem_accepted (check : α → Bool) (candidates : List α) (x : α) :
    x ∈ accepted check candidates ↔ x ∈ candidates ∧ check x = true := by
  simp [accepted]

/-- Soundness is independent of ranking, search success rate and inventory size. -/
theorem accepted_sound (check : α → Bool) (target : α → Prop)
    (sound : ∀ x, check x = true → target x) (candidates : List α) {x : α}
    (found : x ∈ accepted check candidates) : target x :=
  sound x ((mem_accepted check candidates x).mp found).2

/-- A permutation may change discovery order, but not complete-search membership. -/
theorem permutation_preserves_acceptance (check : α → Bool)
    {first second : List α} (perm : first.Perm second) (x : α) :
    x ∈ accepted check first ↔ x ∈ accepted check second := by
  rw [mem_accepted, mem_accepted]
  exact and_congr perm.mem_iff Iff.rfl

/-- No-hit is a negative theorem only after coverage and checker completeness. -/
theorem no_hit_of_complete_inventory (check : α → Bool) (target : α → Prop)
    (candidates : List α)
    (coverage : ∀ x, target x → x ∈ candidates)
    (complete : ∀ x, target x → check x = true)
    (empty : accepted check candidates = []) : ¬ ∃ x, target x := by
  rintro ⟨x, hx⟩
  have found : x ∈ accepted check candidates :=
    (mem_accepted check candidates x).mpr ⟨coverage x hx, complete x hx⟩
  rw [empty] at found
  simpa using found

/-- A finite budget cannot create false accepted claims when the checker is sound. -/
theorem bounded_search_sound (check : α → Bool) (target : α → Prop)
    (sound : ∀ x, check x = true → target x) (candidates : List α)
    (budget : ℕ) {x : α} (found : x ∈ accepted check (candidates.take budget)) :
    target x := accepted_sound check target sound _ found

/-- A budget-one search can miss the only valid candidate. -/
theorem truncation_loses_completeness :
    accepted (fun b : Bool => b) ([false, true].take 1) = [] ∧
    accepted (fun b : Bool => b) [false, true] = [true] := by
  decide

open GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference

/-- Reuse the actual finite inference algorithm, not a graph-similarity surrogate. -/
theorem inferred_claim_sound [DecidableEq α] (rules : List (Rule α))
    (facts : List α) (holds : α → Prop) (fuel : ℕ)
    (facts_true : ∀ x, x ∈ facts → holds x)
    (rules_valid : ∀ r, r ∈ rules →
      (∀ p, p ∈ r.premises → holds p) → holds r.conclusion)
    {goal : α} (found : goal ∈ Finite.run fuel rules facts) : holds goal :=
  Finite.run_preserves fuel rules facts holds facts_true rules_valid found

/-- Ranking rule occurrences preserves the complete inference answer; no claim
is made for a budget that truncates the inventory or omits joint premises. -/
theorem ranked_inference_answer [DecidableEq α]
    {rules ranked : List (Rule α)} (perm : rules.Perm ranked)
    (facts : List α) (goal : α) :
    goal ∈ Finite.finiteClosure rules facts ↔
      goal ∈ Finite.finiteClosure ranked facts :=
  Finite.finiteClosure_inventory_congr rules ranked facts facts
    (fun _ => perm.mem_iff) (fun _ => Iff.rfl) goal

end GRWTSK.Logic.SearchValidation
