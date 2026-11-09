# `GRWTSK.NumberTheory.DiophantineEquations.FermatSolutionFibers.fixed_output_solution_fiber`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [FermatSolutionFibers.lean](../FermatSolutionFibers.lean), line 27.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/NumberTheory/DiophantineEquations/FermatSolutionFibers.lean#L27).
- Declaration spelling: `GRWTSK.NumberTheory.DiophantineEquations.FermatSolutionFibers.fixed_output_solution_fiber` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

Immediate local source inputs (exact pinned dependencies, not an assertion of a copied upstream theorem):

- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/NumberTheory/FermatSourceEdition1.lean)

- [Pinned upstream source](https://github.com/anthropics/fermats-last-theorem/blob/6e837e75355538c7f80bab5b956861e86c4eacc2/FinalCheck.lean)

The following existing source records retain the precise declaration mapping, changes, hypotheses, consumer and unresolved bridges where recorded. They are reproduced as source evidence, not new mathematical acceptance.

```json
[
  {
    "record": "docs/adaptations/consumer-integrations.json",
    "consumer": {
      "provider": "anthropic-math",
      "project_subdir": "adapters/anthropic-math/fermat",
      "path": "adapters/anthropic-math/fermat/GRWTSK/NumberTheory/DiophantineEquations/FermatSolutionFibers.lean",
      "declarations": [
        "GRWTSK.NumberTheory.DiophantineEquations.FermatSolutionFibers.power_sum_eq_iff_degenerate",
        "GRWTSK.NumberTheory.DiophantineEquations.FermatSolutionFibers.fixed_output_solution_fiber",
        "GRWTSK.NumberTheory.DiophantineEquations.FermatSolutionFibers.positive_search_empty"
      ],
      "upstream": [
        {
          "repository": "anthropics/fermats-last-theorem",
          "commit": "6e837e75355538c7f80bab5b956861e86c4eacc2",
          "source": "FinalCheck.lean",
          "blob": "3ffbd60b8f9736f5569e4dd4774701a114d18266",
          "declarations": [
            "flt_pinned"
          ]
        }
      ],
      "hypotheses": "Natural n>=3 and natural a,b,c; no positivity assumption needed. Finite positive search has arbitrary natural bound.",
      "conclusion": "Power-sum equality iff (a=0 and b=c) or (b=0 and a=c). For fixed c the exact solution fiber is {(0,c),(c,0)}, including the coincident zero case. Every positive bounded search is empty.",
      "use": "Exact solution-fiber classification for the existing GRWTSK natural power-sum obstruction; elementary power injectivity supplies the missing c equality.",
      "consumer_paths": [
        "adapters/anthropic-math/fermat/GRWTSK/NumberTheory/AnthropicMath/Fermat.lean"
      ],
      "paper_or_source": "Anthropic FLT formalization; Wiles1995 and Taylor-Wiles1995 sources already reconciled in the canonical ledger.",
      "license": "Apache-2.0 upstream; local attribution grwtsk contributors",
      "missing_bridges": [
        "No integer/sign extension, exponent-two statement, independently re-proved modularity input or verified executable search implementation is claimed."
      ],
      "source_blob": "bcfbb5e8910bf9219756fb52d89494311daaa282",
      "source_sha256": "13bcc9f927a5efc7235cfa7bbcbfc4142b2a0753cf9c8484013dc18065b183f6",
      "classification": "SOURCE_PROOF_CANDIDATE_ACTUAL_MATHEMATICAL_CONSUMER",
      "verification": {
        "compilation": "NOT_RUN",
        "fresh_kernel_replay": "NOT_RUN",
        "complete_transitive_axiom_audit": "NOT_RUN",
        "expected_interface": "NOT_RUN"
      },
      "independent_checker": "UNSUPPLIED"
    }
  }
]
```

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/- Local attribution: grwtsk contributors.
Source proof candidates; native compilation, fresh replay and axiom audit NOT_RUN.
Imported Anthropic formalization retains its exact upstream attribution/license. -/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
