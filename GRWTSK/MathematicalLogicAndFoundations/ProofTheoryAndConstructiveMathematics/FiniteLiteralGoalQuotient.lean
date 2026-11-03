import GRWTSK.MathematicalLogicAndFoundations.ProofTheoryAndConstructiveMathematics.GoalLocalFiberInference

/-!
# A complete finite carrier for the literal Nat.le_trans goal fixture

Local attribution: grwtsk contributors. MIT.

The literal atom type Nat × Nat is infinite: no FiniteInventory can
enumerate every possible pair. The earlier ScopedGoalFixture uses only
the image {(1,1),(0,0),(1,2)}, so a three-state carrier suffices for
this PARTICULAR source rule/fact inventory and the selected goal.

This module proves a surjective encoding of its four Bool-pair source
labels into Option Bool, an injective decoding of those three states
into the actual Nat-pair image, and exact commutation with the already
published map. It pulls back the established goal-local fiber-lifting
conditions through the injective decode, so both full FiniteInventory
arguments exist for the optimized Boolean query comparison.

The construction transports genuine proof-bearing applications and
facts under a pointwise proposition comparison. Its consumer is the
existing decideInstantiatedGoal_sound, not an unproved reflection of
Lean.Expr proof arguments or an assertion of a corpus-wide inventory.

SOURCE_PROOF_CANDIDATE. Compilation, fresh kernel replay, transitive
axiom audit, MetaM execution and raw Expr-to-proof-value extraction:
NOT_RUN / NOT_PROVED.
-/

set_option autoImplicit false

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference.Finite

universe u v w

/-- An injective post-map can pull a goal-local fiber-liftable source
inventory back to the smaller target carrier. Injectivity is needed
ONLY when converting the premise-coverage equalities back, not for
forward inference. -/
theorem goalLocalLiftable_pullback_injective
    {α : Type u} {β : Type v} {γ : Type w}
    (f : α → β) (decode : β → γ)
    (rules : List (Rule α)) (facts : List α) (keep : γ → Prop)
    (hinj : Function.Injective decode)
    (h : GoalLocalFiberLiftable
      (fun x => decode (f x)) rules facts keep) :
    GoalLocalFiberLiftable f rules facts (fun y => keep (decode y)) := by
  refine ⟨?_, ?_, ?_⟩
  · intro r hr hk p hp
    exact h.backward_closed r hr hk p hp
  · intro p hp a heq hk
    exact h.facts_lift p hp a (congrArg decode heq) hk
  · intro r hr a heq hk
    obtain ⟨r', hr', hc', hcovered⟩ :=
      h.rules_lift r hr a (congrArg decode heq) hk
    refine ⟨r', hr', hc', ?_⟩
    intro p' hp'
    obtain ⟨p, hp, hdecoded⟩ := hcovered p' hp'
    exact ⟨p, hp, hinj hdecoded⟩

/-- Goal-local lifting depends only on the pointwise map, not on the
definitional spelling of its function expression. -/
theorem goalLocalLiftable_congr_map
    {α : Type u} {β : Type v}
    (f g : α → β) (rules : List (Rule α)) (facts : List α)
    (keep : β → Prop) (hfg : ∀ x, f x = g x) :
    GoalLocalFiberLiftable f rules facts keep ↔
      GoalLocalFiberLiftable g rules facts keep := by
  have heq : f = g := funext hfg
  cases heq
  rfl

namespace FiniteLiteralGoal

abbrev Source := ScopedGoalFixture.Atom
abbrev Target := Option Bool

/-- Exactly three literal pairs occur in the image of the four source
labels for (a,b,c)=(1,1,2). The decoding function is injective. -/
def decode : Target → LiteralNatPair
  | none => (1, 1)
  | some false => (0, 0)
  | some true => (1, 2)

/-- Two distinct abstract labels may encode to some true. This is a
finite image representation, not an inverse map on source labels. -/
def encode : Source → Target
  | (false, false) => none
  | (false, true) => some true
  | (true, false) => some true
  | (true, true) => some false

theorem decode_injective : Function.Injective decode := by
  decide

/-- Every finite target atom is actually represented by a source label:
there are no fabricated target states or missing literal image points. -/
theorem encode_surjective : Function.Surjective encode := by
  intro y
  cases y with
  | none => exact ⟨ScopedOrderExample.premiseAB, rfl⟩
  | some b =>
      cases b with
      | false => exact ⟨ScopedOrderExample.unused, rfl⟩
      | true => exact ⟨ScopedOrderExample.premiseBC, rfl⟩

/-- This diagram commutes with the actual previously published literal
Nat-pair map, for ALL four source labels. -/
theorem decode_encode (x : Source) :
    decode (encode x) = ScopedGoalFixture.atomMap x := by
  rcases x with ⟨first, second⟩
  cases first <;> cases second <;> decide

/-- A complete inventory of the THREE STATE type, not of Nat × Nat.
Both its NoDup and its coverage theorem are part of the construction. -/
def inventory : FiniteInventory Target where
  vertices := [none, some false, some true]
  nodup := by decide
  complete := by
    intro x
    cases x with
    | none => decide
    | some b => cases b <;> decide

def meaning (y : Target) : Prop := literalPairMeaning (decode y)
def keep (y : Target) : Prop := ScopedGoalFixture.keep (decode y)

/-- Pointwise truth comparison, including the unused label and the two
colliding labels; no proof follows from the source expression's name. -/
theorem source_meaning_iff (x : Source) :
    ScopedOrderExample.Meaning 1 1 2 x ↔ meaning (encode x) := by
  change ScopedOrderExample.Meaning 1 1 2 x ↔
    literalPairMeaning (decode (encode x))
  rw [decode_encode]
  exact scopedMeaning_to_literal_iff 1 1 2 x

/-- Import the already proved local lifting theorem on literal Nat pairs.
The resulting finite-map theorem is valid precisely because decode is
injective and its composition equals the original literal map. -/
theorem finite_goal_liftable :
    GoalLocalFiberLiftable encode
      ScopedGoalFixture.rules ScopedGoalFixture.facts keep := by
  have hcomposite :
      GoalLocalFiberLiftable (fun x : Source => decode (encode x))
        ScopedGoalFixture.rules ScopedGoalFixture.facts
        ScopedGoalFixture.keep := by
    exact (goalLocalLiftable_congr_map
      (fun x : Source => decode (encode x))
      ScopedGoalFixture.atomMap
      ScopedGoalFixture.rules ScopedGoalFixture.facts
      ScopedGoalFixture.keep decode_encode).mpr
        ScopedGoalFixture.local_fiber_liftable
  exact goalLocalLiftable_pullback_injective encode decode
    ScopedGoalFixture.rules ScopedGoalFixture.facts
    ScopedGoalFixture.keep decode_injective hcomposite

theorem selected_goal_kept :
    keep (encode ScopedOrderExample.premiseAB) := by decide

/-- Exact mapped occurrence lists, with no OR-flattening. The source
transitivity rule has both premises and the separate goal rule remains. -/
theorem rules_exact :
    ScopedGoalFixture.rules.map (forwardRuleMap encode) =
      [⟨[none, some true], some true⟩,
       ⟨[some false], none⟩] := rfl

theorem facts_exact :
    ScopedGoalFixture.facts.map encode = [some false, some true] := rfl

/-- The now-applicable finite-query theorem compares complete inventories
on BOTH sides and exactly corresponding goal predicates. -/
theorem optimized_queries_agree :
    decideSourceGoalPruned ScopedOrderExample.inventory
      ScopedGoalFixture.rules ScopedGoalFixture.facts
      (fun x : Source => x = ScopedOrderExample.premiseAB)
      ScopedOrderExample.premiseAB = true ↔
    decideSourceGoalPruned inventory
      (ScopedGoalFixture.rules.map (forwardRuleMap encode))
      (ScopedGoalFixture.facts.map encode)
      (fun y : Target => y = encode ScopedOrderExample.premiseAB)
      (encode ScopedOrderExample.premiseAB) = true := by
  exact decideGoalPruned_iff_of_goal_local_lifts
    ScopedOrderExample.inventory inventory encode
    ScopedGoalFixture.rules ScopedGoalFixture.facts
    keep finite_goal_liftable
    (fun x : Source => x = ScopedOrderExample.premiseAB)
    (fun y : Target => y = encode ScopedOrderExample.premiseAB)
    ScopedOrderExample.premiseAB rfl rfl selected_goal_kept

theorem source_query_true :
    decideSourceGoalPruned ScopedOrderExample.inventory
      ScopedGoalFixture.rules ScopedGoalFixture.facts
      (fun x : Source => x = ScopedOrderExample.premiseAB)
      ScopedOrderExample.premiseAB = true := by
  apply (decideSourceGoalPruned_eq_true_iff
    ScopedOrderExample.inventory ScopedGoalFixture.rules
    ScopedGoalFixture.facts
    (fun x : Source => x = ScopedOrderExample.premiseAB)
    ScopedOrderExample.premiseAB rfl).mpr
  exact ScopedGoalFixture.source_goal_derivable

theorem finite_query_true :
    decideSourceGoalPruned inventory
      (ScopedGoalFixture.rules.map (forwardRuleMap encode))
      (ScopedGoalFixture.facts.map encode)
      (fun y : Target => y = encode ScopedOrderExample.premiseAB)
      (encode ScopedOrderExample.premiseAB) = true :=
  optimized_queries_agree.mp source_query_true

/-- Each target application transports a REAL source consequence proof.
The untrusted SourceClaim field is reset by forwardCertificateMap. -/
def applications : List (InstantiatedApplication Target meaning) :=
  ScopedGoalFixture.applications.map
    (forwardCertificateMap encode
      (ScopedOrderExample.Meaning 1 1 2) meaning source_meaning_iff)

def mapFact
    (fact : InstantiatedFact Source (ScopedOrderExample.Meaning 1 1 2)) :
    InstantiatedFact Target meaning where
  atom := encode fact.atom
  evidence := (source_meaning_iff fact.atom).mp fact.evidence

def facts : List (InstantiatedFact Target meaning) :=
  ScopedGoalFixture.inputFacts.map mapFact

/-- The transported proof-carrying records have EXACTLY the executable
rule and fact lists; semantic certificates are not unbound metadata. -/
theorem erased_rules_exact :
    eraseApplications applications =
      ScopedGoalFixture.rules.map (forwardRuleMap encode) := rfl

theorem erased_facts_exact :
    eraseFacts facts = ScopedGoalFixture.facts.map encode := rfl

/-- Consumer-facing source return: the executable finite query and
proof-bearing typed facts together establish the real interpreted goal. -/
theorem finite_query_proves_literal_goal :
    meaning (encode ScopedOrderExample.premiseAB) := by
  apply decideInstantiatedGoal_sound inventory applications facts
    (fun y : Target => y = encode ScopedOrderExample.premiseAB)
    (encode ScopedOrderExample.premiseAB) rfl
  rw [erased_rules_exact, erased_facts_exact]
  exact finite_query_true

/-- Return all the way to the actual source proposition. This uses the
existing genuine Nat.le_trans and Nat.le_refl proofs, not Lean.Expr replay. -/
theorem finite_query_proves_source_goal :
    ScopedOrderExample.Meaning 1 1 2 ScopedOrderExample.premiseAB :=
  (source_meaning_iff ScopedOrderExample.premiseAB).mpr
    finite_query_proves_literal_goal

end FiniteLiteralGoal
end GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference.Finite
