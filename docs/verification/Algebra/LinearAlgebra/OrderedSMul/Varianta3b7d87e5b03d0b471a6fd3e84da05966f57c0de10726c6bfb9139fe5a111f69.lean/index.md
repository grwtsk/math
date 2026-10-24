# Verification target: GRWTSK.Algebra.LinearAlgebra.OrderedSMul.Varianta3b7d87e5b03d0b471a6fd3e84da05966f57c0de10726c6bfb9139fe5a111f69

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "48f1317cd399984e84e6a4ebd5fadfbb304ed874",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/OrderedSMul/Varianta3b7d87e5b03d0b471a6fd3e84da05966f57c0de10726c6bfb9139fe5a111f69.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/OrderedSMul/Varianta3b7d87e5b03d0b471a6fd3e84da05966f57c0de10726c6bfb9139fe5a111f69.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/OrderedSMul/Varianta3b7d87e5b03d0b471a6fd3e84da05966f57c0de10726c6bfb9139fe5a111f69.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `48f1317cd399984e84e6a4ebd5fadfbb304ed874`.

Source path: `GRWTSK/Algebra/LinearAlgebra/OrderedSMul/Varianta3b7d87e5b03d0b471a6fd3e84da05966f57c0de10726c6bfb9139fe5a111f69.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/OrderedSMul/Varianta3b7d87e5b03d0b471a6fd3e84da05966f57c0de10726c6bfb9139fe5a111f69.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Pi` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Prod` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Module.Defs` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr.CoreAttrs` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [OrderedSMul](../../../../../mathematics/Algebra/LinearAlgebra/OrderedSMul/Varianta3b7d87e5b03d0b471a6fd3e84da05966f57c0de10726c6bfb9139fe5a111f69.lean/declarations/orderedsmul--9b9c2d9f72e2a9e2b3251b45.md) | 55 | `declaration-track:9b9c2d9f72e2a9e2b3251b4518d7fb8bd19041ae1cf4b8fc128670c8b6263f38` |
| 2 | `instance` | [OrderedSMul.toPosSMulStrictMono](../../../../../mathematics/Algebra/LinearAlgebra/OrderedSMul/Varianta3b7d87e5b03d0b471a6fd3e84da05966f57c0de10726c6bfb9139fe5a111f69.lean/declarations/orderedsmul-topossmulstrictmono--2f860db833db3a338c0364f5.md) | 69 | `declaration-track:2f860db833db3a338c0364f50ec8dfe1d9d58e4d1122fcc539e1f62b463bdf68` |
| 3 | `instance` | [OrderedSMul.toPosSMulReflectLT](../../../../../mathematics/Algebra/LinearAlgebra/OrderedSMul/Varianta3b7d87e5b03d0b471a6fd3e84da05966f57c0de10726c6bfb9139fe5a111f69.lean/declarations/orderedsmul-topossmulreflectlt--9b8a507ac3552e96daf97cf7.md) | 72 | `declaration-track:9b8a507ac3552e96daf97cf73c1ff9671ed34bbaec0861ce5d7dfa3b5e02b067` |
| 4 | `instance` | [OrderDual.instOrderedSMul](../../../../../mathematics/Algebra/LinearAlgebra/OrderedSMul/Varianta3b7d87e5b03d0b471a6fd3e84da05966f57c0de10726c6bfb9139fe5a111f69.lean/declarations/orderdual-instorderedsmul--e72b6c89e4d9d5755161b63e.md) | 75 | `declaration-track:e72b6c89e4d9d5755161b63e7bd0218b3c039e63f6524f81ea9e741f9952061a` |
| 5 | `theorem` | [OrderedSMul.mk''](../../../../../mathematics/Algebra/LinearAlgebra/OrderedSMul/Varianta3b7d87e5b03d0b471a6fd3e84da05966f57c0de10726c6bfb9139fe5a111f69.lean/declarations/orderedsmul-mk--14bb2f3992e1448f5f64b91c.md) | 83 | `result-track:14bb2f3992e1448f5f64b91c82d60429343023c5d3663429e13c74c38993159e` |
| 6 | `instance` | [Nat.orderedSMul](../../../../../mathematics/Algebra/LinearAlgebra/OrderedSMul/Varianta3b7d87e5b03d0b471a6fd3e84da05966f57c0de10726c6bfb9139fe5a111f69.lean/declarations/nat-orderedsmul--ae67da2be09af31220b69df1.md) | 89 | `declaration-track:ae67da2be09af31220b69df154184dbcedead1432be2b5c14d7ca03bbd3759b3` |
| 7 | `instance` | [Int.orderedSMul](../../../../../mathematics/Algebra/LinearAlgebra/OrderedSMul/Varianta3b7d87e5b03d0b471a6fd3e84da05966f57c0de10726c6bfb9139fe5a111f69.lean/declarations/int-orderedsmul--d590bfe87c197b9b82a11aad.md) | 99 | `declaration-track:d590bfe87c197b9b82a11aad66947a6c060c7c8a9a87719880a5edf45b71d7f6` |
| 8 | `instance` | [LinearOrderedSemiring.toOrderedSMul](../../../../../mathematics/Algebra/LinearAlgebra/OrderedSMul/Varianta3b7d87e5b03d0b471a6fd3e84da05966f57c0de10726c6bfb9139fe5a111f69.lean/declarations/linearorderedsemiring-toorderedsmul--b169e72fa8106d50ac46d538.md) | 111 | `declaration-track:b169e72fa8106d50ac46d538a4f371d3421bc679832b0b38418ba3c7b68c853f` |
| 9 | `theorem` | [OrderedSMul.mk'](../../../../../mathematics/Algebra/LinearAlgebra/OrderedSMul/Varianta3b7d87e5b03d0b471a6fd3e84da05966f57c0de10726c6bfb9139fe5a111f69.lean/declarations/orderedsmul-mk--c6ba215b023a5fa20ee2257a.md) | 125 | `result-track:c6ba215b023a5fa20ee2257ae32e0a6f25f9ceba8f5be295cc14746a3b07641e` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/OrderedSMul/Varianta3b7d87e5b03d0b471a6fd3e84da05966f57c0de10726c6bfb9139fe5a111f69.lean/declarations/instance--0446fb7cce4cf6d124b4b9be.md) | 137 | `declaration-track:0446fb7cce4cf6d124b4b9beac900c5d54697cd64c0298de63e16fea4bb59ba7` |
| 11 | `instance` | [Pi.orderedSMul](../../../../../mathematics/Algebra/LinearAlgebra/OrderedSMul/Varianta3b7d87e5b03d0b471a6fd3e84da05966f57c0de10726c6bfb9139fe5a111f69.lean/declarations/pi-orderedsmul--f8867a672ec396ce61147546.md) | 141 | `declaration-track:f8867a672ec396ce611475464d07331baa4fbf5e5aa4c4b9a35a2696fba908d8` |
| 12 | `lemma` | [inf_eq_half_smul_add_sub_abs_sub](../../../../../mathematics/Algebra/LinearAlgebra/OrderedSMul/Varianta3b7d87e5b03d0b471a6fd3e84da05966f57c0de10726c6bfb9139fe5a111f69.lean/declarations/inf-eq-half-smul-add-sub-abs-sub--8720f015bf39ae4e93ed34b2.md) | 152 | `result-track:8720f015bf39ae4e93ed34b26430b89977460260a0d4d627f82b96989aafcc5e` |
| 13 | `lemma` | [sup_eq_half_smul_add_add_abs_sub](../../../../../mathematics/Algebra/LinearAlgebra/OrderedSMul/Varianta3b7d87e5b03d0b471a6fd3e84da05966f57c0de10726c6bfb9139fe5a111f69.lean/declarations/sup-eq-half-smul-add-add-abs-sub--c1e043adae019a0ab97a277a.md) | 156 | `result-track:c1e043adae019a0ab97a277af800bef26a7188e4774db51b8cf4a04cdaa26bfa` |
| 14 | `lemma` | [inf_eq_half_smul_add_sub_abs_sub'](../../../../../mathematics/Algebra/LinearAlgebra/OrderedSMul/Varianta3b7d87e5b03d0b471a6fd3e84da05966f57c0de10726c6bfb9139fe5a111f69.lean/declarations/inf-eq-half-smul-add-sub-abs-sub--bdb12777c89f02a456ce2d30.md) | 167 | `result-track:bdb12777c89f02a456ce2d3011fa89348f34ddbbc220731104583232082ef4cd` |
| 15 | `lemma` | [sup_eq_half_smul_add_add_abs_sub'](../../../../../mathematics/Algebra/LinearAlgebra/OrderedSMul/Varianta3b7d87e5b03d0b471a6fd3e84da05966f57c0de10726c6bfb9139fe5a111f69.lean/declarations/sup-eq-half-smul-add-add-abs-sub--dbcbfc0941222a1c8e17c60a.md) | 171 | `result-track:dbcbfc0941222a1c8e17c60a13f6dd9c7eb448e90ecb203db247a840870ff499` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
