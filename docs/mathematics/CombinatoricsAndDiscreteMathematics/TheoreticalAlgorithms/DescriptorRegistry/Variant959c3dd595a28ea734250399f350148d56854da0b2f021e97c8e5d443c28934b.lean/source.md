# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DescriptorRegistry.Variant959c3dd595a28ea734250399f350148d56854da0b2f021e97c8e5d443c28934b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f315dbb422b765480f703de1c8a05f2b75b58c5c` · SHA-256 `54932a722406f16141079579fda1d9be2fac75384f143f62c2e376cac9efe115`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DescriptorRegistry.Variant4cbeeecf9eb295be3fd5eda0241253ded83324b57bcf42f8f29574038477a88a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4cbeeecf9eb295be3fd5eda0241253ded83324b57bcf42f8f29574038477a88a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.DescriptorRegistry.Variant4cbeeecf9eb295be3fd5eda0241253ded83324b57bcf42f8f29574038477a88a","mathematical_subject":"Computation.DataStructures","original_sha256":"4cbeeecf9eb295be3fd5eda0241253ded83324b57bcf42f8f29574038477a88a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Concept/DescriptorRegistry.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Concept.Descriptor

/-!
# Total descriptor registry

The registry is the accountable inventory of labels for one point universe.
Every descriptor identity is unique, every inventoried occurrence is present,
and every point-bearing disposition resolves in that universe.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DescriptorRegistry.Variant4cbeeecf9eb295be3fd5eda0241253ded83324b57bcf42f8f29574038477a88a

namespace Mathematics.Concept

def DescriptorDisposition.pointReferences :
    DescriptorDisposition → List ElementId
  | .knownPoint pointId => [pointId]
  | .projectLocalName pointId => [pointId]
  | .candidatePoint pointId => [pointId]
  | _ => []

structure DescriptorRegistry where
  registryId : StableId
  pointIds : List ElementId
  point_ids_unique : pointIds.Nodup
  descriptorInventory : List DescriptorId
  descriptor_inventory_unique : descriptorInventory.Nodup
  descriptors : List Descriptor
  descriptor_ids_unique :
    (descriptors.map Descriptor.descriptorId).Nodup
  inventoryCoverage :
    ∀ descriptorId,
      descriptorId ∈ descriptorInventory ↔
        ∃ descriptor ∈ descriptors,
          descriptor.descriptorId = descriptorId
  pointReferencesResolve :
    ∀ descriptor ∈ descriptors,
      ∀ pointId ∈ descriptor.disposition.pointReferences,
        pointId ∈ pointIds
  registryDigest : Digest

namespace DescriptorRegistry

/-- No inventoried label occurrence may disappear. -/
theorem descriptor_exists
    (registry : DescriptorRegistry)
    {descriptorId : DescriptorId}
    (inventoried : descriptorId ∈ registry.descriptorInventory) :
    ∃ descriptor ∈ registry.descriptors,
      descriptor.descriptorId = descriptorId :=
  (registry.inventoryCoverage descriptorId).mp inventoried

/-- Every point-bearing descriptor resolves to the same point universe. -/
theorem point_reference_resolves
    (registry : DescriptorRegistry)
    {descriptor : Descriptor}
    (member : descriptor ∈ registry.descriptors)
    {pointId : ElementId}
    (reference :
      pointId ∈ descriptor.disposition.pointReferences) :
    pointId ∈ registry.pointIds :=
  registry.pointReferencesResolve descriptor member pointId reference

end DescriptorRegistry

end Mathematics.Concept
```
