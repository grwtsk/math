-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ObstructionOccurrence.Varianta4102dcf1c65bfd3f8e31baaadc1c1310b34f634e98131454f428ca27035a707","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a4102dcf1c65bfd3f8e31baaadc1c1310b34f634e98131454f428ca27035a707","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ObstructionOccurrence.Varianta4102dcf1c65bfd3f8e31baaadc1c1310b34f634e98131454f428ca27035a707","mathematical_subject":"Computation.DataStructures","original_sha256":"a4102dcf1c65bfd3f8e31baaadc1c1310b34f634e98131454f428ca27035a707","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/BinaryFrontier/Obstruction/Provenance.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.BinaryFrontier.Obstruction.Factorization

/-!
# Immutable obstruction provenance

Canonical records deduplicate presentation data while source occurrences and
their event references remain individually reconstructible.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ObstructionOccurrence.Varianta4102dcf1c65bfd3f8e31baaadc1c1310b34f634e98131454f428ca27035a707

namespace Mathematics.BinaryFrontier

structure ObstructionOccurrence where
  occurrenceId : String
  sourceNodeRef : String
  sourcePresentationRef : String
  sourceEventRef : String

structure ObstructionProvenance where
  canonicalObstructionRef : String
  occurrences : List ObstructionOccurrence
  occurrences_nonempty : occurrences ≠ []

theorem canonicalization_retains_source_occurrences
    (provenance : ObstructionProvenance) :
    ∃ occurrence,
      occurrence ∈ provenance.occurrences := by
  cases occurrenceEquation : provenance.occurrences with
  | nil =>
      exact False.elim
        (provenance.occurrences_nonempty occurrenceEquation)
  | cons head tail =>
      exact ⟨head, by simp⟩

end Mathematics.BinaryFrontier
