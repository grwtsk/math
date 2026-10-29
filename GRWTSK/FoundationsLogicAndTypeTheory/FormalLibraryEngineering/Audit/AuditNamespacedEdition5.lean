-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Fixtures.Variantcb0e06e03a610482beb4ecce25a7857de096281056737d0cde4478e2a3501233","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cb0e06e03a610482beb4ecce25a7857de096281056737d0cde4478e2a3501233","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceOrganization.SourceCorpus.Fixtures.Variantcb0e06e03a610482beb4ecce25a7857de096281056737d0cde4478e2a3501233","mathematical_subject":"MathematicalTooling.SourceOrganization","original_sha256":"cb0e06e03a610482beb4ecce25a7857de096281056737d0cde4478e2a3501233","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/type-theory-reconstruction/artifacts/type-theory/normalization/audit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.MathematicalTooling.Reduction.Fixtures
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.TagMachine

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Fixtures.Variantcb0e06e03a610482beb4ecce25a7857de096281056737d0cde4478e2a3501233

open FormalResearch.MathematicalTooling.Reduction
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model
#check strongly_normalizing_of_strict_simulation
#print axioms strongly_normalizing_of_strict_simulation
#check strongly_normalizing_of_fiber_simulation
#print axioms strongly_normalizing_of_fiber_simulation
#check fiber_well_founded_of_measure
#print axioms fiber_well_founded_of_measure
#check FiniteReducer.height_eq
#print axioms FiniteReducer.height_eq
#check FiniteReducer.height_zero_iff
#print axioms FiniteReducer.height_zero_iff
#check FiniteReducer.longest_trace
#print axioms FiniteReducer.longest_trace
#check FiniteReducer.catalogue_trace_bound
#print axioms FiniteReducer.catalogue_trace_bound
#check stuttering_trace_budget
#print axioms stuttering_trace_budget
#check erased_self_loop_control
#print axioms erased_self_loop_control
#check toggle_union_diverges
#print axioms toggle_union_diverges
#check unbounded_admin_strongly_normalizing
#print axioms unbounded_admin_strongly_normalizing
#check unbounded_admin_has_no_natural_rank
#print axioms unbounded_admin_has_no_natural_rank
#check tag_next_correct
#print axioms tag_next_correct
#check tag_strongly_normalizing_by_simulation
#print axioms tag_strongly_normalizing_by_simulation
#check tag_height_eq_mathematical_height
#print axioms tag_height_eq_mathematical_height
#check tag_normalize_spec
#print axioms tag_normalize_spec
#check tag_normalize_preserves_typing
#print axioms tag_normalize_preserves_typing
#check tag_normalize_preserves_evaluation
#print axioms tag_normalize_preserves_evaluation
#check tag_confluent
#print axioms tag_confluent
#check tag_reachable_normal_forms_unique
#print axioms tag_reachable_normal_forms_unique
#check tag_normalize_step_invariant
#print axioms tag_normalize_step_invariant
#check tag_substitution_height_bound
#print axioms tag_substitution_height_bound
#check checked_tag_tag_reduces
#print axioms checked_tag_tag_reduces
#check checked_tag_tag_normalizes
#print axioms checked_tag_tag_normalizes
#check checked_tag_tag_height
#print axioms checked_tag_tag_height
#check outside_catalogue_normalizes
#print axioms outside_catalogue_normalizes
#check tag_machine_strongly_normalizing
#print axioms tag_machine_strongly_normalizing
#check tag_machine_total_budget
#print axioms tag_machine_total_budget
#check tag_machine_next_correct
#print axioms tag_machine_next_correct
#check tag_machine_normalize_spec
#print axioms tag_machine_normalize_spec
#check tag_machine_normalize_preserves_typing
#print axioms tag_machine_normalize_preserves_typing
#check tag_machine_normalize_preserves_evaluation
#print axioms tag_machine_normalize_preserves_evaluation
#check checked_tag_machine_trace
#print axioms checked_tag_machine_trace
#check checked_tag_machine_budget
#print axioms checked_tag_machine_budget
#eval tagNormalize ⟨1⟩ (termOfSyntax FullFixtures.tree)
#eval tagHeight ⟨1⟩ (termOfSyntax FullFixtures.tree)
#eval tagMachineNormalize ⟨1⟩ ⟨termOfSyntax FullFixtures.tree, 1⟩
#eval evaluateTerm FullFixtures.interpreterTable []
  (tagNormalize ⟨1⟩ (termOfSyntax FullFixtures.tree))
