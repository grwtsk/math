# Verification target: GRWTSK.Topology.GeneralTopology.Discrete.Variant90f400f87847f3c755f0eacd2dc977033a2ca14567c6e373ff7d4a8e79c986e9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "78cd887693d5aa55cc26a253cc4bdb9f4e157f61",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Discrete/Variant90f400f87847f3c755f0eacd2dc977033a2ca14567c6e373ff7d4a8e79c986e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Discrete/Variant90f400f87847f3c755f0eacd2dc977033a2ca14567c6e373ff7d4a8e79c986e9.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Discrete/Variant90f400f87847f3c755f0eacd2dc977033a2ca14567c6e373ff7d4a8e79c986e9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `78cd887693d5aa55cc26a253cc4bdb9f4e157f61`.

Source path: `GRWTSK/Topology/GeneralTopology/Discrete/Variant90f400f87847f3c755f0eacd2dc977033a2ca14567c6e373ff7d4a8e79c986e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Discrete/Variant90f400f87847f3c755f0eacd2dc977033a2ca14567c6e373ff7d4a8e79c986e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.SuccPred.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.MetrizableUniformity` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Discrete/Variant90f400f87847f3c755f0eacd2dc977033a2ca14567c6e373ff7d4a8e79c986e9.lean/declarations/instance--c731fde505be4b8f6b8e681f.md) | 39 | `declaration-track:c731fde505be4b8f6b8e681fbeabc9d5cf2391841832b6b988ba48d1b37074a6` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Discrete/Variant90f400f87847f3c755f0eacd2dc977033a2ca14567c6e373ff7d4a8e79c986e9.lean/declarations/instance--491dbf6b8c7006976cc92650.md) | 44 | `declaration-track:491dbf6b8c7006976cc9265023b71684a55459d9015e7ca8f83f28d448e2bf77` |
| 3 | `theorem` | [bot_topologicalSpace_eq_generateFrom_of_pred_succOrder](../../../../../mathematics/Topology/GeneralTopology/Discrete/Variant90f400f87847f3c755f0eacd2dc977033a2ca14567c6e373ff7d4a8e79c986e9.lean/declarations/bot-topologicalspace-eq-generatefrom-of-pred-succorder--6e4b789d6f6cc50053493803.md) | 53 | `result-track:6e4b789d6f6cc50053493803a347eec7c8d7f28db1577160881ad1ae5b837c6b` |
| 4 | `theorem` | [discreteTopology_iff_orderTopology_of_pred_succ'](../../../../../mathematics/Topology/GeneralTopology/Discrete/Variant90f400f87847f3c755f0eacd2dc977033a2ca14567c6e373ff7d4a8e79c986e9.lean/declarations/discretetopology-iff-ordertopology-of-pred-succ--e8644ebcc2dce0f98f0973df.md) | 68 | `result-track:e8644ebcc2dce0f98f0973df28360c100ca6b8951f801a798d645f48415b70b6` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Discrete/Variant90f400f87847f3c755f0eacd2dc977033a2ca14567c6e373ff7d4a8e79c986e9.lean/declarations/instance--8ea0be1771866ca0db94b939.md) | 77 | `declaration-track:8ea0be1771866ca0db94b9399d4a42e221b957eb2bb99a240f48c25048c007c1` |
| 6 | `theorem` | [LinearOrder.bot_topologicalSpace_eq_generateFrom](../../../../../mathematics/Topology/GeneralTopology/Discrete/Variant90f400f87847f3c755f0eacd2dc977033a2ca14567c6e373ff7d4a8e79c986e9.lean/declarations/linearorder-bot-topologicalspace-eq-generatefrom--ab6ab885c0424c30e8b600cf.md) | 82 | `result-track:ab6ab885c0424c30e8b600cf5dd8f8d1225a345026c236dcc3436cf96d4dd5a6` |
| 7 | `theorem` | [discreteTopology_iff_orderTopology_of_pred_succ](../../../../../mathematics/Topology/GeneralTopology/Discrete/Variant90f400f87847f3c755f0eacd2dc977033a2ca14567c6e373ff7d4a8e79c986e9.lean/declarations/discretetopology-iff-ordertopology-of-pred-succ--d8f643eb75654331e52c18f4.md) | 112 | `result-track:d8f643eb75654331e52c18f4eef5a3c82c8170a94a879fb81fb713f83280c3d8` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Discrete/Variant90f400f87847f3c755f0eacd2dc977033a2ca14567c6e373ff7d4a8e79c986e9.lean/declarations/instance--0325308e890ba2752265329e.md) | 121 | `declaration-track:0325308e890ba2752265329eeecb08262e765c1a3d2cdf48ee4bb855d18717d7` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Discrete/Variant90f400f87847f3c755f0eacd2dc977033a2ca14567c6e373ff7d4a8e79c986e9.lean/declarations/instance--9edf601354244b124b384407.md) | 126 | `declaration-track:9edf601354244b124b384407f1d619a42f5a590c32949fa8865182d9634357a2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
