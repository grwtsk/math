import GRWTSK.MathematicalLogicAndFoundations.ProofTheoryAndConstructiveMathematics.FiniteGoalPrunedClosure

/-!
# Proof-carrying finite inference applications

Local attribution: grwtsk contributors. MIT.

Each instantiated application has a rule AND a Lean proof from every
interpreted premise to its interpreted conclusion. Each fact has its own
proof. Erasure to the established Rule/fact inventory is backed by a
membership correspondence and semantic soundness. The consumer theorem
turns a successful finite goal-pruned query into the interpreted proposition.

Optional source-identification strings are untrusted metadata, never a
source authentication mechanism or proof. The scoped Nat.le_trans example
uses a genuine theorem at explicit parameters and demonstrates that a
missing premise cannot derive a false goal.

This is manual proof-carrying instantiation, not automatic Lean.Expr
extraction, completeness over a repository, a minimum proof, or an AI gain.

SOURCE_PROOF_CANDIDATE. Compilation, fresh kernel replay and transitive
axiom audit: NOT_RUN.
-/

set_option autoImplicit false

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference.Finite

open GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.LeastDependencyClosure

universe u

/-- Metadata alone does not bind a proof term to a Git blob or a declaration. -/
structure SourceClaim where
  repository : String
  revision : String
  path : String
  declaration : String

/-- The interpretation is fixed for all premises and the conclusion. -/
structure InstantiatedApplication (α : Type u) (Meaning : α → Prop) where
  sourceClaim : Option SourceClaim := none
  rule : Rule α
  consequence : (∀ p, p ∈ rule.premises → Meaning p) → Meaning rule.conclusion

structure InstantiatedFact (α : Type u) (Meaning : α → Prop) where
  sourceClaim : Option SourceClaim := none
  atom : α
  evidence : Meaning atom

def eraseApplications {α : Type u} {Meaning : α → Prop}
    (applications : List (InstantiatedApplication α Meaning)) : List (Rule α) :=
  applications.map (fun app => app.rule)

def eraseFacts {α : Type u} {Meaning : α → Prop}
    (facts : List (InstantiatedFact α Meaning)) : List α :=
  facts.map (fun fact => fact.atom)

/-- Erasure retains a witness to each individual original application. -/
theorem mem_eraseApplications_iff {α : Type u} {Meaning : α → Prop}
    (applications : List (InstantiatedApplication α Meaning)) (r : Rule α) :
    r ∈ eraseApplications applications ↔
      ∃ app, app ∈ applications ∧ app.rule = r := by
  constructor
  · intro hr
    change r ∈ applications.map (fun app => app.rule) at hr
    exact List.mem_map.mp hr
  · rintro ⟨app, happ, heq⟩
    change r ∈ applications.map (fun app => app.rule)
    exact List.mem_map.mpr ⟨app, happ, heq⟩

theorem mem_eraseFacts_iff {α : Type u} {Meaning : α → Prop}
    (facts : List (InstantiatedFact α Meaning)) (a : α) :
    a ∈ eraseFacts facts ↔
      ∃ fact, fact ∈ facts ∧ fact.atom = a := by
  constructor
  · intro ha
    change a ∈ facts.map (fun fact => fact.atom) at ha
    exact List.mem_map.mp ha
  · rintro ⟨fact, hf, heq⟩
    change a ∈ facts.map (fun fact => fact.atom)
    exact List.mem_map.mpr ⟨fact, hf, heq⟩

/-- Soundness does not follow from rule data, only from the carried terms. -/
theorem erasedFacts_sound {α : Type u} {Meaning : α → Prop}
    (facts : List (InstantiatedFact α Meaning)) :
    Included (fun a => a ∈ eraseFacts facts) Meaning := by
  intro a ha
  obtain ⟨fact, _, heq⟩ := (mem_eraseFacts_iff facts a).mp ha
  exact heq ▸ fact.evidence

theorem erasedApplications_closed {α : Type u} {Meaning : α → Prop}
    (applications : List (InstantiatedApplication α Meaning)) :
    ClosedUnder (fun r => r ∈ eraseApplications applications) Meaning := by
  intro r hr hp
  obtain ⟨app, _, heq⟩ := (mem_eraseApplications_iff applications r).mp hr
  subst r
  exact app.consequence hp

/-- The existing inductive inference relation returns to the actual Prop. -/
theorem erasedDerivable_sound {α : Type u} {Meaning : α → Prop}
    (applications : List (InstantiatedApplication α Meaning))
    (facts : List (InstantiatedFact α Meaning)) {a : α}
    (h : Derivable
      (fun r => r ∈ eraseApplications applications)
      (fun p => p ∈ eraseFacts facts) a) : Meaning a :=
  derivable_sound (holds := Meaning)
    (erasedFacts_sound facts) (erasedApplications_closed applications) h

/-- Consumer: a source-derived finite query plus typed instances implies
the represented source proposition. No such theorem exists for bare rules. -/
theorem decideInstantiatedGoal_sound {α : Type u} {Meaning : α → Prop}
    [DecidableEq α] (inventory : FiniteInventory α)
    (applications : List (InstantiatedApplication α Meaning))
    (facts : List (InstantiatedFact α Meaning))
    (goals : α → Prop) [DecidablePred goals]
    (a : α) (ha : goals a)
    (hq : decideSourceGoalPruned inventory
      (eraseApplications applications) (eraseFacts facts) goals a = true) :
    Meaning a := by
  apply erasedDerivable_sound applications facts
  exact (decideSourceGoalPruned_eq_true_iff inventory
    (eraseApplications applications) (eraseFacts facts) goals a ha).mp hq

/-- A false interpreted goal cannot be reported as derivable from valid
certificates; a negative query does not refute omitted applications. -/
theorem decideInstantiatedGoal_false_of_not {α : Type u} {Meaning : α → Prop}
    [DecidableEq α] (inventory : FiniteInventory α)
    (applications : List (InstantiatedApplication α Meaning))
    (facts : List (InstantiatedFact α Meaning))
    (goals : α → Prop) [DecidablePred goals]
    (a : α) (ha : goals a) (hnot : ¬ Meaning a) :
    decideSourceGoalPruned inventory
      (eraseApplications applications) (eraseFacts facts) goals a = false := by
  cases hq : decideSourceGoalPruned inventory
      (eraseApplications applications) (eraseFacts facts) goals a with
  | false => rfl
  | true =>
      exact False.elim (hnot
        (decideInstantiatedGoal_sound inventory applications facts goals a ha hq))

namespace ScopedOrderExample

abbrev Atom := Bool × Bool
def premiseAB : Atom := (false, false)
def premiseBC : Atom := (false, true)
def conclusionAC : Atom := (true, false)
def unused : Atom := (true, true)

/-- Parameter scope is encoded in the dependent Meaning type. -/
def Meaning (a b c : Nat) : Atom → Prop
  | (false, false) => a ≤ b
  | (false, true) => b ≤ c
  | (true, false) => a ≤ c
  | (true, true) => True

def inventory : FiniteInventory Atom where
  vertices := [premiseAB, premiseBC, conclusionAC, unused]
  nodup := by decide
  complete := by
    intro atom
    cases atom with
    | mk x y => cases x <;> cases y <;> decide

/-- Concrete use of Nat.le_trans at the same quantified a,b,c. -/
def orderTransitivity (a b c : Nat) :
    InstantiatedApplication Atom (Meaning a b c) where
  rule := ⟨[premiseAB, premiseBC], conclusionAC⟩
  consequence := by
    intro hp
    have hab : a ≤ b := hp premiseAB (by simp)
    have hbc : b ≤ c := hp premiseBC (by simp)
    exact Nat.le_trans hab hbc

def factAB (a b c : Nat) (hab : a ≤ b) :
    InstantiatedFact Atom (Meaning a b c) where
  atom := premiseAB
  evidence := hab

def factBC (a b c : Nat) (hbc : b ≤ c) :
    InstantiatedFact Atom (Meaning a b c) where
  atom := premiseBC
  evidence := hbc

def applications (a b c : Nat) :
    List (InstantiatedApplication Atom (Meaning a b c)) :=
  [orderTransitivity a b c]

def facts (a b c : Nat) (hab : a ≤ b) (hbc : b ≤ c) :
    List (InstantiatedFact Atom (Meaning a b c)) :=
  [factAB a b c hab, factBC a b c hbc]

/-- Actual proof-producing inputs establish the Boolean query. -/
theorem query_true (a b c : Nat) (hab : a ≤ b) (hbc : b ≤ c) :
    decideSourceGoalPruned inventory
      (eraseApplications (applications a b c))
      (eraseFacts (facts a b c hab hbc))
      (fun atom : Atom => atom = conclusionAC) conclusionAC = true := by
  apply (decideSourceGoalPruned_eq_true_iff inventory
    (eraseApplications (applications a b c))
    (eraseFacts (facts a b c hab hbc))
    (fun atom : Atom => atom = conclusionAC) conclusionAC rfl).mpr
  have hr : (orderTransitivity a b c).rule ∈ eraseApplications (applications a b c) := by
    apply (mem_eraseApplications_iff (applications a b c) _).mpr
    exact ⟨orderTransitivity a b c, by simp [applications], rfl⟩
  refine Derivable.application (orderTransitivity a b c).rule hr ?_
  intro atom hp
  apply Derivable.assumption
  change atom ∈ [premiseAB, premiseBC] at hp
  change atom ∈ [premiseAB, premiseBC]
  exact hp

/-- The return is the genuine a ≤ c, not a theorem about a fresh label.
This reuses Nat.le_trans; it is not an independent alternative proof. -/
theorem query_proves_transitivity (a b c : Nat) (hab : a ≤ b) (hbc : b ≤ c) :
    a ≤ c := by
  have hquery := query_true a b c hab hbc
  exact decideInstantiatedGoal_sound inventory
    (applications a b c) (facts a b c hab hbc)
    (fun atom : Atom => atom = conclusionAC) conclusionAC rfl hquery

/-- Hostile case: 1 ≤ 2 is true, but 2 ≤ 0 is missing, and 1 ≤ 0 is false. -/
theorem missing_premise_rejected :
    decideSourceGoalPruned inventory
      (eraseApplications (applications 1 2 0))
      (eraseFacts [factAB 1 2 0 (by decide)])
      (fun atom : Atom => atom = conclusionAC) conclusionAC = false := by
  exact decideInstantiatedGoal_false_of_not inventory
    (applications 1 2 0) [factAB 1 2 0 (by decide)]
    (fun atom : Atom => atom = conclusionAC) conclusionAC rfl (by decide)

end ScopedOrderExample
end GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference.Finite
