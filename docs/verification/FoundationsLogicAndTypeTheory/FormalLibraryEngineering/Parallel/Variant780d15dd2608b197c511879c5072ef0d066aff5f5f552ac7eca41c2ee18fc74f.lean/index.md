# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Parallel.Variant780d15dd2608b197c511879c5072ef0d066aff5f5f552ac7eca41c2ee18fc74f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3432a9e8e7dedebbaa597ae4758091e7240b4f95",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant780d15dd2608b197c511879c5072ef0d066aff5f5f552ac7eca41c2ee18fc74f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant780d15dd2608b197c511879c5072ef0d066aff5f5f552ac7eca41c2ee18fc74f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant780d15dd2608b197c511879c5072ef0d066aff5f5f552ac7eca41c2ee18fc74f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3432a9e8e7dedebbaa597ae4758091e7240b4f95`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant780d15dd2608b197c511879c5072ef0d066aff5f5f552ac7eca41c2ee18fc74f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant780d15dd2608b197c511879c5072ef0d066aff5f5f552ac7eca41c2ee18fc74f.lean.json)

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
| 1 | `structure` | [TaskIterator](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant780d15dd2608b197c511879c5072ef0d066aff5f5f552ac7eca41c2ee18fc74f.lean/declarations/taskiterator--56073a06adf12968afd9b857.md) | 79 | `declaration-track:56073a06adf12968afd9b8577579b367c6a15ae8c1c06513114dfe907da2772a` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant780d15dd2608b197c511879c5072ef0d066aff5f5f552ac7eca41c2ee18fc74f.lean/declarations/instance--c884c6c4bc17a17d0032a460.md) | 82 | `declaration-track:c884c6c4bc17a17d0032a460a372e8c467248b6f146dfe38f47bce4b8c84aafe` |
| 3 | `def` | [iterTasks](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant780d15dd2608b197c511879c5072ef0d066aff5f5f552ac7eca41c2ee18fc74f.lean/declarations/itertasks--c0d0726b3285cd4fb7dde2a2.md) | 126 | `declaration-track:c0d0726b3285cd4fb7dde2a24a47047354fa5a18b243dedd6a562d1b2ad62f0d` |
| 4 | `def` | [parIterWithCancel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant780d15dd2608b197c511879c5072ef0d066aff5f5f552ac7eca41c2ee18fc74f.lean/declarations/pariterwithcancel--2a3d9e12700b5d7633c3eee5.md) | 149 | `declaration-track:2a3d9e12700b5d7633c3eee53fe447894c652d76232030d0af231364e67b207f` |
| 5 | `def` | [parIter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant780d15dd2608b197c511879c5072ef0d066aff5f5f552ac7eca41c2ee18fc74f.lean/declarations/pariter--194a0e419df6eefe76cb4814.md) | 165 | `declaration-track:194a0e419df6eefe76cb481463d3306c49af35aed5ab72ac5b5c0f0009d05215` |
| 6 | `def` | [parIterGreedyWithCancel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant780d15dd2608b197c511879c5072ef0d066aff5f5f552ac7eca41c2ee18fc74f.lean/declarations/paritergreedywithcancel--e0ee2e9af5592114e2058a1f.md) | 182 | `declaration-track:e0ee2e9af5592114e2058a1fd9d1da1230738d66e0296b8bd49769f54ced1911` |
| 7 | `def` | [parIterGreedy](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant780d15dd2608b197c511879c5072ef0d066aff5f5f552ac7eca41c2ee18fc74f.lean/declarations/paritergreedy--785f34721813e4c8e645fcf8.md) | 199 | `declaration-track:785f34721813e4c8e645fcf89286cfa3e9e62ab0d8b97c634e3af46d05c2b92c` |
| 8 | `def` | [par](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant780d15dd2608b197c511879c5072ef0d066aff5f5f552ac7eca41c2ee18fc74f.lean/declarations/par--858bfa286626d5433193968f.md) | 214 | `declaration-track:858bfa286626d5433193968f7337a4a232283edaeb6a98b773f6a5fc15d2f825` |
| 9 | `def` | [par'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant780d15dd2608b197c511879c5072ef0d066aff5f5f552ac7eca41c2ee18fc74f.lean/declarations/par--a1725bc99d8f8483db6ab6a6.md) | 234 | `declaration-track:a1725bc99d8f8483db6ab6a622fa4df3a27685f631a3b73b536095e7afb7da20` |
| 10 | `def` | [parFirst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant780d15dd2608b197c511879c5072ef0d066aff5f5f552ac7eca41c2ee18fc74f.lean/declarations/parfirst--89d795dfd96ba692361876a3.md) | 253 | `declaration-track:89d795dfd96ba692361876a3205be99a58103a3f48fd60f5a944cb01e9048564` |
| 11 | `def` | [par](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant780d15dd2608b197c511879c5072ef0d066aff5f5f552ac7eca41c2ee18fc74f.lean/declarations/par--9af22dae5b412ce518591ff3.md) | 281 | `declaration-track:9af22dae5b412ce518591ff3e9091767691af0d26a1f9133b6e1489692361655` |
| 12 | `def` | [par'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant780d15dd2608b197c511879c5072ef0d066aff5f5f552ac7eca41c2ee18fc74f.lean/declarations/par--ec54544ff3a3669cc14799df.md) | 301 | `declaration-track:ec54544ff3a3669cc14799dfda4e0301da4117ed0fb5dfe4fe0c7b95048486a5` |
| 13 | `def` | [parIterWithCancel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant780d15dd2608b197c511879c5072ef0d066aff5f5f552ac7eca41c2ee18fc74f.lean/declarations/pariterwithcancel--0e93936199bf076c77255574.md) | 328 | `declaration-track:0e93936199bf076c77255574b1e6f1787434b7d43d693de319f3c55cb841955d` |
| 14 | `def` | [parIter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant780d15dd2608b197c511879c5072ef0d066aff5f5f552ac7eca41c2ee18fc74f.lean/declarations/pariter--38e3b7858cb4f6afc4cabca4.md) | 345 | `declaration-track:38e3b7858cb4f6afc4cabca4cc75df98e4ff791ffb402fa995d33948d9bf7462` |
| 15 | `def` | [parIterGreedyWithCancel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant780d15dd2608b197c511879c5072ef0d066aff5f5f552ac7eca41c2ee18fc74f.lean/declarations/paritergreedywithcancel--ecc6384ad3f3736660db08f7.md) | 362 | `declaration-track:ecc6384ad3f3736660db08f74634186cbaa66b3c3b35a8c3d46c1a28e8c804ef` |
| 16 | `def` | [parIterGreedy](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant780d15dd2608b197c511879c5072ef0d066aff5f5f552ac7eca41c2ee18fc74f.lean/declarations/paritergreedy--44019db55c9594824c3b4a50.md) | 379 | `declaration-track:44019db55c9594824c3b4a508cea650c0dd5232e57f491930e8c638db696e491` |
| 17 | `def` | [parFirst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant780d15dd2608b197c511879c5072ef0d066aff5f5f552ac7eca41c2ee18fc74f.lean/declarations/parfirst--f7e213b1b095ba96067f1716.md) | 388 | `declaration-track:f7e213b1b095ba96067f1716d5c2d943f31357d7c8f7b7891f2eceb5423d9672` |
| 18 | `def` | [parIterWithCancel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant780d15dd2608b197c511879c5072ef0d066aff5f5f552ac7eca41c2ee18fc74f.lean/declarations/pariterwithcancel--392c891fa58ec7befaf1482f.md) | 418 | `declaration-track:392c891fa58ec7befaf1482f0d0719c7b79673ea14c2cf26cca4e632a818e815` |
| 19 | `def` | [parIter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant780d15dd2608b197c511879c5072ef0d066aff5f5f552ac7eca41c2ee18fc74f.lean/declarations/pariter--5d717a3a9d114dd0aaf7ea5d.md) | 435 | `declaration-track:5d717a3a9d114dd0aaf7ea5de9909ecf0884d7c8902f585628bf34e3a2a58e71` |
| 20 | `def` | [parIterGreedyWithCancel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant780d15dd2608b197c511879c5072ef0d066aff5f5f552ac7eca41c2ee18fc74f.lean/declarations/paritergreedywithcancel--2289b915f91b73a92dae3842.md) | 452 | `declaration-track:2289b915f91b73a92dae38424b94fe87db8436ac4b30fc179bcdc421046274d2` |
| 21 | `def` | [parIterGreedy](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant780d15dd2608b197c511879c5072ef0d066aff5f5f552ac7eca41c2ee18fc74f.lean/declarations/paritergreedy--0b4e134b8e174c0b7d7b1bce.md) | 469 | `declaration-track:0b4e134b8e174c0b7d7b1bcee713720d321dd1402dd25955e69227aa899436da` |
| 22 | `def` | [par](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant780d15dd2608b197c511879c5072ef0d066aff5f5f552ac7eca41c2ee18fc74f.lean/declarations/par--db49d0f437a5a1de8695039f.md) | 484 | `declaration-track:db49d0f437a5a1de8695039f90d12c83f5ae0a9b1f4f626988b8297501a88502` |
| 23 | `def` | [par'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant780d15dd2608b197c511879c5072ef0d066aff5f5f552ac7eca41c2ee18fc74f.lean/declarations/par--5c1becfc10bc7507eed64289.md) | 506 | `declaration-track:5c1becfc10bc7507eed64289d24091fe2ad9e7db0b92803a112380493bca9cc6` |
| 24 | `def` | [parFirst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant780d15dd2608b197c511879c5072ef0d066aff5f5f552ac7eca41c2ee18fc74f.lean/declarations/parfirst--f1101e382062a35a7c06e4ab.md) | 525 | `declaration-track:f1101e382062a35a7c06e4abc2ea11f3aae391ac08c1c50064abf84930cb9f67` |
| 25 | `def` | [parIterWithCancel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant780d15dd2608b197c511879c5072ef0d066aff5f5f552ac7eca41c2ee18fc74f.lean/declarations/pariterwithcancel--d6909b9bdc24d29cb0a7f220.md) | 555 | `declaration-track:d6909b9bdc24d29cb0a7f220f3a6ea8190110ca3610cc0022fb99c4eb72ade8e` |
| 26 | `def` | [parIter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant780d15dd2608b197c511879c5072ef0d066aff5f5f552ac7eca41c2ee18fc74f.lean/declarations/pariter--33495c6f6f5b22e8dde4ecab.md) | 572 | `declaration-track:33495c6f6f5b22e8dde4ecabfccbbbf0e262bf67dcc449b56b9815f945f839c6` |
| 27 | `def` | [parIterGreedyWithCancel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant780d15dd2608b197c511879c5072ef0d066aff5f5f552ac7eca41c2ee18fc74f.lean/declarations/paritergreedywithcancel--b2de036318812c45e65659ee.md) | 589 | `declaration-track:b2de036318812c45e65659ee3765d28e1714d2a1f1f61d0316af67689c911385` |
| 28 | `def` | [parIterGreedy](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant780d15dd2608b197c511879c5072ef0d066aff5f5f552ac7eca41c2ee18fc74f.lean/declarations/paritergreedy--6dd481f3b7c51761e2733d37.md) | 606 | `declaration-track:6dd481f3b7c51761e2733d37c533d5e604d26c0d929f33552f44df40eb0bfed3` |
| 29 | `def` | [par](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant780d15dd2608b197c511879c5072ef0d066aff5f5f552ac7eca41c2ee18fc74f.lean/declarations/par--e236bdc214e09df941f6ad7c.md) | 621 | `declaration-track:e236bdc214e09df941f6ad7caab186214238bcac4a90dbbbf5e69bb0bc7cfdfe` |
| 30 | `def` | [par'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant780d15dd2608b197c511879c5072ef0d066aff5f5f552ac7eca41c2ee18fc74f.lean/declarations/par--0ca22e166d55a256492be155.md) | 643 | `declaration-track:0ca22e166d55a256492be15574f5b4407d54c71b57c8c38b81d570039582cdef` |
| 31 | `def` | [parFirst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant780d15dd2608b197c511879c5072ef0d066aff5f5f552ac7eca41c2ee18fc74f.lean/declarations/parfirst--80c049c3d37353de35ccb198.md) | 662 | `declaration-track:80c049c3d37353de35ccb198a8c27862675d477ad4d09c076b1cb2ce14542667` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
