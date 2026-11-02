import GRWTSK.MathematicalLogicAndFoundations.ProofTheoryAndConstructiveMathematics.LeanExprConstantSpine

/-!
# Context-checked Nat.le_trans expression applications

Local attribution: grwtsk contributors. MIT.

Supported shape: the monomorphic Nat.le_trans declaration applied to
exactly three Nat indices and two proof arguments, in their original order.
The dependency-indexed spine reconstructs the exact Lean.Expr.

The MetaM observer separately requires all arguments to be local free
variables in the current elaboration context; it rejects unresolved
metavariables and typechecks the source and all five argument types. The
actual premise types are checked as Nat.le a b and Nat.le b c, and the
actual result type as Nat.le a c. This is not a general Lean.Expr extractor.
A source name and reconstructed expression are not proof acceptance.

The existing proof-carrying ScopedOrderExample.orderTransitivity supplies
the typed mathematical counterpart. No arbitrary Expr-to-proof-value
reflection is inferred from a successful MetaM observation.

SOURCE_PROOF_CANDIDATE. Lean compilation, fresh kernel checking, transitive
trust audit, MetaM execution and source-to-Git authentication: NOT_RUN.
-/

set_option autoImplicit false

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference.Finite

open Lean

/-- Five ordered arguments, with no hidden universe instantiation. -/
def makeNatLeTransExpr (a b c hab hbc : Lean.Expr) : Lean.Expr :=
  Lean.mkApp5 (Lean.mkConst ``Nat.le_trans) a b c hab hbc

/-- A syntax witness indexed by the actual original elaborated expression. -/
structure NatLeTransExprSpine (source : Lean.Expr) where
  a : Lean.Expr
  b : Lean.Expr
  c : Lean.Expr
  hab : Lean.Expr
  hbc : Lean.Expr
  source_eq : source = makeNatLeTransExpr a b c hab hbc

/-- No rewriting or normalization of the original term is permitted. -/
def parseNatLeTransExpr :
    (source : Lean.Expr) → Option (NatLeTransExprSpine source)
  | .app (.app (.app (.app (.app (.const name levels) a) b) c) hab) hbc =>
      if hn : name = ``Nat.le_trans then
        if hu : levels = [] then
          some {
            a := a
            b := b
            c := c
            hab := hab
            hbc := hbc
            source_eq := by
              cases hn
              cases hu
              rfl
          }
        else none
      else none
  | _ => none

theorem natLeTransExpr_exact {source : Lean.Expr}
    (w : NatLeTransExprSpine source) :
    source = Lean.mkApp5 (Lean.mkConst ``Nat.le_trans)
      w.a w.b w.c w.hab w.hbc := w.source_eq

/-- An exact five-argument constant is accepted by the shape recognizer. -/
theorem natLeTransExpr_shape_roundtrip (a b c hab hbc : Lean.Expr) :
    (parseNatLeTransExpr (makeNatLeTransExpr a b c hab hbc)).isSome = true := by
  simp [parseNatLeTransExpr, makeNatLeTransExpr]

theorem natLeTransExpr_missing_second_proof (a b c hab : Lean.Expr) :
    parseNatLeTransExpr
      (Lean.mkApp4 (Lean.mkConst ``Nat.le_trans) a b c hab) = none := by
  rfl

theorem natLeTransExpr_reject_extra_argument (a b c hab hbc extra : Lean.Expr) :
    parseNatLeTransExpr
      (Lean.mkApp (makeNatLeTransExpr a b c hab hbc) extra) = none := by
  rfl

theorem natLeTransExpr_reject_wrong_head (a b c hab hbc : Lean.Expr) :
    parseNatLeTransExpr
      (Lean.mkApp5 (Lean.mkConst ``Nat.lt_trans) a b c hab hbc) = none := by
  rfl

theorem natLeTransExpr_reject_universe_argument (a b c hab hbc : Lean.Expr) :
    parseNatLeTransExpr
      (Lean.mkApp5 (Lean.mkConst ``Nat.le_trans [.zero])
        a b c hab hbc) = none := by
  rfl

/-- A local hypothesis is an Expr.fvar, not an inferred global fact. -/
def isLocalFVar : Lean.Expr → Bool
  | .fvar _ => true
  | _ => false

def NatLeTransExprSpine.allLocal {source : Lean.Expr}
    (w : NatLeTransExprSpine source) : Bool :=
  isLocalFVar w.a && isLocalFVar w.b && isLocalFVar w.c &&
    isLocalFVar w.hab && isLocalFVar w.hbc

/-- An observed MetaM result, not a kernel-certified dependent proof value. -/
structure ScopedNatLeTransObservation (source : Lean.Expr) where
  spine : NatLeTransExprSpine source
  aType : Lean.Expr
  bType : Lean.Expr
  cType : Lean.Expr
  habType : Lean.Expr
  hbcType : Lean.Expr
  conclusionType : Lean.Expr

/-- The current local context is checked, not fabricated from theorem names.
Each returned type was inspected in the running MetaM environment. -/
def inspectScopedNatLeTrans (source : Lean.Expr) :
    Lean.Meta.MetaM (Option (ScopedNatLeTransObservation source)) := do
  let some w := parseNatLeTransExpr source | return none
  unless w.allLocal do return none
  if source.hasMVar then return none
  unless (← Lean.Meta.isTypeCorrect source) do return none

  let aType ← Lean.Meta.inferType w.a
  let bType ← Lean.Meta.inferType w.b
  let cType ← Lean.Meta.inferType w.c
  let habType ← Lean.Meta.inferType w.hab
  let hbcType ← Lean.Meta.inferType w.hbc
  let conclusionType ← Lean.Meta.inferType source
  if aType.hasMVar || bType.hasMVar || cType.hasMVar ||
     habType.hasMVar || hbcType.hasMVar || conclusionType.hasMVar then
    return none

  let nat := Lean.mkConst ``Nat
  unless (← Lean.Meta.isDefEq aType nat) do return none
  unless (← Lean.Meta.isDefEq bType nat) do return none
  unless (← Lean.Meta.isDefEq cType nat) do return none
  let ab := Lean.mkApp2 (Lean.mkConst ``Nat.le) w.a w.b
  let bc := Lean.mkApp2 (Lean.mkConst ``Nat.le) w.b w.c
  let ac := Lean.mkApp2 (Lean.mkConst ``Nat.le) w.a w.c
  unless (← Lean.Meta.isDefEq habType ab) do return none
  unless (← Lean.Meta.isDefEq hbcType bc) do return none
  unless (← Lean.Meta.isDefEq conclusionType ac) do return none
  return some {
    spine := w
    aType := aType
    bType := bType
    cType := cType
    habType := habType
    hbcType := hbcType
    conclusionType := conclusionType
  }

/-- The syntactic equality survives, irrespective of MetaM observations. -/
theorem scopedNatLeTrans_observation_exact {source : Lean.Expr}
    (observation : ScopedNatLeTransObservation source) :
    source = makeNatLeTransExpr observation.spine.a
      observation.spine.b observation.spine.c
      observation.spine.hab observation.spine.hbc :=
  observation.spine.source_eq

/-- A concrete MetaM probe generates five real locals with exact dependent
hypothesis types, then applies the observer. No claim this probe has run. -/
def inspectFreshScopedNatLeTrans : Lean.Meta.MetaM Bool :=
  Lean.Meta.withLocalDeclD `a (Lean.mkConst ``Nat) fun a =>
  Lean.Meta.withLocalDeclD `b (Lean.mkConst ``Nat) fun b =>
  Lean.Meta.withLocalDeclD `c (Lean.mkConst ``Nat) fun c =>
  Lean.Meta.withLocalDeclD `hab
    (Lean.mkApp2 (Lean.mkConst ``Nat.le) a b) fun hab =>
  Lean.Meta.withLocalDeclD `hbc
    (Lean.mkApp2 (Lean.mkConst ``Nat.le) b c) fun hbc => do
    let source := makeNatLeTransExpr a b c hab hbc
    return (← inspectScopedNatLeTrans source).isSome

/-- Typed side: exactly these two conjunctive premises, no others. -/
theorem scopedNatLeTrans_rule_exact (a b c : Nat) :
    (ScopedOrderExample.orderTransitivity a b c).rule =
      ⟨[ScopedOrderExample.premiseAB, ScopedOrderExample.premiseBC],
        ScopedOrderExample.conclusionAC⟩ := rfl

/-- Mathematical consumer returns the actual conclusion using the typed
source theorem, not an unproved reflection from a MetaM observation. -/
theorem scopedNatLeTrans_typed_return (a b c : Nat)
    (hab : a ≤ b) (hbc : b ≤ c) : a ≤ c :=
  ScopedOrderExample.query_proves_transitivity a b c hab hbc

end GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference.Finite
