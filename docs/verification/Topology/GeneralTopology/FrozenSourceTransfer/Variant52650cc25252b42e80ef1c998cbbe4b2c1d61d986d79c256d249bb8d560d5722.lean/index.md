# Verification target: GRWTSK.Topology.GeneralTopology.FrozenSourceTransfer.Variant52650cc25252b42e80ef1c998cbbe4b2c1d61d986d79c256d249bb8d560d5722

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "028855664c734ed1ca373742cf5f0c0b80838d2c",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/FrozenSourceTransfer/Variant52650cc25252b42e80ef1c998cbbe4b2c1d61d986d79c256d249bb8d560d5722.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/FrozenSourceTransfer/Variant52650cc25252b42e80ef1c998cbbe4b2c1d61d986d79c256d249bb8d560d5722.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/FrozenSourceTransfer/Variant52650cc25252b42e80ef1c998cbbe4b2c1d61d986d79c256d249bb8d560d5722.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `028855664c734ed1ca373742cf5f0c0b80838d2c`.

Source path: `GRWTSK/Topology/GeneralTopology/FrozenSourceTransfer/Variant52650cc25252b42e80ef1c998cbbe4b2c1d61d986d79c256d249bb8d560d5722.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/FrozenSourceTransfer/Variant52650cc25252b42e80ef1c998cbbe4b2c1d61d986d79c256d249bb8d560d5722.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LSeries.RiemannZeta` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Piecewise` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroObject` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [transferProduct](../../../../../mathematics/Topology/GeneralTopology/FrozenSourceTransfer/Variant52650cc25252b42e80ef1c998cbbe4b2c1d61d986d79c256d249bb8d560d5722.lean/declarations/transferproduct--ac79fc2d4e9cd72e7413dd5f.md) | 21 | `declaration-track:ac79fc2d4e9cd72e7413dd5fc6e019ab47cefbfa8dda90a9c8932b5fb2431d26` |
| 2 | `def` | [removedPoleValue](../../../../../mathematics/Topology/GeneralTopology/FrozenSourceTransfer/Variant52650cc25252b42e80ef1c998cbbe4b2c1d61d986d79c256d249bb8d560d5722.lean/declarations/removedpolevalue--145f292f54b293901cf73188.md) | 25 | `declaration-track:145f292f54b293901cf731885211d5b4405084b6bcc55e83f513e6e7a7f56c80` |
| 3 | `theorem` | [positive_pole_shift_tendsto](../../../../../mathematics/Topology/GeneralTopology/FrozenSourceTransfer/Variant52650cc25252b42e80ef1c998cbbe4b2c1d61d986d79c256d249bb8d560d5722.lean/declarations/positive-pole-shift-tendsto--120c0aa789015c12862d92d2.md) | 28 | `result-track:120c0aa789015c12862d92d25abe78164ee1d902cdf76916db7a2ff67211cc8a` |
| 4 | `theorem` | [shifted_zeta_residue](../../../../../mathematics/Topology/GeneralTopology/FrozenSourceTransfer/Variant52650cc25252b42e80ef1c998cbbe4b2c1d61d986d79c256d249bb8d560d5722.lean/declarations/shifted-zeta-residue--6b1a5bd250400797e492ddb1.md) | 44 | `result-track:6b1a5bd250400797e492ddb1b54c9442d242fd8d80af074b736dfc1479475fc4` |
| 5 | `theorem` | [transferProduct_removed_pole_limit](../../../../../mathematics/Topology/GeneralTopology/FrozenSourceTransfer/Variant52650cc25252b42e80ef1c998cbbe4b2c1d61d986d79c256d249bb8d560d5722.lean/declarations/transferproduct-removed-pole-limit--ebab0d1e8683b38a627008c5.md) | 54 | `result-track:ebab0d1e8683b38a627008c5802e5c425cc26e16ba936ba5dac901830e7246ec` |
| 6 | `def` | [repairedTransfer](../../../../../mathematics/Topology/GeneralTopology/FrozenSourceTransfer/Variant52650cc25252b42e80ef1c998cbbe4b2c1d61d986d79c256d249bb8d560d5722.lean/declarations/repairedtransfer--37d3853849e82d7289149ac9.md) | 73 | `declaration-track:37d3853849e82d7289149ac9f5d32c98f2d2efbfab2025fff554834dd53cda22` |
| 7 | `theorem` | [repairedTransfer_at_pole](../../../../../mathematics/Topology/GeneralTopology/FrozenSourceTransfer/Variant52650cc25252b42e80ef1c998cbbe4b2c1d61d986d79c256d249bb8d560d5722.lean/declarations/repairedtransfer-at-pole--09b327e8d7df47df6617b643.md) | 78 | `result-track:09b327e8d7df47df6617b64383b0417cbc4a33e94ed38b9aaf827b23e29b31b5` |
| 8 | `theorem` | [repairedTransfer_eq_product](../../../../../mathematics/Topology/GeneralTopology/FrozenSourceTransfer/Variant52650cc25252b42e80ef1c998cbbe4b2c1d61d986d79c256d249bb8d560d5722.lean/declarations/repairedtransfer-eq-product--5b90751adb7ec709e0a4f939.md) | 83 | `result-track:5b90751adb7ec709e0a4f93901747aed86156f99f8979a9829786cccea14d627` |
| 9 | `theorem` | [repairedTransfer_continuousAt_pole](../../../../../mathematics/Topology/GeneralTopology/FrozenSourceTransfer/Variant52650cc25252b42e80ef1c998cbbe4b2c1d61d986d79c256d249bb8d560d5722.lean/declarations/repairedtransfer-continuousat-pole--f2f7b295d706e6da6cd9f4ec.md) | 89 | `result-track:f2f7b295d706e6da6cd9f4ecb06bf6af27e281f9c8f183505500b0ba1d7a11dc` |
| 10 | `theorem` | [removedPoleValue_ne_zero](../../../../../mathematics/Topology/GeneralTopology/FrozenSourceTransfer/Variant52650cc25252b42e80ef1c998cbbe4b2c1d61d986d79c256d249bb8d560d5722.lean/declarations/removedpolevalue-ne-zero--7f598dc80b9097cb45392ab1.md) | 94 | `result-track:7f598dc80b9097cb45392ab1259857c9cc72e0de6c9943f9953c41317f1a2ecf` |
| 11 | `theorem` | [repairedTransfer_pole_ne_zero](../../../../../mathematics/Topology/GeneralTopology/FrozenSourceTransfer/Variant52650cc25252b42e80ef1c998cbbe4b2c1d61d986d79c256d249bb8d560d5722.lean/declarations/repairedtransfer-pole-ne-zero--3cf61e5d04b5b02896b0bc02.md) | 99 | `result-track:3cf61e5d04b5b02896b0bc028d06a3c3b6dda572f7977a53a42402596540c283` |
| 12 | `theorem` | [repairedTransfer_zero_of_zeta_zero](../../../../../mathematics/Topology/GeneralTopology/FrozenSourceTransfer/Variant52650cc25252b42e80ef1c998cbbe4b2c1d61d986d79c256d249bb8d560d5722.lean/declarations/repairedtransfer-zero-of-zeta-zero--800da8ac4c77db1d161ec575.md) | 104 | `result-track:800da8ac4c77db1d161ec575dd347d809a63ba8c3dc19c2d9f88f4088d1b4b39` |
| 13 | `theorem` | [repairedTransfer_zero_of_nontrivial](../../../../../mathematics/Topology/GeneralTopology/FrozenSourceTransfer/Variant52650cc25252b42e80ef1c998cbbe4b2c1d61d986d79c256d249bb8d560d5722.lean/declarations/repairedtransfer-zero-of-nontrivial--f5c74cb6a230ba26732f0996.md) | 115 | `result-track:f5c74cb6a230ba26732f099692b61341fadb6202623f3b99944498e9b46492b3` |
| 14 | `theorem` | [repairedTransfer_zero_occurrence](../../../../../mathematics/Topology/GeneralTopology/FrozenSourceTransfer/Variant52650cc25252b42e80ef1c998cbbe4b2c1d61d986d79c256d249bb8d560d5722.lean/declarations/repairedtransfer-zero-occurrence--fea9b48753e4aa0a0eee0915.md) | 121 | `result-track:fea9b48753e4aa0a0eee0915a31a4c680fa587c969b227ccc5064e5e3f2a39f3` |
| 15 | `theorem` | [finite_factor_product_at_pole](../../../../../mathematics/Topology/GeneralTopology/FrozenSourceTransfer/Variant52650cc25252b42e80ef1c998cbbe4b2c1d61d986d79c256d249bb8d560d5722.lean/declarations/finite-factor-product-at-pole--e7015c94ea3f7d8695e31f7d.md) | 129 | `result-track:e7015c94ea3f7d8695e31f7d8ed6599468b7e71fd29b543b7b649b358bce1ab4` |
| 16 | `theorem` | [finite_factor_product_limit](../../../../../mathematics/Topology/GeneralTopology/FrozenSourceTransfer/Variant52650cc25252b42e80ef1c998cbbe4b2c1d61d986d79c256d249bb8d560d5722.lean/declarations/finite-factor-product-limit--67b6c160bebf988d17b2089c.md) | 134 | `result-track:67b6c160bebf988d17b2089c556f42d59fd898a123e50f58e300bade90bf7c19` |
| 17 | `theorem` | [finite_factor_pole_discrepancy](../../../../../mathematics/Topology/GeneralTopology/FrozenSourceTransfer/Variant52650cc25252b42e80ef1c998cbbe4b2c1d61d986d79c256d249bb8d560d5722.lean/declarations/finite-factor-pole-discrepancy--0195dbc9243496743f7f1f03.md) | 142 | `result-track:0195dbc9243496743f7f1f03f2c507e55e7cf485b3732c4d721e28733a4a5e62` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
