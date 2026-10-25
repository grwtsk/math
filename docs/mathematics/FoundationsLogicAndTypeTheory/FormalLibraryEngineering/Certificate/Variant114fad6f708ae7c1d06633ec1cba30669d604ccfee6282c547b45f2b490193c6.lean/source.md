# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Certificate.Variant114fad6f708ae7c1d06633ec1cba30669d604ccfee6282c547b45f2b490193c6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `89c658fb03ca928cde9aac53f147c0bca8c74de9` · SHA-256 `114fad6f708ae7c1d06633ec1cba30669d604ccfee6282c547b45f2b490193c6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Logic.Category.Bridge

namespace Think.Logic

structure LogicKnowledgeAuthorityCertificate where
  bridge : CategoricalBridgeEquivalence
  kernelStatus : Bool
  semanticPreservationReceiptHash : String
  roundTripReceiptHash : String
  visualAuthority : Bool
  claimBearing : Bool

def LogicKnowledgeAuthorityCertificate.accepted
  (cert : LogicKnowledgeAuthorityCertificate) : Prop :=
  cert.kernelStatus = true ∧ cert.claimBearing = true ∧ cert.visualAuthority = false

theorem LogicKnowledgeAuthorityCertificate.sound_object_bijection
  (cert : LogicKnowledgeAuthorityCertificate) :
  Bijective cert.bridge.toKnowledge.obj :=
by
  exact CategoricalBridgeEquivalence.object_bijective cert.bridge

theorem LogicKnowledgeAuthorityCertificate.no_visual_authority_if_accepted
  (cert : LogicKnowledgeAuthorityCertificate) :
  cert.accepted → cert.visualAuthority = false :=
by
  intro h
  exact h.right.right

theorem LogicKnowledgeAuthorityCertificate.kernel_checked_if_accepted
  (cert : LogicKnowledgeAuthorityCertificate) :
  cert.accepted → cert.kernelStatus = true :=
by
  intro h
  exact h.left

end Think.Logic
```
