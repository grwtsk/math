# Verification target: GRWTSK.Topology.GeneralTopology.Dual.Variant3b006de31eb5af1ffcd7e8f23c67d42e996818d743667f5f23ffa1226fba0d17

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "98f5e15700d253f57d660fae9751607c2e2e9d2a",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Dual/Variant3b006de31eb5af1ffcd7e8f23c67d42e996818d743667f5f23ffa1226fba0d17.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Dual/Variant3b006de31eb5af1ffcd7e8f23c67d42e996818d743667f5f23ffa1226fba0d17.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Dual/Variant3b006de31eb5af1ffcd7e8f23c67d42e996818d743667f5f23ffa1226fba0d17.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `98f5e15700d253f57d660fae9751607c2e2e9d2a`.

Source path: `GRWTSK/Topology/GeneralTopology/Dual/Variant3b006de31eb5af1ffcd7e8f23c67d42e996818d743667f5f23ffa1226fba0d17.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Dual/Variant3b006de31eb5af1ffcd7e8f23c67d42e996818d743667f5f23ffa1226fba0d17.lean.json)

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
| 1 | `def` | [Set.innerDualCone](../../../../../mathematics/Topology/GeneralTopology/Dual/Variant3b006de31eb5af1ffcd7e8f23c67d42e996818d743667f5f23ffa1226fba0d17.lean/declarations/set-innerdualcone--e87bfdc6a58324e2dc721e5d.md) | 43 | `declaration-track:e87bfdc6a58324e2dc721e5df8b8eaca148158141e85cd447b4a8087c609af68` |
| 2 | `theorem` | [mem_innerDualCone](../../../../../mathematics/Topology/GeneralTopology/Dual/Variant3b006de31eb5af1ffcd7e8f23c67d42e996818d743667f5f23ffa1226fba0d17.lean/declarations/mem-innerdualcone--c9d2044086748ded9f258758.md) | 54 | `result-track:c9d2044086748ded9f258758945ad9f732e3213809890eb0881c87c8a8cefe3b` |
| 3 | `theorem` | [innerDualCone_empty](../../../../../mathematics/Topology/GeneralTopology/Dual/Variant3b006de31eb5af1ffcd7e8f23c67d42e996818d743667f5f23ffa1226fba0d17.lean/declarations/innerdualcone-empty--bb208884033fa34bfa32017a.md) | 59 | `result-track:bb208884033fa34bfa32017a23e1695df8c200b562762297f422681b58626dc6` |
| 4 | `theorem` | [innerDualCone_zero](../../../../../mathematics/Topology/GeneralTopology/Dual/Variant3b006de31eb5af1ffcd7e8f23c67d42e996818d743667f5f23ffa1226fba0d17.lean/declarations/innerdualcone-zero--9559709162bdc9f581ce1e65.md) | 65 | `result-track:9559709162bdc9f581ce1e6569c88d3f2eeded7c85047108ba15447387471317` |
| 5 | `theorem` | [innerDualCone_univ](../../../../../mathematics/Topology/GeneralTopology/Dual/Variant3b006de31eb5af1ffcd7e8f23c67d42e996818d743667f5f23ffa1226fba0d17.lean/declarations/innerdualcone-univ--7c7e6e23e1a2b879852a0064.md) | 71 | `result-track:7c7e6e23e1a2b879852a0064e5a93bdb7ea218efe3356a034feb80d918c0cfaa` |
| 6 | `theorem` | [innerDualCone_le_innerDualCone](../../../../../mathematics/Topology/GeneralTopology/Dual/Variant3b006de31eb5af1ffcd7e8f23c67d42e996818d743667f5f23ffa1226fba0d17.lean/declarations/innerdualcone-le-innerdualcone--3a2411f56ce72b607d926d3d.md) | 78 | `result-track:3a2411f56ce72b607d926d3d8d8f403cc949cbfd62406fe5d0c788db601c0bfa` |
| 7 | `theorem` | [pointed_innerDualCone](../../../../../mathematics/Topology/GeneralTopology/Dual/Variant3b006de31eb5af1ffcd7e8f23c67d42e996818d743667f5f23ffa1226fba0d17.lean/declarations/pointed-innerdualcone--2d6199a79425894d3a9ed2a0.md) | 82 | `result-track:2d6199a79425894d3a9ed2a0130ed26dc60e735cc7dbb674e54ba329c37a9cdc` |
| 8 | `theorem` | [innerDualCone_singleton](../../../../../mathematics/Topology/GeneralTopology/Dual/Variant3b006de31eb5af1ffcd7e8f23c67d42e996818d743667f5f23ffa1226fba0d17.lean/declarations/innerdualcone-singleton--c50914808ffc0f70ecc3bf60.md) | 87 | `result-track:c50914808ffc0f70ecc3bf6089ce13bdb68d2e61ab666ead42f564333e4ac883` |
| 9 | `theorem` | [innerDualCone_union](../../../../../mathematics/Topology/GeneralTopology/Dual/Variant3b006de31eb5af1ffcd7e8f23c67d42e996818d743667f5f23ffa1226fba0d17.lean/declarations/innerdualcone-union--a8604846956b930b31421318.md) | 92 | `result-track:a8604846956b930b31421318a1924c055478ac3ec2fd11a02361f23047c5dbf6` |
| 10 | `theorem` | [innerDualCone_insert](../../../../../mathematics/Topology/GeneralTopology/Dual/Variant3b006de31eb5af1ffcd7e8f23c67d42e996818d743667f5f23ffa1226fba0d17.lean/declarations/innerdualcone-insert--729c40d09506aeaa52bc37e7.md) | 98 | `result-track:729c40d09506aeaa52bc37e7ef00c8480afadf328c841246c66305cc5beb007c` |
| 11 | `theorem` | [innerDualCone_iUnion](../../../../../mathematics/Topology/GeneralTopology/Dual/Variant3b006de31eb5af1ffcd7e8f23c67d42e996818d743667f5f23ffa1226fba0d17.lean/declarations/innerdualcone-iunion--ebc005bcf989682b2417c72f.md) | 103 | `result-track:ebc005bcf989682b2417c72f9d8eab6de362888b0ea0afc11a24656a819b77ae` |
| 12 | `theorem` | [innerDualCone_sUnion](../../../../../mathematics/Topology/GeneralTopology/Dual/Variant3b006de31eb5af1ffcd7e8f23c67d42e996818d743667f5f23ffa1226fba0d17.lean/declarations/innerdualcone-sunion--04cfac7695d8085a96761cf4.md) | 112 | `result-track:04cfac7695d8085a96761cf4465ca4c440d2adccb74ed17315dee7f244b7d0bc` |
| 13 | `theorem` | [innerDualCone_eq_iInter_innerDualCone_singleton](../../../../../mathematics/Topology/GeneralTopology/Dual/Variant3b006de31eb5af1ffcd7e8f23c67d42e996818d743667f5f23ffa1226fba0d17.lean/declarations/innerdualcone-eq-iinter-innerdualcone-singleton--ed3028f63750279339f7ec2c.md) | 118 | `result-track:ed3028f63750279339f7ec2cc857486bdea719d0dc9574921da9e05d07180a67` |
| 14 | `theorem` | [isClosed_innerDualCone](../../../../../mathematics/Topology/GeneralTopology/Dual/Variant3b006de31eb5af1ffcd7e8f23c67d42e996818d743667f5f23ffa1226fba0d17.lean/declarations/isclosed-innerdualcone--9de066b3d8338582e4d79cd7.md) | 123 | `result-track:9de066b3d8338582e4d79cd7a0e4e0505f90e9ed9bcd8a6db35b78acb1ec462c` |
| 15 | `theorem` | [ConvexCone.pointed_of_nonempty_of_isClosed](../../../../../mathematics/Topology/GeneralTopology/Dual/Variant3b006de31eb5af1ffcd7e8f23c67d42e996818d743667f5f23ffa1226fba0d17.lean/declarations/convexcone-pointed-of-nonempty-of-isclosed--a39bd6a09d211e8aec657533.md) | 137 | `result-track:a39bd6a09d211e8aec6575330889d7dcaae5c793f8d6a1342f519035adedce37` |
| 16 | `theorem` | [ConvexCone.hyperplane_separation_of_nonempty_of_isClosed_of_nmem](../../../../../mathematics/Topology/GeneralTopology/Dual/Variant3b006de31eb5af1ffcd7e8f23c67d42e996818d743667f5f23ffa1226fba0d17.lean/declarations/convexcone-hyperplane-separation-of-nonempty-of-isclosed-of-nmem--1719c5bc1f5c91426c74d3ab.md) | 163 | `result-track:1719c5bc1f5c91426c74d3ab59d887e4223421fd6580f4d6919e6f8f5e27288f` |
| 17 | `theorem` | [ConvexCone.innerDualCone_of_innerDualCone_eq_self](../../../../../mathematics/Topology/GeneralTopology/Dual/Variant3b006de31eb5af1ffcd7e8f23c67d42e996818d743667f5f23ffa1226fba0d17.lean/declarations/convexcone-innerdualcone-of-innerdualcone-eq-self--efba000f7822accf52c94d80.md) | 198 | `result-track:efba000f7822accf52c94d806c26a223cb39d08e4e5252b3f4212e6fb87600eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
