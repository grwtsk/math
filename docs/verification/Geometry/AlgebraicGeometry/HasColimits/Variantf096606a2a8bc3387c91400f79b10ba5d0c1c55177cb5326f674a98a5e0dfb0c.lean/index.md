# Verification target: GRWTSK.Geometry.AlgebraicGeometry.HasColimits.Variantf096606a2a8bc3387c91400f79b10ba5d0c1c55177cb5326f674a98a5e0dfb0c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8eed74b203e72864e5f5ba91f1ef741c7e1d27d6",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/HasColimits/Variantf096606a2a8bc3387c91400f79b10ba5d0c1c55177cb5326f674a98a5e0dfb0c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/HasColimits/Variantf096606a2a8bc3387c91400f79b10ba5d0c1c55177cb5326f674a98a5e0dfb0c.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/HasColimits/Variantf096606a2a8bc3387c91400f79b10ba5d0c1c55177cb5326f674a98a5e0dfb0c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8eed74b203e72864e5f5ba91f1ef741c7e1d27d6`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/HasColimits/Variantf096606a2a8bc3387c91400f79b10ba5d0c1c55177cb5326f674a98a5e0dfb0c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/HasColimits/Variantf096606a2a8bc3387c91400f79b10ba5d0c1c55177cb5326f674a98a5e0dfb0c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.LocallyRingedSpace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.Constructions` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.OpenImmersion.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.LimitsOfProductsAndEqualizers` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isColimit_exists_rep](../../../../../mathematics/Geometry/AlgebraicGeometry/HasColimits/Variantf096606a2a8bc3387c91400f79b10ba5d0c1c55177cb5326f674a98a5e0dfb0c.lean/declarations/iscolimit-exists-rep--c2a70d1946f09dbeb37770fb.md) | 36 | `result-track:c2a70d1946f09dbeb37770fbf77f339a97c9539440ad69d13ae2195a42b0c92f` |
| 2 | `theorem` | [colimit_exists_rep](../../../../../mathematics/Geometry/AlgebraicGeometry/HasColimits/Variantf096606a2a8bc3387c91400f79b10ba5d0c1c55177cb5326f674a98a5e0dfb0c.lean/declarations/colimit-exists-rep--e9253aa49e3e07c3f63d42b9.md) | 42 | `result-track:e9253aa49e3e07c3f63d42b91f8db1f8862a50971f91343e96dbde1ef1969f45` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/HasColimits/Variantf096606a2a8bc3387c91400f79b10ba5d0c1c55177cb5326f674a98a5e0dfb0c.lean/declarations/instance--b998a1fa934b95d052d4d7b5.md) | 48 | `declaration-track:b998a1fa934b95d052d4d7b593ac024c7b926dda3cd154bc40d696434709af89` |
| 4 | `def` | [coproduct](../../../../../mathematics/Geometry/AlgebraicGeometry/HasColimits/Variantf096606a2a8bc3387c91400f79b10ba5d0c1c55177cb5326f674a98a5e0dfb0c.lean/declarations/coproduct--90c23fb65b076d4406112ceb.md) | 75 | `declaration-track:90c23fb65b076d4406112cebfd9f30f26e28042493604c008a4657c9324c868a` |
| 5 | `def` | [coproductCofan](../../../../../mathematics/Geometry/AlgebraicGeometry/HasColimits/Variantf096606a2a8bc3387c91400f79b10ba5d0c1c55177cb5326f674a98a5e0dfb0c.lean/declarations/coproductcofan--278b134f86a588b35048e35e.md) | 89 | `declaration-track:278b134f86a588b35048e35e876db8f492c6a9b508c330c9011895489a3627e9` |
| 6 | `def` | [coproductCofanIsColimit](../../../../../mathematics/Geometry/AlgebraicGeometry/HasColimits/Variantf096606a2a8bc3387c91400f79b10ba5d0c1c55177cb5326f674a98a5e0dfb0c.lean/declarations/coproductcofaniscolimit--4d70db5e30ff9314aaab8a4b.md) | 98 | `declaration-track:4d70db5e30ff9314aaab8a4be41159933b2c7b24a07116a039a1f3fb8a164283` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/HasColimits/Variantf096606a2a8bc3387c91400f79b10ba5d0c1c55177cb5326f674a98a5e0dfb0c.lean/declarations/instance--0b55fe27b0299149f4e95ede.md) | 127 | `declaration-track:0b55fe27b0299149f4e95ede7099e822a033d1fdb1de54b9af4e10c23eb7d4fd` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/HasColimits/Variantf096606a2a8bc3387c91400f79b10ba5d0c1c55177cb5326f674a98a5e0dfb0c.lean/declarations/instance--5c0f3121c3685809c51a7f61.md) | 130 | `declaration-track:5c0f3121c3685809c51a7f61402db789fd496c6a426231a538dd034cab9e9a78` |
| 9 | `instance` | [coequalizer_π_app_isLocalRingHom](../../../../../mathematics/Geometry/AlgebraicGeometry/HasColimits/Variantf096606a2a8bc3387c91400f79b10ba5d0c1c55177cb5326f674a98a5e0dfb0c.lean/declarations/coequalizer-app-islocalringhom--979c67fcf6b5085561da33bd.md) | 145 | `declaration-track:979c67fcf6b5085561da33bd992ec230f62e981489a550058b52405a855bcbe9` |
| 10 | `def` | [imageBasicOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/HasColimits/Variantf096606a2a8bc3387c91400f79b10ba5d0c1c55177cb5326f674a98a5e0dfb0c.lean/declarations/imagebasicopen--47ed7fb3d3a6c3d22773ff59.md) | 182 | `declaration-track:47ed7fb3d3a6c3d22773ff594f53997d40e9814f292ac8d281012edca96f863c` |
| 11 | `theorem` | [imageBasicOpen_image_preimage](../../../../../mathematics/Geometry/AlgebraicGeometry/HasColimits/Variantf096606a2a8bc3387c91400f79b10ba5d0c1c55177cb5326f674a98a5e0dfb0c.lean/declarations/imagebasicopen-image-preimage--57bc5d7e2307ff667ec14f09.md) | 187 | `result-track:57bc5d7e2307ff667ec14f09c370276462fad0ef379a4182598f4da59944c771` |
| 12 | `theorem` | [imageBasicOpen_image_open](../../../../../mathematics/Geometry/AlgebraicGeometry/HasColimits/Variantf096606a2a8bc3387c91400f79b10ba5d0c1c55177cb5326f674a98a5e0dfb0c.lean/declarations/imagebasicopen-image-open--a621ad4fa364497393cbbae0.md) | 216 | `result-track:a621ad4fa364497393cbbae0a446f21a36c6c5f66a934e7bde917c01d691307e` |
| 13 | `instance` | [coequalizer_π_stalk_isLocalRingHom](../../../../../mathematics/Geometry/AlgebraicGeometry/HasColimits/Variantf096606a2a8bc3387c91400f79b10ba5d0c1c55177cb5326f674a98a5e0dfb0c.lean/declarations/coequalizer-stalk-islocalringhom--1ceb109e310cfdc1ccd82ab5.md) | 228 | `declaration-track:1ceb109e310cfdc1ccd82ab54dd9dbc95a045fa5e5e7454dff9a4a7653254ea6` |
| 14 | `def` | [coequalizer](../../../../../mathematics/Geometry/AlgebraicGeometry/HasColimits/Variantf096606a2a8bc3387c91400f79b10ba5d0c1c55177cb5326f674a98a5e0dfb0c.lean/declarations/coequalizer--c1e65773ab82c81988ea6445.md) | 262 | `declaration-track:c1e65773ab82c81988ea644537d40aea0d0b06292140a306132a4b72e3fc5ee7` |
| 15 | `def` | [coequalizerCofork](../../../../../mathematics/Geometry/AlgebraicGeometry/HasColimits/Variantf096606a2a8bc3387c91400f79b10ba5d0c1c55177cb5326f674a98a5e0dfb0c.lean/declarations/coequalizercofork--c150ff944f1323ed23068f89.md) | 271 | `declaration-track:c150ff944f1323ed23068f89a83ba5a285d8cae1771e6273cdb9d648274301c6` |
| 16 | `theorem` | [isLocalRingHom_stalkMap_congr](../../../../../mathematics/Geometry/AlgebraicGeometry/HasColimits/Variantf096606a2a8bc3387c91400f79b10ba5d0c1c55177cb5326f674a98a5e0dfb0c.lean/declarations/islocalringhom-stalkmap-congr--6890d18e3f242afa6f3c9a43.md) | 278 | `result-track:6890d18e3f242afa6f3c9a437449c563554231710d20cbb444c407e0b8994415` |
| 17 | `def` | [coequalizerCoforkIsColimit](../../../../../mathematics/Geometry/AlgebraicGeometry/HasColimits/Variantf096606a2a8bc3387c91400f79b10ba5d0c1c55177cb5326f674a98a5e0dfb0c.lean/declarations/coequalizercoforkiscolimit--0c122644cd166aa121f66ddb.md) | 285 | `declaration-track:0c122644cd166aa121f66ddbefec229d71c191269b1b32610f51deb85bbd2c9f` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/HasColimits/Variantf096606a2a8bc3387c91400f79b10ba5d0c1c55177cb5326f674a98a5e0dfb0c.lean/declarations/instance--420c94747700c2e6130ee1e6.md) | 318 | `declaration-track:420c94747700c2e6130ee1e6b7ee9d95e2ec7fa960eb80dac4c717164516d6d8` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/HasColimits/Variantf096606a2a8bc3387c91400f79b10ba5d0c1c55177cb5326f674a98a5e0dfb0c.lean/declarations/instance--5711f917dfc495d4a87eedf1.md) | 321 | `declaration-track:5711f917dfc495d4a87eedf1ece6f82a98d5fb0d539e9289778b3cf74bb48eda` |
| 20 | `instance` | [preservesCoequalizer](../../../../../mathematics/Geometry/AlgebraicGeometry/HasColimits/Variantf096606a2a8bc3387c91400f79b10ba5d0c1c55177cb5326f674a98a5e0dfb0c.lean/declarations/preservescoequalizer--27c92974a8ee028ee9862f57.md) | 324 | `declaration-track:27c92974a8ee028ee9862f5729fd0e0b3e3c61826552e1613644af848fb75400` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/HasColimits/Variantf096606a2a8bc3387c91400f79b10ba5d0c1c55177cb5326f674a98a5e0dfb0c.lean/declarations/instance--699a1c9edb7e9f42ff7a0394.md) | 340 | `declaration-track:699a1c9edb7e9f42ff7a03945fdb87f70ed47dec1d95f5594be1a7bf66cba531` |
| 22 | `instance` | [preservesColimits_forgetToSheafedSpace](../../../../../mathematics/Geometry/AlgebraicGeometry/HasColimits/Variantf096606a2a8bc3387c91400f79b10ba5d0c1c55177cb5326f674a98a5e0dfb0c.lean/declarations/preservescolimits-forgettosheafedspace--3d01a24a3e9b216f2510d975.md) | 343 | `declaration-track:3d01a24a3e9b216f2510d97537ffd4a18121dfa03cd083e51ad994304e488317` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
