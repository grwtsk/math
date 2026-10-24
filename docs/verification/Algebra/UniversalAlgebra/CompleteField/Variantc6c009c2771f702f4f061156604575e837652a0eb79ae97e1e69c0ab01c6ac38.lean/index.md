# Verification target: GRWTSK.Algebra.UniversalAlgebra.CompleteField.Variantc6c009c2771f702f4f061156604575e837652a0eb79ae97e1e69c0ab01c6ac38

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff2687cdb9f15e0c21e0d713c2e81e0ccbf5c027",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/CompleteField/Variantc6c009c2771f702f4f061156604575e837652a0eb79ae97e1e69c0ab01c6ac38.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantc6c009c2771f702f4f061156604575e837652a0eb79ae97e1e69c0ab01c6ac38.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantc6c009c2771f702f4f061156604575e837652a0eb79ae97e1e69c0ab01c6ac38.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff2687cdb9f15e0c21e0d713c2e81e0ccbf5c027`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/CompleteField/Variantc6c009c2771f702f4f061156604575e837652a0eb79ae97e1e69c0ab01c6ac38.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/CompleteField/Variantc6c009c2771f702f4f061156604575e837652a0eb79ae97e1e69c0ab01c6ac38.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Archimedean.Hom` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Pointwise.CompleteLattice` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ConditionallyCompleteLinearOrderedField](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantc6c009c2771f702f4f061156604575e837652a0eb79ae97e1e69c0ab01c6ac38.lean/declarations/conditionallycompletelinearorderedfield--83400d21c2369ff9d8fd6824.md) | 55 | `declaration-track:83400d21c2369ff9d8fd682436f5f212b84feed1349d40f25444daaf04da95a9` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantc6c009c2771f702f4f061156604575e837652a0eb79ae97e1e69c0ab01c6ac38.lean/declarations/instance--e7d1724d5c4e2402934e7727.md) | 66 | `declaration-track:e7d1724d5c4e2402934e772772eccdbde8a5d8e7bb01f6f19cbcdecd6a74fe8c` |
| 3 | `def` | [cutMap](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantc6c009c2771f702f4f061156604575e837652a0eb79ae97e1e69c0ab01c6ac38.lean/declarations/cutmap--d0548d45c9bceb6f0d22608b.md) | 98 | `declaration-track:d0548d45c9bceb6f0d22608b11d1821aa6d13aaf6fa6295ab4a0d579c5c99881` |
| 4 | `theorem` | [cutMap_mono](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantc6c009c2771f702f4f061156604575e837652a0eb79ae97e1e69c0ab01c6ac38.lean/declarations/cutmap-mono--ffe0250637efedf948f54c81.md) | 101 | `result-track:ffe0250637efedf948f54c818d724ecbd12c57f3e9f4c03d2d37915618c5fba8` |
| 5 | `theorem` | [mem_cutMap_iff](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantc6c009c2771f702f4f061156604575e837652a0eb79ae97e1e69c0ab01c6ac38.lean/declarations/mem-cutmap-iff--a7bcb4cac138b34643c66996.md) | 106 | `result-track:a7bcb4cac138b34643c6699623121b3fd8df715b3136bf2174ad5e920984860b` |
| 6 | `theorem` | [coe_mem_cutMap_iff](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantc6c009c2771f702f4f061156604575e837652a0eb79ae97e1e69c0ab01c6ac38.lean/declarations/coe-mem-cutmap-iff--472f03142d29a711a4df5da2.md) | 108 | `result-track:472f03142d29a711a4df5da249c58ded76b0f8066854977d9a0d4611888413c2` |
| 7 | `theorem` | [cutMap_self](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantc6c009c2771f702f4f061156604575e837652a0eb79ae97e1e69c0ab01c6ac38.lean/declarations/cutmap-self--c2246bc4ec0a9b6dfd8536cc.md) | 111 | `result-track:c2246bc4ec0a9b6dfd8536cc75f8fc4d1ffeefaba57495d8d855db6d5b31d5f2` |
| 8 | `theorem` | [cutMap_coe](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantc6c009c2771f702f4f061156604575e837652a0eb79ae97e1e69c0ab01c6ac38.lean/declarations/cutmap-coe--cf06162644a6e0eb7bdb5893.md) | 124 | `result-track:cf06162644a6e0eb7bdb5893cc738fa81e88658c56b89b09f15da00319295ad9` |
| 9 | `theorem` | [cutMap_nonempty](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantc6c009c2771f702f4f061156604575e837652a0eb79ae97e1e69c0ab01c6ac38.lean/declarations/cutmap-nonempty--7c4a995251849f4e3d37fb66.md) | 130 | `result-track:7c4a995251849f4e3d37fb6644571f422f5ae599d5cc5d466ffb0ffce915329b` |
| 10 | `theorem` | [cutMap_bddAbove](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantc6c009c2771f702f4f061156604575e837652a0eb79ae97e1e69c0ab01c6ac38.lean/declarations/cutmap-bddabove--6327296aa184a69e31a8ab36.md) | 133 | `result-track:6327296aa184a69e31a8ab36045d5fe828f2882a92c417e877106beb20f79be7` |
| 11 | `theorem` | [cutMap_add](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantc6c009c2771f702f4f061156604575e837652a0eb79ae97e1e69c0ab01c6ac38.lean/declarations/cutmap-add--2272391c0ec9eeb52036bb9a.md) | 137 | `result-track:2272391c0ec9eeb52036bb9a6e1d5d342a661863cc7cb4697cb7edb052a946d3` |
| 12 | `def` | [inducedMap](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantc6c009c2771f702f4f061156604575e837652a0eb79ae97e1e69c0ab01c6ac38.lean/declarations/inducedmap--bbe47c4bed3293145381a9ad.md) | 168 | `declaration-track:bbe47c4bed3293145381a9adfe66b6b35a3577b24a705ee033cef6fc5f64e931` |
| 13 | `theorem` | [inducedMap_mono](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantc6c009c2771f702f4f061156604575e837652a0eb79ae97e1e69c0ab01c6ac38.lean/declarations/inducedmap-mono--a3ef6a44841cde564dc11d9e.md) | 173 | `result-track:a3ef6a44841cde564dc11d9e9c5e61101ab6f5c377f9f19133e0b526d4986c8b` |
| 14 | `theorem` | [inducedMap_rat](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantc6c009c2771f702f4f061156604575e837652a0eb79ae97e1e69c0ab01c6ac38.lean/declarations/inducedmap-rat--acd4fbc3baf249037445d86b.md) | 176 | `result-track:acd4fbc3baf249037445d86ba3c974d37b0bb7807ed80b71f5f7c894c2dabdfe` |
| 15 | `theorem` | [inducedMap_zero](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantc6c009c2771f702f4f061156604575e837652a0eb79ae97e1e69c0ab01c6ac38.lean/declarations/inducedmap-zero--5ea9f28161f8f70cf330847b.md) | 187 | `result-track:5ea9f28161f8f70cf330847b84b045dc80f9d9dbdbe4e375fa15e95cb6e5a84f` |
| 16 | `theorem` | [inducedMap_one](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantc6c009c2771f702f4f061156604575e837652a0eb79ae97e1e69c0ab01c6ac38.lean/declarations/inducedmap-one--9c8cc9a39ac75caeb7c7894e.md) | 190 | `result-track:9c8cc9a39ac75caeb7c7894ef92b044ce4b41d67f04e8c4a50de6c8ee53522c5` |
| 17 | `theorem` | [inducedMap_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantc6c009c2771f702f4f061156604575e837652a0eb79ae97e1e69c0ab01c6ac38.lean/declarations/inducedmap-nonneg--92b48a68c40143a0fac4168c.md) | 194 | `result-track:92b48a68c40143a0fac4168c183ffe6c58976f3396d173f16fbe5b40bd1703a6` |
| 18 | `theorem` | [coe_lt_inducedMap_iff](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantc6c009c2771f702f4f061156604575e837652a0eb79ae97e1e69c0ab01c6ac38.lean/declarations/coe-lt-inducedmap-iff--d3614ae40b75618bd01a9ad3.md) | 197 | `result-track:d3614ae40b75618bd01a9ad311fc1b0679fca52f6c6e602947b7265b9dc51e8b` |
| 19 | `theorem` | [lt_inducedMap_iff](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantc6c009c2771f702f4f061156604575e837652a0eb79ae97e1e69c0ab01c6ac38.lean/declarations/lt-inducedmap-iff--3204f980193a59b6171a137a.md) | 205 | `result-track:3204f980193a59b6171a137a1fc2f759102df2a9610c9b35decc95aacac6d680` |
| 20 | `theorem` | [inducedMap_self](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantc6c009c2771f702f4f061156604575e837652a0eb79ae97e1e69c0ab01c6ac38.lean/declarations/inducedmap-self--8a1227f8b412422ccc816a01.md) | 210 | `result-track:8a1227f8b412422ccc816a010f3cc9c194276a1ba787e184eb1ad425d2130676` |
| 21 | `theorem` | [inducedMap_inducedMap](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantc6c009c2771f702f4f061156604575e837652a0eb79ae97e1e69c0ab01c6ac38.lean/declarations/inducedmap-inducedmap--bb00718e4b20232c73fa0df3.md) | 216 | `result-track:bb00718e4b20232c73fa0df38792626eadf95e8301fcab25b76301b10af32299` |
| 22 | `theorem` | [inducedMap_inv_self](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantc6c009c2771f702f4f061156604575e837652a0eb79ae97e1e69c0ab01c6ac38.lean/declarations/inducedmap-inv-self--4c63926e62af07a17ef33163.md) | 220 | `result-track:4c63926e62af07a17ef33163536f59c8484ae9d5c715535085f3e01192d29ae7` |
| 23 | `theorem` | [inducedMap_add](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantc6c009c2771f702f4f061156604575e837652a0eb79ae97e1e69c0ab01c6ac38.lean/declarations/inducedmap-add--68a5bca8d368a184d9fba024.md) | 223 | `result-track:68a5bca8d368a184d9fba0244d96b31d2a22411cce7076edfc88f0ee73b130bb` |
| 24 | `theorem` | [le_inducedMap_mul_self_of_mem_cutMap](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantc6c009c2771f702f4f061156604575e837652a0eb79ae97e1e69c0ab01c6ac38.lean/declarations/le-inducedmap-mul-self-of-mem-cutmap--e97172cd16171a9aa921f03d.md) | 232 | `result-track:e97172cd16171a9aa921f03d80b88755bf5d53184f182a1ca55491b5a73bc7ac` |
| 25 | `theorem` | [exists_mem_cutMap_mul_self_of_lt_inducedMap_mul_self](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantc6c009c2771f702f4f061156604575e837652a0eb79ae97e1e69c0ab01c6ac38.lean/declarations/exists-mem-cutmap-mul-self-of-lt-inducedmap-mul-self--23bfd830035e8695694f531e.md) | 244 | `result-track:23bfd830035e8695694f531e07d892e3163232cac43634a074b8dbf4e37a303d` |
| 26 | `def` | [inducedAddHom](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantc6c009c2771f702f4f061156604575e837652a0eb79ae97e1e69c0ab01c6ac38.lean/declarations/inducedaddhom--4df09e11a8a8e1d86d23cfe5.md) | 262 | `declaration-track:4df09e11a8a8e1d86d23cfe5c24e2d6d9f64d5dd2c9f54732dca8df8e73abdca` |
| 27 | `def` | [inducedOrderRingHom](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantc6c009c2771f702f4f061156604575e837652a0eb79ae97e1e69c0ab01c6ac38.lean/declarations/inducedorderringhom--2b394f895c01fda336e90d99.md) | 267 | `declaration-track:2b394f895c01fda336e90d99158fc92be9dae20cea4f3d7dc8c5fa06540d9ebd` |
| 28 | `def` | [inducedOrderRingIso](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantc6c009c2771f702f4f061156604575e837652a0eb79ae97e1e69c0ab01c6ac38.lean/declarations/inducedorderringiso--580748efd250204ecc0b3e27.md) | 286 | `declaration-track:580748efd250204ecc0b3e27dac14c1c982db4528f453f817d16766741b1ace5` |
| 29 | `theorem` | [coe_inducedOrderRingIso](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantc6c009c2771f702f4f061156604575e837652a0eb79ae97e1e69c0ab01c6ac38.lean/declarations/coe-inducedorderringiso--6950c073d440019ea9a77095.md) | 300 | `result-track:6950c073d440019ea9a7709520f4bf442f9de42ad9065b6d6f61b3f6dd19420e` |
| 30 | `theorem` | [inducedOrderRingIso_symm](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantc6c009c2771f702f4f061156604575e837652a0eb79ae97e1e69c0ab01c6ac38.lean/declarations/inducedorderringiso-symm--2c9841d4f11376b3bb3cd26d.md) | 303 | `result-track:2c9841d4f11376b3bb3cd26d91a6f7185f4baced7adbf38da725de767b7502ae` |
| 31 | `theorem` | [inducedOrderRingIso_self](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantc6c009c2771f702f4f061156604575e837652a0eb79ae97e1e69c0ab01c6ac38.lean/declarations/inducedorderringiso-self--711995d755bbd116a6369cd4.md) | 306 | `result-track:711995d755bbd116a6369cd49ca6da4dd2fc9665dd7797354ff490fc90db52a2` |
| 32 | `instance` | [uniqueOrderRingHom](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantc6c009c2771f702f4f061156604575e837652a0eb79ae97e1e69c0ab01c6ac38.lean/declarations/uniqueorderringhom--f54ae77104fb756123c8184f.md) | 313 | `declaration-track:f54ae77104fb756123c8184f6678d282aed9b1db986b566f64a23a0e127b7d06` |
| 33 | `instance` | [uniqueOrderRingIso](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantc6c009c2771f702f4f061156604575e837652a0eb79ae97e1e69c0ab01c6ac38.lean/declarations/uniqueorderringiso--dc0f5f58c6fbdf24805800a9.md) | 318 | `declaration-track:dc0f5f58c6fbdf24805800a99437b142a7b568b4b7402aaa749377c9c405eb70` |
| 34 | `theorem` | [ringHom_monotone](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantc6c009c2771f702f4f061156604575e837652a0eb79ae97e1e69c0ab01c6ac38.lean/declarations/ringhom-monotone--63fbbf5bc98f0a238fe21f5e.md) | 330 | `result-track:63fbbf5bc98f0a238fe21f5e6368634b0b3c3e492fa1e077077dc9c5b4e2e6ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
