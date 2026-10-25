# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tests.Variantc81c555fb5b5736808d019114d7b3ea4bedef5997ff853a000d155bee82d4d6d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d365ba8818064c6555378d53db9b6f0fbe8a04f6",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variantc81c555fb5b5736808d019114d7b3ea4bedef5997ff853a000d155bee82d4d6d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variantc81c555fb5b5736808d019114d7b3ea4bedef5997ff853a000d155bee82d4d6d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variantc81c555fb5b5736808d019114d7b3ea4bedef5997ff853a000d155bee82d4d6d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d365ba8818064c6555378d53db9b6f0fbe8a04f6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variantc81c555fb5b5736808d019114d7b3ea4bedef5997ff853a000d155bee82d4d6d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variantc81c555fb5b5736808d019114d7b3ea4bedef5997ff853a000d155bee82d4d6d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BinaryMatrix.Quantization` — import line 6; external provider; requires a separately pinned dependency.
- `BinaryMatrix.SATReductionTests` — import line 7; external provider; requires a separately pinned dependency.
- `BinaryMatrix.AvalancheTests` — import line 8; external provider; requires a separately pinned dependency.
- `BinaryMatrix.PermutationNetworkTests` — import line 9; external provider; requires a separately pinned dependency.
- `BinaryMatrix.SymmetryTests` — import line 10; external provider; requires a separately pinned dependency.
- `BinaryMatrix.DynamicalZetaTests` — import line 11; external provider; requires a separately pinned dependency.
- `BinaryMatrix.GaloisFieldTests` — import line 12; external provider; requires a separately pinned dependency.
- `BinaryMatrix.SubmatrixSurgeryTests` — import line 13; external provider; requires a separately pinned dependency.
- `FilesystemCodec.Tests` — import line 14; external provider; requires a separately pinned dependency.
- `FilesystemHomology.Tests` — import line 15; external provider; requires a separately pinned dependency.
- `DAF.Integration.CausalObserverTests` — import line 16; external provider; requires a separately pinned dependency.
- `DAF.Integration.ArchitectureTests` — import line 17; external provider; requires a separately pinned dependency.
- `DAF.Integration.ComparisonTests` — import line 18; external provider; requires a separately pinned dependency.
- `DAF.Integration.DeterminantTests` — import line 19; external provider; requires a separately pinned dependency.
- `DAF.Integration.TilingArithmeticComparison` — import line 20; external provider; requires a separately pinned dependency.
- `DAF.Integration.FabricTests` — import line 21; external provider; requires a separately pinned dependency.
- `DAF.Integration.FabricReactionTests` — import line 22; external provider; requires a separately pinned dependency.
- `DAF.Integration.FabricRuntimeTests` — import line 23; external provider; requires a separately pinned dependency.
- `DAF.Integration.PrismaticFabricTests` — import line 24; external provider; requires a separately pinned dependency.
- `DAF.Integration.GlobalReferenceTests` — import line 25; external provider; requires a separately pinned dependency.
- `DAF.Integration.WindowFusionTests` — import line 26; external provider; requires a separately pinned dependency.
- `DAF.Integration.RasterizationTests` — import line 27; external provider; requires a separately pinned dependency.
- `DAF.Integration.AvalanchePartitionTests` — import line 28; external provider; requires a separately pinned dependency.
- `DAF.Integration.SurgeryCoherenceTests` — import line 29; external provider; requires a separately pinned dependency.
- `DAF.Integration.CurvatureDiffusionTests` — import line 30; external provider; requires a separately pinned dependency.
- `DAF.Integration.WorldModelPrototypeTests` — import line 31; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.DeriveFintype` — import line 32; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [a](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variantc81c555fb5b5736808d019114d7b3ea4bedef5997ff853a000d155bee82d4d6d.lean/declarations/a--012ddc31c57aba75ad0172d7.md) | 53 | `declaration-track:012ddc31c57aba75ad0172d7ec37b24ddf3c1d87b474282a84438faea801ea23` |
| 2 | `def` | [b](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variantc81c555fb5b5736808d019114d7b3ea4bedef5997ff853a000d155bee82d4d6d.lean/declarations/b--d3af4718f98a8602b022dba3.md) | 59 | `declaration-track:d3af4718f98a8602b022dba3f09f4352fb3079a776672f5f7cd3c5e5f619ec87` |
| 3 | `inductive` | [SampleCfg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variantc81c555fb5b5736808d019114d7b3ea4bedef5997ff853a000d155bee82d4d6d.lean/declarations/samplecfg--3613eda5ca5d51474007f411.md) | 67 | `declaration-track:3613eda5ca5d51474007f4117b8ba2714d75d42e7f5700e314b95d10f7b21579` |
| 4 | `def` | [sampleRows](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variantc81c555fb5b5736808d019114d7b3ea4bedef5997ff853a000d155bee82d4d6d.lean/declarations/samplerows--7d98bca966bae069b06c4b24.md) | 74 | `declaration-track:7d98bca966bae069b06c4b241b34e43731a5a99fddf3fae5ad5164c4e9052712` |
| 5 | `def` | [sampleCols](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variantc81c555fb5b5736808d019114d7b3ea4bedef5997ff853a000d155bee82d4d6d.lean/declarations/samplecols--c10c447d4fac774a91a1145c.md) | 76 | `declaration-track:c10c447d4fac774a91a1145ce5da9f10c256ef99276fd6a3b3c73e3f8ada1415` |
| 6 | `def` | [sampleEncode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variantc81c555fb5b5736808d019114d7b3ea4bedef5997ff853a000d155bee82d4d6d.lean/declarations/sampleencode--ccafdabae1a21020e8df6501.md) | 79 | `declaration-track:ccafdabae1a21020e8df650105d12642e69a47996c75eefd22bab60b1c0d3157` |
| 7 | `def` | [sampleQ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variantc81c555fb5b5736808d019114d7b3ea4bedef5997ff853a000d155bee82d4d6d.lean/declarations/sampleq--f77a4f9f9ffa1858ff4abab1.md) | 85 | `declaration-track:f77a4f9f9ffa1858ff4abab1db1fb676c6312c6212bd2147391177fdd4fb7952` |
| 8 | `def` | [sampleEncodeMut](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variantc81c555fb5b5736808d019114d7b3ea4bedef5997ff853a000d155bee82d4d6d.lean/declarations/sampleencodemut--bf5381d3ff7ded0b82af9cf5.md) | 90 | `declaration-track:bf5381d3ff7ded0b82af9cf5449ea01236d9c1111ba0412b1d5cd29722f9fc20` |
| 9 | `def` | [sampleMutQ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variantc81c555fb5b5736808d019114d7b3ea4bedef5997ff853a000d155bee82d4d6d.lean/declarations/samplemutq--c1bbaa4f6da7e20267f19b3d.md) | 96 | `declaration-track:c1bbaa4f6da7e20267f19b3df48438592ece318db90ed4df216e57017b2c8995` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variantc81c555fb5b5736808d019114d7b3ea4bedef5997ff853a000d155bee82d4d6d.lean/declarations/example--a8bc1d4f823099aae8bf7785.md) | 102 | `declaration-track:a8bc1d4f823099aae8bf7785d3c181ee0e1ced70f435a521ef18ea7762385366` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variantc81c555fb5b5736808d019114d7b3ea4bedef5997ff853a000d155bee82d4d6d.lean/declarations/example--51283ab5e1dd27832109d1ab.md) | 107 | `declaration-track:51283ab5e1dd27832109d1abd02340ba72a6326bf66cb5d78c68c7c7aa8e70eb` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variantc81c555fb5b5736808d019114d7b3ea4bedef5997ff853a000d155bee82d4d6d.lean/declarations/example--e4989f15f62174c9af3b7e7f.md) | 112 | `declaration-track:e4989f15f62174c9af3b7e7f04b7e3ce30f3ede413f27fe10fd613fab74a6bf9` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variantc81c555fb5b5736808d019114d7b3ea4bedef5997ff853a000d155bee82d4d6d.lean/declarations/example--1237d5ece5ac7dd2266c7b0b.md) | 117 | `declaration-track:1237d5ece5ac7dd2266c7b0be07e7de70a6bb0732c1fbb9e170d8d0c31db8f83` |
| 14 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variantc81c555fb5b5736808d019114d7b3ea4bedef5997ff853a000d155bee82d4d6d.lean/declarations/example--208ca8ae0e2c5ee298157ffc.md) | 124 | `declaration-track:208ca8ae0e2c5ee298157ffc5754d9c64b10c23c5ebdd6f036a9161da2982a5e` |
| 15 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variantc81c555fb5b5736808d019114d7b3ea4bedef5997ff853a000d155bee82d4d6d.lean/declarations/example--4fdcd728a1e16cfb39da85bc.md) | 128 | `declaration-track:4fdcd728a1e16cfb39da85bc56dc7aab49483802910e21d71266149ca9141419` |
| 16 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variantc81c555fb5b5736808d019114d7b3ea4bedef5997ff853a000d155bee82d4d6d.lean/declarations/example--69322766cbea723c48612851.md) | 132 | `declaration-track:69322766cbea723c486128516be0f27dd966b21d8dc67adfa2db25e366b9d6a6` |
| 17 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variantc81c555fb5b5736808d019114d7b3ea4bedef5997ff853a000d155bee82d4d6d.lean/declarations/example--db80857eda9495425c80dbf9.md) | 138 | `declaration-track:db80857eda9495425c80dbf9ee8ea9428c2c8d1f997c8eb48ba3936acc98d4d3` |
| 18 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variantc81c555fb5b5736808d019114d7b3ea4bedef5997ff853a000d155bee82d4d6d.lean/declarations/example--455f7113208a50d32db261fa.md) | 143 | `declaration-track:455f7113208a50d32db261faf4e072f3ef89cb14f360ed48d9085b8d34426a8b` |
| 19 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variantc81c555fb5b5736808d019114d7b3ea4bedef5997ff853a000d155bee82d4d6d.lean/declarations/example--221ed7cb1c832be2301dc4c5.md) | 148 | `declaration-track:221ed7cb1c832be2301dc4c5b82746c2caf2466b516e164bed9f78b8f44681f7` |
| 20 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variantc81c555fb5b5736808d019114d7b3ea4bedef5997ff853a000d155bee82d4d6d.lean/declarations/example--e66e5320e262f4cbfe9f6207.md) | 153 | `declaration-track:e66e5320e262f4cbfe9f62074647ce120d6ace8fcef409540b3805227db072da` |
| 21 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variantc81c555fb5b5736808d019114d7b3ea4bedef5997ff853a000d155bee82d4d6d.lean/declarations/example--b00fde0230f7a210458e1b82.md) | 158 | `declaration-track:b00fde0230f7a210458e1b8211aba713f291725dfbaf2622b1c30e61d9b9069a` |
| 22 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variantc81c555fb5b5736808d019114d7b3ea4bedef5997ff853a000d155bee82d4d6d.lean/declarations/example--b84c9caea33f8ed80e9cf929.md) | 168 | `declaration-track:b84c9caea33f8ed80e9cf929089298e486d75050ad3cf8505b6b338a69136c67` |
| 23 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variantc81c555fb5b5736808d019114d7b3ea4bedef5997ff853a000d155bee82d4d6d.lean/declarations/example--16c3ab2db39294fae3d7028f.md) | 173 | `declaration-track:16c3ab2db39294fae3d7028f47eb8deb86184af12b911486c8b34a54fd2af2ef` |
| 24 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variantc81c555fb5b5736808d019114d7b3ea4bedef5997ff853a000d155bee82d4d6d.lean/declarations/example--3f7f113d7ac3ab179e8aacb5.md) | 180 | `declaration-track:3f7f113d7ac3ab179e8aacb55e54687753587fd9271d33bc667d828c0995fd03` |
| 25 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variantc81c555fb5b5736808d019114d7b3ea4bedef5997ff853a000d155bee82d4d6d.lean/declarations/example--9228bd10ac16705959af3ce7.md) | 184 | `declaration-track:9228bd10ac16705959af3ce7bcc5572e9f7f04f5a33e4609b085d4fa2d3659d0` |
| 26 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variantc81c555fb5b5736808d019114d7b3ea4bedef5997ff853a000d155bee82d4d6d.lean/declarations/example--feeda5f578d91ca44cbfda5e.md) | 194 | `declaration-track:feeda5f578d91ca44cbfda5e4482ad098012d950c3b764b235998eb01ff53644` |
| 27 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variantc81c555fb5b5736808d019114d7b3ea4bedef5997ff853a000d155bee82d4d6d.lean/declarations/example--8586681de574ab332c3276bc.md) | 198 | `declaration-track:8586681de574ab332c3276bc955d61ab509afd7419d3e6be19d4cc39ba559ea2` |
| 28 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variantc81c555fb5b5736808d019114d7b3ea4bedef5997ff853a000d155bee82d4d6d.lean/declarations/example--a3092750facf59d1d63b1029.md) | 203 | `declaration-track:a3092750facf59d1d63b1029f3f04b299086cd3bc404d21fadb90242b2d1775a` |
| 29 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variantc81c555fb5b5736808d019114d7b3ea4bedef5997ff853a000d155bee82d4d6d.lean/declarations/example--804cfb4f7012f13e6b4154ce.md) | 208 | `declaration-track:804cfb4f7012f13e6b4154ced1fb31a3c463e332bdfc3c79fd4b97d5929cd1b7` |
| 30 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variantc81c555fb5b5736808d019114d7b3ea4bedef5997ff853a000d155bee82d4d6d.lean/declarations/example--fc6a6f30dc2c35b0dad48b26.md) | 214 | `declaration-track:fc6a6f30dc2c35b0dad48b267d82d7c8163f640d0ea9f6452bd72037fc5f8c44` |
| 31 | `def` | [assertArrayEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variantc81c555fb5b5736808d019114d7b3ea4bedef5997ff853a000d155bee82d4d6d.lean/declarations/assertarrayeq--58cfc4928dbd0f54be71b51d.md) | 221 | `declaration-track:58cfc4928dbd0f54be71b51d2eb901145ef0a307441715c0bf6fbce7653963b2` |
| 32 | `def` | [main](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variantc81c555fb5b5736808d019114d7b3ea4bedef5997ff853a000d155bee82d4d6d.lean/declarations/main--0dee78b2667f7a6b7f087610.md) | 234 | `declaration-track:0dee78b2667f7a6b7f087610d0add9a44535493c9d4fda4f8188ab9930217cfd` |
| 33 | `def` | [main](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tests/Variantc81c555fb5b5736808d019114d7b3ea4bedef5997ff853a000d155bee82d4d6d.lean/declarations/main--fadb183c92b2d4213a4b8bc1.md) | 259 | `declaration-track:fadb183c92b2d4213a4b8bc15d2b744958e08571159221019db0164e63ec4e2c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
