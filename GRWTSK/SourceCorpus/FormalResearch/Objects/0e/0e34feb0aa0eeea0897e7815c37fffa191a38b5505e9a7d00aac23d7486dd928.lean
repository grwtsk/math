import Mathematics.Taxonomy.All

/-! # Polyhierarchical mathematical terrain -/

namespace Mathematics.Terrain

structure ConceptRegion where
  id : RegionId
  members : Finset ConceptId
  boundaryRelations : Finset RelationId
  profileDigest : Digest
  deriving DecidableEq

end Mathematics.Terrain
