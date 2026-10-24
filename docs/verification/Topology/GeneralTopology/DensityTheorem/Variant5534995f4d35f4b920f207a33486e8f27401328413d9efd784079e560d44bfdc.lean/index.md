# Verification target: GRWTSK.Topology.GeneralTopology.DensityTheorem.Variant5534995f4d35f4b920f207a33486e8f27401328413d9efd784079e560d44bfdc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c0659594eeb745d08bdacc4a3f18e800ef4b93e",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/DensityTheorem/Variant5534995f4d35f4b920f207a33486e8f27401328413d9efd784079e560d44bfdc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/DensityTheorem/Variant5534995f4d35f4b920f207a33486e8f27401328413d9efd784079e560d44bfdc.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/DensityTheorem/Variant5534995f4d35f4b920f207a33486e8f27401328413d9efd784079e560d44bfdc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c0659594eeb745d08bdacc4a3f18e800ef4b93e`.

Source path: `GRWTSK/Topology/GeneralTopology/DensityTheorem/Variant5534995f4d35f4b920f207a33486e8f27401328413d9efd784079e560d44bfdc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/DensityTheorem/Variant5534995f4d35f4b920f207a33486e8f27401328413d9efd784079e560d44bfdc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Doubling` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Covering.Vitali` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Covering.Differentiation` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [closedBall_mem_vitaliFamily_of_dist_le_mul](../../../../../mathematics/Topology/GeneralTopology/DensityTheorem/Variant5534995f4d35f4b920f207a33486e8f27401328413d9efd784079e560d44bfdc.lean/declarations/closedball-mem-vitalifamily-of-dist-le-mul--ebad054386b9c86f6a0ebef5.md) | 68 | `result-track:ebad054386b9c86f6a0ebef58a232cf599580c655e1d5efec178376d3e1496a9` |
| 2 | `theorem` | [tendsto_closedBall_filterAt](../../../../../mathematics/Topology/GeneralTopology/DensityTheorem/Variant5534995f4d35f4b920f207a33486e8f27401328413d9efd784079e560d44bfdc.lean/declarations/tendsto-closedball-filterat--c2d9592715f513f6f0ae5b2c.md) | 108 | `result-track:c2d9592715f513f6f0ae5b2cf183b4db5535dcf5e7150e7dcc86c9396cf09908` |
| 3 | `theorem` | [ae_tendsto_measure_inter_div](../../../../../mathematics/Topology/GeneralTopology/DensityTheorem/Variant5534995f4d35f4b920f207a33486e8f27401328413d9efd784079e560d44bfdc.lean/declarations/ae-tendsto-measure-inter-div--86c73fbab2404e85f4328d3b.md) | 141 | `result-track:86c73fbab2404e85f4328d3bbefc3b6f1a5658ffad5cd31fc26cef6791444c2b` |
| 4 | `theorem` | [ae_tendsto_average_norm_sub](../../../../../mathematics/Topology/GeneralTopology/DensityTheorem/Variant5534995f4d35f4b920f207a33486e8f27401328413d9efd784079e560d44bfdc.lean/declarations/ae-tendsto-average-norm-sub--7201d326fad389972fe7f91b.md) | 150 | `result-track:7201d326fad389972fe7f91b16794f28145f13ea7437e0a4eee19bcdcabacd6b` |
| 5 | `theorem` | [ae_tendsto_average](../../../../../mathematics/Topology/GeneralTopology/DensityTheorem/Variant5534995f4d35f4b920f207a33486e8f27401328413d9efd784079e560d44bfdc.lean/declarations/ae-tendsto-average--d94e31a664820632adccb798.md) | 159 | `result-track:d94e31a664820632adccb7986c46959efb14d92b7fe6d81902523f4ae96d9e9d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
