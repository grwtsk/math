# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant60fda8ae987c60abb7ef9f84c780501d179762951de955ce02f03d9d29a0201e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66ea08ca3ffd2a8a47c01fe30db1510d29884da9",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant60fda8ae987c60abb7ef9f84c780501d179762951de955ce02f03d9d29a0201e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant60fda8ae987c60abb7ef9f84c780501d179762951de955ce02f03d9d29a0201e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant60fda8ae987c60abb7ef9f84c780501d179762951de955ce02f03d9d29a0201e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66ea08ca3ffd2a8a47c01fe30db1510d29884da9`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant60fda8ae987c60abb7ef9f84c780501d179762951de955ce02f03d9d29a0201e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant60fda8ae987c60abb7ef9f84c780501d179762951de955ce02f03d9d29a0201e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Content` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.CompactlySupported` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.PartitionOfUnity` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [CompactlySupportedContinuousMap.monotone_of_nnreal](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant60fda8ae987c60abb7ef9f84c780501d179762951de955ce02f03d9d29a0201e.lean/declarations/compactlysupportedcontinuousmap-monotone-of-nnreal--ecee6d579cc148678374050d.md) | 41 | `result-track:ecee6d579cc148678374050d31dd9bbebb02d41c6701faf0a8f7dca2e49cd7f1` |
| 2 | `lemma` | [CompactlySupportedContinuousMap.monotone_of_nonneg](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant60fda8ae987c60abb7ef9f84c780501d179762951de955ce02f03d9d29a0201e.lean/declarations/compactlysupportedcontinuousmap-monotone-of-nonneg--b47a8ac62797d2e6d83a372f.md) | 48 | `result-track:b47a8ac62797d2e6d83a372f91a7e355d70385bc41444755bb4012cb212c4fc1` |
| 3 | `def` | [rieszContentAux](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant60fda8ae987c60abb7ef9f84c780501d179762951de955ce02f03d9d29a0201e.lean/declarations/rieszcontentaux--f719d29b8d282fe9a43cf654.md) | 66 | `declaration-track:f719d29b8d282fe9a43cf65448a213874181487df5e6b809261690f019cda30a` |
| 4 | `theorem` | [rieszContentAux_image_nonempty](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant60fda8ae987c60abb7ef9f84c780501d179762951de955ce02f03d9d29a0201e.lean/declarations/rieszcontentaux-image-nonempty--9370a5674e944e8241907d73.md) | 75 | `result-track:9370a5674e944e8241907d732d21dd121a0ec6652ec39fbb89e0fc9720162c78` |
| 5 | `theorem` | [rieszContentAux_mono](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant60fda8ae987c60abb7ef9f84c780501d179762951de955ce02f03d9d29a0201e.lean/declarations/rieszcontentaux-mono--05b2dc7b17bfa4165529fe41.md) | 98 | `result-track:05b2dc7b17bfa4165529fe41ec962c67f670001957b7081f75e1157e895b9a76` |
| 6 | `theorem` | [rieszContentAux_le](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant60fda8ae987c60abb7ef9f84c780501d179762951de955ce02f03d9d29a0201e.lean/declarations/rieszcontentaux-le--e61e639b365e649db2043441.md) | 109 | `result-track:e61e639b365e649db2043441be44719ee41e8b22613ee9544266af43cd34366c` |
| 7 | `theorem` | [exists_lt_rieszContentAux_add_pos](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant60fda8ae987c60abb7ef9f84c780501d179762951de955ce02f03d9d29a0201e.lean/declarations/exists-lt-rieszcontentaux-add-pos--39b44e20f764cf2f3d97d4de.md) | 118 | `result-track:39b44e20f764cf2f3d97d4de2aac3b223561fa668e240de715c58d5e760df9c3` |
| 8 | `theorem` | [rieszContentAux_sup_le](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant60fda8ae987c60abb7ef9f84c780501d179762951de955ce02f03d9d29a0201e.lean/declarations/rieszcontentaux-sup-le--35382363dbaa43a2ad1e7d2d.md) | 130 | `result-track:35382363dbaa43a2ad1e7d2dd37b8b8d6ba88ce664c854ce2d6b23cc551e8060` |
| 9 | `lemma` | [exists_continuous_add_one_of_isCompact_nnreal](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant60fda8ae987c60abb7ef9f84c780501d179762951de955ce02f03d9d29a0201e.lean/declarations/exists-continuous-add-one-of-iscompact-nnreal--ba5cdccec5ee31abcfcc124d.md) | 157 | `result-track:ba5cdccec5ee31abcfcc124dcdb8964722f79fa29e62ab183f9c8cddd0ca1488` |
| 10 | `lemma` | [rieszContentAux_union](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant60fda8ae987c60abb7ef9f84c780501d179762951de955ce02f03d9d29a0201e.lean/declarations/rieszcontentaux-union--71eb5d5d25c03fb7fef0a44e.md) | 238 | `result-track:71eb5d5d25c03fb7fef0a44eabef5c12e6823a357057aa4af45f82c44e98627d` |
| 11 | `def` | [rieszContent](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant60fda8ae987c60abb7ef9f84c780501d179762951de955ce02f03d9d29a0201e.lean/declarations/rieszcontent--37d558301f467fbab2ac717f.md) | 280 | `declaration-track:37d558301f467fbab2ac717f651eedc0a27cfb067cbe41fa4f1b1647bc8a7cd7` |
| 12 | `lemma` | [rieszContent_ne_top](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant60fda8ae987c60abb7ef9f84c780501d179762951de955ce02f03d9d29a0201e.lean/declarations/rieszcontent-ne-top--38b5601c9eb192e9f72d96dd.md) | 286 | `result-track:38b5601c9eb192e9f72d96dd96ad570b174dda49159c7ab2b6018059934e3013` |
| 13 | `lemma` | [contentRegular_rieszContent](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant60fda8ae987c60abb7ef9f84c780501d179762951de955ce02f03d9d29a0201e.lean/declarations/contentregular-rieszcontent--57e683143bee1e09aed57e5f.md) | 289 | `result-track:57e683143bee1e09aed57e5f2516b78fe9ca6f524cf71a172f5d897163233858` |
| 14 | `def` | [rieszMeasure](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant60fda8ae987c60abb7ef9f84c780501d179762951de955ce02f03d9d29a0201e.lean/declarations/rieszmeasure--b47ee3a9c6c8134981a40ce8.md) | 328 | `declaration-track:b47ee3a9c6c8134981a40ce85d25732c30a5763fe629a5ecc950f0e4279231eb` |
| 15 | `lemma` | [le_rieszMeasure_of_isCompact_tsupport_subset](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant60fda8ae987c60abb7ef9f84c780501d179762951de955ce02f03d9d29a0201e.lean/declarations/le-rieszmeasure-of-iscompact-tsupport-subset--cfd70f48ee149ffbbc9b48ab.md) | 330 | `result-track:cfd70f48ee149ffbbc9b48ab92f1928070f62704d6dca5a76d9a3f3bd381b1cf` |
| 16 | `lemma` | [le_rieszMeasure_of_tsupport_subset](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant60fda8ae987c60abb7ef9f84c780501d179762951de955ce02f03d9d29a0201e.lean/declarations/le-rieszmeasure-of-tsupport-subset--8606047af7637b2eae4432eb.md) | 348 | `result-track:8606047af7637b2eae4432ebc356b6e5b7dc4dac8a1af7badfe001e69dbeeeef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
