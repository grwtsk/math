# Verification target: GRWTSK.Algebra.GroupTheory.OrderDual.Variant8ba96e8a5f4885e5aed3b994b0cf9d03f7364c6098b4424da86fde4019eabcd3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "657db0f6e0b56eb5551fcdb022f3b3c31d25e2d3",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/OrderDual/Variant8ba96e8a5f4885e5aed3b994b0cf9d03f7364c6098b4424da86fde4019eabcd3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/OrderDual/Variant8ba96e8a5f4885e5aed3b994b0cf9d03f7364c6098b4424da86fde4019eabcd3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/OrderDual/Variant8ba96e8a5f4885e5aed3b994b0cf9d03f7364c6098b4424da86fde4019eabcd3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `657db0f6e0b56eb5551fcdb022f3b3c31d25e2d3`.

Source path: `GRWTSK/Algebra/GroupTheory/OrderDual/Variant8ba96e8a5f4885e5aed3b994b0cf9d03f7364c6098b4424da86fde4019eabcd3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/OrderDual/Variant8ba96e8a5f4885e5aed3b994b0cf9d03f7364c6098b4424da86fde4019eabcd3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.OrderSynonym` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Cancel.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [contravariantClass_mul_le](../../../../../mathematics/Algebra/GroupTheory/OrderDual/Variant8ba96e8a5f4885e5aed3b994b0cf9d03f7364c6098b4424da86fde4019eabcd3.lean/declarations/contravariantclass-mul-le--c96cdbdda27aa6e8579e45db.md) | 31 | `declaration-track:c96cdbdda27aa6e8579e45dbfbee3a55838af9b81e16b2ed47158518424b1043` |
| 2 | `instance` | [covariantClass_mul_le](../../../../../mathematics/Algebra/GroupTheory/OrderDual/Variant8ba96e8a5f4885e5aed3b994b0cf9d03f7364c6098b4424da86fde4019eabcd3.lean/declarations/covariantclass-mul-le--4f16595f36e97d4381fe291f.md) | 38 | `declaration-track:4f16595f36e97d4381fe291f5ce17942e0f47b5cd224887b7124aa41cd4ee45f` |
| 3 | `instance` | [contravariantClass_swap_mul_le](../../../../../mathematics/Algebra/GroupTheory/OrderDual/Variant8ba96e8a5f4885e5aed3b994b0cf9d03f7364c6098b4424da86fde4019eabcd3.lean/declarations/contravariantclass-swap-mul-le--9d2b0b6b07eb0b3b0c4e08ec.md) | 45 | `declaration-track:9d2b0b6b07eb0b3b0c4e08ec9ab64754955c9cf764313cf90ccaaeb056bc8426` |
| 4 | `instance` | [covariantClass_swap_mul_le](../../../../../mathematics/Algebra/GroupTheory/OrderDual/Variant8ba96e8a5f4885e5aed3b994b0cf9d03f7364c6098b4424da86fde4019eabcd3.lean/declarations/covariantclass-swap-mul-le--0c7f845f234b98aef8ada6fc.md) | 53 | `declaration-track:0c7f845f234b98aef8ada6fc122bc054b706512db9de42dc29e40b4ec1c88797` |
| 5 | `instance` | [contravariantClass_mul_lt](../../../../../mathematics/Algebra/GroupTheory/OrderDual/Variant8ba96e8a5f4885e5aed3b994b0cf9d03f7364c6098b4424da86fde4019eabcd3.lean/declarations/contravariantclass-mul-lt--13f449a12b2a129bb0ef98c5.md) | 61 | `declaration-track:13f449a12b2a129bb0ef98c5384579fe150cbea0c4c7cb589cc95b13adb673d7` |
| 6 | `instance` | [covariantClass_mul_lt](../../../../../mathematics/Algebra/GroupTheory/OrderDual/Variant8ba96e8a5f4885e5aed3b994b0cf9d03f7364c6098b4424da86fde4019eabcd3.lean/declarations/covariantclass-mul-lt--8bd8b781e2076225a3ae793d.md) | 68 | `declaration-track:8bd8b781e2076225a3ae793d642dd875e657caf4d3a5ebeeebce34fe9a8d285f` |
| 7 | `instance` | [contravariantClass_swap_mul_lt](../../../../../mathematics/Algebra/GroupTheory/OrderDual/Variant8ba96e8a5f4885e5aed3b994b0cf9d03f7364c6098b4424da86fde4019eabcd3.lean/declarations/contravariantclass-swap-mul-lt--a4baed0432cbc07c50978c47.md) | 75 | `declaration-track:a4baed0432cbc07c50978c470ff6412a1cc6687dff431b08b1504990942bed2c` |
| 8 | `instance` | [covariantClass_swap_mul_lt](../../../../../mathematics/Algebra/GroupTheory/OrderDual/Variant8ba96e8a5f4885e5aed3b994b0cf9d03f7364c6098b4424da86fde4019eabcd3.lean/declarations/covariantclass-swap-mul-lt--c929472217d603dcb421fba0.md) | 83 | `declaration-track:c929472217d603dcb421fba0c9e6fe1d73ca133e5c6b5ce5ad7bd193cbd5659b` |
| 9 | `instance` | [orderedCommMonoid](../../../../../mathematics/Algebra/GroupTheory/OrderDual/Variant8ba96e8a5f4885e5aed3b994b0cf9d03f7364c6098b4424da86fde4019eabcd3.lean/declarations/orderedcommmonoid--0d696d15d4c001eb6a44eb11.md) | 91 | `declaration-track:0d696d15d4c001eb6a44eb11106123b0debdfaac7a3daa51dccb50d84b047b0c` |
| 10 | `instance` | [OrderedCancelCommMonoid.to_contravariantClass](../../../../../mathematics/Algebra/GroupTheory/OrderDual/Variant8ba96e8a5f4885e5aed3b994b0cf9d03f7364c6098b4424da86fde4019eabcd3.lean/declarations/orderedcancelcommmonoid-to-contravariantclass--024f0d9277b9440b314e3ef1.md) | 98 | `declaration-track:024f0d9277b9440b314e3ef106f368e01fc59470970ba04ed75a6852107c58ac` |
| 11 | `instance` | [orderedCancelCommMonoid](../../../../../mathematics/Algebra/GroupTheory/OrderDual/Variant8ba96e8a5f4885e5aed3b994b0cf9d03f7364c6098b4424da86fde4019eabcd3.lean/declarations/orderedcancelcommmonoid--1389462007044a4dd4274564.md) | 109 | `declaration-track:1389462007044a4dd427456433f5830e6eedc7c3023ee8d3c3608afb355734b2` |
| 12 | `instance` | [linearOrderedCancelCommMonoid](../../../../../mathematics/Algebra/GroupTheory/OrderDual/Variant8ba96e8a5f4885e5aed3b994b0cf9d03f7364c6098b4424da86fde4019eabcd3.lean/declarations/linearorderedcancelcommmonoid--e447a27008db57f88da52023.md) | 114 | `declaration-track:e447a27008db57f88da520238bb633273d687db079e5613a060dcad5b7d0de78` |
| 13 | `instance` | [linearOrderedCommMonoid](../../../../../mathematics/Algebra/GroupTheory/OrderDual/Variant8ba96e8a5f4885e5aed3b994b0cf9d03f7364c6098b4424da86fde4019eabcd3.lean/declarations/linearorderedcommmonoid--ab69c3d7dd5b6ba8bf02b8d9.md) | 119 | `declaration-track:ab69c3d7dd5b6ba8bf02b8d9cee2c67b0c0ecae6b6d5aa97bb9a372100c97ddf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
