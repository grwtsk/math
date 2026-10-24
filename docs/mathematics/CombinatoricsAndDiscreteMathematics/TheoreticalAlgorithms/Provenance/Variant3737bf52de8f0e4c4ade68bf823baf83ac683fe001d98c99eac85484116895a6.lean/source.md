# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Provenance.Variant3737bf52de8f0e4c4ade68bf823baf83ac683fe001d98c99eac85484116895a6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `396d24d51bdbc385a4facf95b8fec3abef47535f` · SHA-256 `bb84f80ead1bcc3b3ac1db807f3968c07515ed580f64df18a8992067985ace35`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ProvenanceHop.Variantf6ff70b99e6e592ddff3d41dd0496fc34a664b8094d7b96ec6dcc0e21c662244","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f6ff70b99e6e592ddff3d41dd0496fc34a664b8094d7b96ec6dcc0e21c662244","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ProvenanceHop.Variantf6ff70b99e6e592ddff3d41dd0496fc34a664b8094d7b96ec6dcc0e21c662244","mathematical_subject":"Computation.DataStructures","original_sha256":"f6ff70b99e6e592ddff3d41dd0496fc34a664b8094d7b96ec6dcc0e21c662244","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemanticTokenization/Provenance.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemanticTokenization.Evidence

/-! # Finite source-local provenance paths -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ProvenanceHop.Variantf6ff70b99e6e592ddff3d41dd0496fc34a664b8094d7b96ec6dcc0e21c662244

namespace Mathematics.SemanticTokenization

structure ProvenanceHop where
  fromId : StableId
  toId : StableId

inductive ProvenanceTerminal (text : TextCarrier)
  | sourceSpan (span : Span text)
  | acceptedExternalResource
      (resourceId : StableId)
      (resourceId_valid : resourceId.Valid)

structure ProvenancePath (text : TextCarrier) where
  assertionId : StableId
  evidenceId : StableId
  hops : List ProvenanceHop
  terminal : ProvenanceTerminal text

def ProvenancePath.IsSourceLocal
    {text : TextCarrier}
    (path : ProvenancePath text) : Prop :=
  match path.terminal with
  | .sourceSpan _ => True
  | .acceptedExternalResource resourceId _ =>
      resourceId.Valid

/-!
An admitted provenance path must identify the same evidence item and terminate
at the item's declared anchor.  Span anchors are compared by their half-open
coordinates; external-resource anchors are compared by stable identity.
-/

def ProvenancePath.SupportsEvidence
    {text : TextCarrier}
    (path : ProvenancePath text)
    (evidence : EvidenceRef text) : Prop :=
  path.evidenceId = evidence.evidenceId ∧
    path.IsSourceLocal ∧
    match evidence.anchor, path.terminal with
    | .sourceSpan expected, .sourceSpan observed =>
        expected.start = observed.start ∧
          expected.stop = observed.stop
    | .externalResource expected,
        .acceptedExternalResource observed _ =>
        expected = observed
    | _, _ =>
        False

theorem ProvenancePath.source_local
    {text : TextCarrier}
    (path : ProvenancePath text) :
    path.IsSourceLocal := by
  unfold ProvenancePath.IsSourceLocal
  cases path.terminal with
  | sourceSpan =>
      trivial
  | acceptedExternalResource _ valid =>
      exact valid

theorem ProvenancePath.supportsEvidence_source_local
    {text : TextCarrier}
    {path : ProvenancePath text}
    {evidence : EvidenceRef text}
    (supports : path.SupportsEvidence evidence) :
    path.IsSourceLocal :=
  supports.2.1

end Mathematics.SemanticTokenization
```
