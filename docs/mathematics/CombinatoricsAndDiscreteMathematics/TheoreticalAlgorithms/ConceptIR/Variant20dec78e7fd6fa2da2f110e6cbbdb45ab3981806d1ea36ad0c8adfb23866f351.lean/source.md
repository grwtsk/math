# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ConceptIR.Variant20dec78e7fd6fa2da2f110e6cbbdb45ab3981806d1ea36ad0c8adfb23866f351

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `62fccbb4a7762d198818af41fb271eb06056e1c0` · SHA-256 `20dec78e7fd6fa2da2f110e6cbbdb45ab3981806d1ea36ad0c8adfb23866f351`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
