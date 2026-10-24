# Verification target: GRWTSK.Algebra.LinearAlgebra.BalancedCoreHull.Variant357933d835d44978b37d9ee94c4b2dd6feda2666aaae8ac311e4cec98bca2c91

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4044deb4f31cac6de6aaaf4cdf9fe06fc1616bc0",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BalancedCoreHull/Variant357933d835d44978b37d9ee94c4b2dd6feda2666aaae8ac311e4cec98bca2c91.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant357933d835d44978b37d9ee94c4b2dd6feda2666aaae8ac311e4cec98bca2c91.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant357933d835d44978b37d9ee94c4b2dd6feda2666aaae8ac311e4cec98bca2c91.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4044deb4f31cac6de6aaaf4cdf9fe06fc1616bc0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BalancedCoreHull/Variant357933d835d44978b37d9ee94c4b2dd6feda2666aaae8ac311e4cec98bca2c91.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BalancedCoreHull/Variant357933d835d44978b37d9ee94c4b2dd6feda2666aaae8ac311e4cec98bca2c91.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.LocallyConvex.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [balancedCore](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant357933d835d44978b37d9ee94c4b2dd6feda2666aaae8ac311e4cec98bca2c91.lean/declarations/balancedcore--1f6e89927935332d53878430.md) | 57 | `declaration-track:1f6e89927935332d5387843052c60334a885f50a72f2c81210b6f5bd0abe738f` |
| 2 | `def` | [balancedCoreAux](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant357933d835d44978b37d9ee94c4b2dd6feda2666aaae8ac311e4cec98bca2c91.lean/declarations/balancedcoreaux--2827453e831e422c95147885.md) | 62 | `declaration-track:2827453e831e422c9514788568440e84eba21aa2fe38d50557e1ed5a11adcee0` |
| 3 | `def` | [balancedHull](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant357933d835d44978b37d9ee94c4b2dd6feda2666aaae8ac311e4cec98bca2c91.lean/declarations/balancedhull--ba761f88d8640816a7604004.md) | 67 | `declaration-track:ba761f88d8640816a7604004857f61e17e4f09a09def106875fe4c66ec0c3d79` |
| 4 | `theorem` | [balancedCore_subset](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant357933d835d44978b37d9ee94c4b2dd6feda2666aaae8ac311e4cec98bca2c91.lean/declarations/balancedcore-subset--6d334d8f7cd7dca482a200b4.md) | 73 | `result-track:6d334d8f7cd7dca482a200b4a3f78075833cb5dbd3366b083c7c8623ffc4b147` |
| 5 | `theorem` | [balancedCore_empty](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant357933d835d44978b37d9ee94c4b2dd6feda2666aaae8ac311e4cec98bca2c91.lean/declarations/balancedcore-empty--cd79748e409c51ca63bc12e6.md) | 77 | `result-track:cd79748e409c51ca63bc12e64b83f464f9dd06395cd601f11b3d0be89615b375` |
| 6 | `theorem` | [mem_balancedCore_iff](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant357933d835d44978b37d9ee94c4b2dd6feda2666aaae8ac311e4cec98bca2c91.lean/declarations/mem-balancedcore-iff--6ec5f0eceb3e204898ec0990.md) | 81 | `result-track:6ec5f0eceb3e204898ec0990ee475912d2f6c4c35e35ac2de534aeaed56caaac` |
| 7 | `theorem` | [smul_balancedCore_subset](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant357933d835d44978b37d9ee94c4b2dd6feda2666aaae8ac311e4cec98bca2c91.lean/declarations/smul-balancedcore-subset--21464eebc86b927dc1925dc3.md) | 85 | `result-track:21464eebc86b927dc1925dc3ee7b0536c4527e3a6f40af441524e7c0a2d39e1d` |
| 8 | `theorem` | [balancedCore_balanced](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant357933d835d44978b37d9ee94c4b2dd6feda2666aaae8ac311e4cec98bca2c91.lean/declarations/balancedcore-balanced--a2540de9cc5f2974051a60b7.md) | 93 | `result-track:a2540de9cc5f2974051a60b75850d40684ac2347cad70ff8f7a8afde984f5ba5` |
| 9 | `theorem` | [Balanced.subset_balancedCore_of_subset](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant357933d835d44978b37d9ee94c4b2dd6feda2666aaae8ac311e4cec98bca2c91.lean/declarations/balanced-subset-balancedcore-of-subset--cd60e0f9a9a48ff83877629c.md) | 99 | `result-track:cd60e0f9a9a48ff83877629c2e6db6b1479170551a29c9de3e9a39afb34aaad8` |
| 10 | `theorem` | [mem_balancedCoreAux_iff](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant357933d835d44978b37d9ee94c4b2dd6feda2666aaae8ac311e4cec98bca2c91.lean/declarations/mem-balancedcoreaux-iff--51d41566c3efca222d2685a9.md) | 104 | `result-track:51d41566c3efca222d2685a9429a6a2ca23316b4d54fe6c9073acbda59ba5b17` |
| 11 | `theorem` | [mem_balancedHull_iff](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant357933d835d44978b37d9ee94c4b2dd6feda2666aaae8ac311e4cec98bca2c91.lean/declarations/mem-balancedhull-iff--6334a21b6f52f0e821cabcbc.md) | 108 | `result-track:6334a21b6f52f0e821cabcbc66d3be5a9b1691a3e429022d1dfe279e05218b2a` |
| 12 | `theorem` | [Balanced.balancedHull_subset_of_subset](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant357933d835d44978b37d9ee94c4b2dd6feda2666aaae8ac311e4cec98bca2c91.lean/declarations/balanced-balancedhull-subset-of-subset--1aba11bb21b371fd6ef4fcc0.md) | 114 | `result-track:1aba11bb21b371fd6ef4fcc0701517bf7840649add202b88965d9ea6a27dd636` |
| 13 | `theorem` | [balancedCore_zero_mem](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant357933d835d44978b37d9ee94c4b2dd6feda2666aaae8ac311e4cec98bca2c91.lean/declarations/balancedcore-zero-mem--f5f6805e78e3770d09dc585b.md) | 127 | `result-track:f5f6805e78e3770d09dc585bf626c513a7ef817c98e3ef427923e15441c02dc8` |
| 14 | `theorem` | [balancedCore_nonempty_iff](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant357933d835d44978b37d9ee94c4b2dd6feda2666aaae8ac311e4cec98bca2c91.lean/declarations/balancedcore-nonempty-iff--951b6f373dbc6e9b32139c25.md) | 131 | `result-track:951b6f373dbc6e9b32139c25f87c3f60a436f72f293691227f960ffc1a87de96` |
| 15 | `theorem` | [subset_balancedHull](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant357933d835d44978b37d9ee94c4b2dd6feda2666aaae8ac311e4cec98bca2c91.lean/declarations/subset-balancedhull--37ca46bc304b9ad2841fad99.md) | 140 | `result-track:37ca46bc304b9ad2841fad99d6385a9d37bccc83b47948f93b0cc540961a18b4` |
| 16 | `theorem` | [balancedHull.balanced](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant357933d835d44978b37d9ee94c4b2dd6feda2666aaae8ac311e4cec98bca2c91.lean/declarations/balancedhull-balanced--1f76d847b148a2b071a3c31c.md) | 146 | `result-track:1f76d847b148a2b071a3c31cdd355f169f9fa530a7f8e5b7b8cb573b6d34ff75` |
| 17 | `theorem` | [balancedCoreAux_empty](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant357933d835d44978b37d9ee94c4b2dd6feda2666aaae8ac311e4cec98bca2c91.lean/declarations/balancedcoreaux-empty--b00307841be393b85828f4a4.md) | 163 | `result-track:b00307841be393b85828f4a4ee6971fcd1a3bbc91f46e6e286001e5cb175332d` |
| 18 | `theorem` | [balancedCoreAux_subset](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant357933d835d44978b37d9ee94c4b2dd6feda2666aaae8ac311e4cec98bca2c91.lean/declarations/balancedcoreaux-subset--0ee7d457813cb4117807765c.md) | 168 | `result-track:0ee7d457813cb4117807765c6f361acf75ba0322dc049b6dcfd4251d32e01ffe` |
| 19 | `theorem` | [balancedCoreAux_balanced](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant357933d835d44978b37d9ee94c4b2dd6feda2666aaae8ac311e4cec98bca2c91.lean/declarations/balancedcoreaux-balanced--9335a0233a6a1f17769af226.md) | 172 | `result-track:9335a0233a6a1f17769af22642a81395433dca3e9dec39fd11b4dd51865dcd43` |
| 20 | `theorem` | [balancedCoreAux_maximal](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant357933d835d44978b37d9ee94c4b2dd6feda2666aaae8ac311e4cec98bca2c91.lean/declarations/balancedcoreaux-maximal--7e28d599c03234f439489f17.md) | 186 | `result-track:7e28d599c03234f439489f177b12b7a481da91a2ceaae2ae2104ee4abdde5532` |
| 21 | `theorem` | [balancedCore_subset_balancedCoreAux](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant357933d835d44978b37d9ee94c4b2dd6feda2666aaae8ac311e4cec98bca2c91.lean/declarations/balancedcore-subset-balancedcoreaux--d419bc7cb8b58539b07df79d.md) | 194 | `result-track:d419bc7cb8b58539b07df79d58d643cad6a753528bfca9f9bfe33d5c9e957281` |
| 22 | `theorem` | [balancedCore_eq_iInter](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant357933d835d44978b37d9ee94c4b2dd6feda2666aaae8ac311e4cec98bca2c91.lean/declarations/balancedcore-eq-iinter--40b7d444ee8494556851f294.md) | 198 | `result-track:40b7d444ee8494556851f2948d80a5c53605bffa376ef7ef74cb5a2bbbdd2e05` |
| 23 | `theorem` | [subset_balancedCore](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant357933d835d44978b37d9ee94c4b2dd6feda2666aaae8ac311e4cec98bca2c91.lean/declarations/subset-balancedcore--336a733a3956e54cc7901f31.md) | 205 | `result-track:336a733a3956e54cc7901f31388a8dca1783c9a642bf54bd433353812b2c2d61` |
| 24 | `theorem` | [IsClosed.balancedCore](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant357933d835d44978b37d9ee94c4b2dd6feda2666aaae8ac311e4cec98bca2c91.lean/declarations/isclosed-balancedcore--106208ab406316de76fc5a8c.md) | 227 | `result-track:106208ab406316de76fc5a8c5d87cabd025c61ef7d07e6f1ca122cd633f36ed9` |
| 25 | `theorem` | [balancedCore_mem_nhds_zero](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant357933d835d44978b37d9ee94c4b2dd6feda2666aaae8ac311e4cec98bca2c91.lean/declarations/balancedcore-mem-nhds-zero--d2eb3ae678021971baf6dd0c.md) | 242 | `result-track:d2eb3ae678021971baf6dd0c328f11a57bfc20278ac52ef20391e7e6d6a5fafa` |
| 26 | `theorem` | [nhds_basis_balanced](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant357933d835d44978b37d9ee94c4b2dd6feda2666aaae8ac311e4cec98bca2c91.lean/declarations/nhds-basis-balanced--cc6af784b0e8604ce30178ce.md) | 264 | `result-track:cc6af784b0e8604ce30178cec2f66d489eecd730705772902b5a8d54cad307f4` |
| 27 | `theorem` | [nhds_basis_closed_balanced](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant357933d835d44978b37d9ee94c4b2dd6feda2666aaae8ac311e4cec98bca2c91.lean/declarations/nhds-basis-closed-balanced--cc93bd9fefc2e71675caa841.md) | 271 | `result-track:cc93bd9fefc2e71675caa84121783104c81beb8a593d2d86b9d9d7b27e43a747` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
