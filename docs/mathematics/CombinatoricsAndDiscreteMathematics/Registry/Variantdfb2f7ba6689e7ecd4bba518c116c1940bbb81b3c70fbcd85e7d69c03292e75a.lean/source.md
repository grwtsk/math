# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Registry.Variantdfb2f7ba6689e7ecd4bba518c116c1940bbb81b3c70fbcd85e7d69c03292e75a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bb7715b3f511a4154568af213ca496b8232de57b` · SHA-256 `59fb3f70309f2c6a06d0240c64dfe59338952e1cb834c03eb670ca8201f171ed`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Registry.Variant89a47b6ba240f256aaf56942f607a717f1d4abafe440d0be7f7865c9fddffc93","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"89a47b6ba240f256aaf56942f607a717f1d4abafe440d0be7f7865c9fddffc93","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Registry.Variant89a47b6ba240f256aaf56942f607a717f1d4abafe440d0be7f7865c9fddffc93","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"89a47b6ba240f256aaf56942f607a717f1d4abafe440d0be7f7865c9fddffc93","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Taxonomy/Registry.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Taxonomy.Projection

/-! # Complete product-taxonomy registry. -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Registry.Variant89a47b6ba240f256aaf56942f607a717f1d4abafe440d0be7f7865c9fddffc93

namespace Mathematics.Taxonomy

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

end Mathematics.Taxonomy
```
