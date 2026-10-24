# Verification target: GRWTSK.Algebra.LinearAlgebra.ComparatorSeparation.Variant9105e1df18b312d5ab7b995308097dca4f92f275468d6b70b6c3809bfb0ec2ee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a51bc82c08d046c46c3ab3b440ab24db4e381cdd",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ComparatorSeparation/Variant9105e1df18b312d5ab7b995308097dca4f92f275468d6b70b6c3809bfb0ec2ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variant9105e1df18b312d5ab7b995308097dca4f92f275468d6b70b6c3809bfb0ec2ee.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variant9105e1df18b312d5ab7b995308097dca4f92f275468d6b70b6c3809bfb0ec2ee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a51bc82c08d046c46c3ab3b440ab24db4e381cdd`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ComparatorSeparation/Variant9105e1df18b312d5ab7b995308097dca4f92f275468d6b70b6c3809bfb0ec2ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ComparatorSeparation/Variant9105e1df18b312d5ab7b995308097dca4f92f275468d6b70b6c3809bfb0ec2ee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.InterventionDefect` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LinearComparator](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variant9105e1df18b312d5ab7b995308097dca4f92f275468d6b70b6c3809bfb0ec2ee.lean/declarations/linearcomparator--e3ac69447a769f8faf1e732b.md) | 38 | `declaration-track:e3ac69447a769f8faf1e732bc68f135be6fe4240a3b76ad9a6e89f0344a92365` |
| 2 | `def` | [responseDifference](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variant9105e1df18b312d5ab7b995308097dca4f92f275468d6b70b6c3809bfb0ec2ee.lean/declarations/responsedifference--c257b1dd2f72978847f50c73.md) | 45 | `declaration-track:c257b1dd2f72978847f50c73e6ac28e7b3e9b88b9bb884bcbc0890428c9c5f08` |
| 3 | `theorem` | [responseDifference_apply](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variant9105e1df18b312d5ab7b995308097dca4f92f275468d6b70b6c3809bfb0ec2ee.lean/declarations/responsedifference-apply--ace52a3e2af25409d04f0abb.md) | 51 | `result-track:ace52a3e2af25409d04f0abb94d8ba417a2979bbcdb68bdb708cfc96ca17f103` |
| 4 | `def` | [comparatorGap](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variant9105e1df18b312d5ab7b995308097dca4f92f275468d6b70b6c3809bfb0ec2ee.lean/declarations/comparatorgap--0ab7918ecd95f4321dce070e.md) | 58 | `declaration-track:0ab7918ecd95f4321dce070eb8d8b012a378e8907e35c6bf4bfd1947c8a91726` |
| 5 | `theorem` | [comparatorGap_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variant9105e1df18b312d5ab7b995308097dca4f92f275468d6b70b6c3809bfb0ec2ee.lean/declarations/comparatorgap-nonnegative--401732526e817a1009e2d368.md) | 63 | `result-track:401732526e817a1009e2d368bd32b37c056fbfda29b8b85f48af9faabc5d1493` |
| 6 | `theorem` | [comparatorGap_pos_iff](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variant9105e1df18b312d5ab7b995308097dca4f92f275468d6b70b6c3809bfb0ec2ee.lean/declarations/comparatorgap-pos-iff--ae877834192c3d42f5646a4f.md) | 70 | `result-track:ae877834192c3d42f5646a4f271e2f8221181f873bd5b23c5deb866e8a12ea64` |
| 7 | `theorem` | [comparatorGap_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variant9105e1df18b312d5ab7b995308097dca4f92f275468d6b70b6c3809bfb0ec2ee.lean/declarations/comparatorgap-eq-zero-iff--7e062f91ea28ce502d8eb812.md) | 76 | `result-track:7e062f91ea28ce502d8eb81258ec7f1071db3c1cd6ec24fc199984640353ca26` |
| 8 | `def` | [zero](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variant9105e1df18b312d5ab7b995308097dca4f92f275468d6b70b6c3809bfb0ec2ee.lean/declarations/zero--c24047801f8d1f604a7a2675.md) | 82 | `declaration-track:c24047801f8d1f604a7a2675e2e58ec0832654c00be70402ed1b90cd6ec9ce66` |
| 9 | `theorem` | [zero_readout](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variant9105e1df18b312d5ab7b995308097dca4f92f275468d6b70b6c3809bfb0ec2ee.lean/declarations/zero-readout--8dcad8c72da9a4c3ffdc5cf6.md) | 86 | `result-track:8dcad8c72da9a4c3ffdc5cf676378e8df7d8b8d791b25e879d34474b801aed65` |
| 10 | `theorem` | [zero_responseDifference](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variant9105e1df18b312d5ab7b995308097dca4f92f275468d6b70b6c3809bfb0ec2ee.lean/declarations/zero-responsedifference--8e05b1b451706d19f1c16726.md) | 91 | `result-track:8e05b1b451706d19f1c16726f6e7512be0e01d104a0ea0bce6a0d1492bb99963` |
| 11 | `theorem` | [zero_comparatorGap](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variant9105e1df18b312d5ab7b995308097dca4f92f275468d6b70b6c3809bfb0ec2ee.lean/declarations/zero-comparatorgap--281e8e2f0db83f84dc9f1038.md) | 97 | `result-track:281e8e2f0db83f84dc9f1038c307b4097a9ea3805361f9b67666a2d680dd2b2d` |
| 12 | `def` | [interventionSensitivity](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variant9105e1df18b312d5ab7b995308097dca4f92f275468d6b70b6c3809bfb0ec2ee.lean/declarations/interventionsensitivity--6bd1f94d50ded3d9150a64bf.md) | 109 | `declaration-track:6bd1f94d50ded3d9150a64bf876430e4f1727681976e4d9d8cdd5c475fd070e6` |
| 13 | `theorem` | [interventionSensitivity_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variant9105e1df18b312d5ab7b995308097dca4f92f275468d6b70b6c3809bfb0ec2ee.lean/declarations/interventionsensitivity-nonnegative--a3ebfb13af0a49ab0f80b32a.md) | 114 | `result-track:a3ebfb13af0a49ab0f80b32a7f96cbb17e1f965a4ece019be6f03a6657cc1633` |
| 14 | `theorem` | [interventionSensitivity_pos_iff_visible](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variant9105e1df18b312d5ab7b995308097dca4f92f275468d6b70b6c3809bfb0ec2ee.lean/declarations/interventionsensitivity-pos-iff-visible--7ae3531bf7f32f96828f92a7.md) | 120 | `result-track:7ae3531bf7f32f96828f92a7bf41d6e9221315c3552b9fc042de63488380fc14` |
| 15 | `def` | [ComparatorSectorComplete](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variant9105e1df18b312d5ab7b995308097dca4f92f275468d6b70b6c3809bfb0ec2ee.lean/declarations/comparatorsectorcomplete--896b3556b425dddca35e7e54.md) | 128 | `declaration-track:896b3556b425dddca35e7e541ee88291ca7aa7000d678bf168b38cda7b361bd9` |
| 16 | `theorem` | [zeroComparator_sectorComplete](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variant9105e1df18b312d5ab7b995308097dca4f92f275468d6b70b6c3809bfb0ec2ee.lean/declarations/zerocomparator-sectorcomplete--d519be8bbfcb5970f6cdb9ad.md) | 134 | `result-track:d519be8bbfcb5970f6cdb9adea0eef7a19e034c4d4d8f0cdb427027216539d91` |
| 17 | `theorem` | [responseDifference_eq_projected](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variant9105e1df18b312d5ab7b995308097dca4f92f275468d6b70b6c3809bfb0ec2ee.lean/declarations/responsedifference-eq-projected--a1a34707e2a9e6dd22c4fe3f.md) | 141 | `result-track:a1a34707e2a9e6dd22c4fe3f83a6a85404e4566bef95bcd6fee5fed6d002cf4d` |
| 18 | `theorem` | [comparatorGap_eq_projected_sq](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variant9105e1df18b312d5ab7b995308097dca4f92f275468d6b70b6c3809bfb0ec2ee.lean/declarations/comparatorgap-eq-projected-sq--0502e07537c4a9cd1ca74a30.md) | 151 | `result-track:0502e07537c4a9cd1ca74a30d516c93a05fbe32adc2b8e0d25d3c0e9475cc93d` |
| 19 | `def` | [ComparatorDetectsAt](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variant9105e1df18b312d5ab7b995308097dca4f92f275468d6b70b6c3809bfb0ec2ee.lean/declarations/comparatordetectsat--7f3305cfad47947e168248bb.md) | 159 | `declaration-track:7f3305cfad47947e168248bb62889bc62c343d5597bde3b9cca4a0c53cb2c355` |
| 20 | `theorem` | [comparatorGap_pos_of_sectorComplete_detects](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variant9105e1df18b312d5ab7b995308097dca4f92f275468d6b70b6c3809bfb0ec2ee.lean/declarations/comparatorgap-pos-of-sectorcomplete-detects--40ee24dc600628b26aefb718.md) | 165 | `result-track:40ee24dc600628b26aefb718ddff7a88dc62463b67e6379412a7263805346ff6` |
| 21 | `def` | [ComparatorCompleteFor](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variant9105e1df18b312d5ab7b995308097dca4f92f275468d6b70b6c3809bfb0ec2ee.lean/declarations/comparatorcompletefor--1524fc9c47ad3889813916a6.md) | 176 | `declaration-track:1524fc9c47ad3889813916a6bc67bd14bc1a7c8d109e88224948b6d97f263b82` |
| 22 | `theorem` | [positive_sensitivity_implies_positive_gap_of_complete](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variant9105e1df18b312d5ab7b995308097dca4f92f275468d6b70b6c3809bfb0ec2ee.lean/declarations/positive-sensitivity-implies-positive-gap-of-complete--7a87b172c0658ef1b99760a4.md) | 184 | `result-track:7a87b172c0658ef1b99760a44931750553535f0afbf2ada5e652854ef8edb5fd` |
| 23 | `theorem` | [positive_sensitivity_sectorComplete_zero_gap](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variant9105e1df18b312d5ab7b995308097dca4f92f275468d6b70b6c3809bfb0ec2ee.lean/declarations/positive-sensitivity-sectorcomplete-zero-gap--a8cb2c99a20f8d298d4afaba.md) | 196 | `result-track:a8cb2c99a20f8d298d4afaba2ed915c89a095f3a31ad1aa7a159d74c51ae3018` |
| 24 | `theorem` | [positive_sensitivity_zero_comparator_gap](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variant9105e1df18b312d5ab7b995308097dca4f92f275468d6b70b6c3809bfb0ec2ee.lean/declarations/positive-sensitivity-zero-comparator-gap--b8e42b7d7cd3f3c5e2ee49a9.md) | 207 | `result-track:b8e42b7d7cd3f3c5e2ee49a9e5ea77e6269e61e89950d90bd36227045ca3a266` |
| 25 | `theorem` | [not_all_comparators_separate_of_positive_sensitivity](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variant9105e1df18b312d5ab7b995308097dca4f92f275468d6b70b6c3809bfb0ec2ee.lean/declarations/not-all-comparators-separate-of-positive-sensitivity--b4441869dcd35d5fbd823343.md) | 216 | `result-track:b4441869dcd35d5fbd823343b88587f6fc50ac726b5ab4652436312a6d0a5dbb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
