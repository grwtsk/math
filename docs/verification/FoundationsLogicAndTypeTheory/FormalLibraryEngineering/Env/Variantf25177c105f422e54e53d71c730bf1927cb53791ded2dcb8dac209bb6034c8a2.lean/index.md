# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Env.Variantf25177c105f422e54e53d71c730bf1927cb53791ded2dcb8dac209bb6034c8a2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15c5cdeef7733f59de7f2e56ee791cd56e73cb33",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantf25177c105f422e54e53d71c730bf1927cb53791ded2dcb8dac209bb6034c8a2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantf25177c105f422e54e53d71c730bf1927cb53791ded2dcb8dac209bb6034c8a2.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantf25177c105f422e54e53d71c730bf1927cb53791ded2dcb8dac209bb6034c8a2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15c5cdeef7733f59de7f2e56ee791cd56e73cb33`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantf25177c105f422e54e53d71c730bf1927cb53791ded2dcb8dac209bb6034c8a2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantf25177c105f422e54e53d71c730bf1927cb53791ded2dcb8dac209bb6034c8a2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.System.Platform` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Env](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantf25177c105f422e54e53d71c730bf1927cb53791ded2dcb8dac209bb6034c8a2.lean/declarations/env--6d678688622543e2a511df9e.md) | 33 | `declaration-track:6d678688622543e2a511df9e78073afb0a97593fadfbf33cf51e9ec90bf62b22` |
| 2 | `def` | [getUserHome?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantf25177c105f422e54e53d71c730bf1927cb53791ded2dcb8dac209bb6034c8a2.lean/declarations/getuserhome--223edc63d3d4664c9f84f537.md) | 98 | `declaration-track:223edc63d3d4664c9f84f537944cf29fdc047a9984260f851833b7ccbcba27d9` |
| 3 | `def` | [getSystemCacheHomeAux?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantf25177c105f422e54e53d71c730bf1927cb53791ded2dcb8dac209bb6034c8a2.lean/declarations/getsystemcachehomeaux--c2b67eebdb4d30062ba36f11.md) | 110 | `declaration-track:c2b67eebdb4d30062ba36f114ac7ee93b84637596db2cc704aa65187776d255d` |
| 4 | `def` | [getSystemCacheHome?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantf25177c105f422e54e53d71c730bf1927cb53791ded2dcb8dac209bb6034c8a2.lean/declarations/getsystemcachehome--b0ab60a4197ea03781995a18.md) | 119 | `declaration-track:b0ab60a4197ea03781995a18ae16bb0f110e927892e24c6ce4fe2af878e611dd` |
| 5 | `def` | [ElanInstall.lakeToolchainCache](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantf25177c105f422e54e53d71c730bf1927cb53791ded2dcb8dac209bb6034c8a2.lean/declarations/elaninstall-laketoolchaincache--744b76f12c54f4dd66ed93ea.md) | 127 | `declaration-track:744b76f12c54f4dd66ed93ea94e0ce8e2725827b08f9db960d14cfd9364f1cae` |
| 6 | `def` | [ElanInstall.lakeToolchainCache?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantf25177c105f422e54e53d71c730bf1927cb53791ded2dcb8dac209bb6034c8a2.lean/declarations/elaninstall-laketoolchaincache--e3900ef3213b5283b0731510.md) | 130 | `declaration-track:e3900ef3213b5283b0731510a67fb2857a5929e6fd0aeb4effbb2c2bd11c562a` |
| 7 | `def` | [computeToolchain](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantf25177c105f422e54e53d71c730bf1927cb53791ded2dcb8dac209bb6034c8a2.lean/declarations/computetoolchain--bc16ab3f2338d6581b15d46e.md) | 139 | `declaration-track:bc16ab3f2338d6581b15d46e26995acc02a30cae6b17e7994c6f9f2a7e76d94c` |
| 8 | `def` | [computeEnvCache?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantf25177c105f422e54e53d71c730bf1927cb53791ded2dcb8dac209bb6034c8a2.lean/declarations/computeenvcache--5718bff22d6d2bc0c243d891.md) | 142 | `declaration-track:5718bff22d6d2bc0c243d89112d9e688e1f192b7eee07f2f9ffa2ca1622d0549` |
| 9 | `def` | [cacheOfSystem?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantf25177c105f422e54e53d71c730bf1927cb53791ded2dcb8dac209bb6034c8a2.lean/declarations/cacheofsystem--93a5d47402c79409681730fd.md) | 147 | `declaration-track:93a5d47402c79409681730fdced0505654cecef7e7611414c758f9de7d98891a` |
| 10 | `def` | [cacheOfToolchain?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantf25177c105f422e54e53d71c730bf1927cb53791ded2dcb8dac209bb6034c8a2.lean/declarations/cacheoftoolchain--e73e6cf409c7653ec309922e.md) | 150 | `declaration-track:e73e6cf409c7653ec309922e6bfa4dbf3ab602ca409ea7e10ea83e5239b01f78` |
| 11 | `def` | [computeCache?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantf25177c105f422e54e53d71c730bf1927cb53791ded2dcb8dac209bb6034c8a2.lean/declarations/computecache--c23a72bc369140ba6d2ea265.md) | 159 | `declaration-track:c23a72bc369140ba6d2ea265f3b6a34e9dd4eaa2027a7e416c69f3b1864872e9` |
| 12 | `def` | [compute](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantf25177c105f422e54e53d71c730bf1927cb53791ded2dcb8dac209bb6034c8a2.lean/declarations/compute--710a29cc9b6a56ecb58879eb.md) | 173 | `declaration-track:710a29cc9b6a56ecb58879eb88c830fa62d775a1f0e9da32dc23abdedf19c8ac` |
| 13 | `def` | [cacheToolchain](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantf25177c105f422e54e53d71c730bf1927cb53791ded2dcb8dac209bb6034c8a2.lean/declarations/cachetoolchain--e010a707b2f2b33cbf01b497.md) | 227 | `declaration-track:e010a707b2f2b33cbf01b497e16d67b2ae0b8dabe96247a9c4ecc682be120d22` |
| 14 | `def` | [leanGithash](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantf25177c105f422e54e53d71c730bf1927cb53791ded2dcb8dac209bb6034c8a2.lean/declarations/leangithash--9f38f5047eca48c9815aef67.md) | 238 | `declaration-track:9f38f5047eca48c9815aef67394f7005c655b74f90954b6d8eb9cc226827854e` |
| 15 | `def` | [path](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantf25177c105f422e54e53d71c730bf1927cb53791ded2dcb8dac209bb6034c8a2.lean/declarations/path--4660a73a4af558d3cab514fd.md) | 245 | `declaration-track:4660a73a4af558d3cab514fdf4bfd72721603d8a4dec80751d647fde905c2e11` |
| 16 | `def` | [leanPath](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantf25177c105f422e54e53d71c730bf1927cb53791ded2dcb8dac209bb6034c8a2.lean/declarations/leanpath--a32f2aa2b43121d4f58425e1.md) | 262 | `declaration-track:a32f2aa2b43121d4f58425e1f03347743216966a8d7b613dd1e665558cc00cdc` |
| 17 | `def` | [leanSrcPath](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantf25177c105f422e54e53d71c730bf1927cb53791ded2dcb8dac209bb6034c8a2.lean/declarations/leansrcpath--d9c0a9cf1836ccafb5ef5b5a.md) | 270 | `declaration-track:d9c0a9cf1836ccafb5ef5b5ae884b4044af3ff2296bae122a9e43a96603b19ca` |
| 18 | `def` | [sharedLibPath](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantf25177c105f422e54e53d71c730bf1927cb53791ded2dcb8dac209bb6034c8a2.lean/declarations/sharedlibpath--3ba4e24cc13f2929ab6e936b.md) | 277 | `declaration-track:3ba4e24cc13f2929ab6e936bc836e95c8093968708785dcb2c1ef0abf5854e00` |
| 19 | `def` | [noToolchainVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantf25177c105f422e54e53d71c730bf1927cb53791ded2dcb8dac209bb6034c8a2.lean/declarations/notoolchainvars--bcd2a0205cd8fa4dd9b6dad9.md) | 281 | `declaration-track:bcd2a0205cd8fa4dd9b6dad9fe9b72f2c2641afb430a9944449080c6e0ba9d27` |
| 20 | `def` | [baseVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantf25177c105f422e54e53d71c730bf1927cb53791ded2dcb8dac209bb6034c8a2.lean/declarations/basevars--27e6c4c64bca5dd90a4ce30d.md) | 295 | `declaration-track:27e6c4c64bca5dd90a4ce30d4945ef5e05b8c8cd8016ba3bf251e3615f0f0df1` |
| 21 | `def` | [vars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantf25177c105f422e54e53d71c730bf1927cb53791ded2dcb8dac209bb6034c8a2.lean/declarations/vars--ce6f95d66d69eb96148bbf0e.md) | 316 | `declaration-track:ce6f95d66d69eb96148bbf0ef5a1938fea8ee97ae44ddbc3cd9101d523bcad08` |
| 22 | `def` | [leanSearchPath](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantf25177c105f422e54e53d71c730bf1927cb53791ded2dcb8dac209bb6034c8a2.lean/declarations/leansearchpath--b8af34dd341ccbd4458e4053.md) | 351 | `declaration-track:b8af34dd341ccbd4458e40537a7f7afa30164dde25764dc4434f513fd7dab6e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
