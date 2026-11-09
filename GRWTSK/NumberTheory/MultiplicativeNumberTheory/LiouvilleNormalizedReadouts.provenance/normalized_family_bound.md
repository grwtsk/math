# `GRWTSK.NumberTheory.MultiplicativeNumberTheory.LiouvilleNormalizedReadouts.normalized_family_bound`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [LiouvilleNormalizedReadouts.lean](../LiouvilleNormalizedReadouts.lean), line 16.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/NumberTheory/MultiplicativeNumberTheory/LiouvilleNormalizedReadouts.lean#L16).
- Declaration spelling: `GRWTSK.NumberTheory.MultiplicativeNumberTheory.LiouvilleNormalizedReadouts.normalized_family_bound` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

Immediate local source inputs (exact pinned dependencies, not an assertion of a copied upstream theorem):

- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/LiouvilleTwoPointFiniteFamily.lean)

- [Pinned upstream source](https://github.com/openai/math/blob/7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a/lean/OAI/NumberTheory/TwoPointCorrelations/FinalMain.lean)

The following existing source records retain the precise declaration mapping, changes, hypotheses, consumer and unresolved bridges where recorded. They are reproduced as source evidence, not new mathematical acceptance.

```json
[
  {
    "record": "docs/adaptations/consumer-integrations.json",
    "consumer": {
      "provider": "openai-math",
      "project_subdir": "adapters/openai-math",
      "path": "adapters/openai-math/GRWTSK/NumberTheory/MultiplicativeNumberTheory/LiouvilleNormalizedReadouts.lean",
      "declarations": [
        "GRWTSK.NumberTheory.MultiplicativeNumberTheory.LiouvilleNormalizedReadouts.normalized_family_bound",
        "GRWTSK.NumberTheory.MultiplicativeNumberTheory.LiouvilleNormalizedReadouts.normalized_unit_ball_bound"
      ],
      "upstream": [
        {
          "repository": "openai/math",
          "commit": "7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a",
          "source": "lean/OAI/NumberTheory/TwoPointCorrelations/FinalMain.lean",
          "blob": "2bd48811e73bbdc80c1f738fa889a14189186408",
          "declarations": [
            "OAI.OrdinaryTwoPointCorrelations.liouville_log_saving"
          ]
        }
      ],
      "hypotheses": "All finite affine families have positive leading coefficients and nonproportional affine forms. X real>=3. A common positive exponent c precedes the finite family; its positive constants C_i depend on individual forms. Unit-ball conclusion restricts sum_i norm(K_i)<=1.",
      "conclusion": "Normalized Liouville readout norm bounded by sum_i norm(K_i)C_i, and by one B for the fixed finite l1-unit ball. Positive logarithmic scale is explicitly proved.",
      "use": "Finite scalar/kernel observations of the existing two-point readout consumer; preserves source length and affine dependence.",
      "consumer_paths": [
        "adapters/openai-math/OpenAITwoPointFiniteFamily.lean"
      ],
      "paper_or_source": "OpenAI, Ordinary two-point correlations of multiplicative functions, September24 2026 source version; exact existing canonical paper identity retained.",
      "license": "Apache-2.0 upstream; local attribution grwtsk contributors",
      "missing_bridges": [
        "No uniform B for growing families, Liouville-to-Moebius bridge, actual Mertens kernel residual supplier, or RH estimate is provided."
      ],
      "source_blob": "41fd47c54def263e91175137de294aaa389c8e3b",
      "source_sha256": "cd02fb5593103477e7a80bc9af2d136f1237ceeb85071eaf268f4d50dcdc4fe4",
      "classification": "SOURCE_PROOF_CANDIDATE_ACTUAL_MATHEMATICAL_CONSUMER",
      "verification": {
        "compilation": "NOT_RUN",
        "fresh_kernel_replay": "NOT_RUN",
        "complete_transitive_axiom_audit": "NOT_RUN",
        "expected_interface": "NOT_RUN"
      },
      "independent_checker": "UNSUPPLIED",
      "source_supply": {
        "classification": "STATIC_MATHEMATICAL_VERIFICATION_INPUT_SPECIFICATION",
        "expected_pnt_inputs_sha256": "77623fa638b266fbd9e607ed307d9a68cc4b2876b3154d0ea984241b3ea4901b",
        "remaining_closure_obligations_sha256": "e03bd64f6491f7f8e9e9c8a81375c8b32d6400f5e587d996dd56f19c359ec3b4",
        "status": "SUPPORTED_DERIVED_SOURCE_AND_ASSET_SUPPLIERS_UNSUPPLIED; native facets NOT_RUN; original historical failed-profile outcome preserved",
        "remaining": [
          "Three exact StrongPNT modules, its reviewed base/patch outputs and untraversed descendants.",
          "Six exact Mathlib Penrose include_str assets outside the inspected ProofWidgets-only supplier."
        ],
        "native_scope_boundary": "Original weighted-model-growth four and Anthropic Fermat six remain separate active obligations; no root dependency or import promotion.",
        "strong_patch_fidelity": {
          "classification": "STATIC_SOURCE_SUPPLY_FAILURE_SPECIFICATION",
          "target_sha256": "9bba19ed5a48a1550e4d1151a191961c74ebfadf327125ce901c39fb623ce3a3",
          "required_current_decision": "REJECT_CURRENT_RAW_PATCH",
          "patch_blob": "0269959e81418ffd738958089922f4eca4fec787",
          "path": "StrongPNT/Erdos970/PNT5_Strong.lean",
          "advertised_result_prefix": "bc0f938",
          "literal_result_blob_not_admitted": "dc5c936e763be282b328dcca1a71bdc572b6353e",
          "batch_source_supplier": "UNSUPPLIED",
          "both_overlay_graph": "NOT_RUN",
          "verification_issue": "https://github.com/grwtsk/math/issues/1488",
          "boundary": "No compiler failure/theorem counterexample or production Noe qualification; prior source-supply scope and original weighted4/Fermat6 remain separate."
        }
      }
    }
  }
]
```

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/- Local attribution: grwtsk contributors.
Source candidates; compilation, fresh replay and transitive axiom audit NOT_RUN.
OpenAI source keeps its exact Apache-2.0 attribution and dependency pin. -/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
