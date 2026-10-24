# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Provenance.Variantf6ff70b99e6e592ddff3d41dd0496fc34a664b8094d7b96ec6dcc0e21c662244

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `43e20b9ffedd5335f30cfee8f497609fdb52b095` · SHA-256 `f6ff70b99e6e592ddff3d41dd0496fc34a664b8094d7b96ec6dcc0e21c662244`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemanticTokenization.Evidence

/-! # Finite source-local provenance paths -/

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
