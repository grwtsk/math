# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorCategory.Variantd6fe0424b04e599d12531443486827ac24bb88cdc8b8d2c0fdcf02bda29eed9f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ea37ed2fdf360580c24b5cf93e17d06ae405fa67",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantd6fe0424b04e599d12531443486827ac24bb88cdc8b8d2c0fdcf02bda29eed9f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantd6fe0424b04e599d12531443486827ac24bb88cdc8b8d2c0fdcf02bda29eed9f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantd6fe0424b04e599d12531443486827ac24bb88cdc8b8d2c0fdcf02bda29eed9f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ea37ed2fdf360580c24b5cf93e17d06ae405fa67`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantd6fe0424b04e599d12531443486827ac24bb88cdc8b8d2c0fdcf02bda29eed9f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantd6fe0424b04e599d12531443486827ac24bb88cdc8b8d2c0fdcf02bda29eed9f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Preadditive.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantd6fe0424b04e599d12531443486827ac24bb88cdc8b8d2c0fdcf02bda29eed9f.lean/declarations/instance--9b03ef649ca16c069fdd3df2.md) | 31 | `declaration-track:9b03ef649ca16c069fdd3df2811b891863551105d3c24e2ab1e0be81e1e44523` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantd6fe0424b04e599d12531443486827ac24bb88cdc8b8d2c0fdcf02bda29eed9f.lean/declarations/instance--94263ad877f89f0f7c06d057.md) | 34 | `declaration-track:94263ad877f89f0f7c06d057061ca847a6256b809911642413e47d5bdd0337c3` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantd6fe0424b04e599d12531443486827ac24bb88cdc8b8d2c0fdcf02bda29eed9f.lean/declarations/instance--4f668a428783efe6dbd01816.md) | 37 | `declaration-track:4f668a428783efe6dbd018168bfef0f1ef840cc1c831c10173f6de48d9563d92` |
| 4 | `instance` | [functorCategoryPreadditive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantd6fe0424b04e599d12531443486827ac24bb88cdc8b8d2c0fdcf02bda29eed9f.lean/declarations/functorcategorypreadditive--46f3605aa93f43741078ba8a.md) | 40 | `declaration-track:46f3605aa93f43741078ba8aefe0c123d3733a8bd1afcf4eab352879b844aa08` |
| 5 | `def` | [appHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantd6fe0424b04e599d12531443486827ac24bb88cdc8b8d2c0fdcf02bda29eed9f.lean/declarations/apphom--7d9ebe8a36077da2ef11798a.md) | 87 | `declaration-track:7d9ebe8a36077da2ef11798a8c677807514b331730f5680822de482561f78f75` |
| 6 | `theorem` | [app_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantd6fe0424b04e599d12531443486827ac24bb88cdc8b8d2c0fdcf02bda29eed9f.lean/declarations/app-zero--d95fbda5b5511bfd3410e4aa.md) | 93 | `result-track:d95fbda5b5511bfd3410e4aaa6366ecf2fe77c99505aa329388b3992db35e0c7` |
| 7 | `theorem` | [app_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantd6fe0424b04e599d12531443486827ac24bb88cdc8b8d2c0fdcf02bda29eed9f.lean/declarations/app-add--d17b3c41f13946525ace15ac.md) | 97 | `result-track:d17b3c41f13946525ace15acf2bf8a76c795a25b9f3bb00d6d60b8cb227013b9` |
| 8 | `theorem` | [app_sub](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantd6fe0424b04e599d12531443486827ac24bb88cdc8b8d2c0fdcf02bda29eed9f.lean/declarations/app-sub--9137fc2656ad9c6b3511d09a.md) | 101 | `result-track:9137fc2656ad9c6b3511d09ae3dd3b5b3d2bdc204d87834773218bd64854df94` |
| 9 | `theorem` | [app_neg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantd6fe0424b04e599d12531443486827ac24bb88cdc8b8d2c0fdcf02bda29eed9f.lean/declarations/app-neg--451d0622374aec30191e1a5f.md) | 105 | `result-track:451d0622374aec30191e1a5f2ac4221c95e7a1829bbb8db4d7af8163348d8b5d` |
| 10 | `theorem` | [app_nsmul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantd6fe0424b04e599d12531443486827ac24bb88cdc8b8d2c0fdcf02bda29eed9f.lean/declarations/app-nsmul--c323e65914217d69c8caff35.md) | 109 | `result-track:c323e65914217d69c8caff3591f0e79b876ab389dfbf68f3d150299d3d57d91c` |
| 11 | `theorem` | [app_zsmul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantd6fe0424b04e599d12531443486827ac24bb88cdc8b8d2c0fdcf02bda29eed9f.lean/declarations/app-zsmul--d8b7ee4c1d25037cf01464c7.md) | 113 | `result-track:d8b7ee4c1d25037cf01464c71803c39098e10ee1e57700a75b3d75793ac634ed` |
| 12 | `theorem` | [app_units_zsmul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantd6fe0424b04e599d12531443486827ac24bb88cdc8b8d2c0fdcf02bda29eed9f.lean/declarations/app-units-zsmul--6981c7a1ce1a8769f00dfb73.md) | 117 | `result-track:6981c7a1ce1a8769f00dfb735e03717ff0b0344ccf7713c89815900559225678` |
| 13 | `theorem` | [app_sum](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantd6fe0424b04e599d12531443486827ac24bb88cdc8b8d2c0fdcf02bda29eed9f.lean/declarations/app-sum--82951b3ca65e86a2cc61248e.md) | 121 | `result-track:82951b3ca65e86a2cc61248ed876231aefa997d06c60bef403acffcb703ff215` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
