# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ConcreteCategory.Variant68802ee476e49f6160dac12098cda2e914b158e9d2bfea6051cbd1727be3f739

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63f63b2e969de512b05a48d68e834484137172e9",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant68802ee476e49f6160dac12098cda2e914b158e9d2bfea6051cbd1727be3f739.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant68802ee476e49f6160dac12098cda2e914b158e9d2bfea6051cbd1727be3f739.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant68802ee476e49f6160dac12098cda2e914b158e9d2bfea6051cbd1727be3f739.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63f63b2e969de512b05a48d68e834484137172e9`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant68802ee476e49f6160dac12098cda2e914b158e9d2bfea6051cbd1727be3f739.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant68802ee476e49f6160dac12098cda2e914b158e9d2bfea6051cbd1727be3f739.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Preserves.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.WidePullbacks` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Multiequalizer` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Kernels` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Concrete.to_product_injective_of_isLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant68802ee476e49f6160dac12098cda2e914b158e9d2bfea6051cbd1727be3f739.lean/declarations/concrete-to-product-injective-of-islimit--9462031048a91e121d531243.md) | 34 | `result-track:9462031048a91e121d531243fa495dfa5274188da102076a6ada63c357bf4e4c` |
| 2 | `theorem` | [Concrete.isLimit_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant68802ee476e49f6160dac12098cda2e914b158e9d2bfea6051cbd1727be3f739.lean/declarations/concrete-islimit-ext--8b078d0a00ea9e3a179a294a.md) | 50 | `result-track:8b078d0a00ea9e3a179a294aefa5664c208bd185ee25a4d3a713f69b84ac82f4` |
| 3 | `theorem` | [Concrete.limit_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant68802ee476e49f6160dac12098cda2e914b158e9d2bfea6051cbd1727be3f739.lean/declarations/concrete-limit-ext--bcd7be272313f812ad0526d9.md) | 55 | `result-track:bcd7be272313f812ad0526d909e33e93939ef7bc4289aaf68fe96fb2aa63c55a` |
| 4 | `theorem` | [Concrete.widePullback_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant68802ee476e49f6160dac12098cda2e914b158e9d2bfea6051cbd1727be3f739.lean/declarations/concrete-widepullback-ext--9c8bdc4b69b691c71e088a42.md) | 66 | `result-track:9c8bdc4b69b691c71e088a4263647f3a5f046f562c4efe6268be06f4a27e18a2` |
| 5 | `theorem` | [Concrete.widePullback_ext'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant68802ee476e49f6160dac12098cda2e914b158e9d2bfea6051cbd1727be3f739.lean/declarations/concrete-widepullback-ext--16b7633893b2db628d9ff276.md) | 76 | `result-track:16b7633893b2db628d9ff27612d203200be349757e034861c4bde817a3305b98` |
| 6 | `theorem` | [Concrete.multiequalizer_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant68802ee476e49f6160dac12098cda2e914b158e9d2bfea6051cbd1727be3f739.lean/declarations/concrete-multiequalizer-ext--3463410a5c46de1c24220067.md) | 89 | `result-track:3463410a5c46de1c242200672592bef4f15f5972c03ce555d0d34b844bef3fcc` |
| 7 | `def` | [Concrete.multiequalizerEquivAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant68802ee476e49f6160dac12098cda2e914b158e9d2bfea6051cbd1727be3f739.lean/declarations/concrete-multiequalizerequivaux--1930bc1c464133e7c48a1e3d.md) | 100 | `declaration-track:1930bc1c464133e7c48a1e3df9148d6865c105cc24dbfa7f62fd2a6d41a6e867` |
| 8 | `def` | [Concrete.multiequalizerEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant68802ee476e49f6160dac12098cda2e914b158e9d2bfea6051cbd1727be3f739.lean/declarations/concrete-multiequalizerequiv--52276f314d02debc8946f3a9.md) | 134 | `declaration-track:52276f314d02debc8946f3a9edf92d84c7fdbfbe300f72f26dc8067a52623d62` |
| 9 | `theorem` | [Concrete.multiequalizerEquiv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant68802ee476e49f6160dac12098cda2e914b158e9d2bfea6051cbd1727be3f739.lean/declarations/concrete-multiequalizerequiv-apply--abc738b1ba75c774a04a81ae.md) | 145 | `result-track:abc738b1ba75c774a04a81aebba5aa9fad3aa42c980bcb06642a71a12a41c284` |
| 10 | `theorem` | [cokernel_funext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant68802ee476e49f6160dac12098cda2e914b158e9d2bfea6051cbd1727be3f739.lean/declarations/cokernel-funext--44314870556fa9bad87cceab.md) | 159 | `result-track:44314870556fa9bad87cceaba4628d8ac6eb24b0a8679ae1189243758b4fa93d` |
| 11 | `theorem` | [Concrete.from_union_surjective_of_isColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant68802ee476e49f6160dac12098cda2e914b158e9d2bfea6051cbd1727be3f739.lean/declarations/concrete-from-union-surjective-of-iscolimit--55cc12c7f5bf8fa58a959152.md) | 169 | `result-track:55cc12c7f5bf8fa58a959152f272d9cc856ca3f7884b438646cbab364a1f3186` |
| 12 | `theorem` | [Concrete.isColimit_exists_rep](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant68802ee476e49f6160dac12098cda2e914b158e9d2bfea6051cbd1727be3f739.lean/declarations/concrete-iscolimit-exists-rep--bfebd596f16c4c620b358253.md) | 195 | `result-track:bfebd596f16c4c620b3582534cd1b804e66627039f5459bd8777c3d4e11d72f7` |
| 13 | `theorem` | [Concrete.colimit_exists_rep](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant68802ee476e49f6160dac12098cda2e914b158e9d2bfea6051cbd1727be3f739.lean/declarations/concrete-colimit-exists-rep--4534f4fe0f6e8c5d32aa01f0.md) | 201 | `result-track:4534f4fe0f6e8c5d32aa01f0dc229f2401ade75b4608b8d36c59cfface5c73bf` |
| 14 | `theorem` | [Concrete.isColimit_rep_eq_of_exists](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant68802ee476e49f6160dac12098cda2e914b158e9d2bfea6051cbd1727be3f739.lean/declarations/concrete-iscolimit-rep-eq-of-exists--b3f79435bd493bb8eaa4803d.md) | 206 | `result-track:b3f79435bd493bb8eaa4803d5358b38f8f4ba18c6b86f154b8a881d09b51796e` |
| 15 | `theorem` | [Concrete.colimit_rep_eq_of_exists](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant68802ee476e49f6160dac12098cda2e914b158e9d2bfea6051cbd1727be3f739.lean/declarations/concrete-colimit-rep-eq-of-exists--93672a0feded24ade7291695.md) | 225 | `result-track:93672a0feded24ade7291695911f4c9e03bb353de926daecc56f05b2164c35bf` |
| 16 | `theorem` | [Concrete.isColimit_exists_of_rep_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant68802ee476e49f6160dac12098cda2e914b158e9d2bfea6051cbd1727be3f739.lean/declarations/concrete-iscolimit-exists-of-rep-eq--8430570ac1dc3205b088c884.md) | 235 | `result-track:8430570ac1dc3205b088c88433c2cb327ce55654dc6fe4fcfbfde79a1a07e2ac` |
| 17 | `theorem` | [Concrete.isColimit_rep_eq_iff_exists](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant68802ee476e49f6160dac12098cda2e914b158e9d2bfea6051cbd1727be3f739.lean/declarations/concrete-iscolimit-rep-eq-iff-exists--7e3653ea28fd01424341570a.md) | 277 | `result-track:7e3653ea28fd01424341570a7960fe62a86a746b6c9b23e0408ef8cfbf3d5bf7` |
| 18 | `theorem` | [Concrete.colimit_exists_of_rep_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant68802ee476e49f6160dac12098cda2e914b158e9d2bfea6051cbd1727be3f739.lean/declarations/concrete-colimit-exists-of-rep-eq--6e56ea8c99b2269a05e54515.md) | 283 | `result-track:6e56ea8c99b2269a05e5451503d0d20608ce9defba1139f305d9fec8441819f0` |
| 19 | `theorem` | [Concrete.colimit_rep_eq_iff_exists](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant68802ee476e49f6160dac12098cda2e914b158e9d2bfea6051cbd1727be3f739.lean/declarations/concrete-colimit-rep-eq-iff-exists--e4d905e84ba0f16afe0401bf.md) | 289 | `result-track:e4d905e84ba0f16afe0401bf04dbae57643da2b754537f727c6789e5e75180c9` |
| 20 | `theorem` | [Concrete.widePushout_exists_rep](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant68802ee476e49f6160dac12098cda2e914b158e9d2bfea6051cbd1727be3f739.lean/declarations/concrete-widepushout-exists-rep--e6b493ab611eee3b9c4ee8c1.md) | 302 | `result-track:e6b493ab611eee3b9c4ee8c170fbaa4b2d0a7134f0c5328e3f04e3d17e9115da` |
| 21 | `theorem` | [Concrete.widePushout_exists_rep'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant68802ee476e49f6160dac12098cda2e914b158e9d2bfea6051cbd1727be3f739.lean/declarations/concrete-widepushout-exists-rep--9c319ce436e0d8086c322cc9.md) | 314 | `result-track:9c319ce436e0d8086c322cc921cce4379cf88f47930bbe07aaa72758609cc95b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
