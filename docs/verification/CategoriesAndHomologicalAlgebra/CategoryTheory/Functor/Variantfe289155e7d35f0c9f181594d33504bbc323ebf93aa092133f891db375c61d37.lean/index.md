# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functor.Variantfe289155e7d35f0c9f181594d33504bbc323ebf93aa092133f891db375c61d37

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "05bf95dcfe692993be985da11af3465c822661e3",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantfe289155e7d35f0c9f181594d33504bbc323ebf93aa092133f891db375c61d37.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantfe289155e7d35f0c9f181594d33504bbc323ebf93aa092133f891db375c61d37.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantfe289155e7d35f0c9f181594d33504bbc323ebf93aa092133f891db375c61d37.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `05bf95dcfe692993be985da11af3465c822661e3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantfe289155e7d35f0c9f181594d33504bbc323ebf93aa092133f891db375c61d37.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantfe289155e7d35f0c9f181594d33504bbc323ebf93aa092133f891db375c61d37.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Multiset.Bind` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Traversable.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Traversable.Instances` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantfe289155e7d35f0c9f181594d33504bbc323ebf93aa092133f891db375c61d37.lean/declarations/functor--3c4c5fb4373d8fe4cd268860.md) | 29 | `declaration-track:3c4c5fb4373d8fe4cd26886061769d76c774d3ff83ed001efb9e2f66dcca36de` |
| 2 | `theorem` | [fmap_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantfe289155e7d35f0c9f181594d33504bbc323ebf93aa092133f891db375c61d37.lean/declarations/fmap-def--49f7201ae5aa731597e87f1f.md) | 32 | `result-track:49f7201ae5aa731597e87f1f435b6c62dfb6f2a9e8adcd8601ce24f4a3729f16` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantfe289155e7d35f0c9f181594d33504bbc323ebf93aa092133f891db375c61d37.lean/declarations/instance--6e1d1bb9e5aeeca06677c3c3.md) | 35 | `declaration-track:6e1d1bb9e5aeeca06677c3c3ef2a6802d7f7071bad419f92b9e223dd172e6443` |
| 4 | `def` | [traverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantfe289155e7d35f0c9f181594d33504bbc323ebf93aa092133f891db375c61d37.lean/declarations/traverse--c8a22e76c843e37c8d84a3e0.md) | 48 | `declaration-track:c8a22e76c843e37c8d84a3e0e0a92a6bc218357abf75e2997d289076f9ebd6b8` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantfe289155e7d35f0c9f181594d33504bbc323ebf93aa092133f891db375c61d37.lean/declarations/instance--a548027409e2226d208892e8.md) | 70 | `declaration-track:a548027409e2226d208892e8521678e450f473e3b0886d27037e15d37cd75150` |
| 6 | `theorem` | [pure_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantfe289155e7d35f0c9f181594d33504bbc323ebf93aa092133f891db375c61d37.lean/declarations/pure-def--e80dea28f7a7b011b4e92e0a.md) | 76 | `result-track:e80dea28f7a7b011b4e92e0aee03dc38b4819ccbdc6fdfcaaed9fa75e15f6ac4` |
| 7 | `theorem` | [bind_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantfe289155e7d35f0c9f181594d33504bbc323ebf93aa092133f891db375c61d37.lean/declarations/bind-def--3a758fadc7e0cc95dd91666d.md) | 80 | `result-track:3a758fadc7e0cc95dd91666d78df0cac89393b2ba0c6ebcaedd16cea5f81e86e` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantfe289155e7d35f0c9f181594d33504bbc323ebf93aa092133f891db375c61d37.lean/declarations/instance--058685c529aed85d6c84b901.md) | 83 | `declaration-track:058685c529aed85d6c84b90179051132669332a4cd1208b1ab2e95013eaf9d95` |
| 9 | `theorem` | [map_comp_coe](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantfe289155e7d35f0c9f181594d33504bbc323ebf93aa092133f891db375c61d37.lean/declarations/map-comp-coe--6a0eb3bfd4010d7410648711.md) | 94 | `result-track:6a0eb3bfd4010d74106487113fdc3a4224d6cf59d480e674477a18776e68c334` |
| 10 | `theorem` | [id_traverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantfe289155e7d35f0c9f181594d33504bbc323ebf93aa092133f891db375c61d37.lean/declarations/id-traverse--4989e34809b22218777649d1.md) | 98 | `result-track:4989e34809b22218777649d1e03cefead3fc933598f14cb3099594e93d94bde1` |
| 11 | `theorem` | [comp_traverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantfe289155e7d35f0c9f181594d33504bbc323ebf93aa092133f891db375c61d37.lean/declarations/comp-traverse--c3a2784715c14d04d7411352.md) | 103 | `result-track:c3a2784715c14d04d7411352a5224618cc8b4c01d1c164f5015c54a768e6d252` |
| 12 | `theorem` | [map_traverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantfe289155e7d35f0c9f181594d33504bbc323ebf93aa092133f891db375c61d37.lean/declarations/map-traverse--e16daf3ecc45dbbce3491aa4.md) | 111 | `result-track:e16daf3ecc45dbbce3491aa4fe7fc46b87ea4defe8113495f791f541bb05aed6` |
| 13 | `theorem` | [traverse_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantfe289155e7d35f0c9f181594d33504bbc323ebf93aa092133f891db375c61d37.lean/declarations/traverse-map--73586d2266e1b51019282352.md) | 120 | `result-track:73586d2266e1b510192823527d3b0f0f0de09a4bb3a4e9cc2fe10dacd245e710` |
| 14 | `theorem` | [naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantfe289155e7d35f0c9f181594d33504bbc323ebf93aa092133f891db375c61d37.lean/declarations/naturality--3622e4f7e990a6c880623504.md) | 127 | `result-track:3622e4f7e990a6c880623504ce398a8aa2e3b81571df85cf8a204a75c08efc9d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
