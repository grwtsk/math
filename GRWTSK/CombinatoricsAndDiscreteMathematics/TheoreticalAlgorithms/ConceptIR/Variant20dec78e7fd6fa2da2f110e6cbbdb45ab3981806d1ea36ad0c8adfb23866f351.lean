import Mathematics.Core.SemanticIdentity

/-! # Typed intermediate representation for model-generated mathematics -/

namespace Mathematics.Oracle

inductive ConceptExpr
  | conceptRef (id : ConceptId)
  | freshSymbol (name : String)
  | apply (operator argument : ConceptExpr)
  | relate (relation : String) (left right : ConceptExpr)
  | quantify (quantifier binderName : String) (body : ConceptExpr)
  | assume (claim : ConceptExpr)
  | conclude (claim : ConceptExpr)
  | includeBoundary (description : String)
  | excludeBoundary (description : String)
  | nonclaim (description : String)
  | example (description : String)
  | counterexampleRequest (description : String)
  | unresolved (description : String)
  deriving DecidableEq, Repr

inductive ConceptIRKind
  | candidateDefinition
  | candidateTheorem
  | candidateConstruction
  | explanation
  deriving DecidableEq, Repr

structure ConceptIR where
  kind : ConceptIRKind
  parameters : List ConceptExpr
  objects : List ConceptExpr
  hypotheses : List ConceptExpr
  relations : List ConceptExpr
  operations : List ConceptExpr
  constructions : List ConceptExpr
  conclusions : List ConceptExpr
  includes : List ConceptExpr
  excludes : List ConceptExpr
  nonclaims : List ConceptExpr
  examples : List ConceptExpr
  counterexamplesSought : List ConceptExpr
  unresolvedSlots : List ConceptExpr
  deriving DecidableEq, Repr

def ConceptIR.hasFabricatedIdentity (ir : ConceptIR) : Prop :=
  ∃ expression ∈ ir.unresolvedSlots,
    match expression with
    | .conceptRef _ => True
    | _ => False

end Mathematics.Oracle
