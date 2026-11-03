import GRWTSK.MathematicalLogicAndFoundations.ProofTheoryAndConstructiveMathematics.InstantiatedRuleCertificates

/-!
# Finite Horn semantics for proof-carrying goal search

Local attribution: grwtsk contributors. MIT.

This module connects the existing derivability and finite goal-pruning chain
to an explicitly interpreted finite Horn CNF. It does NOT reinterpret the
distinct backward *prerequisite* CNF as a forward derivation: one describes
dependencies needed to retain a conclusion; the other describes premises
sufficient to infer it. Their directions are formally distinguishable.

The Horn source class is exactly finite unit facts and finite implication
rules with conjunctive premises. Semantic entailment is relative to this
supplied inventory, not to omitted imported theorems. The proof-carrying
model provides a further, separate bridge to actual interpreted propositions.

SOURCE_PROOF_CANDIDATE. Compilation, fresh kernel replay, transitive axiom
audit and external extractor comparison: NOT_RUN. No SAT algorithm,
complexity bound or AI-performance evidence is claimed.
-/

set_option autoImplicit false

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference.Finite

open GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.LeastDependencyClosure

universe u
variable {α : Type u}

/-- A *forward* Horn clause, either a positive unit fact or a finite
conjunctive implication. This is not the prerequisite-CNF language. -/
inductive ForwardHornClause (α : Type u) where
  | unit (atom : α)
  | implication (rule : Rule α)

/-- The classical clause semantics of an implication are a disjunction of
the negation of its joint premise conjunction and its positive conclusion.
The negative side is deliberately NOT a choice of one proved premise. -/
def ForwardHornClause.Satisfied (holds : α → Prop) : ForwardHornClause α → Prop
  | .unit atom => holds atom
  | .implication rule =>
      ¬ (∀ p, p ∈ rule.premises → holds p) ∨ holds rule.conclusion

/-- The finite typed CNF is a literal translation of supplied source lists.
Rule duplicates and premise multiplicity are retained, not normalized away. -/
def forwardHornClauses (rules : List (Rule α)) (facts : List α) :
    List (ForwardHornClause α) :=
  facts.map ForwardHornClause.unit ++ rules.map ForwardHornClause.implication

def ForwardHornSatisfied (rules : List (Rule α)) (facts : List α)
    (holds : α → Prop) : Prop :=
  ∀ clause, clause ∈ forwardHornClauses rules facts →
    ForwardHornClause.Satisfied holds clause

/-- The finite Horn CNF and the existing rule-closed-model interface coincide.
Classical case distinction appears only in converting implication to its
disjunctive-clause presentation, not in deriving a rule application. -/
theorem forwardHornSatisfied_iff_closed (rules : List (Rule α))
    (facts : List α) (holds : α → Prop) :
    ForwardHornSatisfied rules facts holds ↔
      Included (fun a => a ∈ facts) holds ∧
      ClosedUnder (fun r => r ∈ rules) holds := by
  constructor
  · intro hm
    constructor
    · intro a ha
      apply hm (.unit a)
      change ForwardHornClause.unit a ∈
        facts.map ForwardHornClause.unit ++ rules.map ForwardHornClause.implication
      exact List.mem_append.mpr
        (Or.inl (List.mem_map.mpr ⟨a, ha, rfl⟩))
    · intro r hr hp
      have hc : ForwardHornClause.Satisfied holds (.implication r) := by
        apply hm (.implication r)
        change ForwardHornClause.implication r ∈
          facts.map ForwardHornClause.unit ++ rules.map ForwardHornClause.implication
        exact List.mem_append.mpr
          (Or.inr (List.mem_map.mpr ⟨r, hr, rfl⟩))
      change ¬ (∀ p, p ∈ r.premises → holds p) ∨ holds r.conclusion at hc
      cases hc with
      | inl hn => exact False.elim (hn hp)
      | inr h => exact h
  · rintro ⟨hf, hr⟩ clause hc
    change clause ∈
      facts.map ForwardHornClause.unit ++ rules.map ForwardHornClause.implication at hc
    cases List.mem_append.mp hc with
    | inl h =>
        obtain ⟨a, ha, heq⟩ := List.mem_map.mp h
        subst clause
        exact hf ha
    | inr h =>
        obtain ⟨r, hrule, heq⟩ := List.mem_map.mp h
        subst clause
        change ¬ (∀ p, p ∈ r.premises → holds p) ∨ holds r.conclusion
        classical
        by_cases hp : ∀ p, p ∈ r.premises → holds p
        · exact Or.inr (hr r hrule hp)
        · exact Or.inl hp

/-- Finite Horn semantic entailment is exactly the least inductively
generated derivability relation. This is *relative to the listed clauses*.
It does not prove the clauses are mathematically true. -/
theorem derivable_iff_forwardHornEntailed (rules : List (Rule α))
    (facts : List α) (a : α) :
    Derivable (fun r => r ∈ rules) (fun p => p ∈ facts) a ↔
      ∀ holds : α → Prop, ForwardHornSatisfied rules facts holds → holds a := by
  constructor
  · intro h holds hm
    have hc := (forwardHornSatisfied_iff_closed rules facts holds).mp hm
    exact derivable_sound hc.1 hc.2 h
  · intro h
    apply (derivable_iff_all_closed
      (rules := fun r => r ∈ rules) (facts := fun p => p ∈ facts)).mpr
    intro holds hf hr
    exact h holds ((forwardHornSatisfied_iff_closed rules facts holds).mpr ⟨hf, hr⟩)

/-- The existing executable optimized query decides entailment for precisely
the available Horn clauses at every goal in the selected goal predicate. -/
theorem decideSourceGoalPruned_iff_forwardHornEntailed [DecidableEq α]
    (inventory : FiniteInventory α) (rules : List (Rule α))
    (facts : List α) (goals : α → Prop) [DecidablePred goals]
    (a : α) (ha : goals a) :
    decideSourceGoalPruned inventory rules facts goals a = true ↔
      ∀ holds : α → Prop, ForwardHornSatisfied rules facts holds → holds a :=
  (decideSourceGoalPruned_eq_true_iff inventory rules facts goals a ha).trans
    (derivable_iff_forwardHornEntailed rules facts a)

/-- A proof-carrying application/fact inventory makes its original proposition
interpretation a genuine model of the corresponding finite Horn clauses.
SourceClaim strings play no role in this proof. -/
theorem instantiatedForwardHornModel {Meaning : α → Prop}
    (applications : List (InstantiatedApplication α Meaning))
    (facts : List (InstantiatedFact α Meaning)) :
    ForwardHornSatisfied (eraseApplications applications)
      (eraseFacts facts) Meaning :=
  (forwardHornSatisfied_iff_closed (eraseApplications applications)
    (eraseFacts facts) Meaning).mpr
      ⟨erasedFacts_sound facts, erasedApplications_closed applications⟩

/-- Logical entailment from this proof-bearing list returns a mathematical
proposition; the converse (all true propositions are entailed) is not claimed. -/
theorem entailedInstantiatedMeaning {Meaning : α → Prop}
    (applications : List (InstantiatedApplication α Meaning))
    (facts : List (InstantiatedFact α Meaning))
    (a : α)
    (h : ∀ holds : α → Prop,
      ForwardHornSatisfied (eraseApplications applications)
        (eraseFacts facts) holds → holds a) : Meaning a :=
  h Meaning (instantiatedForwardHornModel applications facts)

/-- A complete finite source rule graph computes the *same* goal slice as
the inductive prerequisite closure. This is an equivalence of backward
navigation objects, not of the forward Horn clauses above. -/
theorem finiteSourceSlice_iff_goalSlice [DecidableEq α]
    (inventory : FiniteInventory α) (rules : List (Rule α))
    (goals : α → Prop) [DecidablePred goals] (a : α) :
    finitePrerequisiteClosure inventory goals
      (fun x y => (x, y) ∈ ruleDependencyEdges rules) a ↔
      goalSlice (fun r => r ∈ rules) goals a := by
  letI : DecidableRel (fun x y => (x, y) ∈ ruleDependencyEdges rules) := by
    intro x y
    infer_instance
  constructor
  · intro h
    have hc : Closure goals
        (fun x y => (x, y) ∈ ruleDependencyEdges rules) a :=
      (finitePrerequisiteClosure_iff inventory goals
        (fun x y => (x, y) ∈ ruleDependencyEdges rules) a).mp h
    change Closure goals (RuleDepends (fun r => r ∈ rules)) a
    induction hc with
    | root hg => exact Closure.root hg
    | dependency _ hedge ih =>
        exact Closure.dependency ih
          ((mem_ruleDependencyEdges_iff rules _ _).mp hedge)
  · intro h
    change Closure goals (RuleDepends (fun r => r ∈ rules)) a at h
    apply (finitePrerequisiteClosure_iff inventory goals
      (fun x y => (x, y) ∈ ruleDependencyEdges rules) a).mpr
    induction h with
    | root hg => exact Closure.root hg
    | dependency _ hedge ih =>
        exact Closure.dependency ih
          ((mem_ruleDependencyEdges_iff rules _ _).mpr hedge)

/-- Minimality of the computed *all-routes dependency slice* follows from
the existing weighted-cost theorem. It says nothing about a minimum single
proof or actual indexing, parsing, or solver runtime. -/
theorem finiteSourceSlice_weighted_minimal [DecidableEq α]
    (inventory : FiniteInventory α) (rules : List (Rule α))
    (goals : α → Prop) [DecidablePred goals]
    (weight : α → Nat) (keep : α → Prop) [DecidablePred keep]
    (feasible : Feasible goals (RuleDepends (fun r => r ∈ rules)) keep) :
    finiteWeightedCost inventory weight
      (finitePrerequisiteClosure inventory goals
        (fun x y => (x, y) ∈ ruleDependencyEdges rules)) ≤
      finiteWeightedCost inventory weight keep := by
  letI : DecidableRel (fun x y => (x, y) ∈ ruleDependencyEdges rules) := by
    intro x y
    infer_instance
  have h : Feasible goals (fun x y => (x, y) ∈ ruleDependencyEdges rules) keep := {
    roots := feasible.roots
    closed := by
      intro x y hx hxy
      exact feasible.closed hx
        ((mem_ruleDependencyEdges_iff rules x y).mp hxy)
  }
  exact finitePrerequisiteClosure_minimizes inventory weight goals
    (fun x y => (x, y) ∈ ruleDependencyEdges rules) h

/-- A unit fact needs no other clause. -/
theorem forwardHorn_unit (holds : α → Prop) (a : α) :
    ForwardHornClause.Satisfied holds (.unit a) ↔ holds a := Iff.rfl

/-- An empty-premise rule is precisely a positive unit consequence,
not a rule that needs an arbitrary external fact. -/
theorem forwardHorn_emptyPremise (holds : α → Prop) (a : α) :
    ForwardHornClause.Satisfied holds
      (.implication (⟨[], a⟩ : Rule α)) ↔ holds a := by
  simp [ForwardHornClause.Satisfied]

/-- Hostile polarity control. Backward prerequisite clauses mean
'retain conclusion implies retain premise'; forward Horn clauses mean
'premise proves conclusion'. The two are NOT logically interchangeable. -/
theorem backwardPrerequisite_not_forwardHorn :
    ∃ holds : Nat → Prop,
      prerequisiteClauseHolds holds (.prerequisite 1 0) ∧
        ¬ ForwardHornClause.Satisfied holds
          (.implication (⟨[0], 1⟩ : Rule Nat)) := by
  refine ⟨(fun n : Nat => n = 0), Or.inl (by decide), ?_⟩
  intro h
  change ¬ (∀ p : Nat, p ∈ [0] → p = 0) ∨ (1 : Nat) = 0 at h
  cases h with
  | inl hn =>
      apply hn
      intro p hp
      simpa using hp
  | inr hwrong => cases hwrong

end GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference.Finite
