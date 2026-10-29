-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ObstructionFactorization.Variantf59415276b96eb84ed505112876e328eb0508220c51595136731f2adc7a1f3de","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f59415276b96eb84ed505112876e328eb0508220c51595136731f2adc7a1f3de","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ObstructionFactorization.Variantf59415276b96eb84ed505112876e328eb0508220c51595136731f2adc7a1f3de","mathematical_subject":"Computation.DataStructures","original_sha256":"f59415276b96eb84ed505112876e328eb0508220c51595136731f2adc7a1f3de","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/BinaryFrontier/Obstruction/Factorization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.BinaryFrontier.Obstruction.MUS

/-!
# Obstruction factorization

This data layer keeps the branch boundary, primitive core, and later canonical
record separate.  It does not derive infeasibility from a build failure.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ObstructionFactorization.Variantf59415276b96eb84ed505112876e328eb0508220c51595136731f2adc7a1f3de

namespace Mathematics.BinaryFrontier

structure ObstructionFactorization where
  subjectRef : String
  stateRef : String
  lastFeasibleAncestorRef : String
  firstInfeasibleBoundaryRef : String
  primitiveCoreRef : String
  canonicalRecordRef : Option String
  sourceOccurrenceRefs : List String
  sourceOccurrenceRefs_nonempty :
    sourceOccurrenceRefs ≠ []

theorem obstruction_factorization_retains_occurrence
    (factorization : ObstructionFactorization) :
    ∃ occurrence,
      occurrence ∈ factorization.sourceOccurrenceRefs := by
  cases occurrencesEquation :
      factorization.sourceOccurrenceRefs with
  | nil =>
      exact False.elim
        (factorization.sourceOccurrenceRefs_nonempty
          occurrencesEquation)
  | cons head tail =>
      exact ⟨head, by simp⟩

end Mathematics.BinaryFrontier
