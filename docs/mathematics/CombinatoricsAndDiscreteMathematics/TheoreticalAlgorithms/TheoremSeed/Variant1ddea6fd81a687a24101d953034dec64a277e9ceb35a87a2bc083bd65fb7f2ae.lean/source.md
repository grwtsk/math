# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TheoremSeed.Variant1ddea6fd81a687a24101d953034dec64a277e9ceb35a87a2bc083bd65fb7f2ae

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7d68326a179f7f064057f47d0f607f7826742439` · SHA-256 `1ddea6fd81a687a24101d953034dec64a277e9ceb35a87a2bc083bd65fb7f2ae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import MathDiscovery.Extractor.Core

/-!
# Theorem-cell seed emitted from an extracted theorem declaration

A seed records compiled statement, proof, dependency, trust, source, and module
identities.  It is evidence for theorem-cell axes; it is not itself a closed
cell and does not promote an external extraction artifact to theorem authority.
-/

namespace MathDiscovery.Extractor

open MathDiscovery

/-- The only authority available to an extracted theorem-cell seed. There is
deliberately no constructor that promotes a seed to a closed theorem cell. -/
inductive TheoremCellSeedAuthority
  | extractedEvidenceOnly
  deriving DecidableEq, Repr, Inhabited

structure TheoremCellSeed where
  declarationId : DeclarationId
  theoremName : Lean.Name
  statementDigest : Digest
  proofDigest : Option Digest
  dependencyDigest : Digest
  trustClosureDigest : Digest
  sourceDigest : Option Digest
  owningModuleDigest : Digest
  directDependencies : Array Lean.Name
  transitiveConeDigest : Digest
  authorityEvidence : TrustClosure
  authority : TheoremCellSeedAuthority := .extractedEvidenceOnly
  deriving DecidableEq, Repr, Inhabited

namespace TheoremCellSeed

/-- A seed is aligned when its trust record describes the same declaration. -/
def TrustAligned (seed : TheoremCellSeed) : Prop :=
  seed.authorityEvidence.declarationId = seed.declarationId ∧
  seed.authorityEvidence.declaration = seed.theoremName

end TheoremCellSeed

end MathDiscovery.Extractor
```
