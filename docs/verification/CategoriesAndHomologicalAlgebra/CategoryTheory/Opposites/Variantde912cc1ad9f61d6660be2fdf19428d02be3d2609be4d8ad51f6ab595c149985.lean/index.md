# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Opposites.Variantde912cc1ad9f61d6660be2fdf19428d02be3d2609be4d8ad51f6ab595c149985

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef00d9191c63ed2423eeb07e7340687dfec5a597",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantde912cc1ad9f61d6660be2fdf19428d02be3d2609be4d8ad51f6ab595c149985.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantde912cc1ad9f61d6660be2fdf19428d02be3d2609be4d8ad51f6ab595c149985.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantde912cc1ad9f61d6660be2fdf19428d02be3d2609be4d8ad51f6ab595c149985.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef00d9191c63ed2423eeb07e7340687dfec5a597`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantde912cc1ad9f61d6660be2fdf19428d02be3d2609be4d8ad51f6ab595c149985.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantde912cc1ad9f61d6660be2fdf19428d02be3d2609be4d8ad51f6ab595c149985.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Opposites` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Finite` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [preservesLimitOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantde912cc1ad9f61d6660be2fdf19428d02be3d2609be4d8ad51f6ab595c149985.lean/declarations/preserveslimitop--c40d344296315ae6b0360352.md) | 49 | `declaration-track:c40d344296315ae6b0360352dc1c5311158f8bb59bb30c0509b0b4bef24ec65a` |
| 2 | `def` | [preservesLimitLeftOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantde912cc1ad9f61d6660be2fdf19428d02be3d2609be4d8ad51f6ab595c149985.lean/declarations/preserveslimitleftop--911e6e9dce87df889e7901c0.md) | 56 | `declaration-track:911e6e9dce87df889e7901c031351a26f965153684f9668cba9b29249daebfc3` |
| 3 | `def` | [preservesLimitRightOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantde912cc1ad9f61d6660be2fdf19428d02be3d2609be4d8ad51f6ab595c149985.lean/declarations/preserveslimitrightop--607959d4f9890e9c035ba3bd.md) | 64 | `declaration-track:607959d4f9890e9c035ba3bd635e08bdd7f661e0f224aaa8b237f6f5bdac0398` |
| 4 | `def` | [preservesLimitUnop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantde912cc1ad9f61d6660be2fdf19428d02be3d2609be4d8ad51f6ab595c149985.lean/declarations/preserveslimitunop--b37d3674ae1176d8e6d590bd.md) | 72 | `declaration-track:b37d3674ae1176d8e6d590bd2b36a17087e9aff99c24aca2acd7ae8566f68e4c` |
| 5 | `def` | [preservesColimitOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantde912cc1ad9f61d6660be2fdf19428d02be3d2609be4d8ad51f6ab595c149985.lean/declarations/preservescolimitop--be7f53d6355bd006ff70586b.md) | 80 | `declaration-track:be7f53d6355bd006ff70586b75c079440201db7b33d21f345285657033f2eb2b` |
| 6 | `def` | [preservesColimitLeftOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantde912cc1ad9f61d6660be2fdf19428d02be3d2609be4d8ad51f6ab595c149985.lean/declarations/preservescolimitleftop--c34d5ea374ae62bc8555e256.md) | 88 | `declaration-track:c34d5ea374ae62bc8555e25691f2c1c01f818bc7d1daeffb528651ee868e39c4` |
| 7 | `def` | [preservesColimitRightOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantde912cc1ad9f61d6660be2fdf19428d02be3d2609be4d8ad51f6ab595c149985.lean/declarations/preservescolimitrightop--216bbf8f3f7fb817d05a6985.md) | 96 | `declaration-track:216bbf8f3f7fb817d05a698567e7d5160084be24aea3490403a729f397ab887f` |
| 8 | `def` | [preservesColimitUnop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantde912cc1ad9f61d6660be2fdf19428d02be3d2609be4d8ad51f6ab595c149985.lean/declarations/preservescolimitunop--ca155ea0f1515ffc4bccceec.md) | 104 | `declaration-track:ca155ea0f1515ffc4bccceecbc400772a81e0525523bc0169dba44206bb7f8fe` |
| 9 | `def` | [preservesLimitsOfShapeOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantde912cc1ad9f61d6660be2fdf19428d02be3d2609be4d8ad51f6ab595c149985.lean/declarations/preserveslimitsofshapeop--678de16c2174600ae2bd75bf.md) | 116 | `declaration-track:678de16c2174600ae2bd75bf00607c8cbf93fb0f6e3e9aafb89b694a8fc1cb4c` |
| 10 | `def` | [preservesLimitsOfShapeLeftOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantde912cc1ad9f61d6660be2fdf19428d02be3d2609be4d8ad51f6ab595c149985.lean/declarations/preserveslimitsofshapeleftop--9af691a36bb02b4d8747c182.md) | 122 | `declaration-track:9af691a36bb02b4d8747c1828732fceb506261d172057c35d54b45c27ae83afe` |
| 11 | `def` | [preservesLimitsOfShapeRightOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantde912cc1ad9f61d6660be2fdf19428d02be3d2609be4d8ad51f6ab595c149985.lean/declarations/preserveslimitsofshaperightop--0bcd995b4853aa62c4aa73c7.md) | 128 | `declaration-track:0bcd995b4853aa62c4aa73c7e788b18d0cb13d25efb60acac0187c1f173dddeb` |
| 12 | `def` | [preservesLimitsOfShapeUnop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantde912cc1ad9f61d6660be2fdf19428d02be3d2609be4d8ad51f6ab595c149985.lean/declarations/preserveslimitsofshapeunop--8ffa38c86c80237b797dd66c.md) | 134 | `declaration-track:8ffa38c86c80237b797dd66ca5f6413593afe32ffc7c1c779d2ae4506b1dc424` |
| 13 | `def` | [preservesColimitsOfShapeOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantde912cc1ad9f61d6660be2fdf19428d02be3d2609be4d8ad51f6ab595c149985.lean/declarations/preservescolimitsofshapeop--ac9e8944172bf5257b711307.md) | 140 | `declaration-track:ac9e8944172bf5257b71130715219e8992b34a2154b57f1d2b2655dc7d46514b` |
| 14 | `def` | [preservesColimitsOfShapeLeftOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantde912cc1ad9f61d6660be2fdf19428d02be3d2609be4d8ad51f6ab595c149985.lean/declarations/preservescolimitsofshapeleftop--ea983b35c31fd829d9f53e8f.md) | 146 | `declaration-track:ea983b35c31fd829d9f53e8f40f5c3d4d446c260975a37e5406ef612dc6308fd` |
| 15 | `def` | [preservesColimitsOfShapeRightOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantde912cc1ad9f61d6660be2fdf19428d02be3d2609be4d8ad51f6ab595c149985.lean/declarations/preservescolimitsofshaperightop--6de6eb701c6a3fa4450e65a6.md) | 152 | `declaration-track:6de6eb701c6a3fa4450e65a64778b35f2875a7038290650601179f756eb45f24` |
| 16 | `def` | [preservesColimitsOfShapeUnop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantde912cc1ad9f61d6660be2fdf19428d02be3d2609be4d8ad51f6ab595c149985.lean/declarations/preservescolimitsofshapeunop--7bc1bb029c079167ea6f583a.md) | 158 | `declaration-track:7bc1bb029c079167ea6f583a190952116add2ca7cf16fbd7930682de67fd8600` |
| 17 | `def` | [preservesLimitsOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantde912cc1ad9f61d6660be2fdf19428d02be3d2609be4d8ad51f6ab595c149985.lean/declarations/preserveslimitsop--9c5dcbc2c5085c426a8f93a3.md) | 165 | `declaration-track:9c5dcbc2c5085c426a8f93a36a866c7ea84625b0469e37caea3ed177523649a6` |
| 18 | `def` | [preservesLimitsLeftOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantde912cc1ad9f61d6660be2fdf19428d02be3d2609be4d8ad51f6ab595c149985.lean/declarations/preserveslimitsleftop--61e143dd9be3353a61b24db9.md) | 170 | `declaration-track:61e143dd9be3353a61b24db9821e112eae175dba4c6f31fd2424edab99255041` |
| 19 | `def` | [preservesLimitsRightOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantde912cc1ad9f61d6660be2fdf19428d02be3d2609be4d8ad51f6ab595c149985.lean/declarations/preserveslimitsrightop--5687b031814d0aa747f770e3.md) | 175 | `declaration-track:5687b031814d0aa747f770e367d66e830c41a40fb7596848596cba080004c672` |
| 20 | `def` | [preservesLimitsUnop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantde912cc1ad9f61d6660be2fdf19428d02be3d2609be4d8ad51f6ab595c149985.lean/declarations/preserveslimitsunop--0ab8a02ba0cbafdb3ef1d4a0.md) | 180 | `declaration-track:0ab8a02ba0cbafdb3ef1d4a0da5769c2e1658eb65d332d23446d4fa042d1d74b` |
| 21 | `def` | [perservesColimitsOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantde912cc1ad9f61d6660be2fdf19428d02be3d2609be4d8ad51f6ab595c149985.lean/declarations/perservescolimitsop--eb1bfbb8dc5228cccf95950e.md) | 185 | `declaration-track:eb1bfbb8dc5228cccf95950edfc2ef17404adcafad340e6a6867ea35315d2113` |
| 22 | `def` | [preservesColimitsLeftOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantde912cc1ad9f61d6660be2fdf19428d02be3d2609be4d8ad51f6ab595c149985.lean/declarations/preservescolimitsleftop--96a06ed8de1aa75c6f834258.md) | 190 | `declaration-track:96a06ed8de1aa75c6f8342584efd4dd2d80b9d18b32663cf1c3f7afe8711a2af` |
| 23 | `def` | [preservesColimitsRightOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantde912cc1ad9f61d6660be2fdf19428d02be3d2609be4d8ad51f6ab595c149985.lean/declarations/preservescolimitsrightop--df4c372f1fd17653dfe059d4.md) | 195 | `declaration-track:df4c372f1fd17653dfe059d4bc130538780d4d02cbe774c7f3140c6cd9f1d6ad` |
| 24 | `def` | [preservesColimitsUnop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantde912cc1ad9f61d6660be2fdf19428d02be3d2609be4d8ad51f6ab595c149985.lean/declarations/preservescolimitsunop--8cc1d06e5bed1dd5c5631ece.md) | 200 | `declaration-track:8cc1d06e5bed1dd5c5631ececaa0298dea845777beeab6a31ac32abe19faf7c6` |
| 25 | `def` | [preservesFiniteLimitsOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantde912cc1ad9f61d6660be2fdf19428d02be3d2609be4d8ad51f6ab595c149985.lean/declarations/preservesfinitelimitsop--3f9135eb21f82459c4e8b2e8.md) | 214 | `declaration-track:3f9135eb21f82459c4e8b2e8d8bb905ca167f77c5ac4cab7485840ab0614057d` |
| 26 | `def` | [preservesFiniteLimitsLeftOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantde912cc1ad9f61d6660be2fdf19428d02be3d2609be4d8ad51f6ab595c149985.lean/declarations/preservesfinitelimitsleftop--9ea16ae95ee1ff147f0727b6.md) | 220 | `declaration-track:9ea16ae95ee1ff147f0727b6a807bdb16257ed9de59246fef0652c56f53fd4ad` |
| 27 | `def` | [preservesFiniteLimitsRightOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantde912cc1ad9f61d6660be2fdf19428d02be3d2609be4d8ad51f6ab595c149985.lean/declarations/preservesfinitelimitsrightop--1541629c106a344bba204400.md) | 227 | `declaration-track:1541629c106a344bba2044008a08b81a9d733327d3990e2c45d8ac786a57bf2e` |
| 28 | `def` | [preservesFiniteLimitsUnop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantde912cc1ad9f61d6660be2fdf19428d02be3d2609be4d8ad51f6ab595c149985.lean/declarations/preservesfinitelimitsunop--eb592979dd080eb6884e75b8.md) | 234 | `declaration-track:eb592979dd080eb6884e75b8440086fc706263cbe880f5396ed455568e06fcae` |
| 29 | `def` | [preservesFiniteColimitsOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantde912cc1ad9f61d6660be2fdf19428d02be3d2609be4d8ad51f6ab595c149985.lean/declarations/preservesfinitecolimitsop--ff00bf8ca576b822733b0b6c.md) | 241 | `declaration-track:ff00bf8ca576b822733b0b6c323db19429aed50454259786e8b5f67f5aae4a5e` |
| 30 | `def` | [preservesFiniteColimitsLeftOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantde912cc1ad9f61d6660be2fdf19428d02be3d2609be4d8ad51f6ab595c149985.lean/declarations/preservesfinitecolimitsleftop--e84c47a4b1d5c71e4c817294.md) | 247 | `declaration-track:e84c47a4b1d5c71e4c817294f429157cc02cd8584f27d496a1f563cf12c896a3` |
| 31 | `def` | [preservesFiniteColimitsRightOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantde912cc1ad9f61d6660be2fdf19428d02be3d2609be4d8ad51f6ab595c149985.lean/declarations/preservesfinitecolimitsrightop--e2dfbcf96347035afa524f12.md) | 254 | `declaration-track:e2dfbcf96347035afa524f127ca592d218d212c2e8da62f3a06af135a0ca996f` |
| 32 | `def` | [preservesFiniteColimitsUnop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantde912cc1ad9f61d6660be2fdf19428d02be3d2609be4d8ad51f6ab595c149985.lean/declarations/preservesfinitecolimitsunop--f0e485ca7f77563cbaa4dd5b.md) | 261 | `declaration-track:f0e485ca7f77563cbaa4dd5b2a352c26598032a49477e75da312b490cd26796a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
