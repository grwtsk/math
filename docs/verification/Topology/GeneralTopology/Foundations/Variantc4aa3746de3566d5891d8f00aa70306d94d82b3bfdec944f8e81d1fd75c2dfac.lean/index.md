# Verification target: GRWTSK.Topology.GeneralTopology.Foundations.Variantc4aa3746de3566d5891d8f00aa70306d94d82b3bfdec944f8e81d1fd75c2dfac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "366537315ac8727a162ce9e2610958e4ad39781b",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Foundations/Variantc4aa3746de3566d5891d8f00aa70306d94d82b3bfdec944f8e81d1fd75c2dfac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Foundations/Variantc4aa3746de3566d5891d8f00aa70306d94d82b3bfdec944f8e81d1fd75c2dfac.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Foundations/Variantc4aa3746de3566d5891d8f00aa70306d94d82b3bfdec944f8e81d1fd75c2dfac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `366537315ac8727a162ce9e2610958e4ad39781b`.

Source path: `GRWTSK/Topology/GeneralTopology/Foundations/Variantc4aa3746de3566d5891d8f00aa70306d94d82b3bfdec944f8e81d1fd75c2dfac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Foundations/Variantc4aa3746de3566d5891d8f00aa70306d94d82b3bfdec944f8e81d1fd75c2dfac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FCRS.Categorical` — import line 6; external provider; requires a separately pinned dependency.
- `FCRS.Foundations` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GraphPrimitive](../../../../../mathematics/Topology/GeneralTopology/Foundations/Variantc4aa3746de3566d5891d8f00aa70306d94d82b3bfdec944f8e81d1fd75c2dfac.lean/declarations/graphprimitive--bdc672350e06dfdc2c18e156.md) | 25 | `declaration-track:bdc672350e06dfdc2c18e1569c8d12ff6720ed43232f5faeb41a32c7a6708cd8` |
| 2 | `structure` | [GraphEdge](../../../../../mathematics/Topology/GeneralTopology/Foundations/Variantc4aa3746de3566d5891d8f00aa70306d94d82b3bfdec944f8e81d1fd75c2dfac.lean/declarations/graphedge--63b149c2e781cb02e4c7e59d.md) | 29 | `declaration-track:63b149c2e781cb02e4c7e59dcc8a5297b26e2fb75b68df3545e70910932d8777` |
| 3 | `structure` | [Factorization](../../../../../mathematics/Topology/GeneralTopology/Foundations/Variantc4aa3746de3566d5891d8f00aa70306d94d82b3bfdec944f8e81d1fd75c2dfac.lean/declarations/factorization--6a138038943adfcab175d661.md) | 33 | `declaration-track:6a138038943adfcab175d66129a601e047e0b8c9648b8011b109d7d142b8a9e4` |
| 4 | `structure` | [ClosedCoordinate](../../../../../mathematics/Topology/GeneralTopology/Foundations/Variantc4aa3746de3566d5891d8f00aa70306d94d82b3bfdec944f8e81d1fd75c2dfac.lean/declarations/closedcoordinate--74551224716e7265e46216f6.md) | 37 | `declaration-track:74551224716e7265e46216f6ad093bec5536f87a0985660e88eebf304ba0a658` |
| 5 | `structure` | [ControlState](../../../../../mathematics/Topology/GeneralTopology/Foundations/Variantc4aa3746de3566d5891d8f00aa70306d94d82b3bfdec944f8e81d1fd75c2dfac.lean/declarations/controlstate--9191857e5de919f6edcd19d0.md) | 41 | `declaration-track:9191857e5de919f6edcd19d081380699d2277c80c132d81dee93ae9bb6b5d0a6` |
| 6 | `structure` | [CarrierPoint2D](../../../../../mathematics/Topology/GeneralTopology/Foundations/Variantc4aa3746de3566d5891d8f00aa70306d94d82b3bfdec944f8e81d1fd75c2dfac.lean/declarations/carrierpoint2d--737ae37a2ab56324c5b309de.md) | 45 | `declaration-track:737ae37a2ab56324c5b309de2768cacf70ae45e21db9056c243ed25797a1bc83` |
| 7 | `structure` | [RefinementStage](../../../../../mathematics/Topology/GeneralTopology/Foundations/Variantc4aa3746de3566d5891d8f00aa70306d94d82b3bfdec944f8e81d1fd75c2dfac.lean/declarations/refinementstage--ffffb6ec6ae8afddcf36309a.md) | 49 | `declaration-track:ffffb6ec6ae8afddcf36309a6f5be6758b1a962eac6698301d55d61d6a11ab6d` |
| 8 | `structure` | [DirectedGraph](../../../../../mathematics/Topology/GeneralTopology/Foundations/Variantc4aa3746de3566d5891d8f00aa70306d94d82b3bfdec944f8e81d1fd75c2dfac.lean/declarations/directedgraph--3e55467cc81e521865497929.md) | 53 | `declaration-track:3e55467cc81e5218654979296d7e09b54a13a7dc635536dd02e346c9cef3012b` |
| 9 | `structure` | [GraphMap](../../../../../mathematics/Topology/GeneralTopology/Foundations/Variantc4aa3746de3566d5891d8f00aa70306d94d82b3bfdec944f8e81d1fd75c2dfac.lean/declarations/graphmap--c63ae69805b120650264ef6d.md) | 59 | `declaration-track:c63ae69805b120650264ef6db03b21a5ce1558c76f6b7eb23fe06d4f7e23b9e7` |
| 10 | `structure` | [ClosedCoordinateRegime](../../../../../mathematics/Topology/GeneralTopology/Foundations/Variantc4aa3746de3566d5891d8f00aa70306d94d82b3bfdec944f8e81d1fd75c2dfac.lean/declarations/closedcoordinateregime--82e5253e7701b030959b290d.md) | 77 | `declaration-track:82e5253e7701b030959b290d908f00d36da2d1c388c7a078fce59272252d1aff` |
| 11 | `structure` | [AffinoidClosedCoordinateRegime](../../../../../mathematics/Topology/GeneralTopology/Foundations/Variantc4aa3746de3566d5891d8f00aa70306d94d82b3bfdec944f8e81d1fd75c2dfac.lean/declarations/affinoidclosedcoordinateregime--0b168111bc4a92d207568d78.md) | 84 | `declaration-track:0b168111bc4a92d207568d7832e1a7efe1eb69c0af31c713af41b566d422a525` |
| 12 | `theorem` | [closedCoordinateRegime_of_ct01](../../../../../mathematics/Topology/GeneralTopology/Foundations/Variantc4aa3746de3566d5891d8f00aa70306d94d82b3bfdec944f8e81d1fd75c2dfac.lean/declarations/closedcoordinateregime-of-ct01--23c9f2a20f743f080fba1fbf.md) | 91 | `result-track:23c9f2a20f743f080fba1fbff43ca1728585525eefa40738a2b6f739e1831a9c` |
| 13 | `theorem` | [affinoidClosedCoordinateRegime_of_ct04](../../../../../mathematics/Topology/GeneralTopology/Foundations/Variantc4aa3746de3566d5891d8f00aa70306d94d82b3bfdec944f8e81d1fd75c2dfac.lean/declarations/affinoidclosedcoordinateregime-of-ct04--540b4c3a736b2c1178226cb0.md) | 103 | `result-track:540b4c3a736b2c1178226cb077f9770dadacce2959f2f710df8f3ff649515387` |
| 14 | `structure` | [Carrier2D](../../../../../mathematics/Topology/GeneralTopology/Foundations/Variantc4aa3746de3566d5891d8f00aa70306d94d82b3bfdec944f8e81d1fd75c2dfac.lean/declarations/carrier2d--eca653522437dd3a0cc6b927.md) | 118 | `declaration-track:eca653522437dd3a0cc6b927e86b2d5611facfba3dd1aee69f3a10e2ab8f4030` |
| 15 | `def` | [CompactCarrier](../../../../../mathematics/Topology/GeneralTopology/Foundations/Variantc4aa3746de3566d5891d8f00aa70306d94d82b3bfdec944f8e81d1fd75c2dfac.lean/declarations/compactcarrier--2b1271d83c997fbf6d31bc15.md) | 123 | `declaration-track:2b1271d83c997fbf6d31bc1557391e021efaf61d07f58db91c563f6d29080b61` |
| 16 | `structure` | [BinaryOperation](../../../../../mathematics/Topology/GeneralTopology/Foundations/Variantc4aa3746de3566d5891d8f00aa70306d94d82b3bfdec944f8e81d1fd75c2dfac.lean/declarations/binaryoperation--00d63d2131dc24bfe614ce7a.md) | 127 | `declaration-track:00d63d2131dc24bfe614ce7a18d9fa2eb64d73943afa380b770cdfd8f0fee2c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
