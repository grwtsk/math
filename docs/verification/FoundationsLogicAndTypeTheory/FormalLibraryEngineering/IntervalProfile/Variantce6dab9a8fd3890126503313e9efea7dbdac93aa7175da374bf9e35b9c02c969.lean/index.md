# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntervalProfile.Variantce6dab9a8fd3890126503313e9efea7dbdac93aa7175da374bf9e35b9c02c969

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ec904fa0bb808c97070a7e985a87de6341fe1fc",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalProfile/Variantce6dab9a8fd3890126503313e9efea7dbdac93aa7175da374bf9e35b9c02c969.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalProfile/Variantce6dab9a8fd3890126503313e9efea7dbdac93aa7175da374bf9e35b9c02c969.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalProfile/Variantce6dab9a8fd3890126503313e9efea7dbdac93aa7175da374bf9e35b9c02c969.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ec904fa0bb808c97070a7e985a87de6341fe1fc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalProfile/Variantce6dab9a8fd3890126503313e9efea7dbdac93aa7175da374bf9e35b9c02c969.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalProfile/Variantce6dab9a8fd3890126503313e9efea7dbdac93aa7175da374bf9e35b9c02c969.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FCRS.Transport.Foundations` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IntervalProfile](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalProfile/Variantce6dab9a8fd3890126503313e9efea7dbdac93aa7175da374bf9e35b9c02c969.lean/declarations/intervalprofile--779c787f8ad059aad61f379e.md) | 11 | `declaration-track:779c787f8ad059aad61f379e5615c78d6f3956c54507e692a20bae4c7c00b9d1` |
| 2 | `def` | [lowerSatisfied](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalProfile/Variantce6dab9a8fd3890126503313e9efea7dbdac93aa7175da374bf9e35b9c02c969.lean/declarations/lowersatisfied--32d9e7717c693532b0bc264a.md) | 32 | `declaration-track:32d9e7717c693532b0bc264a395e19a3606e87a394675e907b7dfb4241ab0553` |
| 3 | `def` | [upperSatisfied](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalProfile/Variantce6dab9a8fd3890126503313e9efea7dbdac93aa7175da374bf9e35b9c02c969.lean/declarations/uppersatisfied--4ce5a7f06c0d0986fd1949b3.md) | 42 | `declaration-track:4ce5a7f06c0d0986fd1949b3ae40fb96438ce6e3486edc607d66e8db9c7dc3c8` |
| 4 | `def` | [contains](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalProfile/Variantce6dab9a8fd3890126503313e9efea7dbdac93aa7175da374bf9e35b9c02c969.lean/declarations/contains--8a20335ee96f51e83d5d08eb.md) | 56 | `declaration-track:8a20335ee96f51e83d5d08ebee4b787579cb08f4c13c156f84d9f17ae7b28497` |
| 5 | `def` | [admissible](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalProfile/Variantce6dab9a8fd3890126503313e9efea7dbdac93aa7175da374bf9e35b9c02c969.lean/declarations/admissible--098d25760e1137124b51a084.md) | 66 | `declaration-track:098d25760e1137124b51a084a90ca9d698b3a61f4b8fb94a62ad81da169134e7` |
| 6 | `def` | [IntervalClaim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalProfile/Variantce6dab9a8fd3890126503313e9efea7dbdac93aa7175da374bf9e35b9c02c969.lean/declarations/intervalclaim--b385108f66a85e738a53ba1e.md) | 77 | `declaration-track:b385108f66a85e738a53ba1e73d24d39cea3c25fe035a4754691e14b0f9a2b42` |
| 7 | `structure` | [IntervalWitness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalProfile/Variantce6dab9a8fd3890126503313e9efea7dbdac93aa7175da374bf9e35b9c02c969.lean/declarations/intervalwitness--8c562ba2f18ad2662ded3bd4.md) | 84 | `declaration-track:8c562ba2f18ad2662ded3bd48c8ce57a4badfa7fd31f24384dfd23cdc828eb81` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
