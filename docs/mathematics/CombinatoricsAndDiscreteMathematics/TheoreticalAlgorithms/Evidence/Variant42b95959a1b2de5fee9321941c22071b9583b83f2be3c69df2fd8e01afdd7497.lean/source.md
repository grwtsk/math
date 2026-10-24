# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Evidence.Variant42b95959a1b2de5fee9321941c22071b9583b83f2be3c69df2fd8e01afdd7497

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3c20da4eb8adcd51b7a301b4fd517edb005382ed` · SHA-256 `42b95959a1b2de5fee9321941c22071b9583b83f2be3c69df2fd8e01afdd7497`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import MathDiscovery.Oracle.Naming.Name
import MathDiscovery.Core.Id

/-! # Exact evidence packets for deterministic naming -/

namespace MathDiscovery.Oracle.Naming

open MathDiscovery

structure NamingEvidence where
  atomId : SourceAtomId
  language : PointLanguage
  declarationNames : Array String
  declarationKinds : Array String
  typeSummaries : Array String
  conceptCoordinates : Array String
  taxonomyCoordinates : Array String
  publicInputs : Array String
  publicOutputs : Array String
  generatedCompanions : Array String
  providerKinds : Array String
  supportIds : Array String
  evidenceDigest : Digest
  deriving DecidableEq, Repr

def NamingEvidence.Supports (evidence : NamingEvidence) (supportId : String) : Prop :=
  supportId ∈ evidence.supportIds

def NamingEvidence.StableFor (evidence : NamingEvidence) (atomId : SourceAtomId) : Prop :=
  evidence.atomId = atomId

end MathDiscovery.Oracle.Naming
```
