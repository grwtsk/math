# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Flat.Variantc21d9f7d392205b1300fa86d31c147f0d0bae624f165a59c98a92c00c9115031

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40989c7116793ec853b080dfd895379c47c742ba",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variantc21d9f7d392205b1300fa86d31c147f0d0bae624f165a59c98a92c00c9115031.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variantc21d9f7d392205b1300fa86d31c147f0d0bae624f165a59c98a92c00c9115031.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variantc21d9f7d392205b1300fa86d31c147f0d0bae624f165a59c98a92c00c9115031.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40989c7116793ec853b080dfd895379c47c742ba`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variantc21d9f7d392205b1300fa86d31c147f0d0bae624f165a59c98a92c00c9115031.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variantc21d9f7d392205b1300fa86d31c147f0d0bae624f165a59c98a92c00c9115031.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [RepresentablyFlat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variantc21d9f7d392205b1300fa86d31c147f0d0bae624f165a59c98a92c00c9115031.lean/declarations/representablyflat--5234a46e0713eaf2378ddc24.md) | 70 | `declaration-track:5234a46e0713eaf2378ddc24d0cb07417a50dc503c9c6ba573c7101e10ee7ab9` |
| 2 | `class` | [RepresentablyCoflat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variantc21d9f7d392205b1300fa86d31c147f0d0bae624f165a59c98a92c00c9115031.lean/declarations/representablycoflat--c58fb69f86d4765328b2847c.md) | 75 | `declaration-track:c58fb69f86d4765328b2847cfeeb9781e13ae2df49d4cebebcfcfc8ebb4a9482` |
| 3 | `instance` | [RepresentablyFlat.of_isRightAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variantc21d9f7d392205b1300fa86d31c147f0d0bae624f165a59c98a92c00c9115031.lean/declarations/representablyflat-of-isrightadjoint--42c3b4c8f3a69dda25a62b93.md) | 82 | `declaration-track:42c3b4c8f3a69dda25a62b93c37ac74b07c12342e735123dcbb136f7f232a1e0` |
| 4 | `instance` | [RepresentablyCoflat.of_isLeftAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variantc21d9f7d392205b1300fa86d31c147f0d0bae624f165a59c98a92c00c9115031.lean/declarations/representablycoflat-of-isleftadjoint--7d8adf3282d27b96aaf50da0.md) | 85 | `declaration-track:7d8adf3282d27b96aaf50da0413e32d5cdb2f1e74e52528a33cf5c2f6cfff769` |
| 5 | `theorem` | [RepresentablyFlat.id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variantc21d9f7d392205b1300fa86d31c147f0d0bae624f165a59c98a92c00c9115031.lean/declarations/representablyflat-id--6d031657723079477dc9a50c.md) | 88 | `result-track:6d031657723079477dc9a50c83b2828034dd53676cbd99b9f9bbd581c8a8f77e` |
| 6 | `theorem` | [RepresentablyCoflat.id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variantc21d9f7d392205b1300fa86d31c147f0d0bae624f165a59c98a92c00c9115031.lean/declarations/representablycoflat-id--3babd65fd9592154c7ce8c80.md) | 90 | `result-track:3babd65fd9592154c7ce8c80f2441f4768f4fac19ffea322f12711229cc5aac9` |
| 7 | `instance` | [RepresentablyFlat.comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variantc21d9f7d392205b1300fa86d31c147f0d0bae624f165a59c98a92c00c9115031.lean/declarations/representablyflat-comp--10b3ce967cd02661de15f4bb.md) | 93 | `declaration-track:10b3ce967cd02661de15f4bbcf6551826e4440e620879f4ae11fd77a17581593` |
| 8 | `theorem` | [RepresentablyFlat.of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variantc21d9f7d392205b1300fa86d31c147f0d0bae624f165a59c98a92c00c9115031.lean/declarations/representablyflat-of-iso--86bc18d17fc5a85bc8d56405.md) | 112 | `result-track:86bc18d17fc5a85bc8d56405d5d6e4ac6fa020ab27fca40d0efe59f21cff0e0f` |
| 9 | `theorem` | [RepresentablyCoflat.of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variantc21d9f7d392205b1300fa86d31c147f0d0bae624f165a59c98a92c00c9115031.lean/declarations/representablycoflat-of-iso--276497fdb03b1dadc054630a.md) | 116 | `result-track:276497fdb03b1dadc054630ae7d86dd660e968bcbacd9b667d7921ec602439b4` |
| 10 | `theorem` | [representablyCoflat_op_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variantc21d9f7d392205b1300fa86d31c147f0d0bae624f165a59c98a92c00c9115031.lean/declarations/representablycoflat-op-iff--ff909f15a641834abab027ca.md) | 122 | `result-track:ff909f15a641834abab027ca8890a673285c814dff232448884e9e89137cbce9` |
| 11 | `theorem` | [representablyFlat_op_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variantc21d9f7d392205b1300fa86d31c147f0d0bae624f165a59c98a92c00c9115031.lean/declarations/representablyflat-op-iff--f872e113bc2ff034267ad4a9.md) | 131 | `result-track:f872e113bc2ff034267ad4a90f94b67e74ca69076fd54c4235410ddb0b1a016a` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variantc21d9f7d392205b1300fa86d31c147f0d0bae624f165a59c98a92c00c9115031.lean/declarations/instance--eb2ee606e4e08ca6f101d026.md) | 140 | `declaration-track:eb2ee606e4e08ca6f101d026fafd5fbe4d293dd47c0fbcc49329a9f4c44ca0c5` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variantc21d9f7d392205b1300fa86d31c147f0d0bae624f165a59c98a92c00c9115031.lean/declarations/instance--68a7d5e246d23d62f757f804.md) | 143 | `declaration-track:68a7d5e246d23d62f757f804cc89006298725bdd974fb2098ddd8568b1e3729f` |
| 14 | `instance` | [RepresentablyCoflat.comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variantc21d9f7d392205b1300fa86d31c147f0d0bae624f165a59c98a92c00c9115031.lean/declarations/representablycoflat-comp--3c6c799caa491f52ca592edb.md) | 146 | `declaration-track:3c6c799caa491f52ca592edb4143056a3c6fbf3fe1759413a1779ac69cda6bf2` |
| 15 | `lemma` | [final_of_representablyFlat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variantc21d9f7d392205b1300fa86d31c147f0d0bae624f165a59c98a92c00c9115031.lean/declarations/final-of-representablyflat--6e4a1cafb05aef08b54403f5.md) | 150 | `result-track:6e4a1cafb05aef08b54403f589060586d99a8a30d41267fc575812535c54555b` |
| 16 | `lemma` | [initial_of_representablyCoflat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variantc21d9f7d392205b1300fa86d31c147f0d0bae624f165a59c98a92c00c9115031.lean/declarations/initial-of-representablycoflat--62f5f99b581e79a5bb025dab.md) | 153 | `result-track:62f5f99b581e79a5bb025daba53a5549a544f7544215abc58c3854c38816ddef` |
| 17 | `theorem` | [flat_of_preservesFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variantc21d9f7d392205b1300fa86d31c147f0d0bae624f165a59c98a92c00c9115031.lean/declarations/flat-of-preservesfinitelimits--9cdb21b09b8eb3750d969be3.md) | 162 | `result-track:9cdb21b09b8eb3750d969be31a8e7d29de2acb4ae7cc293e982c62097fb57530` |
| 18 | `theorem` | [coflat_of_preservesFiniteColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variantc21d9f7d392205b1300fa86d31c147f0d0bae624f165a59c98a92c00c9115031.lean/declarations/coflat-of-preservesfinitecolimits--ee65d8e0bf78f56cf8c0544b.md) | 170 | `result-track:ee65d8e0bf78f56cf8c0544bab1cc7c76942c5ca9cc25a3512494c82ce7228a6` |
| 19 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variantc21d9f7d392205b1300fa86d31c147f0d0bae624f165a59c98a92c00c9115031.lean/declarations/lift--d4869672c971698aee5bd077.md) | 187 | `declaration-track:d4869672c971698aee5bd0770602460c1c6fcf5d7f5ffeac67b955b597849a7b` |
| 20 | `theorem` | [fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variantc21d9f7d392205b1300fa86d31c147f0d0bae624f165a59c98a92c00c9115031.lean/declarations/fac--6a7b5f27d783f7d7d8de0989.md) | 198 | `result-track:6a7b5f27d783f7d7d8de098901c23e1597415782bf48765f3d09038e15b01235` |
| 21 | `theorem` | [uniq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variantc21d9f7d392205b1300fa86d31c147f0d0bae624f165a59c98a92c00c9115031.lean/declarations/uniq--3b99cbc41e6ae7161dfbc8c0.md) | 203 | `result-track:3b99cbc41e6ae7161dfbc8c04c903e7feadc93130382203bbafa892dbba514ac` |
| 22 | `lemma` | [preservesFiniteLimits_of_flat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variantc21d9f7d392205b1300fa86d31c147f0d0bae624f165a59c98a92c00c9115031.lean/declarations/preservesfinitelimits-of-flat--901d0c1ca231e89826073ad7.md) | 253 | `result-track:901d0c1ca231e89826073ad761568395c5071f067a90e04ea1d8cfb7e02a5406` |
| 23 | `lemma` | [preservesFiniteColimits_of_coflat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variantc21d9f7d392205b1300fa86d31c147f0d0bae624f165a59c98a92c00c9115031.lean/declarations/preservesfinitecolimits-of-coflat--fc42b40a552401ae8cc156e9.md) | 269 | `result-track:fc42b40a552401ae8cc156e9a8ae35f4592d7cf060bc927588fbcffe750f2004` |
| 24 | `lemma` | [preservesFiniteLimits_iff_flat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variantc21d9f7d392205b1300fa86d31c147f0d0bae624f165a59c98a92c00c9115031.lean/declarations/preservesfinitelimits-iff-flat--9a27cffcdd1bda4c40d41a89.md) | 277 | `result-track:9a27cffcdd1bda4c40d41a8912ae451048603c0396eed61a6dcc0011cba5de69` |
| 25 | `lemma` | [preservesFiniteColimits_iff_coflat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variantc21d9f7d392205b1300fa86d31c147f0d0bae624f165a59c98a92c00c9115031.lean/declarations/preservesfinitecolimits-iff-coflat--c7aae677cd1eb0d89ee93435.md) | 283 | `result-track:c7aae677cd1eb0d89ee934357ccb1fae0aa6eac212bd78c606446addc1bd345a` |
| 26 | `def` | [lanEvaluationIsoColim](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variantc21d9f7d392205b1300fa86d31c147f0d0bae624f165a59c98a92c00c9115031.lean/declarations/lanevaluationisocolim--033e4f81e2670513f3c51701.md) | 299 | `declaration-track:033e4f81e2670513f3c51701f883f9b74f412d724315037785222f6e066974a6` |
| 27 | `instance` | [lan_preservesFiniteLimits_of_flat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variantc21d9f7d392205b1300fa86d31c147f0d0bae624f165a59c98a92c00c9115031.lean/declarations/lan-preservesfinitelimits-of-flat--970289dcaaf997f94aac6baa.md) | 327 | `declaration-track:970289dcaaf997f94aac6baaa82ab9e7848518665937fdca168f12fff6ac24b7` |
| 28 | `instance` | [lan_flat_of_flat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variantc21d9f7d392205b1300fa86d31c147f0d0bae624f165a59c98a92c00c9115031.lean/declarations/lan-flat-of-flat--c3e0301faed5c97442090bbe.md) | 337 | `declaration-track:c3e0301faed5c97442090bbeaa4ad21bea184bbc533b639e78a3f26d4818f389` |
| 29 | `instance` | [lan_preservesFiniteLimits_of_preservesFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variantc21d9f7d392205b1300fa86d31c147f0d0bae624f165a59c98a92c00c9115031.lean/declarations/lan-preservesfinitelimits-of-preservesfinitelimits--7588255619684be283c307dc.md) | 343 | `declaration-track:7588255619684be283c307dcdbc31102280df34fc639bd7c11f5a2c7254ff6a2` |
| 30 | `theorem` | [flat_iff_lan_flat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variantc21d9f7d392205b1300fa86d31c147f0d0bae624f165a59c98a92c00c9115031.lean/declarations/flat-iff-lan-flat--13cd59dc0bd2b9f118f382b6.md) | 348 | `result-track:13cd59dc0bd2b9f118f382b687d1a72272f0125c6a6e778afd337d11234f9c5a` |
| 31 | `lemma` | [preservesFiniteLimits_iff_lan_preservesFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variantc21d9f7d392205b1300fa86d31c147f0d0bae624f165a59c98a92c00c9115031.lean/declarations/preservesfinitelimits-iff-lan-preservesfinitelimits--f9eb4a393d8d27739f9d3651.md) | 360 | `result-track:f9eb4a393d8d27739f9d3651079db52c8a39f37ff59461d6385e6833183c0d8a` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variantc21d9f7d392205b1300fa86d31c147f0d0bae624f165a59c98a92c00c9115031.lean/declarations/instance--49621c2f2c3edd6047ea9115.md) | 374 | `declaration-track:49621c2f2c3edd6047ea9115e254f6884da0a0c22977f8741a894d51be5b6d3b` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variantc21d9f7d392205b1300fa86d31c147f0d0bae624f165a59c98a92c00c9115031.lean/declarations/instance--1d73ebbf1f73d59e8c7a69c3.md) | 377 | `declaration-track:1d73ebbf1f73d59e8c7a69c36aa9096c77cee4d7bb9cf170e551c414e9d8695f` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variantc21d9f7d392205b1300fa86d31c147f0d0bae624f165a59c98a92c00c9115031.lean/declarations/instance--8c50d302a0e5dde287480980.md) | 380 | `declaration-track:8c50d302a0e5dde287480980f4e6821de4c295393b7969c2195652e28fe87a87` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variantc21d9f7d392205b1300fa86d31c147f0d0bae624f165a59c98a92c00c9115031.lean/declarations/instance--cef8e85a6e92c7a2b10a2a6f.md) | 408 | `declaration-track:cef8e85a6e92c7a2b10a2a6fd8c2fd1f6273898c64f145154f70f046e9bad203` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variantc21d9f7d392205b1300fa86d31c147f0d0bae624f165a59c98a92c00c9115031.lean/declarations/instance--02496b63da6bc4dfe590c1d8.md) | 414 | `declaration-track:02496b63da6bc4dfe590c1d849170afdfa1a0c62bbc3a223162315a511613aed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
