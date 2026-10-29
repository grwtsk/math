-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AdelicBase.Variant8a2f9e214ae172d6826bf522fdd411fa954bbe69e7b5800d151ee73272251dc8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8a2f9e214ae172d6826bf522fdd411fa954bbe69e7b5800d151ee73272251dc8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.AdelicBase.Variant8a2f9e214ae172d6826bf522fdd411fa954bbe69e7b5800d151ee73272251dc8","mathematical_subject":"Computation.DataStructures","original_sha256":"8a2f9e214ae172d6826bf522fdd411fa954bbe69e7b5800d151ee73272251dc8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/AdelicInfinityTopos/AdelicBase.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.AdelicInfinityTopos.Place

/-!
# Folder.AdelicInfinityTopos.AdelicBase

Radiation role: research-boundary
BinaryMatrix spine: This module defines the place-indexing base for adelic spectral fibers.
Ontology: adelic.base
Pivot role: dual
Zero typology: mixed
Contract boundary: definition
Composite stack role: adelic-infinity-topos
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AdelicBase.Variant8a2f9e214ae172d6826bf522fdd411fa954bbe69e7b5800d151ee73272251dc8

namespace Folder
namespace AdelicInfinityTopos

structure AdelicBase where
  archimedean : Place
  finitePlaces : List Place
  includesArchimedean : archimedean = Place.archimedean
  finitePlaceSound : ∀ v ∈ finitePlaces, ∃ p, v = Place.finite p

def defaultAdelicBase : AdelicBase where
  archimedean := Place.archimedean
  finitePlaces := []
  includesArchimedean := rfl
  finitePlaceSound := by
    intro v hv
    cases hv

end AdelicInfinityTopos
end Folder
