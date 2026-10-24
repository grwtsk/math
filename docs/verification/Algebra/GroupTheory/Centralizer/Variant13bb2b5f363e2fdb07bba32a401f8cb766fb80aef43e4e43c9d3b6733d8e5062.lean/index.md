# Verification target: GRWTSK.Algebra.GroupTheory.Centralizer.Variant13bb2b5f363e2fdb07bba32a401f8cb766fb80aef43e4e43c9d3b6733d8e5062

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7184b134be900bc3ea1d33cba28a62385ab38c03",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Centralizer/Variant13bb2b5f363e2fdb07bba32a401f8cb766fb80aef43e4e43c9d3b6733d8e5062.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant13bb2b5f363e2fdb07bba32a401f8cb766fb80aef43e4e43c9d3b6733d8e5062.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant13bb2b5f363e2fdb07bba32a401f8cb766fb80aef43e4e43c9d3b6733d8e5062.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7184b134be900bc3ea1d33cba28a62385ab38c03`.

Source path: `GRWTSK/Algebra/GroupTheory/Centralizer/Variant13bb2b5f363e2fdb07bba32a401f8cb766fb80aef43e4e43c9d3b6733d8e5062.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Centralizer/Variant13bb2b5f363e2fdb07bba32a401f8cb766fb80aef43e4e43c9d3b6733d8e5062.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Subsemigroup.Center` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Units.Lemmas` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant13bb2b5f363e2fdb07bba32a401f8cb766fb80aef43e4e43c9d3b6733d8e5062.lean/declarations/centralizer--e158f3b538044bdd24afb6d2.md) | 42 | `declaration-track:e158f3b538044bdd24afb6d21be51b3fc603288b7e404e41a3173bdc70bb24d3` |
| 2 | `theorem` | [mem_centralizer_iff](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant13bb2b5f363e2fdb07bba32a401f8cb766fb80aef43e4e43c9d3b6733d8e5062.lean/declarations/mem-centralizer-iff--bd7d69a7e5c22bb877e8872c.md) | 50 | `result-track:bd7d69a7e5c22bb877e8872c1211b4d2e35fff8a624d8d8b08621fb5a6c425aa` |
| 3 | `instance` | [decidableMemCentralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant13bb2b5f363e2fdb07bba32a401f8cb766fb80aef43e4e43c9d3b6733d8e5062.lean/declarations/decidablememcentralizer--3c97a5ec4bc7f899159a757a.md) | 56 | `declaration-track:3c97a5ec4bc7f899159a757a288cd0fec2504661cfd68c1dcb8b805be72095bd` |
| 4 | `theorem` | [one_mem_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant13bb2b5f363e2fdb07bba32a401f8cb766fb80aef43e4e43c9d3b6733d8e5062.lean/declarations/one-mem-centralizer--64f1609ef7ed93e575bd3ba1.md) | 64 | `result-track:64f1609ef7ed93e575bd3ba184c384a17fb07325ae99fa8a45339dbf9ebf4f1a` |
| 5 | `theorem` | [zero_mem_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant13bb2b5f363e2fdb07bba32a401f8cb766fb80aef43e4e43c9d3b6733d8e5062.lean/declarations/zero-mem-centralizer--c401b2fa64d1371a95ad3900.md) | 70 | `result-track:c401b2fa64d1371a95ad3900d1e91acf8a15dbeb4d17149cab71dfe91468753c` |
| 6 | `theorem` | [mul_mem_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant13bb2b5f363e2fdb07bba32a401f8cb766fb80aef43e4e43c9d3b6733d8e5062.lean/declarations/mul-mem-centralizer--f14d254a9ed3c21fb08ec391.md) | 77 | `result-track:f14d254a9ed3c21fb08ec391e04969145a343703f26024904095ac7c1b57f5e1` |
| 7 | `theorem` | [inv_mem_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant13bb2b5f363e2fdb07bba32a401f8cb766fb80aef43e4e43c9d3b6733d8e5062.lean/declarations/inv-mem-centralizer--534dd1b8fc6633740be69c6f.md) | 84 | `result-track:534dd1b8fc6633740be69c6fb2c8367a814a389fe43466c30bd657fa8e7fe670` |
| 8 | `theorem` | [add_mem_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant13bb2b5f363e2fdb07bba32a401f8cb766fb80aef43e4e43c9d3b6733d8e5062.lean/declarations/add-mem-centralizer--f29f03c6578db81ef25f0320.md) | 90 | `result-track:f29f03c6578db81ef25f0320104303be7f26e2b25b247879e14533f6e919bbd8` |
| 9 | `theorem` | [neg_mem_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant13bb2b5f363e2fdb07bba32a401f8cb766fb80aef43e4e43c9d3b6733d8e5062.lean/declarations/neg-mem-centralizer--887e7c5bae3b999b3d4afaec.md) | 95 | `result-track:887e7c5bae3b999b3d4afaecfdeb0dff6e0b47ff17d30fdac7ead7406db1d5e1` |
| 10 | `theorem` | [inv_mem_centralizer₀](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant13bb2b5f363e2fdb07bba32a401f8cb766fb80aef43e4e43c9d3b6733d8e5062.lean/declarations/inv-mem-centralizer--4415bf1e2f43c8830f3543c3.md) | 100 | `result-track:4415bf1e2f43c8830f3543c335e005768b1aeddffcbdfa2971334c80528f7564` |
| 11 | `theorem` | [div_mem_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant13bb2b5f363e2fdb07bba32a401f8cb766fb80aef43e4e43c9d3b6733d8e5062.lean/declarations/div-mem-centralizer--d346aa505d69b69b97aadecb.md) | 110 | `result-track:d346aa505d69b69b97aadecbdf2afcc312691b389aee09147fd4f9c5cdcc69c2` |
| 12 | `theorem` | [div_mem_centralizer₀](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant13bb2b5f363e2fdb07bba32a401f8cb766fb80aef43e4e43c9d3b6733d8e5062.lean/declarations/div-mem-centralizer--84aa6227d47e3a4e249db98d.md) | 118 | `result-track:84aa6227d47e3a4e249db98d983e7425ad5b9869aa9e6ba17ca683e481e62c4f` |
| 13 | `theorem` | [centralizer_subset](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant13bb2b5f363e2fdb07bba32a401f8cb766fb80aef43e4e43c9d3b6733d8e5062.lean/declarations/centralizer-subset--368485759e7463338dd492e9.md) | 125 | `result-track:368485759e7463338dd492e971884df6fde9bd12ad5afa88bfabbc5566e3fb31` |
| 14 | `theorem` | [center_subset_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant13bb2b5f363e2fdb07bba32a401f8cb766fb80aef43e4e43c9d3b6733d8e5062.lean/declarations/center-subset-centralizer--d14fa1aefd97b81dbc92b1f6.md) | 131 | `result-track:d14fa1aefd97b81dbc92b1f642921ee9b9db1fa46a80ebd9fea2b8121007fd93` |
| 15 | `theorem` | [centralizer_eq_top_iff_subset](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant13bb2b5f363e2fdb07bba32a401f8cb766fb80aef43e4e43c9d3b6733d8e5062.lean/declarations/centralizer-eq-top-iff-subset--0f5ddf5518d6461d25bb409a.md) | 137 | `result-track:0f5ddf5518d6461d25bb409aef96ce36d40e10df384e295644c7b3d9f37fd881` |
| 16 | `theorem` | [centralizer_univ](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant13bb2b5f363e2fdb07bba32a401f8cb766fb80aef43e4e43c9d3b6733d8e5062.lean/declarations/centralizer-univ--790082bfdf3ac1bea3d21300.md) | 146 | `result-track:790082bfdf3ac1bea3d21300e640e67e29475e9b8f4bec3b7abd4d74beca7c33` |
| 17 | `theorem` | [centralizer_eq_univ](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant13bb2b5f363e2fdb07bba32a401f8cb766fb80aef43e4e43c9d3b6733d8e5062.lean/declarations/centralizer-eq-univ--6252e879425ca9a437e77a15.md) | 154 | `result-track:6252e879425ca9a437e77a155d35d551ac2be08ece8e348deaab79e0b9407615` |
| 18 | `def` | [centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant13bb2b5f363e2fdb07bba32a401f8cb766fb80aef43e4e43c9d3b6733d8e5062.lean/declarations/centralizer--6ffe65e0c8bb8ab2ae63dc6b.md) | 169 | `declaration-track:6ffe65e0c8bb8ab2ae63dc6b613140390ecec71a876f97a3475c5f325a0198ab` |
| 19 | `theorem` | [coe_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant13bb2b5f363e2fdb07bba32a401f8cb766fb80aef43e4e43c9d3b6733d8e5062.lean/declarations/coe-centralizer--e26aa9376839e1ec7f6fc312.md) | 176 | `result-track:e26aa9376839e1ec7f6fc31254f8fa595342e0631f5df522ba04bffa37c27c28` |
| 20 | `theorem` | [mem_centralizer_iff](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant13bb2b5f363e2fdb07bba32a401f8cb766fb80aef43e4e43c9d3b6733d8e5062.lean/declarations/mem-centralizer-iff--b0f8463d58d0b499c2ea24b4.md) | 184 | `result-track:b0f8463d58d0b499c2ea24b4f56b74407236cd87cf7e3de6af09ef60ea80ab55` |
| 21 | `instance` | [decidableMemCentralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant13bb2b5f363e2fdb07bba32a401f8cb766fb80aef43e4e43c9d3b6733d8e5062.lean/declarations/decidablememcentralizer--1afd6652cd96ec114bb4df95.md) | 190 | `declaration-track:1afd6652cd96ec114bb4df95aeb822871b2de46a0d4a02ffbb5cf31ff161fee9` |
| 22 | `theorem` | [center_le_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant13bb2b5f363e2fdb07bba32a401f8cb766fb80aef43e4e43c9d3b6733d8e5062.lean/declarations/center-le-centralizer--9041f799a14b4c446f59eaf8.md) | 197 | `result-track:9041f799a14b4c446f59eaf8aa5fff0cfab0bd93d861f0c2625ede0d9eae2e9a` |
| 23 | `theorem` | [centralizer_le](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant13bb2b5f363e2fdb07bba32a401f8cb766fb80aef43e4e43c9d3b6733d8e5062.lean/declarations/centralizer-le--6495dd949be80e1b2948514b.md) | 203 | `result-track:6495dd949be80e1b2948514b1db39eb61e92796a7a327a0144a8241db82ff4f1` |
| 24 | `theorem` | [centralizer_eq_top_iff_subset](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant13bb2b5f363e2fdb07bba32a401f8cb766fb80aef43e4e43c9d3b6733d8e5062.lean/declarations/centralizer-eq-top-iff-subset--e1b2c473a75633a434547fee.md) | 209 | `result-track:e1b2c473a75633a434547feefee642a2ef77fbb4bfc4138d7b385cb9b8313c00` |
| 25 | `theorem` | [centralizer_univ](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant13bb2b5f363e2fdb07bba32a401f8cb766fb80aef43e4e43c9d3b6733d8e5062.lean/declarations/centralizer-univ--8fc34e53954b59bc62ab09ef.md) | 216 | `result-track:8fc34e53954b59bc62ab09ef3fbeaabc7c31b4c2bf377e3f00da0f88e5b553b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
