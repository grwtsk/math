# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CommGrp.Variant5c6ad1cce040cfee5e22734c57ddffcb9adfcdd7f040651d61fb4b1146065f7f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf78cb28a83abc8962394642463be5614ef87308",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant5c6ad1cce040cfee5e22734c57ddffcb9adfcdd7f040651d61fb4b1146065f7f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant5c6ad1cce040cfee5e22734c57ddffcb9adfcdd7f040651d61fb4b1146065f7f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant5c6ad1cce040cfee5e22734c57ddffcb9adfcdd7f040651d61fb4b1146065f7f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf78cb28a83abc8962394642463be5614ef87308`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant5c6ad1cce040cfee5e22734c57ddffcb9adfcdd7f040651d61fb4b1146065f7f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant5c6ad1cce040cfee5e22734c57ddffcb9adfcdd7f040651d61fb4b1146065f7f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Internal.Types.Grp_` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.CommGrp_` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [commGrpCommGroup](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant5c6ad1cce040cfee5e22734c57ddffcb9adfcdd7f040651d61fb4b1146065f7f.lean/declarations/commgrpcommgroup--91b7cd707b925ca30b4cff89.md) | 32 | `declaration-track:91b7cd707b925ca30b4cff89eb3ea872583f3435491bfe6885c6a670fb8a7fa4` |
| 2 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant5c6ad1cce040cfee5e22734c57ddffcb9adfcdd7f040651d61fb4b1146065f7f.lean/declarations/functor--ae39914e1d8a4bbd8820069c.md) | 37 | `declaration-track:ae39914e1d8a4bbd8820069c5e54ccdd739ed76e15085c15ebff7d698a4890f2` |
| 3 | `def` | [inverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant5c6ad1cce040cfee5e22734c57ddffcb9adfcdd7f040651d61fb4b1146065f7f.lean/declarations/inverse--b17af9ffcb6defe2e0604236.md) | 42 | `declaration-track:b17af9ffcb6defe2e0604236dfed9e9958489a8691164386fb606b6506ba9be1` |
| 4 | `theorem` | [inverse_obj_X](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant5c6ad1cce040cfee5e22734c57ddffcb9adfcdd7f040651d61fb4b1146065f7f.lean/declarations/inverse-obj-x--ee8ca6d9c47e2d9e7b0515ef.md) | 51 | `result-track:ee8ca6d9c47e2d9e7b0515ef7501b9af34939f5cc928d204695d97e0145b4d89` |
| 5 | `theorem` | [inverse_obj_one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant5c6ad1cce040cfee5e22734c57ddffcb9adfcdd7f040651d61fb4b1146065f7f.lean/declarations/inverse-obj-one--3bb4a359dbed21b60b490a8c.md) | 53 | `result-track:3bb4a359dbed21b60b490a8c7318d1450a18ad4ddc9e01f92480c856dff43863` |
| 6 | `theorem` | [inverse_obj_mul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant5c6ad1cce040cfee5e22734c57ddffcb9adfcdd7f040651d61fb4b1146065f7f.lean/declarations/inverse-obj-mul--2d0dff02fef71d0be36d6019.md) | 55 | `result-track:2d0dff02fef71d0be36d6019dfba8109c696857d434d54730a1582c577314d2f` |
| 7 | `theorem` | [inverse_obj_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant5c6ad1cce040cfee5e22734c57ddffcb9adfcdd7f040651d61fb4b1146065f7f.lean/declarations/inverse-obj-inv--3e51e4258497db0db6681cb4.md) | 57 | `result-track:3e51e4258497db0db6681cb403ef1ce5aa38858150f2a5dc306469bd9166b858` |
| 8 | `def` | [commGrpTypeEquivalenceCommGrp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant5c6ad1cce040cfee5e22734c57ddffcb9adfcdd7f040651d61fb4b1146065f7f.lean/declarations/commgrptypeequivalencecommgrp--da63452d0a453826ed8ce08c.md) | 63 | `declaration-track:da63452d0a453826ed8ce08c4d1225d5094bdcd906720aa8203029556a3710bf` |
| 9 | `def` | [commGrpTypeEquivalenceCommGrpForgetGrp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant5c6ad1cce040cfee5e22734c57ddffcb9adfcdd7f040651d61fb4b1146065f7f.lean/declarations/commgrptypeequivalencecommgrpforgetgrp--97444825a135586e07b51894.md) | 74 | `declaration-track:97444825a135586e07b518947f8e82fee3e37dd8d9f616e6b74dd77159fa5628` |
| 10 | `def` | [commGrpTypeEquivalenceCommGrpForgetCommMon](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant5c6ad1cce040cfee5e22734c57ddffcb9adfcdd7f040651d61fb4b1146065f7f.lean/declarations/commgrptypeequivalencecommgrpforgetcommmon--d5d47e1ddcd29e9ad08a3431.md) | 82 | `declaration-track:d5d47e1ddcd29e9ad08a34314a7563f07e4e13ed0b60ec9b97a982b3cf3bb4ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
