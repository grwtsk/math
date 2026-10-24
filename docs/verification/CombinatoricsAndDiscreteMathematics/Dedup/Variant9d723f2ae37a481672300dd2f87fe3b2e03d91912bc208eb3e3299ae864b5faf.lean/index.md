# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Dedup.Variant9d723f2ae37a481672300dd2f87fe3b2e03d91912bc208eb3e3299ae864b5faf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "577c78e0be6c9e3879579571ab42a3039b840ba1",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Dedup/Variant9d723f2ae37a481672300dd2f87fe3b2e03d91912bc208eb3e3299ae864b5faf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant9d723f2ae37a481672300dd2f87fe3b2e03d91912bc208eb3e3299ae864b5faf.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant9d723f2ae37a481672300dd2f87fe3b2e03d91912bc208eb3e3299ae864b5faf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `577c78e0be6c9e3879579571ab42a3039b840ba1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Dedup/Variant9d723f2ae37a481672300dd2f87fe3b2e03d91912bc208eb3e3299ae864b5faf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Dedup/Variant9d723f2ae37a481672300dd2f87fe3b2e03d91912bc208eb3e3299ae864b5faf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Multiset.Nodup` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dedup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant9d723f2ae37a481672300dd2f87fe3b2e03d91912bc208eb3e3299ae864b5faf.lean/declarations/dedup--3d842d2f69b74b970905abe5.md) | 33 | `declaration-track:3d842d2f69b74b970905abe5099412419e53c42bf005a9625814da48399a1e62` |
| 2 | `theorem` | [coe_dedup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant9d723f2ae37a481672300dd2f87fe3b2e03d91912bc208eb3e3299ae864b5faf.lean/declarations/coe-dedup--b3f3201852690030a65bdbca.md) | 38 | `result-track:b3f3201852690030a65bdbcaa68f0f8bd35baccadb311371298e54b3fbb5a7b4` |
| 3 | `theorem` | [dedup_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant9d723f2ae37a481672300dd2f87fe3b2e03d91912bc208eb3e3299ae864b5faf.lean/declarations/dedup-zero--de2a316c06f2c31517440643.md) | 43 | `result-track:de2a316c06f2c31517440643e4ad2643ab2fc156e4b9134bc3a33c60e84bcf26` |
| 4 | `theorem` | [mem_dedup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant9d723f2ae37a481672300dd2f87fe3b2e03d91912bc208eb3e3299ae864b5faf.lean/declarations/mem-dedup--6ec23875fdeabecf4c6f42a9.md) | 48 | `result-track:6ec23875fdeabecf4c6f42a9752eb4e7a94896121ca4201aeb16de53e59699b6` |
| 5 | `theorem` | [dedup_cons_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant9d723f2ae37a481672300dd2f87fe3b2e03d91912bc208eb3e3299ae864b5faf.lean/declarations/dedup-cons-of-mem--f5a2c65db133b277bc2f8d32.md) | 53 | `result-track:f5a2c65db133b277bc2f8d32d1eec51956cf8355feb3bd89ab309d6d0280a0f1` |
| 6 | `theorem` | [dedup_cons_of_not_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant9d723f2ae37a481672300dd2f87fe3b2e03d91912bc208eb3e3299ae864b5faf.lean/declarations/dedup-cons-of-not-mem--d2a2523ebe860cf4e1a8e65c.md) | 58 | `result-track:d2a2523ebe860cf4e1a8e65cbcf0e113c763bbeff1ecf5da4cae62de4840326e` |
| 7 | `theorem` | [dedup_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant9d723f2ae37a481672300dd2f87fe3b2e03d91912bc208eb3e3299ae864b5faf.lean/declarations/dedup-le--1b5307eb7c86959df924fddd.md) | 62 | `result-track:1b5307eb7c86959df924fddd21588ae663e59f75fa02dc573d520453681bea70` |
| 8 | `theorem` | [dedup_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant9d723f2ae37a481672300dd2f87fe3b2e03d91912bc208eb3e3299ae864b5faf.lean/declarations/dedup-subset--08eb86d3d946873235991b6d.md) | 66 | `result-track:08eb86d3d946873235991b6db268c29919afefb9f7dbd2c29f70861a7a740042` |
| 9 | `theorem` | [subset_dedup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant9d723f2ae37a481672300dd2f87fe3b2e03d91912bc208eb3e3299ae864b5faf.lean/declarations/subset-dedup--7857a0f4c3b717b3d0693335.md) | 70 | `result-track:7857a0f4c3b717b3d06933359c65641915c0b77ada2e3793b01444f1b841c973` |
| 10 | `theorem` | [dedup_subset'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant9d723f2ae37a481672300dd2f87fe3b2e03d91912bc208eb3e3299ae864b5faf.lean/declarations/dedup-subset--4406d7e5a5750cdb1ad6e112.md) | 74 | `result-track:4406d7e5a5750cdb1ad6e11257193d552a36520147d466e06e30ab21ed5f128e` |
| 11 | `theorem` | [subset_dedup'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant9d723f2ae37a481672300dd2f87fe3b2e03d91912bc208eb3e3299ae864b5faf.lean/declarations/subset-dedup--af20ba06119ae52efc487d98.md) | 79 | `result-track:af20ba06119ae52efc487d9850f89e09b5b09c0cad5743c81bee21014627954f` |
| 12 | `theorem` | [nodup_dedup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant9d723f2ae37a481672300dd2f87fe3b2e03d91912bc208eb3e3299ae864b5faf.lean/declarations/nodup-dedup--73950512659210412873f4cf.md) | 84 | `result-track:73950512659210412873f4cf6e13df274007c4cc3e4f2723b72be72fcd9f8d5c` |
| 13 | `theorem` | [dedup_eq_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant9d723f2ae37a481672300dd2f87fe3b2e03d91912bc208eb3e3299ae864b5faf.lean/declarations/dedup-eq-self--1709a1727a24e40d2ce401c6.md) | 88 | `result-track:1709a1727a24e40d2ce401c6554fda4a81a7093f22190098dcdabf3df92f7eb3` |
| 14 | `theorem` | [count_dedup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant9d723f2ae37a481672300dd2f87fe3b2e03d91912bc208eb3e3299ae864b5faf.lean/declarations/count-dedup--7b470ba70e7741d9d8aa5264.md) | 95 | `result-track:7b470ba70e7741d9d8aa52648a7f545a179e7c27db74a969cd9d821159ed6535` |
| 15 | `theorem` | [dedup_idempotent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant9d723f2ae37a481672300dd2f87fe3b2e03d91912bc208eb3e3299ae864b5faf.lean/declarations/dedup-idempotent--fe574620b6567c0ee65362e5.md) | 102 | `result-track:fe574620b6567c0ee65362e573b4ea94a46b93203e60bba5298a4f1e20ad7d87` |
| 16 | `theorem` | [dedup_bind_dedup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant9d723f2ae37a481672300dd2f87fe3b2e03d91912bc208eb3e3299ae864b5faf.lean/declarations/dedup-bind-dedup--d8197ddd9b913bfd9f7ef6f0.md) | 107 | `result-track:d8197ddd9b913bfd9f7ef6f0fe6e8361516d2a23b16f675c57114add63ae39fa` |
| 17 | `theorem` | [dedup_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant9d723f2ae37a481672300dd2f87fe3b2e03d91912bc208eb3e3299ae864b5faf.lean/declarations/dedup-eq-zero--350de9b7ac9b0dfb37dde715.md) | 116 | `result-track:350de9b7ac9b0dfb37dde715035dd9114b4a534d870dfc9486ec142b0ceffc71` |
| 18 | `theorem` | [dedup_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant9d723f2ae37a481672300dd2f87fe3b2e03d91912bc208eb3e3299ae864b5faf.lean/declarations/dedup-singleton--832825adb3176e12f3101717.md) | 121 | `result-track:832825adb3176e12f31017170cc7e02b4183e1132ef035a5e09b75065519d91a` |
| 19 | `theorem` | [le_dedup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant9d723f2ae37a481672300dd2f87fe3b2e03d91912bc208eb3e3299ae864b5faf.lean/declarations/le-dedup--4b2cc4822839d0f09e207b9b.md) | 125 | `result-track:4b2cc4822839d0f09e207b9bb7f2d727b78cf1ccd04a57362e071f7da51684fb` |
| 20 | `theorem` | [le_dedup_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant9d723f2ae37a481672300dd2f87fe3b2e03d91912bc208eb3e3299ae864b5faf.lean/declarations/le-dedup-self--a6e78a930e50118bba1d6409.md) | 130 | `result-track:a6e78a930e50118bba1d6409196c98088985de10d0211360f35fcbf216d70d35` |
| 21 | `theorem` | [dedup_ext](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant9d723f2ae37a481672300dd2f87fe3b2e03d91912bc208eb3e3299ae864b5faf.lean/declarations/dedup-ext--c716b240ae90941f629f9f84.md) | 134 | `result-track:c716b240ae90941f629f9f846a262e5c9af4e8d1e9d83c34204e6773308ee9c9` |
| 22 | `theorem` | [dedup_map_dedup_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant9d723f2ae37a481672300dd2f87fe3b2e03d91912bc208eb3e3299ae864b5faf.lean/declarations/dedup-map-dedup-eq--c1d19efe0753d3dfc9fce255.md) | 138 | `result-track:c1d19efe0753d3dfc9fce25511114697ef3c7359f935ad2da1283d8eef313822` |
| 23 | `theorem` | [dedup_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant9d723f2ae37a481672300dd2f87fe3b2e03d91912bc208eb3e3299ae864b5faf.lean/declarations/dedup-nsmul--6571fb4180af8a7bca2e4fe1.md) | 144 | `result-track:6571fb4180af8a7bca2e4fe129c287eb99e2c1d5e516646a1df895f0e5c48816` |
| 24 | `theorem` | [Nodup.le_dedup_iff_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant9d723f2ae37a481672300dd2f87fe3b2e03d91912bc208eb3e3299ae864b5faf.lean/declarations/nodup-le-dedup-iff-le--7ccc6e21b54e1d2ca379b042.md) | 149 | `result-track:7ccc6e21b54e1d2ca379b04279ffab3910e1d8dea0a3ae1c3f045fabf1c23148` |
| 25 | `theorem` | [Multiset.Nodup.le_nsmul_iff_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant9d723f2ae37a481672300dd2f87fe3b2e03d91912bc208eb3e3299ae864b5faf.lean/declarations/multiset-nodup-le-nsmul-iff-le--dd317ec628ef8343aa5113b0.md) | 155 | `result-track:dd317ec628ef8343aa5113b0afb5463f959ff3e09c68e5e5c837d2be8b9b9160` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
