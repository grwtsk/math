# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Package.Variant350d7a15f5d88ab0edd76039d7c0f347b8824b63ea4c3f4edf26e6c988c7351d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2caa3cef1558ea0017f409a3ac168c469e287f71",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variant350d7a15f5d88ab0edd76039d7c0f347b8824b63ea4c3f4edf26e6c988c7351d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variant350d7a15f5d88ab0edd76039d7c0f347b8824b63ea4c3f4edf26e6c988c7351d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variant350d7a15f5d88ab0edd76039d7c0f347b8824b63ea4c3f4edf26e6c988c7351d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2caa3cef1558ea0017f409a3ac168c469e287f71`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variant350d7a15f5d88ab0edd76039d7c0f347b8824b63ea4c3f4edf26e6c988c7351d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variant350d7a15f5d88ab0edd76039d7c0f347b8824b63ea4c3f4edf26e6c988c7351d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lake.Util.Git` — import line 12; external provider; requires a separately pinned dependency.
- `Lake.Util.Url` — import line 13; external provider; requires a separately pinned dependency.
- `Lake.Build.Common` — import line 14; external provider; requires a separately pinned dependency.
- `Lake.Build.Targets` — import line 15; external provider; requires a separately pinned dependency.
- `Lake.Build.Job.Register` — import line 16; external provider; requires a separately pinned dependency.
- `Lake.Reservoir` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Package.recFetchDeps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variant350d7a15f5d88ab0edd76039d7c0f347b8824b63ea4c3f4edf26e6c988c7351d.lean/declarations/package-recfetchdeps--84aeb54cf735aeb26fc795ce.md) | 28 | `declaration-track:84aeb54cf735aeb26fc795ce1b01a63ab951fd9bfa166ab3702b63fc83b313b9` |
| 2 | `def` | [Package.depsFacetConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variant350d7a15f5d88ab0edd76039d7c0f347b8824b63ea4c3f4edf26e6c988c7351d.lean/declarations/package-depsfacetconfig--a3083de9097f02f41514cff2.md) | 32 | `declaration-track:a3083de9097f02f41514cff2bc3f2ae72ebc8c7c1b12baae94bd2785a7e7828d` |
| 3 | `def` | [Package.recComputeTransDeps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variant350d7a15f5d88ab0edd76039d7c0f347b8824b63ea4c3f4edf26e6c988c7351d.lean/declarations/package-reccomputetransdeps--320483b6a044003dbc9226ad.md) | 36 | `declaration-track:320483b6a044003dbc9226adb3880d2e7110b80cec04e6f8aab2a3813c140d05` |
| 4 | `def` | [Package.transDepsFacetConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variant350d7a15f5d88ab0edd76039d7c0f347b8824b63ea4c3f4edf26e6c988c7351d.lean/declarations/package-transdepsfacetconfig--307191345600394804a85f82.md) | 42 | `declaration-track:307191345600394804a85f82656cb92bb0af71d764bb8760d55cbed71f25759a` |
| 5 | `def` | [Package.fetchOptBuildCacheCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variant350d7a15f5d88ab0edd76039d7c0f347b8824b63ea4c3f4edf26e6c988c7351d.lean/declarations/package-fetchoptbuildcachecore--7316092da789b11c382dd6bf.md) | 49 | `declaration-track:7316092da789b11c382dd6bf784608e9e67b28387b33069fab26cb78bd1b62b4` |
| 6 | `def` | [Package.optBuildCacheFacetConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variant350d7a15f5d88ab0edd76039d7c0f347b8824b63ea4c3f4edf26e6c988c7351d.lean/declarations/package-optbuildcachefacetconfig--d3aab6c16a0caa1bcb0d865e.md) | 56 | `declaration-track:d3aab6c16a0caa1bcb0d865e6c67e453e51197743f142d3cd2d13cfbf0482f28` |
| 7 | `def` | [Package.maybeFetchBuildCache](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variant350d7a15f5d88ab0edd76039d7c0f347b8824b63ea4c3f4edf26e6c988c7351d.lean/declarations/package-maybefetchbuildcache--de7e26c9bc2cfad9fad4d43e.md) | 60 | `declaration-track:de7e26c9bc2cfad9fad4d43eaf0be77e24db78766bcc864fb4b157312523ff43` |
| 8 | `def` | [Package.optFacetDetails](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variant350d7a15f5d88ab0edd76039d7c0f347b8824b63ea4c3f4edf26e6c988c7351d.lean/declarations/package-optfacetdetails--35094e15ed782ec89bef97e6.md) | 73 | `declaration-track:35094e15ed782ec89bef97e6a5ff9bb3b6f1dd44ef466664e72b6e890da87bc9` |
| 9 | `def` | [Package.maybeFetchBuildCacheWithWarning](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variant350d7a15f5d88ab0edd76039d7c0f347b8824b63ea4c3f4edf26e6c988c7351d.lean/declarations/package-maybefetchbuildcachewithwarning--8cfee09641b57be20047d90a.md) | 83 | `declaration-track:8cfee09641b57be20047d90a9f842db7dd488f01113a40a9c3d0e70386be1544` |
| 10 | `def` | [Package.recBuildExtraDepTargets](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variant350d7a15f5d88ab0edd76039d7c0f347b8824b63ea4c3f4edf26e6c988c7351d.lean/declarations/package-recbuildextradeptargets--d9b508195fc59e0821e9921d.md) | 98 | `declaration-track:d9b508195fc59e0821e9921d7ecb85faa8a3010f862115309d2910b43d010efc` |
| 11 | `def` | [Package.extraDepFacetConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variant350d7a15f5d88ab0edd76039d7c0f347b8824b63ea4c3f4edf26e6c988c7351d.lean/declarations/package-extradepfacetconfig--303615a4f7b9e6beb65fb5d1.md) | 110 | `declaration-track:303615a4f7b9e6beb65fb5d129c9a407f6087d3ddd4c8cfffb7b6dae16a369d0` |
| 12 | `def` | [Package.getBarrelUrl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variant350d7a15f5d88ab0edd76039d7c0f347b8824b63ea4c3f4edf26e6c988c7351d.lean/declarations/package-getbarrelurl--ee2fe96531246496050020e4.md) | 114 | `declaration-track:ee2fe96531246496050020e4fb98a0f1eb6a77677ea4269fa3e3ff261e802ccd` |
| 13 | `def` | [Package.getReleaseUrl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variant350d7a15f5d88ab0edd76039d7c0f347b8824b63ea4c3f4edf26e6c988c7351d.lean/declarations/package-getreleaseurl--56810856c81896b8bb337644.md) | 128 | `declaration-track:56810856c81896b8bb337644b427fe6f4dd32f3ca3ad8baa3fd19ab572ad3788` |
| 14 | `def` | [Package.fetchBuildArchive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variant350d7a15f5d88ab0edd76039d7c0f347b8824b63ea4c3f4edf26e6c988c7351d.lean/declarations/package-fetchbuildarchive--6c9c9033ac7c218dfd0170df.md) | 140 | `declaration-track:6c9c9033ac7c218dfd0170dfc28d27b5f318d20adc91cb7292cbdc686cc8d0b0` |
| 15 | `def` | [Package.mkOptBuildArchiveFacetConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variant350d7a15f5d88ab0edd76039d7c0f347b8824b63ea4c3f4edf26e6c988c7351d.lean/declarations/package-mkoptbuildarchivefacetconfig--620126ea304ba1f8779e8745.md) | 153 | `declaration-track:620126ea304ba1f8779e87455faf1b333ca9108d05666043fcaedfc8340becd9` |
| 16 | `def` | [Package.mkBuildArchiveFacetConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variant350d7a15f5d88ab0edd76039d7c0f347b8824b63ea4c3f4edf26e6c988c7351d.lean/declarations/package-mkbuildarchivefacetconfig--00d34aac9bb9c5c966518f92.md) | 168 | `declaration-track:00d34aac9bb9c5c966518f92b9024df242b155b2da3e543da61bd2ee0491b105` |
| 17 | `def` | [Package.buildCacheFacetConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variant350d7a15f5d88ab0edd76039d7c0f347b8824b63ea4c3f4edf26e6c988c7351d.lean/declarations/package-buildcachefacetconfig--134713b0d5a752d0fa318b21.md) | 180 | `declaration-track:134713b0d5a752d0fa318b2139d7c13fd3fe4607e0bf26e1d862085b5d6cdcf8` |
| 18 | `def` | [Package.optBarrelFacetConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variant350d7a15f5d88ab0edd76039d7c0f347b8824b63ea4c3f4edf26e6c988c7351d.lean/declarations/package-optbarrelfacetconfig--c6ede1d4fe91e419a031874c.md) | 184 | `declaration-track:c6ede1d4fe91e419a031874c6aca99b887383c7f6db04bbca23de7ca195adfd0` |
| 19 | `def` | [Package.barrelFacetConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variant350d7a15f5d88ab0edd76039d7c0f347b8824b63ea4c3f4edf26e6c988c7351d.lean/declarations/package-barrelfacetconfig--98ad646e64a32aeec0aa4ff4.md) | 188 | `declaration-track:98ad646e64a32aeec0aa4ff47ecaa93bc509ab6f6615187796f2ee530ed8f2f1` |
| 20 | `def` | [Package.optGitHubReleaseFacetConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variant350d7a15f5d88ab0edd76039d7c0f347b8824b63ea4c3f4edf26e6c988c7351d.lean/declarations/package-optgithubreleasefacetconfig--c973c4a23b48d37edd3567bb.md) | 192 | `declaration-track:c973c4a23b48d37edd3567bb3fd8f856922f2107f557bc2409871fb77a03fdab` |
| 21 | `def` | [Package.gitHubReleaseFacetConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variant350d7a15f5d88ab0edd76039d7c0f347b8824b63ea4c3f4edf26e6c988c7351d.lean/declarations/package-githubreleasefacetconfig--cfa80efa1283500d245a8d9d.md) | 196 | `declaration-track:cfa80efa1283500d245a8d9d80d6bf0fc607757e847667cebd174f2adf70ce26` |
| 22 | `def` | [Package.afterBuildCacheAsync](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variant350d7a15f5d88ab0edd76039d7c0f347b8824b63ea4c3f4edf26e6c988c7351d.lean/declarations/package-afterbuildcacheasync--6e1fb9518f7d902655fbfd8b.md) | 203 | `declaration-track:6e1fb9518f7d902655fbfd8b98ea3432b7c6db4d1cc762749eca4f265582e732` |
| 23 | `def` | [Package.afterBuildCacheSync](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variant350d7a15f5d88ab0edd76039d7c0f347b8824b63ea4c3f4edf26e6c988c7351d.lean/declarations/package-afterbuildcachesync--5d950c15212d01e28efa7a40.md) | 215 | `declaration-track:5d950c15212d01e28efa7a4090a23737c90a649e121b10148526618003e8f8eb` |
| 24 | `def` | [Package.initFacetConfigs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variant350d7a15f5d88ab0edd76039d7c0f347b8824b63ea4c3f4edf26e6c988c7351d.lean/declarations/package-initfacetconfigs--b141f8cc09fc095038f0f08f.md) | 227 | `declaration-track:b141f8cc09fc095038f0f08f84c9be78e8e216bd866e510fa0b58f5e4e7fb03c` |
| 25 | `abbrev` | [initPackageFacetConfigs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variant350d7a15f5d88ab0edd76039d7c0f347b8824b63ea4c3f4edf26e6c988c7351d.lean/declarations/initpackagefacetconfigs--da02efe5daf7de7433f07c64.md) | 240 | `declaration-track:da02efe5daf7de7433f07c64967126276c5bd891732b5d4416a23e03b3da4385` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
