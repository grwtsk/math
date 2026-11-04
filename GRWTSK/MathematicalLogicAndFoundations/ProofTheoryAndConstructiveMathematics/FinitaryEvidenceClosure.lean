import GRWTSK.ComputerScience.TheoryOfData.DataStructures.EvidencePolicyChange

/-!
# Finitary inference from retained evidence

Local attribution: grwtsk contributors.

Direct evidence support is an existential image. Composed reasoning additionally
uses inference rules, here with two premises. The resulting derivability operator
is extensive, monotone, idempotent, and the least rule-closed extension of its
base. Cut replaces primitive assumptions by actual derivations. Finite support is
proved by induction on the derivation, joining the two finite leaf supports.
Combined with `PolicyChange.finite_certificate`, every conclusion derived from
supported observations has a finite retained-evidence certificate.

Unlike direct existential image, inference closure need not preserve binary union:
one collection can supply the left premise and another the right premise. The
three-atom counterexample proves this obstruction. Rule revocation can also remove
a conclusion while all primitive observations remain present. These distinctions
matter for composable evidence reuse and prevent treating a merge as an automatic
acceptance decision. Binary rules are a stated calculus, not all possible logic.

Primary argument: derivation induction, cut, and exact witness construction.
Novelty and independent analytical review: not assessed. Compilation, fresh kernel
checking, and transitive axiom audit: NOT_RUN. No admitted proof terms.
-/

namespace GRWTSK.Evidence.Inference

universe u v

variable {O : Type u} {E : Type v}

inductive Derives (rule : O → O → O → Prop) (base : Collection O) : O → Prop where
  | leaf {o : O} : base o → Derives rule base o
  | combine {a b c : O} : rule a b c → Derives rule base a →
      Derives rule base b → Derives rule base c

def Closed (rule : O → O → O → Prop) (conclusions : Collection O) : Prop :=
  ∀ a b c, rule a b c → conclusions a → conclusions b → conclusions c

/-- Replace each primitive assumption by a derivation in another base. -/
theorem cut {rule : O → O → O → Prop} {source target : Collection O}
    (replace : ∀ o, source o → Derives rule target o) {o : O}
    (proof : Derives rule source o) : Derives rule target o := by
  induction proof with
  | leaf present => exact replace _ present
  | combine step _ _ leftIH rightIH => exact .combine step leftIH rightIH

theorem monotone {rule : O → O → O → Prop} {small large : Collection O}
    (includes : Collection.Included small large) {o : O}
    (proof : Derives rule small o) : Derives rule large o :=
  cut (fun p hp => .leaf (includes p hp)) proof

theorem rule_monotone {before after : O → O → O → Prop} {base : Collection O}
    (preserves : ∀ a b c, before a b c → after a b c) {o : O}
    (proof : Derives before base o) : Derives after base o := by
  induction proof with
  | leaf present => exact .leaf present
  | combine step _ _ leftIH rightIH =>
      exact .combine (preserves _ _ _ step) leftIH rightIH

theorem extensive (rule : O → O → O → Prop) (base : Collection O) :
    Collection.Included base (Derives rule base) := fun _ present => .leaf present

theorem derives_closed (rule : O → O → O → Prop) (base : Collection O) :
    Closed rule (Derives rule base) := fun _ _ _ step first second => .combine step first second

/-- Universal property of positive inference closure. -/
theorem least {rule : O → O → O → Prop} {base upper : Collection O}
    (contains : Collection.Included base upper) (closed : Closed rule upper) :
    Collection.Included (Derives rule base) upper := by
  intro o proof
  induction proof with
  | leaf present => exact contains _ present
  | combine step _ _ leftIH rightIH => exact closed _ _ _ step leftIH rightIH

theorem idempotent (rule : O → O → O → Prop) (base : Collection O) (o : O) :
    Derives rule (Derives rule base) o ↔ Derives rule base o := by
  constructor
  · intro proof
    exact cut (fun _ h => h) proof
  · exact Derives.leaf

/-- A finite conclusion never needs an infinite set of primitive leaves in this calculus. -/
theorem finite_support {rule : O → O → O → Prop} {base : Collection O} {o : O}
    (proof : Derives rule base o) :
    ∃ support : List O,
      (∀ p, p ∈ support → base p) ∧ Derives rule (fun p => p ∈ support) o := by
  induction proof with
  | @leaf o present =>
      refine ⟨[o], ?_, .leaf (by simp)⟩
      intro p member
      have same : p = o := by simpa using member
      cases same
      exact present
  | @combine a b c step _ _ leftIH rightIH =>
      obtain ⟨left, leftMembers, leftProof⟩ := leftIH
      obtain ⟨right, rightMembers, rightProof⟩ := rightIH
      refine ⟨left ++ right, ?_, ?_⟩
      · intro p member
        have alternatives : p ∈ left ∨ p ∈ right := by simpa using member
        exact alternatives.elim (leftMembers p) (rightMembers p)
      · apply Derives.combine step
        · exact monotone (fun p hp => by simp [hp]) leftProof
        · exact monotone (fun p hp => by simp [hp]) rightProof

/-- Finite proof support is converted to a finite subset of actual observed evidence. -/
theorem finite_evidence_certificate (rule : O → O → O → Prop)
    (valid : E → O → Prop) (observed : Collection E) {o : O}
    (proof : Derives rule (Supported valid observed) o) :
    ∃ certificate : List E,
      (∀ e, e ∈ certificate → observed e) ∧
      Derives rule (Supported valid (fun e => e ∈ certificate)) o := by
  obtain ⟨support, supported, derivation⟩ := finite_support proof
  obtain ⟨certificate, members, covered, _⟩ :=
    PolicyChange.finite_certificate support valid observed supported
  exact ⟨certificate, members, monotone covered derivation⟩

/-- Merging closed bases first and closing again gives exactly closure of the merged base. -/
theorem closure_of_closed_union (rule : O → O → O → Prop)
    (first second : Collection O) (o : O) :
    Derives rule (Collection.join (Derives rule first) (Derives rule second)) o ↔
      Derives rule (Collection.join first second) o := by
  constructor
  · intro proof
    apply cut (o := o) (fun p h => ?_) proof
    cases h with
    | inl hp => exact monotone (Collection.left_included_join first second) hp
    | inr hp => exact monotone (Collection.right_included_join first second) hp
  · intro proof
    apply monotone (o := o) (fun p h => ?_) proof
    cases h with
    | inl hp => exact Or.inl (.leaf hp)
    | inr hp => exact Or.inr (.leaf hp)

namespace Counterexample

inductive Atom where
  | left
  | right
  | conclusion

def pairRule (a b c : Atom) : Prop :=
  a = .left ∧ b = .right ∧ c = .conclusion

theorem only_left_closed : Closed pairRule (fun p => p = Atom.left) := by
  intro a b c step _ right
  have impossible : Atom.right = Atom.left := step.2.1.symm.trans right
  cases impossible

theorem only_right_closed : Closed pairRule (fun p => p = Atom.right) := by
  intro a b c step left _
  have impossible : Atom.left = Atom.right := step.1.symm.trans left
  cases impossible

/-- Evidence union is lawful, but derivability can exhibit synergy across collections. -/
theorem closure_does_not_preserve_union :
    Derives pairRule (Collection.join (fun p => p = Atom.left) (fun p => p = Atom.right))
      Atom.conclusion ∧
    ¬ Derives pairRule (fun p => p = Atom.left) Atom.conclusion ∧
    ¬ Derives pairRule (fun p => p = Atom.right) Atom.conclusion := by
  constructor
  · exact .combine (a := Atom.left) (b := Atom.right)
      ⟨rfl, rfl, rfl⟩ (.leaf (Or.inl rfl)) (.leaf (Or.inr rfl))
  · constructor
    · intro proof
      have impossible : Atom.conclusion = Atom.left :=
        least (fun _ h => h) only_left_closed _ proof
      cases impossible
    · intro proof
      have impossible : Atom.conclusion = Atom.right :=
        least (fun _ h => h) only_right_closed _ proof
      cases impossible

/-- Revoking the rule removes the composed conclusion, without deleting observations. -/
theorem revoked_rule_loses_conclusion :
    ¬ Derives (fun _ _ _ : Atom => False)
      (Collection.join (fun p => p = Atom.left) (fun p => p = Atom.right)) Atom.conclusion := by
  intro proof
  have closed : Closed (fun _ _ _ : Atom => False)
      (fun p => p = Atom.left ∨ p = Atom.right) := by
    intro _ _ _ impossible _ _
    exact False.elim impossible
  have impossible : Atom.conclusion = Atom.left ∨ Atom.conclusion = Atom.right :=
    least (fun _ h => h) closed _ proof
  cases impossible with
  | inl h => cases h
  | inr h => cases h

end Counterexample
end GRWTSK.Evidence.Inference
