# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EpiMono.Variantfa3e1b162ce84882ed52b2a8a77e3d4d77d1386f41e0b91a703198241d590787

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55cc0ac4e900f33473a80f1ff4bf3fd904a41ce1",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantfa3e1b162ce84882ed52b2a8a77e3d4d77d1386f41e0b91a703198241d590787.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantfa3e1b162ce84882ed52b2a8a77e3d4d77d1386f41e0b91a703198241d590787.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantfa3e1b162ce84882ed52b2a8a77e3d4d77d1386f41e0b91a703198241d590787.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55cc0ac4e900f33473a80f1ff4bf3fd904a41ce1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantfa3e1b162ce84882ed52b2a8a77e3d4d77d1386f41e0b91a703198241d590787.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantfa3e1b162ce84882ed52b2a8a77e3d4d77d1386f41e0b91a703198241d590787.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.EpiMono` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.StrongEpi` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.LiftingProperties.Adjunction` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [PreservesMonomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantfa3e1b162ce84882ed52b2a8a77e3d4d77d1386f41e0b91a703198241d590787.lean/declarations/preservesmonomorphisms--219a6114a49542e2f83e5e17.md) | 30 | `declaration-track:219a6114a49542e2f83e5e1761878325c9a7fb8bc9ac9b0e5dfda06d21104d76` |
| 2 | `instance` | [map_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantfa3e1b162ce84882ed52b2a8a77e3d4d77d1386f41e0b91a703198241d590787.lean/declarations/map-mono--846113eaa6a73b8b4a0efef6.md) | 35 | `declaration-track:846113eaa6a73b8b4a0efef6086a2ef2e0b96c1af0ec4892479400a2c31dc765` |
| 3 | `class` | [PreservesEpimorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantfa3e1b162ce84882ed52b2a8a77e3d4d77d1386f41e0b91a703198241d590787.lean/declarations/preservesepimorphisms--495ba27224d94fc9a61365ec.md) | 41 | `declaration-track:495ba27224d94fc9a61365ece7504826aea15f424787bd07e1e2a83d25ea3191` |
| 4 | `instance` | [map_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantfa3e1b162ce84882ed52b2a8a77e3d4d77d1386f41e0b91a703198241d590787.lean/declarations/map-epi--0811620c9c1749ce36e7e418.md) | 46 | `declaration-track:0811620c9c1749ce36e7e4189bd2da20825e61cbfead1a69d8b8daa1e72932b4` |
| 5 | `class` | [ReflectsMonomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantfa3e1b162ce84882ed52b2a8a77e3d4d77d1386f41e0b91a703198241d590787.lean/declarations/reflectsmonomorphisms--9a5239a7169f7e75cc4c9763.md) | 53 | `declaration-track:9a5239a7169f7e75cc4c9763dc0313654c088e3ed99f7e6b089f80e9a7058e05` |
| 6 | `theorem` | [mono_of_mono_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantfa3e1b162ce84882ed52b2a8a77e3d4d77d1386f41e0b91a703198241d590787.lean/declarations/mono-of-mono-map--d3e43e99810e96b9a8fd8341.md) | 59 | `result-track:d3e43e99810e96b9a8fd83418bc46294783f3af466fb4a500bf02308425fa750` |
| 7 | `class` | [ReflectsEpimorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantfa3e1b162ce84882ed52b2a8a77e3d4d77d1386f41e0b91a703198241d590787.lean/declarations/reflectsepimorphisms--7079fce762bebb2de5b9b9dc.md) | 66 | `declaration-track:7079fce762bebb2de5b9b9dc721b4a87716544b7f528d627d923731fcb16f89b` |
| 8 | `theorem` | [epi_of_epi_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantfa3e1b162ce84882ed52b2a8a77e3d4d77d1386f41e0b91a703198241d590787.lean/declarations/epi-of-epi-map--35412e2960a95056502073d8.md) | 72 | `result-track:35412e2960a95056502073d815a0895f6caf6dafc7873a1b3d7a229e52fb4a73` |
| 9 | `instance` | [preservesMonomorphisms_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantfa3e1b162ce84882ed52b2a8a77e3d4d77d1386f41e0b91a703198241d590787.lean/declarations/preservesmonomorphisms-comp--03f0827a24602360c4a847f2.md) | 77 | `declaration-track:03f0827a24602360c4a847f2c5102b6d0cf65fb64019126786ef44fce353db14` |
| 10 | `instance` | [preservesEpimorphisms_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantfa3e1b162ce84882ed52b2a8a77e3d4d77d1386f41e0b91a703198241d590787.lean/declarations/preservesepimorphisms-comp--8342f60ce91c9e70ec36af0f.md) | 84 | `declaration-track:8342f60ce91c9e70ec36af0f749ba2efac6edd4cd8ed21fca45a0eebcc52f8e0` |
| 11 | `instance` | [reflectsMonomorphisms_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantfa3e1b162ce84882ed52b2a8a77e3d4d77d1386f41e0b91a703198241d590787.lean/declarations/reflectsmonomorphisms-comp--4121c57a71f1b133e20e8921.md) | 91 | `declaration-track:4121c57a71f1b133e20e8921cc17bb7beddd389259bb79b9715096aec08df5b6` |
| 12 | `instance` | [reflectsEpimorphisms_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantfa3e1b162ce84882ed52b2a8a77e3d4d77d1386f41e0b91a703198241d590787.lean/declarations/reflectsepimorphisms-comp--3adb637caa7e8857e89486ce.md) | 96 | `declaration-track:3adb637caa7e8857e89486ced722239b9aee52ddffbe07de81b68ca757c959ac` |
| 13 | `theorem` | [preservesEpimorphisms_of_preserves_of_reflects](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantfa3e1b162ce84882ed52b2a8a77e3d4d77d1386f41e0b91a703198241d590787.lean/declarations/preservesepimorphisms-of-preserves-of-reflects--029557afb9a15ea826bba0b3.md) | 101 | `result-track:029557afb9a15ea826bba0b322ddf22d002883568b2419b013201935e50d894f` |
| 14 | `theorem` | [preservesMonomorphisms_of_preserves_of_reflects](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantfa3e1b162ce84882ed52b2a8a77e3d4d77d1386f41e0b91a703198241d590787.lean/declarations/preservesmonomorphisms-of-preserves-of-reflects--6c2952260a28a30825d179a4.md) | 106 | `result-track:6c2952260a28a30825d179a4d262bdfb8edc47c0b131c757f12cd41c17f2bc2a` |
| 15 | `theorem` | [reflectsEpimorphisms_of_preserves_of_reflects](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantfa3e1b162ce84882ed52b2a8a77e3d4d77d1386f41e0b91a703198241d590787.lean/declarations/reflectsepimorphisms-of-preserves-of-reflects--9b497c89c9a98770c3fd68e2.md) | 111 | `result-track:9b497c89c9a98770c3fd68e26700a470c7d5217e0b56f61ec378414bc2c53236` |
| 16 | `theorem` | [reflectsMonomorphisms_of_preserves_of_reflects](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantfa3e1b162ce84882ed52b2a8a77e3d4d77d1386f41e0b91a703198241d590787.lean/declarations/reflectsmonomorphisms-of-preserves-of-reflects--5631b55f25f5060c99d9b097.md) | 116 | `result-track:5631b55f25f5060c99d9b0974a9dfd1bd7c98ef70e6c2a996ed9e949b0d1d089` |
| 17 | `theorem` | [preservesMonomorphisms.of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantfa3e1b162ce84882ed52b2a8a77e3d4d77d1386f41e0b91a703198241d590787.lean/declarations/preservesmonomorphisms-of-iso--f7da2535054d7d41feb03e9b.md) | 121 | `result-track:f7da2535054d7d41feb03e9b43d6021553c5a4e4e7220e93dbf4d50642ee8791` |
| 18 | `theorem` | [preservesMonomorphisms.iso_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantfa3e1b162ce84882ed52b2a8a77e3d4d77d1386f41e0b91a703198241d590787.lean/declarations/preservesmonomorphisms-iso-iff--88f36448c65a215ec25ac610.md) | 129 | `result-track:88f36448c65a215ec25ac61081c3a27a6ae3bf46cb1eafeb8264b176e5132cf9` |
| 19 | `theorem` | [preservesEpimorphisms.of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantfa3e1b162ce84882ed52b2a8a77e3d4d77d1386f41e0b91a703198241d590787.lean/declarations/preservesepimorphisms-of-iso--b018d1197d721e6c97f4d468.md) | 134 | `result-track:b018d1197d721e6c97f4d468118b5fdfa29f53b377379b65e82fb2e4f0b87561` |
| 20 | `theorem` | [preservesEpimorphisms.iso_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantfa3e1b162ce84882ed52b2a8a77e3d4d77d1386f41e0b91a703198241d590787.lean/declarations/preservesepimorphisms-iso-iff--2783da75da0ba92700ab4c0d.md) | 142 | `result-track:2783da75da0ba92700ab4c0d85f30c1f0b1fc78a26e94598e23aaefa13588729` |
| 21 | `theorem` | [reflectsMonomorphisms.of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantfa3e1b162ce84882ed52b2a8a77e3d4d77d1386f41e0b91a703198241d590787.lean/declarations/reflectsmonomorphisms-of-iso--fa8fb5689a70883268617246.md) | 147 | `result-track:fa8fb5689a70883268617246b36deb68c91689a8a63e3f427df87d89f2f9a0b8` |
| 22 | `theorem` | [reflectsMonomorphisms.iso_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantfa3e1b162ce84882ed52b2a8a77e3d4d77d1386f41e0b91a703198241d590787.lean/declarations/reflectsmonomorphisms-iso-iff--4b1f16b785448e2ae4c5ee2c.md) | 156 | `result-track:4b1f16b785448e2ae4c5ee2c877307a5dab5f5b028958e5edd4e5a6c126ee3e1` |
| 23 | `theorem` | [reflectsEpimorphisms.of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantfa3e1b162ce84882ed52b2a8a77e3d4d77d1386f41e0b91a703198241d590787.lean/declarations/reflectsepimorphisms-of-iso--86c0e50aab9e3958e01157a4.md) | 161 | `result-track:86c0e50aab9e3958e01157a4d9da8b92ab0e9cfa5b52f136ce147c33603c723b` |
| 24 | `theorem` | [reflectsEpimorphisms.iso_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantfa3e1b162ce84882ed52b2a8a77e3d4d77d1386f41e0b91a703198241d590787.lean/declarations/reflectsepimorphisms-iso-iff--429a83aa8f0099cfc7065ae6.md) | 170 | `result-track:429a83aa8f0099cfc7065ae6ee5fb311c4f9ed52cd079997d70a56b1da64b44e` |
| 25 | `theorem` | [preservesEpimorphsisms_of_adjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantfa3e1b162ce84882ed52b2a8a77e3d4d77d1386f41e0b91a703198241d590787.lean/declarations/preservesepimorphsisms-of-adjunction--6000015e384c9778964645c5.md) | 175 | `result-track:6000015e384c9778964645c53888376a1c53a0a04061a722b34a391410fe6c37` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantfa3e1b162ce84882ed52b2a8a77e3d4d77d1386f41e0b91a703198241d590787.lean/declarations/instance--ea3ef84013e787d3a8ff0b17.md) | 185 | `declaration-track:ea3ef84013e787d3a8ff0b17d1bdbfc7da81ba164b52d67533623cde75d0071e` |
| 27 | `theorem` | [preservesMonomorphisms_of_adjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantfa3e1b162ce84882ed52b2a8a77e3d4d77d1386f41e0b91a703198241d590787.lean/declarations/preservesmonomorphisms-of-adjunction--1fabee4b2c6ab276d4810b4d.md) | 190 | `result-track:1fabee4b2c6ab276d4810b4d44dcaf8a51da2b8e5168b708190bd542cc5bb236` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantfa3e1b162ce84882ed52b2a8a77e3d4d77d1386f41e0b91a703198241d590787.lean/declarations/instance--bcd0f9354e02a70f36ef7640.md) | 200 | `declaration-track:bcd0f9354e02a70f36ef76403058ee1a88558c071952c925e25ad483c018cb9f` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantfa3e1b162ce84882ed52b2a8a77e3d4d77d1386f41e0b91a703198241d590787.lean/declarations/instance--c30146f55c50af6bf0c0b4cb.md) | 205 | `declaration-track:c30146f55c50af6bf0c0b4cb2cd76402b1e627a9795bedfb1663b7fc4d7bf316` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantfa3e1b162ce84882ed52b2a8a77e3d4d77d1386f41e0b91a703198241d590787.lean/declarations/instance--5609c60ac91d6d366fb757dd.md) | 212 | `declaration-track:5609c60ac91d6d366fb757ddbd1762b1aea8ac0b7fb15ae318044dc286090230` |
| 31 | `def` | [splitEpiEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantfa3e1b162ce84882ed52b2a8a77e3d4d77d1386f41e0b91a703198241d590787.lean/declarations/splitepiequiv--8ef2c3a354bd3e996f152a55.md) | 224 | `declaration-track:8ef2c3a354bd3e996f152a55074a1ea853a53e6ce0e4947e5c0441bffaec7cd1` |
| 32 | `theorem` | [isSplitEpi_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantfa3e1b162ce84882ed52b2a8a77e3d4d77d1386f41e0b91a703198241d590787.lean/declarations/issplitepi-iff--6f2ebd7ca4348a19c1bb1329.md) | 241 | `result-track:6f2ebd7ca4348a19c1bb1329b5979a5b4b7a6ae8571e72597d02fd919cb936ac` |
| 33 | `def` | [splitMonoEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantfa3e1b162ce84882ed52b2a8a77e3d4d77d1386f41e0b91a703198241d590787.lean/declarations/splitmonoequiv--8e7991a6fddc338f4c5d797f.md) | 250 | `declaration-track:8e7991a6fddc338f4c5d797f233efbd0cea80cd9e5299b2a72f7ff53699a5785` |
| 34 | `theorem` | [isSplitMono_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantfa3e1b162ce84882ed52b2a8a77e3d4d77d1386f41e0b91a703198241d590787.lean/declarations/issplitmono-iff--e133b974171ada9d9d436254.md) | 267 | `result-track:e133b974171ada9d9d4362542bc5c398199901fba9082250277793b14cfe1e97` |
| 35 | `theorem` | [epi_map_iff_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantfa3e1b162ce84882ed52b2a8a77e3d4d77d1386f41e0b91a703198241d590787.lean/declarations/epi-map-iff-epi--9a108d4ba45d39b176fbaa01.md) | 276 | `result-track:9a108d4ba45d39b176fbaa01d779e83489498ed1ecbc08486b4cda3420b0d3e8` |
| 36 | `theorem` | [mono_map_iff_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantfa3e1b162ce84882ed52b2a8a77e3d4d77d1386f41e0b91a703198241d590787.lean/declarations/mono-map-iff-mono--6abcc97dfd6c11113078550d.md) | 285 | `result-track:6abcc97dfd6c11113078550da12501c0e942e38e9e628527e402bbc0d7d0b815` |
| 37 | `theorem` | [splitEpiCategoryImpOfIsEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantfa3e1b162ce84882ed52b2a8a77e3d4d77d1386f41e0b91a703198241d590787.lean/declarations/splitepicategoryimpofisequivalence--de462e25b7b842ac5a243de6.md) | 295 | `result-track:de462e25b7b842ac5a243de657f8b0605e62e2e96c8d4958441757a37331ebf4` |
| 38 | `theorem` | [strongEpi_map_of_strongEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantfa3e1b162ce84882ed52b2a8a77e3d4d77d1386f41e0b91a703198241d590787.lean/declarations/strongepi-map-of-strongepi--a200e61a4816c77de08243b4.md) | 311 | `result-track:a200e61a4816c77de08243b4e0bc86c468eacd819744f73a97760df0e8d296c1` |
| 39 | `instance` | [strongEpi_map_of_isEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantfa3e1b162ce84882ed52b2a8a77e3d4d77d1386f41e0b91a703198241d590787.lean/declarations/strongepi-map-of-isequivalence--c95ed32073c4db3ea887e54f.md) | 319 | `declaration-track:c95ed32073c4db3ea887e54f2ae542e58dbdb0763af93ecbf52b25e06897d9ed` |
| 40 | `theorem` | [strongEpi_map_iff_strongEpi_of_isEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantfa3e1b162ce84882ed52b2a8a77e3d4d77d1386f41e0b91a703198241d590787.lean/declarations/strongepi-map-iff-strongepi-of-isequivalence--b373476a375eaf7b5f5e908b.md) | 331 | `result-track:b373476a375eaf7b5f5e908b285f50caddd2c7460cb792755c511ea826d447f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
