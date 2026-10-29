import GRWTSK.Combinatorics.LeastDependencyClosure

/-!
# Joint-premise inference and goal-directed dependency slices

Local attribution: grwtsk contributors. MIT.

Extend the existing least-dependency closure with conjunctive inference rules.
A rule fires only when every listed premise is derivable. Alternative rules
remain alternatives. A backward-closed slice preserves derivability of its
retained goals, but does not assert that each retained atom is true or that all
alternative premises occur in a smallest proof.

Atoms stand for already instantiated propositions. This module does not extract
Lean applications, implement unification, prove a SAT encoding or running-time
bound, or establish any consequence for ETH. Source proof candidate; compilation,
fresh kernel replay and transitive axiom audit remain NOT_RUN.
-/

set_option autoImplicit false

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference

open GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.LeastDependencyClosure

universe u
variable {α : Type u}

/-- One instantiated inference; the premise list is a conjunction, not a choice. -/
structure Rule (α : Type u) where
  premises : List α
  conclusion : α

/-- A predicate respects every supplied rule, including zero-premise rules. -/
def ClosedUnder (rules : Rule α → Prop) (holds : α → Prop) : Prop :=
  ∀ r, rules r → (∀ p, p ∈ r.premises → holds p) → holds r.conclusion

/-- Finite inference derivations. Cycles alone do not provide a derivation. -/
inductive Derivable (rules : Rule α → Prop) (facts : α → Prop) : α → Prop
  | assumption {a : α} : facts a → Derivable rules facts a
  | application (r : Rule α) : rules r →
      (∀ p, p ∈ r.premises → Derivable rules facts p) →
      Derivable rules facts r.conclusion

/-- Semantic soundness requires both true input facts and sound rule applications. -/
theorem derivable_sound {rules : Rule α → Prop} {facts holds : α → Prop}
    (hf : Included facts holds) (hr : ClosedUnder rules holds)
    {a : α} (h : Derivable rules facts a) : holds a := by
  induction h with
  | assumption h => exact hf h
  | application r h _ ih => exact hr r h ih

/-- Derivability itself is closed under the supplied conjunctive rules. -/
theorem derivable_closed (rules : Rule α → Prop) (facts : α → Prop) :
    ClosedUnder rules (Derivable rules facts) := by
  intro r hr hp
  exact Derivable.application r hr hp

/-- No new semantic assumptions enter when rules and input facts are enlarged. -/
theorem derivable_mono {rules rules' : Rule α → Prop} {facts facts' : α → Prop}
    (hr : ∀ r, rules r → rules' r) (hf : Included facts facts') :
    Included (Derivable rules facts) (Derivable rules' facts') := by
  intro a ha
  apply derivable_sound (holds := Derivable rules' facts') _ _ ha
  · intro p hp
    exact Derivable.assumption (hf hp)
  · intro r h hp
    exact Derivable.application r (hr r h) hp

/-- The inference closure is the least rule-closed predicate containing the facts. -/
theorem derivable_iff_all_closed {rules : Rule α → Prop} {facts : α → Prop}
    {a : α} : Derivable rules facts a ↔
      ∀ holds, Included facts holds → ClosedUnder rules holds → holds a := by
  constructor
  · intro ha holds hf hr
    exact derivable_sound hf hr ha
  · intro h
    exact h (Derivable rules facts) (by
      intro p hp
      exact Derivable.assumption hp) (derivable_closed rules facts)

/-- Backward incidence: the conclusion of an available rule needs its premises
for that rule application. This relation includes every alternative rule. -/
def RuleDepends (rules : Rule α → Prop) (a b : α) : Prop :=
  ∃ r, rules r ∧ r.conclusion = a ∧ b ∈ r.premises

/-- Keep every available rule whose conclusion is retained; do not cherry-pick
one alternative without a separate completeness argument. -/
def restrictRules (rules : Rule α → Prop) (keep : α → Prop) (r : Rule α) : Prop :=
  rules r ∧ keep r.conclusion

/-- Input facts are retained only within the slice. -/
def restrictFacts (facts keep : α → Prop) (a : α) : Prop := facts a ∧ keep a

/-- Any backward-closed slice preserves a derivation whose conclusion is retained.
The induction preserves all jointly required premises of every selected rule. -/
theorem derivable_restrict {rules : Rule α → Prop} {facts keep : α → Prop}
    (closed : ∀ ⦃a b⦄, keep a → RuleDepends rules a b → keep b)
    {a : α} (h : Derivable rules facts a) :
    keep a → Derivable (restrictRules rules keep) (restrictFacts facts keep) a := by
  induction h with
  | assumption h =>
    intro hk
    exact Derivable.assumption ⟨h, hk⟩
  | application r hr _ ih =>
    intro hk
    apply Derivable.application r ⟨hr, hk⟩
    intro p hp
    exact ih p hp (closed hk ⟨r, hr, rfl, hp⟩)

/-- Restriction neither gains nor loses derivability at retained conclusions. -/
theorem derivable_restrict_iff {rules : Rule α → Prop} {facts keep : α → Prop}
    (closed : ∀ ⦃a b⦄, keep a → RuleDepends rules a b → keep b)
    {a : α} (ha : keep a) :
    Derivable (restrictRules rules keep) (restrictFacts facts keep) a ↔
      Derivable rules facts a := by
  constructor
  · intro h
    exact derivable_mono (by intro r hr; exact hr.1)
      (by intro p hp; exact hp.1) h
  · intro h
    exact derivable_restrict closed h ha

/-- Reuse the existing prerequisite closure rather than a second reachability model. -/
def goalSlice (rules : Rule α → Prop) (goals : α → Prop) : α → Prop :=
  Closure goals (RuleDepends rules)

/-- Main consumer theorem: the canonical backward slice is complete for its goals.
This is logical preservation, not a claim about runtime, truth of supplied rules,
minimal proof size, or the quality of a learned ranking. -/
theorem goalSlice_derivable_iff (rules : Rule α → Prop) (facts goals : α → Prop)
    {a : α} (ha : goals a) :
    Derivable (restrictRules rules (goalSlice rules goals))
      (restrictFacts facts (goalSlice rules goals)) a ↔ Derivable rules facts a := by
  apply derivable_restrict_iff
  · intro x y hx hxy
    exact (closure_feasible goals (RuleDepends rules)).closed hx hxy
  · exact Closure.root ha

/-- Leastness concerns backward-closed navigation slices, not smallest proofs. -/
theorem goalSlice_least {rules : Rule α → Prop} {goals keep : α → Prop}
    (h : Feasible goals (RuleDepends rules) keep) :
    Included (goalSlice rules goals) keep := closure_least h

/-- An explicit two-premise rule used as a hostile control against OR-flattening. -/
def binaryRule : Rule Nat := ⟨[0, 1], 2⟩

theorem binaryRule_both_suffice :
    Derivable (fun r => r = binaryRule) (fun n => n = 0 ∨ n = 1) 2 := by
  apply Derivable.application binaryRule rfl
  intro p hp
  apply Derivable.assumption
  simpa [binaryRule] using hp

/-- A single available premise cannot discharge a jointly required pair. -/
theorem binaryRule_left_insufficient :
    ¬ Derivable (fun r => r = binaryRule) (fun n => n = 0) 2 := by
  intro hd
  have bad : (2 : Nat) = 0 := derivable_sound
    (holds := fun n => n = 0)
    (by intro n hn; exact hn)
    (by
      intro r hr hp
      cases hr
      have impossible : (1 : Nat) = 0 := hp 1 (by simp [binaryRule])
      cases impossible) hd
  cases bad

/-- Flattening conjunction to an existential premise would accept this false step. -/
theorem one_premise_projection_unsound :
    (∃ p, p = 0 ∧ p ∈ binaryRule.premises) ∧
      ¬ Derivable (fun r => r = binaryRule) (fun n => n = 0) 2 := by
  exact ⟨⟨0, rfl, by simp [binaryRule]⟩, binaryRule_left_insufficient⟩

/-- A self-reference is not an input fact. -/
def loopRule : Rule Nat := ⟨[0], 0⟩

theorem unseeded_cycle_insufficient :
    ¬ Derivable (fun r => r = loopRule) (fun _ => False) 0 := by
  intro hd
  exact derivable_sound (holds := fun _ => False)
    (by intro n hn; exact hn)
    (by
      intro r hr hp
      cases hr
      exact hp 0 (by simp [loopRule])) hd

end GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference
