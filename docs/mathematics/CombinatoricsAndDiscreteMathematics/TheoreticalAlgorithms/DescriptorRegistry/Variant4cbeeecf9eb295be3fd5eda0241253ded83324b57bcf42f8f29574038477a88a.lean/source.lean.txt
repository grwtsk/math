import Mathematics.Concept.Descriptor

/-!
# Total descriptor registry

The registry is the accountable inventory of labels for one point universe.
Every descriptor identity is unique, every inventoried occurrence is present,
and every point-bearing disposition resolves in that universe.
-/

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
