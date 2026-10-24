# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Corpus.Variant40f352d5f36015561716cc5659611992292f72ded84f12535389a5e97adb073a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f68334c2394ca02444d08fe6aa60caae36f1741a` · SHA-256 `40f352d5f36015561716cc5659611992292f72ded84f12535389a5e97adb073a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Discovery.IdeasCorpus

/-!
# Kakeya tube-root corpus address

Corpus module 984 is the unique import-free declaration-bearing root of the
retained Kakeya component.  Its path and ordinal are provenance coordinates;
the source digest is the identity-bearing evidence.
-/

namespace Mathematics.Geometry.Kakeya.Corpus

open Mathematics
open Mathematics.Discovery

def tubeRoot : CorpusModuleAddress where
  corpus := ideasCorpus
  moduleOrdinal := 984
  modulePath := "Geometry/Kakeya/Tubes.lean"
  modulePath_nonempty := by decide
  moduleDigest := {
    value := "737641b8e7951275211274c8b092f6211ff046f85eb293c1302027168ee57f51"
  }
  moduleDigest_valid := by
    unfold Digest.Valid
    native_decide

/-- The exact project-local dependency closure of the import-free root. -/
def tubeRootDependencyClosure : List CorpusModuleAddress := [tubeRoot]

@[simp] theorem tubeRootDependencyClosure_length :
    tubeRootDependencyClosure.length = 1 := by decide

end Mathematics.Geometry.Kakeya.Corpus
```
