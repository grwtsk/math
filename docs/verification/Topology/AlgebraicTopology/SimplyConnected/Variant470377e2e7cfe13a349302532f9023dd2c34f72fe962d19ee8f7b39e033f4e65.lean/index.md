# Verification target: GRWTSK.Topology.AlgebraicTopology.SimplyConnected.Variant470377e2e7cfe13a349302532f9023dd2c34f72fe962d19ee8f7b39e033f4e65

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd879279e19088d8611f0b57b411e2e545536158",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SimplyConnected/Variant470377e2e7cfe13a349302532f9023dd2c34f72fe962d19ee8f7b39e033f4e65.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/SimplyConnected/Variant470377e2e7cfe13a349302532f9023dd2c34f72fe962d19ee8f7b39e033f4e65.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/SimplyConnected/Variant470377e2e7cfe13a349302532f9023dd2c34f72fe962d19ee8f7b39e033f4e65.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd879279e19088d8611f0b57b411e2e545536158`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SimplyConnected/Variant470377e2e7cfe13a349302532f9023dd2c34f72fe962d19ee8f7b39e033f4e65.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SimplyConnected/Variant470377e2e7cfe13a349302532f9023dd2c34f72fe962d19ee8f7b39e033f4e65.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.FundamentalGroupoid.InducedMaps` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homotopy.Contractible` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.PUnit` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.FundamentalGroupoid.PUnit` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [SimplyConnectedSpace](../../../../../mathematics/Topology/AlgebraicTopology/SimplyConnected/Variant470377e2e7cfe13a349302532f9023dd2c34f72fe962d19ee8f7b39e033f4e65.lean/declarations/simplyconnectedspace--e8153baded14f009ccd3e7f1.md) | 43 | `declaration-track:e8153baded14f009ccd3e7f125ab62484b5963d61521687f79ee7ea636a4ec68` |
| 2 | `theorem` | [simply_connected_def](../../../../../mathematics/Topology/AlgebraicTopology/SimplyConnected/Variant470377e2e7cfe13a349302532f9023dd2c34f72fe962d19ee8f7b39e033f4e65.lean/declarations/simply-connected-def--b588b920b1af4fd8ec4b982f.md) | 47 | `result-track:b588b920b1af4fd8ec4b982fe46a462d8b59fd29f9dcaf765540909ec00a0610` |
| 3 | `theorem` | [simply_connected_iff_unique_homotopic](../../../../../mathematics/Topology/AlgebraicTopology/SimplyConnected/Variant470377e2e7cfe13a349302532f9023dd2c34f72fe962d19ee8f7b39e033f4e65.lean/declarations/simply-connected-iff-unique-homotopic--713f7cba52e326c6043790a9.md) | 52 | `result-track:713f7cba52e326c6043790a93abcb9b01597a55a20356103091dae941865841c` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/SimplyConnected/Variant470377e2e7cfe13a349302532f9023dd2c34f72fe962d19ee8f7b39e033f4e65.lean/declarations/instance--ab9a66e159d456865768a13a.md) | 62 | `declaration-track:ab9a66e159d456865768a13a1458ed3489adad794a290e72a826a63f8f3fabcc` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/SimplyConnected/Variant470377e2e7cfe13a349302532f9023dd2c34f72fe962d19ee8f7b39e033f4e65.lean/declarations/instance--9a7cc124821b8c30c873e95c.md) | 68 | `declaration-track:9a7cc124821b8c30c873e95cdda81b4a52b6e0c4c47ff1abf2951748397b71e5` |
| 6 | `theorem` | [paths_homotopic](../../../../../mathematics/Topology/AlgebraicTopology/SimplyConnected/Variant470377e2e7cfe13a349302532f9023dd2c34f72fe962d19ee8f7b39e033f4e65.lean/declarations/paths-homotopic--33dff55314e89d85d82c1154.md) | 74 | `result-track:33dff55314e89d85d82c115447f007d420648c9f07cacd21b18a6c5b739df498` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/SimplyConnected/Variant470377e2e7cfe13a349302532f9023dd2c34f72fe962d19ee8f7b39e033f4e65.lean/declarations/instance--09c5ce3dd7cea091ef882888.md) | 78 | `declaration-track:09c5ce3dd7cea091ef882888e70f5acd3c99977ae2aafa5f275c7761f18a3f84` |
| 8 | `theorem` | [simply_connected_iff_paths_homotopic](../../../../../mathematics/Topology/AlgebraicTopology/SimplyConnected/Variant470377e2e7cfe13a349302532f9023dd2c34f72fe962d19ee8f7b39e033f4e65.lean/declarations/simply-connected-iff-paths-homotopic--af49322dac1bb4fa339d5e5c.md) | 92 | `result-track:af49322dac1bb4fa339d5e5c6df39633af06cafd6a817d1ef2edd4aed7057f60` |
| 9 | `theorem` | [simply_connected_iff_paths_homotopic'](../../../../../mathematics/Topology/AlgebraicTopology/SimplyConnected/Variant470377e2e7cfe13a349302532f9023dd2c34f72fe962d19ee8f7b39e033f4e65.lean/declarations/simply-connected-iff-paths-homotopic--3f7560f4a2273403bc6f2f5b.md) | 101 | `result-track:3f7560f4a2273403bc6f2f5bed39eb241e8fe5796b86a5292ea2ef39a6355ca0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
