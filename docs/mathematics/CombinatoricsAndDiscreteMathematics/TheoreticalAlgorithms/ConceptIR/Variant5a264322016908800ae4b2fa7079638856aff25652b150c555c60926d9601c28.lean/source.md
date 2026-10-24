# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ConceptIR.Variant5a264322016908800ae4b2fa7079638856aff25652b150c555c60926d9601c28

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9a59196780e675e280a4e74803c7b358d29b7578` · SHA-256 `81528f3fb967099a839682446fd4e0c491a74b1ed9c2a6d8d0033df4d62dd647`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ConceptExpr.Variant20dec78e7fd6fa2da2f110e6cbbdb45ab3981806d1ea36ad0c8adfb23866f351","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"20dec78e7fd6fa2da2f110e6cbbdb45ab3981806d1ea36ad0c8adfb23866f351","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ConceptExpr.Variant20dec78e7fd6fa2da2f110e6cbbdb45ab3981806d1ea36ad0c8adfb23866f351","mathematical_subject":"Computation.DataStructures","original_sha256":"20dec78e7fd6fa2da2f110e6cbbdb45ab3981806d1ea36ad0c8adfb23866f351","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Oracle/ConceptIR.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Core.SemanticIdentity

/-! # Typed intermediate representation for model-generated mathematics -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ConceptExpr.Variant20dec78e7fd6fa2da2f110e6cbbdb45ab3981806d1ea36ad0c8adfb23866f351

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
