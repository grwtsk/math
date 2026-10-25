# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Scope.Variant54f4241924deb0cd4498dd11f60bd5cafe503481b244959ffd84931c1e2d521b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c0881e9be4235d0cc389d66049faef28ad57e00b` · SHA-256 `bd870f4b2ec251a30f89e73cb9adec211fe9665f9b65587265aac8f4407b0538`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OperationalCapability.Variant12bdab3ec4b138c3e1e007a24433ead94a020402102da3db7d9e26047f2549b5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"12bdab3ec4b138c3e1e007a24433ead94a020402102da3db7d9e26047f2549b5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.OperationalCapability.Variant12bdab3ec4b138c3e1e007a24433ead94a020402102da3db7d9e26047f2549b5","mathematical_subject":"Foundations.Unclassified","original_sha256":"12bdab3ec4b138c3e1e007a24433ead94a020402102da3db7d9e26047f2549b5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Capability/Scope.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Capability.Effect
import Mathematics.Capability.Principal

/-!
# Device-, element-, purpose-, and snapshot-bound capability

The partial order is componentwise and fail closed.  A refinement must stay on
the same device, purpose, and projection snapshot while reducing both element
scope and effect scope.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OperationalCapability.Variant12bdab3ec4b138c3e1e007a24433ead94a020402102da3db7d9e26047f2549b5

namespace Mathematics.Capability

structure OperationalCapability where
  device : DeviceId
  elements : Set ElementId
  purpose : PurposeId
  snapshot : ObjectAddress
  effects : EffectProfile

def OperationalCapability.Refines
    (child parent : OperationalCapability) : Prop :=
  child.device = parent.device ∧
    child.purpose = parent.purpose ∧
    child.snapshot = parent.snapshot ∧
    child.elements ⊆ parent.elements ∧
    child.effects ≤ parent.effects

instance : LE OperationalCapability :=
  ⟨OperationalCapability.Refines⟩

namespace OperationalCapability

@[refl] theorem le_refl (capability : OperationalCapability) :
    capability ≤ capability :=
  ⟨rfl, rfl, rfl, Set.Subset.rfl, EffectProfile.le_refl _⟩

theorem le_trans
    {first second third : OperationalCapability}
    (first_le_second : first ≤ second)
    (second_le_third : second ≤ third) :
    first ≤ third := by
  rcases first_le_second with
    ⟨device₁, purpose₁, snapshot₁, elements₁, effects₁⟩
  rcases second_le_third with
    ⟨device₂, purpose₂, snapshot₂, elements₂, effects₂⟩
  exact
    ⟨device₁.trans device₂,
      purpose₁.trans purpose₂,
      snapshot₁.trans snapshot₂,
      Set.Subset.trans elements₁ elements₂,
      EffectProfile.le_trans effects₁ effects₂⟩

end OperationalCapability

/-- An explicit element neighborhood; no metric threshold is implicit. -/
structure CapabilityNeighborhood where
  neighborhoodId : StableId
  elements : Set ElementId
  certificate : CertificateId

def OperationalCapability.restrict
    (capability : OperationalCapability)
    (neighborhood : CapabilityNeighborhood) :
    OperationalCapability :=
  { capability with
    elements := capability.elements ∩ neighborhood.elements }

theorem OperationalCapability.restrict_le
    (capability : OperationalCapability)
    (neighborhood : CapabilityNeighborhood) :
    capability.restrict neighborhood ≤ capability :=
  ⟨rfl, rfl, rfl, Set.inter_subset_left, EffectProfile.le_refl _⟩

end Mathematics.Capability
```
