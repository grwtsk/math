# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Computability.RecursiveFunctions.ValueParserReconstruction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "67a56015d2be27dca8d8627889a3e163928fd9c2",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/ValueParserReconstruction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/ValueParserReconstruction.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/ValueParserReconstruction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `67a56015d2be27dca8d8627889a3e163928fd9c2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/ValueParserReconstruction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/ValueParserReconstruction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.FoundationsLogicAndTypeTheory.Computability.RecursiveFunctions.PrimitiveParserReconstruction`](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/PrimitiveParserReconstruction.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [asText_inverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/ValueParserReconstruction.lean/declarations/astext-inverse--1b02ceacf9967bc072b7a4cd.md) | 5 | `result-track:1b02ceacf9967bc072b7a4cda2bcd3e4c37aef2594a960600ee4e575855dc738` |
| 2 | `theorem` | [readMany_reconstruct](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/ValueParserReconstruction.lean/declarations/readmany-reconstruct--993dd7fa7fcdc38e96a9ab86.md) | 9 | `result-track:993dd7fa7fcdc38e96a9ab8618759aedcf41aff5c994f3a393cfd8c89c499534` |
| 3 | `theorem` | [readPairs_reconstruct](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/ValueParserReconstruction.lean/declarations/readpairs-reconstruct--a5970437193da87e08988fd0.md) | 37 | `result-track:a5970437193da87e08988fd0ff7163e73001210c0f9e12460a3f3f6c3cb0bf87` |
| 4 | `theorem` | [parse_value_reconstruct](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/ValueParserReconstruction.lean/declarations/parse-value-reconstruct--ea055336be252dc3b7abbfee.md) | 73 | `result-track:ea055336be252dc3b7abbfee9d4d3765e4163ffa1cc5c5364df7f65a1d78ee2a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
