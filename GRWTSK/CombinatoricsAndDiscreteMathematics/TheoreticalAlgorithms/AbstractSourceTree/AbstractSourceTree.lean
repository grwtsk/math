import Mathematics.Ecosystem.Manifest
import Mathematics.SourceAnalysis.AbstractSourceAddress

/-!
# Reconstructible abstract source tree

The tree retains the path from repository history through source, syntax,
elaboration, kernel declarations, mathematical points, dependencies, and
model projections.  Parentage is checked; unsupported strata must be recorded
by the ingestion gate rather than omitted here.
-/

namespace Mathematics.SourceAnalysis

/-- One node in the source-derived ancestry graph. -/
structure AbstractSourceNode where
  address : AbstractSourceAddress
  artifactId : Ecosystem.ArtifactId
  deriving DecidableEq, Repr

/-- A complete finite abstract source tree for one immutable manifest. -/
structure AbstractSourceTree where
  manifest : Ecosystem.ProjectManifest
  nodes : List AbstractSourceNode
  address_ids_unique :
    (nodes.map (·.address.addressId)).Nodup
  source_roots_exist :
    ∀ artifactId ∈ manifest.sourceInventory,
      ∃ node ∈ nodes,
        node.artifactId = artifactId ∧
        node.address.layer = .sourceFile
  nodes_resolve_artifacts :
    ∀ node ∈ nodes,
      node.artifactId ∈ manifest.sourceInventory
  parents_resolve :
    ∀ node ∈ nodes,
      ∀ parentId,
        node.address.parentAddressId = some parentId →
          ∃ parent ∈ nodes,
            parent.address.addressId = parentId
  ancestry_monotone :
    ∀ child ∈ nodes,
      ∀ parent ∈ nodes,
        child.address.parentAddressId =
          some parent.address.addressId →
        parent.address.layer.rank ≤ child.address.layer.rank
  treeDigest : Digest

namespace AbstractSourceTree

/-- Every inventoried source artifact has a retained source-file root. -/
theorem source_root
    (tree : AbstractSourceTree)
    {artifactId : Ecosystem.ArtifactId}
    (inventoried : artifactId ∈ tree.manifest.sourceInventory) :
    ∃ node ∈ tree.nodes,
      node.artifactId = artifactId ∧
      node.address.layer = .sourceFile :=
  tree.source_roots_exist artifactId inventoried

/-- Every derived node remains attached to an inventoried source artifact. -/
theorem node_has_source
    (tree : AbstractSourceTree)
    {node : AbstractSourceNode}
    (member : node ∈ tree.nodes) :
    node.artifactId ∈ tree.manifest.sourceInventory :=
  tree.nodes_resolve_artifacts node member

end AbstractSourceTree

end Mathematics.SourceAnalysis
