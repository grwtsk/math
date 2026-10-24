# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functor.Variant2e8dce41c84725c51d5c7a957c83b72c7826e008e851d1682dcec8a5179fd7fd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "56cef215024fb29a66899a537d1049d4689bcb10",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant2e8dce41c84725c51d5c7a957c83b72c7826e008e851d1682dcec8a5179fd7fd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant2e8dce41c84725c51d5c7a957c83b72c7826e008e851d1682dcec8a5179fd7fd.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant2e8dce41c84725c51d5c7a957c83b72c7826e008e851d1682dcec8a5179fd7fd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `56cef215024fb29a66899a537d1049d4689bcb10`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant2e8dce41c84725c51d5c7a957c83b72c7826e008e851d1682dcec8a5179fd7fd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant2e8dce41c84725c51d5c7a957c83b72c7826e008e851d1682dcec8a5179fd7fd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Multiset.Bind` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Traversable.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Traversable.Instances` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant2e8dce41c84725c51d5c7a957c83b72c7826e008e851d1682dcec8a5179fd7fd.lean/declarations/functor--81a5a8d56cca0707c4d68dd9.md) | 21 | `declaration-track:81a5a8d56cca0707c4d68dd9a0ffb3bad7be37ac4b8626e9132ada09a6426fa5` |
| 2 | `theorem` | [fmap_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant2e8dce41c84725c51d5c7a957c83b72c7826e008e851d1682dcec8a5179fd7fd.lean/declarations/fmap-def--d24bed29257d34476eec4e72.md) | 24 | `result-track:d24bed29257d34476eec4e7227a55c5a3f293d55bb6eaf0a4bfa95608f982458` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant2e8dce41c84725c51d5c7a957c83b72c7826e008e851d1682dcec8a5179fd7fd.lean/declarations/instance--9c54203466d1c4fa61949734.md) | 27 | `declaration-track:9c54203466d1c4fa619497341ad73e3b2473116d9e47c332ca518ec7aedabf29` |
| 4 | `def` | [traverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant2e8dce41c84725c51d5c7a957c83b72c7826e008e851d1682dcec8a5179fd7fd.lean/declarations/traverse--ac91c0369b3eb10f5039dc35.md) | 40 | `declaration-track:ac91c0369b3eb10f5039dc3576153ebdfa5d8d7458f0fd6df1bbbc1f766a4623` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant2e8dce41c84725c51d5c7a957c83b72c7826e008e851d1682dcec8a5179fd7fd.lean/declarations/instance--e5ccf0fe1dbf1a80a0d325e7.md) | 62 | `declaration-track:e5ccf0fe1dbf1a80a0d325e750adeaa30b749a0b7a6c6ea7326605227cbb660b` |
| 6 | `theorem` | [pure_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant2e8dce41c84725c51d5c7a957c83b72c7826e008e851d1682dcec8a5179fd7fd.lean/declarations/pure-def--05e09451af1fc532f15405a5.md) | 68 | `result-track:05e09451af1fc532f15405a5f1b6b0e51140077bc2bf7495b8b929c963460ba6` |
| 7 | `theorem` | [bind_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant2e8dce41c84725c51d5c7a957c83b72c7826e008e851d1682dcec8a5179fd7fd.lean/declarations/bind-def--f99ea588b83f325ce5ea4e0c.md) | 72 | `result-track:f99ea588b83f325ce5ea4e0c6df3ef90c4cc1be98177d3eae1a356d1c55d503b` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant2e8dce41c84725c51d5c7a957c83b72c7826e008e851d1682dcec8a5179fd7fd.lean/declarations/instance--19ae3ac69cc40e3dac97af7e.md) | 75 | `declaration-track:19ae3ac69cc40e3dac97af7e7ed6f62cf00e3fd62bc974e644139197c2aa903e` |
| 9 | `theorem` | [map_comp_coe](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant2e8dce41c84725c51d5c7a957c83b72c7826e008e851d1682dcec8a5179fd7fd.lean/declarations/map-comp-coe--478a54c213eb279ae5587684.md) | 86 | `result-track:478a54c213eb279ae5587684f757dcc5b9036de69cb09b8c1a9e4074c4c9ec36` |
| 10 | `theorem` | [id_traverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant2e8dce41c84725c51d5c7a957c83b72c7826e008e851d1682dcec8a5179fd7fd.lean/declarations/id-traverse--2e9803199e9694e63d77e9b6.md) | 90 | `result-track:2e9803199e9694e63d77e9b644f035084d252e9251891915491e3328addfec34` |
| 11 | `theorem` | [comp_traverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant2e8dce41c84725c51d5c7a957c83b72c7826e008e851d1682dcec8a5179fd7fd.lean/declarations/comp-traverse--af42508a2b3901470a3a8dd5.md) | 95 | `result-track:af42508a2b3901470a3a8dd5dbd923fd10636239ff75e13239d9f501eb60c28b` |
| 12 | `theorem` | [map_traverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant2e8dce41c84725c51d5c7a957c83b72c7826e008e851d1682dcec8a5179fd7fd.lean/declarations/map-traverse--4e3cb2c8497bf61ef0a1a086.md) | 103 | `result-track:4e3cb2c8497bf61ef0a1a0861a28339d925337077347d919105c78c3d4aa1295` |
| 13 | `theorem` | [traverse_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant2e8dce41c84725c51d5c7a957c83b72c7826e008e851d1682dcec8a5179fd7fd.lean/declarations/traverse-map--c56faaf048a96c265f79c942.md) | 112 | `result-track:c56faaf048a96c265f79c942b97428e44c4587bb5f7bc315594431286907b293` |
| 14 | `theorem` | [naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant2e8dce41c84725c51d5c7a957c83b72c7826e008e851d1682dcec8a5179fd7fd.lean/declarations/naturality--ab33d2d7164c2b3819245d25.md) | 119 | `result-track:ab33d2d7164c2b3819245d2534da99cec02cc46d308cab332c4fd660cb3678bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
