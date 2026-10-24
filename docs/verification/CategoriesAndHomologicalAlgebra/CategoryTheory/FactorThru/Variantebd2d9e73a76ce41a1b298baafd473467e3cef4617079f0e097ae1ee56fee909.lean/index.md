# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FactorThru.Variantebd2d9e73a76ce41a1b298baafd473467e3cef4617079f0e097ae1ee56fee909

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4f891f44b5288bce8672330f74f93a91c67a2a3",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variantebd2d9e73a76ce41a1b298baafd473467e3cef4617079f0e097ae1ee56fee909.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variantebd2d9e73a76ce41a1b298baafd473467e3cef4617079f0e097ae1ee56fee909.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variantebd2d9e73a76ce41a1b298baafd473467e3cef4617079f0e097ae1ee56fee909.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4f891f44b5288bce8672330f74f93a91c67a2a3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variantebd2d9e73a76ce41a1b298baafd473467e3cef4617079f0e097ae1ee56fee909.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variantebd2d9e73a76ce41a1b298baafd473467e3cef4617079f0e097ae1ee56fee909.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Subobject.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Factors](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variantebd2d9e73a76ce41a1b298baafd473467e3cef4617079f0e097ae1ee56fee909.lean/declarations/factors--0f905737baf620ae10287544.md) | 35 | `declaration-track:0f905737baf620ae10287544fdd0716e4274e21126a6265bcd224d2c333f64ec` |
| 2 | `theorem` | [factors_congr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variantebd2d9e73a76ce41a1b298baafd473467e3cef4617079f0e097ae1ee56fee909.lean/declarations/factors-congr--857c26b5072fdd7203584deb.md) | 38 | `result-track:857c26b5072fdd7203584deb82c2475f2d66f7705af3951ded5f2c427cdac52d` |
| 3 | `def` | [factorThru](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variantebd2d9e73a76ce41a1b298baafd473467e3cef4617079f0e097ae1ee56fee909.lean/declarations/factorthru--300c3e18bfd7e08cd37e17d8.md) | 45 | `declaration-track:300c3e18bfd7e08cd37e17d862ce6cef22715ca42a7da24de62045e5ea4ffd6d` |
| 4 | `def` | [Factors](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variantebd2d9e73a76ce41a1b298baafd473467e3cef4617079f0e097ae1ee56fee909.lean/declarations/factors--bd8a708977fb6a553a8238dd.md) | 56 | `declaration-track:bd8a708977fb6a553a8238ddb128311d0daa65c128d08568f988b3bf3d7fc01f` |
| 5 | `theorem` | [mk_factors_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variantebd2d9e73a76ce41a1b298baafd473467e3cef4617079f0e097ae1ee56fee909.lean/declarations/mk-factors-iff--d2fe7aba88256779a142b75f.md) | 68 | `result-track:d2fe7aba88256779a142b75f1dcbb788cb46aa711f43df957ada91239a859077` |
| 6 | `theorem` | [mk_factors_self](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variantebd2d9e73a76ce41a1b298baafd473467e3cef4617079f0e097ae1ee56fee909.lean/declarations/mk-factors-self--f9b8a93160b09cf37799c185.md) | 72 | `result-track:f9b8a93160b09cf37799c185e817b594eeb3258a53fa266fbe5536167296a0b9` |
| 7 | `theorem` | [factors_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variantebd2d9e73a76ce41a1b298baafd473467e3cef4617079f0e097ae1ee56fee909.lean/declarations/factors-iff--2c4530de3dff2ceec2195f52.md) | 75 | `result-track:2c4530de3dff2ceec2195f528754bb85182eca41185558983e417d44bdf40b0e` |
| 8 | `theorem` | [factors_self](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variantebd2d9e73a76ce41a1b298baafd473467e3cef4617079f0e097ae1ee56fee909.lean/declarations/factors-self--a547f996c129be0cb0b3f72f.md) | 79 | `result-track:a547f996c129be0cb0b3f72f644a857389cc9a90dc7b16da0c46440d95f0c3dc` |
| 9 | `theorem` | [factors_comp_arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variantebd2d9e73a76ce41a1b298baafd473467e3cef4617079f0e097ae1ee56fee909.lean/declarations/factors-comp-arrow--efbffc4d86e3804e6f2257c4.md) | 82 | `result-track:efbffc4d86e3804e6f2257c4a9ae1f7f18faf611df12e6bd7f6867615bcc3abf` |
| 10 | `theorem` | [factors_of_factors_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variantebd2d9e73a76ce41a1b298baafd473467e3cef4617079f0e097ae1ee56fee909.lean/declarations/factors-of-factors-right--294de356003644fcaed7c3f9.md) | 85 | `result-track:294de356003644fcaed7c3f9670359c78645eb7c14b60098acd06b0edcb2188f` |
| 11 | `theorem` | [factors_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variantebd2d9e73a76ce41a1b298baafd473467e3cef4617079f0e097ae1ee56fee909.lean/declarations/factors-zero--f3e5b62c926b83e49f12e5d2.md) | 91 | `result-track:f3e5b62c926b83e49f12e5d2ca9ff1d4c620f9dda2b9492068bcc72a76f1889b` |
| 12 | `theorem` | [factors_of_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variantebd2d9e73a76ce41a1b298baafd473467e3cef4617079f0e097ae1ee56fee909.lean/declarations/factors-of-le--3c9b985b6d417049977573bf.md) | 94 | `result-track:3c9b985b6d417049977573bff379234f22248a32732e61c270b1875c0a9067fc` |
| 13 | `def` | [factorThru](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variantebd2d9e73a76ce41a1b298baafd473467e3cef4617079f0e097ae1ee56fee909.lean/declarations/factorthru--b0449e396aeb61385f2e9aa0.md) | 101 | `declaration-track:b0449e396aeb61385f2e9aa04caa1f0142a80ae8622961b5b6e100c9c3851ed3` |
| 14 | `theorem` | [factorThru_arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variantebd2d9e73a76ce41a1b298baafd473467e3cef4617079f0e097ae1ee56fee909.lean/declarations/factorthru-arrow--5bc7631ee1f83272fe2109aa.md) | 105 | `result-track:5bc7631ee1f83272fe2109aae816c194cbab11d537817799245fce7115299b92` |
| 15 | `theorem` | [factorThru_self](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variantebd2d9e73a76ce41a1b298baafd473467e3cef4617079f0e097ae1ee56fee909.lean/declarations/factorthru-self--a63e429d26770d87a0be744b.md) | 110 | `result-track:a63e429d26770d87a0be744b08c29a9b87147300f4708854da6b1f35fe8a60fd` |
| 16 | `theorem` | [factorThru_mk_self](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variantebd2d9e73a76ce41a1b298baafd473467e3cef4617079f0e097ae1ee56fee909.lean/declarations/factorthru-mk-self--87d39f97c1972a909ee4acee.md) | 115 | `result-track:87d39f97c1972a909ee4acee15269c34ec49801af859b1d2f12e5a75f7d85636` |
| 17 | `theorem` | [factorThru_comp_arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variantebd2d9e73a76ce41a1b298baafd473467e3cef4617079f0e097ae1ee56fee909.lean/declarations/factorthru-comp-arrow--2484621a879df2a17243febb.md) | 121 | `result-track:2484621a879df2a17243febb7e5c4b79c6341502767c8fe4b3a346e6f540d0bc` |
| 18 | `theorem` | [factorThru_eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variantebd2d9e73a76ce41a1b298baafd473467e3cef4617079f0e097ae1ee56fee909.lean/declarations/factorthru-eq-zero--c28c44cc88f5b6dc81c19927.md) | 127 | `result-track:c28c44cc88f5b6dc81c199272c991e623bcb4864af33c1d65103340b9b1fb13a` |
| 19 | `theorem` | [factorThru_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variantebd2d9e73a76ce41a1b298baafd473467e3cef4617079f0e097ae1ee56fee909.lean/declarations/factorthru-right--ba3af52cc54cd9135d8726b6.md) | 137 | `result-track:ba3af52cc54cd9135d8726b6e15834e61ba34aaa1c0e54513eee89737ee63f90` |
| 20 | `theorem` | [factorThru_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variantebd2d9e73a76ce41a1b298baafd473467e3cef4617079f0e097ae1ee56fee909.lean/declarations/factorthru-zero--cb09b4ef5155436e37374c83.md) | 143 | `result-track:cb09b4ef5155436e37374c837516f2cd63b0e896e6c30427b172a83c3d961463` |
| 21 | `theorem` | [factorThru_ofLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variantebd2d9e73a76ce41a1b298baafd473467e3cef4617079f0e097ae1ee56fee909.lean/declarations/factorthru-ofle--9380a97337110972896f9b69.md) | 149 | `result-track:9380a97337110972896f9b693e11bad6c267f23c9cad12e83066b4332dc57242` |
| 22 | `theorem` | [factors_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variantebd2d9e73a76ce41a1b298baafd473467e3cef4617079f0e097ae1ee56fee909.lean/declarations/factors-add--8b93c0239f7ff17932add5d2.md) | 158 | `result-track:8b93c0239f7ff17932add5d29ee0b11927abe06a87181ce43404c0ad8189ca9d` |
| 23 | `theorem` | [factorThru_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variantebd2d9e73a76ce41a1b298baafd473467e3cef4617079f0e097ae1ee56fee909.lean/declarations/factorthru-add--ca76dbd460c92510587a0c37.md) | 164 | `result-track:ca76dbd460c92510587a0c37f70e2280e96716387c2908e8bbf08aac4fb1d262` |
| 24 | `theorem` | [factors_left_of_factors_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variantebd2d9e73a76ce41a1b298baafd473467e3cef4617079f0e097ae1ee56fee909.lean/declarations/factors-left-of-factors-add--f25bdb1e3e22d1f4a218cbf9.md) | 170 | `result-track:f25bdb1e3e22d1f4a218cbf959a859335c6458c88d0ce87213981c50d4de2465` |
| 25 | `theorem` | [factorThru_add_sub_factorThru_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variantebd2d9e73a76ce41a1b298baafd473467e3cef4617079f0e097ae1ee56fee909.lean/declarations/factorthru-add-sub-factorthru-right--e7d0484858be9adc9df223fc.md) | 175 | `result-track:e7d0484858be9adc9df223fc6c3a871c0c345bfc4d882033096e2049657f2d2c` |
| 26 | `theorem` | [factors_right_of_factors_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variantebd2d9e73a76ce41a1b298baafd473467e3cef4617079f0e097ae1ee56fee909.lean/declarations/factors-right-of-factors-add--1c4d9259fd945f00f55c1228.md) | 182 | `result-track:1c4d9259fd945f00f55c12282aa8b3153ee313995be007e4ad0d9967a1ee39c1` |
| 27 | `theorem` | [factorThru_add_sub_factorThru_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variantebd2d9e73a76ce41a1b298baafd473467e3cef4617079f0e097ae1ee56fee909.lean/declarations/factorthru-add-sub-factorthru-left--01d814c88aa4eca7d81f7fba.md) | 187 | `result-track:01d814c88aa4eca7d81f7fba56ad5ad12b7704940425cd343e4c4f0593e1e315` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
