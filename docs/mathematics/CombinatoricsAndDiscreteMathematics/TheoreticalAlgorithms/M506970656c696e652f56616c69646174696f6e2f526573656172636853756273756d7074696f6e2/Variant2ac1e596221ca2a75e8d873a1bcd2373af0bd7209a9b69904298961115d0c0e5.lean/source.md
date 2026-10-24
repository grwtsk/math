# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.M506970656c696e652f56616c69646174696f6e2f526573656172636853756273756d7074696f6e2.Variant2ac1e596221ca2a75e8d873a1bcd2373af0bd7209a9b69904298961115d0c0e5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0dba63fc1028a7acc54af602e947c13b4aeb8632` · SHA-256 `2ac1e596221ca2a75e8d873a1bcd2373af0bd7209a9b69904298961115d0c0e5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit0.Bit1.Bit0.Bit1.Bit0.Bit0.Bit1.Bit1.Bit0.Bit0.M506970656c696e652f4c65617665732f52657365617263682f4578706c69636974416e616c797469634e756d6265725468656f72792e6c65616e
import Think.Bit0.Bit1.Bit0.Bit1.Bit1.Bit1.Bit1.Bit1.Bit1.M506970656c696e652f4c65617665732f52657365617263682f436f6e6e656374696e675468656f72656d43616e6469646174652e6c65616e


/- source-tree-label: STL1|L|addr=00101010|role=proof_code_atom|slug=pipeline-validation-researchsubsumption|owner=canonical_owner|core=Pipeline/Validation/ResearchSubsumption.lean|leaf=M506970656c696e652f56616c69646174696f6e2f526573656172636853756273756d7074696f6e2e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Validation

def requiredResearchSubsumptionValidators : List String := [
  "research_ingress_has_source_digest",
  "external_terms_are_normalized_to_think_terms",
  "referee_prose_lowered_to_eml",
  "medoid_move_exposes_obstruction",
  "query_obstruction_has_required_fields",
  "arxiv_query_is_tied_to_obstruction",
  "arxiv_discovery_has_source_url_and_digest",
  "arxiv_discovery_not_used_as_proof",
  "connecting_theorem_candidate_has_statement_sketch",
  "connecting_theorem_candidate_has_residue_fallback",
  "lora_corpus_has_only_finite_public_packets",
  "lora_corpus_excludes_private_reasoning",
  "local_model_inference_not_used_as_proof",
  "inferred_query_passes_query_validator",
  "pipeline_balance_after_research_ingress",
  "no_external_project_terms_escape_normalization"
]

def researchSubsumptionStandingResidue : String :=
  Think.Pipeline.Leaves.Research.standingResidue

theorem required_research_validator_count :
    requiredResearchSubsumptionValidators.length = 16 := by
  rfl

theorem research_subsumption_preserves_pipeline_topos_residue :
    researchSubsumptionStandingResidue = "pipeline_topos_not_constructed" := by
  rfl

end Think.Pipeline.Validation
```
