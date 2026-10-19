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
