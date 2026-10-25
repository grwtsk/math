# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tests.Variant71946a487b59e7e5c793fa1228d92802156dfca6a2ce6f72ce30410f251815a0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "78f01c26c02ab532281256f415637b4a38819305",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variant71946a487b59e7e5c793fa1228d92802156dfca6a2ce6f72ce30410f251815a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variant71946a487b59e7e5c793fa1228d92802156dfca6a2ce6f72ce30410f251815a0.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variant71946a487b59e7e5c793fa1228d92802156dfca6a2ce6f72ce30410f251815a0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `78f01c26c02ab532281256f415637b4a38819305`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variant71946a487b59e7e5c793fa1228d92802156dfca6a2ce6f72ce30410f251815a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variant71946a487b59e7e5c793fa1228d92802156dfca6a2ce6f72ce30410f251815a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BinaryMatrix.Quantization` — import line 1; external provider; requires a separately pinned dependency.
- `BinaryMatrix.SATReductionTests` — import line 2; external provider; requires a separately pinned dependency.
- `BinaryMatrix.AvalancheTests` — import line 3; external provider; requires a separately pinned dependency.
- `BinaryMatrix.PermutationNetworkTests` — import line 4; external provider; requires a separately pinned dependency.
- `BinaryMatrix.SymmetryTests` — import line 5; external provider; requires a separately pinned dependency.
- `BinaryMatrix.DynamicalZetaTests` — import line 6; external provider; requires a separately pinned dependency.
- `BinaryMatrix.GaloisFieldTests` — import line 7; external provider; requires a separately pinned dependency.
- `BinaryMatrix.SubmatrixSurgeryTests` — import line 8; external provider; requires a separately pinned dependency.
- `FilesystemCodec.Tests` — import line 9; external provider; requires a separately pinned dependency.
- `FilesystemHomology.Tests` — import line 10; external provider; requires a separately pinned dependency.
- `DAF.Integration.CausalObserverTests` — import line 11; external provider; requires a separately pinned dependency.
- `DAF.Integration.ArchitectureTests` — import line 12; external provider; requires a separately pinned dependency.
- `DAF.Integration.ComparisonTests` — import line 13; external provider; requires a separately pinned dependency.
- `DAF.Integration.DeterminantTests` — import line 14; external provider; requires a separately pinned dependency.
- `DAF.Integration.TilingArithmeticComparison` — import line 15; external provider; requires a separately pinned dependency.
- `DAF.Integration.FabricTests` — import line 16; external provider; requires a separately pinned dependency.
- `DAF.Integration.FabricReactionTests` — import line 17; external provider; requires a separately pinned dependency.
- `DAF.Integration.FabricRuntimeTests` — import line 18; external provider; requires a separately pinned dependency.
- `DAF.Integration.PrismaticFabricTests` — import line 19; external provider; requires a separately pinned dependency.
- `DAF.Integration.GlobalReferenceTests` — import line 20; external provider; requires a separately pinned dependency.
- `DAF.Integration.WindowFusionTests` — import line 21; external provider; requires a separately pinned dependency.
- `DAF.Integration.RasterizationTests` — import line 22; external provider; requires a separately pinned dependency.
- `DAF.Integration.AvalanchePartitionTests` — import line 23; external provider; requires a separately pinned dependency.
- `DAF.Integration.SurgeryCoherenceTests` — import line 24; external provider; requires a separately pinned dependency.
- `DAF.Integration.CurvatureDiffusionTests` — import line 25; external provider; requires a separately pinned dependency.
- `DAF.Integration.WorldModelPrototypeTests` — import line 26; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.DeriveFintype` — import line 27; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [a](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variant71946a487b59e7e5c793fa1228d92802156dfca6a2ce6f72ce30410f251815a0.lean/declarations/a--ac50acda13b548db38ac789b.md) | 45 | `declaration-track:ac50acda13b548db38ac789b887dbb04cad18ae659c76893f1313a3b25d2a52d` |
| 2 | `def` | [b](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variant71946a487b59e7e5c793fa1228d92802156dfca6a2ce6f72ce30410f251815a0.lean/declarations/b--ab768c92ca2f5305b5415da6.md) | 51 | `declaration-track:ab768c92ca2f5305b5415da6dc9c5d46fdde693f6925b8d860560c9d94141240` |
| 3 | `inductive` | [SampleCfg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variant71946a487b59e7e5c793fa1228d92802156dfca6a2ce6f72ce30410f251815a0.lean/declarations/samplecfg--68793408a969c81121e7fb73.md) | 59 | `declaration-track:68793408a969c81121e7fb7368bb55f3f8814b5cd0348794a214db081b7d2cc3` |
| 4 | `def` | [sampleRows](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variant71946a487b59e7e5c793fa1228d92802156dfca6a2ce6f72ce30410f251815a0.lean/declarations/samplerows--c279a2cb1769ccb4b0adeb1b.md) | 66 | `declaration-track:c279a2cb1769ccb4b0adeb1ba32336a42e2686b865f728ee6eeac16572a111b1` |
| 5 | `def` | [sampleCols](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variant71946a487b59e7e5c793fa1228d92802156dfca6a2ce6f72ce30410f251815a0.lean/declarations/samplecols--57f6ad0d7da487ac036fcd88.md) | 68 | `declaration-track:57f6ad0d7da487ac036fcd88fe8d5b29ebd047095fc212a0a72de417f4be34d0` |
| 6 | `def` | [sampleEncode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variant71946a487b59e7e5c793fa1228d92802156dfca6a2ce6f72ce30410f251815a0.lean/declarations/sampleencode--8c4fdc8a696d89d886a8c298.md) | 71 | `declaration-track:8c4fdc8a696d89d886a8c2989a78c9b5212cf5c9e6c0a1aa96266f15fd83729f` |
| 7 | `def` | [sampleQ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variant71946a487b59e7e5c793fa1228d92802156dfca6a2ce6f72ce30410f251815a0.lean/declarations/sampleq--9dd31555b76ea9fabfd7dbb4.md) | 77 | `declaration-track:9dd31555b76ea9fabfd7dbb486e707594f656af31698b50872da5ab8b5c2c35d` |
| 8 | `def` | [sampleEncodeMut](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variant71946a487b59e7e5c793fa1228d92802156dfca6a2ce6f72ce30410f251815a0.lean/declarations/sampleencodemut--4e7923b403733eb85c7c1a03.md) | 82 | `declaration-track:4e7923b403733eb85c7c1a035dd2d5b1d8cd058a433b47d8396db069e05c1e7c` |
| 9 | `def` | [sampleMutQ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variant71946a487b59e7e5c793fa1228d92802156dfca6a2ce6f72ce30410f251815a0.lean/declarations/samplemutq--c09cf407960ffb017a429564.md) | 88 | `declaration-track:c09cf407960ffb017a429564bc4f9a77ca62480ee082fd9e190baa73c900826e` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variant71946a487b59e7e5c793fa1228d92802156dfca6a2ce6f72ce30410f251815a0.lean/declarations/example--6b002d02debe21adbc2378f3.md) | 94 | `declaration-track:6b002d02debe21adbc2378f3210e346360974d5c426775946c59412d0a022f4c` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variant71946a487b59e7e5c793fa1228d92802156dfca6a2ce6f72ce30410f251815a0.lean/declarations/example--c1e534d0f4b1b3a6376011bb.md) | 99 | `declaration-track:c1e534d0f4b1b3a6376011bbe96cfb25a2d3726fb001a66d30a5711595b44fb9` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variant71946a487b59e7e5c793fa1228d92802156dfca6a2ce6f72ce30410f251815a0.lean/declarations/example--5db3157b09b9cc64d065348c.md) | 104 | `declaration-track:5db3157b09b9cc64d065348ca48f4c56f2a62a937a1e8d8bb3f675366fc4a239` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variant71946a487b59e7e5c793fa1228d92802156dfca6a2ce6f72ce30410f251815a0.lean/declarations/example--51f612cfc2a569e4a9e9e965.md) | 109 | `declaration-track:51f612cfc2a569e4a9e9e965815b67f20de12dd6d9b1fe3dc19847b413dd8ff5` |
| 14 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variant71946a487b59e7e5c793fa1228d92802156dfca6a2ce6f72ce30410f251815a0.lean/declarations/example--b03790df3dc30f1b86d279b9.md) | 116 | `declaration-track:b03790df3dc30f1b86d279b95169cadf5768035558eab31e74135a16944565e4` |
| 15 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variant71946a487b59e7e5c793fa1228d92802156dfca6a2ce6f72ce30410f251815a0.lean/declarations/example--52569502cf9d7e98f70d3563.md) | 120 | `declaration-track:52569502cf9d7e98f70d35630820c2dd169892fc6c26a614d5244da79b24adee` |
| 16 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variant71946a487b59e7e5c793fa1228d92802156dfca6a2ce6f72ce30410f251815a0.lean/declarations/example--242f98fad39a1b8e80050fb6.md) | 124 | `declaration-track:242f98fad39a1b8e80050fb693b4d2e112995888e7b34d56b07f525ee09dba0f` |
| 17 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variant71946a487b59e7e5c793fa1228d92802156dfca6a2ce6f72ce30410f251815a0.lean/declarations/example--251e3d1f11aebd2a394bfd30.md) | 130 | `declaration-track:251e3d1f11aebd2a394bfd30d61ca1cfc59643eafebdee61a932f7f5158e641f` |
| 18 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variant71946a487b59e7e5c793fa1228d92802156dfca6a2ce6f72ce30410f251815a0.lean/declarations/example--ac95165686117cb56a0ece2a.md) | 135 | `declaration-track:ac95165686117cb56a0ece2a7e3e49502b6a49a31a605c76e85d6c23caf9308a` |
| 19 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variant71946a487b59e7e5c793fa1228d92802156dfca6a2ce6f72ce30410f251815a0.lean/declarations/example--499500e34537b74f920c3104.md) | 140 | `declaration-track:499500e34537b74f920c3104500c97a9fc985bad086ad22f23c7e6bac12f2652` |
| 20 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variant71946a487b59e7e5c793fa1228d92802156dfca6a2ce6f72ce30410f251815a0.lean/declarations/example--a2e449dfe93f914c5789bc13.md) | 145 | `declaration-track:a2e449dfe93f914c5789bc13e0936a52d654516f71750d6848122184b8251852` |
| 21 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variant71946a487b59e7e5c793fa1228d92802156dfca6a2ce6f72ce30410f251815a0.lean/declarations/example--94d769298b6660067f57da44.md) | 150 | `declaration-track:94d769298b6660067f57da44ad5dbb5e30aa26389cd39527d62e210cee87b0cd` |
| 22 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variant71946a487b59e7e5c793fa1228d92802156dfca6a2ce6f72ce30410f251815a0.lean/declarations/example--8ba9b9184f7f19ef1d75bf0d.md) | 160 | `declaration-track:8ba9b9184f7f19ef1d75bf0dfbe62a84285f8c606510e04c4bbffcf09ae1a58a` |
| 23 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variant71946a487b59e7e5c793fa1228d92802156dfca6a2ce6f72ce30410f251815a0.lean/declarations/example--2d9bc3039ac61537a909a726.md) | 165 | `declaration-track:2d9bc3039ac61537a909a726c5d602a5b62047f1abc73d75bca79f9be87cec5e` |
| 24 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variant71946a487b59e7e5c793fa1228d92802156dfca6a2ce6f72ce30410f251815a0.lean/declarations/example--6d94a92d89b291d2f9b05652.md) | 172 | `declaration-track:6d94a92d89b291d2f9b05652087235d3e3ceaa0e0f3cbcafd0c7ad201b3c5583` |
| 25 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variant71946a487b59e7e5c793fa1228d92802156dfca6a2ce6f72ce30410f251815a0.lean/declarations/example--cc790f1fa36782f26f3770d0.md) | 176 | `declaration-track:cc790f1fa36782f26f3770d00ad9954b575dedb8f5e8464f1c6775b748dc8818` |
| 26 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variant71946a487b59e7e5c793fa1228d92802156dfca6a2ce6f72ce30410f251815a0.lean/declarations/example--b64dc540ccf19e3d05fdf401.md) | 186 | `declaration-track:b64dc540ccf19e3d05fdf401c713c43144ed7be52b8a790de6b98f9e21ef0a4f` |
| 27 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variant71946a487b59e7e5c793fa1228d92802156dfca6a2ce6f72ce30410f251815a0.lean/declarations/example--17f505dcfffca495c5af063c.md) | 190 | `declaration-track:17f505dcfffca495c5af063c8b560d23c67fd9776f1ada9f8d80064499fa0c1e` |
| 28 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variant71946a487b59e7e5c793fa1228d92802156dfca6a2ce6f72ce30410f251815a0.lean/declarations/example--72640a68d441d2ffb8833e33.md) | 195 | `declaration-track:72640a68d441d2ffb8833e337a5027b5e56a98a1aa0683741efc5bec219f4364` |
| 29 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variant71946a487b59e7e5c793fa1228d92802156dfca6a2ce6f72ce30410f251815a0.lean/declarations/example--f5be2dc1fcf574902eda571b.md) | 200 | `declaration-track:f5be2dc1fcf574902eda571bd2a52237f520c0820919baa02d6172a9afe78429` |
| 30 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variant71946a487b59e7e5c793fa1228d92802156dfca6a2ce6f72ce30410f251815a0.lean/declarations/example--1c3793a7c5ca711fb5018e3e.md) | 206 | `declaration-track:1c3793a7c5ca711fb5018e3ecc97127e0c1ef6e7f5ea6be5a29ed2646834687e` |
| 31 | `def` | [assertArrayEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variant71946a487b59e7e5c793fa1228d92802156dfca6a2ce6f72ce30410f251815a0.lean/declarations/assertarrayeq--f7a35b7af83bae6919ddf645.md) | 213 | `declaration-track:f7a35b7af83bae6919ddf64577113f81403ef87f572d61ba3d8046802ed098ba` |
| 32 | `def` | [main](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variant71946a487b59e7e5c793fa1228d92802156dfca6a2ce6f72ce30410f251815a0.lean/declarations/main--585d84da90a62610029ff6e6.md) | 226 | `declaration-track:585d84da90a62610029ff6e6f70e37dfd9dda625c67caa24d4465d3be4913d39` |
| 33 | `def` | [main](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variant71946a487b59e7e5c793fa1228d92802156dfca6a2ce6f72ce30410f251815a0.lean/declarations/main--ffd63ca9ce88e8440c04784f.md) | 251 | `declaration-track:ffd63ca9ce88e8440c04784f0e2cfc05d877e2fcf3593c4a03c1eab57cb25c5c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
