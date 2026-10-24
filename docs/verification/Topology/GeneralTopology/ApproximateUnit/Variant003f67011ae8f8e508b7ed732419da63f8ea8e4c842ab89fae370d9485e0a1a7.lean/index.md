# Verification target: GRWTSK.Topology.GeneralTopology.ApproximateUnit.Variant003f67011ae8f8e508b7ed732419da63f8ea8e4c842ab89fae370d9485e0a1a7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e6c207f8d9e3277180d8eb175864db753361153",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ApproximateUnit/Variant003f67011ae8f8e508b7ed732419da63f8ea8e4c842ab89fae370d9485e0a1a7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variant003f67011ae8f8e508b7ed732419da63f8ea8e4c842ab89fae370d9485e0a1a7.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variant003f67011ae8f8e508b7ed732419da63f8ea8e4c842ab89fae370d9485e0a1a7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e6c207f8d9e3277180d8eb175864db753361153`.

Source path: `GRWTSK/Topology/GeneralTopology/ApproximateUnit/Variant003f67011ae8f8e508b7ed732419da63f8ea8e4c842ab89fae370d9485e0a1a7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ApproximateUnit/Variant003f67011ae8f8e508b7ed732419da63f8ea8e4c842ab89fae370d9485e0a1a7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Filter.IsApproximateUnit](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variant003f67011ae8f8e508b7ed732419da63f8ea8e4c842ab89fae370d9485e0a1a7.lean/declarations/filter-isapproximateunit--147b455fd0e54bd7e06048b4.md) | 31 | `declaration-track:147b455fd0e54bd7e06048b4750be910561d7e42d0a0504073431774d1dda9a1` |
| 2 | `lemma` | [pure_one](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variant003f67011ae8f8e508b7ed732419da63f8ea8e4c842ab89fae370d9485e0a1a7.lean/declarations/pure-one--666fa6760fdb8bba4c444d41.md) | 48 | `result-track:666fa6760fdb8bba4c444d416797349c6f97659a55d262f2f0c35e6d6b5f3dd6` |
| 3 | `lemma` | [mono](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variant003f67011ae8f8e508b7ed732419da63f8ea8e4c842ab89fae370d9485e0a1a7.lean/declarations/mono--266aeb359cb28958e617f077.md) | 53 | `result-track:266aeb359cb28958e617f077dd6b52bb43061146eff17407f5527ef990fc7266` |
| 4 | `lemma` | [nhds_one](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variant003f67011ae8f8e508b7ed732419da63f8ea8e4c842ab89fae370d9485e0a1a7.lean/declarations/nhds-one--cf79746e9b776bb79f0b8daa.md) | 60 | `result-track:cf79746e9b776bb79f0b8daa0108a41592897b6dd66b9c323311b876342525f6` |
| 5 | `lemma` | [iff_neBot_and_le_nhds_one](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variant003f67011ae8f8e508b7ed732419da63f8ea8e4c842ab89fae370d9485e0a1a7.lean/declarations/iff-nebot-and-le-nhds-one--4fdd2b82e9c7714ccd7fc966.md) | 65 | `result-track:4fdd2b82e9c7714ccd7fc9666a5060a47b62fc5526d752019bf15a91ad824a2f` |
| 6 | `lemma` | [iff_le_nhds_one](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variant003f67011ae8f8e508b7ed732419da63f8ea8e4c842ab89fae370d9485e0a1a7.lean/declarations/iff-le-nhds-one--2e6126c37e21373fd82e788b.md) | 71 | `result-track:2e6126c37e21373fd82e788be885f2511d904ae61a50da8851cd27f0a2676bd2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
