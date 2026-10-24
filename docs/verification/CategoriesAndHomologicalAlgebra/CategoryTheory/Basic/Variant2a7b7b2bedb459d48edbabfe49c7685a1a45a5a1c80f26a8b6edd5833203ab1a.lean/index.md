# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant2a7b7b2bedb459d48edbabfe49c7685a1a45a5a1c80f26a8b6edd5833203ab1a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d0fcde2a8afaa298f3c66ff20033552f8398f80e",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2a7b7b2bedb459d48edbabfe49c7685a1a45a5a1c80f26a8b6edd5833203ab1a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2a7b7b2bedb459d48edbabfe49c7685a1a45a5a1c80f26a8b6edd5833203ab1a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2a7b7b2bedb459d48edbabfe49c7685a1a45a5a1c80f26a8b6edd5833203ab1a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d0fcde2a8afaa298f3c66ff20033552f8398f80e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2a7b7b2bedb459d48edbabfe49c7685a1a45a5a1c80f26a8b6edd5833203ab1a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2a7b7b2bedb459d48edbabfe49c7685a1a45a5a1c80f26a8b6edd5833203ab1a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Cartesian.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Functor` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Shapes` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [typesCartesianMonoidalCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2a7b7b2bedb459d48edbabfe49c7685a1a45a5a1c80f26a8b6edd5833203ab1a.lean/declarations/typescartesianmonoidalcategory--96ebfe508f35fa9a018c0556.md) | 23 | `declaration-track:96ebfe508f35fa9a018c05568b949a3c2f7114e199ee0c100835793b95e258bb` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2a7b7b2bedb459d48edbabfe49c7685a1a45a5a1c80f26a8b6edd5833203ab1a.lean/declarations/instance--a805213dc13870e646bc8f9d.md) | 26 | `declaration-track:a805213dc13870e646bc8f9d26255b8182866a090d0a6f161479457695a0d57b` |
| 3 | `theorem` | [tensor_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2a7b7b2bedb459d48edbabfe49c7685a1a45a5a1c80f26a8b6edd5833203ab1a.lean/declarations/tensor-apply--7df83c5393df4b3bab6d3e90.md) | 29 | `result-track:7df83c5393df4b3bab6d3e909e472d5d01844e12e4c727839818f462b79eae35` |
| 4 | `theorem` | [whiskerLeft_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2a7b7b2bedb459d48edbabfe49c7685a1a45a5a1c80f26a8b6edd5833203ab1a.lean/declarations/whiskerleft-apply--b595f8acf146adfdf483d9ea.md) | 34 | `result-track:b595f8acf146adfdf483d9ea57a5021ce7fa74200487576710819f01243f5f77` |
| 5 | `theorem` | [whiskerRight_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2a7b7b2bedb459d48edbabfe49c7685a1a45a5a1c80f26a8b6edd5833203ab1a.lean/declarations/whiskerright-apply--8924afcfc0a86980a9d7cd9f.md) | 39 | `result-track:8924afcfc0a86980a9d7cd9f04c07c562381347ccbc18e8d7e22e4d0b80ab8e8` |
| 6 | `theorem` | [leftUnitor_hom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2a7b7b2bedb459d48edbabfe49c7685a1a45a5a1c80f26a8b6edd5833203ab1a.lean/declarations/leftunitor-hom-apply--471d9e3f67b3f83edc0ddb32.md) | 44 | `result-track:471d9e3f67b3f83edc0ddb32c53568cdb7fc603e737e32127151f4285a0f14ea` |
| 7 | `theorem` | [leftUnitor_inv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2a7b7b2bedb459d48edbabfe49c7685a1a45a5a1c80f26a8b6edd5833203ab1a.lean/declarations/leftunitor-inv-apply--4cc568891e8f1f2016c2369c.md) | 49 | `result-track:4cc568891e8f1f2016c2369ca8d51d9833e82a790492e6da97793689a4fbb10f` |
| 8 | `theorem` | [rightUnitor_hom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2a7b7b2bedb459d48edbabfe49c7685a1a45a5a1c80f26a8b6edd5833203ab1a.lean/declarations/rightunitor-hom-apply--f2b3d85bb4c0f6bd64416bac.md) | 54 | `result-track:f2b3d85bb4c0f6bd64416bac54731e396c4f29a5af013fa7beca5e71a7479a6f` |
| 9 | `theorem` | [rightUnitor_inv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2a7b7b2bedb459d48edbabfe49c7685a1a45a5a1c80f26a8b6edd5833203ab1a.lean/declarations/rightunitor-inv-apply--3c39e77e32236ee9d4aea06c.md) | 59 | `result-track:3c39e77e32236ee9d4aea06c472426ea4fd1b60aa73f1ff4c45b1d86420680d7` |
| 10 | `theorem` | [associator_hom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2a7b7b2bedb459d48edbabfe49c7685a1a45a5a1c80f26a8b6edd5833203ab1a.lean/declarations/associator-hom-apply--88eb1a1f01bdebd66f1ab148.md) | 64 | `result-track:88eb1a1f01bdebd66f1ab148ab08be68a23c090c6a21c42b0a9ac1c83cf245c4` |
| 11 | `theorem` | [associator_inv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2a7b7b2bedb459d48edbabfe49c7685a1a45a5a1c80f26a8b6edd5833203ab1a.lean/declarations/associator-inv-apply--3916b93d7b7db58bd9e18126.md) | 69 | `result-track:3916b93d7b7db58bd9e181262b20e412f481692e03fd3afa7cd5ecc1a509ea16` |
| 12 | `theorem` | [associator_hom_apply_1](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2a7b7b2bedb459d48edbabfe49c7685a1a45a5a1c80f26a8b6edd5833203ab1a.lean/declarations/associator-hom-apply-1--6bf8172c9c1ae13669fdad88.md) | 73 | `result-track:6bf8172c9c1ae13669fdad88da1a988d9fdd08e5336878e6f5fd59ee72bf153c` |
| 13 | `theorem` | [associator_hom_apply_2_1](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2a7b7b2bedb459d48edbabfe49c7685a1a45a5a1c80f26a8b6edd5833203ab1a.lean/declarations/associator-hom-apply-2-1--23ba2058befc117f679ebc5a.md) | 77 | `result-track:23ba2058befc117f679ebc5a7c449452901524e5de10bc5f17c6ddadda5aa31d` |
| 14 | `theorem` | [associator_hom_apply_2_2](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2a7b7b2bedb459d48edbabfe49c7685a1a45a5a1c80f26a8b6edd5833203ab1a.lean/declarations/associator-hom-apply-2-2--91d9d1877a8b207dab7866fc.md) | 81 | `result-track:91d9d1877a8b207dab7866fc5ceb1f1325212782a64bdb5983f4fcb7b5f3af6a` |
| 15 | `theorem` | [associator_inv_apply_1_1](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2a7b7b2bedb459d48edbabfe49c7685a1a45a5a1c80f26a8b6edd5833203ab1a.lean/declarations/associator-inv-apply-1-1--3d66620af36f8e730aef5219.md) | 85 | `result-track:3d66620af36f8e730aef521989bcddc46f35dce1cd9576bddbaf34ece48da519` |
| 16 | `theorem` | [associator_inv_apply_1_2](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2a7b7b2bedb459d48edbabfe49c7685a1a45a5a1c80f26a8b6edd5833203ab1a.lean/declarations/associator-inv-apply-1-2--a79b70aa5a0dd73a623ffd4e.md) | 89 | `result-track:a79b70aa5a0dd73a623ffd4e59993f527ddaa421c04a85f2fecd9729097f7e26` |
| 17 | `theorem` | [associator_inv_apply_2](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2a7b7b2bedb459d48edbabfe49c7685a1a45a5a1c80f26a8b6edd5833203ab1a.lean/declarations/associator-inv-apply-2--0efebe9f2c960e07d5017f3f.md) | 93 | `result-track:0efebe9f2c960e07d5017f3f7528865cf348056621187ec722be54fcb75e6355` |
| 18 | `theorem` | [braiding_hom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2a7b7b2bedb459d48edbabfe49c7685a1a45a5a1c80f26a8b6edd5833203ab1a.lean/declarations/braiding-hom-apply--21767c8ca857352680ae2108.md) | 98 | `result-track:21767c8ca857352680ae21081aa39cc68e1ca746e757ca9defdb8c964f294f3e` |
| 19 | `theorem` | [braiding_inv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2a7b7b2bedb459d48edbabfe49c7685a1a45a5a1c80f26a8b6edd5833203ab1a.lean/declarations/braiding-inv-apply--709f6c7b43d9b5cbb2f38f59.md) | 103 | `result-track:709f6c7b43d9b5cbb2f38f59ffcbb972281a0d2574b1174db0da1d1b750e6b09` |
| 20 | `theorem` | [CartesianMonoidalCategory.lift_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2a7b7b2bedb459d48edbabfe49c7685a1a45a5a1c80f26a8b6edd5833203ab1a.lean/declarations/cartesianmonoidalcategory-lift-apply--a10dc43930c16053e5503a05.md) | 108 | `result-track:a10dc43930c16053e5503a05154bce3f952a48e0ea0705593515c8e16f221cde` |
| 21 | `def` | [MonoidalFunctor.mapPi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2a7b7b2bedb459d48edbabfe49c7685a1a45a5a1c80f26a8b6edd5833203ab1a.lean/declarations/monoidalfunctor-mappi--915dce3622ceb91796ac5e72.md) | 116 | `declaration-track:915dce3622ceb91796ac5e72b974774e859275a63f7d055ee17b32d17cd0ad54` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
