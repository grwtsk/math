# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Noninterference.Variant45f3c5919d9788c8e90f1bdfee9c5f66ba0a8238b79328cfaef93e1dd6440d54

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5e2a3c06e58415237909b6f4b79a649d8ffedec7` · SHA-256 `45f3c5919d9788c8e90f1bdfee9c5f66ba0a8238b79328cfaef93e1dd6440d54`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.StratifiedBoundary.Presentation.StratifiedNode

/-!
# Presentation/ordinal noninterference
-/

namespace Mathematics.StratifiedBoundary

structure CertifiedStratifiedPresentationChange
    (before after : StratifiedPresentationNode) where
  persistentIdentity :
    after.persistentIdentity = before.persistentIdentity
  ordinalProfile :
    after.ordinalProfileRef = before.ordinalProfileRef
  ordinalSemantics :
    after.normalizedStratumRef = before.normalizedStratumRef
  proposalOnly : Bool := true
  proposalOnly_exact : proposalOnly = true

theorem presentation_change_does_not_change_ordinal_semantics
    {before after : StratifiedPresentationNode}
    (change :
      CertifiedStratifiedPresentationChange before after) :
    after.normalizedStratumRef =
      before.normalizedStratumRef :=
  change.ordinalSemantics

end Mathematics.StratifiedBoundary
```
