-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.MathematicalTaxon.Variantea98b8c096e130f13eccbf780f6dcf9a17482dc266004a04563d0d4aa434a482","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ea98b8c096e130f13eccbf780f6dcf9a17482dc266004a04563d0d4aa434a482","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.MathematicalTaxon.Variantea98b8c096e130f13eccbf780f6dcf9a17482dc266004a04563d0d4aa434a482","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"ea98b8c096e130f13eccbf780f6dcf9a17482dc266004a04563d0d4aa434a482","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/post-application-e89443c73810dcdf/MathDiscovery/Taxonomy/Core.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import MathDiscovery.Taxonomy.Facet
import MathDiscovery.Concept.Core

/-! # Product mathematical taxon: role, domain, facets, level, status, and authority. -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.MathematicalTaxon.Variantea98b8c096e130f13eccbf780f6dcf9a17482dc266004a04563d0d4aa434a482

namespace MathDiscovery.Taxonomy

open MathDiscovery

structure MathematicalTaxon where
  id : TaxonId
  conceptId : ConceptId
  primaryRole : OntologicalRole
  secondaryRoles : Finset OntologicalRole
  principalDomain : DomainPath
  secondaryDomains : Finset DomainPath
  facets : Finset FacetId
  level : StructuralLevel
  status : MathematicalStatus
  authority : Concept.Profile
  evidenceId : TaxonomyEvidenceId
  deriving DecidableEq

namespace MathematicalTaxon

def RolesSeparated (taxon : MathematicalTaxon) : Prop :=
  taxon.primaryRole ∉ taxon.secondaryRoles

def DomainsSeparated (taxon : MathematicalTaxon) : Prop :=
  taxon.principalDomain ∉ taxon.secondaryDomains

theorem primaryRole_unique
    (taxon : MathematicalTaxon) (left right : OntologicalRole)
    (hleft : left = taxon.primaryRole)
    (hright : right = taxon.primaryRole) : left = right := by
  rw [hleft, hright]

end MathematicalTaxon

end MathDiscovery.Taxonomy
