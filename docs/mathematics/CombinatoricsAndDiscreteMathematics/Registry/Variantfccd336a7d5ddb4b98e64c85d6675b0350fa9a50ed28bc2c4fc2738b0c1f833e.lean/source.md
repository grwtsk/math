# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Registry.Variantfccd336a7d5ddb4b98e64c85d6675b0350fa9a50ed28bc2c4fc2738b0c1f833e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `86256ba7de1cf22d8be5004620e26f1c25146235` · SHA-256 `4ff4549e4845c4476678d10fae6b6b897a77b6b39da56c18a2d99e711dc0b980`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Registry.Variant76e07461752ced80eb4087d664efbf21134e96914a68f55abef4a7aa6fde8b4a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"76e07461752ced80eb4087d664efbf21134e96914a68f55abef4a7aa6fde8b4a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Registry.Variant76e07461752ced80eb4087d664efbf21134e96914a68f55abef4a7aa6fde8b4a","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"76e07461752ced80eb4087d664efbf21134e96914a68f55abef4a7aa6fde8b4a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/post-application-e89443c73810dcdf/MathDiscovery/Taxonomy/Registry.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import MathDiscovery.Taxonomy.Projection

/-! # Complete product-taxonomy registry. -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Registry.Variant76e07461752ced80eb4087d664efbf21134e96914a68f55abef4a7aa6fde8b4a

namespace MathDiscovery.Taxonomy

structure Registry where
  rootDomain : DomainId
  domains : DomainRegistry
  facets : FacetRegistry
  taxa : List MathematicalTaxon
  evidence : List TaxonEvidence
  witnessEvidence : List TypedEvidence
  relations : List TaxonomyRelationRecord
  projections : List NavigationProjection

namespace Registry

def UniqueTaxonIds (registry : Registry) : Prop :=
  (registry.taxa.map (·.id)).Nodup

def UniqueConceptTaxa (registry : Registry) : Prop :=
  (registry.taxa.map (·.conceptId)).Nodup

def UniqueEvidenceIds (registry : Registry) : Prop :=
  (registry.evidence.map (·.id)).Nodup

def UniqueWitnessEvidenceIds (registry : Registry) : Prop :=
  (registry.witnessEvidence.map (·.id)).Nodup

def UniqueRelationIds (registry : Registry) : Prop :=
  (registry.relations.map (·.id)).Nodup

def UniqueProjectionIds (registry : Registry) : Prop :=
  (registry.projections.map (·.id)).Nodup

def findTaxon? (registry : Registry) (conceptId : ConceptId) :
    Option MathematicalTaxon :=
  registry.taxa.find? fun taxon => taxon.conceptId = conceptId

def findEvidence? (registry : Registry) (evidenceId : TaxonomyEvidenceId) :
    Option TaxonEvidence :=
  registry.evidence.find? fun evidence => evidence.id = evidenceId

def findWitnessEvidence? (registry : Registry) (evidenceId : StableId) :
    Option TypedEvidence :=
  registry.witnessEvidence.find? fun evidence => evidence.id = evidenceId

/-- Every witness identifier resolves to a current, digest-valid record of the
required evidence kind. -/
def WitnessesResolveAs
    (registry : Registry) (witnesses : Finset StableId)
    (kind : EvidenceKind) : Prop :=
  ∀ witnessId ∈ witnesses,
    ∃ evidence ∈ registry.witnessEvidence,
      evidence.id = witnessId ∧
      evidence.kind = kind ∧
      evidence.id.Valid ∧
      evidence.subject.Valid ∧
      evidence.digest.Valid ∧
      evidence.provenance.Nonempty

end Registry

end MathDiscovery.Taxonomy
```
