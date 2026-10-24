# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Projection.Variant55945e45dc2f5c98ae96f7c95ae29c457c9ead8cdb2f4b1b098a2ee5bed48800

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `33979e8ca783e5a45740d33f1a324600018d4592` · SHA-256 `e01be62fa3d39fbcd9b3876126a098784134f742e326f89615ead7d5cc4e679e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.MultipleInheritancePolicy.Variant3ed2bde64c374614cf5b5d9c0e12fa117c02daa71d3c2447bb41a457c5eaa82d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3ed2bde64c374614cf5b5d9c0e12fa117c02daa71d3c2447bb41a457c5eaa82d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.MultipleInheritancePolicy.Variant3ed2bde64c374614cf5b5d9c0e12fa117c02daa71d3c2447bb41a457c5eaa82d","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"3ed2bde64c374614cf5b5d9c0e12fa117c02daa71d3c2447bb41a457c5eaa82d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/post-application-e89443c73810dcdf/MathDiscovery/Taxonomy/Projection.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import MathDiscovery.Taxonomy.Relation

/-!
# Derived navigation projections

A tree is a declared projection of the typed terrain. It never becomes the
canonical taxonomy merely because it is convenient to render.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.MultipleInheritancePolicy.Variant3ed2bde64c374614cf5b5d9c0e12fa117c02daa71d3c2447bb41a457c5eaa82d

namespace MathDiscovery.Taxonomy

open MathDiscovery

inductive MultipleInheritancePolicy
  | choosePrimary
  | duplicateReferenceLeaves
  | preserveDag
  deriving DecidableEq, Inhabited

structure NavigationProjection where
  id : NavigationProjectionId
  rootDomain : DomainId
  selectedRelations : Finset TaxonomyRelationKind
  tieBreakPolicy : StableId
  multipleInheritance : MultipleInheritancePolicy
  omittedRelations : Finset TaxonomyRelationKind
  authority : HomeCandidateAuthority := .navigationOnly
  deriving DecidableEq

end MathDiscovery.Taxonomy
```
