# Verification target: GRWTSK.Topology.GeneralTopology.DensityTheorem.Variantce5fc6f9ea2c7e0f1176eb93b6e5fbd532e1f3365edba01efbf28b073441d808

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb476d80dc9209d693e528568940840f53a3f182",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/DensityTheorem/Variantce5fc6f9ea2c7e0f1176eb93b6e5fbd532e1f3365edba01efbf28b073441d808.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/DensityTheorem/Variantce5fc6f9ea2c7e0f1176eb93b6e5fbd532e1f3365edba01efbf28b073441d808.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/DensityTheorem/Variantce5fc6f9ea2c7e0f1176eb93b6e5fbd532e1f3365edba01efbf28b073441d808.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb476d80dc9209d693e528568940840f53a3f182`.

Source path: `GRWTSK/Topology/GeneralTopology/DensityTheorem/Variantce5fc6f9ea2c7e0f1176eb93b6e5fbd532e1f3365edba01efbf28b073441d808.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/DensityTheorem/Variantce5fc6f9ea2c7e0f1176eb93b6e5fbd532e1f3365edba01efbf28b073441d808.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Doubling` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Covering.Vitali` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Covering.Differentiation` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [closedBall_mem_vitaliFamily_of_dist_le_mul](../../../../../mathematics/Topology/GeneralTopology/DensityTheorem/Variantce5fc6f9ea2c7e0f1176eb93b6e5fbd532e1f3365edba01efbf28b073441d808.lean/declarations/closedball-mem-vitalifamily-of-dist-le-mul--60199efc96d19022cd0e835c.md) | 76 | `result-track:60199efc96d19022cd0e835c24f60e775c1bfeeef125ef215dcbe6acffddad01` |
| 2 | `theorem` | [tendsto_closedBall_filterAt](../../../../../mathematics/Topology/GeneralTopology/DensityTheorem/Variantce5fc6f9ea2c7e0f1176eb93b6e5fbd532e1f3365edba01efbf28b073441d808.lean/declarations/tendsto-closedball-filterat--7bb09f3218e645cadb1ed6e4.md) | 116 | `result-track:7bb09f3218e645cadb1ed6e4a75aa328365423fdff5c15fc1e8ae7a63a068f68` |
| 3 | `theorem` | [ae_tendsto_measure_inter_div](../../../../../mathematics/Topology/GeneralTopology/DensityTheorem/Variantce5fc6f9ea2c7e0f1176eb93b6e5fbd532e1f3365edba01efbf28b073441d808.lean/declarations/ae-tendsto-measure-inter-div--2ad8348e88294d29c36687aa.md) | 149 | `result-track:2ad8348e88294d29c36687aa204b28d81f50bd089107d358723288ba2efaa9f3` |
| 4 | `theorem` | [ae_tendsto_average_norm_sub](../../../../../mathematics/Topology/GeneralTopology/DensityTheorem/Variantce5fc6f9ea2c7e0f1176eb93b6e5fbd532e1f3365edba01efbf28b073441d808.lean/declarations/ae-tendsto-average-norm-sub--17261cdc209ec0e6905d842f.md) | 158 | `result-track:17261cdc209ec0e6905d842f2cdfdeeac7357549f303b39269a73ef9671c95ae` |
| 5 | `theorem` | [ae_tendsto_average](../../../../../mathematics/Topology/GeneralTopology/DensityTheorem/Variantce5fc6f9ea2c7e0f1176eb93b6e5fbd532e1f3365edba01efbf28b073441d808.lean/declarations/ae-tendsto-average--c3d3f949a3a38bb869948b1d.md) | 167 | `result-track:c3d3f949a3a38bb869948b1d0e38ed5ccdff7a497a0c4e09b19726335ed67fa5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
