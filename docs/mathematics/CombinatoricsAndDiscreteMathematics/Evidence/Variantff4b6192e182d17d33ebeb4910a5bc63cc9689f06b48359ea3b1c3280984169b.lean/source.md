# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Evidence.Variantff4b6192e182d17d33ebeb4910a5bc63cc9689f06b48359ea3b1c3280984169b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9cad0fae5474a898a90d2375c15f5d3f11aedd72` · SHA-256 `ff4b6192e182d17d33ebeb4910a5bc63cc9689f06b48359ea3b1c3280984169b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemanticTokenization.Authority
import Mathematics.SemanticTokenization.Span

/-!
# Evidence records and scopes
-/

namespace Mathematics.SemanticTokenization

inductive EvidenceSourceKind
  | sourceText
  | lexicalResource
  | corpus
  | parser
  | human
  | model
  | proofKernel
  | externalResource
deriving DecidableEq, Repr

inductive EvidenceLocation (text : TextCarrier)
  | sourceSpan (span : Span text)
  | sourceSpans (spans : Finset (Span text))
  | externalResource (locator : String)
deriving Repr

inductive ContextField
  | text
  | sentence
  | discourse
  | task
  | domain
  | speaker
  | time
  | register
deriving DecidableEq, Ord, Repr

structure EvidenceScope where
  contexts : Finset ContextId
  fields : Finset ContextField
  intendedUses : Finset AssertionUse
deriving Repr

structure EvidenceRef (text : TextCarrier) where
  id : EvidenceId
  sourceKind : EvidenceSourceKind
  location : EvidenceLocation text
  scope : EvidenceScope
  snapshot : SnapshotId
  evidenceDigest : Digest
  accepted : Bool
deriving Repr

structure EvidenceRegistry (text : TextCarrier) where
  entries : Array (EvidenceRef text)
  idsUnique :
    PairwiseUnique (entries.map EvidenceRef.id)

def EvidenceRegistry.HasId
    {text : TextCarrier}
    (registry : EvidenceRegistry text)
    (id : EvidenceId) : Prop :=
  ∃ evidence : Fin registry.entries.size,
    (registry.entries[evidence]).id = id

end Mathematics.SemanticTokenization
```
