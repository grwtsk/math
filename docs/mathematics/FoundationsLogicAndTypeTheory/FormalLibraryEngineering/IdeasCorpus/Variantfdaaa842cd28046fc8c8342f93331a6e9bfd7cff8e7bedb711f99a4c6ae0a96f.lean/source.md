# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IdeasCorpus.Variantfdaaa842cd28046fc8c8342f93331a6e9bfd7cff8e7bedb711f99a4c6ae0a96f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `13b906302ab41fea21437f7d05f7a05ac1497c69` · SHA-256 `fdaaa842cd28046fc8c8342f93331a6e9bfd7cff8e7bedb711f99a4c6ae0a96f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Discovery.Corpus

/-!
# `ideas.md` corpus identity

The constants below bind formal reconstruction links to the exact retained
11,581,112-byte source and its Rust-generated structural inventory.
-/

namespace Mathematics.Discovery

/-- Content identity of the current `ideas.md` corpus and inventory. -/
def ideasCorpus : CorpusIdentity where
  corpusId := { value := "corpus:ideas.md:8154ed39b1756689" }
  corpusId_valid := by
    simp [StableId.Valid]
  sourceDigest := {
    value := "8154ed39b17566896e343b13f15b61b750ad87b9c4d54985ba6a4d557a575478"
  }
  sourceDigest_valid := by
    unfold Digest.Valid
    native_decide
  inventoryDigest := {
    value := "6b48eb4365554887d5009989955313f0b83491f380ab5ea3ef900eeb861fec8f"
  }
  inventoryDigest_valid := by
    unfold Digest.Valid
    native_decide
  moduleCount := 1937

end Mathematics.Discovery
```
