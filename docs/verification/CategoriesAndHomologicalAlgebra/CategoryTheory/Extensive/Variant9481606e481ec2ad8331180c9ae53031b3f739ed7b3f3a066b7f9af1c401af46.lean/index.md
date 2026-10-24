# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Extensive.Variant9481606e481ec2ad8331180c9ae53031b3f739ed7b3f3a066b7f9af1c401af46

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a4991374a771c850642dcbc1fdc2e28712742f0",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant9481606e481ec2ad8331180c9ae53031b3f739ed7b3f3a066b7f9af1c401af46.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant9481606e481ec2ad8331180c9ae53031b3f739ed7b3f3a066b7f9af1c401af46.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant9481606e481ec2ad8331180c9ae53031b3f739ed7b3f3a066b7f9af1c401af46.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a4991374a771c850642dcbc1fdc2e28712742f0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant9481606e481ec2ad8331180c9ae53031b3f739ed7b3f3a066b7f9af1c401af46.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant9481606e481ec2ad8331180c9ae53031b3f739ed7b3f3a066b7f9af1c401af46.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.CommSq` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.StrictInitial` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Types` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Limits.Pullbacks` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FunctorCategory` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [NatTrans.Equifibered](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant9481606e481ec2ad8331180c9ae53031b3f739ed7b3f3a066b7f9af1c401af46.lean/declarations/nattrans-equifibered--2c25c228c4cc3f8f25a750a6.md) | 64 | `declaration-track:2c25c228c4cc3f8f25a750a6bdfe1a6eb3d7e644555c4fd37da360377f855be4` |
| 2 | `theorem` | [NatTrans.equifibered_of_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant9481606e481ec2ad8331180c9ae53031b3f739ed7b3f3a066b7f9af1c401af46.lean/declarations/nattrans-equifibered-of-isiso--6857deb6bdcefca13c5e6d03.md) | 68 | `result-track:6857deb6bdcefca13c5e6d03cea8ae834d5d6e2b6322d913b34594c001defb1e` |
| 3 | `theorem` | [NatTrans.Equifibered.comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant9481606e481ec2ad8331180c9ae53031b3f739ed7b3f3a066b7f9af1c401af46.lean/declarations/nattrans-equifibered-comp--9b08895e9679d6a1eb9770ed.md) | 72 | `result-track:9b08895e9679d6a1eb9770ed22025af7674c4e3b8297e00083cbacd1a65ffd0f` |
| 4 | `def` | [IsUniversalColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant9481606e481ec2ad8331180c9ae53031b3f739ed7b3f3a066b7f9af1c401af46.lean/declarations/isuniversalcolimit--b38bb0b36ca2e2bdd897f489.md) | 78 | `declaration-track:b38bb0b36ca2e2bdd897f489b4cbd9449b549426da7804c413b4f761064574d3` |
| 5 | `def` | [IsVanKampenColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant9481606e481ec2ad8331180c9ae53031b3f739ed7b3f3a066b7f9af1c401af46.lean/declarations/isvankampencolimit--642a991937b7e943e021f43f.md) | 90 | `declaration-track:642a991937b7e943e021f43f8381b483d37626d07dfc892dd2539c5392749147` |
| 6 | `theorem` | [IsVanKampenColimit.isUniversal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant9481606e481ec2ad8331180c9ae53031b3f739ed7b3f3a066b7f9af1c401af46.lean/declarations/isvankampencolimit-isuniversal--12ac69915e38df05002a8e49.md) | 96 | `result-track:12ac69915e38df05002a8e4928a8c66e8216ba909a21f28bb8aa3348864ee0cc` |
| 7 | `def` | [IsVanKampenColimit.isColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant9481606e481ec2ad8331180c9ae53031b3f739ed7b3f3a066b7f9af1c401af46.lean/declarations/isvankampencolimit-iscolimit--68c4ebf4d116135228dfea93.md) | 102 | `declaration-track:68c4ebf4d116135228dfea931d8996b1ae6793160c0531f79bc78f58b57272ff` |
| 8 | `theorem` | [IsInitial.isVanKampenColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant9481606e481ec2ad8331180c9ae53031b3f739ed7b3f3a066b7f9af1c401af46.lean/declarations/isinitial-isvankampencolimit--c8113d2e234b813291058856.md) | 110 | `result-track:c8113d2e234b813291058856d83ed1933ea0f819ed8938df4c27c18caec1b006` |
| 9 | `class` | [FinitaryExtensive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant9481606e481ec2ad8331180c9ae53031b3f739ed7b3f3a066b7f9af1c401af46.lean/declarations/finitaryextensive--142b6da3d5e2e7baa034c65a.md) | 128 | `declaration-track:142b6da3d5e2e7baa034c65ab37c6fb00e90fa8c77dd7d656d0ae0fdd36b496e` |
| 10 | `theorem` | [FinitaryExtensive.vanKampen](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant9481606e481ec2ad8331180c9ae53031b3f739ed7b3f3a066b7f9af1c401af46.lean/declarations/finitaryextensive-vankampen--47cef76d9a4b32e903078aaf.md) | 136 | `result-track:47cef76d9a4b32e903078aaf748c9e7c111992bc23bafb38b49e89f77d2aafb8` |
| 11 | `theorem` | [mapPair_equifibered](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant9481606e481ec2ad8331180c9ae53031b3f739ed7b3f3a066b7f9af1c401af46.lean/declarations/mappair-equifibered--941a8d2a4e42007153b5b6eb.md) | 149 | `result-track:941a8d2a4e42007153b5b6eb0c4d66c3ed48b936eaa8dbdb48c5353d84153ace` |
| 12 | `theorem` | [BinaryCofan.isVanKampen_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant9481606e481ec2ad8331180c9ae53031b3f739ed7b3f3a066b7f9af1c401af46.lean/declarations/binarycofan-isvankampen-iff--6cad13592adfd293bc787fc4.md) | 157 | `result-track:6cad13592adfd293bc787fc4a2848f7d9c2a680b2429c1066b2015111b68ae23` |
| 13 | `theorem` | [BinaryCofan.isVanKampen_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant9481606e481ec2ad8331180c9ae53031b3f739ed7b3f3a066b7f9af1c401af46.lean/declarations/binarycofan-isvankampen-mk--3120d1364115004857ff60a0.md) | 189 | `result-track:3120d1364115004857ff60a094de79b2d5463045e55958fc966e2ec383b2b834` |
| 14 | `theorem` | [BinaryCofan.mono_inr_of_isVanKampen](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant9481606e481ec2ad8331180c9ae53031b3f739ed7b3f3a066b7f9af1c401af46.lean/declarations/binarycofan-mono-inr-of-isvankampen--4e25541d588e09ba90ba8569.md) | 230 | `result-track:4e25541d588e09ba90ba85697278cbe9ec188f4a93aa1b583ac933a3bb6f0962` |
| 15 | `theorem` | [FinitaryExtensive.mono_inr_of_isColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant9481606e481ec2ad8331180c9ae53031b3f739ed7b3f3a066b7f9af1c401af46.lean/declarations/finitaryextensive-mono-inr-of-iscolimit--1ca276f39bb918d4113d1213.md) | 241 | `result-track:1ca276f39bb918d4113d121390bf626af65a649d74028fbbe3e1c9d4291b18e2` |
| 16 | `theorem` | [FinitaryExtensive.mono_inl_of_isColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant9481606e481ec2ad8331180c9ae53031b3f739ed7b3f3a066b7f9af1c401af46.lean/declarations/finitaryextensive-mono-inl-of-iscolimit--89556cc7767c8b8c99538be6.md) | 246 | `result-track:89556cc7767c8b8c99538be6c1c75a860715a0bbc6b4eb1fae344d66fbb02117` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant9481606e481ec2ad8331180c9ae53031b3f739ed7b3f3a066b7f9af1c401af46.lean/declarations/instance--8384be9393c0ca494c2026d0.md) | 251 | `declaration-track:8384be9393c0ca494c2026d02dc6de909e6812379cc4864b6c74dd5126f428b9` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant9481606e481ec2ad8331180c9ae53031b3f739ed7b3f3a066b7f9af1c401af46.lean/declarations/instance--89d07361f01ed287e922a907.md) | 254 | `declaration-track:89d07361f01ed287e922a907199c1474222368da993619c25b7f16e7fbc930f1` |
| 19 | `theorem` | [BinaryCofan.isPullback_initial_to_of_isVanKampen](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant9481606e481ec2ad8331180c9ae53031b3f739ed7b3f3a066b7f9af1c401af46.lean/declarations/binarycofan-ispullback-initial-to-of-isvankampen--2a7663291dc3ff523adf546a.md) | 257 | `result-track:2a7663291dc3ff523adf546a7e38e815e3ad8db46389f451d72357e41214deed` |
| 20 | `theorem` | [FinitaryExtensive.isPullback_initial_to_binaryCofan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant9481606e481ec2ad8331180c9ae53031b3f739ed7b3f3a066b7f9af1c401af46.lean/declarations/finitaryextensive-ispullback-initial-to-binarycofan--85b126b017a43404f3f82c24.md) | 267 | `result-track:85b126b017a43404f3f82c24e7f31650421ea631cd6df4d6b2ff88b3c43e6f80` |
| 21 | `theorem` | [hasStrictInitial_of_isUniversal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant9481606e481ec2ad8331180c9ae53031b3f739ed7b3f3a066b7f9af1c401af46.lean/declarations/hasstrictinitial-of-isuniversal--e89fa187ca5961bd335c3f15.md) | 273 | `result-track:e89fa187ca5961bd335c3f15fc5c5d4e4a2e8ace19aef1ca5ab335ad1d623b1a` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant9481606e481ec2ad8331180c9ae53031b3f739ed7b3f3a066b7f9af1c401af46.lean/declarations/instance--63d4b674ed761b4bccc26a2d.md) | 288 | `declaration-track:63d4b674ed761b4bccc26a2de9fbdfbabbfd3d2f0e593ee3c081f657524f58d9` |
| 23 | `theorem` | [finitaryExtensive_iff_of_isTerminal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant9481606e481ec2ad8331180c9ae53031b3f739ed7b3f3a066b7f9af1c401af46.lean/declarations/finitaryextensive-iff-of-isterminal--9cd9f2d45d2c498ade37a4c0.md) | 296 | `result-track:9cd9f2d45d2c498ade37a4c0a4d4d9be9e179f6fd60f116cbea70ef861749d6b` |
| 24 | `instance` | [types.finitaryExtensive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant9481606e481ec2ad8331180c9ae53031b3f739ed7b3f3a066b7f9af1c401af46.lean/declarations/types-finitaryextensive--fff71380f6027a593c3e9767.md) | 311 | `declaration-track:fff71380f6027a593c3e9767849d3b1d9de97040312d3fb48cffbc3f66a02edd` |
| 25 | `def` | [finitaryExtensiveTopCatAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant9481606e481ec2ad8331180c9ae53031b3f739ed7b3f3a066b7f9af1c401af46.lean/declarations/finitaryextensivetopcataux--d95bf78f75523e3efbf2d5fc.md) | 384 | `declaration-track:d95bf78f75523e3efbf2d5fc361ea1303061eef84a0026b242e86741e53b5afc` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant9481606e481ec2ad8331180c9ae53031b3f739ed7b3f3a066b7f9af1c401af46.lean/declarations/instance--f286a1d0b1d94d0a2b6c195c.md) | 461 | `declaration-track:f286a1d0b1d94d0a2b6c195c12d8ff1dd580460224a60699dff32007a84f1195` |
| 27 | `theorem` | [NatTrans.Equifibered.whiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant9481606e481ec2ad8331180c9ae53031b3f739ed7b3f3a066b7f9af1c401af46.lean/declarations/nattrans-equifibered-whiskerright--115447a48f1da4f9dfd17e9f.md) | 513 | `result-track:115447a48f1da4f9dfd17e9f3afe82aa1b010d26831a996d84bc26c71c355074` |
| 28 | `theorem` | [IsVanKampenColimit.of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant9481606e481ec2ad8331180c9ae53031b3f739ed7b3f3a066b7f9af1c401af46.lean/declarations/isvankampencolimit-of-iso--248b4aabe5657da332603f16.md) | 518 | `result-track:248b4aabe5657da332603f16b8953576ed884a3d1b689a9e7897ed3167879487` |
| 29 | `theorem` | [IsVanKampenColimit.of_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant9481606e481ec2ad8331180c9ae53031b3f739ed7b3f3a066b7f9af1c401af46.lean/declarations/isvankampencolimit-of-map--962afa26553ff1ab906d3e9d.md) | 532 | `result-track:962afa26553ff1ab906d3e9d732b492251c552cad368880945ab23713dfe78dc` |
| 30 | `theorem` | [isVanKampenColimit_of_evaluation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant9481606e481ec2ad8331180c9ae53031b3f739ed7b3f3a066b7f9af1c401af46.lean/declarations/isvankampencolimit-of-evaluation--189c2730022113452801a35b.md) | 544 | `result-track:189c2730022113452801a35bff3dd9ce44ffd667fa9c435875598224a7ba7bf4` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant9481606e481ec2ad8331180c9ae53031b3f739ed7b3f3a066b7f9af1c401af46.lean/declarations/instance--ef366816d83d5584cc96d4c8.md) | 564 | `declaration-track:ef366816d83d5584cc96d4c81e36926ca9dc783a3b5bf4439845957b574f7a3e` |
| 32 | `theorem` | [finitaryExtensive_of_preserves_and_reflects](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant9481606e481ec2ad8331180c9ae53031b3f739ed7b3f3a066b7f9af1c401af46.lean/declarations/finitaryextensive-of-preserves-and-reflects--14b8824ebac8679e35a2370c.md) | 569 | `result-track:14b8824ebac8679e35a2370c6c9235d63249cd848333d76d06efa5125e163b87` |
| 33 | `theorem` | [finitaryExtensive_of_preserves_and_reflects_isomorphism](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant9481606e481ec2ad8331180c9ae53031b3f739ed7b3f3a066b7f9af1c401af46.lean/declarations/finitaryextensive-of-preserves-and-reflects-isomorphism--5e87f773b64f468b3b61a34e.md) | 576 | `result-track:5e87f773b64f468b3b61a34e71d189e53211e128b4a052c99549ce8d2cd44bc4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
