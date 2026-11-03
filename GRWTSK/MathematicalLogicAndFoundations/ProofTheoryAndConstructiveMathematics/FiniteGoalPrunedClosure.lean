import GRWTSK.MathematicalLogicAndFoundations.ProofTheoryAndConstructiveMathematics.FiniteJointPremiseClosure

/-!
# Finite goal-directed pruning of joint-premise inference

Local attribution: grwtsk contributors. MIT.

This source composes two existing mathematical constructions:
* a finite, decidable prerequisite closure of a supplied goal predicate;
* the executable conjunctive-rule closure, whose membership is compared with
  the inductively defined `Derivable` relation;
* an exact edge list obtained from the available finite rule occurrences.

A supplied dependency relation must contain every actual rule-conclusion to
premise edge. Its extra edges can retain more input, but cannot falsify the
source-level goal answer under the coverage hypothesis. After slicing, rules
whose conclusions are already filtered input facts are redundant: deleting
them preserves derivability and gives the forward engine a smaller rule list.

These are exact semantic pruning claims, not a complexity bound or measured
speedup. The finite inventory must cover every atom of the chosen type.
`decideSourceGoalPruned` proves coverage of its own rule-list edge graph;
there is no repository-wide Lean-application extraction/refinement claim.

SOURCE_PROOF_CANDIDATE. Compilation, fresh kernel replay and transitive axiom
audit are NOT_RUN. Do not infer acceptance from Git publication.
-/

set_option autoImplicit false

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference.Finite

open GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.LeastDependencyClosure

universe u
variable {α : Type u}

/-- Discard rule occurrences whose conclusion is already an input fact. A rule
with a known conclusion adds no new derivable atom, regardless of its premises.
This is a semantic reduction, not a claim that filtering costs zero time. -/
def removeInitiallySatisfied [DecidableEq α]
    (rules : List (Rule α)) (facts : List α) : List (Rule α) :=
  rules.filter (fun r => decide (r.conclusion ∉ facts))

/-- Pruning already-known conclusions preserves exactly the derivable atoms.
The forward and reverse implications use the existing inductive rule semantics.
No decision procedure for an arbitrary infinite rule predicate is assumed. -/
theorem removeInitiallySatisfied_iff [DecidableEq α]
    (rules : List (Rule α)) (facts : List α) (a : α) :
    a ∈ finiteClosure (removeInitiallySatisfied rules facts) facts ↔
      a ∈ finiteClosure rules facts := by
  simp only [mem_finiteClosure_iff]
  constructor
  · intro h
    exact derivable_mono
      (by
        intro r hr
        change r ∈ rules.filter (fun s => decide (s.conclusion ∉ facts)) at hr
        exact (List.mem_filter.mp hr).1)
      (by intro p hp; exact hp) h
  · intro h
    exact derivable_sound
      (holds := Derivable (fun r => r ∈ removeInitiallySatisfied rules facts)
        (fun p => p ∈ facts))
      (by
        intro p hp
        exact Derivable.assumption hp)
      (by
        intro r hr hp
        by_cases known : r.conclusion ∈ facts
        · exact Derivable.assumption known
        · apply Derivable.application r
          · change r ∈ rules.filter (fun s => decide (s.conclusion ∉ facts))
            exact List.mem_filter.mpr ⟨hr, decide_eq_true known⟩
          · exact hp)
      h

/-- Two exact, finite pruning stages, both executable:
1. compute a backward closure from goals in a supplied dependency overapproximation;
2. delete rules and facts outside that closure, then delete rules whose
   conclusions are already among the retained input facts.

The completeness theorem below explicitly requires coverage of every available
conclusion-to-premise dependency by `overapprox`. Without that witness, a
negative Boolean result is not certified as a source-level nonderivability. -/
def decideGoalPruned [DecidableEq α]
    (inventory : FiniteInventory α) (rules : List (Rule α)) (facts : List α)
    (goals : α → Prop) [DecidablePred goals]
    (overapprox : α → α → Prop) [DecidableRel overapprox]
    (a : α) : Bool :=
  letI : DecidablePred (finitePrerequisiteClosure inventory goals overapprox) :=
    finitePrerequisiteClosureDecidable inventory goals overapprox
  let keep := finitePrerequisiteClosure inventory goals overapprox
  let keptRules := rules.filter (fun r => decide (keep r.conclusion))
  let keptFacts := facts.filter (fun p => decide (keep p))
  decideFiniteClosure (removeInitiallySatisfied keptRules keptFacts) keptFacts a

/-- Goal preservation for the executable two-stage query. Coverage is only
one-way: every actual rule edge must occur in the supplied relation. Extra
dependency edges are harmless to correctness, though they can reduce pruning.
The theorem says nothing about omitted rules in an external repository index. -/
theorem decideGoalPruned_eq_true_iff [DecidableEq α]
    (inventory : FiniteInventory α) (rules : List (Rule α)) (facts : List α)
    (goals : α → Prop) [DecidablePred goals]
    (overapprox : α → α → Prop) [DecidableRel overapprox]
    (coverage : ∀ ⦃x y⦄,
      RuleDepends (fun r => r ∈ rules) x y → overapprox x y)
    (a : α) (ha : goals a) :
    decideGoalPruned inventory rules facts goals overapprox a = true ↔
      Derivable (fun r => r ∈ rules) (fun p => p ∈ facts) a := by
  let keep : α → Prop := finitePrerequisiteClosure inventory goals overapprox
  letI : DecidablePred keep :=
    finitePrerequisiteClosureDecidable inventory goals overapprox
  let keptRules := rules.filter (fun r => decide (keep r.conclusion))
  let keptFacts := facts.filter (fun p => decide (keep p))
  have closed : ∀ ⦃x y⦄, keep x →
      RuleDepends (fun r => r ∈ rules) x y → keep y := by
    intro x y hx hxy
    exact (finitePrerequisiteClosure_feasible inventory goals overapprox).closed
      hx (coverage hxy)
  have includedGoal : keep a :=
    (finitePrerequisiteClosure_feasible inventory goals overapprox).roots ha
  have sliced :
      a ∈ finiteClosure keptRules keptFacts ↔ a ∈ finiteClosure rules facts :=
    finiteClosure_filter_iff rules facts keep closed includedGoal
  have pruned :
      a ∈ finiteClosure (removeInitiallySatisfied keptRules keptFacts) keptFacts ↔
        a ∈ finiteClosure keptRules keptFacts :=
    removeInitiallySatisfied_iff keptRules keptFacts a
  have decided :
      decideFiniteClosure (removeInitiallySatisfied keptRules keptFacts) keptFacts a = true ↔
        a ∈ finiteClosure (removeInitiallySatisfied keptRules keptFacts) keptFacts := by
    constructor
    · intro h
      exact of_decide_eq_true h
    · intro h
      exact decide_eq_true h
  change
    decideFiniteClosure (removeInitiallySatisfied keptRules keptFacts) keptFacts a = true ↔
      Derivable (fun r => r ∈ rules) (fun p => p ∈ facts) a
  exact decided.trans (pruned.trans (sliced.trans (mem_finiteClosure_iff rules facts a)))

/-- Exact finite dependency-edge inventory, preserving one edge occurrence
per premise occurrence. This source-level graph is not inferred from prose,
imports or declaration names: it is constructed from the actual rule lists. -/
def ruleDependencyEdges (rules : List (Rule α)) : List (α × α) :=
  rules.flatMap (fun r => r.premises.map (fun p => (r.conclusion, p)))

/-- The graph construction preserves both directions of the original
conclusion-to-premise relation. Conjunction remains encoded in each Rule:
an edge list alone is not a derivation and cannot OR-flatten premises. -/
theorem mem_ruleDependencyEdges_iff (rules : List (Rule α))
    (a b : α) :
    (a, b) ∈ ruleDependencyEdges rules ↔
      RuleDepends (fun r => r ∈ rules) a b := by
  constructor
  · intro h
    change (a, b) ∈
      rules.flatMap (fun r => r.premises.map (fun p => (r.conclusion, p))) at h
    obtain ⟨r, hr, hmem⟩ := List.mem_flatMap.mp h
    obtain ⟨p, hp, hpair⟩ := List.mem_map.mp hmem
    have hc : r.conclusion = a := congrArg Prod.fst hpair
    have hb : p = b := congrArg Prod.snd hpair
    exact ⟨r, hr, hc, by simpa only [hb] using hp⟩
  · rintro ⟨r, hr, hc, hp⟩
    change (a, b) ∈
      rules.flatMap (fun r => r.premises.map (fun p => (r.conclusion, p)))
    apply List.mem_flatMap.mpr
    refine ⟨r, hr, ?_⟩
    exact List.mem_map.mpr ⟨b, hp, by simp only [hc]⟩

/-- Fully source-derived goal query: the dependency graph is extracted from
the supplied finite Rule list, so the caller supplies no separate edge coverage
claim. An actual Lean-term-to-Rule extraction remains a distinct unproved task. -/
def decideSourceGoalPruned [DecidableEq α]
    (inventory : FiniteInventory α) (rules : List (Rule α)) (facts : List α)
    (goals : α → Prop) [DecidablePred goals] (a : α) : Bool :=
  letI : DecidableRel (fun x y => (x, y) ∈ ruleDependencyEdges rules) := by
    intro x y
    infer_instance
  decideGoalPruned inventory rules facts goals
    (fun x y => (x, y) ∈ ruleDependencyEdges rules) a

/-- The source-derived executable query agrees with the inductive inference
semantics at every selected goal. No graph coverage hypothesis is outsourced. -/
theorem decideSourceGoalPruned_eq_true_iff [DecidableEq α]
    (inventory : FiniteInventory α) (rules : List (Rule α)) (facts : List α)
    (goals : α → Prop) [DecidablePred goals] (a : α) (ha : goals a) :
    decideSourceGoalPruned inventory rules facts goals a = true ↔
      Derivable (fun r => r ∈ rules) (fun p => p ∈ facts) a := by
  letI : DecidableRel (fun x y => (x, y) ∈ ruleDependencyEdges rules) := by
    intro x y
    infer_instance
  unfold decideSourceGoalPruned
  exact decideGoalPruned_eq_true_iff inventory rules facts goals
    (fun x y => (x, y) ∈ ruleDependencyEdges rules)
    (by
      intro x y hxy
      exact (mem_ruleDependencyEdges_iff rules x y).mpr hxy)
    a ha

/-- A known-conclusion rule occurrence is actually removed, not only
semantically declared unnecessary. All retained rules may still be needed. -/
theorem removeInitiallySatisfied_example :
    removeInitiallySatisfied
      ([⟨[], 0⟩, ⟨[0], 1⟩, ⟨[1], 2⟩, ⟨[], 3⟩] : List (Rule Nat))
      [0] =
        [⟨[0], 1⟩, ⟨[1], 2⟩, ⟨[], 3⟩] := by
  rfl

end GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference.Finite
