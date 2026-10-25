# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AcceptanceDAG.Variantfb3ed488a71ca265dc224799131eb012dec5c0290e3a398e0f9b291aa2718cc9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d06dc16bd549a996ae7f5c48fbf73e62d320eede",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AcceptanceDAG/Variantfb3ed488a71ca265dc224799131eb012dec5c0290e3a398e0f9b291aa2718cc9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AcceptanceDAG/Variantfb3ed488a71ca265dc224799131eb012dec5c0290e3a398e0f9b291aa2718cc9.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AcceptanceDAG/Variantfb3ed488a71ca265dc224799131eb012dec5c0290e3a398e0f9b291aa2718cc9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d06dc16bd549a996ae7f5c48fbf73e62d320eede`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AcceptanceDAG/Variantfb3ed488a71ca265dc224799131eb012dec5c0290e3a398e0f9b291aa2718cc9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AcceptanceDAG/Variantfb3ed488a71ca265dc224799131eb012dec5c0290e3a398e0f9b291aa2718cc9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.CanonicalPath.RefereeGate` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.CanonicalPath.ZetaRHTarget` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [AcceptanceNode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AcceptanceDAG/Variantfb3ed488a71ca265dc224799131eb012dec5c0290e3a398e0f9b291aa2718cc9.lean/declarations/acceptancenode--554ef8a075beb80194a0f20b.md) | 19 | `declaration-track:554ef8a075beb80194a0f20b4578afe26ab9c3777a3ec4993a8abe0d59cab494` |
| 2 | `structure` | [RHAcceptanceDAG](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AcceptanceDAG/Variantfb3ed488a71ca265dc224799131eb012dec5c0290e3a398e0f9b291aa2718cc9.lean/declarations/rhacceptancedag--bc8dd51688f8098b050ac8ee.md) | 37 | `declaration-track:bc8dd51688f8098b050ac8ee012533d932d9a5759ca5cdd32b20e0af48c35744` |
| 3 | `theorem` | [acceptance_dag_requires_all_nodes](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AcceptanceDAG/Variantfb3ed488a71ca265dc224799131eb012dec5c0290e3a398e0f9b291aa2718cc9.lean/declarations/acceptance-dag-requires-all-nodes--274d5e3ea716823f5ac9ed06.md) | 49 | `result-track:274d5e3ea716823f5ac9ed068537bdbf1e8497e35e51ec6afc5f6fa7b8e15169` |
| 4 | `theorem` | [acceptance_dag_requires_no_contracts](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AcceptanceDAG/Variantfb3ed488a71ca265dc224799131eb012dec5c0290e3a398e0f9b291aa2718cc9.lean/declarations/acceptance-dag-requires-no-contracts--d9da8be538e579efb31ef7bc.md) | 54 | `result-track:d9da8be538e579efb31ef7bc26f4d6c215b34560dc697d229cc73714bf7de3b0` |
| 5 | `theorem` | [acceptance_dag_requires_zeta_specialization](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AcceptanceDAG/Variantfb3ed488a71ca265dc224799131eb012dec5c0290e3a398e0f9b291aa2718cc9.lean/declarations/acceptance-dag-requires-zeta-specialization--d56d4d870905f052ea7da2dd.md) | 59 | `result-track:d56d4d870905f052ea7da2ddb0f5da5b189c2a0bff2922e80aaa10575b59791f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
