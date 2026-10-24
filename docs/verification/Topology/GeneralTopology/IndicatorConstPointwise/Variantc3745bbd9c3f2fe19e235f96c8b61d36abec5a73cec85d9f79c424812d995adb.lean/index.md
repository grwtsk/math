# Verification target: GRWTSK.Topology.GeneralTopology.IndicatorConstPointwise.Variantc3745bbd9c3f2fe19e235f96c8b61d36abec5a73cec85d9f79c424812d995adb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ef0295c04d5702b638e35e2f526bf281926de95",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/IndicatorConstPointwise/Variantc3745bbd9c3f2fe19e235f96c8b61d36abec5a73cec85d9f79c424812d995adb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/IndicatorConstPointwise/Variantc3745bbd9c3f2fe19e235f96c8b61d36abec5a73cec85d9f79c424812d995adb.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/IndicatorConstPointwise/Variantc3745bbd9c3f2fe19e235f96c8b61d36abec5a73cec85d9f79c424812d995adb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ef0295c04d5702b638e35e2f526bf281926de95`.

Source path: `GRWTSK/Topology/GeneralTopology/IndicatorConstPointwise/Variantc3745bbd9c3f2fe19e235f96c8b61d36abec5a73cec85d9f79c424812d995adb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/IndicatorConstPointwise/Variantc3745bbd9c3f2fe19e235f96c8b61d36abec5a73cec85d9f79c424812d995adb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Indicator` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [tendsto_ite](../../../../../mathematics/Topology/GeneralTopology/IndicatorConstPointwise/Variantc3745bbd9c3f2fe19e235f96c8b61d36abec5a73cec85d9f79c424812d995adb.lean/declarations/tendsto-ite--2545480c6b2d8487f022717b.md) | 39 | `result-track:2545480c6b2d8487f022717b40e0dbeecc522d83c62ea973a55d0b38ed5a239a` |
| 2 | `lemma` | [tendsto_indicator_const_apply_iff_eventually'](../../../../../mathematics/Topology/GeneralTopology/IndicatorConstPointwise/Variantc3745bbd9c3f2fe19e235f96c8b61d36abec5a73cec85d9f79c424812d995adb.lean/declarations/tendsto-indicator-const-apply-iff-eventually--f7a294b11db97e6a5aa00d46.md) | 69 | `result-track:f7a294b11db97e6a5aa00d461ea2337fdd9d6518e0966058e39c58df52a80771` |
| 3 | `lemma` | [tendsto_indicator_const_iff_forall_eventually'](../../../../../mathematics/Topology/GeneralTopology/IndicatorConstPointwise/Variantc3745bbd9c3f2fe19e235f96c8b61d36abec5a73cec85d9f79c424812d995adb.lean/declarations/tendsto-indicator-const-iff-forall-eventually--dcb6f6b7ed575216f7276fc5.md) | 83 | `result-track:dcb6f6b7ed575216f7276fc53dd92cc4b84b01517bc5be7fa8fa25e1e8e590a6` |
| 4 | `lemma` | [tendsto_indicator_const_apply_iff_eventually](../../../../../mathematics/Topology/GeneralTopology/IndicatorConstPointwise/Variantc3745bbd9c3f2fe19e235f96c8b61d36abec5a73cec85d9f79c424812d995adb.lean/declarations/tendsto-indicator-const-apply-iff-eventually--50b28900c74076265be7eb3d.md) | 93 | `result-track:50b28900c74076265be7eb3d0690748744bcf3e265bdaad27e342ce635a297b7` |
| 5 | `lemma` | [tendsto_indicator_const_iff_forall_eventually](../../../../../mathematics/Topology/GeneralTopology/IndicatorConstPointwise/Variantc3745bbd9c3f2fe19e235f96c8b61d36abec5a73cec85d9f79c424812d995adb.lean/declarations/tendsto-indicator-const-iff-forall-eventually--e489066825cd8e2f02e5d7ce.md) | 103 | `result-track:e489066825cd8e2f02e5d7ce0d9b29d4e447c12315645b6b02fdc8df382ea04c` |
| 6 | `lemma` | [tendsto_indicator_const_iff_tendsto_pi_pure'](../../../../../mathematics/Topology/GeneralTopology/IndicatorConstPointwise/Variantc3745bbd9c3f2fe19e235f96c8b61d36abec5a73cec85d9f79c424812d995adb.lean/declarations/tendsto-indicator-const-iff-tendsto-pi-pure--62de9859356a680b5c5b88aa.md) | 110 | `result-track:62de9859356a680b5c5b88aafe787f898f83895b4ae2af9b7df4461c26daf450` |
| 7 | `lemma` | [tendsto_indicator_const_iff_tendsto_pi_pure](../../../../../mathematics/Topology/GeneralTopology/IndicatorConstPointwise/Variantc3745bbd9c3f2fe19e235f96c8b61d36abec5a73cec85d9f79c424812d995adb.lean/declarations/tendsto-indicator-const-iff-tendsto-pi-pure--e91daa8baa47f6efbbbe2f5c.md) | 118 | `result-track:e91daa8baa47f6efbbbe2f5ce1726897194795e9f195d9d1c81e3070e7442239` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
