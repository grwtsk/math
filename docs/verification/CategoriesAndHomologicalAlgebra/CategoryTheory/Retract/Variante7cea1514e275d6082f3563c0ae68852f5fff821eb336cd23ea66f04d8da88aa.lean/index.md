# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Retract.Variante7cea1514e275d6082f3563c0ae68852f5fff821eb336cd23ea66f04d8da88aa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5909b4b086dba9a1c7bd137cb127a0ab94ef4cb4",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variante7cea1514e275d6082f3563c0ae68852f5fff821eb336cd23ea66f04d8da88aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variante7cea1514e275d6082f3563c0ae68852f5fff821eb336cd23ea66f04d8da88aa.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variante7cea1514e275d6082f3563c0ae68852f5fff821eb336cd23ea66f04d8da88aa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5909b4b086dba9a1c7bd137cb127a0ab94ef4cb4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variante7cea1514e275d6082f3563c0ae68852f5fff821eb336cd23ea66f04d8da88aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variante7cea1514e275d6082f3563c0ae68852f5fff821eb336cd23ea66f04d8da88aa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Comma.Arrow` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.EpiMono` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Retract](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variante7cea1514e275d6082f3563c0ae68852f5fff821eb336cd23ea66f04d8da88aa.lean/declarations/retract--7dd9cca65349131bbe08434b.md) | 24 | `declaration-track:7dd9cca65349131bbe08434b770ead289629d4b60e2e18ae71faf0dd438afa17` |
| 2 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variante7cea1514e275d6082f3563c0ae68852f5fff821eb336cd23ea66f04d8da88aa.lean/declarations/map--92fd34f9e03ee80fda4eedaf.md) | 39 | `declaration-track:92fd34f9e03ee80fda4eedafbb347feaafad645ab1c9ab5fef2b450b0e5ee19e` |
| 3 | `def` | [splitEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variante7cea1514e275d6082f3563c0ae68852f5fff821eb336cd23ea66f04d8da88aa.lean/declarations/splitepi--52a9382db5d2ee92b198f37e.md) | 45 | `declaration-track:52a9382db5d2ee92b198f37ebddc110775daca28ca43e27767a3892b812c2b6b` |
| 4 | `def` | [splitMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variante7cea1514e275d6082f3563c0ae68852f5fff821eb336cd23ea66f04d8da88aa.lean/declarations/splitmono--c1865a1d6c1e8d22deed8a56.md) | 49 | `declaration-track:c1865a1d6c1e8d22deed8a564de638dc625a9368884d17c53eff95fc6c47800a` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variante7cea1514e275d6082f3563c0ae68852f5fff821eb336cd23ea66f04d8da88aa.lean/declarations/instance--bcf37a2716cac50b7179ddff.md) | 52 | `declaration-track:bcf37a2716cac50b7179ddffa38c5a22f7f202276a50201b8a74ee9837e71b43` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variante7cea1514e275d6082f3563c0ae68852f5fff821eb336cd23ea66f04d8da88aa.lean/declarations/instance--f255624e6864ac7760e080ad.md) | 54 | `declaration-track:f255624e6864ac7760e080ad649edfcfd02ee3d3845c37b20623d54f7287dd57` |
| 7 | `def` | [refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variante7cea1514e275d6082f3563c0ae68852f5fff821eb336cd23ea66f04d8da88aa.lean/declarations/refl--7ac1e40c9e85ac8c658fde5f.md) | 59 | `declaration-track:7ac1e40c9e85ac8c658fde5f66c97037e63c3196cb8331e5f37a8fb073a1228f` |
| 8 | `def` | [trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variante7cea1514e275d6082f3563c0ae68852f5fff821eb336cd23ea66f04d8da88aa.lean/declarations/trans--d34e97de85e8f843d11c2847.md) | 65 | `declaration-track:d34e97de85e8f843d11c28474a7342ac430ec5da8feac893c4cd795e883c8a35` |
| 9 | `def` | [ofIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variante7cea1514e275d6082f3563c0ae68852f5fff821eb336cd23ea66f04d8da88aa.lean/declarations/ofiso--cd9173ad219f1f2fda7e3e2f.md) | 70 | `declaration-track:cd9173ad219f1f2fda7e3e2f9f0e492c5a0ed3fe8458609c784a872bafca2cfc` |
| 10 | `abbrev` | [RetractArrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variante7cea1514e275d6082f3563c0ae68852f5fff821eb336cd23ea66f04d8da88aa.lean/declarations/retractarrow--0c0b60951c33402f5913ea8b.md) | 88 | `declaration-track:0c0b60951c33402f5913ea8b52cdf9eb9f35d9d4fc0307a836fb3d8e70b32c87` |
| 11 | `lemma` | [i_w](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variante7cea1514e275d6082f3563c0ae68852f5fff821eb336cd23ea66f04d8da88aa.lean/declarations/i-w--3c13aa2401581cdf974cc848.md) | 95 | `result-track:3c13aa2401581cdf974cc848d249c831f286d129e05b0014ef02aee51c9784d0` |
| 12 | `lemma` | [r_w](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variante7cea1514e275d6082f3563c0ae68852f5fff821eb336cd23ea66f04d8da88aa.lean/declarations/r-w--8b527151a50401e032849087.md) | 98 | `result-track:8b527151a50401e0328490876838491b44fad9d587ee7612cca4fd01fc1bbd3b` |
| 13 | `def` | [left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variante7cea1514e275d6082f3563c0ae68852f5fff821eb336cd23ea66f04d8da88aa.lean/declarations/left--8179d69810f9d5e0c9616f0d.md) | 102 | `declaration-track:8179d69810f9d5e0c9616f0d80783e20e8e5d3f5c31d25abb545bbe3e456f619` |
| 14 | `def` | [right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variante7cea1514e275d6082f3563c0ae68852f5fff821eb336cd23ea66f04d8da88aa.lean/declarations/right--2233d41903f971e0280b36e4.md) | 106 | `declaration-track:2233d41903f971e0280b36e4a6c5d41d2dbb1c1f4be38b186833ba433fd21e49` |
| 15 | `lemma` | [retract_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variante7cea1514e275d6082f3563c0ae68852f5fff821eb336cd23ea66f04d8da88aa.lean/declarations/retract-left--1b863817b258bcdf1930b10f.md) | 109 | `result-track:1b863817b258bcdf1930b10f8048f1feb3c18a5b99c6e5ee10f1410c7651fd2e` |
| 16 | `lemma` | [retract_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variante7cea1514e275d6082f3563c0ae68852f5fff821eb336cd23ea66f04d8da88aa.lean/declarations/retract-right--64438f67e72afcba89121d71.md) | 112 | `result-track:64438f67e72afcba89121d7129b0f88e594b5b05919c8766338bf4d04e741d1e` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variante7cea1514e275d6082f3563c0ae68852f5fff821eb336cd23ea66f04d8da88aa.lean/declarations/instance--563acba59179b8414e7196b8.md) | 114 | `declaration-track:563acba59179b8414e7196b8150e50c5f6a39a1ef2ddb897e691e87935dc829d` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variante7cea1514e275d6082f3563c0ae68852f5fff821eb336cd23ea66f04d8da88aa.lean/declarations/instance--a85b1aa17390089628e78ad7.md) | 116 | `declaration-track:a85b1aa17390089628e78ad7420f2f072ed7833baaae52c67c759e14eb967bd4` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variante7cea1514e275d6082f3563c0ae68852f5fff821eb336cd23ea66f04d8da88aa.lean/declarations/instance--ad9434309a2102e9c1112858.md) | 118 | `declaration-track:ad9434309a2102e9c1112858246648a994b940076bbd038d6cfa282a50e60396` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variante7cea1514e275d6082f3563c0ae68852f5fff821eb336cd23ea66f04d8da88aa.lean/declarations/instance--f143cf079900f6a8f51a0572.md) | 120 | `declaration-track:f143cf079900f6a8f51a05722e121432e53d15a0068266d8168856cfa402ee10` |
| 21 | `def` | [retract](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variante7cea1514e275d6082f3563c0ae68852f5fff821eb336cd23ea66f04d8da88aa.lean/declarations/retract--87c79323034d8e04f1ade0d0.md) | 128 | `declaration-track:87c79323034d8e04f1ade0d07722c5d3b4c15e3f9e1d2d7074faca1867a5e825` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
