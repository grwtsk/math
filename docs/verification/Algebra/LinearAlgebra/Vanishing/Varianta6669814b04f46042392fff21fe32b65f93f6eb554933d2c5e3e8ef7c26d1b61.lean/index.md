# Verification target: GRWTSK.Algebra.LinearAlgebra.Vanishing.Varianta6669814b04f46042392fff21fe32b65f93f6eb554933d2c5e3e8ef7c26d1b61

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4cb87c93914e6d089a0557cd5f8ee127dbb22d97",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Vanishing/Varianta6669814b04f46042392fff21fe32b65f93f6eb554933d2c5e3e8ef7c26d1b61.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Vanishing/Varianta6669814b04f46042392fff21fe32b65f93f6eb554933d2c5e3e8ef7c26d1b61.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Vanishing/Varianta6669814b04f46042392fff21fe32b65f93f6eb554933d2c5e3e8ef7c26d1b61.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4cb87c93914e6d089a0557cd5f8ee127dbb22d97`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Vanishing/Varianta6669814b04f46042392fff21fe32b65f93f6eb554933d2c5e3e8ef7c26d1b61.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Vanishing/Varianta6669814b04f46042392fff21fe32b65f93f6eb554933d2c5e3e8ef7c26d1b61.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.TensorProduct.RightExactness` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Finiteness` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.DirectSum.Finsupp` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [VanishesTrivially](../../../../../mathematics/Algebra/LinearAlgebra/Vanishing/Varianta6669814b04f46042392fff21fe32b65f93f6eb554933d2c5e3e8ef7c26d1b61.lean/declarations/vanishestrivially--839533c24be1fc02c04a74a9.md) | 85 | `declaration-track:839533c24be1fc02c04a74a940bfe4a242eb8365fdfec26b9a643d7ea78645cc` |
| 2 | `theorem` | [VanishesTrivially.of_fintype](../../../../../mathematics/Algebra/LinearAlgebra/Vanishing/Varianta6669814b04f46042392fff21fe32b65f93f6eb554933d2c5e3e8ef7c26d1b61.lean/declarations/vanishestrivially-of-fintype--cc430eb81c4baaa79b71168a.md) | 91 | `result-track:cc430eb81c4baaa79b71168ae8630713132d6520c81a8df5fb883f811067b39e` |
| 3 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.VanishesTrivially.Variantbf29706b89ab67f2dfb444094490ceb741b0dad19f4fa6fa3c165a6f804f788e.Equiv.vanishesTrivially_comp](../../../../../mathematics/Algebra/LinearAlgebra/Vanishing/Varianta6669814b04f46042392fff21fe32b65f93f6eb554933d2c5e3e8ef7c26d1b61.lean/declarations/root-grwtsk-algebra-linearalgebra-vanishestrivially-variantbf29706b89ab6--672025a40506de7d0b233370.md) | 98 | `result-track:672025a40506de7d0b23337034bfef7a980aa561bfc553c71d9bcf662d7ea506` |
| 4 | `theorem` | [sum_tmul_eq_zero_of_vanishesTrivially](../../../../../mathematics/Algebra/LinearAlgebra/Vanishing/Varianta6669814b04f46042392fff21fe32b65f93f6eb554933d2c5e3e8ef7c26d1b61.lean/declarations/sum-tmul-eq-zero-of-vanishestrivially--638e0914e2d433e3227bf30f.md) | 111 | `result-track:638e0914e2d433e3227bf30f70c9f67410baed3f9b559c790abef3f366b23e7e` |
| 5 | `theorem` | [vanishesTrivially_of_sum_tmul_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Vanishing/Varianta6669814b04f46042392fff21fe32b65f93f6eb554933d2c5e3e8ef7c26d1b61.lean/declarations/vanishestrivially-of-sum-tmul-eq-zero--1727713479e7c8f2d795e752.md) | 124 | `result-track:1727713479e7c8f2d795e752ff0972fced4d4eba438fe8b83010ee7ccbfff7e6` |
| 6 | `theorem` | [vanishesTrivially_iff_sum_tmul_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Vanishing/Varianta6669814b04f46042392fff21fe32b65f93f6eb554933d2c5e3e8ef7c26d1b61.lean/declarations/vanishestrivially-iff-sum-tmul-eq-zero--b61326fed242d89c912aba03.md) | 184 | `result-track:b61326fed242d89c912aba03a4bcea616a5d13ea70ddd1691b2a650e8ac30e40` |
| 7 | `theorem` | [vanishesTrivially_of_sum_tmul_eq_zero_of_rTensor_injective](../../../../../mathematics/Algebra/LinearAlgebra/Vanishing/Varianta6669814b04f46042392fff21fe32b65f93f6eb554933d2c5e3e8ef7c26d1b61.lean/declarations/vanishestrivially-of-sum-tmul-eq-zero-of-rtensor-injective--0bc662a3b18f01464229b8e7.md) | 195 | `result-track:0bc662a3b18f01464229b8e7169479cb50f542cbad172c89f31fe49385514b66` |
| 8 | `theorem` | [vanishesTrivially_iff_sum_tmul_eq_zero_of_rTensor_injective](../../../../../mathematics/Algebra/LinearAlgebra/Vanishing/Varianta6669814b04f46042392fff21fe32b65f93f6eb554933d2c5e3e8ef7c26d1b61.lean/declarations/vanishestrivially-iff-sum-tmul-eq-zero-of-rtensor-injective--da398c978f83f98e1a3cb062.md) | 221 | `result-track:da398c978f83f98e1a3cb06209200182ef44c22e4f0504512514c20818e2626f` |
| 9 | `theorem` | [rTensor_injective_of_forall_vanishesTrivially](../../../../../mathematics/Algebra/LinearAlgebra/Vanishing/Varianta6669814b04f46042392fff21fe32b65f93f6eb554933d2c5e3e8ef7c26d1b61.lean/declarations/rtensor-injective-of-forall-vanishestrivially--b8206f1d7fc0f1aaec47af12.md) | 231 | `result-track:b8206f1d7fc0f1aaec47af12d9955c4fb07443f4a560c36ba57e04c80000a860` |
| 10 | `theorem` | [forall_vanishesTrivially_iff_forall_rTensor_injective](../../../../../mathematics/Algebra/LinearAlgebra/Vanishing/Varianta6669814b04f46042392fff21fe32b65f93f6eb554933d2c5e3e8ef7c26d1b61.lean/declarations/forall-vanishestrivially-iff-forall-rtensor-injective--3b9d1b9897dd0fccf8a9fe31.md) | 253 | `result-track:3b9d1b9897dd0fccf8a9fe31e1cb3e142d75e5ac77f6190aa7326669216de7ec` |
| 11 | `theorem` | [forall_vanishesTrivially_iff_forall_fg_rTensor_injective](../../../../../mathematics/Algebra/LinearAlgebra/Vanishing/Varianta6669814b04f46042392fff21fe32b65f93f6eb554933d2c5e3e8ef7c26d1b61.lean/declarations/forall-vanishestrivially-iff-forall-fg-rtensor-injective--7687089a7495f23fa4d8aca0.md) | 266 | `result-track:7687089a7495f23fa4d8aca0f4e103f8bf454ada497565afe1423c73e9e54bfa` |
| 12 | `theorem` | [rTensor_injective_of_forall_fg_rTensor_injective](../../../../../mathematics/Algebra/LinearAlgebra/Vanishing/Varianta6669814b04f46042392fff21fe32b65f93f6eb554933d2c5e3e8ef7c26d1b61.lean/declarations/rtensor-injective-of-forall-fg-rtensor-injective--7fcbe081c0d36fb82c550361.md) | 279 | `result-track:7fcbe081c0d36fb82c550361c80570645a162a13479ba29756b1cb8eabad194e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
