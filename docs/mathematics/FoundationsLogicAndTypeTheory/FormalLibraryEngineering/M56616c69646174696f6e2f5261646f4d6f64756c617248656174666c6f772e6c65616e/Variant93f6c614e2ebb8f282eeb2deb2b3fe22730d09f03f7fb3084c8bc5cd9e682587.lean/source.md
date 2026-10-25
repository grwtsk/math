# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M56616c69646174696f6e2f5261646f4d6f64756c617248656174666c6f772e6c65616e.Variant93f6c614e2ebb8f282eeb2deb2b3fe22730d09f03f7fb3084c8bc5cd9e682587

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `29d42dd278d1c2e8795e80b4852ec4600745ccb8` · SHA-256 `93f6c614e2ebb8f282eeb2deb2b3fe22730d09f03f7fb3084c8bc5cd9e682587`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit1.Bit0.Bit0.Bit1.Bit0.Bit0.Bit1.Bit0.M506970656c696e652f43656e7465722f5261646f4d6f64756c617248656174666c6f772e6c65616e


/- source-tree-label: STL1|L|addr=010000001|role=proof_code_atom|slug=validation-radomodularheatflow|owner=canonical_owner|core=Validation/RadoModularHeatflow.lean|leaf=M56616c69646174696f6e2f5261646f4d6f64756c617248656174666c6f772e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Validation.RadoModularHeatflow

open Think.Pipeline.Center.RadoModularHeatflow

theorem final_witness_is_residue (ctx : Context) :
    (finalWitness ctx).hasResidue = true :=
  finalWitness_hasResidue ctx

theorem final_residue_count (ctx : Context) :
    (finalResidues ctx).length = 21 :=
  finalResidue_count ctx

theorem atom_count :
    allAtoms.length = 21 :=
  allAtoms_count

theorem subset_options_are_complete :
    allSubsetModes.length = 7 :=
  allSubsetModes_count

theorem projection_options_are_complete :
    allProjectionOptions.length = 13 :=
  allProjectionOptions_count

theorem witness_policy_options_are_complete :
    allWitnessPolicies.length = 6 :=
  allWitnessPolicies_count

theorem heat_kernel_options_are_complete :
    allHeatKernelOptions.length = 6 :=
  allHeatKernelOptions_count

theorem heat_graph_options_are_complete :
    allHeatGraphOptions.length = 4 :=
  allHeatGraphOptions_count

theorem group_options_are_complete :
    allGroupOptions.length = 9 :=
  allGroupOptions_count

theorem modular_representation_options_are_complete :
    allModularRepresentationOptions.length = 7 :=
  allModularRepresentationOptions_count

theorem weight_rule_options_are_complete :
    allWeightRuleOptions.length = 10 :=
  allWeightRuleOptions_count

theorem q_coefficient_options_are_complete :
    allQCoefficientOptions.length = 8 :=
  allQCoefficientOptions_count

theorem residue_model_options_are_complete :
    allResidueModelOptions.length = 7 :=
  allResidueModelOptions_count

theorem pair_correlation_options_are_complete :
    allPairCorrelationOptions.length = 5 :=
  allPairCorrelationOptions_count

theorem layout_options_are_complete :
    allLayoutOptions.length = 7 :=
  allLayoutOptions_count

theorem witness_attachment_options_are_complete :
    allWitnessAttachmentOptions.length = 7 :=
  allWitnessAttachmentOptions_count

theorem coordinate_options_are_complete :
    allCoordinateOptions.length = 6 :=
  allCoordinateOptions_count

theorem even_weight_values_are_even (k : EvenWeight) :
    k.value % 2 = 0 :=
  EvenWeight.value_mod_two k

theorem sample_seed_is_accepted_for_jepa :
    sampleSeed.acceptedForJepa = true :=
  sampleSeed_acceptedForJepa

theorem sample_seed_checked_has_residue :
    (checkedJepaSeed sampleSeed).hasResidue = true :=
  sampleSeed_checked_hasResidue

theorem sample_seed_residue_target_correct :
    sampleSeed.toResidue.target =
      FWR.Target.RadoProjectedModularHeatflow :=
  sampleSeed_residue_target

end Think.Validation.RadoModularHeatflow
```
