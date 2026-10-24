# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EuclideanPlaneCorpus.Variantae4b31702053ddb55a3cffa85b6a9f56b785a51f3a62df2c8af98b8bc5085c30

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `629dfd17369e11e5cd6c1576cf4c8f936925cd34` · SHA-256 `ae4b31702053ddb55a3cffa85b6a9f56b785a51f3a62df2c8af98b8bc5085c30`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Discovery.IdeasCorpus

/-!
# Euclidean-plane corpus address

Corpus module 195 has no project-local imports.  Its Mathlib imports are
external prerequisites, so this one module is the complete local source
closure.  The path and ordinal are provenance coordinates only.
-/

namespace Mathematics.Geometry.EuclideanPlaneCorpus

open Mathematics
open Mathematics.Discovery

def sourceModule : CorpusModuleAddress where
  corpus := ideasCorpus
  moduleOrdinal := 195
  modulePath := "BitMatrix/Geometry/Euclidean.lean"
  modulePath_nonempty := by decide
  moduleDigest := {
    value := "719d566e7d77e00ce44d438cea2904012f10931716afabdc8a01f3d52d271a58"
  }
  moduleDigest_valid := by
    unfold Digest.Valid
    native_decide

/-- The exact project-local source closure. -/
def dependencyClosure : List CorpusModuleAddress := [sourceModule]

@[simp] theorem dependencyClosure_length :
    dependencyClosure.length = 1 := by decide

end Mathematics.Geometry.EuclideanPlaneCorpus
```
