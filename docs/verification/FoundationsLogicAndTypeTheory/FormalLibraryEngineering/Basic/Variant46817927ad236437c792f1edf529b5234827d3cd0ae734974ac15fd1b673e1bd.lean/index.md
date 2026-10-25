# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "480167c71f00d66f8d03ba37b08b0eea09686bb2",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `480167c71f00d66f8d03ba37b08b0eea09686bb2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init.Data.Nat.Notation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Message` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Expr.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.KVMap` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Simps.NotationClass` — import line 11; external provider; requires a separately pinned dependency.
- `Std.Classes.Dvd` — import line 12; external provider; requires a separately pinned dependency.
- `Std.Data.String.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Std.Util.LibraryNote` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.RunCmd` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Linter` — import line 16; external provider; requires a separately pinned dependency.
- `Std.Data.List.Count` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [updateName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/declarations/updatename--60d959c986f7fa4a3017b697.md) | 68 | `declaration-track:60d959c986f7fa4a3017b6971703f05897131f8bc0e9beb3ccdeb4fcbb52e504` |
| 2 | `def` | [mkSimpContextResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/declarations/mksimpcontextresult--e156e93d41210f4ec659493f.md) | 77 | `declaration-track:e156e93d41210f4ec659493fd729b32ee1129d7999c259e3a9679a039be80ac9` |
| 3 | `def` | [mkSimpContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/declarations/mksimpcontext--1ebe7b62f8cb2b373b62d8a3.md) | 110 | `declaration-track:1ebe7b62f8cb2b373b62d8a30cf663770fa7710ce02616e949af4916a5cb820f` |
| 4 | `def` | [hasSimpAttribute](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/declarations/hassimpattribute--18455e3e39871c30f12ddc3c.md) | 119 | `declaration-track:18455e3e39871c30f12ddc3c34b76b9fe659b9fac1f5e1c041f2b2180d07fe7d` |
| 5 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/declarations/syntax--b4a72e0c2af575cbc6163d4f.md) | 141 | `declaration-track:b4a72e0c2af575cbc6163d4f17a3962677660199359d13d03aef70560f36a37a` |
| 6 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/declarations/syntax--4b0667e146e3ebc5e0343d31.md) | 243 | `declaration-track:4b0667e146e3ebc5e0343d3192be09348baf04817ed9e074c874d81b3b683d80` |
| 7 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/declarations/macro--8ecff889a1e41c7d8a8ee3f0.md) | 245 | `declaration-track:8ecff889a1e41c7d8a8ee3f0c72d1fa0e0e7df0d854d6fba4400991d7c7ceb97` |
| 8 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/declarations/macro--a13967c7e117442dda49d644.md) | 246 | `declaration-track:a13967c7e117442dda49d644100883b5ce2280391b0f623e18767239eed67d24` |
| 9 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/declarations/macro--09f01877769cb4ff4086d0f1.md) | 247 | `declaration-track:09f01877769cb4ff4086d0f1938ae1a22802395e7dc54b8a25e5af307525af75` |
| 10 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/declarations/macro--7900a2ed9399b256543442f9.md) | 248 | `declaration-track:7900a2ed9399b256543442f994ce1a9de13c6ed479a471ef3e3808e1cddc53d9` |
| 11 | `register_option` | [linter.simpsNoConstructor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/declarations/linter-simpsnoconstructor--b3a3ec6fc37cc576ee74791a.md) | 253 | `declaration-track:b3a3ec6fc37cc576ee74791a305c3c76d6ca78ad1b31e626d5839bdd8cb620db` |
| 12 | `register_option` | [linter.simpsUnusedCustomDeclarations](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/declarations/linter-simpsunusedcustomdeclarations--3194bdf1dbc61a7ce6a79683.md) | 258 | `declaration-track:3194bdf1dbc61a7ce6a796834625693e9b454e257e0375f043a8cd2b7f573bfd` |
| 13 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/declarations/syntax--a5837369d98d256c3a0740e4.md) | 265 | `declaration-track:a5837369d98d256c3a0740e49e4ae9c14719d45f45c966e1f4403fb3e0a1a1f5` |
| 14 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/declarations/syntax--6dcbcfc493e92021b5ca2622.md) | 267 | `declaration-track:6dcbcfc493e92021b5ca26223032d73552301f974abb610ad861052df6539a3b` |
| 15 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/declarations/syntax--3c93d48a030b22dbbdc04e5a.md) | 269 | `declaration-track:3c93d48a030b22dbbdc04e5aabd61a082b9d9f8577a1bf98b31dd29db025c52c` |
| 16 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/declarations/syntax--ad0705f3f56f3ac641f6aaa6.md) | 271 | `declaration-track:ad0705f3f56f3ac641f6aaa6951a05061aaca083d5f37baecf21c47674d6e13f` |
| 17 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/declarations/syntax--93e76cded5256183cb350928.md) | 273 | `declaration-track:93e76cded5256183cb35092885307320b2c4799f1c1b62d1209e411978a64b1d` |
| 18 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/declarations/syntax--694e94963956481abcfa0681.md) | 275 | `declaration-track:694e94963956481abcfa0681a3491a32b7163c954c5b55222c4eb5d872bd2a7a` |
| 19 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/declarations/syntax--5e0d85ffd1f0b66e0f934afa.md) | 342 | `declaration-track:5e0d85ffd1f0b66e0f934afac722e71d12836610d08107b9551054b5572a1538` |
| 20 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/declarations/macro--bcb75c346459930983f3e63a.md) | 346 | `declaration-track:bcb75c346459930983f3e63a1235f1a7615ebf4516fb169806954c44b1424ed8` |
| 21 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/declarations/initialize--fa991c446b94f8c2229f2a1d.md) | 352 | `declaration-track:fa991c446b94f8c2229f2a1d401fb01437c6a8568853fb9f5836e828be395e9e` |
| 22 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/declarations/initialize--493c4aab49ffbfe7d1abdea5.md) | 353 | `declaration-track:493c4aab49ffbfe7d1abdea5f1f29a558538dabafa9498b4c244ed9b0c3ca429` |
| 23 | `structure` | [ProjectionData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/declarations/projectiondata--ba010d009aecc01e6d9ced01.md) | 358 | `declaration-track:ba010d009aecc01e6d9ced01b743ef6b26aa0e13c68937bf2c9c038af27c20aa` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/declarations/instance--ce1dc1b99d418baa247065cb.md) | 379 | `declaration-track:ce1dc1b99d418baa247065cb0b78e41d27fdd5631412695ad15604982531a05e` |
| 25 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/declarations/initialize--f5d50ba8ed9825c8d334d177.md) | 393 | `declaration-track:f5d50ba8ed9825c8d334d1772c6904f1c75e8e2dcf720b1e6c439d91713292a8` |
| 26 | `structure` | [ParsedProjectionData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/declarations/parsedprojectiondata--45791c4a8bd76e81076b9b95.md) | 397 | `declaration-track:45791c4a8bd76e81076b9b95ea36e75901b221692b5d5d8ac8aa63c767701b67` |
| 27 | `def` | [ParsedProjectionData.toProjectionData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/declarations/parsedprojectiondata-toprojectiondata--157e7be701175e22e6247f02.md) | 418 | `declaration-track:157e7be701175e22e6247f025090a2fe563b4dc3c383b2fa215df587e546c5a0` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/declarations/instance--3ce064f4d9e201f3d6f394fe.md) | 421 | `declaration-track:3ce064f4d9e201f3d6f394fe833897d88caf367dccd511125380ed38b99529dc` |
| 29 | `inductive` | [ProjectionRule](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/declarations/projectionrule--7fa06ac82e7ec93abbe37b42.md) | 429 | `declaration-track:7fa06ac82e7ec93abbe37b426c7381ddaa1d9d192b1c4913da06d32ae46d2e88` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/declarations/instance--a2b142964292fb11a0de4140.md) | 442 | `declaration-track:a2b142964292fb11a0de4140abd38b9c8563e32ebc13d036935c456028c04dad` |
| 31 | `def` | [projectionsInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/declarations/projectionsinfo--c8eb0b0a3e95b1a772eb98e2.md) | 454 | `declaration-track:c8eb0b0a3e95b1a772eb98e2bb534ffb8063862a4df2651f21e927184b54058b` |
| 32 | `def` | [findProjectionIndices](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/declarations/findprojectionindices--103cd9851abbd1f92d5217a8.md) | 472 | `declaration-track:103cd9851abbd1f92d5217a822ce7b7581f213f2cea2a0f704b690652f46b4d5` |
| 33 | `def` | [getCompositeOfProjectionsAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/declarations/getcompositeofprojectionsaux--e085640353cd1b40f97c0c3a.md) | 484 | `declaration-track:e085640353cd1b40f97c0c3adcc3eb1156cb50615ceadb2d3eedc0e06c8d4eed` |
| 34 | `def` | [getCompositeOfProjections](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/declarations/getcompositeofprojections--9117974a088aea1798abb058.md) | 518 | `declaration-track:9117974a088aea1798abb058d11f0614d79bde4a07b3a4b60f77edaa5cf42692` |
| 35 | `def` | [mkParsedProjectionData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/declarations/mkparsedprojectiondata--0c9613c951c7cd3cbb7b2c4d.md) | 529 | `declaration-track:0c9613c951c7cd3cbb7b2c4d3280a23dfb2c7398cf2fa0ebba2044e841cd531f` |
| 36 | `def` | [applyProjectionRules](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/declarations/applyprojectionrules--09cbd649a20572b6b4e4bf4d.md) | 544 | `declaration-track:09cbd649a20572b6b4e4bf4dbd1d57c2a33f38a057ee4b86be9dcaa12fc206eb` |
| 37 | `def` | [findProjection](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/declarations/findprojection--2f6b66a82a6fcd580768f54a.md) | 592 | `declaration-track:2f6b66a82a6fcd580768f54a0ee36779da40866f8f9f97f636688ddd6539b906` |
| 38 | `def` | [checkForUnusedCustomProjs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/declarations/checkforunusedcustomprojs--3c12fee1544c5f6cd402db57.md) | 629 | `declaration-track:3c12fee1544c5f6cd402db579824814f23836ade6625ea6f941677fa8b8e9f3e` |
| 39 | `def` | [findAutomaticProjectionsAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/declarations/findautomaticprojectionsaux--853b3ca027d677dc6c821302.md) | 649 | `declaration-track:853b3ca027d677dc6c821302d48f4fca147f94dfe803a6351790e8bbcd2d2c73` |
| 40 | `def` | [findAutomaticProjections](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/declarations/findautomaticprojections--4a2f4149afd8a52151a6fcd4.md) | 688 | `declaration-track:4a2f4149afd8a52151a6fcd4bbd646d0dd1494fca8c085285a53b770f1d980a9` |
| 41 | `def` | [getRawProjections](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/declarations/getrawprojections--8b078ad650f5337001c5a513.md) | 747 | `declaration-track:8b078ad650f5337001c5a5130d435c3e2cfe27d0b9ef7c423667c50a15c29a5b` |
| 42 | `def` | [elabSimpsRule](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/declarations/elabsimpsrule--e375cb628403a41cb4d27798.md) | 801 | `declaration-track:e375cb628403a41cb4d277985464dc5f1f19b7c643983d1ce523e2c3e303bac9` |
| 43 | `def` | [elabInitializeSimpsProjections](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/declarations/elabinitializesimpsprojections--2a9bc9a9ecd4b19cad5130e4.md) | 809 | `declaration-track:2a9bc9a9ecd4b19cad5130e41ffc629005f8dc518d78e35e7138c985fa3425e0` |
| 44 | `structure` | [Config](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/declarations/config--7ac625d10ef48c56423befd9.md) | 819 | `declaration-track:7ac625d10ef48c56423befd9b60c455e617d9d0fdd3419d09aec37be46d7363b` |
| 45 | `def` | [Config.asFn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/declarations/config-asfn--c663ab14221897d6584b60b5.md) | 848 | `declaration-track:c663ab14221897d6584b60b57367b3f692db2aa41c1c4cab0a74383e567a4ff8` |
| 46 | `def` | [Config.lemmasOnly](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/declarations/config-lemmasonly--e1bc6043dc10a5a2120b54c0.md) | 853 | `declaration-track:e1bc6043dc10a5a2120b54c0a85b541ca0d4ea1ce0daa689701c39f8464c26d1` |
| 47 | `def` | [_root_.Lean.Expr.instantiateLambdasOrApps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/declarations/root-lean-expr-instantiatelambdasorapps--f45a51070b03085c2401127d.md) | 862 | `declaration-track:f45a51070b03085c2401127d196fc6f111e2252fc1c803411c081765cfc9a301` |
| 48 | `def` | [getProjectionExprs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/declarations/getprojectionexprs--ca0832b19d5e6391cb0abd5d.md) | 890 | `declaration-track:ca0832b19d5e6391cb0abd5dc27d7147b82cf990c3c80aac938480419c044ab6` |
| 49 | `def` | [addProjection](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/declarations/addprojection--1592773e62fce1f9c17b1ac5.md) | 911 | `declaration-track:1592773e62fce1f9c17b1ac5f7d59edf4329af7f0b71b91f7995e5b0e6b45552` |
| 50 | `def` | [headStructureEtaReduce](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/declarations/headstructureetareduce--f1e00711ec7a193bdaf7194e.md) | 963 | `declaration-track:f1e00711ec7a193bdaf7194e25d7367c8dcc40602709f0b00139677bd82d6a51` |
| 51 | `def` | [addProjections](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/declarations/addprojections--72fe1f4c5617788c4087c0f3.md) | 996 | `declaration-track:72fe1f4c5617788c4087c0f39304aa7da59fc8167da96e597e99a2c43d86d5b8` |
| 52 | `def` | [simpsTac](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/declarations/simpstac--0d195a648e526d8de3483e5c.md) | 1137 | `declaration-track:0d195a648e526d8de3483e5ca58daeabb709e2d4f49f1c03e671515503b6855d` |
| 53 | `def` | [simpsTacFromSyntax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/declarations/simpstacfromsyntax--13aaeac1916fd17565cd701a.md) | 1149 | `declaration-track:13aaeac1916fd17565cd701a5634f9d4f6178e31e9f18bc9262bfb969ba6712e` |
| 54 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/declarations/initialize--3f92ac9b0da822b1b10b7bcf.md) | 1159 | `declaration-track:3f92ac9b0da822b1b10b7bcf9fd94d4c5e8b050a943e966e9833c41153e6eaef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
