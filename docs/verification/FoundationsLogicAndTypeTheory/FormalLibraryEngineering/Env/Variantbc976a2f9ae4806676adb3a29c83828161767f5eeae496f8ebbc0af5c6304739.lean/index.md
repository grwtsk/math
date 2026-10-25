# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Env.Variantbc976a2f9ae4806676adb3a29c83828161767f5eeae496f8ebbc0af5c6304739

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "50f64085660a243b729c4bb3655f0b0edb28a8f5",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantbc976a2f9ae4806676adb3a29c83828161767f5eeae496f8ebbc0af5c6304739.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantbc976a2f9ae4806676adb3a29c83828161767f5eeae496f8ebbc0af5c6304739.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantbc976a2f9ae4806676adb3a29c83828161767f5eeae496f8ebbc0af5c6304739.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `50f64085660a243b729c4bb3655f0b0edb28a8f5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantbc976a2f9ae4806676adb3a29c83828161767f5eeae496f8ebbc0af5c6304739.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantbc976a2f9ae4806676adb3a29c83828161767f5eeae496f8ebbc0af5c6304739.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.System.Platform` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Env](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantbc976a2f9ae4806676adb3a29c83828161767f5eeae496f8ebbc0af5c6304739.lean/declarations/env--9ecc2bdaf124350866180970.md) | 25 | `declaration-track:9ecc2bdaf124350866180970292c1b96a0e5b29cc8b21d59a0ed2ee65b6e433e` |
| 2 | `def` | [getUserHome?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantbc976a2f9ae4806676adb3a29c83828161767f5eeae496f8ebbc0af5c6304739.lean/declarations/getuserhome--77b4a6f2d7b76d9a00f7cdf7.md) | 90 | `declaration-track:77b4a6f2d7b76d9a00f7cdf7edec6257768be35697a02473480f6572c23e55b2` |
| 3 | `def` | [getSystemCacheHomeAux?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantbc976a2f9ae4806676adb3a29c83828161767f5eeae496f8ebbc0af5c6304739.lean/declarations/getsystemcachehomeaux--79a1f492bf45fa05b6ead10e.md) | 102 | `declaration-track:79a1f492bf45fa05b6ead10e44ed57ffb76065843900cd7f6a0d291f4bfacd43` |
| 4 | `def` | [getSystemCacheHome?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantbc976a2f9ae4806676adb3a29c83828161767f5eeae496f8ebbc0af5c6304739.lean/declarations/getsystemcachehome--ff5b2d8e87a98d5a9921423b.md) | 111 | `declaration-track:ff5b2d8e87a98d5a9921423bffbf42df89fd7a543cedd2990f1f3a360cb12dd2` |
| 5 | `def` | [ElanInstall.lakeToolchainCache](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantbc976a2f9ae4806676adb3a29c83828161767f5eeae496f8ebbc0af5c6304739.lean/declarations/elaninstall-laketoolchaincache--08735cf6406832bba324a2f4.md) | 119 | `declaration-track:08735cf6406832bba324a2f4aab70cbd506c3273ba4d8079cdc3991b1e01b6b7` |
| 6 | `def` | [ElanInstall.lakeToolchainCache?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantbc976a2f9ae4806676adb3a29c83828161767f5eeae496f8ebbc0af5c6304739.lean/declarations/elaninstall-laketoolchaincache--d44f790c989aca7fdd8d751e.md) | 122 | `declaration-track:d44f790c989aca7fdd8d751e2c718557004d93db2e3235f488bd3ff20cf846c2` |
| 7 | `def` | [computeToolchain](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantbc976a2f9ae4806676adb3a29c83828161767f5eeae496f8ebbc0af5c6304739.lean/declarations/computetoolchain--a8e2a85f95e37d1dceab594d.md) | 131 | `declaration-track:a8e2a85f95e37d1dceab594ddffafed8a5fc8c420155734b2d5df0caee97d42a` |
| 8 | `def` | [computeEnvCache?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantbc976a2f9ae4806676adb3a29c83828161767f5eeae496f8ebbc0af5c6304739.lean/declarations/computeenvcache--7e5e4be45b38f175e7aadbe7.md) | 134 | `declaration-track:7e5e4be45b38f175e7aadbe71f88cd2cbb19c2c16d195875211b17973e659ac6` |
| 9 | `def` | [cacheOfSystem?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantbc976a2f9ae4806676adb3a29c83828161767f5eeae496f8ebbc0af5c6304739.lean/declarations/cacheofsystem--8489171bcda075b6187e2cc0.md) | 139 | `declaration-track:8489171bcda075b6187e2cc045ff357cbc156eeb395dd4d439ddf9f2309a5c01` |
| 10 | `def` | [cacheOfToolchain?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantbc976a2f9ae4806676adb3a29c83828161767f5eeae496f8ebbc0af5c6304739.lean/declarations/cacheoftoolchain--0e29826fa0cf9210c707ab75.md) | 142 | `declaration-track:0e29826fa0cf9210c707ab75747dc8eabdd54ca75b921f4bd8da3cda9c34379c` |
| 11 | `def` | [computeCache?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantbc976a2f9ae4806676adb3a29c83828161767f5eeae496f8ebbc0af5c6304739.lean/declarations/computecache--e5d814c87d43922343198826.md) | 151 | `declaration-track:e5d814c87d4392234319882601a3747fb34664023eed672a66a483b045022e37` |
| 12 | `def` | [compute](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantbc976a2f9ae4806676adb3a29c83828161767f5eeae496f8ebbc0af5c6304739.lean/declarations/compute--207068765b9bc9d4b0eb3596.md) | 165 | `declaration-track:207068765b9bc9d4b0eb3596555b58155186cd7a296b7fbf0128e3d5fc33059f` |
| 13 | `def` | [cacheToolchain](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantbc976a2f9ae4806676adb3a29c83828161767f5eeae496f8ebbc0af5c6304739.lean/declarations/cachetoolchain--f55073f692f819bbef2132c4.md) | 219 | `declaration-track:f55073f692f819bbef2132c453738088825df122f601303f2eaa25742779a368` |
| 14 | `def` | [leanGithash](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantbc976a2f9ae4806676adb3a29c83828161767f5eeae496f8ebbc0af5c6304739.lean/declarations/leangithash--f3c34a8d9b2ab03c443590bd.md) | 230 | `declaration-track:f3c34a8d9b2ab03c443590bd769bf6f5399f145810607f47df875ba973166fa8` |
| 15 | `def` | [path](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantbc976a2f9ae4806676adb3a29c83828161767f5eeae496f8ebbc0af5c6304739.lean/declarations/path--2257eaaf4cb67113e1cd19ff.md) | 237 | `declaration-track:2257eaaf4cb67113e1cd19fff925e4078b7c4db42c5efd32a4fec6cf5ce9fa6f` |
| 16 | `def` | [leanPath](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantbc976a2f9ae4806676adb3a29c83828161767f5eeae496f8ebbc0af5c6304739.lean/declarations/leanpath--0d9644996f1b4c3d9c48c6e6.md) | 254 | `declaration-track:0d9644996f1b4c3d9c48c6e66826869dcb7793763f37b0e956002b213e07fbb9` |
| 17 | `def` | [leanSrcPath](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantbc976a2f9ae4806676adb3a29c83828161767f5eeae496f8ebbc0af5c6304739.lean/declarations/leansrcpath--210fd3d05df06c838b9d2c5a.md) | 262 | `declaration-track:210fd3d05df06c838b9d2c5a6a65dc1388dd0c9d9fc6df6f7cf0581998e62645` |
| 18 | `def` | [sharedLibPath](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantbc976a2f9ae4806676adb3a29c83828161767f5eeae496f8ebbc0af5c6304739.lean/declarations/sharedlibpath--aaf198d09e54bb44a3ba2ace.md) | 269 | `declaration-track:aaf198d09e54bb44a3ba2ace61e7699785d4d0a79526f00631bcba84144b1a7d` |
| 19 | `def` | [noToolchainVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantbc976a2f9ae4806676adb3a29c83828161767f5eeae496f8ebbc0af5c6304739.lean/declarations/notoolchainvars--39a81ecfaae0344b9a312f06.md) | 273 | `declaration-track:39a81ecfaae0344b9a312f066f7cc13530945c8aa94cc14e0163fb08bb13faf4` |
| 20 | `def` | [baseVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantbc976a2f9ae4806676adb3a29c83828161767f5eeae496f8ebbc0af5c6304739.lean/declarations/basevars--e061c50b8eee5a5054d611e0.md) | 287 | `declaration-track:e061c50b8eee5a5054d611e07539e580fa779069341ed549f785f337c487d506` |
| 21 | `def` | [vars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantbc976a2f9ae4806676adb3a29c83828161767f5eeae496f8ebbc0af5c6304739.lean/declarations/vars--b6d84b441cabc743e4a2cc39.md) | 308 | `declaration-track:b6d84b441cabc743e4a2cc3929228003d00f81870c555a470279f5fb1669b8ba` |
| 22 | `def` | [leanSearchPath](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantbc976a2f9ae4806676adb3a29c83828161767f5eeae496f8ebbc0af5c6304739.lean/declarations/leansearchpath--f426b25a0a0cf38a3a83e105.md) | 343 | `declaration-track:f426b25a0a0cf38a3a83e1055e46e238656848047bd757af84f695bb6c9a75ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
