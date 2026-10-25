# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InstallPath.Variantfc5bc3094122fb0384c01cb4d70bf0bd0e84744ec340affadf04b09c88088277

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c7edde02ea196e47aae32845c1ff9985008a2da",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variantfc5bc3094122fb0384c01cb4d70bf0bd0e84744ec340affadf04b09c88088277.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variantfc5bc3094122fb0384c01cb4d70bf0bd0e84744ec340affadf04b09c88088277.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variantfc5bc3094122fb0384c01cb4d70bf0bd0e84744ec340affadf04b09c88088277.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c7edde02ea196e47aae32845c1ff9985008a2da`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variantfc5bc3094122fb0384c01cb4d70bf0bd0e84744ec340affadf04b09c88088277.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variantfc5bc3094122fb0384c01cb4d70bf0bd0e84744ec340affadf04b09c88088277.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.UInt.Lemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.String.Modify` — import line 14; external provider; requires a separately pinned dependency.
- `Init.System.Platform` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [envToBool?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variantfc5bc3094122fb0384c01cb4d70bf0bd0e84744ec340affadf04b09c88088277.lean/declarations/envtobool--5186e6b9e48b6c12afb7443b.md) | 22 | `declaration-track:5186e6b9e48b6c12afb7443bee388465480422a31c008ea6ec5ebbf857e39a88` |
| 2 | `structure` | [ElanInstall](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variantfc5bc3094122fb0384c01cb4d70bf0bd0e84744ec340affadf04b09c88088277.lean/declarations/elaninstall--752479b91d3e2f05216bed48.md) | 30 | `declaration-track:752479b91d3e2f05216bed48d16712554e2ce9ddc1811300ba437100c6452244` |
| 3 | `def` | [toolchain2Dir](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variantfc5bc3094122fb0384c01cb4d70bf0bd0e84744ec340affadf04b09c88088277.lean/declarations/toolchain2dir--2d692fe0a13ea26d628a554a.md) | 38 | `declaration-track:2d692fe0a13ea26d628a554ac3250df1c50ed4f9a7674b66732fb99eeb8b110d` |
| 4 | `def` | [ElanInstall.toolchainDir](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variantfc5bc3094122fb0384c01cb4d70bf0bd0e84744ec340affadf04b09c88088277.lean/declarations/elaninstall-toolchaindir--cadd5278b8072852fd2d71c3.md) | 54 | `declaration-track:cadd5278b8072852fd2d71c394d8b04600735ef2b1575602da0db0a17460ed2c` |
| 5 | `def` | [leanExe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variantfc5bc3094122fb0384c01cb4d70bf0bd0e84744ec340affadf04b09c88088277.lean/declarations/leanexe--715434a32e615cb03c6e9aa8.md) | 58 | `declaration-track:715434a32e615cb03c6e9aa89f816a92aff4373160d628bfa5a1da314ae185ea` |
| 6 | `def` | [leanirExe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variantfc5bc3094122fb0384c01cb4d70bf0bd0e84744ec340affadf04b09c88088277.lean/declarations/leanirexe--81ce777f1582b6f5a5d834de.md) | 62 | `declaration-track:81ce777f1582b6f5a5d834de2c5a621dbc5c34dbd1c75a77fa2033f4325283a3` |
| 7 | `def` | [leancExe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variantfc5bc3094122fb0384c01cb4d70bf0bd0e84744ec340affadf04b09c88088277.lean/declarations/leancexe--e443736ac03f4699959bb780.md) | 66 | `declaration-track:e443736ac03f4699959bb780bddbb90f5e30414bf41643b26a54c315b9032282` |
| 8 | `def` | [leantarExe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variantfc5bc3094122fb0384c01cb4d70bf0bd0e84744ec340affadf04b09c88088277.lean/declarations/leantarexe--b1f3f50e56926e5e779755f8.md) | 70 | `declaration-track:b1f3f50e56926e5e779755f8c5342b11c87619b9d0aa6085d7f8f00ba30aa94e` |
| 9 | `def` | [leanArExe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variantfc5bc3094122fb0384c01cb4d70bf0bd0e84744ec340affadf04b09c88088277.lean/declarations/leanarexe--9dad2494734a0baaabd050cf.md) | 74 | `declaration-track:9dad2494734a0baaabd050cfb6d40ec3f57f2348ddb8ec7f50a2dbbf7615ef2d` |
| 10 | `def` | [leanCcExe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variantfc5bc3094122fb0384c01cb4d70bf0bd0e84744ec340affadf04b09c88088277.lean/declarations/leanccexe--98ea58e9c41c1bd991746ef4.md) | 78 | `declaration-track:98ea58e9c41c1bd991746ef4bab4e9daf2a7d18394ba4a33b867bd1864cdebde` |
| 11 | `def` | [leanSharedLibDir](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variantfc5bc3094122fb0384c01cb4d70bf0bd0e84744ec340affadf04b09c88088277.lean/declarations/leansharedlibdir--9e275233ca06a12d06346cdc.md) | 82 | `declaration-track:9e275233ca06a12d06346cdc3dbac06d21eb8c07e1b01631340d32adfbc2bef8` |
| 12 | `def` | [leanSharedDynlibs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variantfc5bc3094122fb0384c01cb4d70bf0bd0e84744ec340affadf04b09c88088277.lean/declarations/leanshareddynlibs--4ee180e7b86bb990c57ef1e6.md) | 89 | `declaration-track:4ee180e7b86bb990c57ef1e67605527443e15ef39a42ac7b49a5e9d581557a6a` |
| 13 | `theorem` | [size_leanSharedDynlibs_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variantfc5bc3094122fb0384c01cb4d70bf0bd0e84744ec340affadf04b09c88088277.lean/declarations/size-leanshareddynlibs-pos--4ffb728e1c0c32531dc6b3a6.md) | 107 | `result-track:4ffb728e1c0c32531dc6b3a62f876ab01b9f4732ecdbc737677b0e40f90b9816` |
| 14 | `def` | [leanSharedDynlib](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variantfc5bc3094122fb0384c01cb4d70bf0bd0e84744ec340affadf04b09c88088277.lean/declarations/leanshareddynlib--409c2c15c7368296e8b21e4d.md) | 111 | `declaration-track:409c2c15c7368296e8b21e4d8f9ee61be86ade51a5659af9a9e29ecc36da63e5` |
| 15 | `def` | [leanSharedLib](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variantfc5bc3094122fb0384c01cb4d70bf0bd0e84744ec340affadf04b09c88088277.lean/declarations/leansharedlib--ad75df8499262cac9fd0eba0.md) | 115 | `declaration-track:ad75df8499262cac9fd0eba0c4b9da8e3e80e32eb75d2f2af1bce269c300d5b0` |
| 16 | `def` | [initSharedLib](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variantfc5bc3094122fb0384c01cb4d70bf0bd0e84744ec340affadf04b09c88088277.lean/declarations/initsharedlib--b3749935bcff2b0b353555fe.md) | 120 | `declaration-track:b3749935bcff2b0b353555fef7e94cc5cae63833e841ec0a5ab1464d5c7322f1` |
| 17 | `structure` | [LeanInstall](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variantfc5bc3094122fb0384c01cb4d70bf0bd0e84744ec340affadf04b09c88088277.lean/declarations/leaninstall--128562a0655ae9c4c6eb8a4f.md) | 124 | `declaration-track:128562a0655ae9c4c6eb8a4f6ba3fa017d95845b1a5271f3cb37fc7771f69acd` |
| 18 | `def` | [LeanInstall.sharedLib](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variantfc5bc3094122fb0384c01cb4d70bf0bd0e84744ec340affadf04b09c88088277.lean/declarations/leaninstall-sharedlib--8ffff65bce335e4c9dd64a52.md) | 149 | `declaration-track:8ffff65bce335e4c9dd64a5219e6fce562f3943057c99891cc561bc151c872d1` |
| 19 | `def` | [LeanInstall.initSharedLib](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variantfc5bc3094122fb0384c01cb4d70bf0bd0e84744ec340affadf04b09c88088277.lean/declarations/leaninstall-initsharedlib--fe7743ce50b7bcb27a43f60c.md) | 153 | `declaration-track:fe7743ce50b7bcb27a43f60ce10f3dfd94bbcb88a37dbad8cafccc023694c9f9` |
| 20 | `def` | [LeanInstall.sharedLibPath](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variantfc5bc3094122fb0384c01cb4d70bf0bd0e84744ec340affadf04b09c88088277.lean/declarations/leaninstall-sharedlibpath--f39d0905c0e05a7ed7f07d27.md) | 160 | `declaration-track:f39d0905c0e05a7ed7f07d274665abfb2f94bbbb6a92dc869717eda7dccecbac` |
| 21 | `def` | [LeanInstall.leanCc?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variantfc5bc3094122fb0384c01cb4d70bf0bd0e84744ec340affadf04b09c88088277.lean/declarations/leaninstall-leancc--1d8400011f53debc0669e267.md) | 167 | `declaration-track:1d8400011f53debc0669e267f6c468399de610f0217e3ea3fa26e860ced14829` |
| 22 | `def` | [LeanInstall.ccLinkFlags](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variantfc5bc3094122fb0384c01cb4d70bf0bd0e84744ec340affadf04b09c88088277.lean/declarations/leaninstall-cclinkflags--5e28d74c8c44585d9e9ca072.md) | 171 | `declaration-track:5e28d74c8c44585d9e9ca072e770b846b9eeaeb8d6cf24298741de5e1c40597f` |
| 23 | `def` | [lakeExe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variantfc5bc3094122fb0384c01cb4d70bf0bd0e84744ec340affadf04b09c88088277.lean/declarations/lakeexe--bf01f86ba873f81fa9441017.md) | 175 | `declaration-track:bf01f86ba873f81fa94410170bab130352d3f10698bde206714df76a05418c78` |
| 24 | `structure` | [LakeInstall](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variantfc5bc3094122fb0384c01cb4d70bf0bd0e84744ec340affadf04b09c88088277.lean/declarations/lakeinstall--bf0747cc0c793018e5781ff4.md) | 179 | `declaration-track:bf0747cc0c793018e5781ff4809bf243ec8d38b4e61bad7b6698545f440c2ca4` |
| 25 | `def` | [LakeInstall.sharedLib](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variantfc5bc3094122fb0384c01cb4d70bf0bd0e84744ec340affadf04b09c88088277.lean/declarations/lakeinstall-sharedlib--f6743db41c494790f79e9fd0.md) | 191 | `declaration-track:f6743db41c494790f79e9fd0d8628a4157f28231588f6efa8d54c3f01d7ff3c9` |
| 26 | `def` | [LakeInstall.ofLean](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variantfc5bc3094122fb0384c01cb4d70bf0bd0e84744ec340affadf04b09c88088277.lean/declarations/lakeinstall-oflean--98da6893f11204273e255b52.md) | 195 | `declaration-track:98da6893f11204273e255b523b70c388af842a973c9b1787534c7420e741a28b` |
| 27 | `def` | [findElanInstall?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variantfc5bc3094122fb0384c01cb4d70bf0bd0e84744ec340affadf04b09c88088277.lean/declarations/findelaninstall--a699b5f4ce979f0f7e531467.md) | 217 | `declaration-track:a699b5f4ce979f0f7e531467e747d987cded12c2122dae1856d20343c59b53de` |
| 28 | `def` | [findLeanSysroot?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variantfc5bc3094122fb0384c01cb4d70bf0bd0e84744ec340affadf04b09c88088277.lean/declarations/findleansysroot--5a6a470bb446923224a32a73.md) | 231 | `declaration-track:5a6a470bb446923224a32a73ca797bad0ea7ca699cd43c5aef3343a0db5cf5a5` |
| 29 | `def` | [LeanInstall.get](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variantfc5bc3094122fb0384c01cb4d70bf0bd0e84744ec340affadf04b09c88088277.lean/declarations/leaninstall-get--ba57725baecbb26e87a78c55.md) | 272 | `declaration-track:ba57725baecbb26e87a78c55aa8f59c74018bfd509bca6504d14c370899903f8` |
| 30 | `def` | [findLeanCmdInstall?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variantfc5bc3094122fb0384c01cb4d70bf0bd0e84744ec340affadf04b09c88088277.lean/declarations/findleancmdinstall--0c07013cc33ada5755890dec.md) | 327 | `declaration-track:0c07013cc33ada5755890dec6ace32427ee0fd9268c8d934760790b54a3e6121` |
| 31 | `def` | [findLakeLeanJointHome?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variantfc5bc3094122fb0384c01cb4d70bf0bd0e84744ec340affadf04b09c88088277.lean/declarations/findlakeleanjointhome--903b3a497b66f3cb378d0cdc.md) | 334 | `declaration-track:903b3a497b66f3cb378d0cdc8cb24b0c09e4c3acd05a49f69dcb137c8cee93ac` |
| 32 | `def` | [lakeBuildHome?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variantfc5bc3094122fb0384c01cb4d70bf0bd0e84744ec340affadf04b09c88088277.lean/declarations/lakebuildhome--9c3ed21997850beb98457133.md) | 346 | `declaration-track:9c3ed21997850beb9845713390a3f88ac2b327c3847eaae2491e4aa2097e915a` |
| 33 | `def` | [getLakeInstall?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variantfc5bc3094122fb0384c01cb4d70bf0bd0e84744ec340affadf04b09c88088277.lean/declarations/getlakeinstall--8c3b1ddf340142355b92d86b.md) | 353 | `declaration-track:8c3b1ddf340142355b92d86b6cd0de25932a501ae5e5171e5de3ae80c069ff27` |
| 34 | `def` | [findLeanInstall?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variantfc5bc3094122fb0384c01cb4d70bf0bd0e84744ec340affadf04b09c88088277.lean/declarations/findleaninstall--5f8bf38ae662f544a177ebe9.md) | 371 | `declaration-track:5f8bf38ae662f544a177ebe9b5402e8f66e842e04bc2b821d694b619941a2950` |
| 35 | `def` | [findLakeInstall?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variantfc5bc3094122fb0384c01cb4d70bf0bd0e84744ec340affadf04b09c88088277.lean/declarations/findlakeinstall--71df6e380d1bd15b381039c3.md) | 395 | `declaration-track:71df6e380d1bd15b381039c3f9444f2cb3bdf78b243c5c4370aa6afcf116f51f` |
| 36 | `def` | [findInstall?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variantfc5bc3094122fb0384c01cb4d70bf0bd0e84744ec340affadf04b09c88088277.lean/declarations/findinstall--529f4e77304a87e915a0c29e.md) | 419 | `declaration-track:529f4e77304a87e915a0c29e05b2f0e7e48dbb0fa958ded8a95b4f1032663895` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
