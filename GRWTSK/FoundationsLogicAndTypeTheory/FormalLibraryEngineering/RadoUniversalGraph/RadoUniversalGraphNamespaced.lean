-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FinalWitnessIsResidue.Variantdcaa5f73d50be8bc570665e6b4fa455c1c2525defce1d0c86a64b901a8e62c22","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dcaa5f73d50be8bc570665e6b4fa455c1c2525defce1d0c86a64b901a8e62c22","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.FinalWitnessIsResidue.Variantdcaa5f73d50be8bc570665e6b4fa455c1c2525defce1d0c86a64b901a8e62c22","mathematical_subject":"Foundations.Unclassified","original_sha256":"dcaa5f73d50be8bc570665e6b4fa455c1c2525defce1d0c86a64b901a8e62c22","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/Validation/RadoUniversalGraph.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.ResearchSurvey.Sources.RadoUniversalGraph


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FinalWitnessIsResidue.Variantdcaa5f73d50be8bc570665e6b4fa455c1c2525defce1d0c86a64b901a8e62c22

set_option autoImplicit false

namespace Think.Validation.RadoUniversalGraph

open Think.ResearchSurvey.Sources.RadoUniversalGraph

theorem final_witness_is_residue (ctx : Context) :
    (finalWitness ctx).hasResidue = true :=
  finalWitness_hasResidue ctx

theorem final_residue_count (ctx : Context) :
    (finalResidues ctx).length = 16 :=
  finalResidue_count ctx

theorem final_residues_match_atoms (ctx : Context) :
    finalResidues ctx = allAtoms.map atomResidue :=
  finalResidues_match_atoms ctx

theorem source_atom_count :
    allAtoms.length = 16 :=
  allAtoms_count

theorem extension_residue_target_correct :
    (atomResidue Atom.radoExtensionProperty).target =
      FWR.Target.RadoUniversalGraph :=
  atomResidue_target Atom.radoExtensionProperty

theorem witness_insertion_residue_target_correct :
    (atomResidue Atom.witnessInsertion).target =
      FWR.Target.RadoUniversalGraph :=
  atomResidue_target Atom.witnessInsertion

theorem survey_target_is_residue :
    (Think.ResearchSurvey.targetChecked surveyTarget).hasResidue = true :=
  surveyTarget_checked_hasResidue

end Think.Validation.RadoUniversalGraph
