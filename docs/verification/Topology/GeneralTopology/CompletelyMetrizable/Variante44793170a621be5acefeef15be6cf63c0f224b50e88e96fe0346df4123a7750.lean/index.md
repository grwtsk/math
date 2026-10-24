# Verification target: GRWTSK.Topology.GeneralTopology.CompletelyMetrizable.Variante44793170a621be5acefeef15be6cf63c0f224b50e88e96fe0346df4123a7750

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "99a30458cf68902882ed5a7d7ee45b3f1783139a",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CompletelyMetrizable/Variante44793170a621be5acefeef15be6cf63c0f224b50e88e96fe0346df4123a7750.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CompletelyMetrizable/Variante44793170a621be5acefeef15be6cf63c0f224b50e88e96fe0346df4123a7750.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CompletelyMetrizable/Variante44793170a621be5acefeef15be6cf63c0f224b50e88e96fe0346df4123a7750.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `99a30458cf68902882ed5a7d7ee45b3f1783139a`.

Source path: `GRWTSK/Topology/GeneralTopology/CompletelyMetrizable/Variante44793170a621be5acefeef15be6cf63c0f224b50e88e96fe0346df4123a7750.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CompletelyMetrizable/Variante44793170a621be5acefeef15be6cf63c0f224b50e88e96fe0346df4123a7750.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Gluing` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Metrizable.Uniformity` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsCompletelyMetrizableSpace](../../../../../mathematics/Topology/GeneralTopology/CompletelyMetrizable/Variante44793170a621be5acefeef15be6cf63c0f224b50e88e96fe0346df4123a7750.lean/declarations/iscompletelymetrizablespace--ae78ecb824fd1877aaafbb10.md) | 43 | `declaration-track:ae78ecb824fd1877aaafbb106f620e1d3f2780f50083dd817efc75019b0a64aa` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompletelyMetrizable/Variante44793170a621be5acefeef15be6cf63c0f224b50e88e96fe0346df4123a7750.lean/declarations/instance--7ebc51094d4780648d37d3d4.md) | 47 | `declaration-track:7ebc51094d4780648d37d3d4b374667fe0798572fbe0de951a8741d1eb4ca347` |
| 3 | `class` | [UpgradedIsCompletelyMetrizableSpace](../../../../../mathematics/Topology/GeneralTopology/CompletelyMetrizable/Variante44793170a621be5acefeef15be6cf63c0f224b50e88e96fe0346df4123a7750.lean/declarations/upgradediscompletelymetrizablespace--ccf3e157350fa5ea880acb35.md) | 55 | `declaration-track:ccf3e157350fa5ea880acb359b8ca364415da50ee14afd61261006d99b5e87a6` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompletelyMetrizable/Variante44793170a621be5acefeef15be6cf63c0f224b50e88e96fe0346df4123a7750.lean/declarations/instance--d24acab35d422e21b89d5acf.md) | 58 | `declaration-track:d24acab35d422e21b89d5acffcb41edf342a01ba1f32190dbdc2b8dc8c7f92c6` |
| 5 | `def` | [completelyMetrizableMetric](../../../../../mathematics/Topology/GeneralTopology/CompletelyMetrizable/Variante44793170a621be5acefeef15be6cf63c0f224b50e88e96fe0346df4123a7750.lean/declarations/completelymetrizablemetric--d2f25ac5f18df244e97d72ce.md) | 65 | `declaration-track:d2f25ac5f18df244e97d72ce9035e27925fd9edb416df2ea60a8e54b28ba7306` |
| 6 | `theorem` | [complete_completelyMetrizableMetric](../../../../../mathematics/Topology/GeneralTopology/CompletelyMetrizable/Variante44793170a621be5acefeef15be6cf63c0f224b50e88e96fe0346df4123a7750.lean/declarations/complete-completelymetrizablemetric--f27007e0bc05f45c01b95367.md) | 69 | `result-track:f27007e0bc05f45c01b95367d2e8d6c1baf689a9d765ecea8eeefcc8ad289e07` |
| 7 | `def` | [upgradeIsCompletelyMetrizable](../../../../../mathematics/Topology/GeneralTopology/CompletelyMetrizable/Variante44793170a621be5acefeef15be6cf63c0f224b50e88e96fe0346df4123a7750.lean/declarations/upgradeiscompletelymetrizable--65da014d50b316e434c8c91e.md) | 78 | `declaration-track:65da014d50b316e434c8c91e452ec82f3ee91e72fe1219a73d5c3fa5844c8845` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompletelyMetrizable/Variante44793170a621be5acefeef15be6cf63c0f224b50e88e96fe0346df4123a7750.lean/declarations/instance--18788fb28fedd61316919f48.md) | 85 | `declaration-track:18788fb28fedd61316919f48b5dd1e12f7f3459c287cb6fa131ad3412856c01a` |
| 9 | `instance` | [pi_countable](../../../../../mathematics/Topology/GeneralTopology/CompletelyMetrizable/Variante44793170a621be5acefeef15be6cf63c0f224b50e88e96fe0346df4123a7750.lean/declarations/pi-countable--c6c74ffc8678683f9922785b.md) | 91 | `declaration-track:c6c74ffc8678683f9922785b2a61b96e2aa2ad6a272f6aa93d0fa7eb7cf80e53` |
| 10 | `instance` | [sigma](../../../../../mathematics/Topology/GeneralTopology/CompletelyMetrizable/Variante44793170a621be5acefeef15be6cf63c0f224b50e88e96fe0346df4123a7750.lean/declarations/sigma--8dbbf0d6aa2070350140e0c9.md) | 97 | `declaration-track:8dbbf0d6aa2070350140e0c9b67ca74309c7e7a56daa30098531e808d1598c10` |
| 11 | `instance` | [prod](../../../../../mathematics/Topology/GeneralTopology/CompletelyMetrizable/Variante44793170a621be5acefeef15be6cf63c0f224b50e88e96fe0346df4123a7750.lean/declarations/prod--735be87c45a0dac48249cdc3.md) | 105 | `declaration-track:735be87c45a0dac48249cdc3c6b125c0a028faf25f0922d51f2dd83c9b8ffc92` |
| 12 | `instance` | [sum](../../../../../mathematics/Topology/GeneralTopology/CompletelyMetrizable/Variante44793170a621be5acefeef15be6cf63c0f224b50e88e96fe0346df4123a7750.lean/declarations/sum--4d968c0ebb0ad919e5328105.md) | 112 | `declaration-track:4d968c0ebb0ad919e5328105c0d7c30b05ba4979e5b7108daf505b5b6952c0c9` |
| 13 | `theorem` | [_root_.Topology.IsClosedEmbedding.IsCompletelyMetrizableSpace](../../../../../mathematics/Topology/GeneralTopology/CompletelyMetrizable/Variante44793170a621be5acefeef15be6cf63c0f224b50e88e96fe0346df4123a7750.lean/declarations/root-topology-isclosedembedding-iscompletelymetrizablespace--2d171a46b47857ddb8106a54.md) | 120 | `result-track:2d171a46b47857ddb8106a5405a47159782c34c4e255d2de60e21ff1da94c5f6` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompletelyMetrizable/Variante44793170a621be5acefeef15be6cf63c0f224b50e88e96fe0346df4123a7750.lean/declarations/instance--65c7415388a26eda812a6bfa.md) | 131 | `declaration-track:65c7415388a26eda812a6bface3d1363151ea87452fda599eb1f33b17ca4d35b` |
| 15 | `theorem` | [_root_.IsClosed.isCompletelyMetrizableSpace](../../../../../mathematics/Topology/GeneralTopology/CompletelyMetrizable/Variante44793170a621be5acefeef15be6cf63c0f224b50e88e96fe0346df4123a7750.lean/declarations/root-isclosed-iscompletelymetrizablespace--929d398b7a1f96ac28376559.md) | 165 | `result-track:929d398b7a1f96ac2837655992fbf153a10c4a98cf52e92dbb2a29343304102b` |
| 16 | `instance` | [univ](../../../../../mathematics/Topology/GeneralTopology/CompletelyMetrizable/Variante44793170a621be5acefeef15be6cf63c0f224b50e88e96fe0346df4123a7750.lean/declarations/univ--5bdae339752666731d384c88.md) | 170 | `declaration-track:5bdae339752666731d384c8817c4aef6bdac422d2866b17a9eb17e21fd199312` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
