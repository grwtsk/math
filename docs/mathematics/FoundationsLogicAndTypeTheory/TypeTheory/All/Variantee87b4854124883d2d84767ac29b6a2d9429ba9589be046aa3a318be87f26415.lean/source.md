# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.All.Variantee87b4854124883d2d84767ac29b6a2d9429ba9589be046aa3a318be87f26415

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `78bfe7af9c9c3f75cc2bea1fbfe7779775ff99b2` · SHA-256 `ee87b4854124883d2d84767ac29b6a2d9429ba9589be046aa3a318be87f26415`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemanticTokenization.TextCarrier
import Mathematics.SemanticTokenization.Normalization
import Mathematics.SemanticTokenization.Span
import Mathematics.SemanticTokenization.SpanFamily
import Mathematics.SemanticTokenization.Tokenization
import Mathematics.SemanticTokenization.MetadataType
import Mathematics.SemanticTokenization.MetadataAssertion
import Mathematics.SemanticTokenization.Evidence
import Mathematics.SemanticTokenization.Provenance
import Mathematics.SemanticTokenization.Context
import Mathematics.SemanticTokenization.Overlap
import Mathematics.SemanticTokenization.Boundary
import Mathematics.SemanticTokenization.ExternalInterpretation
import Mathematics.SemanticTokenization.TokenGraph
import Mathematics.SemanticTokenization.Phrase
import Mathematics.SemanticTokenization.Composition
import Mathematics.SemanticTokenization.Idiom
import Mathematics.SemanticTokenization.Metaphor
import Mathematics.SemanticTokenization.Concept
import Mathematics.SemanticTokenization.ContextualEquivalence
import Mathematics.SemanticTokenization.Substitution
import Mathematics.SemanticTokenization.IdiomConceptNetwork
import Mathematics.SemanticTokenization.RelationAlgebra
import Mathematics.SemanticTokenization.UnknownKind
import Mathematics.SemanticTokenization.EvidenceCut
import Mathematics.SemanticTokenization.Authority
import Mathematics.SemanticTokenization.Resolver
import Mathematics.SemanticTokenization.Replay

/-!
# Certified span-semantics proof capsule

Import-only umbrella for the nonauthoritative N overlay.  The capsule proves
structural, authority-separation, context-transport, relation-algebra, and
deterministic-replay restrictions.  It does not derive linguistic meaning
from characters and does not own runtime admission or mutation.
-/
```
