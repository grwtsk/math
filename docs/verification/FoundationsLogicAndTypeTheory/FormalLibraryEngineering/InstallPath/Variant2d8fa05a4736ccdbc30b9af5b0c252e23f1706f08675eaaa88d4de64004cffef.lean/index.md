# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InstallPath.Variant2d8fa05a4736ccdbc30b9af5b0c252e23f1706f08675eaaa88d4de64004cffef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "73b0fc56e4fad9ea24520eea0b12685638bc05bf",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variant2d8fa05a4736ccdbc30b9af5b0c252e23f1706f08675eaaa88d4de64004cffef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variant2d8fa05a4736ccdbc30b9af5b0c252e23f1706f08675eaaa88d4de64004cffef.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variant2d8fa05a4736ccdbc30b9af5b0c252e23f1706f08675eaaa88d4de64004cffef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `73b0fc56e4fad9ea24520eea0b12685638bc05bf`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variant2d8fa05a4736ccdbc30b9af5b0c252e23f1706f08675eaaa88d4de64004cffef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variant2d8fa05a4736ccdbc30b9af5b0c252e23f1706f08675eaaa88d4de64004cffef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.UInt.Lemmas` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.String.Modify` — import line 19; external provider; requires a separately pinned dependency.
- `Init.System.Platform` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [envToBool?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variant2d8fa05a4736ccdbc30b9af5b0c252e23f1706f08675eaaa88d4de64004cffef.lean/declarations/envtobool--f8d75aea08297d03e5f21175.md) | 30 | `declaration-track:f8d75aea08297d03e5f21175d0eb1a54fc2f8a26c6c4e28c7f6ae62d6fd9cc9b` |
| 2 | `structure` | [ElanInstall](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variant2d8fa05a4736ccdbc30b9af5b0c252e23f1706f08675eaaa88d4de64004cffef.lean/declarations/elaninstall--b9714e10f068f4960f9ee631.md) | 38 | `declaration-track:b9714e10f068f4960f9ee6314e656553ea10d4a90d60e9fb30d1c96288b9a40c` |
| 3 | `def` | [toolchain2Dir](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variant2d8fa05a4736ccdbc30b9af5b0c252e23f1706f08675eaaa88d4de64004cffef.lean/declarations/toolchain2dir--aedc2bfc15625780c225072b.md) | 46 | `declaration-track:aedc2bfc15625780c225072bbeb372456804761ae62429d6f0c77bed40e455c6` |
| 4 | `def` | [ElanInstall.toolchainDir](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variant2d8fa05a4736ccdbc30b9af5b0c252e23f1706f08675eaaa88d4de64004cffef.lean/declarations/elaninstall-toolchaindir--dbe89f74dc993d5de82a4b63.md) | 62 | `declaration-track:dbe89f74dc993d5de82a4b63a2fe1e16b33458fcdbf0e0320fae8de087b8d971` |
| 5 | `def` | [leanExe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variant2d8fa05a4736ccdbc30b9af5b0c252e23f1706f08675eaaa88d4de64004cffef.lean/declarations/leanexe--2a73863fe33d1c969f903f24.md) | 66 | `declaration-track:2a73863fe33d1c969f903f24e96d4297e0fbfb7fdcc054283c60d0c4b2e685ac` |
| 6 | `def` | [leanirExe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variant2d8fa05a4736ccdbc30b9af5b0c252e23f1706f08675eaaa88d4de64004cffef.lean/declarations/leanirexe--40a0ec4612444c77b2cf30c4.md) | 70 | `declaration-track:40a0ec4612444c77b2cf30c4ee8123400b57ec4cc4d9eacc7b5e0f16f1a554c5` |
| 7 | `def` | [leancExe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variant2d8fa05a4736ccdbc30b9af5b0c252e23f1706f08675eaaa88d4de64004cffef.lean/declarations/leancexe--69f7d00c744afb5ef425e916.md) | 74 | `declaration-track:69f7d00c744afb5ef425e91673860cecb841efedfbebcf411b4ec00c13b405c3` |
| 8 | `def` | [leantarExe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variant2d8fa05a4736ccdbc30b9af5b0c252e23f1706f08675eaaa88d4de64004cffef.lean/declarations/leantarexe--22a7e5fbaa695169deb9104e.md) | 78 | `declaration-track:22a7e5fbaa695169deb9104e132d35a24291fb36193ec138f11a1ff9e3ba1137` |
| 9 | `def` | [leanArExe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variant2d8fa05a4736ccdbc30b9af5b0c252e23f1706f08675eaaa88d4de64004cffef.lean/declarations/leanarexe--ea1767d651a8766d1b8cbb5e.md) | 82 | `declaration-track:ea1767d651a8766d1b8cbb5ea2822891cf36f69c0287b3d9856c7d168d67a036` |
| 10 | `def` | [leanCcExe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variant2d8fa05a4736ccdbc30b9af5b0c252e23f1706f08675eaaa88d4de64004cffef.lean/declarations/leanccexe--6252d9f28b6dc19bdaae25dc.md) | 86 | `declaration-track:6252d9f28b6dc19bdaae25dc7f55aaca1359bb1c2882a810c494835839d65485` |
| 11 | `def` | [leanSharedLibDir](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variant2d8fa05a4736ccdbc30b9af5b0c252e23f1706f08675eaaa88d4de64004cffef.lean/declarations/leansharedlibdir--c800bc5ec79085c605362a18.md) | 90 | `declaration-track:c800bc5ec79085c605362a18e4b465fad0c23aa6106cd22debcf9b5d394cb578` |
| 12 | `def` | [leanSharedDynlibs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variant2d8fa05a4736ccdbc30b9af5b0c252e23f1706f08675eaaa88d4de64004cffef.lean/declarations/leanshareddynlibs--5a9bf0ec58a43eb77942d724.md) | 97 | `declaration-track:5a9bf0ec58a43eb77942d724853158b0615f8d0515b89e1f6f7d0c20e3415b79` |
| 13 | `theorem` | [size_leanSharedDynlibs_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variant2d8fa05a4736ccdbc30b9af5b0c252e23f1706f08675eaaa88d4de64004cffef.lean/declarations/size-leanshareddynlibs-pos--b593d2dabba89787127e2e82.md) | 115 | `result-track:b593d2dabba89787127e2e82f9b5b6f8ec737f599ed6e20b231b756a63e723c3` |
| 14 | `def` | [leanSharedDynlib](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variant2d8fa05a4736ccdbc30b9af5b0c252e23f1706f08675eaaa88d4de64004cffef.lean/declarations/leanshareddynlib--f3a9963263f9d30bbcf1681a.md) | 119 | `declaration-track:f3a9963263f9d30bbcf1681a7a46504ae37849b536d505bf49f912f238daa546` |
| 15 | `def` | [leanSharedLib](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variant2d8fa05a4736ccdbc30b9af5b0c252e23f1706f08675eaaa88d4de64004cffef.lean/declarations/leansharedlib--aaf63df1fb826b86c15d4a12.md) | 123 | `declaration-track:aaf63df1fb826b86c15d4a1285b34e9d3e564170f49b05bf799ed34818dad4db` |
| 16 | `def` | [initSharedLib](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variant2d8fa05a4736ccdbc30b9af5b0c252e23f1706f08675eaaa88d4de64004cffef.lean/declarations/initsharedlib--4cb52dc6e6a1466089dc16a5.md) | 128 | `declaration-track:4cb52dc6e6a1466089dc16a5f6340e2d93724f1ac75f1387cb6e917dbe050fca` |
| 17 | `structure` | [LeanInstall](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variant2d8fa05a4736ccdbc30b9af5b0c252e23f1706f08675eaaa88d4de64004cffef.lean/declarations/leaninstall--a317f69d097de5a279f8960d.md) | 132 | `declaration-track:a317f69d097de5a279f8960de400d0254c92018a5babacd47f6a46debebc6a32` |
| 18 | `def` | [LeanInstall.sharedLib](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variant2d8fa05a4736ccdbc30b9af5b0c252e23f1706f08675eaaa88d4de64004cffef.lean/declarations/leaninstall-sharedlib--3debc231b658425be65d0959.md) | 157 | `declaration-track:3debc231b658425be65d0959b1b6dcea6eb7620a9716d7c952cd407720212449` |
| 19 | `def` | [LeanInstall.initSharedLib](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variant2d8fa05a4736ccdbc30b9af5b0c252e23f1706f08675eaaa88d4de64004cffef.lean/declarations/leaninstall-initsharedlib--b737e92dea7b98fd3401fc0f.md) | 161 | `declaration-track:b737e92dea7b98fd3401fc0fcea7e0b98aabb3a9ffa6d31aaf48b678a5f47d62` |
| 20 | `def` | [LeanInstall.sharedLibPath](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variant2d8fa05a4736ccdbc30b9af5b0c252e23f1706f08675eaaa88d4de64004cffef.lean/declarations/leaninstall-sharedlibpath--229ed169d013e4e5439d0615.md) | 168 | `declaration-track:229ed169d013e4e5439d0615e6f11eb47e56aa4cd3eb1d3a2b8d470cf2875a8f` |
| 21 | `def` | [LeanInstall.leanCc?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variant2d8fa05a4736ccdbc30b9af5b0c252e23f1706f08675eaaa88d4de64004cffef.lean/declarations/leaninstall-leancc--77ea9aa70828a550421d2dcd.md) | 175 | `declaration-track:77ea9aa70828a550421d2dcd0ee98a77f18453793badac21b2e5b9e6afeac9c6` |
| 22 | `def` | [LeanInstall.ccLinkFlags](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variant2d8fa05a4736ccdbc30b9af5b0c252e23f1706f08675eaaa88d4de64004cffef.lean/declarations/leaninstall-cclinkflags--956af7d9af7430631844ba3c.md) | 179 | `declaration-track:956af7d9af7430631844ba3cd90276f4d9c6163b7a4a0bac8f0b8e988f29bc81` |
| 23 | `def` | [lakeExe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variant2d8fa05a4736ccdbc30b9af5b0c252e23f1706f08675eaaa88d4de64004cffef.lean/declarations/lakeexe--d8072e33bc6ab907647ac690.md) | 183 | `declaration-track:d8072e33bc6ab907647ac690d843e1dfd0f4b4e5e957304f7b8051be6d2925ac` |
| 24 | `structure` | [LakeInstall](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variant2d8fa05a4736ccdbc30b9af5b0c252e23f1706f08675eaaa88d4de64004cffef.lean/declarations/lakeinstall--2548e0f08361cb36065cde3d.md) | 187 | `declaration-track:2548e0f08361cb36065cde3dc257a8171c55aa6fd7ef90f94c25fa4f2ccca502` |
| 25 | `def` | [LakeInstall.sharedLib](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variant2d8fa05a4736ccdbc30b9af5b0c252e23f1706f08675eaaa88d4de64004cffef.lean/declarations/lakeinstall-sharedlib--00abe0d4005da74fd02ff6aa.md) | 199 | `declaration-track:00abe0d4005da74fd02ff6aa92a03a4eebe1df2b685bf906db935a92b08b9b63` |
| 26 | `def` | [LakeInstall.ofLean](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variant2d8fa05a4736ccdbc30b9af5b0c252e23f1706f08675eaaa88d4de64004cffef.lean/declarations/lakeinstall-oflean--fd7f58aed1141c75f5b4090f.md) | 203 | `declaration-track:fd7f58aed1141c75f5b4090fba21d2812405a3f5a678d1582dc72c2d7a990bcb` |
| 27 | `def` | [findElanInstall?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variant2d8fa05a4736ccdbc30b9af5b0c252e23f1706f08675eaaa88d4de64004cffef.lean/declarations/findelaninstall--9234705cb387a1bbb5e4154b.md) | 225 | `declaration-track:9234705cb387a1bbb5e4154bb1464ae69dad78bb2b6c23e252409fc70b2731ab` |
| 28 | `def` | [findLeanSysroot?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variant2d8fa05a4736ccdbc30b9af5b0c252e23f1706f08675eaaa88d4de64004cffef.lean/declarations/findleansysroot--bb320c6897df7728a8461cde.md) | 239 | `declaration-track:bb320c6897df7728a8461cde8848efc26d933f69f937f7f8c01350291b739ecf` |
| 29 | `def` | [LeanInstall.get](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variant2d8fa05a4736ccdbc30b9af5b0c252e23f1706f08675eaaa88d4de64004cffef.lean/declarations/leaninstall-get--182badc4168ead06b19fe33a.md) | 280 | `declaration-track:182badc4168ead06b19fe33a595c6b3121d361f71b5d825ae2effc2807ba1c6b` |
| 30 | `def` | [findLeanCmdInstall?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variant2d8fa05a4736ccdbc30b9af5b0c252e23f1706f08675eaaa88d4de64004cffef.lean/declarations/findleancmdinstall--6e64bfc4530ca0bdb3b3b937.md) | 335 | `declaration-track:6e64bfc4530ca0bdb3b3b937bd1a441f0877d85842d245d03e610580e1dcf62e` |
| 31 | `def` | [findLakeLeanJointHome?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variant2d8fa05a4736ccdbc30b9af5b0c252e23f1706f08675eaaa88d4de64004cffef.lean/declarations/findlakeleanjointhome--a1c90f40732939ac05adf662.md) | 342 | `declaration-track:a1c90f40732939ac05adf662d0c2a14583e5cea898338cd9d97c1f1772528ce4` |
| 32 | `def` | [lakeBuildHome?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variant2d8fa05a4736ccdbc30b9af5b0c252e23f1706f08675eaaa88d4de64004cffef.lean/declarations/lakebuildhome--791e83a02ba8a94e2cd66658.md) | 354 | `declaration-track:791e83a02ba8a94e2cd66658e4159d7fb7a4989dc477a4b8cc5d213ad507bc92` |
| 33 | `def` | [getLakeInstall?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variant2d8fa05a4736ccdbc30b9af5b0c252e23f1706f08675eaaa88d4de64004cffef.lean/declarations/getlakeinstall--d69f42abf2fa48be98735612.md) | 361 | `declaration-track:d69f42abf2fa48be987356126d7aea5e6b6cdf76dea1a18e5a9e8ec1907895e9` |
| 34 | `def` | [findLeanInstall?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variant2d8fa05a4736ccdbc30b9af5b0c252e23f1706f08675eaaa88d4de64004cffef.lean/declarations/findleaninstall--ba8b886af7e6359305daf555.md) | 379 | `declaration-track:ba8b886af7e6359305daf555bb9818fe0f026b32d2e6238a77d74d5bb675e3c9` |
| 35 | `def` | [findLakeInstall?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variant2d8fa05a4736ccdbc30b9af5b0c252e23f1706f08675eaaa88d4de64004cffef.lean/declarations/findlakeinstall--dff07607b5fa9b46a29679ed.md) | 403 | `declaration-track:dff07607b5fa9b46a29679ed9e3e09733b4ce7099469c9f7d9632bfb66634de7` |
| 36 | `def` | [findInstall?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variant2d8fa05a4736ccdbc30b9af5b0c252e23f1706f08675eaaa88d4de64004cffef.lean/declarations/findinstall--1397e87c74b34b7f4184467a.md) | 427 | `declaration-track:1397e87c74b34b7f4184467aecdc9587612031c4fa4c7edd8d4ed2af51d8d560` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
