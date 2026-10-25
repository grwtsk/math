# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Computability.RecursiveFunctions.PrimitiveParserReconstruction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b07c52115c26278a1362e6ac6eca8f61569cb53e",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/PrimitiveParserReconstruction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/PrimitiveParserReconstruction.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/PrimitiveParserReconstruction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b07c52115c26278a1362e6ac6eca8f61569cb53e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/PrimitiveParserReconstruction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/PrimitiveParserReconstruction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.FoundationsLogicAndTypeTheory.Computability.RecursiveFunctions.SupportedValueInverse`](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/SupportedValueInverse.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [unsigned_reconstruct](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/PrimitiveParserReconstruction.lean/declarations/unsigned-reconstruct--74e614bdc16f40aa366b6e90.md) | 5 | `result-track:74e614bdc16f40aa366b6e90df41af518d09e3d03c10cfbf0b27fe62af1c649b` |
| 2 | `theorem` | [integer_reconstruct](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/PrimitiveParserReconstruction.lean/declarations/integer-reconstruct--a198d990d2ec2acc978bec03.md) | 17 | `result-track:a198d990d2ec2acc978bec034725a45763b4e5eb1416e54711797060ae0e097c` |
| 3 | `theorem` | [readUntil_reconstruct](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/PrimitiveParserReconstruction.lean/declarations/readuntil-reconstruct--a79e581ca8d0f7b9acba6f34.md) | 43 | `result-track:a79e581ca8d0f7b9acba6f3409803da259180eb02933768aa8cf23eb89e0a4f8` |
| 4 | `theorem` | [readNat_reconstruct](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/PrimitiveParserReconstruction.lean/declarations/readnat-reconstruct--376ecfe2fee8b86a2b8a4d3f.md) | 61 | `result-track:376ecfe2fee8b86a2b8a4d3ff364d94ceed68b722bfa44e07b48890930b69a37` |
| 5 | `theorem` | [splitAt_length](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/PrimitiveParserReconstruction.lean/declarations/splitat-length--e2e4d9bcca6b8abdf4c7e114.md) | 74 | `result-track:e2e4d9bcca6b8abdf4c7e114ace836bb2aa2143399b2342f1d40d50df87d5a66` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
