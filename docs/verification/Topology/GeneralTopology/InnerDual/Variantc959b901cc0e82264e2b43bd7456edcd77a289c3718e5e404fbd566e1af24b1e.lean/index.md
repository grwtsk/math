# Verification target: GRWTSK.Topology.GeneralTopology.InnerDual.Variantc959b901cc0e82264e2b43bd7456edcd77a289c3718e5e404fbd566e1af24b1e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd943aad2b76f227c9318d1d6ccfb4cc645f51ad",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/InnerDual/Variantc959b901cc0e82264e2b43bd7456edcd77a289c3718e5e404fbd566e1af24b1e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/InnerDual/Variantc959b901cc0e82264e2b43bd7456edcd77a289c3718e5e404fbd566e1af24b1e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/InnerDual/Variantc959b901cc0e82264e2b43bd7456edcd77a289c3718e5e404fbd566e1af24b1e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd943aad2b76f227c9318d1d6ccfb4cc645f51ad`.

Source path: `GRWTSK/Topology/GeneralTopology/InnerDual/Variantc959b901cc0e82264e2b43bd7456edcd77a289c3718e5e404fbd566e1af24b1e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/InnerDual/Variantc959b901cc0e82264e2b43bd7456edcd77a289c3718e5e404fbd566e1af24b1e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Cone.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Projection` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Set.innerDualCone](../../../../../mathematics/Topology/GeneralTopology/InnerDual/Variantc959b901cc0e82264e2b43bd7456edcd77a289c3718e5e404fbd566e1af24b1e.lean/declarations/set-innerdualcone--471f157d9b05c3f7edbe47e8.md) | 43 | `declaration-track:471f157d9b05c3f7edbe47e80f3dcc6af05faf6abbc0eb4359315ddc47cac0c7` |
| 2 | `theorem` | [mem_innerDualCone](../../../../../mathematics/Topology/GeneralTopology/InnerDual/Variantc959b901cc0e82264e2b43bd7456edcd77a289c3718e5e404fbd566e1af24b1e.lean/declarations/mem-innerdualcone--76060c94c454252ee7949055.md) | 53 | `result-track:76060c94c454252ee7949055e4d4089178f3564e4447d6447b2607ffc263ede4` |
| 3 | `theorem` | [innerDualCone_empty](../../../../../mathematics/Topology/GeneralTopology/InnerDual/Variantc959b901cc0e82264e2b43bd7456edcd77a289c3718e5e404fbd566e1af24b1e.lean/declarations/innerdualcone-empty--701ee81a0098fac02e96e7ad.md) | 57 | `result-track:701ee81a0098fac02e96e7adbbca9bd332e8169fc6bd858fde05c5bbba59a35f` |
| 4 | `theorem` | [innerDualCone_zero](../../../../../mathematics/Topology/GeneralTopology/InnerDual/Variantc959b901cc0e82264e2b43bd7456edcd77a289c3718e5e404fbd566e1af24b1e.lean/declarations/innerdualcone-zero--25f8eae9cdd5b13043beb218.md) | 62 | `result-track:25f8eae9cdd5b13043beb218783bcaa6c2ae8b7c55a878b3d3d5ee79a4ffebad` |
| 5 | `theorem` | [innerDualCone_univ](../../../../../mathematics/Topology/GeneralTopology/InnerDual/Variantc959b901cc0e82264e2b43bd7456edcd77a289c3718e5e404fbd566e1af24b1e.lean/declarations/innerdualcone-univ--140ab923082f06158a38b418.md) | 67 | `result-track:140ab923082f06158a38b418751a4472bd11509d865a8669f2d8564cd9e6857b` |
| 6 | `theorem` | [innerDualCone_le_innerDualCone](../../../../../mathematics/Topology/GeneralTopology/InnerDual/Variantc959b901cc0e82264e2b43bd7456edcd77a289c3718e5e404fbd566e1af24b1e.lean/declarations/innerdualcone-le-innerdualcone--c2e0ae141f458a122d819695.md) | 75 | `result-track:c2e0ae141f458a122d819695e6a2296137d95690559aa6171c125bd3808d71da` |
| 7 | `theorem` | [pointed_innerDualCone](../../../../../mathematics/Topology/GeneralTopology/InnerDual/Variantc959b901cc0e82264e2b43bd7456edcd77a289c3718e5e404fbd566e1af24b1e.lean/declarations/pointed-innerdualcone--778d29ee6963835437835b6c.md) | 78 | `result-track:778d29ee6963835437835b6c63785697bde1dabfdd97c75d822acdf7cb142ce2` |
| 8 | `theorem` | [innerDualCone_singleton](../../../../../mathematics/Topology/GeneralTopology/InnerDual/Variantc959b901cc0e82264e2b43bd7456edcd77a289c3718e5e404fbd566e1af24b1e.lean/declarations/innerdualcone-singleton--8803ab92a4524b0ff10ede9e.md) | 82 | `result-track:8803ab92a4524b0ff10ede9e871afeffa7f4b8a4e7f2799b9d83644deca342ca` |
| 9 | `theorem` | [innerDualCone_union](../../../../../mathematics/Topology/GeneralTopology/InnerDual/Variantc959b901cc0e82264e2b43bd7456edcd77a289c3718e5e404fbd566e1af24b1e.lean/declarations/innerdualcone-union--4f1a99e3f1e644e688faaf3b.md) | 86 | `result-track:4f1a99e3f1e644e688faaf3b86f3d8f1aa0f4d5aaafd4b4ab956fe28fee69903` |
| 10 | `theorem` | [innerDualCone_insert](../../../../../mathematics/Topology/GeneralTopology/InnerDual/Variantc959b901cc0e82264e2b43bd7456edcd77a289c3718e5e404fbd566e1af24b1e.lean/declarations/innerdualcone-insert--e65265c7116353291b5619a6.md) | 91 | `result-track:e65265c7116353291b5619a6fa0340aefca50f85183fea9a261b62fc63c79670` |
| 11 | `theorem` | [innerDualCone_iUnion](../../../../../mathematics/Topology/GeneralTopology/InnerDual/Variantc959b901cc0e82264e2b43bd7456edcd77a289c3718e5e404fbd566e1af24b1e.lean/declarations/innerdualcone-iunion--1dbc34b3727ebdbdb4d648c0.md) | 95 | `result-track:1dbc34b3727ebdbdb4d648c080e58bdc41d8e8daf1f0cbf7958cc4c1d100102c` |
| 12 | `theorem` | [innerDualCone_sUnion](../../../../../mathematics/Topology/GeneralTopology/InnerDual/Variantc959b901cc0e82264e2b43bd7456edcd77a289c3718e5e404fbd566e1af24b1e.lean/declarations/innerdualcone-sunion--aff15382f96ae07cbb28dda5.md) | 103 | `result-track:aff15382f96ae07cbb28dda59d63916ff38f2597ac2447dadb78014e318cc7ed` |
| 13 | `theorem` | [innerDualCone_eq_iInter_innerDualCone_singleton](../../../../../mathematics/Topology/GeneralTopology/InnerDual/Variantc959b901cc0e82264e2b43bd7456edcd77a289c3718e5e404fbd566e1af24b1e.lean/declarations/innerdualcone-eq-iinter-innerdualcone-singleton--831dfa300e8776cabf17ad2a.md) | 108 | `result-track:831dfa300e8776cabf17ad2a75fccc8eb33914a4e530349c8ce5e69028917ce1` |
| 14 | `theorem` | [isClosed_innerDualCone](../../../../../mathematics/Topology/GeneralTopology/InnerDual/Variantc959b901cc0e82264e2b43bd7456edcd77a289c3718e5e404fbd566e1af24b1e.lean/declarations/isclosed-innerdualcone--4a0542d7cb254f04f62ebc12.md) | 112 | `result-track:4a0542d7cb254f04f62ebc1234cac055cce4932e0ce6f1c33b3877c662dbcee9` |
| 15 | `theorem` | [ConvexCone.pointed_of_nonempty_of_isClosed](../../../../../mathematics/Topology/GeneralTopology/InnerDual/Variantc959b901cc0e82264e2b43bd7456edcd77a289c3718e5e404fbd566e1af24b1e.lean/declarations/convexcone-pointed-of-nonempty-of-isclosed--f18326169aacae83bf8dd117.md) | 124 | `result-track:f18326169aacae83bf8dd1173c2a4c221d38dfd79984e1e32fe7624cd410bbf2` |
| 16 | `theorem` | [ConvexCone.hyperplane_separation_of_nonempty_of_isClosed_of_notMem](../../../../../mathematics/Topology/GeneralTopology/InnerDual/Variantc959b901cc0e82264e2b43bd7456edcd77a289c3718e5e404fbd566e1af24b1e.lean/declarations/convexcone-hyperplane-separation-of-nonempty-of-isclosed-of-notmem--0fe9f8bbfabee4208de26fba.md) | 150 | `result-track:0fe9f8bbfabee4208de26fba79dc6692102ff0a225af4ec0bb391f25f546c8d2` |
| 17 | `theorem` | [ConvexCone.innerDualCone_of_innerDualCone_eq_self](../../../../../mathematics/Topology/GeneralTopology/InnerDual/Variantc959b901cc0e82264e2b43bd7456edcd77a289c3718e5e404fbd566e1af24b1e.lean/declarations/convexcone-innerdualcone-of-innerdualcone-eq-self--f21ca865c431ff3d287c18fa.md) | 187 | `result-track:f21ca865c431ff3d287c18faf72137aa460e80d408a5cdcdcf831e5d911afe34` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
