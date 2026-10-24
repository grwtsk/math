# Verification target: GRWTSK.Topology.GeneralTopology.Certificate.Varianta2b456a29d845db3d6c49a71b2de601e1e0b3c807a56f5da9b6873a1708ab33b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd5b79f454d5107f5b544b04a2fe6bbf78ee0207",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Certificate/Varianta2b456a29d845db3d6c49a71b2de601e1e0b3c807a56f5da9b6873a1708ab33b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Certificate/Varianta2b456a29d845db3d6c49a71b2de601e1e0b3c807a56f5da9b6873a1708ab33b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Certificate/Varianta2b456a29d845db3d6c49a71b2de601e1e0b3c807a56f5da9b6873a1708ab33b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd5b79f454d5107f5b544b04a2fe6bbf78ee0207`.

Source path: `GRWTSK/Topology/GeneralTopology/Certificate/Varianta2b456a29d845db3d6c49a71b2de601e1e0b3c807a56f5da9b6873a1708ab33b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Certificate/Varianta2b456a29d845db3d6c49a71b2de601e1e0b3c807a56f5da9b6873a1708ab33b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemiLocalDefect.WP1.TransportedRange.Definition` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TransportedRangeNesting](../../../../../mathematics/Topology/GeneralTopology/Certificate/Varianta2b456a29d845db3d6c49a71b2de601e1e0b3c807a56f5da9b6873a1708ab33b.lean/declarations/transportedrangenesting--14dc2201473a23e1b75ccf09.md) | 17 | `declaration-track:14dc2201473a23e1b75ccf09d7f1346e30941bf5f5bbcc01242b172a55f22869` |
| 2 | `structure` | [TransportedRangeClosed](../../../../../mathematics/Topology/GeneralTopology/Certificate/Varianta2b456a29d845db3d6c49a71b2de601e1e0b3c807a56f5da9b6873a1708ab33b.lean/declarations/transportedrangeclosed--8a16d815b38bafd8bd9ab264.md) | 27 | `declaration-track:8a16d815b38bafd8bd9ab26451f56959747a7f4fb20d0c2b5e2117b7f2bfb722` |
| 3 | `structure` | [SoninConnectorGeometry](../../../../../mathematics/Topology/GeneralTopology/Certificate/Varianta2b456a29d845db3d6c49a71b2de601e1e0b3c807a56f5da9b6873a1708ab33b.lean/declarations/soninconnectorgeometry--82da6e72d2a826b225ddd03c.md) | 37 | `declaration-track:82da6e72d2a826b225ddd03c72f0ef4d74a1a41482404ba91fde09c61e656f69` |
| 4 | `theorem` | [transportedRange_mono](../../../../../mathematics/Topology/GeneralTopology/Certificate/Varianta2b456a29d845db3d6c49a71b2de601e1e0b3c807a56f5da9b6873a1708ab33b.lean/declarations/transportedrange-mono--78f5138f5c11b9d2cb11f454.md) | 46 | `result-track:78f5138f5c11b9d2cb11f45462ec53bb297f6f2349914d9885417378beeab48a` |
| 5 | `theorem` | [transportedRange_isClosed](../../../../../mathematics/Topology/GeneralTopology/Certificate/Varianta2b456a29d845db3d6c49a71b2de601e1e0b3c807a56f5da9b6873a1708ab33b.lean/declarations/transportedrange-isclosed--a2a11ea069ad4fedf16a1c45.md) | 56 | `result-track:a2a11ea069ad4fedf16a1c4560950abb45c20ce45a5d1aa49b7c6907f48f8757` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
