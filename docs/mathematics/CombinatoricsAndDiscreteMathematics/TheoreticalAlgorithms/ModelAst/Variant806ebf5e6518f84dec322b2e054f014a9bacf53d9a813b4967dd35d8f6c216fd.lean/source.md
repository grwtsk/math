# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ModelAst.Variant806ebf5e6518f84dec322b2e054f014a9bacf53d9a813b4967dd35d8f6c216fd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2dd0d37689e9cd300bb04a5beff9b4795a7829e6` · SHA-256 `ecf068e0e89738ee127a76106b4117696ebb37413761c0248270118adcbf385d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ReasoningNodeKind.Variante5e6a8e918a25619faf1dec8d9c029f6f60111da445ae5173a7701f0afa2cee5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e5e6a8e918a25619faf1dec8d9c029f6f60111da445ae5173a7701f0afa2cee5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ReasoningNodeKind.Variante5e6a8e918a25619faf1dec8d9c029f6f60111da445ae5173a7701f0afa2cee5","mathematical_subject":"Computation.DataStructures","original_sha256":"e5e6a8e918a25619faf1dec8d9c029f6f60111da445ae5173a7701f0afa2cee5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Refactor/ModelAst.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Refactor.Task

/-! # Provider-independent reasoning AST and stable slugs -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ReasoningNodeKind.Variante5e6a8e918a25619faf1dec8d9c029f6f60111da445ae5173a7701f0afa2cee5

public section

namespace Surface.Refactor

open Surface.Core

@[surface_novel]
inductive ReasoningNodeKind where
  | sourceFact
  | userIntent
  | invariantConstraint
  | retrievedPattern
  | diagnosticFact
  | unresolvedSlug
  | toolSpecification
  | expectedOutputSchema
  | authorityBoundary
  | modelProposal
  | leanVerifiedResult
  | presentationText
deriving DecidableEq, Repr, BEq

@[surface_novel]
inductive SlugValueType where
  | string
  | natural
  | boolean
  | identifier
  | stringList
  | jsonObject
deriving DecidableEq, Repr, BEq

@[surface_novel]
structure SlugConstraint where
  allowedValues : List String := []
  minimum? : Option Int := none
  maximum? : Option Int := none
  validationSchema? : Option String := none
deriving DecidableEq, Repr

@[surface_novel]
inductive SlugLifecycle where
  | unresolved
  | resolved
  | rejected
  | stale
  | superseded
deriving DecidableEq, Repr, BEq

@[surface_novel]
structure SlugResolution where
  value : String
  resolverIdentity : String
  authority : RefactorAuthority
deriving DecidableEq, Repr

@[surface_novel]
structure ReasoningSlug where
  slugId : String
  expectedType : SlugValueType
  constraints : SlugConstraint
  sourceProvenance : Provenance
  authorityCeiling : RefactorAuthority
  lifecycle : SlugLifecycle
  resolution? : Option SlugResolution
  parentRequestHash : ContentHash256
deriving Repr

@[surface_novel]
structure VerifiedSourceReference where
  declarationName : Lean.Name
  kernelReceiptHash : ContentHash256
  checkedTrialStatementHash : Digest
deriving DecidableEq, Repr

@[surface_novel]
structure ReasoningNode where
  nodeId : String
  kind : ReasoningNodeKind
  authority : RefactorAuthority
  provenance : Provenance
  payload : String
  verifiedSource? : Option VerifiedSourceReference := none
deriving Repr

@[surface_novel]
structure ReasoningAst where
  schema : String
  requestId : String
  projectFingerprint : ContentHash256
  taskId : String
  nodes : List ReasoningNode
  slugs : List ReasoningSlug
  budget : RefactorBudget
  canonicalHash : ContentHash256
deriving Repr

/-- Canonical serialization framing.  Rust supplies the canonical JSON bytes;
Lean fixes which stable identities enter the rendering boundary. -/
@[expose] def ReasoningAst.canonicalIdentityMaterial (ast : ReasoningAst) : List String :=
  [ast.schema, ast.requestId, ast.taskId] ++
    ast.nodes.map (fun node => node.nodeId) ++
    ast.slugs.map (fun slug => slug.slugId)

@[surface_novel]
structure RenderedReasoningRequest where
  astHash : ContentHash256
  identityMaterial : List String
  renderedText : String
deriving Repr

@[expose] def renderReasoningAst (ast : ReasoningAst) (text : String) :
    RenderedReasoningRequest where
  astHash := ast.canonicalHash
  identityMaterial := ast.canonicalIdentityMaterial
  renderedText := text

@[surface_novel, surface_published]
theorem rendering_preserves_ast_identity (ast : ReasoningAst) (text : String) :
    (renderReasoningAst ast text).astHash = ast.canonicalHash :=
  rfl

@[expose] def ReasoningSlug.resolve (slug : ReasoningSlug)
    (value resolver : String) (authority : RefactorAuthority) : ReasoningSlug :=
  { slug with
    lifecycle := .resolved
    resolution? := some ⟨value, resolver, authority⟩ }

@[surface_novel, surface_published]
theorem resolved_slug_retains_provenance (slug : ReasoningSlug)
    (value resolver : String) (authority : RefactorAuthority) :
    (slug.resolve value resolver authority).sourceProvenance = slug.sourceProvenance :=
  rfl

@[expose] def ReasoningAst.resolveSlug (ast : ReasoningAst) (slugId value resolver : String)
    (authority : RefactorAuthority) : ReasoningAst :=
  { ast with
    slugs := ast.slugs.map fun slug =>
      if slug.slugId = slugId then slug.resolve value resolver authority else slug }

@[surface_novel, surface_published]
theorem resolving_slug_preserves_unrelated_node_ids (ast : ReasoningAst)
    (slugId value resolver : String) (authority : RefactorAuthority) :
    (ast.resolveSlug slugId value resolver authority).nodes.map (fun node => node.nodeId) =
      ast.nodes.map (fun node => node.nodeId) :=
  rfl

@[expose, surface_interface] def ReasoningNode.modelProposal
    (nodeId payload : String) (provenance : Provenance) : ReasoningNode where
  nodeId := nodeId
  kind := .modelProposal
  authority := .modelProposed
  provenance := provenance
  payload := payload

@[surface_novel, surface_published]
theorem model_node_authority_is_bounded
    (nodeId payload : String) (provenance : Provenance) :
    (ReasoningNode.modelProposal nodeId payload provenance).authority = .modelProposed :=
  rfl

/-!
The data-only node records an environment observation.  Kernel authority lives
in this proof-bearing wrapper and therefore requires an actual `CheckedTrial`.
-/
@[surface_novel]
structure VerifiedReasoningResult where
  node : ReasoningNode
  checkedTrial : CheckedTrial

@[expose] def ReasoningNode.verifiedResult
    (nodeId payload : String) (provenance : Provenance)
    (receiptHash : ContentHash256) (trial : CheckedTrial) :
    VerifiedReasoningResult where
  checkedTrial := trial
  node :=
    { nodeId := nodeId
      kind := .leanVerifiedResult
      authority := .environmentObserved
      provenance := provenance
      payload := payload
      verifiedSource? := some
        { declarationName := trial.receipt.declarationName
          kernelReceiptHash := receiptHash
          checkedTrialStatementHash := trial.task.statementHash } }

@[surface_novel, surface_published]
theorem verified_result_requires_verified_source_reference
    (nodeId payload : String) (provenance : Provenance)
    (receiptHash : ContentHash256) (trial : CheckedTrial) :
    (ReasoningNode.verifiedResult nodeId payload provenance receiptHash trial).node.verifiedSource? =
      some
        { declarationName := trial.receipt.declarationName
          kernelReceiptHash := receiptHash
          checkedTrialStatementHash := trial.task.statementHash } :=
  rfl

@[surface_novel, surface_published]
theorem verified_reasoning_result_exposes_proof (result : VerifiedReasoningResult) :
    result.checkedTrial.task.proposition :=
  result.checkedTrial.checkedProof

end Surface.Refactor
```
