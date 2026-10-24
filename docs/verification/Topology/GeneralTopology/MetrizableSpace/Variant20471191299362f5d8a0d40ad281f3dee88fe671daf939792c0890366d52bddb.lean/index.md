# Verification target: GRWTSK.Topology.GeneralTopology.MetrizableSpace.Variant20471191299362f5d8a0d40ad281f3dee88fe671daf939792c0890366d52bddb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2979799e61a3fb4d4c8fdd325a072e88025fcdc",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/MetrizableSpace/Variant20471191299362f5d8a0d40ad281f3dee88fe671daf939792c0890366d52bddb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/MetrizableSpace/Variant20471191299362f5d8a0d40ad281f3dee88fe671daf939792c0890366d52bddb.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/MetrizableSpace/Variant20471191299362f5d8a0d40ad281f3dee88fe671daf939792c0890366d52bddb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2979799e61a3fb4d4c8fdd325a072e88025fcdc`.

Source path: `GRWTSK/Topology/GeneralTopology/MetrizableSpace/Variant20471191299362f5d8a0d40ad281f3dee88fe671daf939792c0890366d52bddb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/MetrizableSpace/Variant20471191299362f5d8a0d40ad281f3dee88fe671daf939792c0890366d52bddb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.HausdorffDistance` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Metrizable.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.GDelta` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/MetrizableSpace/Variant20471191299362f5d8a0d40ad281f3dee88fe671daf939792c0890366d52bddb.lean/declarations/instance--7437acae007bda111547aa1e.md) | 25 | `declaration-track:7437acae007bda111547aa1e1caa914b5ce2db7b08809b49aa53eefe93b80bc2` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/MetrizableSpace/Variant20471191299362f5d8a0d40ad281f3dee88fe671daf939792c0890366d52bddb.lean/declarations/instance--2e237beaa6f85a2b5115159a.md) | 41 | `declaration-track:2e237beaa6f85a2b5115159a3c8629f4c221cf3f041944df48768d956801e2e3` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/MetrizableSpace/Variant20471191299362f5d8a0d40ad281f3dee88fe671daf939792c0890366d52bddb.lean/declarations/instance--0d16239364644d7f4f9dd95b.md) | 49 | `declaration-track:0d16239364644d7f4f9dd95bc5f42337c09024ce0b4ee618ceb4ce24014ccc22` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/MetrizableSpace/Variant20471191299362f5d8a0d40ad281f3dee88fe671daf939792c0890366d52bddb.lean/declarations/instance--ef12ef682b338029fd789626.md) | 51 | `declaration-track:ef12ef682b338029fd78962683fc5e5ac35b8ba29f327e1ac2e8614ddeeac108` |
| 5 | `theorem` | [IsGδ.setOf_continuousAt](../../../../../mathematics/Topology/GeneralTopology/MetrizableSpace/Variant20471191299362f5d8a0d40ad281f3dee88fe671daf939792c0890366d52bddb.lean/declarations/isg-setof-continuousat--b4aa3dfd039137476176ae44.md) | 58 | `result-track:b4aa3dfd039137476176ae44e149455ecc588f48bf5afd190626b5aa051ac15c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
