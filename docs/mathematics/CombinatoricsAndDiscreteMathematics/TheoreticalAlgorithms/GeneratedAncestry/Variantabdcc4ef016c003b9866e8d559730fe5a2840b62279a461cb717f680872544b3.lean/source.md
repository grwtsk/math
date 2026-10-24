# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.GeneratedAncestry.Variantabdcc4ef016c003b9866e8d559730fe5a2840b62279a461cb717f680872544b3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5f745cbb964f8c7efd9137b1ad6f37c65337ffc4` · SHA-256 `abdcc4ef016c003b9866e8d559730fe5a2840b62279a461cb717f680872544b3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Capability.Principal
import Mathematics.Concept.Authority
import Mathematics.Ingestion.TypedIngress
import Mathematics.SourceAnalysis.AbstractSourceAddress

/-!
# Generated mathematical ancestry

Generated mathematics re-enters through the same source-addressed gate.  Its
generator, task, inputs, target, authority, and obligations are immutable
ancestry coordinates; generation does not grant theorem authority.
-/

namespace Mathematics.Ingestion

inductive GeneratorKind
  | human
  | externalModel
  | localModel
  | symbolicSearch
  | compiler
  | transformation
  deriving DecidableEq, Repr

structure GeneratedAncestry where
  ancestryId : StableId
  generatorKind : GeneratorKind
  generator : Capability.Principal
  taskDigest : Digest
  promptDigest : Option Digest
  inputAddressIds : List StableId
  outputAddress : SourceAnalysis.AbstractSourceAddress
  authority : Concept.Profile
  obligationIds : List StableId
  predecessorAncestryIds : List StableId
  ancestryDigest : Digest
  deriving DecidableEq

/-- Re-ingestion binds generated output to a typed ingress entry. -/
structure GeneratedReingestion
    (ancestry : GeneratedAncestry) where
  entry : TypedIngressEntry
  output_address_exact :
    entry.sourceAddress = ancestry.outputAddress
  reingestionReceiptId : StableId
  reingestionDigest : Digest

theorem GeneratedReingestion.retains_generator
    {ancestry : GeneratedAncestry}
    (_reingestion : GeneratedReingestion ancestry) :
    ∃ generator, generator = ancestry.generator :=
  ⟨ancestry.generator, rfl⟩

end Mathematics.Ingestion
```
