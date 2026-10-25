# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Package.Variantf34ebdb9816ac020b935c533de04c2ce699cbf65a7b8609da4d67273ccbe1955

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40bfa430f05ec7471601f47cc8f4070251d06c6e",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantf34ebdb9816ac020b935c533de04c2ce699cbf65a7b8609da4d67273ccbe1955.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantf34ebdb9816ac020b935c533de04c2ce699cbf65a7b8609da4d67273ccbe1955.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantf34ebdb9816ac020b935c533de04c2ce699cbf65a7b8609da4d67273ccbe1955.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40bfa430f05ec7471601f47cc8f4070251d06c6e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantf34ebdb9816ac020b935c533de04c2ce699cbf65a7b8609da4d67273ccbe1955.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantf34ebdb9816ac020b935c533de04c2ce699cbf65a7b8609da4d67273ccbe1955.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lake.Util.Git` — import line 17; external provider; requires a separately pinned dependency.
- `Lake.Util.Url` — import line 18; external provider; requires a separately pinned dependency.
- `Lake.Build.Common` — import line 19; external provider; requires a separately pinned dependency.
- `Lake.Build.Targets` — import line 20; external provider; requires a separately pinned dependency.
- `Lake.Build.Job.Register` — import line 21; external provider; requires a separately pinned dependency.
- `Lake.Reservoir` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Package.recFetchDeps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantf34ebdb9816ac020b935c533de04c2ce699cbf65a7b8609da4d67273ccbe1955.lean/declarations/package-recfetchdeps--b971c50e65679de556bcea7f.md) | 36 | `declaration-track:b971c50e65679de556bcea7f3638b8e1ef13784244de5c766166acd0a87f202a` |
| 2 | `def` | [Package.depsFacetConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantf34ebdb9816ac020b935c533de04c2ce699cbf65a7b8609da4d67273ccbe1955.lean/declarations/package-depsfacetconfig--466972f2acb528f7f3f1e978.md) | 40 | `declaration-track:466972f2acb528f7f3f1e97862d7b8bd1c069aa7c3418b8511898eb458b94b75` |
| 3 | `def` | [Package.recComputeTransDeps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantf34ebdb9816ac020b935c533de04c2ce699cbf65a7b8609da4d67273ccbe1955.lean/declarations/package-reccomputetransdeps--132a5515a3103b7190529ee6.md) | 44 | `declaration-track:132a5515a3103b7190529ee6a41f08447ba346beb73360e4eec0c5335014fcb6` |
| 4 | `def` | [Package.transDepsFacetConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantf34ebdb9816ac020b935c533de04c2ce699cbf65a7b8609da4d67273ccbe1955.lean/declarations/package-transdepsfacetconfig--305d5da75dcf804ec6f72420.md) | 50 | `declaration-track:305d5da75dcf804ec6f72420257c828a93de32d10b8aa477e95e7a39fff6e9f9` |
| 5 | `def` | [Package.fetchOptBuildCacheCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantf34ebdb9816ac020b935c533de04c2ce699cbf65a7b8609da4d67273ccbe1955.lean/declarations/package-fetchoptbuildcachecore--a7331ce05e0b0ec0c286ca1c.md) | 57 | `declaration-track:a7331ce05e0b0ec0c286ca1cb31ce56593ee1dd86af6d3d85c7ce3691ac653a8` |
| 6 | `def` | [Package.optBuildCacheFacetConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantf34ebdb9816ac020b935c533de04c2ce699cbf65a7b8609da4d67273ccbe1955.lean/declarations/package-optbuildcachefacetconfig--a73f3a069d880e9ded6bed72.md) | 64 | `declaration-track:a73f3a069d880e9ded6bed722f73afc5d7b6f17d57f4f5f86b16ac0487324701` |
| 7 | `def` | [Package.maybeFetchBuildCache](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantf34ebdb9816ac020b935c533de04c2ce699cbf65a7b8609da4d67273ccbe1955.lean/declarations/package-maybefetchbuildcache--878087e1557d20318df5c3f4.md) | 68 | `declaration-track:878087e1557d20318df5c3f4aa5db77e1946754137e3709b2562fd1869f8728d` |
| 8 | `def` | [Package.optFacetDetails](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantf34ebdb9816ac020b935c533de04c2ce699cbf65a7b8609da4d67273ccbe1955.lean/declarations/package-optfacetdetails--e3e2171c9e3028e9e61bfe9b.md) | 81 | `declaration-track:e3e2171c9e3028e9e61bfe9b51b1fc455ba81b2957dce0f550a2c7be4137d13a` |
| 9 | `def` | [Package.maybeFetchBuildCacheWithWarning](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantf34ebdb9816ac020b935c533de04c2ce699cbf65a7b8609da4d67273ccbe1955.lean/declarations/package-maybefetchbuildcachewithwarning--1c328197355188d3ee46cb22.md) | 91 | `declaration-track:1c328197355188d3ee46cb22cb4b8889137f50cd60e56fe5e84012dd0069a7d2` |
| 10 | `def` | [Package.recBuildExtraDepTargets](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantf34ebdb9816ac020b935c533de04c2ce699cbf65a7b8609da4d67273ccbe1955.lean/declarations/package-recbuildextradeptargets--53d682bbec33a8648b2aa4c4.md) | 106 | `declaration-track:53d682bbec33a8648b2aa4c4a13b9b5d390a52d16c7808791ce25c40ed9a494e` |
| 11 | `def` | [Package.extraDepFacetConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantf34ebdb9816ac020b935c533de04c2ce699cbf65a7b8609da4d67273ccbe1955.lean/declarations/package-extradepfacetconfig--b0435d928341e6ba321db263.md) | 118 | `declaration-track:b0435d928341e6ba321db26373b7e83e42200e6ba24fdcffb123ba0a6cecf9a6` |
| 12 | `def` | [Package.getBarrelUrl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantf34ebdb9816ac020b935c533de04c2ce699cbf65a7b8609da4d67273ccbe1955.lean/declarations/package-getbarrelurl--f860aa4ca7e30f730791d18c.md) | 122 | `declaration-track:f860aa4ca7e30f730791d18c21eed8a27aed2616b34c432864f7e9d5ff61342e` |
| 13 | `def` | [Package.getReleaseUrl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantf34ebdb9816ac020b935c533de04c2ce699cbf65a7b8609da4d67273ccbe1955.lean/declarations/package-getreleaseurl--4e2849123ac324f6c92248a8.md) | 136 | `declaration-track:4e2849123ac324f6c92248a824649e5bb9f8a3bcd44966c925771931f3d9afe6` |
| 14 | `def` | [Package.fetchBuildArchive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantf34ebdb9816ac020b935c533de04c2ce699cbf65a7b8609da4d67273ccbe1955.lean/declarations/package-fetchbuildarchive--3309da1677a18fb8840d4bdb.md) | 148 | `declaration-track:3309da1677a18fb8840d4bdb0ffadaaf0e5286adb1ad1aa12b31b7bf5e21bbf0` |
| 15 | `def` | [Package.mkOptBuildArchiveFacetConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantf34ebdb9816ac020b935c533de04c2ce699cbf65a7b8609da4d67273ccbe1955.lean/declarations/package-mkoptbuildarchivefacetconfig--346218ac3b00ba87597ade74.md) | 161 | `declaration-track:346218ac3b00ba87597ade7403c8d7866d2a851276767801ea9568e86ecabee2` |
| 16 | `def` | [Package.mkBuildArchiveFacetConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantf34ebdb9816ac020b935c533de04c2ce699cbf65a7b8609da4d67273ccbe1955.lean/declarations/package-mkbuildarchivefacetconfig--6da16255f7ef9c39d0c70d61.md) | 176 | `declaration-track:6da16255f7ef9c39d0c70d6173107587403ac2bbc92835d332e5527034ef72c3` |
| 17 | `def` | [Package.buildCacheFacetConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantf34ebdb9816ac020b935c533de04c2ce699cbf65a7b8609da4d67273ccbe1955.lean/declarations/package-buildcachefacetconfig--f9d134968ef92e0a4d08ac5e.md) | 188 | `declaration-track:f9d134968ef92e0a4d08ac5effaefa4b5df0f4694c9a621edd6d1fb429c7d639` |
| 18 | `def` | [Package.optBarrelFacetConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantf34ebdb9816ac020b935c533de04c2ce699cbf65a7b8609da4d67273ccbe1955.lean/declarations/package-optbarrelfacetconfig--60ebe4dc3267b0631f51a7ea.md) | 192 | `declaration-track:60ebe4dc3267b0631f51a7ea4d12dd3416ee8de62285e38c7ec25e3b0e45b0ac` |
| 19 | `def` | [Package.barrelFacetConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantf34ebdb9816ac020b935c533de04c2ce699cbf65a7b8609da4d67273ccbe1955.lean/declarations/package-barrelfacetconfig--b7e9b10e8e4d0d9f162f571d.md) | 196 | `declaration-track:b7e9b10e8e4d0d9f162f571ddeb0a50cc7a7159493907672ccc858613b50d6de` |
| 20 | `def` | [Package.optGitHubReleaseFacetConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantf34ebdb9816ac020b935c533de04c2ce699cbf65a7b8609da4d67273ccbe1955.lean/declarations/package-optgithubreleasefacetconfig--1a11e9f2ba57fd26e92852ff.md) | 200 | `declaration-track:1a11e9f2ba57fd26e92852ff3fa4fa8b76586e8f11650cd2855e79f3d03670d4` |
| 21 | `def` | [Package.gitHubReleaseFacetConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantf34ebdb9816ac020b935c533de04c2ce699cbf65a7b8609da4d67273ccbe1955.lean/declarations/package-githubreleasefacetconfig--d37ae4a8f5462f667e060b62.md) | 204 | `declaration-track:d37ae4a8f5462f667e060b625d315f68290351c19a2747a3e74afe6611055e38` |
| 22 | `def` | [Package.afterBuildCacheAsync](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantf34ebdb9816ac020b935c533de04c2ce699cbf65a7b8609da4d67273ccbe1955.lean/declarations/package-afterbuildcacheasync--ee2986a76548db26ece3e30f.md) | 211 | `declaration-track:ee2986a76548db26ece3e30f16ee16a9c10d2fa2f0f3689f52d160b3f5886a58` |
| 23 | `def` | [Package.afterBuildCacheSync](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantf34ebdb9816ac020b935c533de04c2ce699cbf65a7b8609da4d67273ccbe1955.lean/declarations/package-afterbuildcachesync--64458c08a37bf4d4a95c444d.md) | 223 | `declaration-track:64458c08a37bf4d4a95c444ddf02bad8b8af86be71ed56da54a9b49f8818c71f` |
| 24 | `def` | [Package.initFacetConfigs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantf34ebdb9816ac020b935c533de04c2ce699cbf65a7b8609da4d67273ccbe1955.lean/declarations/package-initfacetconfigs--fc6e686f0fe0828086f4a8de.md) | 235 | `declaration-track:fc6e686f0fe0828086f4a8def41a8c5b06a0eb08833cc2c58c86ed592e34bbdf` |
| 25 | `abbrev` | [initPackageFacetConfigs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantf34ebdb9816ac020b935c533de04c2ce699cbf65a7b8609da4d67273ccbe1955.lean/declarations/initpackagefacetconfigs--d3f908d986406db04ce217d9.md) | 248 | `declaration-track:d3f908d986406db04ce217d9303ec50798151301c1ed8f6c20ebe2909caa6b1d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
