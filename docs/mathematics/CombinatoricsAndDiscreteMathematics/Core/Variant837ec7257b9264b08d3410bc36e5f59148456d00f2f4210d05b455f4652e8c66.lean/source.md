# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Core.Variant837ec7257b9264b08d3410bc36e5f59148456d00f2f4210d05b455f4652e8c66

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f51cff1bb03f81f38b806132c51a722ff728f9c2` · SHA-256 `bbd4204f36a3c57a63de66da43c0943bf53590febb655e82ef0811f11c23bc7d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.MathematicalTaxon.Variantfb2fa5ba40c02c65245301555bfa1132c65ffa3c93609f2b45628b41553df05f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fb2fa5ba40c02c65245301555bfa1132c65ffa3c93609f2b45628b41553df05f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.MathematicalTaxon.Variantfb2fa5ba40c02c65245301555bfa1132c65ffa3c93609f2b45628b41553df05f","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"fb2fa5ba40c02c65245301555bfa1132c65ffa3c93609f2b45628b41553df05f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Taxonomy/Core.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Taxonomy.Facet
import Mathematics.Concept.Core

/-! # Product mathematical taxon: role, domain, facets, level, status, and authority. -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.MathematicalTaxon.Variantfb2fa5ba40c02c65245301555bfa1132c65ffa3c93609f2b45628b41553df05f

namespace Mathematics.Taxonomy

open Mathematics

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

end Mathematics.Taxonomy
```
