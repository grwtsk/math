# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MersenneTwister.Variantd8787b627af51efa76df357b4cb17b8518f40235d6bce8a4c3b8cfc7c7dda15a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b5856f64226a6e6bea63addadf1eb5d33ab5dbba",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MersenneTwister/Variantd8787b627af51efa76df357b4cb17b8518f40235d6bce8a4c3b8cfc7c7dda15a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MersenneTwister/Variantd8787b627af51efa76df357b4cb17b8518f40235d6bce8a4c3b8cfc7c7dda15a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MersenneTwister/Variantd8787b627af51efa76df357b4cb17b8518f40235d6bce8a4c3b8cfc7c7dda15a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b5856f64226a6e6bea63addadf1eb5d33ab5dbba`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MersenneTwister/Variantd8787b627af51efa76df357b4cb17b8518f40235d6bce8a4c3b8cfc7c7dda15a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MersenneTwister/Variantd8787b627af51efa76df357b4cb17b8518f40235d6bce8a4c3b8cfc7c7dda15a.lean.json)

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
| 1 | `structure` | [Config](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MersenneTwister/Variantd8787b627af51efa76df357b4cb17b8518f40235d6bce8a4c3b8cfc7c7dda15a.lean/declarations/config--1b870e2e13bd25d6cde15e26.md) | 62 | `declaration-track:1b870e2e13bd25d6cde15e26c56ea6c9e0904f9cd6794f1a42ad22387f641209` |
| 2 | `abbrev` | [Config.uMask](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MersenneTwister/Variantd8787b627af51efa76df357b4cb17b8518f40235d6bce8a4c3b8cfc7c7dda15a.lean/declarations/config-umask--d421575449a875adf0db03cb.md) | 82 | `declaration-track:d421575449a875adf0db03cb21a2c465cd3c320665d6c126a9c6a6844ad7a1d0` |
| 3 | `abbrev` | [Config.lMask](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MersenneTwister/Variantd8787b627af51efa76df357b4cb17b8518f40235d6bce8a4c3b8cfc7c7dda15a.lean/declarations/config-lmask--c7d4ccb4ac57d33f1e019375.md) | 85 | `declaration-track:c7d4ccb4ac57d33f1e01937502821ba56c2b6eadeb902c70776ae742102ec27b` |
| 4 | `theorem` | [Config.zero_lt_wordSize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MersenneTwister/Variantd8787b627af51efa76df357b4cb17b8518f40235d6bce8a4c3b8cfc7c7dda15a.lean/declarations/config-zero-lt-wordsize--7305248bc6bd9856a7609088.md) | 88 | `result-track:7305248bc6bd9856a7609088777caf1d986c5a6851ee1094972d06363e9e14c7` |
| 5 | `theorem` | [Config.zero_lt_stateSize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MersenneTwister/Variantd8787b627af51efa76df357b4cb17b8518f40235d6bce8a4c3b8cfc7c7dda15a.lean/declarations/config-zero-lt-statesize--954f69e2a812f8e0d0e570b9.md) | 91 | `result-track:954f69e2a812f8e0d0e570b9c730d8134f380223333a53b511ec1b1d0cca56bb` |
| 6 | `structure` | [State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MersenneTwister/Variantd8787b627af51efa76df357b4cb17b8518f40235d6bce8a4c3b8cfc7c7dda15a.lean/declarations/state--5823efbf1b387b02fd3cf93f.md) | 95 | `declaration-track:5823efbf1b387b02fd3cf93fd0ee5f30aab48b00d767c4725bec7af14a707763` |
| 7 | `def` | [Config.init](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MersenneTwister/Variantd8787b627af51efa76df357b4cb17b8518f40235d6bce8a4c3b8cfc7c7dda15a.lean/declarations/config-init--0ccd1b01d94d2e023554125d.md) | 102 | `declaration-track:0ccd1b01d94d2e023554125dc4a731a299230a12ee94e0a26bbaaea82bddba01` |
| 8 | `def` | [State.twist](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MersenneTwister/Variantd8787b627af51efa76df357b4cb17b8518f40235d6bce8a4c3b8cfc7c7dda15a.lean/declarations/state-twist--c50d312ec95b0c24037da116.md) | 114 | `declaration-track:c50d312ec95b0c24037da1162d87f81570fb2e565c7a68afa5917da15c44f0e5` |
| 9 | `def` | [State.update](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MersenneTwister/Variantd8787b627af51efa76df357b4cb17b8518f40235d6bce8a4c3b8cfc7c7dda15a.lean/declarations/state-update--2ef117ff5d56e282ae4aed3a.md) | 124 | `declaration-track:2ef117ff5d56e282ae4aed3a0b35b7b4f0604e6c568b83a427a870d35f33b0e3` |
| 10 | `def` | [State.next](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MersenneTwister/Variantd8787b627af51efa76df357b4cb17b8518f40235d6bce8a4c3b8cfc7c7dda15a.lean/declarations/state-next--e5304b09b71341c6503800f1.md) | 129 | `declaration-track:e5304b09b71341c6503800f1f72d11496283d63bbb8b966e60980c55bc743ccf` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MersenneTwister/Variantd8787b627af51efa76df357b4cb17b8518f40235d6bce8a4c3b8cfc7c7dda15a.lean/declarations/instance--d6ccf635cf8ce4044e2ff2a9.md) | 143 | `declaration-track:d6ccf635cf8ce4044e2ff2a9d82e30006fd4a9a04826dd9905cc70c0e6a93897` |
| 12 | `def` | [mt19937](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MersenneTwister/Variantd8787b627af51efa76df357b4cb17b8518f40235d6bce8a4c3b8cfc7c7dda15a.lean/declarations/mt19937--789f40b59f57dec090ad4f53.md) | 147 | `declaration-track:789f40b59f57dec090ad4f53d57ed43c0fa4ededdf9281791c2d2dd373ff6645` |
| 13 | `def` | [mt19937_64](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MersenneTwister/Variantd8787b627af51efa76df357b4cb17b8518f40235d6bce8a4c3b8cfc7c7dda15a.lean/declarations/mt19937-64--1e798665d5c35ab161088bef.md) | 159 | `declaration-track:1e798665d5c35ab161088bef73f93218adc7003bd72b62fabc2107c96fdb026f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
