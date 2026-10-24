# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AbstractSourceTree.Variant9296e02f812406daa1877728d4728160a4d48bd66147dca73d205bffaa77c2e5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cbb91eac4edd87bcad9ff13bfa00e23a80e8eb39` · SHA-256 `4880e644b5967ebb10391cf5c6100c2ffbd55d1a8cd6c76f220fe2c5049ba9b3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AbstractSourceNode.Variantc8740cd14da0c8ca376b9fc51619f0b8efdea14f91cb559ae8d155cc101c2be5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c8740cd14da0c8ca376b9fc51619f0b8efdea14f91cb559ae8d155cc101c2be5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.AbstractSourceNode.Variantc8740cd14da0c8ca376b9fc51619f0b8efdea14f91cb559ae8d155cc101c2be5","mathematical_subject":"Computation.DataStructures","original_sha256":"c8740cd14da0c8ca376b9fc51619f0b8efdea14f91cb559ae8d155cc101c2be5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SourceAnalysis/AbstractSourceTree.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Ecosystem.Manifest
import Mathematics.SourceAnalysis.AbstractSourceAddress

/-!
# Reconstructible abstract source tree

The tree retains the path from repository history through source, syntax,
elaboration, kernel declarations, mathematical points, dependencies, and
model projections.  Parentage is checked; unsupported strata must be recorded
by the ingestion gate rather than omitted here.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AbstractSourceNode.Variantc8740cd14da0c8ca376b9fc51619f0b8efdea14f91cb559ae8d155cc101c2be5

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
```
