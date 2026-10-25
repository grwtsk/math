# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Corpus.Variant90345bce23c71713a8c71221d1a30af9866fb054b1ab3d1fb68a099c2b0d11d7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ad9608203ed07c63e38bbe0e540f05c4d2de5b57` · SHA-256 `90345bce23c71713a8c71221d1a30af9866fb054b1ab3d1fb68a099c2b0d11d7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Discovery.IdeasCorpus

/-!
# Boolean corpus module addresses

These are exact router prefixes for the four Boolean modules retained in
`ideas.md`.  They carry provenance only.
-/

namespace Mathematics.Boolean.Corpus

open Mathematics
open Mathematics.Discovery

def carrierModule : CorpusModuleAddress where
  corpus := ideasCorpus
  moduleOrdinal := 27
  modulePath := "Algebra.lean"
  modulePath_nonempty := by decide
  moduleDigest := {
    value := "802b028e0803892f788fcadb0f2af0bfa96ab776e5243901539962ab8e650616"
  }
  moduleDigest_valid := by
    unfold Digest.Valid
    native_decide

def boolModule : CorpusModuleAddress where
  corpus := ideasCorpus
  moduleOrdinal := 28
  modulePath := "Algebra/Bool.lean"
  modulePath_nonempty := by decide
  moduleDigest := {
    value := "b6de79d6ee570d61d1fac4af2f6e34de572da714ccce4545e6ad09b6ae50204b"
  }
  moduleDigest_valid := by
    unfold Digest.Valid
    native_decide

def formulaModule : CorpusModuleAddress where
  corpus := ideasCorpus
  moduleOrdinal := 29
  modulePath := "Algebra/Formula.lean"
  modulePath_nonempty := by decide
  moduleDigest := {
    value := "bc2045c5e516f71dad8574fbbde071bf6a91693b7416a6164754ba2375fa807f"
  }
  moduleDigest_valid := by
    unfold Digest.Valid
    native_decide

def lawsModule : CorpusModuleAddress where
  corpus := ideasCorpus
  moduleOrdinal := 30
  modulePath := "Algebra/Laws.lean"
  modulePath_nonempty := by decide
  moduleDigest := {
    value := "66ef8d5aaabd10c06bebd757f25c24fb23fe731161972dc62a9a1a83bec21aca"
  }
  moduleDigest_valid := by
    unfold Digest.Valid
    native_decide

end Mathematics.Boolean.Corpus
```
