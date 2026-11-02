import GRWTSK.MathematicalLogicAndFoundations.ProofTheoryAndConstructiveMathematics.NatLeTransBinderAbstraction
import GRWTSK.MathematicalLogicAndFoundations.ProofTheoryAndConstructiveMathematics.LeanExprScopedNatLeTransClosure

/-!
# Sound noninjective transport between two Nat.le_trans inference carriers

Local attribution: grwtsk contributors. MIT.

The maintained scoped-order source uses four distinct Bool-pair atom labels.
The maintained literal source uses Nat-pair propositions. Their natural
atom map is NOT generally injective: e.g. a=b=c merges premise labels.
A full ExactRepresentation bijection is therefore unjustified.

Nevertheless the complete AND-premise rule and proof-bearing consequence
transport in the FORWARD direction under any map whose pointwise
proposition meanings agree. The reverse direction needs more than this
and has a concrete counterexample. The resulting literal rule agrees
with the separately authored actual Lean.Expr source family.

No raw Expr proof argument is converted to a Lean proof by this theorem.
Source labels and Git metadata are not proof authority.

SOURCE_PROOF_CANDIDATE. Compilation, kernel replay, transitive trust
audit and actual Expr-to-proof-value refinement remain NOT_RUN.
-/

set_option autoImplicit false

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference.Finite

universe u v

/-- Forward image of one whole rule: each premise occurrence is retained. -/
def forwardRuleMap {α : Type u} {β : Type v}
    (f : α → β) (rule : Rule α) : Rule β :=
  ⟨rule.premises.map f, f rule.conclusion⟩

/-- Any derivation transports forward even if distinct atoms collide.
This is deliberately not a reverse-derivability theorem. -/
theorem derivable_forward_under_map {α : Type u} {β : Type v}
    (f : α → β) (rules : List (Rule α)) (facts : List α) {a : α}
    (h : Derivable (fun r => r ∈ rules) (fun p => p ∈ facts) a) :
    Derivable
      (fun r => r ∈ rules.map (forwardRuleMap f))
      (fun p => p ∈ facts.map f) (f a) := by
  induction h with
  | assumption hf =>
      exact Derivable.assumption (List.mem_map.mpr ⟨_, hf, rfl⟩)
  | application rule hr _ ih =>
      apply Derivable.application (forwardRuleMap f rule)
        (List.mem_map.mpr ⟨rule, hr, rfl⟩)
      intro p hp
      change p ∈ rule.premises.map f at hp
      obtain ⟨q, hq, heq⟩ := List.mem_map.mp hp
      subst p
      exact ih q hq

/-- Proof-bearing forward map. The proposition comparison supplies the
semantic bridge; the output does not retain unauthenticated SourceClaim. -/
def forwardCertificateMap {α : Type u} {β : Type v}
    (f : α → β) (P : α → Prop) (Q : β → Prop)
    (compare : ∀ x, P x ↔ Q (f x))
    (app : InstantiatedApplication α P) :
    InstantiatedApplication β Q where
  sourceClaim := none
  rule := forwardRuleMap f app.rule
  consequence := by
    intro htarget
    apply (compare app.rule.conclusion).mp
    apply app.consequence
    intro p hp
    apply (compare p).mpr
    apply htarget (f p)
    change f p ∈ app.rule.premises.map f
    exact List.mem_map.mpr ⟨p, hp, rfl⟩

/-- The fourth unused label denotes a true proposition at (0,0). -/
def scopedAtomToLiteralPair (a b c : Nat) :
    ScopedOrderExample.Atom → LiteralNatPair
  | (false, false) => (a, b)
  | (false, true) => (b, c)
  | (true, false) => (a, c)
  | (true, true) => (0, 0)

/-- The pointwise meanings agree despite possible collisions. -/
theorem scopedMeaning_to_literal_iff (a b c : Nat)
    (atom : ScopedOrderExample.Atom) :
    ScopedOrderExample.Meaning a b c atom ↔
      literalPairMeaning (scopedAtomToLiteralPair a b c atom) := by
  rcases atom with ⟨first, second⟩
  cases first <;> cases second <;>
    simp [ScopedOrderExample.Meaning, scopedAtomToLiteralPair, literalPairMeaning]

/-- Proof-bearing image of the existing Bool-label certificate. -/
def scopedCertificateToLiteral (a b c : Nat) :
    InstantiatedApplication LiteralNatPair literalPairMeaning :=
  forwardCertificateMap (scopedAtomToLiteralPair a b c)
    (ScopedOrderExample.Meaning a b c) literalPairMeaning
    (scopedMeaning_to_literal_iff a b c)
    (ScopedOrderExample.orderTransitivity a b c)

/-- Exact structural equality with the separately authored literal rule. -/
theorem scoped_literal_rule_exact (a b c : Nat) :
    (scopedCertificateToLiteral a b c).rule =
      literalTransRule a b c := rfl

/-- The other source's actual Lean.Expr application witness has the same
mathematical rule, but its raw proof Exprs remain unreified. -/
theorem literal_expr_rule_agrees {source : Lean.Expr}
    (w : LiteralNatLeTrans source) :
    (scopedCertificateToLiteral w.a w.b w.c).rule =
      w.toApplication.rule := rfl

/-- The source whose proof arguments are local FVars also yields this
same rule; scoped proof identity is NOT a portable object-level proof. -/
theorem scoped_expr_rule_agrees {source : Lean.Expr}
    (w : ScopedNatLeTrans source) :
    (scopedCertificateToLiteral w.a w.b w.c).rule =
      w.toLiteral.toApplication.rule := rfl

/-- The literal carrier requires precisely two jointly held facts,
even when the two propositions happen to be equal. -/
theorem literal_rule_premises_iff (a b c : Nat) :
    (∀ p, p ∈ (literalTransRule a b c).premises →
      literalPairMeaning p) ↔ (a ≤ b ∧ b ≤ c) := by
  constructor
  · intro hp
    exact ⟨hp (a, b) (by simp [literalTransRule]),
      hp (b, c) (by simp [literalTransRule])⟩
  · rintro ⟨hab, hbc⟩ p hp
    change p ∈ [(a, b), (b, c)] at hp
    have cases : p = (a, b) ∨ p = (b, c) := by
      simpa only [List.mem_cons, List.not_mem_nil, or_false] using hp
    rcases cases with first | second
    · subst p
      exact hab
    · subst p
      exact hbc

/-- The Boolean-label and literal-pair complete-premise predicates
agree for each fixed a,b,c. -/
theorem scoped_literal_premises_iff (a b c : Nat) :
    (∀ p, p ∈ (ScopedOrderExample.orderTransitivity a b c).rule.premises →
      ScopedOrderExample.Meaning a b c p) ↔
    (∀ p, p ∈ (literalTransRule a b c).premises →
      literalPairMeaning p) := by
  exact (scopedNatLeTrans_premises_iff a b c).trans
    (literal_rule_premises_iff a b c).symm

/-- Exact semantic consequence equivalence, not independence of proofs. -/
theorem scoped_literal_consequence_iff (a b c : Nat) :
    ((∀ p, p ∈ (ScopedOrderExample.orderTransitivity a b c).rule.premises →
      ScopedOrderExample.Meaning a b c p) →
      ScopedOrderExample.Meaning a b c ScopedOrderExample.conclusionAC) ↔
    ((∀ p, p ∈ (literalTransRule a b c).premises →
      literalPairMeaning p) →
      literalPairMeaning (literalTransRule a b c).conclusion) := by
  constructor
  · intro hs hl
    exact hs ((scoped_literal_premises_iff a b c).mpr hl)
  · intro hl hs
    exact hl ((scoped_literal_premises_iff a b c).mp hs)

/-- The natural map really fails to be injective for coincident indices. -/
theorem scoped_literal_map_not_injective :
    ¬ Function.Injective (scopedAtomToLiteralPair 0 0 0) := by
  intro h
  have same : scopedAtomToLiteralPair 0 0 0
      ScopedOrderExample.premiseAB =
      scopedAtomToLiteralPair 0 0 0 ScopedOrderExample.premiseBC := rfl
  have labels := h same
  have impossible : (false : Bool) = true := congrArg Prod.snd labels
  cases impossible

/-- A generic collision can create derivability at a target without
source derivability of the requested source atom. This refutes an
unconditional reverse map theorem. -/
theorem noninjective_reverse_derivability_is_unsound :
    ∃ f : Bool → Unit,
      Derivable (fun _ : Rule Unit => False)
        (fun x : Unit => x ∈ [f false]) (f true) ∧
      ¬ Derivable (fun _ : Rule Bool => False)
        (fun x : Bool => x ∈ [false]) true := by
  refine ⟨(fun _ => ()), ?_, ?_⟩
  · exact Derivable.assumption (by simp)
  · intro h
    have bad : (true : Bool) = false :=
      derivable_sound
        (holds := fun x : Bool => x = false)
        (by intro x hx; simpa using hx)
        (by intro r hr _; exact False.elim hr)
        h
    cases bad

end GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference.Finite
