# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasColimits.Variant853f492fd574028de71e6c63845e52232e307bd6db01cad0dd6e30278602c33e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "62cbed0957071213c8d0163aae912ff459784e11",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant853f492fd574028de71e6c63845e52232e307bd6db01cad0dd6e30278602c33e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant853f492fd574028de71e6c63845e52232e307bd6db01cad0dd6e30278602c33e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant853f492fd574028de71e6c63845e52232e307bd6db01cad0dd6e30278602c33e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `62cbed0957071213c8d0163aae912ff459784e11`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant853f492fd574028de71e6c63845e52232e307bd6db01cad0dd6e30278602c33e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant853f492fd574028de71e6c63845e52232e307bd6db01cad0dd6e30278602c33e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.RingedSpace.PresheafedSpace` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Limits.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.Limits` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.Elementwise` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [map_id_c_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant853f492fd574028de71e6c63845e52232e307bd6db01cad0dd6e30278602c33e.lean/declarations/map-id-c-app--2e5d8c1009390377bce20a43.md) | 65 | `result-track:2e5d8c1009390377bce20a438bdb8531f11f6aad756b47ba50f84aa25b385d41` |
| 2 | `theorem` | [map_comp_c_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant853f492fd574028de71e6c63845e52232e307bd6db01cad0dd6e30278602c33e.lean/declarations/map-comp-c-app--ef50031080de6da417ce34f6.md) | 72 | `result-track:ef50031080de6da417ce34f60fbacf28199da68acfdd030ad94dcc8c14deed48` |
| 3 | `def` | [componentwiseDiagram](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant853f492fd574028de71e6c63845e52232e307bd6db01cad0dd6e30278602c33e.lean/declarations/componentwisediagram--781316a9603f3d068dcdd13d.md) | 86 | `declaration-track:781316a9603f3d068dcdd13d277c684d43a38fdf282a58fe3f9a3bd90ee7f479` |
| 4 | `def` | [pushforwardDiagramToColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant853f492fd574028de71e6c63845e52232e307bd6db01cad0dd6e30278602c33e.lean/declarations/pushforwarddiagramtocolimit--cbb592a4797a69d2501cd85f.md) | 103 | `declaration-track:cbb592a4797a69d2501cd85f296a342250e970d7295b5f5ad292ad90d338357a` |
| 5 | `def` | [colimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant853f492fd574028de71e6c63845e52232e307bd6db01cad0dd6e30278602c33e.lean/declarations/colimit--e1ad19b6475a316f96768db6.md) | 139 | `declaration-track:e1ad19b6475a316f96768db67a4b04c79dd5a5ce7fb64d990e6cb2615246c360` |
| 6 | `theorem` | [colimit_carrier](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant853f492fd574028de71e6c63845e52232e307bd6db01cad0dd6e30278602c33e.lean/declarations/colimit-carrier--412904ddf70e8f0b952049bd.md) | 144 | `result-track:412904ddf70e8f0b952049bd5ebcd13eadcc4ba58f06b83886998feb99204cc2` |
| 7 | `theorem` | [colimit_presheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant853f492fd574028de71e6c63845e52232e307bd6db01cad0dd6e30278602c33e.lean/declarations/colimit-presheaf--a89a4e86ec37650e7d9450c4.md) | 149 | `result-track:a89a4e86ec37650e7d9450c4781aeb6b488e7a3c5ba1aa39852159efb784b682` |
| 8 | `def` | [colimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant853f492fd574028de71e6c63845e52232e307bd6db01cad0dd6e30278602c33e.lean/declarations/colimitcocone--b749304ee1502c9e8f8c7725.md) | 156 | `declaration-track:b749304ee1502c9e8f8c77259d7fa4300ea55b6af1a129e6ac705693bc063c95` |
| 9 | `def` | [descCApp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant853f492fd574028de71e6c63845e52232e307bd6db01cad0dd6e30278602c33e.lean/declarations/desccapp--6e0a7e8edd8b6f5b5f9813f5.md) | 181 | `declaration-track:6e0a7e8edd8b6f5b5f9813f583c0e66d5be550cac6f4c89d2e270b402bfc5d64` |
| 10 | `theorem` | [desc_c_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant853f492fd574028de71e6c63845e52232e307bd6db01cad0dd6e30278602c33e.lean/declarations/desc-c-naturality--6c4294261a3f8f44fb38815c.md) | 210 | `result-track:6c4294261a3f8f44fb38815c3101fb73c7bce9390d354d9fe6887654d395787d` |
| 11 | `def` | [desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant853f492fd574028de71e6c63845e52232e307bd6db01cad0dd6e30278602c33e.lean/declarations/desc--5402c6d694acfd4f636be641.md) | 225 | `declaration-track:5402c6d694acfd4f636be641783f4d416a00d4e3520cb679ce04c9527b8a72eb` |
| 12 | `theorem` | [desc_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant853f492fd574028de71e6c63845e52232e307bd6db01cad0dd6e30278602c33e.lean/declarations/desc-fac--e36c3c917544a58e7a0dec11.md) | 231 | `result-track:e36c3c917544a58e7a0dec11d2ea8b753663804be97cba589019a01de065e13d` |
| 13 | `def` | [colimitCoconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant853f492fd574028de71e6c63845e52232e307bd6db01cad0dd6e30278602c33e.lean/declarations/colimitcoconeiscolimit--56077717159f70bc1d010843.md) | 249 | `declaration-track:56077717159f70bc1d0108430988bd27f6f071e6658725e016f70fedacfebbc4` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant853f492fd574028de71e6c63845e52232e307bd6db01cad0dd6e30278602c33e.lean/declarations/instance--ef31e47b55c060c9106f7fd4.md) | 272 | `declaration-track:ef31e47b55c060c9106f7fd4842f49b8753ef3a8edda7821beaa715254354bab` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant853f492fd574028de71e6c63845e52232e307bd6db01cad0dd6e30278602c33e.lean/declarations/instance--4c605c5dd06d467fdeafd80e.md) | 275 | `declaration-track:4c605c5dd06d467fdeafd80ef9f15408f5097f61f52b60fd972aa4d461204aad` |
| 16 | `instance` | [instHasColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant853f492fd574028de71e6c63845e52232e307bd6db01cad0dd6e30278602c33e.lean/declarations/insthascolimits--6092b22c25ea14a78f1b87ee.md) | 285 | `declaration-track:6092b22c25ea14a78f1b87ee8c0cf4bd410bd5130893fe2d2b434eb6dd9ba57f` |
| 17 | `instance` | [forget_preservesColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant853f492fd574028de71e6c63845e52232e307bd6db01cad0dd6e30278602c33e.lean/declarations/forget-preservescolimits--8c09c592f0f711d3ffcbe34d.md) | 291 | `declaration-track:8c09c592f0f711d3ffcbe34d77dec23e117f0f2a0d27517ab1a6c687c3b1f983` |
| 18 | `def` | [colimitPresheafObjIsoComponentwiseLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant853f492fd574028de71e6c63845e52232e307bd6db01cad0dd6e30278602c33e.lean/declarations/colimitpresheafobjisocomponentwiselimit--2c57450eee855c6052ace358.md) | 301 | `declaration-track:2c57450eee855c6052ace358c24b28be4ba3aa2464689b551f64e66f1787b481` |
| 19 | `theorem` | [colimitPresheafObjIsoComponentwiseLimit_inv_ι_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant853f492fd574028de71e6c63845e52232e307bd6db01cad0dd6e30278602c33e.lean/declarations/colimitpresheafobjisocomponentwiselimit-inv-app--f7337608f5dae4085e79e110.md) | 328 | `result-track:f7337608f5dae4085e79e1103e995359f47c7d0c8a235a290cd78fafa30adf0c` |
| 20 | `theorem` | [colimitPresheafObjIsoComponentwiseLimit_hom_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant853f492fd574028de71e6c63845e52232e307bd6db01cad0dd6e30278602c33e.lean/declarations/colimitpresheafobjisocomponentwiselimit-hom--373dd53a66d6c46a3a627664.md) | 349 | `result-track:373dd53a66d6c46a3a627664eef06d0457cc05dc603ddf6b5a0da262d3cb30ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
