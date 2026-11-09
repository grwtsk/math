# `GRWTSK.Complexity.AnthropicMath.ThreeSumApsp.Paperstatements.ThreeSumApsp.wordRam_corollary_15`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [ThreeSumApspTheorems.lean](../ThreeSumApspTheorems.lean), line 9.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/ComputerScience/TheoryOfComputing/AnalysisOfAlgorithmsAndProblemComplexity/ThreeSumApspTheorems.lean#L9).
- Declaration spelling: `GRWTSK.Complexity.AnthropicMath.ThreeSumApsp.Paperstatements.ThreeSumApsp.wordRam_corollary_15` (re-export). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This is an imported theorem re-export, not an independently proved local theorem. Upstream declaration: `ThreeSumApsp.wordRam_corollary_15`.

- [Pinned upstream source](https://github.com/anthropics/formal-math/blob/16a5ce41304fcdaea4e0be7c132e1c361dc26da5/3sum-apsp/comparator-paperstatements.json)

The following existing source records retain the precise declaration mapping, changes, hypotheses, consumer and unresolved bridges where recorded. They are reproduced as source evidence, not new mathematical acceptance.

```json
[
  {
    "record": "docs/adaptations/anthropic-math/catalogue.json",
    "repository": "https://github.com/anthropics/formal-math",
    "commit": "16a5ce41304fcdaea4e0be7c132e1c361dc26da5",
    "subdirectory": "3sum-apsp",
    "source_blobs": {
      "3sum-apsp/Challenge/EndStatement.lean": "3ee6cf51b449cfd69a3e2b64afd1e25bd5effde6",
      "3sum-apsp/Challenge/PaperStatements.lean": "91806cc30e5904cc5f72bdd9559f85d231014029",
      "3sum-apsp/EndStatement.lean": "b2e03ddc7dc78c273aa5a1edda073fd2274d87de",
      "3sum-apsp/LICENSE": "261eeb9e9f8b2b4b0d119366dda99c6fd7d35c64",
      "3sum-apsp/NOTICE": "0a0dbf49888306f7d732790bbbf2ca2e75c37e6b",
      "3sum-apsp/PaperStatements.lean": "158248acf61ca4cef6341cf131028114b1a8ca3e",
      "3sum-apsp/README.md": "577dd1bcddc310471920a4c51205a975628cb7be",
      "3sum-apsp/Solution/EndStatement.lean": "e646ac130bf1330ad8635b8e4d1e19af17188e7f",
      "3sum-apsp/Solution/PaperStatements.lean": "ff3e57c56e065f0e32df50e4d71405ab1e9676f5",
      "3sum-apsp/ThreeSumApsp/Statements/EndStatement.lean": "5f034c8999ab8d97f66653b3feef1b4a9ed4f38b",
      "3sum-apsp/ThreeSumApsp/Statements/PaperStatements.lean": "890081e80174df518280c5de72e48d82fd7ba815",
      "3sum-apsp/comparator-endstatement.json": "b901620e46d200d756c2243b90465f050d97c385",
      "3sum-apsp/comparator-paperstatements.json": "d182d669abe54e916e2de753f753d83f30f47d40",
      "3sum-apsp/docs/paper-items.json": "caa9779f500a5e0f79044a7cf92694e836d85600",
      "3sum-apsp/docs/programs.json": "3702ac286e3acaf28a9873c95e6a70a465c6809d",
      "3sum-apsp/lake-manifest.json": "278733a7ecc1563b8ceb70e62df049d43c6a83c6",
      "3sum-apsp/lakefile.toml": "3d1d890c608b71088fe498eb961746f11505d7f1",
      "3sum-apsp/scripts/README.md": "a41dc7074f705d184423f0fcbad685ff11f0a614"
    },
    "surface": {
      "config": "3sum-apsp/comparator-paperstatements.json",
      "blob": "d182d669abe54e916e2de753f753d83f30f47d40",
      "configuration": {
        "challenge_module": "Challenge.PaperStatements",
        "solution_module": "Solution.PaperStatements",
        "theorem_names": [
          "PaperStatements.eq_1",
          "PaperStatements.lemma_6",
          "PaperStatements.figure_3",
          "PaperStatements.lemma_7",
          "PaperStatements.lemma_8",
          "PaperStatements.figure_4",
          "PaperStatements.lemma_9",
          "PaperStatements.lemma_10",
          "PaperStatements.sec2_card_contributing_of_order",
          "PaperStatements.sec2_card_outStr_of_leaf",
          "PaperStatements.eq_5_ratio",
          "PaperStatements.eq_5_bound",
          "PaperStatements.eq_5",
          "PaperStatements.figure_6",
          "PaperStatements.lemma_11",
          "PaperStatements.eq_6",
          "PaperStatements.theorem_17_hashing_sum_sq_le",
          "PaperStatements.theorem_17_write_cost",
          "PaperStatements.theorem_17_scanOrder_exists",
          "PaperStatements.theorem_17",
          "PaperStatements.remark_18_block",
          "PaperStatements.remark_20_balance",
          "PaperStatements.remark_20_brute_force",
          "PaperStatements.theorem_21b_repeated_squaring",
          "PaperStatements.theorem_21b_entries_bounded",
          "PaperStatements.theorem_21b_log_factors",
          "PaperStatements.theorem_21b_negative_to_exact",
          "PaperStatements.theorem_21a_convolution_to_exact",
          "PaperStatements.theorem_21a_compose",
          "PaperStatements.theorem_21a_threeSum_to_convolution",
          "PaperStatements.theorem_21a_threeSum_to_exact",
          "PaperStatements.lemma_27",
          "PaperStatements.lemma_28_leaves",
          "PaperStatements.lemma_28_unique",
          "PaperStatements.lemma_28",
          "PaperStatements.lemma_28_counts",
          "PaperStatements.lemma_28_boxes",
          "PaperStatements.figure_10_counts",
          "PaperStatements.figure_10_rows",
          "PaperStatements.figure_10_Vof",
          "PaperStatements.lemma_29_count",
          "PaperStatements.lemma_29_values",
          "PaperStatements.lemma_29_split",
          "PaperStatements.sec4_rho_lt_one",
          "PaperStatements.eq_7_ratio",
          "PaperStatements.eq_7",
          "PaperStatements.eq_10_corollary_26",
          "PaperStatements.eq_10",
          "PaperStatements.eq_11_iff",
          "PaperStatements.corollary_31_gamma_pos",
          "PaperStatements.sec4_Rc_strictAntiOn",
          "PaperStatements.sec4_Rc_zero_tendsto",
          "PaperStatements.sec4_epsStar_numeric",
          "PaperStatements.sec4_Rc_lt_epsStar",
          "PaperStatements.corollary_32_saving",
          "PaperStatements.table_2_query_valid",
          "PaperStatements.table_2_ninth_valid",
          "PaperStatements.table_2_density_valid",
          "PaperStatements.table_2_c40",
          "PaperStatements.table_2_c21",
          "PaperStatements.table_2_c19",
          "PaperStatements.table_2_c15",
          "PaperStatements.table_2_c12",
          "PaperStatements.table_2_c10_5",
          "PaperStatements.table_2_larger_c",
          "PaperStatements.table_1_section_2_column",
          "PaperStatements.corollary_26_W",
          "PaperStatements.theorem_34_blocks",
          "PaperStatements.theorem_34_entries",
          "PaperStatements.theorem_34_total",
          "PaperStatements.theorem_34_absorb",
          "PaperStatements.lemma_36a_exact_triangle",
          "PaperStatements.lemma_36a_min_plus_below",
          "PaperStatements.lemma_36a_min_plus_successor",
          "PaperStatements.lemma_36a_min_plus_blocks",
          "PaperStatements.lemma_36a_count",
          "PaperStatements.lemma_36a_valid",
          "PaperStatements.lemma_36a_colors",
          "PaperStatements.lemma_36a_pairs",
          "PaperStatements.lemma_36a_subtractions",
          "PaperStatements.lemma_36b_count",
          "PaperStatements.lemma_36b_lists",
          "PaperStatements.lemma_36b_subtractions",
          "PaperStatements.lemma_37_order_exists",
          "PaperStatements.lemma_37_index_exists",
          "PaperStatements.lemma_37",
          "PaperStatements.lemma_37_enumerated",
          "PaperStatements.corollary_38_bound",
          "PaperStatements.corollary_38_correct",
          "PaperStatements.theorem_35_d",
          "PaperStatements.theorem_35_counting_call",
          "PaperStatements.theorem_35_forming_lists",
          "PaperStatements.theorem_35_min_plus_total",
          "PaperStatements.theorem_35_further_time",
          "PaperStatements.theorem_35_three_sum_count",
          "PaperStatements.theorem_35_three_sum_total",
          "PaperStatements.theorem_35_one_run",
          "PaperStatements.theorem_35_restarts",
          "PaperStatements.agreement_exactTriangle",
          "PaperStatements.agreement_minPlusProduct",
          "PaperStatements.agreement_apsp_noNegativeCycle",
          "PaperStatements.agreement_apsp_output",
          "PaperStatements.agreement_rowByRow",
          "PaperStatements.agreement_cliqueWeight",
          "PaperStatements.agreement_solves",
          "PaperStatements.agreement_bigO",
          "PaperStatements.agreement_solvedInTime",
          "ThreeSumApsp.wordRam_theorem_5",
          "ThreeSumApsp.wordRam_corollary_15",
          "ThreeSumApsp.wordRam_corollary_16",
          "ThreeSumApsp.wordRam_theorem_19",
          "ThreeSumApsp.wordRam_theorem_22_first",
          "ThreeSumApsp.wordRam_theorem_22_second",
          "ThreeSumApsp.wordRam_theorem_22_threeSum",
          "ThreeSumApsp.wordRam_theorem_24",
          "ThreeSumApsp.wordRam_theorem_25",
          "ThreeSumApsp.wordRam_corollary_26",
          "ThreeSumApsp.wordRam_corollary_26_wanted",
          "ThreeSumApsp.wordRam_theorem_30",
          "ThreeSumApsp.wordRam_theorem_30_wanted",
          "ThreeSumApsp.wordRam_corollary_31",
          "ThreeSumApsp.wordRam_corollary_32",
          "ThreeSumApsp.wordRam_corollary_39_zero",
          "ThreeSumApsp.wordRam_corollary_39_min_max",
          "ThreeSumApsp.wordRam_corollary_40_times",
          "ThreeSumApsp.wordRam_corollary_40_general_times",
          "ThreeSumApsp.wordRam_corollary_40_fail",
          "ThreeSumApsp.wordRam_theorem_1",
          "ThreeSumApsp.wordRam_theorem_2",
          "ThreeSumApsp.wordRam_theorem_2_graphs",
          "ThreeSumApsp.wordRam_theorem_3",
          "ThreeSumApsp.wordRam_theorem_4"
        ],
        "definition_names": [],
        "permitted_axioms": [
          "propext",
          "Quot.sound",
          "Classical.choice"
        ],
        "enable_nanoda": true
      },
      "adapter_module": "GRWTSK.ComputerScience.TheoryOfComputing.AnalysisOfAlgorithmsAndProblemComplexity.ThreeSumApspTheorems",
      "classification": "EXACT_UPSTREAM_REEXPORT_SURFACE_NOT_A_BRIDGE"
    }
  }
]
```

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/- Local attribution: grwtsk contributors. Exact upstream re-exports; verification NOT_RUN. -/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
