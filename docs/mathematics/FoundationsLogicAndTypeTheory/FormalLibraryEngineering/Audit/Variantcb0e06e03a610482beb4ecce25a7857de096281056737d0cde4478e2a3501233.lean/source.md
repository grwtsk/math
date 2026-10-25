# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Audit.Variantcb0e06e03a610482beb4ecce25a7857de096281056737d0cde4478e2a3501233

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b83325d50196fa04a092db03512ff3d0bddd64e9` · SHA-256 `cb0e06e03a610482beb4ecce25a7857de096281056737d0cde4478e2a3501233`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.MathematicalTooling.Reduction.Fixtures
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.TagMachine
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
```
