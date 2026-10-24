# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.VanKampen.Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "84c446cc78642d32e394722750dfdfa6594c127b",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `84c446cc78642d32e394722750dfdfa6594c127b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.FullyFaithful` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Limits` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.CommSq` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.StrictInitial` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FunctorCategory.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.FiniteProductsOfBinaryProducts` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [NatTrans.Equifibered](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean/declarations/nattrans-equifibered--1b4f37405c1aee819b5a9773.md) | 58 | `declaration-track:1b4f37405c1aee819b5a9773cde97d8fd687d5601b5bd09edbb209f339af75a1` |
| 2 | `theorem` | [NatTrans.equifibered_of_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean/declarations/nattrans-equifibered-of-isiso--35b9d791dcd05f5f1af4ed48.md) | 61 | `result-track:35b9d791dcd05f5f1af4ed48ad6e528f4e04352509f0bccabacbe593c354c6fd` |
| 3 | `theorem` | [NatTrans.Equifibered.comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean/declarations/nattrans-equifibered-comp--142fb8698257c5a082447109.md) | 64 | `result-track:142fb8698257c5a082447109531508ea38a205f844e3811566fc6916fe8e060c` |
| 4 | `theorem` | [NatTrans.Equifibered.whiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean/declarations/nattrans-equifibered-whiskerright--6b20c8c1e1998e125ab81fa1.md) | 68 | `result-track:6b20c8c1e1998e125ab81fa1dfc7a85bad8662c3737321fa764d9317bb6e37d1` |
| 5 | `theorem` | [NatTrans.Equifibered.whiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean/declarations/nattrans-equifibered-whiskerleft--656ab626ea75011315e66c6d.md) | 73 | `result-track:656ab626ea75011315e66c6d9cc5c84910e015991c68148416ce0ff2ff373cd5` |
| 6 | `theorem` | [mapPair_equifibered](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean/declarations/mappair-equifibered--b9563cab330d35fcb236bec8.md) | 77 | `result-track:b9563cab330d35fcb236bec88ebe162e366b586e828f6f1892aaa618b9e21f7e` |
| 7 | `theorem` | [NatTrans.equifibered_of_discrete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean/declarations/nattrans-equifibered-of-discrete--7e237159764480a5a2b4ef83.md) | 84 | `result-track:7e237159764480a5a2b4ef839a76f2f80f32dc3727f5fb935df917d295c9fc3d` |
| 8 | `def` | [IsUniversalColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean/declarations/isuniversalcolimit--03d98fe4bbd15bacb7891e94.md) | 93 | `declaration-track:03d98fe4bbd15bacb7891e94c98e407ddcdcc487e6347fe0c9f0b359a104319c` |
| 9 | `def` | [IsVanKampenColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean/declarations/isvankampencolimit--9e9abcdd4973a9658d62faca.md) | 104 | `declaration-track:9e9abcdd4973a9658d62facaac8d87b534a3830c24b9d634741016ef6a4750a0` |
| 10 | `theorem` | [IsVanKampenColimit.isUniversal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean/declarations/isvankampencolimit-isuniversal--f6659d49f2ecf362eea3b176.md) | 109 | `result-track:f6659d49f2ecf362eea3b1765294dc2faf7bad509996c858ea4b7fbf44dc2afe` |
| 11 | `def` | [IsUniversalColimit.isColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean/declarations/isuniversalcolimit-iscolimit--ae8ba340b382b8524bb5b48d.md) | 114 | `declaration-track:ae8ba340b382b8524bb5b48dcb617be8dcf1af682018b6ba7b0421a4a9751621` |
| 12 | `def` | [IsVanKampenColimit.isColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean/declarations/isvankampencolimit-iscolimit--dee4ea95aa1bad0d241a9b63.md) | 122 | `declaration-track:dee4ea95aa1bad0d241a9b63b4c067b6fd45f3f46b1526ad7c5e75f156d36127` |
| 13 | `theorem` | [IsInitial.isVanKampenColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean/declarations/isinitial-isvankampencolimit--e538fe45a703ea7fbee8721d.md) | 126 | `result-track:e538fe45a703ea7fbee8721daa57d9bdbaed2f8dbe3f942afa7da36585442bbf` |
| 14 | `theorem` | [IsUniversalColimit.of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean/declarations/isuniversalcolimit-of-iso--1bd8772ca4c1f573b7428db0.md) | 137 | `result-track:1bd8772ca4c1f573b7428db04954332f4ad9dcb7034f622031e7054d05a0a258` |
| 15 | `theorem` | [IsVanKampenColimit.of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean/declarations/isvankampencolimit-of-iso--294dab179e109f28da8bb094.md) | 149 | `result-track:294dab179e109f28da8bb09402ae41780a86edf4be539bb906a13b85b0f3ff9a` |
| 16 | `theorem` | [IsVanKampenColimit.precompose_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean/declarations/isvankampencolimit-precompose-isiso--80da698f438a405787c59696.md) | 162 | `result-track:80da698f438a405787c59696ffd150ae3930929ee369ae0296b80e0dc9631198` |
| 17 | `theorem` | [IsUniversalColimit.precompose_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean/declarations/isuniversalcolimit-precompose-isiso--edee8d6e3e5e211532644ed7.md) | 177 | `result-track:edee8d6e3e5e211532644ed78c4453a1eba972bcab38c64bfc5e921ff419db9c` |
| 18 | `theorem` | [IsVanKampenColimit.precompose_isIso_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean/declarations/isvankampencolimit-precompose-isiso-iff--3e650398fa773537fd7d0389.md) | 189 | `result-track:3e650398fa773537fd7d038954d94badd90e2706394ac01d2c5bca8fe73a2c48` |
| 19 | `theorem` | [IsUniversalColimit.of_mapCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean/declarations/isuniversalcolimit-of-mapcocone--64b90c5f5e0023b63232925c.md) | 195 | `result-track:64b90c5f5e0023b63232925c3430fa16c83e2397db2835dfbd3c7dceba3da42a` |
| 20 | `theorem` | [IsVanKampenColimit.of_mapCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean/declarations/isvankampencolimit-of-mapcocone--44ed759c25ed98a62a73e531.md) | 203 | `result-track:44ed759c25ed98a62a73e53126cd3094d783fe45b704b91dcffbea955fd06f96` |
| 21 | `theorem` | [IsVanKampenColimit.mapCocone_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean/declarations/isvankampencolimit-mapcocone-iff--974c563099cabe28e7083989.md) | 217 | `result-track:974c563099cabe28e708398904a5b39818aa884f735d7a6611f81f665ac38a53` |
| 22 | `theorem` | [IsUniversalColimit.whiskerEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean/declarations/isuniversalcolimit-whiskerequivalence--20eeb769ce21e3a51778e306.md) | 225 | `result-track:20eeb769ce21e3a51778e30686e5bfd2a2980f153ae0b4f2593ab0c814ea04b8` |
| 23 | `theorem` | [IsUniversalColimit.whiskerEquivalence_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean/declarations/isuniversalcolimit-whiskerequivalence-iff--712f5b11daac010836b5ba3d.md) | 241 | `result-track:712f5b11daac010836b5ba3d0a60610b5c4d2d10d4ac05084b1f2e99875bc3fb` |
| 24 | `theorem` | [IsVanKampenColimit.whiskerEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean/declarations/isvankampencolimit-whiskerequivalence--00a03a1cd6f0a46f2616718a.md) | 247 | `result-track:00a03a1cd6f0a46f2616718ac80f34c5c1004b17ac9e07f3dc0a53b209743405` |
| 25 | `theorem` | [IsVanKampenColimit.whiskerEquivalence_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean/declarations/isvankampencolimit-whiskerequivalence-iff--f8eab67d91e45d67991dd16d.md) | 272 | `result-track:f8eab67d91e45d67991dd16dae11fce7dd0bca12d60da0c11cdbab6e56178af9` |
| 26 | `theorem` | [isVanKampenColimit_of_evaluation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean/declarations/isvankampencolimit-of-evaluation--bd56a90d136f6f81399952d6.md) | 278 | `result-track:bd56a90d136f6f81399952d6dfc063d58d9f89dbd4613ae7094d0366dc3411a6` |
| 27 | `theorem` | [IsUniversalColimit.map_reflective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean/declarations/isuniversalcolimit-map-reflective--62c68f06a23b67b145d4d516.md) | 301 | `result-track:62c68f06a23b67b145d4d51684eb35cbff030bffbe6dc6ceddbed0931fcbce74` |
| 28 | `theorem` | [IsVanKampenColimit.map_reflective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean/declarations/isvankampencolimit-map-reflective--e92189112a49787eac121094.md) | 403 | `result-track:e92189112a49787eac1210947630e65b1ab1c8548d3465343e4e4076bc1157e6` |
| 29 | `theorem` | [hasStrictInitial_of_isUniversal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean/declarations/hasstrictinitial-of-isuniversal--97d2831022cf859fd771aace.md) | 463 | `result-track:97d2831022cf859fd771aacef1298f4ed659a7d6ec8e6ac1cd0b67e937704d74` |
| 30 | `theorem` | [isVanKampenColimit_of_isEmpty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean/declarations/isvankampencolimit-of-isempty--3ad98c121bb69f900d35bfcc.md) | 477 | `result-track:3ad98c121bb69f900d35bfcc488b3775b52c477b095005763d772b54f66b4603` |
| 31 | `theorem` | [BinaryCofan.isVanKampen_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean/declarations/binarycofan-isvankampen-iff--e7acb4dc93f3fc62c0e120f1.md) | 496 | `result-track:e7acb4dc93f3fc62c0e120f1ad1ab5ec1f7ac2aed6b23ea89289db153d6c9f81` |
| 32 | `theorem` | [BinaryCofan.isVanKampen_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean/declarations/binarycofan-isvankampen-mk--7645560794a0901760533a20.md) | 527 | `result-track:7645560794a0901760533a2027c4352297196900e297b5e48a362f85e57ceab8` |
| 33 | `theorem` | [BinaryCofan.mono_inr_of_isVanKampen](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean/declarations/binarycofan-mono-inr-of-isvankampen--bf485cea9b307b2d87d6bcf0.md) | 566 | `result-track:bf485cea9b307b2d87d6bcf00ff636b2d56d46ee39dbe0aabbb46e9b95a649c6` |
| 34 | `theorem` | [BinaryCofan.isPullback_initial_to_of_isVanKampen](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean/declarations/binarycofan-ispullback-initial-to-of-isvankampen--e79af193dfbda64d72152b17.md) | 576 | `result-track:e79af193dfbda64d72152b17e66f5d303fc2213f00fa84a009f1e0bac27c52e8` |
| 35 | `theorem` | [isUniversalColimit_extendCofan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean/declarations/isuniversalcolimit-extendcofan--b237376e12d621919491d24e.md) | 589 | `result-track:b237376e12d621919491d24e74e1e52141bc8d8071fb9137eeb20a449f5b0199` |
| 36 | `theorem` | [isVanKampenColimit_extendCofan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean/declarations/isvankampencolimit-extendcofan--4d41181ea0f803dff7e7a6f0.md) | 648 | `result-track:4d41181ea0f803dff7e7a6f032d01dd66ef38e65e95542fa89b8989a4f8b48d8` |
| 37 | `theorem` | [isPullback_of_cofan_isVanKampen](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean/declarations/ispullback-of-cofan-isvankampen--f20eb328faead783bb9c41d0.md) | 717 | `result-track:f20eb328faead783bb9c41d090737cc1589bcc403da8cd5d0b0d193b71b6b9ab` |
| 38 | `theorem` | [isPullback_initial_to_of_cofan_isVanKampen](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean/declarations/ispullback-initial-to-of-cofan-isvankampen--87fc3fd895680cd558cb38ee.md) | 745 | `result-track:87fc3fd895680cd558cb38ee0b28f40d5769b5e21b8ec1abb9fa227e8e13b5ee` |
| 39 | `theorem` | [mono_of_cofan_isVanKampen](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean/declarations/mono-of-cofan-isvankampen--395b7470b4b83cbcddf60fa4.md) | 758 | `result-track:395b7470b4b83cbcddf60fa46788b03213f1e1aefa2a716a14b7564da99984ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
