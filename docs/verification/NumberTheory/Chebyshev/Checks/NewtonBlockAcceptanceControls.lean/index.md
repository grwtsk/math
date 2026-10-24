# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.NewtonBlockAcceptanceControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e00c22869087bae331e2c32b1cadc9de863c956b",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/NewtonBlockAcceptanceControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Chebyshev/Checks/NewtonBlockAcceptanceControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Chebyshev/Checks/NewtonBlockAcceptanceControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e00c22869087bae331e2c32b1cadc9de863c956b`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/NewtonBlockAcceptanceControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/NewtonBlockAcceptanceControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonBlockAcceptance`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonBlockAcceptance.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [empty_prefix_check](../../../../../mathematics/NumberTheory/Chebyshev/Checks/NewtonBlockAcceptanceControls.lean/declarations/empty-prefix-check--d30d8623d320969062b9cebe.md) | 18 | `result-track:d30d8623d320969062b9cebe396a81803f953e97fd8fbc7c7b4310998d261d36` |
| 2 | `theorem` | [no_empty_cover](../../../../../mathematics/NumberTheory/Chebyshev/Checks/NewtonBlockAcceptanceControls.lean/declarations/no-empty-cover--3ad0f56911add2dd89b46bba.md) | 23 | `result-track:3ad0f56911add2dd89b46bba520412559fecbf38ae8624aa1847c7250e994467` |
| 3 | `theorem` | [first_index_in_first_block](../../../../../mathematics/NumberTheory/Chebyshev/Checks/NewtonBlockAcceptanceControls.lean/declarations/first-index-in-first-block--bde42939cbee44ea6b6da461.md) | 29 | `result-track:bde42939cbee44ea6b6da461958c6b0be093f6645666ba72793f45625b56023b` |
| 4 | `theorem` | [last_index_in_first_block](../../../../../mathematics/NumberTheory/Chebyshev/Checks/NewtonBlockAcceptanceControls.lean/declarations/last-index-in-first-block--de995cc4d120c46346898b80.md) | 34 | `result-track:de995cc4d120c46346898b80885aa8335d1fdede51ac6f2507737c22b54b4e4c` |
| 5 | `theorem` | [next_index_in_next_block](../../../../../mathematics/NumberTheory/Chebyshev/Checks/NewtonBlockAcceptanceControls.lean/declarations/next-index-in-next-block--eb7546c3b5c9224842d65583.md) | 39 | `result-track:eb7546c3b5c9224842d6558338e2a9050d3b4c88345c043220cbd4b02b4d6146` |
| 6 | `theorem` | [final_index_in_final_block](../../../../../mathematics/NumberTheory/Chebyshev/Checks/NewtonBlockAcceptanceControls.lean/declarations/final-index-in-final-block--74b1ac3266490cc1a655a417.md) | 44 | `result-track:74b1ac3266490cc1a655a4178f4d599b2804288ef1febf88df2a01a2e6572686` |
| 7 | `theorem` | [terminal_not_prefix](../../../../../mathematics/NumberTheory/Chebyshev/Checks/NewtonBlockAcceptanceControls.lean/declarations/terminal-not-prefix--1ae39639aff926a51104c38c.md) | 50 | `result-track:1ae39639aff926a51104c38c518144b27495f2e665a73369fb208bd1b5d7f781` |
| 8 | `theorem` | [distinct_blocks_disjoint](../../../../../mathematics/NumberTheory/Chebyshev/Checks/NewtonBlockAcceptanceControls.lean/declarations/distinct-blocks-disjoint--caf0a9441ce69e9b6db6b175.md) | 54 | `result-track:caf0a9441ce69e9b6db6b1751658464d8db4c335b68bb807f73fe64c9e4e8126` |
| 9 | `theorem` | [cancellation_does_not_identify_rows](../../../../../mathematics/NumberTheory/Chebyshev/Checks/NewtonBlockAcceptanceControls.lean/declarations/cancellation-does-not-identify-rows--8458cf2577838babee49d8d2.md) | 61 | `result-track:8458cf2577838babee49d8d2e546ac6202f778073843bedab016261fdd341706` |
| 10 | `theorem` | [accepted_shared_row_eq](../../../../../mathematics/NumberTheory/Chebyshev/Checks/NewtonBlockAcceptanceControls.lean/declarations/accepted-shared-row-eq--0fe29ef0f853535bf6ca57a6.md) | 65 | `result-track:0fe29ef0f853535bf6ca57a66c5503de77d44c4d5885d66fc4e4ab7247e34bfc` |
| 11 | `theorem` | [accepted_shared_error_eq](../../../../../mathematics/NumberTheory/Chebyshev/Checks/NewtonBlockAcceptanceControls.lean/declarations/accepted-shared-error-eq--81f6ce49a7da8d45e1fbec03.md) | 75 | `result-track:81f6ce49a7da8d45e1fbec03edaf974f7aa295ee114a08a7e7a4b720d302e891` |
| 12 | `theorem` | [repeated_block_not_new_coverage](../../../../../mathematics/NumberTheory/Chebyshev/Checks/NewtonBlockAcceptanceControls.lean/declarations/repeated-block-not-new-coverage--20b38040af1cfbc164d99ab4.md) | 83 | `result-track:20b38040af1cfbc164d99ab4552a96977623d2402250c7ad13772a85187d058a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
