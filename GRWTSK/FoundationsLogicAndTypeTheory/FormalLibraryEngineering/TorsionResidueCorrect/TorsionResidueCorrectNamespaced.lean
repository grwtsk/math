-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TorsionResolvedMeansZeroResidue.Variant1cec9326969173936fc11af81492b84e69d1106e1f346162ab9f969383140c68","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1cec9326969173936fc11af81492b84e69d1106e1f346162ab9f969383140c68","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.TorsionResolvedMeansZeroResidue.Variant1cec9326969173936fc11af81492b84e69d1106e1f346162ab9f969383140c68","mathematical_subject":"Foundations.Unclassified","original_sha256":"1cec9326969173936fc11af81492b84e69d1106e1f346162ab9f969383140c68","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/Validation/TorsionResidueCorrect.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.TorsionWitness


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TorsionResolvedMeansZeroResidue.Variant1cec9326969173936fc11af81492b84e69d1106e1f346162ab9f969383140c68

set_option autoImplicit false

namespace Think.Validation.TorsionResidueCorrect

theorem torsion_resolved_means_zero_residue
    (T : Think.RadoProjectedModularHeatflow.MemoryCore.CompactTorsion)
    (h : T.resolved) :
    T.residueValue = 0 := by
  exact h

theorem natural_torsion_restriction_is_admitted
    (r : Think.RadoProjectedModularHeatflow.MemoryCore.TorsionRestriction)
    (h : r.naturalUnderRestriction) :
    r.admitted :=
  Think.RadoProjectedModularHeatflow.MemoryCore.natural_torsion_restriction_admitted r h

theorem torsion_witness_bridge_side
    (W : Think.RadoProjectedModularHeatflow.TorsionWitness.TorsionRadoWitness) :
    W.witness.witness.side = Think.RadoProjectedModularHeatflow.MemoryCore.BoundarySide.bridge :=
  Think.RadoProjectedModularHeatflow.TorsionWitness.torsion_witness_is_bridge W

end Think.Validation.TorsionResidueCorrect
