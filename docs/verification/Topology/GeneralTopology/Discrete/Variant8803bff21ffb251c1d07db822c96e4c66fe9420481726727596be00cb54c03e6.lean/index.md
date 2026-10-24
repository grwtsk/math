# Verification target: GRWTSK.Topology.GeneralTopology.Discrete.Variant8803bff21ffb251c1d07db822c96e4c66fe9420481726727596be00cb54c03e6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ab0819eb4d678dc74b06f8bec6bf2c6fbfdd503",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Discrete/Variant8803bff21ffb251c1d07db822c96e4c66fe9420481726727596be00cb54c03e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Discrete/Variant8803bff21ffb251c1d07db822c96e4c66fe9420481726727596be00cb54c03e6.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Discrete/Variant8803bff21ffb251c1d07db822c96e4c66fe9420481726727596be00cb54c03e6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ab0819eb4d678dc74b06f8bec6bf2c6fbfdd503`.

Source path: `GRWTSK/Topology/GeneralTopology/Discrete/Variant8803bff21ffb251c1d07db822c96e4c66fe9420481726727596be00cb54c03e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Discrete/Variant8803bff21ffb251c1d07db822c96e4c66fe9420481726727596be00cb54c03e6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.SuccPred.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.MetrizableUniformity` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Discrete/Variant8803bff21ffb251c1d07db822c96e4c66fe9420481726727596be00cb54c03e6.lean/declarations/instance--d2ebc771f14a537e1b4de567.md) | 31 | `declaration-track:d2ebc771f14a537e1b4de567b2180f3e750bfc257adae1bb5950b41cbde71b38` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Discrete/Variant8803bff21ffb251c1d07db822c96e4c66fe9420481726727596be00cb54c03e6.lean/declarations/instance--4253b998020ba7a079968c11.md) | 36 | `declaration-track:4253b998020ba7a079968c1126d242aa1c47edb7638aa1e130ec3a7d61c0bdf6` |
| 3 | `theorem` | [bot_topologicalSpace_eq_generateFrom_of_pred_succOrder](../../../../../mathematics/Topology/GeneralTopology/Discrete/Variant8803bff21ffb251c1d07db822c96e4c66fe9420481726727596be00cb54c03e6.lean/declarations/bot-topologicalspace-eq-generatefrom-of-pred-succorder--d9b015325e5a2c5a77977fa3.md) | 45 | `result-track:d9b015325e5a2c5a77977fa3b63f73c127f2704d39004af6600c954ac7d2f6f0` |
| 4 | `theorem` | [discreteTopology_iff_orderTopology_of_pred_succ'](../../../../../mathematics/Topology/GeneralTopology/Discrete/Variant8803bff21ffb251c1d07db822c96e4c66fe9420481726727596be00cb54c03e6.lean/declarations/discretetopology-iff-ordertopology-of-pred-succ--5805b7121b014a25a0501553.md) | 60 | `result-track:5805b7121b014a25a05015538b8e1604a0856fb10c337b41f5fa31d78fb2b3ca` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Discrete/Variant8803bff21ffb251c1d07db822c96e4c66fe9420481726727596be00cb54c03e6.lean/declarations/instance--7226c833b2fd82a96568189e.md) | 69 | `declaration-track:7226c833b2fd82a96568189ec5ca978de6774629d45a83b90b80050a4f57a05c` |
| 6 | `theorem` | [LinearOrder.bot_topologicalSpace_eq_generateFrom](../../../../../mathematics/Topology/GeneralTopology/Discrete/Variant8803bff21ffb251c1d07db822c96e4c66fe9420481726727596be00cb54c03e6.lean/declarations/linearorder-bot-topologicalspace-eq-generatefrom--5d634c100b5a4adc5e5313cf.md) | 74 | `result-track:5d634c100b5a4adc5e5313cf8511835d9a836cb6bd146bcc2733dc65e932daaf` |
| 7 | `theorem` | [discreteTopology_iff_orderTopology_of_pred_succ](../../../../../mathematics/Topology/GeneralTopology/Discrete/Variant8803bff21ffb251c1d07db822c96e4c66fe9420481726727596be00cb54c03e6.lean/declarations/discretetopology-iff-ordertopology-of-pred-succ--a5bdfb03e5576e98b7ae27f8.md) | 104 | `result-track:a5bdfb03e5576e98b7ae27f8e5a82eb4221431ac55e5dbe65916956d3ebfbd34` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Discrete/Variant8803bff21ffb251c1d07db822c96e4c66fe9420481726727596be00cb54c03e6.lean/declarations/instance--33b558aa3aa0af34bb6acb63.md) | 113 | `declaration-track:33b558aa3aa0af34bb6acb636a61502dddba26bc4d5d5edcd9511ba326cde971` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Discrete/Variant8803bff21ffb251c1d07db822c96e4c66fe9420481726727596be00cb54c03e6.lean/declarations/instance--4894344fcb4ae6e729199d6b.md) | 118 | `declaration-track:4894344fcb4ae6e729199d6ba9ba582ea6da65a11028c733080f0bcd5732a37a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
