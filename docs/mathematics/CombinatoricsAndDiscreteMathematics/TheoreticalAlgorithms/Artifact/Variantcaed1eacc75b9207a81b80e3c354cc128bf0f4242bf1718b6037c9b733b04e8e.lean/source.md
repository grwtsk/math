# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Artifact.Variantcaed1eacc75b9207a81b80e3c354cc128bf0f4242bf1718b6037c9b733b04e8e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3e316b050ee277201396b15764cfb36bb96b2093` · SHA-256 `caed1eacc75b9207a81b80e3c354cc128bf0f4242bf1718b6037c9b733b04e8e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Incremental.AffectedOrder

namespace Surface
namespace Incremental

structure ArtifactKey where
  moduleKey : ModuleKey
  kind : ArtifactKind
  path : String
deriving Repr, DecidableEq

inductive ArtifactAction where
  | regenerate
  | reuse
  | deleteStale
  | fail
deriving Repr, DecidableEq

structure ArtifactPlanEntry where
  key : ArtifactKey
  action : ArtifactAction
  oldHash? : Option ContentHash
  newHash? : Option ContentHash
  reason : InclusionReason
  explanation : String
  claimBoundary : List String
deriving Repr

structure ArtifactReuseCertificate where
  key : ArtifactKey
  oldHash : ContentHash
  reusedHash : ContentHash
  hashesIdentical : oldHash = reusedHash
  claimBoundary : List String
deriving Repr

theorem unchangedModule_has_identical_artifact_hash
    (C : ArtifactReuseCertificate) :
    C.oldHash = C.reusedHash :=
  C.hashesIdentical

end Incremental
end Surface
```
