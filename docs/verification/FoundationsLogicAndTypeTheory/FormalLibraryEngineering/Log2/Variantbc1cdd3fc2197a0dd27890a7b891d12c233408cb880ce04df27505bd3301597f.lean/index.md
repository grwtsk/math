# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Log2.Variantbc1cdd3fc2197a0dd27890a7b891d12c233408cb880ce04df27505bd3301597f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "333fd547aa6b281429b1b430c9f1f93a00d912f0",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log2/Variantbc1cdd3fc2197a0dd27890a7b891d12c233408cb880ce04df27505bd3301597f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log2/Variantbc1cdd3fc2197a0dd27890a7b891d12c233408cb880ce04df27505bd3301597f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log2/Variantbc1cdd3fc2197a0dd27890a7b891d12c233408cb880ce04df27505bd3301597f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `333fd547aa6b281429b1b430c9f1f93a00d912f0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log2/Variantbc1cdd3fc2197a0dd27890a7b891d12c233408cb880ce04df27505bd3301597f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log2/Variantbc1cdd3fc2197a0dd27890a7b891d12c233408cb880ce04df27505bd3301597f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Nat.Div.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Init.NotationExtra` — import line 16; external provider; requires a separately pinned dependency.
- `Init.WFTactics` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [log2_terminates](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log2/Variantbc1cdd3fc2197a0dd27890a7b891d12c233408cb880ce04df27505bd3301597f.lean/declarations/log2-terminates--3e5b7464c29d0757d7204f77.md) | 26 | `result-track:3e5b7464c29d0757d7204f779de07885222818f9ae3b322ea0b08f5dafa71099` |
| 2 | `def` | [log2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log2/Variantbc1cdd3fc2197a0dd27890a7b891d12c233408cb880ce04df27505bd3301597f.lean/declarations/log2--ffea5d289f56a57f6ffd3fa2.md) | 50 | `declaration-track:ffea5d289f56a57f6ffd3fa2652163d2bdd998ef5a9e2dc72f810d9fb6782497` |
| 3 | `theorem` | [log2_rec_irrel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log2/Variantbc1cdd3fc2197a0dd27890a7b891d12c233408cb880ce04df27505bd3301597f.lean/declarations/log2-rec-irrel--e9a26fd48cb6e07834139007.md) | 55 | `result-track:e9a26fd48cb6e0783413900787a1338e52c866bddc81ffdc2353177b77a0056c` |
| 4 | `theorem` | [log2_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log2/Variantbc1cdd3fc2197a0dd27890a7b891d12c233408cb880ce04df27505bd3301597f.lean/declarations/log2-def--306e7681a917ba54e35fa569.md) | 70 | `result-track:306e7681a917ba54e35fa5690a369dc8e3134bbf6d854e58b2c4d461e3c16b0b` |
| 5 | `theorem` | [log2_le_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log2/Variantbc1cdd3fc2197a0dd27890a7b891d12c233408cb880ce04df27505bd3301597f.lean/declarations/log2-le-self--01fd834cecd81fb1aea2a677.md) | 81 | `result-track:01fd834cecd81fb1aea2a6772a4945eae537a3d7335d5ff74d8afddf5047e68b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
