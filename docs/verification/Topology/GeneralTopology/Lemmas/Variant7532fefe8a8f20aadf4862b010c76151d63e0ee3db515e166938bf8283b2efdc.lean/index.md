# Verification target: GRWTSK.Topology.GeneralTopology.Lemmas.Variant7532fefe8a8f20aadf4862b010c76151d63e0ee3db515e166938bf8283b2efdc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8896af950abbae801da7693a8173b8fdd2e68f82",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant7532fefe8a8f20aadf4862b010c76151d63e0ee3db515e166938bf8283b2efdc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant7532fefe8a8f20aadf4862b010c76151d63e0ee3db515e166938bf8283b2efdc.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant7532fefe8a8f20aadf4862b010c76151d63e0ee3db515e166938bf8283b2efdc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8896af950abbae801da7693a8173b8fdd2e68f82`.

Source path: `GRWTSK/Topology/GeneralTopology/Lemmas/Variant7532fefe8a8f20aadf4862b010c76151d63e0ee3db515e166938bf8283b2efdc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Lemmas/Variant7532fefe8a8f20aadf4862b010c76151d63e0ee3db515e166938bf8283b2efdc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Pseudo.Constructions` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.DenselyOrdered` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Compact` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant7532fefe8a8f20aadf4862b010c76151d63e0ee3db515e166938bf8283b2efdc.lean/declarations/instance--17dd8fe56f0fa59d96e08a6e.md) | 27 | `declaration-track:17dd8fe56f0fa59d96e08a6e24bfc66f5e5cc9d6c343e1052467eafce15161a7` |
| 2 | `lemma` | [Real.singleton_eq_inter_Icc](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant7532fefe8a8f20aadf4862b010c76151d63e0ee3db515e166938bf8283b2efdc.lean/declarations/real-singleton-eq-inter-icc--d31e47fc6c10478d23361c70.md) | 31 | `result-track:d31e47fc6c10478d23361c7016a6206155ae81d3975b6344c0bd8de2645c63a7` |
| 3 | `lemma` | [squeeze_zero'](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant7532fefe8a8f20aadf4862b010c76151d63e0ee3db515e166938bf8283b2efdc.lean/declarations/squeeze-zero--14e511d7b3b63ee83048307f.md) | 36 | `result-track:14e511d7b3b63ee83048307f09ec27c5ab33aa50269e1454995ba3a8b627a7ba` |
| 4 | `lemma` | [squeeze_zero](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant7532fefe8a8f20aadf4862b010c76151d63e0ee3db515e166938bf8283b2efdc.lean/declarations/squeeze-zero--f7e76c06b0c9fa5465c5d9d7.md) | 42 | `result-track:f7e76c06b0c9fa5465c5d9d7675f6e8a7410c1baa7fd4f832456ff992ba6d10a` |
| 5 | `lemma` | [eventually_closedBall_subset](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant7532fefe8a8f20aadf4862b010c76151d63e0ee3db515e166938bf8283b2efdc.lean/declarations/eventually-closedball-subset--40e1f5f1805994eb8683bc6b.md) | 48 | `result-track:40e1f5f1805994eb8683bc6b5546623203414d9d034d4d08880c5887f0f8a1a6` |
| 6 | `lemma` | [tendsto_closedBall_smallSets](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant7532fefe8a8f20aadf4862b010c76151d63e0ee3db515e166938bf8283b2efdc.lean/declarations/tendsto-closedball-smallsets--4dc43a5a68314a12078a8e4d.md) | 54 | `result-track:4dc43a5a68314a12078a8e4d16de2d5c3e1293b80d9cd5282ce0159ca40f246d` |
| 7 | `lemma` | [isClosed_closedBall](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant7532fefe8a8f20aadf4862b010c76151d63e0ee3db515e166938bf8283b2efdc.lean/declarations/isclosed-closedball--734a6f7267a0177f55486f4e.md) | 60 | `result-track:734a6f7267a0177f55486f4e981890de1dbca0ab4c7725eca5e758cbe81580c5` |
| 8 | `lemma` | [isClosed_sphere](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant7532fefe8a8f20aadf4862b010c76151d63e0ee3db515e166938bf8283b2efdc.lean/declarations/isclosed-sphere--6f6bb564b609487991e44f75.md) | 65 | `result-track:6f6bb564b609487991e44f7529c6764d1be89f8e4d885e5c581aea8231231b3e` |
| 9 | `lemma` | [closure_closedBall](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant7532fefe8a8f20aadf4862b010c76151d63e0ee3db515e166938bf8283b2efdc.lean/declarations/closure-closedball--63785e73f75c62d315af0ef1.md) | 69 | `result-track:63785e73f75c62d315af0ef11b3a838af4d92cc518660f630670455b3ef2d4ed` |
| 10 | `lemma` | [closure_sphere](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant7532fefe8a8f20aadf4862b010c76151d63e0ee3db515e166938bf8283b2efdc.lean/declarations/closure-sphere--c0549537509774b296653f09.md) | 73 | `result-track:c0549537509774b296653f09bdc417bfc5697633de2ca4a0ec77c9e02283266a` |
| 11 | `lemma` | [closure_ball_subset_closedBall](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant7532fefe8a8f20aadf4862b010c76151d63e0ee3db515e166938bf8283b2efdc.lean/declarations/closure-ball-subset-closedball--76707c875dacf9a745fb0d40.md) | 76 | `result-track:76707c875dacf9a745fb0d405f3944fbfee703452e7f2272c672add8e47dc195` |
| 12 | `lemma` | [frontier_ball_subset_sphere](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant7532fefe8a8f20aadf4862b010c76151d63e0ee3db515e166938bf8283b2efdc.lean/declarations/frontier-ball-subset-sphere--d0f7e4121c2c8e282118599c.md) | 79 | `result-track:d0f7e4121c2c8e282118599c3c0836b39d067b9f6a74537b28e7998432ddc4ec` |
| 13 | `lemma` | [frontier_closedBall_subset_sphere](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant7532fefe8a8f20aadf4862b010c76151d63e0ee3db515e166938bf8283b2efdc.lean/declarations/frontier-closedball-subset-sphere--bdce4001a4e9fe14d93370dd.md) | 82 | `result-track:bdce4001a4e9fe14d93370ddb7b9a27969a020b997d430a7cc3045e99b525305` |
| 14 | `lemma` | [closedBall_zero'](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant7532fefe8a8f20aadf4862b010c76151d63e0ee3db515e166938bf8283b2efdc.lean/declarations/closedball-zero--aebd3a8905c0165823884dcc.md) | 85 | `result-track:aebd3a8905c0165823884dcc11b521111617a96b1a00eb973462c1606b90f877` |
| 15 | `lemma` | [eventually_isCompact_closedBall](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant7532fefe8a8f20aadf4862b010c76151d63e0ee3db515e166938bf8283b2efdc.lean/declarations/eventually-iscompact-closedball--0d48440437fe717dd1c6a217.md) | 91 | `result-track:0d48440437fe717dd1c6a217076f85b0b0a7f51ba00a4bf8f774fd0b5705cfe2` |
| 16 | `lemma` | [exists_isCompact_closedBall](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant7532fefe8a8f20aadf4862b010c76151d63e0ee3db515e166938bf8283b2efdc.lean/declarations/exists-iscompact-closedball--de93b71a23bb83faf9bb5ffc.md) | 97 | `result-track:de93b71a23bb83faf9bb5ffcbe7afec8e74cb8282cb7bf0489fa3dd7c404f619` |
| 17 | `theorem` | [biInter_gt_closedBall](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant7532fefe8a8f20aadf4862b010c76151d63e0ee3db515e166938bf8283b2efdc.lean/declarations/biinter-gt-closedball--477728267323bccf44d225d6.md) | 103 | `result-track:477728267323bccf44d225d68a9b9938f5f0e26633eafc22d01850ce1a707f60` |
| 18 | `theorem` | [biInter_gt_ball](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant7532fefe8a8f20aadf4862b010c76151d63e0ee3db515e166938bf8283b2efdc.lean/declarations/biinter-gt-ball--4732913007a3c3b9f9ddcfee.md) | 107 | `result-track:4732913007a3c3b9f9ddcfee2dfc6f914fdc2e48d50d1a5fd77c5a9a3a5fdfdc` |
| 19 | `theorem` | [biUnion_lt_ball](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant7532fefe8a8f20aadf4862b010c76151d63e0ee3db515e166938bf8283b2efdc.lean/declarations/biunion-lt-ball--145cd7a8b419de668601fffe.md) | 111 | `result-track:145cd7a8b419de668601fffe8794b0a89988591f2c7cc59cc8470be79a445764` |
| 20 | `theorem` | [biUnion_lt_closedBall](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant7532fefe8a8f20aadf4862b010c76151d63e0ee3db515e166938bf8283b2efdc.lean/declarations/biunion-lt-closedball--1ea0cd89630a4fe3057b3826.md) | 116 | `result-track:1ea0cd89630a4fe3057b382615d0d41a26377e19114e52179f95c2fa7bb68d03` |
| 21 | `theorem` | [lebesgue_number_lemma_of_metric](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant7532fefe8a8f20aadf4862b010c76151d63e0ee3db515e166938bf8283b2efdc.lean/declarations/lebesgue-number-lemma-of-metric--fe3d626a0d8e5cc77d0d2ac5.md) | 123 | `result-track:fe3d626a0d8e5cc77d0d2ac504d5962f920120f5bd18928ceb8da0e540747446` |
| 22 | `theorem` | [lebesgue_number_lemma_of_metric_sUnion](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant7532fefe8a8f20aadf4862b010c76151d63e0ee3db515e166938bf8283b2efdc.lean/declarations/lebesgue-number-lemma-of-metric-sunion--a3f91e9cf1e27e80ea9055e4.md) | 128 | `result-track:a3f91e9cf1e27e80ea9055e49bf2465888a74afc01b2afe6412e7b2d93cfd4bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
