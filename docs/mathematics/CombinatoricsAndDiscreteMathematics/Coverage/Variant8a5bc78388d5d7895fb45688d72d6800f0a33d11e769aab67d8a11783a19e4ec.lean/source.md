# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Coverage.Variant8a5bc78388d5d7895fb45688d72d6800f0a33d11e769aab67d8a11783a19e4ec

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6fbb6cfae32bd81ac6e047c43f3921e1bb957acc` · SHA-256 `8a5bc78388d5d7895fb45688d72d6800f0a33d11e769aab67d8a11783a19e4ec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Mutation.Event

/-!
# Honest whole-system coverage

A required vertex must be observed, explicitly unsupported, or excluded with a
reason.  The indexed classifier leaves no fourth, silently omitted case.
-/

namespace Mathematics.Mutation

structure SystemManifest where
  manifestId : StableId
  digest : Digest
  requiredVertices : Finset StableId
  requiredEdges : Finset StableId

inductive CoverageDisposition
  | observed (receipt : ObjectAddress)
  | unsupported (reason : String)
  | excluded (reason : String)

structure CoverageCertificate
    (manifest : SystemManifest) where
  classifyVertex :
    ∀ vertex, vertex ∈ manifest.requiredVertices → CoverageDisposition
  observedCount : Nat
  unsupportedCount : Nat
  excludedCount : Nat
  adapterDigest : Digest
  toolchainDigest : Digest

def wholeSystemCovered
    (manifest : SystemManifest) : Prop :=
  Nonempty (CoverageCertificate manifest)

structure WholeSystemClaim
    (manifest : SystemManifest) where
  coverage : CoverageCertificate manifest

theorem whole_system_claim_requires_coverage
    (manifest : SystemManifest)
    (claim : WholeSystemClaim manifest) :
    wholeSystemCovered manifest :=
  ⟨claim.coverage⟩

end Mathematics.Mutation
```
