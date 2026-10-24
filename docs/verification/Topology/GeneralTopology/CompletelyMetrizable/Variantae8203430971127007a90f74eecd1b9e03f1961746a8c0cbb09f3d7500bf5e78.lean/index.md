# Verification target: GRWTSK.Topology.GeneralTopology.CompletelyMetrizable.Variantae8203430971127007a90f74eecd1b9e03f1961746a8c0cbb09f3d7500bf5e78

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03142d34f0325766ea5b019559099dfa548589a2",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CompletelyMetrizable/Variantae8203430971127007a90f74eecd1b9e03f1961746a8c0cbb09f3d7500bf5e78.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CompletelyMetrizable/Variantae8203430971127007a90f74eecd1b9e03f1961746a8c0cbb09f3d7500bf5e78.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CompletelyMetrizable/Variantae8203430971127007a90f74eecd1b9e03f1961746a8c0cbb09f3d7500bf5e78.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03142d34f0325766ea5b019559099dfa548589a2`.

Source path: `GRWTSK/Topology/GeneralTopology/CompletelyMetrizable/Variantae8203430971127007a90f74eecd1b9e03f1961746a8c0cbb09f3d7500bf5e78.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CompletelyMetrizable/Variantae8203430971127007a90f74eecd1b9e03f1961746a8c0cbb09f3d7500bf5e78.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Gluing` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Metrizable.Uniformity` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsCompletelyMetrizableSpace](../../../../../mathematics/Topology/GeneralTopology/CompletelyMetrizable/Variantae8203430971127007a90f74eecd1b9e03f1961746a8c0cbb09f3d7500bf5e78.lean/declarations/iscompletelymetrizablespace--a6d65668f75ba4c052be3ccf.md) | 51 | `declaration-track:a6d65668f75ba4c052be3ccfc31d7b1d789c0f81f3b07fc40596491ab3f555e7` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompletelyMetrizable/Variantae8203430971127007a90f74eecd1b9e03f1961746a8c0cbb09f3d7500bf5e78.lean/declarations/instance--3bba32ad542df604dc3f39c5.md) | 55 | `declaration-track:3bba32ad542df604dc3f39c59fd7c548de313cf1c54c8437d6229116a8a220b4` |
| 3 | `class` | [UpgradedIsCompletelyMetrizableSpace](../../../../../mathematics/Topology/GeneralTopology/CompletelyMetrizable/Variantae8203430971127007a90f74eecd1b9e03f1961746a8c0cbb09f3d7500bf5e78.lean/declarations/upgradediscompletelymetrizablespace--0b9797c51d9a45dcdef6652c.md) | 63 | `declaration-track:0b9797c51d9a45dcdef6652c1863cae62beb29a36b525f03eec6ab9cb1dcf01a` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompletelyMetrizable/Variantae8203430971127007a90f74eecd1b9e03f1961746a8c0cbb09f3d7500bf5e78.lean/declarations/instance--5aeb4a1c33f87fa6ce37dd4f.md) | 66 | `declaration-track:5aeb4a1c33f87fa6ce37dd4f19c1f0c30b6ce8733aa920235e3d3aa583679c22` |
| 5 | `def` | [completelyMetrizableMetric](../../../../../mathematics/Topology/GeneralTopology/CompletelyMetrizable/Variantae8203430971127007a90f74eecd1b9e03f1961746a8c0cbb09f3d7500bf5e78.lean/declarations/completelymetrizablemetric--fb4d46b33abea5a7c12955cf.md) | 73 | `declaration-track:fb4d46b33abea5a7c12955cffdfa65e92b9e6217fc80fe036f6942b78be1b520` |
| 6 | `theorem` | [complete_completelyMetrizableMetric](../../../../../mathematics/Topology/GeneralTopology/CompletelyMetrizable/Variantae8203430971127007a90f74eecd1b9e03f1961746a8c0cbb09f3d7500bf5e78.lean/declarations/complete-completelymetrizablemetric--3785d664772d017343880f52.md) | 77 | `result-track:3785d664772d017343880f523bfbcd85963da55d9df9a206e0606e40c33cf2eb` |
| 7 | `def` | [upgradeIsCompletelyMetrizable](../../../../../mathematics/Topology/GeneralTopology/CompletelyMetrizable/Variantae8203430971127007a90f74eecd1b9e03f1961746a8c0cbb09f3d7500bf5e78.lean/declarations/upgradeiscompletelymetrizable--f748a45df63466d3fcf03753.md) | 86 | `declaration-track:f748a45df63466d3fcf037531521b7ec8399730dd4fe3401d2347f5ecfe4b091` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompletelyMetrizable/Variantae8203430971127007a90f74eecd1b9e03f1961746a8c0cbb09f3d7500bf5e78.lean/declarations/instance--85d9ee90f019be15264e6783.md) | 93 | `declaration-track:85d9ee90f019be15264e678395428e8b43bde1002063356ff1d644d933069ead` |
| 9 | `instance` | [pi_countable](../../../../../mathematics/Topology/GeneralTopology/CompletelyMetrizable/Variantae8203430971127007a90f74eecd1b9e03f1961746a8c0cbb09f3d7500bf5e78.lean/declarations/pi-countable--190d21cc00a2ecf3ef207041.md) | 99 | `declaration-track:190d21cc00a2ecf3ef207041a3f1664d4c3765044cee40b0fbf5204d137846be` |
| 10 | `instance` | [sigma](../../../../../mathematics/Topology/GeneralTopology/CompletelyMetrizable/Variantae8203430971127007a90f74eecd1b9e03f1961746a8c0cbb09f3d7500bf5e78.lean/declarations/sigma--965a7af3fcda5ab73ff562e7.md) | 105 | `declaration-track:965a7af3fcda5ab73ff562e74ac905e0d2dbc1c214541466e7ac4e3f2242b09d` |
| 11 | `instance` | [prod](../../../../../mathematics/Topology/GeneralTopology/CompletelyMetrizable/Variantae8203430971127007a90f74eecd1b9e03f1961746a8c0cbb09f3d7500bf5e78.lean/declarations/prod--357da3aeed9830457d6d06a7.md) | 113 | `declaration-track:357da3aeed9830457d6d06a781afc2d3f4e4699d4b4d653dff4fbb8ac3459295` |
| 12 | `instance` | [sum](../../../../../mathematics/Topology/GeneralTopology/CompletelyMetrizable/Variantae8203430971127007a90f74eecd1b9e03f1961746a8c0cbb09f3d7500bf5e78.lean/declarations/sum--6d10fac7e2ce0fe106a09d23.md) | 120 | `declaration-track:6d10fac7e2ce0fe106a09d23d83f94ed501b67c2083e0ce1d35de29a843dfc69` |
| 13 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.IsCompletelyMetrizableSpace.Variante44793170a621be5acefeef15be6cf63c0f224b50e88e96fe0346df4123a7750.Topology.IsClosedEmbedding.IsCompletelyMetrizableSpace](../../../../../mathematics/Topology/GeneralTopology/CompletelyMetrizable/Variantae8203430971127007a90f74eecd1b9e03f1961746a8c0cbb09f3d7500bf5e78.lean/declarations/root-grwtsk-topology-generaltopology-iscompletelymetrizablespace-variant--ba708721df56e591fc8897d7.md) | 128 | `result-track:ba708721df56e591fc8897d7b30d2b5df09f7d375e05b78817e28a277b9a1907` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompletelyMetrizable/Variantae8203430971127007a90f74eecd1b9e03f1961746a8c0cbb09f3d7500bf5e78.lean/declarations/instance--3d78527fb2ef035fecbfba7a.md) | 139 | `declaration-track:3d78527fb2ef035fecbfba7aba674cbedf06a4ce9b6c80a672021bd51b9e0e11` |
| 15 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.IsCompletelyMetrizableSpace.Variante44793170a621be5acefeef15be6cf63c0f224b50e88e96fe0346df4123a7750.IsClosed.isCompletelyMetrizableSpace](../../../../../mathematics/Topology/GeneralTopology/CompletelyMetrizable/Variantae8203430971127007a90f74eecd1b9e03f1961746a8c0cbb09f3d7500bf5e78.lean/declarations/root-grwtsk-topology-generaltopology-iscompletelymetrizablespace-variant--391aa3776ddc1cfb56deea6d.md) | 173 | `result-track:391aa3776ddc1cfb56deea6db05b43db58362d126fbfcf86c6271704db2d9de0` |
| 16 | `instance` | [univ](../../../../../mathematics/Topology/GeneralTopology/CompletelyMetrizable/Variantae8203430971127007a90f74eecd1b9e03f1961746a8c0cbb09f3d7500bf5e78.lean/declarations/univ--1f0ee42c4e61d4143b12e8eb.md) | 178 | `declaration-track:1f0ee42c4e61d4143b12e8eba51cfcbff84297decf14bdd41793a7d2dada7e0e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
