/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / META_EXECUTION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.MathematicalLogicAndFoundations.ProofTheoryAndConstructiveMathematics.LeanExprNatLeTransReification

/-!
# The two original local proof arguments of a restricted Nat.le_trans application

The prior source recognizes the exact fully-applied Lean.Expr with three
natural-number LITERALS and two original proof Expr arguments. It cannot turn
these raw expressions into Lean proofs of propositions. This module adds a
nontrivial, deliberately restricted context-preserving refinement:

* Both proof arguments must be distinct local free variables, not textual names.
* Their fvar IDs must be present in the actual ambient Lean local context.
* Their declaration types must match the two original literal inequalities.
* The entire source expression must be Meta-type-correct with no metavariables.
* We bind precisely those original two free variables using mkLambdaFVars.
* The resulting proof expression must be closed, Meta-type-correct, and have the
  expected two-premise implication type in the same source environment.
* Applying the abstraction back to both original proof variables must be
  definitionally equal to the original source expression.

The MetaM procedure is a fallible SOURCE OBSERVER, not a theorem oracle. Its
returned Expr still requires an independent native/kernel acceptance receipt
and an exact source/commit/environment binding before it can be admitted by
Noe. In particular no boolean Meta result is reflected into a kernel proof of
`Meaning a`, and no unsupported binder context is silently accepted.

The proof-bearing InstantiatedApplication and certified lower sofic relation
are reused exactly: a certified edge still requires separately present, typed
Lean witnesses of both original inequalities.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference.Finite

open Lean
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CheckedApplicationSoficBridge

/-- A source-indexed witness of the ONLY supported local-premise pattern.
FVarId is a contextual identity, not the user-facing hypothesis name. -/
structure ScopedNatLeTrans (source : Lean.Expr) where
  a : Nat
  b : Nat
  c : Nat
  leftId : Lean.FVarId
  rightId : Lean.FVarId
  exact_source :
    source = mkLiteralNatLeTrans a b c (.fvar leftId) (.fvar rightId)

/-- This is a total syntactic recognizer; failure carries no logical claim. -/
def parseScopedNatLeTrans (source : Lean.Expr) :
    Option (ScopedNatLeTrans source) :=
  match parseLiteralNatLeTrans source with
  | none => none
  | some w =>
      match w.hab, w.hbc with
      | .fvar leftId, .fvar rightId =>
          if heq : source = mkLiteralNatLeTrans w.a w.b w.c
              (.fvar leftId) (.fvar rightId) then
            some ⟨w.a, w.b, w.c, leftId, rightId, heq⟩
          else none
      | _, _ => none

/-- Every accepted witness reconstructs the *same* original expression,
including exact fvar identities, literal parameters and argument order. -/
theorem ScopedNatLeTrans.source_roundtrip {source : Lean.Expr}
    (w : ScopedNatLeTrans source) :
    source = mkLiteralNatLeTrans w.a w.b w.c
      (.fvar w.leftId) (.fvar w.rightId) := w.exact_source

/-- The prior typed rule carrier is a genuine consequence of Nat.le_trans.
The original raw Expr proof arguments remain unchanged in this conversion. -/
def ScopedNatLeTrans.toLiteral {source : Lean.Expr}
    (w : ScopedNatLeTrans source) : LiteralNatLeTrans source where
  a := w.a
  b := w.b
  c := w.c
  hab := .fvar w.leftId
  hbc := .fvar w.rightId
  exact_source := w.exact_source

/-- Source syntax and the actual two-conjunct semantic rule agree on all
three original natural-number parameters; not a statement about MetaM trust. -/
theorem ScopedNatLeTrans.semantic_rule_exact {source : Lean.Expr}
    (w : ScopedNatLeTrans source) :
    w.toLiteral.toApplication.rule = literalTransRule w.a w.b w.c := rfl

/-- The same exact source can be attached to an existing certified one-edge
sofic witness ONLY if both genuine Lean inequality proofs are supplied. -/
def ScopedNatLeTrans.certifiedWord_of_typed_premises {source : Lean.Expr}
    (w : ScopedNatLeTrans source)
    (left : w.a ≤ w.b) (right : w.b ≤ w.c) :
    AppliedWord NatTransitivityExample.network w.a [w.b] w.c :=
  w.toLiteral.toCertifiedWord left right

/-- Reuse the exact signed source return of the already certified quantitative
word. Missing typed witnesses cannot be recovered from metadata or a raw Expr. -/
theorem ScopedNatLeTrans.certified_signed_return {source : Lean.Expr}
    (w : ScopedNatLeTrans source)
    (left : w.a ≤ w.b) (right : w.b ≤ w.c) :
    ∃ defect allowance : ℝ,
      GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.DefectEnrichedSoficLanguage.CertifiedTrace
        NatTransitivityExample.network.quantitative
        w.a [w.b] w.c defect allowance ∧
      NatTransitivityExample.network.quantitative.readout w.a =
        NatTransitivityExample.network.quantitative.readout w.c + defect ∧
      0 ≤ allowance ∧ |defect| ≤ allowance :=
  (w.toLiteral.toCertifiedWord left right).exists_quantitative_return

/-- Exact expression for a literal source premise, without untrusted strings. -/
def literalLeExpr (a b : Nat) : Lean.Expr :=
  .app (.app (.const ``Nat.le []) (.lit (.natVal a))) (.lit (.natVal b))

/-- The closed two-premise expected type. It retains both ordered premises,
including when the corresponding inequalities happen to be equal. -/
def literalClosedTransType (a b c : Nat) : Lean.Expr :=
  .forallE `left (literalLeExpr a b)
    (.forallE `right (literalLeExpr b c) (literalLeExpr a c) .default)
    .default

/-- The original source and the emitted closed term, not only their pretty
printing. The claimed type was compared by Meta in the selected environment. -/
structure ObservedScopedNatLeTrans (source : Lean.Expr) where
  parsed : ScopedNatLeTrans source
  closedProof : Lean.Expr
  inferredType : Lean.Expr

/-- Native Meta observation. Any absent/out-of-context fvar, wrong premise,
ill-typed source, metavariable, unsupported alias or incorrect abstraction
returns `none`. This result is NOT by itself a kernel-level proof certificate.

Only the original two fvar identities are abstracted; no new proofs are made.
The resulting term is checked for closure, type and definitional round trip. -/
def observeAndAbstractScopedNatLeTrans (source : Lean.Expr) :
    Lean.Meta.MetaM (Option (ObservedScopedNatLeTrans source)) := do
  match parseScopedNatLeTrans source with
  | none => return none
  | some w =>
      if w.leftId == w.rightId then return none
      if source.hasMVar then return none
      try
        -- Both identities must belong to the actual current LocalContext.
        let leftDecl ← w.leftId.getDecl
        let rightDecl ← w.rightId.getDecl
        if leftDecl.type.hasMVar || rightDecl.type.hasMVar ||
            leftDecl.type.hasFVar || rightDecl.type.hasFVar then return none
        if !(← Lean.Meta.isDefEq leftDecl.type (literalLeExpr w.a w.b)) then
          return none
        if !(← Lean.Meta.isDefEq rightDecl.type (literalLeExpr w.b w.c)) then
          return none
        -- Inference alone would not validate ill-typed proof arguments.
        if !(← Lean.Meta.isTypeCorrect source) then return none
        let originalType ← Lean.Meta.inferType source
        if !(← Lean.Meta.isDefEq originalType (literalLeExpr w.a w.c)) then
          return none
        -- Abstract the ORIGINAL proof fvars, respecting their local context.
        let closedProof ← Lean.Meta.mkLambdaFVars
          #[.fvar w.leftId, .fvar w.rightId] source
        if closedProof.hasFVar || closedProof.hasMVar ||
            closedProof.hasLevelParam then return none
        if !(← Lean.Meta.isTypeCorrect closedProof) then return none
        let inferredType ← Lean.Meta.inferType closedProof
        if !(← Lean.Meta.isDefEq inferredType
            (literalClosedTransType w.a w.b w.c)) then return none
        -- A β/definitional check recovers the original source application.
        let reopened : Lean.Expr :=
          .app (.app closedProof (.fvar w.leftId)) (.fvar w.rightId)
        if !(← Lean.Meta.isDefEq reopened source) then return none
        return some ⟨w, closedProof, inferredType⟩
      catch _ =>
        return none

/-- Source-level reference fixture. The actual Meta result is deliberately
NOT asserted in a theorem, and this function has not been executed here. -/
def observeScopedReference : Lean.Meta.MetaM Bool :=
  Lean.Meta.withLocalDecl `h12 .default (literalLeExpr 1 2) fun h12 =>
    Lean.Meta.withLocalDecl `h23 .default (literalLeExpr 2 3) fun h23 => do
      let source := mkLiteralNatLeTrans 1 2 3 h12 h23
      return (← observeAndAbstractScopedNatLeTrans source).isSome

/-- An arbitrary top-level declaration cannot masquerade as a local premise.
The scoped syntax parser accepts only direct fvar argument constructors. -/
theorem parseScoped_nonapplication (id : Lean.FVarId) :
    parseScopedNatLeTrans (.fvar id) = none := rfl

/-- The kernel-side semantic return is still explicitly conditional on the
actual original proposition witnesses: no reflection axiom has been added. -/
theorem scoped_source_consequence (a b c : Nat)
    (hab : a ≤ b) (hbc : b ≤ c) : a ≤ c :=
  Nat.le_trans hab hbc

end GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference.Finite
