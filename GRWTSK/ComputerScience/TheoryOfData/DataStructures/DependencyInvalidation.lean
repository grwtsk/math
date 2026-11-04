import Init

/-!
# Dependency closure and sound incremental recomputation

Local attribution: grwtsk contributors.

An edge points from a consumer to an input. `Affected` is the least set containing
changed vertices and closed under consumers. No finiteness or acyclicity is needed
for that closure. Stability of recursively defined values additionally requires
accessibility of the dependency relation and an explicit local congruence rule.
The accessibility induction is the primary mathematical argument: every unchanged
consumer has unchanged dependencies, so local congruence returns equality.

Consumers are dependency-directed invalidation and replacement of only affected
values. `refresh_correct` compares the entire refreshed function with the new
function. The cyclic counterexample shows why closure alone cannot justify this
return theorem. Neither a real dependency extractor nor a scheduler is supplied.
Novelty and independent analytical review: not assessed. Compilation, fresh kernel
checking, and transitive axiom audit: NOT_RUN. No admitted proof terms.
-/

namespace GRWTSK.Cache.Dependency

universe u v

variable {N : Type u} {V : Type v}

/-- Reflexive transitive dependency: the left vertex consumes the right vertex. -/
inductive Reachable (edge : N → N → Prop) : N → N → Prop where
  | refl (n : N) : Reachable edge n n
  | step {a b c : N} : edge a b → Reachable edge b c → Reachable edge a c

namespace Reachable

variable {edge edge' : N → N → Prop} {a b c : N}

theorem single (h : edge a b) : Reachable edge a b := .step h (.refl b)

theorem trans (hab : Reachable edge a b) :
    ∀ {c : N}, Reachable edge b c → Reachable edge a c := by
  induction hab with
  | refl =>
      intro c hbc
      exact hbc
  | step h _ ih =>
      intro c hbc
      exact .step h (ih hbc)

theorem monotone (h : ∀ a b, edge a b → edge' a b)
    (path : Reachable edge a b) : Reachable edge' a b := by
  induction path with
  | refl n => exact .refl n
  | step hab _ ih => exact .step (h _ _ hab) ih

end Reachable

/-- An overapproximation of changed inputs induces an overapproximation of work. -/
def Affected (edge : N → N → Prop) (changed : N → Prop) (n : N) : Prop :=
  ∃ input, Reachable edge n input ∧ changed input

def ConsumerClosed (edge : N → N → Prop) (vertices : N → Prop) : Prop :=
  ∀ a b, edge a b → vertices b → vertices a

theorem changed_affected (edge : N → N → Prop) (changed : N → Prop)
    (n : N) (h : changed n) : Affected edge changed n :=
  ⟨n, .refl n, h⟩

theorem affected_closed (edge : N → N → Prop) (changed : N → Prop) :
    ConsumerClosed edge (Affected edge changed) := by
  intro a b hab hb
  obtain ⟨c, hbc, hc⟩ := hb
  exact ⟨c, .step hab hbc, hc⟩

theorem closed_along_path {edge : N → N → Prop} {vertices : N → Prop}
    (closed : ConsumerClosed edge vertices) {a b : N}
    (path : Reachable edge a b) : vertices b → vertices a := by
  induction path with
  | refl => exact fun h => h
  | step hab _ ih => exact fun h => closed _ _ hab (ih h)

/-- Universal property of the affected closure. -/
theorem affected_least {edge : N → N → Prop} {changed vertices : N → Prop}
    (contains : ∀ n, changed n → vertices n)
    (closed : ConsumerClosed edge vertices) :
    ∀ n, Affected edge changed n → vertices n := by
  intro n h
  obtain ⟨input, path, hi⟩ := h
  exact closed_along_path closed path (contains input hi)

theorem affected_mono {edge : N → N → Prop} {small large : N → Prop}
    (h : ∀ n, small n → large n) :
    ∀ n, Affected edge small n → Affected edge large n := by
  intro n hn
  obtain ⟨input, path, hi⟩ := hn
  exact ⟨input, path, h input hi⟩

theorem affected_edge_mono {edge edge' : N → N → Prop} {changed : N → Prop}
    (h : ∀ a b, edge a b → edge' a b) :
    ∀ n, Affected edge changed n → Affected edge' changed n := by
  intro n hn
  obtain ⟨input, path, hi⟩ := hn
  exact ⟨input, Reachable.monotone h path, hi⟩

theorem affected_union (edge : N → N → Prop) (s t : N → Prop) (n : N) :
    Affected edge (fun a => s a ∨ t a) n ↔
      Affected edge s n ∨ Affected edge t n := by
  constructor
  · intro h
    obtain ⟨a, path, ha⟩ := h
    exact ha.elim (fun hs => Or.inl ⟨a, path, hs⟩)
      (fun ht => Or.inr ⟨a, path, ht⟩)
  · intro h
    cases h with
    | inl hs =>
        obtain ⟨a, path, ha⟩ := hs
        exact ⟨a, path, Or.inl ha⟩
    | inr ht =>
        obtain ⟨a, path, ha⟩ := ht
        exact ⟨a, path, Or.inr ha⟩

theorem affected_idempotent (edge : N → N → Prop) (changed : N → Prop) (n : N) :
    Affected edge (Affected edge changed) n ↔ Affected edge changed n := by
  constructor
  · exact affected_least (fun _ h => h) (affected_closed edge changed) n
  · exact changed_affected edge (Affected edge changed) n

theorem unaffected_iff (edge : N → N → Prop) (changed : N → Prop) (n : N) :
    ¬ Affected edge changed n ↔
      ∀ input, Reachable edge n input → ¬ changed input := by
  constructor
  · intro h input path hi
    exact h ⟨input, path, hi⟩
  · intro h hn
    obtain ⟨input, path, hi⟩ := hn
    exact h input path hi

theorem unaffected_input {edge : N → N → Prop} {changed : N → Prop}
    {a b : N} (safe : ¬ Affected edge changed a) (path : Reachable edge a b) :
    ¬ Affected edge changed b := by
  intro hb
  obtain ⟨c, hbc, hc⟩ := hb
  exact safe ⟨c, path.trans hbc, hc⟩

/-- The local premise must include every input that can affect a value. -/
def LocallyCongruent (edge : N → N → Prop) (changed : N → Prop)
    (old fresh : N → V) : Prop :=
  ∀ n, ¬ changed n → (∀ input, edge n input → old input = fresh input) →
    old n = fresh n

/-- Well-founded dependency induction, not a claim about arbitrary cycles. -/
theorem stable_of_accessible {edge : N → N → Prop} {changed : N → Prop}
    {old fresh : N → V} (locality : LocallyCongruent edge changed old fresh)
    (n : N) (accessible : Acc (fun input consumer => edge consumer input) n) :
    ¬ Affected edge changed n → old n = fresh n := by
  induction accessible with
  | intro n _ ih =>
      intro safe
      apply locality n
      · intro hn
        exact safe (changed_affected edge changed n hn)
      · intro input hinput
        exact ih input hinput (unaffected_input safe (Reachable.single hinput))

noncomputable def refresh (edge : N → N → Prop) (changed : N → Prop)
    (old fresh : N → V) : N → V := by
  classical
  exact fun n => if Affected edge changed n then fresh n else old n

/-- Exact replacement is sound on the whole domain, not merely at dirty vertices. -/
theorem refresh_correct {edge : N → N → Prop} {changed : N → Prop}
    {old fresh : N → V} (locality : LocallyCongruent edge changed old fresh)
    (accessible : ∀ n, Acc (fun input consumer => edge consumer input) n) :
    refresh edge changed old fresh = fresh := by
  classical
  funext n
  by_cases h : Affected edge changed n
  · simp [refresh, h]
  · simpa [refresh, h] using stable_of_accessible locality n (accessible n) h

/-- Dirty-set overapproximation preserves correctness; it can do extra work. -/
theorem refresh_with_overapproximation {edge : N → N → Prop}
    {changed selected : N → Prop} [DecidablePred selected] {old fresh : N → V}
    (locality : LocallyCongruent edge changed old fresh)
    (accessible : ∀ n, Acc (fun input consumer => edge consumer input) n)
    (covers : ∀ n, Affected edge changed n → selected n) :
    (fun n => if selected n then fresh n else old n) = fresh := by
  classical
  funext n
  by_cases h : selected n
  · simp [h]
  · have hs : ¬ Affected edge changed n := fun ha => h (covers n ha)
    simpa [h] using stable_of_accessible locality n (accessible n) hs

/-- A self-loop can satisfy local congruence vacuously while values disagree. -/
theorem cyclic_obstruction :
    LocallyCongruent (fun _ _ : Unit => True) (fun _ => False)
      (fun _ => (0 : Nat)) (fun _ => 1) ∧
    (∀ n, ¬ Affected (fun _ _ : Unit => True) (fun _ => False) n) ∧
    ((fun _ : Unit => (0 : Nat)) ≠ (fun _ => 1)) := by
  constructor
  · intro n _ dependencies
    exact dependencies n True.intro
  · constructor
    · intro n h
      obtain ⟨_, _, impossible⟩ := h
      exact impossible
    · intro h
      have impossible : (0 : Nat) = 1 := congrFun h ()
      cases impossible

end GRWTSK.Cache.Dependency
