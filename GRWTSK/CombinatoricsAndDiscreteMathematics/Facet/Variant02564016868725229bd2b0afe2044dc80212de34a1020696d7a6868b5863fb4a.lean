-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.FacetRecord.Variant09f309155986d96ea20511fb9a319a40b973be202e1c249258fe464bcad2a2a5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"09f309155986d96ea20511fb9a319a40b973be202e1c249258fe464bcad2a2a5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.FacetRecord.Variant09f309155986d96ea20511fb9a319a40b973be202e1c249258fe464bcad2a2a5","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"09f309155986d96ea20511fb9a319a40b973be202e1c249258fe464bcad2a2a5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/post-application-e89443c73810dcdf/MathDiscovery/Taxonomy/Facet.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import MathDiscovery.Taxonomy.Domain

/-!
# Governed cross-cutting facets

Facet identity is stable-ID based so projects may extend the vocabulary. A
facet requires a witness and cannot become canonical home by itself.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.FacetRecord.Variant09f309155986d96ea20511fb9a319a40b973be202e1c249258fe464bcad2a2a5

namespace MathDiscovery.Taxonomy

open MathDiscovery

structure FacetRecord where
  id : FacetId
  canonicalName : String
  definition : String
  compatibleRoles : Finset OntologicalRole
  provenance : Finset StableId
  deriving DecidableEq

structure FacetRegistry where
  facets : List FacetRecord

namespace FacetRegistry

def UniqueIds (registry : FacetRegistry) : Prop :=
  (registry.facets.map (·.id)).Nodup

def find? (registry : FacetRegistry) (id : FacetId) : Option FacetRecord :=
  registry.facets.find? fun facet => facet.id = id

end FacetRegistry

end MathDiscovery.Taxonomy
