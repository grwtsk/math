# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.All.Variantd4d38be35bdb3dc8935a5e29e917674babba78873afcb5ce1480f69a33b2cc79

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `98363312a452719afd3f3d4ab6c79d4800134ab4` · SHA-256 `d4d38be35bdb3dc8935a5e29e917674babba78873afcb5ce1480f69a33b2cc79`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemanticTokenization.Basic
import Mathematics.SemanticTokenization.TextCarrier
import Mathematics.SemanticTokenization.Normalization
import Mathematics.SemanticTokenization.Span
import Mathematics.SemanticTokenization.SpanFamily
import Mathematics.SemanticTokenization.Tokenization
import Mathematics.SemanticTokenization.Authority
import Mathematics.SemanticTokenization.Evidence
import Mathematics.SemanticTokenization.Provenance
import Mathematics.SemanticTokenization.Context
import Mathematics.SemanticTokenization.Metadata
import Mathematics.SemanticTokenization.ExternalAssertion
import Mathematics.SemanticTokenization.Adjudication
import Mathematics.SemanticTokenization.RelationAlgebra
import Mathematics.SemanticTokenization.UnknownKind
import Mathematics.SemanticTokenization.EvidenceCut
import Mathematics.SemanticTokenization.Overlap
import Mathematics.SemanticTokenization.Boundary
import Mathematics.SemanticTokenization.Segmentation
import Mathematics.SemanticTokenization.TokenGraph
import Mathematics.SemanticTokenization.Phrase
import Mathematics.SemanticTokenization.Composition
import Mathematics.SemanticTokenization.Reading
import Mathematics.SemanticTokenization.Concept
import Mathematics.SemanticTokenization.ContextualEquivalence
import Mathematics.SemanticTokenization.Substitution
import Mathematics.SemanticTokenization.Idiom
import Mathematics.SemanticTokenization.Metaphor
import Mathematics.SemanticTokenization.IdiomConceptNetwork
import Mathematics.SemanticTokenization.ArchitecturalLanguage
import Mathematics.SemanticTokenization.Resolution
import Mathematics.SemanticTokenization.Resolver
import Mathematics.SemanticTokenization.Replay

/-!
# Certified semantic-tokenization architecture

The aggregate exposes a finite, certificate-conservative path from immutable
character carriers to structural spans, typed evidence, contextual readings,
and idiom--concept networks.  Natural-language interpretation remains an
external accepted assertion; absent interpretation remains `Unknown`.
-/
```
