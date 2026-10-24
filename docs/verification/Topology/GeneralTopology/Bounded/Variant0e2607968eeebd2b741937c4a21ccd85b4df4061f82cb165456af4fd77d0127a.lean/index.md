# Verification target: GRWTSK.Topology.GeneralTopology.Bounded.Variant0e2607968eeebd2b741937c4a21ccd85b4df4061f82cb165456af4fd77d0127a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2454c3d0987990656baee756b72fe22a1bb081dc",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Bounded/Variant0e2607968eeebd2b741937c4a21ccd85b4df4061f82cb165456af4fd77d0127a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant0e2607968eeebd2b741937c4a21ccd85b4df4061f82cb165456af4fd77d0127a.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant0e2607968eeebd2b741937c4a21ccd85b4df4061f82cb165456af4fd77d0127a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2454c3d0987990656baee756b72fe22a1bb081dc`.

Source path: `GRWTSK/Topology/GeneralTopology/Bounded/Variant0e2607968eeebd2b741937c4a21ccd85b4df4061f82cb165456af4fd77d0127a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Bounded/Variant0e2607968eeebd2b741937c4a21ccd85b4df4061f82cb165456af4fd77d0127a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Continuity` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Bounded` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Pointwise` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [comap_norm_atTop'](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant0e2607968eeebd2b741937c4a21ccd85b4df4061f82cb165456af4fd77d0127a.lean/declarations/comap-norm-attop--04c5a2808593fefb444b7dbc.md) | 29 | `result-track:04c5a2808593fefb444b7dbc1618da85ffe9199159ebcddaf1e00d274c74d3f1` |
| 2 | `lemma` | [Filter.HasBasis.cobounded_of_norm'](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant0e2607968eeebd2b741937c4a21ccd85b4df4061f82cb165456af4fd77d0127a.lean/declarations/filter-hasbasis-cobounded-of-norm--99a50890187413b96d894890.md) | 33 | `result-track:99a50890187413b96d894890396518c42f35253049e949c27e9c02b668fbf067` |
| 3 | `lemma` | [Filter.hasBasis_cobounded_norm'](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant0e2607968eeebd2b741937c4a21ccd85b4df4061f82cb165456af4fd77d0127a.lean/declarations/filter-hasbasis-cobounded-norm--ce03037eac950771e24ea4ce.md) | 38 | `result-track:ce03037eac950771e24ea4ce2c6708b9c62545dffd13635b7dc6b70e6d097b59` |
| 4 | `lemma` | [tendsto_norm_atTop_iff_cobounded'](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant0e2607968eeebd2b741937c4a21ccd85b4df4061f82cb165456af4fd77d0127a.lean/declarations/tendsto-norm-attop-iff-cobounded--38ef366f7fd1faf6c41c1ccb.md) | 42 | `result-track:38ef366f7fd1faf6c41c1ccba070ef8029222c9f56b495c174500eda69a36f04` |
| 5 | `lemma` | [tendsto_norm_cobounded_atTop'](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant0e2607968eeebd2b741937c4a21ccd85b4df4061f82cb165456af4fd77d0127a.lean/declarations/tendsto-norm-cobounded-attop--3f0e056d4c3d5f98d7c4452d.md) | 47 | `result-track:3f0e056d4c3d5f98d7c4452d0db40e3189d69160c0ae5939bea884cf22fdf6bb` |
| 6 | `lemma` | [eventually_cobounded_le_norm'](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant0e2607968eeebd2b741937c4a21ccd85b4df4061f82cb165456af4fd77d0127a.lean/declarations/eventually-cobounded-le-norm--dec7b0ec376b5eb43557c92a.md) | 51 | `result-track:dec7b0ec376b5eb43557c92a45ee9de868582bdb828ce4408d01993c2e5fff05` |
| 7 | `lemma` | [tendsto_norm_cocompact_atTop'](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant0e2607968eeebd2b741937c4a21ccd85b4df4061f82cb165456af4fd77d0127a.lean/declarations/tendsto-norm-cocompact-attop--c52d2d13b775ae3e440c5b92.md) | 55 | `result-track:c52d2d13b775ae3e440c5b921857d319796c9ace83a94ca00b1c1b3ff8bc6835` |
| 8 | `lemma` | [Filter.inv_cobounded](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant0e2607968eeebd2b741937c4a21ccd85b4df4061f82cb165456af4fd77d0127a.lean/declarations/filter-inv-cobounded--3772adf2e2be5a897067a41d.md) | 59 | `result-track:3772adf2e2be5a897067a41d4ce7259c11283c2942f108720cb4e4cbc37771c4` |
| 9 | `theorem` | [Filter.tendsto_inv_cobounded](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant0e2607968eeebd2b741937c4a21ccd85b4df4061f82cb165456af4fd77d0127a.lean/declarations/filter-tendsto-inv-cobounded--484c12fe713f5a6c5a8f2d8f.md) | 64 | `result-track:484c12fe713f5a6c5a8f2d8fd3d6e3eb7b1761ca567e36323322065277d6eb6e` |
| 10 | `lemma` | [isBounded_iff_forall_norm_le'](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant0e2607968eeebd2b741937c4a21ccd85b4df4061f82cb165456af4fd77d0127a.lean/declarations/isbounded-iff-forall-norm-le--ace72b76b829d1311aa91020.md) | 68 | `result-track:ace72b76b829d1311aa91020ddb2fff7268edb731e18a5b32f27fb781a74995b` |
| 11 | `lemma` | [Bornology.IsBounded.exists_pos_norm_le'](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant0e2607968eeebd2b741937c4a21ccd85b4df4061f82cb165456af4fd77d0127a.lean/declarations/bornology-isbounded-exists-pos-norm-le--beddb20e02fd37a810f91d4f.md) | 78 | `result-track:beddb20e02fd37a810f91d4fbe403d24b1e0370ea97d3ec97be6b290b6e358e3` |
| 12 | `lemma` | [Bornology.IsBounded.exists_pos_norm_lt'](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant0e2607968eeebd2b741937c4a21ccd85b4df4061f82cb165456af4fd77d0127a.lean/declarations/bornology-isbounded-exists-pos-norm-lt--e87840f4647a3743ea02860e.md) | 83 | `result-track:e87840f4647a3743ea02860e8370c6824530cd5970149c5cab454805f57d6570` |
| 13 | `lemma` | [NormedCommGroup.cauchySeq_iff](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant0e2607968eeebd2b741937c4a21ccd85b4df4061f82cb165456af4fd77d0127a.lean/declarations/normedcommgroup-cauchyseq-iff--43b9236d5008e4678c45344c.md) | 88 | `result-track:43b9236d5008e4678c45344c0f8122d3c8995f7ba74bc43711088926794521af` |
| 14 | `lemma` | [IsCompact.exists_bound_of_continuousOn'](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant0e2607968eeebd2b741937c4a21ccd85b4df4061f82cb165456af4fd77d0127a.lean/declarations/iscompact-exists-bound-of-continuouson--d8262b4dcb311eb62ea82ca5.md) | 93 | `result-track:d8262b4dcb311eb62ea82ca5c2852d60dc3b9cc2dd78a92bb0fd880fee08bf50` |
| 15 | `lemma` | [HasCompactMulSupport.exists_bound_of_continuous](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant0e2607968eeebd2b741937c4a21ccd85b4df4061f82cb165456af4fd77d0127a.lean/declarations/hascompactmulsupport-exists-bound-of-continuous--94b27a55fc0fb72def7de3cd.md) | 99 | `result-track:94b27a55fc0fb72def7de3cd5661bc8fad968d85cc688c7c75541ecad1c0ad3e` |
| 16 | `lemma` | [Filter.Tendsto.op_one_isBoundedUnder_le'](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant0e2607968eeebd2b741937c4a21ccd85b4df4061f82cb165456af4fd77d0127a.lean/declarations/filter-tendsto-op-one-isboundedunder-le--1c0d151071c722a75663c273.md) | 111 | `result-track:1c0d151071c722a75663c2733000b74897431e36eb49593adb9685a6422a1c86` |
| 17 | `theorem` | [Filter.Tendsto.op_one_isBoundedUnder_le](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant0e2607968eeebd2b741937c4a21ccd85b4df4061f82cb165456af4fd77d0127a.lean/declarations/filter-tendsto-op-one-isboundedunder-le--b9bca784cb1c9b89e66b5db1.md) | 137 | `result-track:b9bca784cb1c9b89e66b5db1356c0b5d2f1ab4846d92fd4b5415773d3038f96e` |
| 18 | `lemma` | [Continuous.bounded_above_of_compact_support](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant0e2607968eeebd2b741937c4a21ccd85b4df4061f82cb165456af4fd77d0127a.lean/declarations/continuous-bounded-above-of-compact-support--5535b34bc3ed0145818871d9.md) | 147 | `result-track:5535b34bc3ed0145818871d9776e9591d5f64aaa0b35652d7620bb3fa1cdbdf3` |
| 19 | `lemma` | [HasCompactMulSupport.exists_pos_le_norm](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant0e2607968eeebd2b741937c4a21ccd85b4df4061f82cb165456af4fd77d0127a.lean/declarations/hascompactmulsupport-exists-pos-le-norm--52bfef7cefdd9c19417208ca.md) | 157 | `result-track:52bfef7cefdd9c19417208ca10bacebbbac4c3865aa1a4ee01c4aa8c00e9f4c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
