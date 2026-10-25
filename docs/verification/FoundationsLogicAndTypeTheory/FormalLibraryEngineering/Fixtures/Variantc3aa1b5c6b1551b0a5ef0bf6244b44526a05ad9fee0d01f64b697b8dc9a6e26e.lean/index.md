# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Fixtures.Variantc3aa1b5c6b1551b0a5ef0bf6244b44526a05ad9fee0d01f64b697b8dc9a6e26e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d923f7e77c69a17af30bbf54d7c28e3409b18f35",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fixtures/Variantc3aa1b5c6b1551b0a5ef0bf6244b44526a05ad9fee0d01f64b697b8dc9a6e26e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fixtures/Variantc3aa1b5c6b1551b0a5ef0bf6244b44526a05ad9fee0d01f64b697b8dc9a6e26e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fixtures/Variantc3aa1b5c6b1551b0a5ef0bf6244b44526a05ad9fee0d01f64b697b8dc9a6e26e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d923f7e77c69a17af30bbf54d7c28e3409b18f35`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fixtures/Variantc3aa1b5c6b1551b0a5ef0bf6244b44526a05ad9fee0d01f64b697b8dc9a6e26e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fixtures/Variantc3aa1b5c6b1551b0a5ef0bf6244b44526a05ad9fee0d01f64b697b8dc9a6e26e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.Plucker24` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveFixture24](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fixtures/Variantc3aa1b5c6b1551b0a5ef0bf6244b44526a05ad9fee0d01f64b697b8dc9a6e26e.lean/declarations/positivefixture24--9c8364239011d1abb75bc621.md) | 16 | `declaration-track:9c8364239011d1abb75bc621fe26455fed270b36c494c0919dc7e4581f3cf3d6` |
| 2 | `theorem` | [positiveFixture24_coordinates](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fixtures/Variantc3aa1b5c6b1551b0a5ef0bf6244b44526a05ad9fee0d01f64b697b8dc9a6e26e.lean/declarations/positivefixture24-coordinates--1be8c556461b3e91df23120f.md) | 18 | `result-track:1be8c556461b3e91df23120f7294b93701c055c97e0ddfadea8ed6e6510a63df` |
| 3 | `theorem` | [positiveFixture24_positive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fixtures/Variantc3aa1b5c6b1551b0a5ef0bf6244b44526a05ad9fee0d01f64b697b8dc9a6e26e.lean/declarations/positivefixture24-positive--572b6ae5c1fd98157787b55e.md) | 23 | `result-track:572b6ae5c1fd98157787b55e4462fefea445534e182e34c5d3919e23329299f3` |
| 4 | `theorem` | [positiveFixture24_ordered_minors](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fixtures/Variantc3aa1b5c6b1551b0a5ef0bf6244b44526a05ad9fee0d01f64b697b8dc9a6e26e.lean/declarations/positivefixture24-ordered-minors--d00a149dc8b1477d9b681571.md) | 26 | `result-track:d00a149dc8b1477d9b6815715dbfca81849d33994c37bdbf3a566a7b4e103068` |
| 5 | `theorem` | [positiveFixture24_pivot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fixtures/Variantc3aa1b5c6b1551b0a5ef0bf6244b44526a05ad9fee0d01f64b697b8dc9a6e26e.lean/declarations/positivefixture24-pivot--7183f2f3907281f07257fef3.md) | 31 | `result-track:7183f2f3907281f07257fef36da7c4459940be13cd463d06eec8ee79766e2a9f` |
| 6 | `def` | [boundaryFixture24](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fixtures/Variantc3aa1b5c6b1551b0a5ef0bf6244b44526a05ad9fee0d01f64b697b8dc9a6e26e.lean/declarations/boundaryfixture24--e1cc652d4923c3ccc803aaa2.md) | 35 | `declaration-track:e1cc652d4923c3ccc803aaa291792b6522d1dd994e3595e41b69623b645e4453` |
| 7 | `theorem` | [boundaryFixture24_coordinates](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fixtures/Variantc3aa1b5c6b1551b0a5ef0bf6244b44526a05ad9fee0d01f64b697b8dc9a6e26e.lean/declarations/boundaryfixture24-coordinates--ddfb4ada3d75bc34faa72e5f.md) | 37 | `result-track:ddfb4ada3d75bc34faa72e5fa5f6552dae6755eb84e4da332cc8972ff17802f1` |
| 8 | `theorem` | [boundaryFixture24_ordered_minors](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fixtures/Variantc3aa1b5c6b1551b0a5ef0bf6244b44526a05ad9fee0d01f64b697b8dc9a6e26e.lean/declarations/boundaryfixture24-ordered-minors--37f16bf744b1f16c006221a2.md) | 42 | `result-track:37f16bf744b1f16c006221a29e226fbb4b81b976377370dfbc7c22d437d94b7d` |
| 9 | `theorem` | [boundaryFixture24_not_positive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fixtures/Variantc3aa1b5c6b1551b0a5ef0bf6244b44526a05ad9fee0d01f64b697b8dc9a6e26e.lean/declarations/boundaryfixture24-not-positive--cf59f8a530667339e057bf1d.md) | 49 | `result-track:cf59f8a530667339e057bf1d748c6b54042ea8f24fbf27017decbf77227e2116` |
| 10 | `theorem` | [boundaryFixture24_pivot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fixtures/Variantc3aa1b5c6b1551b0a5ef0bf6244b44526a05ad9fee0d01f64b697b8dc9a6e26e.lean/declarations/boundaryfixture24-pivot--b5c36bf47d14d2254b0a35fc.md) | 52 | `result-track:b5c36bf47d14d2254b0a35fc450a44284af31ce89bbcb3e31d219d7d5d5752e2` |
| 11 | `def` | [incompatibleOnes24](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fixtures/Variantc3aa1b5c6b1551b0a5ef0bf6244b44526a05ad9fee0d01f64b697b8dc9a6e26e.lean/declarations/incompatibleones24--757be1ac88caf6b924f3c409.md) | 56 | `declaration-track:757be1ac88caf6b924f3c4090d63d0d8017be6c0b880d4d15cbfd763b25e54e1` |
| 12 | `theorem` | [incompatibleOnes24_positive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fixtures/Variantc3aa1b5c6b1551b0a5ef0bf6244b44526a05ad9fee0d01f64b697b8dc9a6e26e.lean/declarations/incompatibleones24-positive--05580764cb219bb86e498a35.md) | 58 | `result-track:05580764cb219bb86e498a358b1e2eb180706b6557a225c56ed12fdf20404bbb` |
| 13 | `theorem` | [incompatibleOnes24_not_compatible](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fixtures/Variantc3aa1b5c6b1551b0a5ef0bf6244b44526a05ad9fee0d01f64b697b8dc9a6e26e.lean/declarations/incompatibleones24-not-compatible--8f4a135ad7f68c855cd282d0.md) | 61 | `result-track:8f4a135ad7f68c855cd282d06331a5d9f8682cfe9479faa1acc1c796d66c9a5a` |
| 14 | `theorem` | [incompatibleOnes24_not_matrix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fixtures/Variantc3aa1b5c6b1551b0a5ef0bf6244b44526a05ad9fee0d01f64b697b8dc9a6e26e.lean/declarations/incompatibleones24-not-matrix--23c3535b75d6f7b2be114ce8.md) | 65 | `result-track:23c3535b75d6f7b2be114ce819c15131d94068c1ad9b9352ab5b639d273a0f7c` |
| 15 | `def` | [positiveRow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fixtures/Variantc3aa1b5c6b1551b0a5ef0bf6244b44526a05ad9fee0d01f64b697b8dc9a6e26e.lean/declarations/positiverow--67498783b8ff3f3c9ff4fb2f.md) | 74 | `declaration-track:67498783b8ff3f3c9ff4fb2f94afc028b4e125e729759decd015b38e690251c5` |
| 16 | `def` | [mixedSignRow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fixtures/Variantc3aa1b5c6b1551b0a5ef0bf6244b44526a05ad9fee0d01f64b697b8dc9a6e26e.lean/declarations/mixedsignrow--b83319efc8d92f0071b24896.md) | 76 | `declaration-track:b83319efc8d92f0071b248964f0154b1fb58fbe785c09df2a68fe9d8fedca5fd` |
| 17 | `theorem` | [rows_same_squares](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fixtures/Variantc3aa1b5c6b1551b0a5ef0bf6244b44526a05ad9fee0d01f64b697b8dc9a6e26e.lean/declarations/rows-same-squares--930fa03a7c1c28ca299b9e23.md) | 78 | `result-track:930fa03a7c1c28ca299b9e23f9257acd846dd622d8e6d9d029f2038266072250` |
| 18 | `theorem` | [rows_not_proportional](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fixtures/Variantc3aa1b5c6b1551b0a5ef0bf6244b44526a05ad9fee0d01f64b697b8dc9a6e26e.lean/declarations/rows-not-proportional--af5d855601ee1fa47a5ca005.md) | 82 | `result-track:af5d855601ee1fa47a5ca005fc94a83342c4cc67de09d4ee0cb0bb130292e430` |
| 19 | `theorem` | [mixedSignRow_positive_gram_and_mixed_signs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fixtures/Variantc3aa1b5c6b1551b0a5ef0bf6244b44526a05ad9fee0d01f64b697b8dc9a6e26e.lean/declarations/mixedsignrow-positive-gram-and-mixed-signs--da0716fe4555d3683f02161d.md) | 91 | `result-track:da0716fe4555d3683f02161d76bda06adeea4595a5c10c251370323c9f779980` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
