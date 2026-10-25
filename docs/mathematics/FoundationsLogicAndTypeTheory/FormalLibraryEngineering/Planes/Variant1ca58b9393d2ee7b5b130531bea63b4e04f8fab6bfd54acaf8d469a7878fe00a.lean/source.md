# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Planes.Variant1ca58b9393d2ee7b5b130531bea63b4e04f8fab6bfd54acaf8d469a7878fe00a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `07dd63e7fdc17429ee8179528224afb3dc8cd892` · SHA-256 `1ca58b9393d2ee7b5b130531bea63b4e04f8fab6bfd54acaf8d469a7878fe00a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import CompositeElements.Relations

/-! # Proof-indexed static square planes. -/

namespace URSM.Composite

open URSM.Contracts

def descriptor
    (id : String)
    (shape : PlaneShape)
    (meaningDigest : String) :
    PlaneDescriptor where
  id := id
  authority := .kernelTheorem
  shape := shape
  schemaVersion := 1
  meaningDigest := meaningDigest

structure StaticPlanes where
  declared :
    FormalPlane projectCount
      (fun i j ↦ declaredBits i j = true)
  formalEligible :
    FormalPlane projectCount
      (fun i j ↦ formalEligibleBits i j = true)
  imports :
    FormalPlane projectCount
      (fun i j ↦ importsBits i j = true)
  transport :
    FormalPlane projectCount
      (fun i j ↦ transportBits i j = true)
  exactBridge :
    FormalPlane projectCount
      (fun i j ↦ exactBridgeBits i j = true)
  conflict :
    FormalPlane projectCount
      (fun i j ↦ conflictBits i j = true)
  propertyNaturality :
    FormalPlane projectCount
      (fun i j ↦ propertyNaturalityBits i j = true)

def conflictResolvedSquare :
    ResolvedSquare projectCount where
  bits := conflictBits
  valid := conflictValidityBits
  invalidZero := by
    simp [conflictBits]

def staticPlanes : StaticPlanes where
  declared :=
    FormalPlane.ofBits
      (descriptor "declared" .diagonal
        "lean:URSM.Composite.declaredBits")
      declaredBits
      "lean:URSM.Composite.declaredBits"
  formalEligible :=
    FormalPlane.ofBits
      (descriptor "formalEligible" .diagonal
        "lean:URSM.Composite.formalEligibleBits")
      formalEligibleBits
      "lean:URSM.Composite.formalEligibleBits"
  imports :=
    FormalPlane.ofBits
      (descriptor "imports" .directed
        "lean:URSM.Composite.ProjectImports")
      importsBits
      "lean:URSM.Composite.imports_rank_decreases"
  transport :=
    FormalPlane.ofBits
      (descriptor "transport" .directed
        "lean:URSM.Composite.transportBits")
      transportBits
      "lean:URSM.Composite.exactBridge_implies_transport"
  exactBridge :=
    FormalPlane.ofBits
      (descriptor "exactBridge" .symmetric
        "lean:URSM.Composite.exactBridgeBits")
      exactBridgeBits
      "lean:URSM.Composite.exactBridge_registry_certificate"
  conflict := {
    descriptor :=
      descriptor "conflict" .symmetric
        "lean:URSM.Composite.conflictBits"
    square := conflictResolvedSquare
    positive := by
      intro i j observed
      simp [conflictResolvedSquare, ResolvedSquare.read?,
        conflictBits] at observed
    negative := by
      intro i j observed
      simp [conflictBits]
    certificateRoot :=
      "lean:URSM.Composite.analyzed_conflicts_are_negative"
  }
  propertyNaturality :=
    FormalPlane.ofBits
      (descriptor "propertyNaturality" .directed
        "lean:URSM.Composite.propertyNaturalityBits")
      propertyNaturalityBits
      "lean:Mathematics.Concept.Profile.NoStrongerThan"

end URSM.Composite
```
