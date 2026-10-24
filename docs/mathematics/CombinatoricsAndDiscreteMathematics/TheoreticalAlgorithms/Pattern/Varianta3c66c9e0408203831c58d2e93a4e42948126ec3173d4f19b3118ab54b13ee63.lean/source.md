# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Pattern.Varianta3c66c9e0408203831c58d2e93a4e42948126ec3173d4f19b3118ab54b13ee63

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9248aa1a532aa71126bc285db833222db73dd0d4` · SHA-256 `decebe7c75ef199c5a53e6109d54dc01b276baacfe2f714c390dd2cc770dcd88`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ProofShape.Variant17924f73b95827b5cc6a3a44074a428a577493da28388f18828d0a91893381ce","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"17924f73b95827b5cc6a3a44074a428a577493da28388f18828d0a91893381ce","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ProofShape.Variant17924f73b95827b5cc6a3a44074a428a577493da28388f18828d0a91893381ce","mathematical_subject":"Computation.DataStructures","original_sha256":"17924f73b95827b5cc6a3a44074a428a577493da28388f18828d0a91893381ce","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Refactor/Pattern.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Refactor.ModelAst

/-! # Checked pattern retrieval metadata -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ProofShape.Variant17924f73b95827b5cc6a3a44074a428a577493da28388f18828d0a91893381ce

public section

namespace Surface.Refactor

open Lean Surface.Core

@[surface_novel]
inductive ProofShape where
  | exact
  | constructor
  | induction
  | rewrite
  | simp
  | calc
  | extensionality
  | algebraicNormalization
  | finiteDecision
  | custom
deriving DecidableEq, Repr, BEq

@[surface_novel]
structure PatternCard where
  schema : String
  patternId : String
  declarationName : Name
  moduleName : LeanModulePath
  sourcePath : ProjectRelativePath
  sourceRange : SourceByteRange
  sourceHash : ContentHash256
  excerptHash : ContentHash256
  declarationKind : DeclarationKind
  normalizedTypeSkeleton : String
  binderSkeleton : List String
  imports : List LeanModulePath
  directDependencies : List Name
  projectDependencyCone : List Name
  proofShape : ProofShape
  expressionSkeleton : String
  kernelReceiptHash : ContentHash256
  axiomClosure : List Name
  classificationTags : List Name
  environmentFingerprint : EnvironmentFingerprint
  authority : RefactorAuthority
deriving Repr

@[expose] def PatternCard.Valid (card : PatternCard) : Prop :=
  card.schema = "surface.pattern-card.v1" ∧
    card.patternId ≠ "" ∧
    card.sourcePath.Valid ∧
    card.sourceRange.Valid ∧
    card.normalizedTypeSkeleton ≠ "" ∧
    card.authority = .environmentObserved ∧
    card.kernelReceiptHash.Valid

instance (card : PatternCard) : Decidable card.Valid := by
  unfold PatternCard.Valid
  infer_instance

@[expose] def verifyPatternCard (card : PatternCard) : Bool :=
  decide card.Valid

@[surface_novel, surface_published]
theorem verifyPatternCard_sound (card : PatternCard)
    (h : verifyPatternCard card = true) : card.Valid := by
  exact of_decide_eq_true h

/-- Retrieval scores are finite ranking data and prove no semantic similarity. -/
@[surface_novel]
structure PatternRetrievalScore where
  typeHead : Nat
  binder : Nat
  namespaceProximity : Nat
  importOverlap : Nat
  dependencyOverlap : Nat
  proofShape : Nat
  diagnosticClass : Nat
  classificationCompatibility : Nat
  axiomCompatibility : Nat
  authority : RefactorAuthority := .finiteEvidence
deriving DecidableEq, Repr

end Surface.Refactor
```
