import GRWTSK.MathematicalLogicAndFoundations.ProofTheoryAndConstructiveMathematics.NoninjectiveNatLeTransTransport

/-!
# When a many-to-one inference representation supports reverse transport

Local attribution: grwtsk contributors. MIT.

The earlier forwardRuleMap theorem proves forward derivability for any atom map.
An arbitrary noninjective map need NOT reflect derivations: a target fact may
have several source preimages, not all supported by source facts. This module
provides sufficient, explicit FIBER-LIFTING hypotheses for the reverse theorem.

(1) Every source atom in the image fiber of an available fact is a fact.
(2) Whenever a source rule's image concludes at a target image, EVERY source
    atom in that conclusion fiber has a source rule concluding there, whose
    joint premises are each covered by an image of an original premise.

The proof transports the target derivation to a predicate requiring a source
derivation at EVERY preimage. It then returns a source derivation at the
original goal. The condition can hold for noninjective maps. It is stronger
than mere pointwise agreement of proposition meanings, and need not be
necessary for particular queries.

This is a relative inference/model theorem over SUPPLIED rules and facts.
It is not theorem-expression extraction, a proof identity assertion, a
kernel receipt, or a claim about unindexed repository theorems.

SOURCE_PROOF_CANDIDATE. Compilation, fresh kernel replay, transitive axiom
audit and native MetaM execution remain NOT_RUN.
-/

set_option autoImplicit false

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference.Finite

universe u v

/-- Sufficient source-fiber lifting conditions. In rule_lifts, the original
premise list is a conjunction, and each premise of the lifted source rule
must have an image present in that ORIGINAL list. Extra target edges do not
manufacture the missing individual source facts. -/
structure FiberLiftable {α : Type u} {β : Type v}
    (f : α → β) (rules : List (Rule α)) (facts : List α) : Prop where
  facts_lift :
    ∀ (a p : α), p ∈ facts → f p = f a → a ∈ facts
  rules_lift :
    ∀ (r : Rule α), r ∈ rules →
      ∀ (a : α), f a = f r.conclusion →
        ∃ r' : Rule α, r' ∈ rules ∧ r'.conclusion = a ∧
          ∀ p' : α, p' ∈ r'.premises →
            ∃ p : α, p ∈ r.premises ∧ f p = f p'

/-- Conditional reverse theorem. The semantic predicate on a target atom y
is "EVERY source preimage of y is derivable". The facts_lift condition makes
this predicate true on all mapped facts; rules_lift makes it closed under
every mapped conjunctive rule. The existing derivable_sound then applies. -/
theorem derivable_backward_of_fiber_liftable
    {α : Type u} {β : Type v}
    (f : α → β) (rules : List (Rule α)) (facts : List α)
    (lift : FiberLiftable f rules facts) {a : α}
    (h : Derivable
      (fun r => r ∈ rules.map (forwardRuleMap f))
      (fun p => p ∈ facts.map f) (f a)) :
    Derivable (fun r => r ∈ rules) (fun p => p ∈ facts) a := by
  let sourceDerivable : α → Prop :=
    Derivable (fun r => r ∈ rules) (fun p => p ∈ facts)
  let holds : β → Prop := fun y => ∀ x : α, f x = y → sourceDerivable x
  have hf : Included (fun y => y ∈ facts.map f) holds := by
    intro y hy x hx
    obtain ⟨p, hp, hImage⟩ := List.mem_map.mp hy
    exact Derivable.assumption (lift.facts_lift x p hp
      (hImage.trans hx.symm))
  have hr : ClosedUnder
      (fun r => r ∈ rules.map (forwardRuleMap f)) holds := by
    intro mapped hm hpre x hx
    obtain ⟨r, hRule, hImageRule⟩ := List.mem_map.mp hm
    have hConclusion : f r.conclusion = mapped.conclusion :=
      congrArg Rule.conclusion hImageRule
    obtain ⟨r', hr', hc', hcovered⟩ :=
      lift.rules_lift r hRule x (hx.trans hConclusion.symm)
    have hp' : ∀ p', p' ∈ r'.premises → sourceDerivable p' := by
      intro p' hmember
      obtain ⟨p, hp, hEqual⟩ := hcovered p' hmember
      have hMapped : f p ∈ mapped.premises := by
        rw [← hImageRule]
        change f p ∈ r.premises.map f
        exact List.mem_map.mpr ⟨p, hp, rfl⟩
      exact hpre (f p) hMapped p' hEqual.symm
    have hLifted : sourceDerivable r'.conclusion :=
      Derivable.application r' hr' hp'
    rw [hc'] at hLifted
    exact hLifted
  exact (derivable_sound hf hr h) a rfl

/-- Forward + fiber-liftable backward = exact derivability comparison for
each source atom. Unlike ExactRepresentation this does not require an
inverse atom function, but DOES require the stronger rule/fact hypotheses. -/
theorem derivable_iff_mapped_of_fiber_liftable
    {α : Type u} {β : Type v}
    (f : α → β) (rules : List (Rule α)) (facts : List α)
    (lift : FiberLiftable f rules facts) (a : α) :
    Derivable (fun r => r ∈ rules) (fun p => p ∈ facts) a ↔
      Derivable
        (fun r => r ∈ rules.map (forwardRuleMap f))
        (fun p => p ∈ facts.map f) (f a) := by
  constructor
  · exact derivable_forward_under_map f rules facts
  · exact derivable_backward_of_fiber_liftable f rules facts lift

/-- Thus the original derivability itself is constant on every atom fiber
WHEN the finite rule/fact inventory obeys the lifting conditions. Merely
having pointwise equivalent proposition meanings does not imply this. -/
theorem derivable_constant_on_fibers
    {α : Type u} {β : Type v}
    (f : α → β) (rules : List (Rule α)) (facts : List α)
    (lift : FiberLiftable f rules facts) (x y : α)
    (heq : f x = f y) :
    Derivable (fun r => r ∈ rules) (fun p => p ∈ facts) x ↔
      Derivable (fun r => r ∈ rules) (fun p => p ∈ facts) y := by
  constructor
  · intro hx
    have hm := derivable_forward_under_map f rules facts hx
    rw [heq] at hm
    exact derivable_backward_of_fiber_liftable f rules facts lift hm
  · intro hy
    have hm := derivable_forward_under_map f rules facts hy
    rw [← heq] at hm
    exact derivable_backward_of_fiber_liftable f rules facts lift hm

/-- A Boolean goal query is invariant on the mapped instance under
fiber-liftability, provided BOTH queries select the corresponding goal
and each atom inventory completely covers its own type. Goal coverage
is not inferred from source-name similarity. -/
theorem decideGoalPruned_iff_mapped_of_fiber_liftable
    {α : Type u} {β : Type v}
    [DecidableEq α] [DecidableEq β]
    (sourceInventory : FiniteInventory α)
    (targetInventory : FiniteInventory β)
    (f : α → β) (rules : List (Rule α)) (facts : List α)
    (lift : FiberLiftable f rules facts)
    (sourceGoals : α → Prop) [DecidablePred sourceGoals]
    (targetGoals : β → Prop) [DecidablePred targetGoals]
    (a : α) (ha : sourceGoals a) (hb : targetGoals (f a)) :
    decideSourceGoalPruned sourceInventory rules facts sourceGoals a = true ↔
      decideSourceGoalPruned targetInventory
        (rules.map (forwardRuleMap f)) (facts.map f)
        targetGoals (f a) = true := by
  exact (decideSourceGoalPruned_eq_true_iff
      sourceInventory rules facts sourceGoals a ha).trans
    ((derivable_iff_mapped_of_fiber_liftable f rules facts lift a).trans
      (decideSourceGoalPruned_eq_true_iff targetInventory
        (rules.map (forwardRuleMap f)) (facts.map f)
        targetGoals (f a) hb).symm)

/-- A pointwise semantic interpretation is itself constant on fibers.
Unlike the preceding derivability theorem, this needs only the ACTUAL
property comparison; the two conditions are logically distinct. -/
theorem meaning_constant_on_fibers
    {α : Type u} {β : Type v}
    (f : α → β) (P : α → Prop) (Q : β → Prop)
    (comparison : ∀ x, P x ↔ Q (f x))
    (x y : α) (heq : f x = f y) :
    P x ↔ P y := by
  have hEq : Q (f x) ↔ Q (f y) := by
    rw [heq]
  exact (comparison x).trans (hEq.trans (comparison y).symm)

/-- A noninjective representation can satisfy the lifting conditions:
both Boolean atoms are initial facts, and no rules are supplied.
This proves the condition is not merely a disguised injectivity axiom. -/
def collapseBoolToUnit (_ : Bool) : Unit := ()

theorem collapseBool_all_facts_liftable :
    FiberLiftable collapseBoolToUnit ([] : List (Rule Bool))
      [false, true] := by
  constructor
  · intro a p hp hEq
    cases a <;> simp
  · intro r hr
    cases hr

/-- In contrast, the one-fact collision from the previous source is not
fiber-liftable: its other source atom is absent despite the same image. -/
theorem collapseBool_one_fact_not_liftable :
    ¬ FiberLiftable collapseBoolToUnit ([] : List (Rule Bool))
      [false] := by
  intro h
  have hfalse : (true : Bool) ∈ [false] :=
    h.facts_lift true false (by simp) rfl
  simpa using hfalse

end GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference.Finite
