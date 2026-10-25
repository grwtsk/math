# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Planes.Variante47906c88026dca7b71721102506a42e1913cc7d8ba93e94f98ba5dcb4ad5861

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a335daed7fc8e9e176aa6fe3532131b8fac5cc0e` · SHA-256 `ec7805d480a7fd2b59989714a00edeae39479ce4008a2b2cd7d958e2a3af0afe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.StaticPlanes.Variant1ca58b9393d2ee7b5b130531bea63b4e04f8fab6bfd54acaf8d469a7878fe00a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1ca58b9393d2ee7b5b130531bea63b4e04f8fab6bfd54acaf8d469a7878fe00a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.StaticPlanes.Variant1ca58b9393d2ee7b5b130531bea63b4e04f8fab6bfd54acaf8d469a7878fe00a","mathematical_subject":"Foundations.Unclassified","original_sha256":"1ca58b9393d2ee7b5b130531bea63b4e04f8fab6bfd54acaf8d469a7878fe00a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/lean/composite/CompositeElements/Planes.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import CompositeElements.Relations

/-! # Proof-indexed static square planes. -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.StaticPlanes.Variant1ca58b9393d2ee7b5b130531bea63b4e04f8fab6bfd54acaf8d469a7878fe00a

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
