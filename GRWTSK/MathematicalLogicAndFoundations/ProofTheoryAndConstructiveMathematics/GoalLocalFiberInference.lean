import GRWTSK.MathematicalLogicAndFoundations.ProofTheoryAndConstructiveMathematics.FiniteFiberLiftedInference

/-!
# Goal-local fiber lifting for noninjective finite inference

Local attribution: grwtsk contributors. MIT.

The global FiberLiftable condition may fail because of a fact or a rule
outside a chosen goal's backward dependency cone. This source isolates the
precise local alternative: an explicitly supplied target-atom predicate
contains the goal, is backward closed under every available mapped rule,
and lifts target facts and rules only inside that predicate.

The reverse derivation proof uses the target predicate
  keep(y) -> forall x with f(x)=y, sourceDerivable(x).
This is a semantic logical return, not an extraction of Lean.Expr proof
terms or a claim that any unsupported rule is valid.

A concrete Nat.le_trans source inventory at (a,b,c)=(1,1,2) provides
a nontrivial goal proof from a separately proved tautological input.
The target atom for an irrelevant premise collides with the conclusion
of transitivity: global fact lifting FAILS, but the chosen goal cone is
closed and has complete local lifts. This is not a global bijection.

SOURCE_PROOF_CANDIDATE. Compilation, fresh kernel replay, transitive
axiom audit, MetaM execution, source-binding and general reflection:
NOT_RUN / NOT_PROVED.
-/

set_option autoImplicit false

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference.Finite

universe u v

/-- Only derivations inside a backward-closed target region are transported
backward. The original rules and facts, and each whole premise list, remain
unchanged. No target-local condition can establish an unrelated source goal. -/
structure GoalLocalFiberLiftable {α : Type u} {β : Type v}
    (f : α → β) (rules : List (Rule α)) (facts : List α)
    (keep : β → Prop) : Prop where
  backward_closed :
    ∀ r, r ∈ rules → keep (f r.conclusion) →
      ∀ p, p ∈ r.premises → keep (f p)
  facts_lift :
    ∀ p, p ∈ facts → ∀ a, f p = f a →
      keep (f a) → a ∈ facts
  rules_lift :
    ∀ r, r ∈ rules → ∀ a, f a = f r.conclusion →
      keep (f a) →
        ∃ r' : Rule α, r' ∈ rules ∧ r'.conclusion = a ∧
          ∀ p', p' ∈ r'.premises →
            ∃ p, p ∈ r.premises ∧ f p = f p'

/-- The reverse theorem is proved by source-level induction through the
existing least-model soundness principle. The invariant is conditional on
keep; backward closure supplies keep for *every* mapped premise. -/
theorem derivable_reverse_of_goal_local_lifts
    {α : Type u} {β : Type v}
    (f : α → β) (rules : List (Rule α)) (facts : List α)
    (keep : β → Prop)
    (lift : GoalLocalFiberLiftable f rules facts keep)
    {a : α} (ha : keep (f a))
    (h : Derivable
      (fun r => r ∈ rules.map (forwardRuleMap f))
      (fun p => p ∈ facts.map f) (f a)) :
    Derivable (fun r => r ∈ rules) (fun p => p ∈ facts) a := by
  let sourceD : α → Prop :=
    Derivable (fun r => r ∈ rules) (fun p => p ∈ facts)
  let holds : β → Prop :=
    fun y => keep y → ∀ x : α, f x = y → sourceD x
  have factsSound : Included (fun y => y ∈ facts.map f) holds := by
    intro y hy hkeep x hx
    obtain ⟨p, hp, hpy⟩ := List.mem_map.mp hy
    have hpx : f p = f x := hpy.trans hx.symm
    have hkx : keep (f x) := by rw [hx]; exact hkeep
    exact Derivable.assumption (lift.facts_lift p hp x hpx hkx)
  have rulesSound : ClosedUnder
      (fun r => r ∈ rules.map (forwardRuleMap f)) holds := by
    intro mappedRule hRule hp hkeep x hx
    obtain ⟨r, hr, hEq⟩ := List.mem_map.mp hRule
    have hConclusion : f r.conclusion = mappedRule.conclusion :=
      congrArg Rule.conclusion hEq
    have hfx : f x = f r.conclusion := hx.trans hConclusion.symm
    have hkx : keep (f x) := by rw [hx]; exact hkeep
    obtain ⟨r', hr', hconcl', hcovered⟩ :=
      lift.rules_lift r hr x hfx hkx
    have hSourcePremises : ∀ p', p' ∈ r'.premises → sourceD p' := by
      intro p' hPremise
      obtain ⟨p, hpOriginal, hpImage⟩ := hcovered p' hPremise
      have hMappedPremise : f p ∈ mappedRule.premises := by
        rw [← hEq]
        change f p ∈ r.premises.map f
        exact List.mem_map.mpr ⟨p, hpOriginal, rfl⟩
      have hkOriginal : keep (f p) :=
        lift.backward_closed r hr
          (by rw [hConclusion]; exact hkeep) p hpOriginal
      exact hp (f p) hMappedPremise hkOriginal p' hpImage.symm
    have hSource : sourceD r'.conclusion :=
      Derivable.application r' hr' hSourcePremises
    rw [hconcl'] at hSource
    exact hSource
  exact (derivable_sound factsSound rulesSound h) ha a rfl

/-- The forward theorem plus goal-local reverse lifting gives exactly the
answer at selected source goals, without asserting global fiber invariance. -/
theorem derivable_iff_of_goal_local_lifts
    {α : Type u} {β : Type v}
    (f : α → β) (rules : List (Rule α)) (facts : List α)
    (keep : β → Prop)
    (lift : GoalLocalFiberLiftable f rules facts keep)
    (a : α) (ha : keep (f a)) :
    Derivable (fun r => r ∈ rules) (fun p => p ∈ facts) a ↔
      Derivable
        (fun r => r ∈ rules.map (forwardRuleMap f))
        (fun p => p ∈ facts.map f) (f a) := by
  constructor
  · exact derivable_forward_under_map f rules facts
  · exact derivable_reverse_of_goal_local_lifts f rules facts keep lift ha

/-- The finite selected goal-pruning queries now agree in the local region.
Each inventory is complete for its atom TYPE. Neither query infers omitted
rules or tests an actual Lean.Expr local-context proof term. -/
theorem decideGoalPruned_iff_of_goal_local_lifts
    {α : Type u} {β : Type v}
    [DecidableEq α] [DecidableEq β]
    (sourceInventory : FiniteInventory α)
    (targetInventory : FiniteInventory β)
    (f : α → β) (rules : List (Rule α)) (facts : List α)
    (keep : β → Prop)
    (lift : GoalLocalFiberLiftable f rules facts keep)
    (sourceGoals : α → Prop) [DecidablePred sourceGoals]
    (targetGoals : β → Prop) [DecidablePred targetGoals]
    (a : α) (ha : sourceGoals a) (hb : targetGoals (f a))
    (hk : keep (f a)) :
    decideSourceGoalPruned sourceInventory rules facts sourceGoals a = true ↔
      decideSourceGoalPruned targetInventory
        (rules.map (forwardRuleMap f)) (facts.map f)
        targetGoals (f a) = true := by
  exact (decideSourceGoalPruned_eq_true_iff
    sourceInventory rules facts sourceGoals a ha).trans
      ((derivable_iff_of_goal_local_lifts f rules facts keep lift a hk).trans
        (decideSourceGoalPruned_eq_true_iff targetInventory
          (rules.map (forwardRuleMap f)) (facts.map f)
          targetGoals (f a) hb).symm)

namespace ScopedGoalFixture

open ScopedOrderExample

abbrev Atom := ScopedOrderExample.Atom
def atomMap : Atom → LiteralNatPair := scopedAtomToLiteralPair 1 1 2
def transRule : Rule Atom := (orderTransitivity 1 1 2).rule
def goalRule : Rule Atom := ⟨[unused], premiseAB⟩
def rules : List (Rule Atom) := [transRule, goalRule]
def facts : List Atom := [unused, premiseBC]
def keep : LiteralNatPair → Prop :=
  fun y => y = (1, 1) ∨ y = (0, 0)

/-- Even with a natural-number atom collision outside the goal cone,
the source list contains a genuine second proof-bearing rule. It is sound:
the unused Boolean label denotes True, and the goal is 1 ≤ 1. -/
def goalApplication : InstantiatedApplication Atom (Meaning 1 1 2) where
  rule := goalRule
  consequence := by
    intro _
    exact Nat.le_refl 1

def unusedFact : InstantiatedFact Atom (Meaning 1 1 2) where
  atom := unused
  evidence := True.intro

def bcFact : InstantiatedFact Atom (Meaning 1 1 2) where
  atom := premiseBC
  evidence := by decide

def applications : List (InstantiatedApplication Atom (Meaning 1 1 2)) :=
  [orderTransitivity 1 1 2, goalApplication]

def inputFacts : List (InstantiatedFact Atom (Meaning 1 1 2)) :=
  [unusedFact, bcFact]

theorem erasedRules_exact : eraseApplications applications = rules := rfl
theorem erasedFacts_exact : eraseFacts inputFacts = facts := rfl

/-- The target fiber (1,2) contains distinct BC and AC labels, so the
source fact BC is NOT globally saturated. The chosen goal is AB=(1,1);
the backward cone from this goal contains only (1,1) and (0,0). -/
theorem global_fiber_lift_fails :
    ¬ FiberLiftable atomMap rules facts := by
  intro h
  have hbad : conclusionAC ∈ facts :=
    h.facts_lift conclusionAC premiseBC
      (by simp [facts])
      (by decide)
  have hnot : conclusionAC ∉ facts := by decide
  exact hnot hbad

/-- A proper goal-local region: the two target atoms (1,1), (0,0).
The unrelated target atom (1,2) is outside the selected backward cone. -/
theorem keep_goal : keep (atomMap premiseAB) := by decide

/-- Each one-step prerequisite in the selected target slice remains
inside keep; both original rule occurrences are examined. -/
theorem keep_backward_closed :
    ∀ r, r ∈ rules → keep (atomMap r.conclusion) →
      ∀ p, p ∈ r.premises → keep (atomMap p) := by
  intro r hr hk p hp
  have hr' : r = transRule ∨ r = goalRule := by
    change r ∈ [transRule, goalRule] at hr
    simpa only [List.mem_cons, List.not_mem_nil, or_false] using hr
  rcases hr' with h | h
  · subst r
    have hn : ¬ keep (atomMap transRule.conclusion) := by decide
    exact False.elim (hn hk)
  · subst r
    have hp' : p = unused := by
      change p ∈ [unused] at hp
      simpa using hp
    subst p
    decide

/-- Facts lift exactly within the goal region. Exhaustive four-atom
case analysis is source-level logic, not a separate native test receipt. -/
theorem facts_lift_on_keep :
    ∀ p, p ∈ facts → ∀ a, atomMap p = atomMap a →
      keep (atomMap a) → a ∈ facts := by
  intro p hp a heq hk
  rcases p with ⟨u, v⟩
  rcases a with ⟨x, y⟩
  cases u <;> cases v <;> cases x <;> cases y <;>
    simp_all [facts, atomMap, keep, scopedAtomToLiteralPair,
      unused, premiseBC]

/-- The original transitivity rule concludes in the discarded target
fiber (1,2). Only the source goal rule has a conclusion in keep;
its only source conclusion fiber is premiseAB. -/
theorem rules_lift_on_keep :
    ∀ r, r ∈ rules → ∀ a, atomMap a = atomMap r.conclusion →
      keep (atomMap a) →
      ∃ r' : Rule Atom, r' ∈ rules ∧ r'.conclusion = a ∧
        ∀ p', p' ∈ r'.premises →
          ∃ p, p ∈ r.premises ∧ atomMap p = atomMap p' := by
  intro r hr a hEq hk
  have hR : r = transRule ∨ r = goalRule := by
    change r ∈ [transRule, goalRule] at hr
    simpa only [List.mem_cons, List.not_mem_nil, or_false] using hr
  rcases hR with h | h
  · subst r
    have hkTrans : keep (atomMap transRule.conclusion) := by
      rw [← hEq]
      exact hk
    have hn : ¬ keep (atomMap transRule.conclusion) := by decide
    exact False.elim (hn hkTrans)
  · subst r
    have ha : a = premiseAB := by
      rcases a with ⟨x, y⟩
      cases x <;> cases y <;>
        simp_all [atomMap, scopedAtomToLiteralPair, goalRule, premiseAB]
    subst a
    refine ⟨goalRule, ?_, rfl, ?_⟩
    · change goalRule ∈ [transRule, goalRule]
      simp
    · intro p' hp'
      exact ⟨p', hp', rfl⟩

theorem local_fiber_liftable :
    GoalLocalFiberLiftable atomMap rules facts keep := by
  exact ⟨keep_backward_closed, facts_lift_on_keep, rules_lift_on_keep⟩

/-- The selected source goal is NOT an initial fact. Its positive derivation
below therefore uses a real source rule and the original unused fact. -/
theorem source_goal_not_input : premiseAB ∉ facts := by decide

/-- Source derivation of the selected goal is genuinely nonzero-depth:
unused is an input, while AB is concluded by the additional sound rule. -/
theorem source_goal_derivable :
    Derivable (fun r => r ∈ rules) (fun p => p ∈ facts) premiseAB := by
  apply Derivable.application goalRule (by simp [rules])
  intro p hp
  have heq : p = unused := by
    change p ∈ [unused] at hp
    simpa using hp
  subst p
  exact Derivable.assumption (by simp [facts])

/-- A positive target query is justified by the complete source proof,
and the converse is licensed ONLY by the established local-fiber check. -/
theorem selected_goal_derivable_iff :
    Derivable (fun r => r ∈ rules) (fun p => p ∈ facts) premiseAB ↔
      Derivable
        (fun r => r ∈ rules.map (forwardRuleMap atomMap))
        (fun p => p ∈ facts.map atomMap) (atomMap premiseAB) :=
  derivable_iff_of_goal_local_lifts
    atomMap rules facts keep local_fiber_liftable premiseAB keep_goal

end ScopedGoalFixture

end GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference.Finite
