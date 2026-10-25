# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Server.Variant143b5718b71b6c8436015bca0c9c169c06d0861047e970a386eef6c2e9cf7e3b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ffd934368d3c4823c850b5471e9398013448a020",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Server/Variant143b5718b71b6c8436015bca0c9c169c06d0861047e970a386eef6c2e9cf7e3b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Server/Variant143b5718b71b6c8436015bca0c9c169c06d0861047e970a386eef6c2e9cf7e3b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Server/Variant143b5718b71b6c8436015bca0c9c169c06d0861047e970a386eef6c2e9cf7e3b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ffd934368d3c4823c850b5471e9398013448a020`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Server/Variant143b5718b71b6c8436015bca0c9c169c06d0861047e970a386eef6c2e9cf7e3b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Server/Variant143b5718b71b6c8436015bca0c9c169c06d0861047e970a386eef6c2e9cf7e3b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Server](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Server/Variant143b5718b71b6c8436015bca0c9c169c06d0861047e970a386eef6c2e9cf7e3b.lean/declarations/server--e95768610390b2d165fb00a7.md) | 41 | `declaration-track:e95768610390b2d165fb00a7cc132e4d52bc6ef2d2935f9920e09f745ecb5d1b` |
| 2 | `def` | [new](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Server/Variant143b5718b71b6c8436015bca0c9c169c06d0861047e970a386eef6c2e9cf7e3b.lean/declarations/new--da948b17fd50d288231f59b6.md) | 81 | `declaration-track:da948b17fd50d288231f59b6b337d81a9abfc02b96eba9d717e7e7d572cd2ba7` |
| 3 | `def` | [shutdown](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Server/Variant143b5718b71b6c8436015bca0c9c169c06d0861047e970a386eef6c2e9cf7e3b.lean/declarations/shutdown--3cd3a1692712d002f25978b5.md) | 99 | `declaration-track:3cd3a1692712d002f25978b595fa4b0469a81cb3eab0009b545abd6b00b9386e` |
| 4 | `def` | [waitShutdown](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Server/Variant143b5718b71b6c8436015bca0c9c169c06d0861047e970a386eef6c2e9cf7e3b.lean/declarations/waitshutdown--518c204c3f61a4f54e27fa43.md) | 106 | `declaration-track:518c204c3f61a4f54e27fa4348572079fbcd0e8c983c0ead0adac3cda1242049` |
| 5 | `def` | [waitShutdownSelector](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Server/Variant143b5718b71b6c8436015bca0c9c169c06d0861047e970a386eef6c2e9cf7e3b.lean/declarations/waitshutdownselector--6740692231a15281c01f5879.md) | 113 | `declaration-track:6740692231a15281c01f5879e573981faf96826f340af76114f624cafc78aa9d` |
| 6 | `def` | [shutdownAndWait](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Server/Variant143b5718b71b6c8436015bca0c9c169c06d0861047e970a386eef6c2e9cf7e3b.lean/declarations/shutdownandwait--ab107b538cd73fdf8ec68e36.md) | 121 | `declaration-track:ab107b538cd73fdf8ec68e36c321282ab7419d9bdce0c339b720df016fba446e` |
| 7 | `def` | [frameCancellation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Server/Variant143b5718b71b6c8436015bca0c9c169c06d0861047e970a386eef6c2e9cf7e3b.lean/declarations/framecancellation--9e213f63640ecae4465591ff.md) | 126 | `declaration-track:9e213f63640ecae4465591ff178b13b5d765877246e62459f63640c3edd98d19` |
| 8 | `def` | [serve](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Server/Variant143b5718b71b6c8436015bca0c9c169c06d0861047e970a386eef6c2e9cf7e3b.lean/declarations/serve--7df69570e2631781875390f3.md) | 146 | `declaration-track:7df69570e2631781875390f3a2571eca2caed45f630c731414cbe24a3e813003` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
