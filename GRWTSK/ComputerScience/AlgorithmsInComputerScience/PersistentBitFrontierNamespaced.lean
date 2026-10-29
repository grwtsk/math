-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PersistentBitfieldProjection.Variant4ce20100d57a978bd9409fe14fdfecf4359f4fc684188fbd665c77f55a78c829","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4ce20100d57a978bd9409fe14fdfecf4359f4fc684188fbd665c77f55a78c829","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.PersistentBitfieldProjection.Variant4ce20100d57a978bd9409fe14fdfecf4359f4fc684188fbd665c77f55a78c829","mathematical_subject":"Computation.DataStructures","original_sha256":"4ce20100d57a978bd9409fe14fdfecf4359f4fc684188fbd665c77f55a78c829","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/StratifiedBoundary/Frontier/PersistentBitFrontier.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Persistent parent-relative distinctions

A distinction projects only through an explicit transport witness.  No parity
or disappearance rule is implicit.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PersistentBitfieldProjection.Variant4ce20100d57a978bd9409fe14fdfecf4359f4fc684188fbd665c77f55a78c829

namespace Mathematics.StratifiedBoundary

structure PersistentBitfieldProjection
    (ParentBitfield ChildBitfield : Type u) where
  project : ChildBitfield → ParentBitfield
  parentBitfield : ParentBitfield
  childBitfield : ChildBitfield
  projectionWitness :
    project childBitfield = parentBitfield
  dischargeWitnessRefs : List String

theorem persistent_bitfield_projects
    {ParentBitfield ChildBitfield : Type u}
    (certificate :
      PersistentBitfieldProjection
        ParentBitfield ChildBitfield) :
    certificate.project certificate.childBitfield =
      certificate.parentBitfield :=
  certificate.projectionWitness

end Mathematics.StratifiedBoundary
