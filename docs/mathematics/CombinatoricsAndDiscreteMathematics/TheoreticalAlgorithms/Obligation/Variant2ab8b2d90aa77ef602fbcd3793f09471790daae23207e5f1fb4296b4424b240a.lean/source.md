# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Obligation.Variant2ab8b2d90aa77ef602fbcd3793f09471790daae23207e5f1fb4296b4424b240a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `076e42dc87f4f3e239a5fabf77f352b6efa2bb31` · SHA-256 `ad74261735cd50fb854f53cfc29421c36a83fcac3d1e66f0da22fdb015223630`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ProofObligationKind.Variant294f785fc71aeeb77506c4779d117d75ee04349dbfa360db5bd1f30e2594906c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"294f785fc71aeeb77506c4779d117d75ee04349dbfa360db5bd1f30e2594906c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ProofObligationKind.Variant294f785fc71aeeb77506c4779d117d75ee04349dbfa360db5bd1f30e2594906c","mathematical_subject":"Computation.DataStructures","original_sha256":"294f785fc71aeeb77506c4779d117d75ee04349dbfa360db5bd1f30e2594906c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Ingestion/Obligation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Ingestion.Environment

/-! # Explicit proof-gap obligations -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ProofObligationKind.Variant294f785fc71aeeb77506c4779d117d75ee04349dbfa360db5bd1f30e2594906c

namespace Mathematics.Ingestion

inductive ProofObligationKind
  | pedagogicalExercise
  | unfinishedProof
  | externalTheorem
  | unsafeDependency
  | unknownAuthority
  deriving DecidableEq, Repr

inductive ProofObligationStatus
  | open
  | underProof
  | rejected
  | kernelDischarged
  deriving DecidableEq, Repr

/-- Every extracted `sorry` dependency becomes a named, non-theorem obligation. -/
structure ProofObligation where
  obligationId : StableId
  declarationId : Extractor.DeclarationId
  assumption : Extractor.TrustAssumption
  isSorry :
    assumption.kind = .sorryDerivedDeclaration
  kind : ProofObligationKind
  status : ProofObligationStatus
  sourceArtifactIds : List Ecosystem.ArtifactId
  obligationDigest : Digest
  deriving Repr

end Mathematics.Ingestion
```
