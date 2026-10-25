# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Boundary.Variant9c49cb3c2abfa1913490069cb77a9da2b9e81da8010146a1529f62d7f61f67de

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8b88c34abdadc7844c78e7aec0fc67a48234c1af` · SHA-256 `d03f28b1e00d99e87818c883069f716b2f9d2b5f381d512f07aa99ca0932d4d1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TieHandling.Variant1705d9184be77590f70301664ed8c11190fee43b901fdff413227415372322f2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1705d9184be77590f70301664ed8c11190fee43b901fdff413227415372322f2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.TieHandling.Variant1705d9184be77590f70301664ed8c11190fee43b901fdff413227415372322f2","mathematical_subject":"Foundations.Unclassified","original_sha256":"1705d9184be77590f70301664ed8c11190fee43b901fdff413227415372322f2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemanticTokenization/Boundary.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemanticTokenization.Overlap

/-! # Rule-relative boundary and stability certificates -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TieHandling.Variant1705d9184be77590f70301664ed8c11190fee43b901fdff413227415372322f2

namespace Mathematics.SemanticTokenization

inductive TieHandling
  | boundary
  | noBoundary
  | ambiguous
  deriving DecidableEq, Repr

inductive MissingFieldHandling
  | reject
  | unknown
  | ignoreDeclared
  deriving DecidableEq, Repr

structure BoundaryRule where
  ruleId : StableId
  threshold : Int
  tieHandling : TieHandling
  missingFieldHandling : MissingFieldHandling
  uncertaintyBound : Nat
  calibrationScope : StableId

inductive BoundaryDecision
  | boundary
  | noBoundary
  | ambiguous
  deriving DecidableEq, Repr

structure BoundaryCertificate (text : TextCarrier) where
  left : Span text
  right : Span text
  adjacent : left.stop ≤ right.start
  overlap : TypedOverlap text
  rule : BoundaryRule
  decision : BoundaryDecision
  snapshot : SnapshotId
  evidence : EvidenceBundle text

structure BoundaryStabilityCertificate
    (text : TextCarrier)
    (baseline perturbed : BoundaryCertificate text) where
  admittedVariationBound : Nat
  observedVariation : Nat
  variation_within :
    observedVariation ≤ admittedVariationBound
  decision_stable :
    baseline.decision = perturbed.decision

structure BoundaryFalsificationWitness (text : TextCarrier) where
  proposed : BoundaryCertificate text
  contradictoryEvidence : EvidenceBundle text
  contradictionId : StableId

theorem BoundaryStabilityCertificate.preserves_decision
    {text : TextCarrier}
    {baseline perturbed : BoundaryCertificate text}
    (certificate :
      BoundaryStabilityCertificate text baseline perturbed) :
    baseline.decision = perturbed.decision :=
  certificate.decision_stable

end Mathematics.SemanticTokenization
```
