# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Operation.Variantbf7e77236956a9c9250d4d48e5ac9d3bbcefff55c835575b1c2cb2813894737c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f7d7277ac3fdee35361e3d0b0a07b0144bfa017",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Operation/Variantbf7e77236956a9c9250d4d48e5ac9d3bbcefff55c835575b1c2cb2813894737c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Operation/Variantbf7e77236956a9c9250d4d48e5ac9d3bbcefff55c835575b1c2cb2813894737c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Operation/Variantbf7e77236956a9c9250d4d48e5ac9d3bbcefff55c835575b1c2cb2813894737c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f7d7277ac3fdee35361e3d0b0a07b0144bfa017`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Operation/Variantbf7e77236956a9c9250d4d48e5ac9d3bbcefff55c835575b1c2cb2813894737c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Operation/Variantbf7e77236956a9c9250d4d48e5ac9d3bbcefff55c835575b1c2cb2813894737c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Capability.Effect` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [NetworkOperation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Operation/Variantbf7e77236956a9c9250d4d48e5ac9d3bbcefff55c835575b1c2cb2813894737c.lean/declarations/networkoperation--4dea18ce97c4d2efa55128f1.md) | 9 | `declaration-track:4dea18ce97c4d2efa55128f1e781c0d3010af8635a6fb482f7baad6530564239` |
| 2 | `def` | [NetworkOperation.requiredEffect](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Operation/Variantbf7e77236956a9c9250d4d48e5ac9d3bbcefff55c835575b1c2cb2813894737c.lean/declarations/networkoperation-requiredeffect--527236a9e234e8bfcc4b77db.md) | 37 | `declaration-track:527236a9e234e8bfcc4b77dbaff0c6a9459fc8ce47b3e1c0c2083f054031f9d5` |
| 3 | `def` | [NetworkOperation.isObservation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Operation/Variantbf7e77236956a9c9250d4d48e5ac9d3bbcefff55c835575b1c2cb2813894737c.lean/declarations/networkoperation-isobservation--cc874b73fcbe142f25bcb740.md) | 64 | `declaration-track:cc874b73fcbe142f25bcb740a5e5197f1c9d698aea6d5bd3a219f411d135d5a9` |
| 4 | `theorem` | [query_state_requires_observe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Operation/Variantbf7e77236956a9c9250d4d48e5ac9d3bbcefff55c835575b1c2cb2813894737c.lean/declarations/query-state-requires-observe--40971f8aff4aeac68de87318.md) | 73 | `result-track:40971f8aff4aeac68de87318229c06372edd394c7d128f102e0f3d003b90e7a4` |
| 5 | `theorem` | [activation_requires_execute](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Operation/Variantbf7e77236956a9c9250d4d48e5ac9d3bbcefff55c835575b1c2cb2813894737c.lean/declarations/activation-requires-execute--6811da9533575ff6c7bb48f7.md) | 77 | `result-track:6811da9533575ff6c7bb48f72df06994163e4f73feac956195f606c2b022b3d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
