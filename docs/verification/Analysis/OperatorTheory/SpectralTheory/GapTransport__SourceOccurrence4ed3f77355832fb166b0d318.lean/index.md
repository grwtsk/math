# Verification target: GRWTSK.Spectral.GapTransport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f34c7760419fbf3b10a7893344baa4a491c8e0ba",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Spectral/GapTransport.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/GapTransport__SourceOccurrence4ed3f77355832fb166b0d318.lean/index.md) · [Full source](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/GapTransport__SourceOccurrence4ed3f77355832fb166b0d318.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f34c7760419fbf3b10a7893344baa4a491c8e0ba`.

Source path: `GRWTSK/Spectral/GapTransport.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Spectral/GapTransport.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LocalPlateauCharacterization](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/GapTransport__SourceOccurrence4ed3f77355832fb166b0d318.lean/declarations/localplateaucharacterization--90b8a3235f011fa818f19f08.md) | 16 | `declaration-track:90b8a3235f011fa818f19f089a10492f208bed307da1f173871f603d79532ddf` |
| 2 | `def` | [OpenLabelGap](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/GapTransport__SourceOccurrence4ed3f77355832fb166b0d318.lean/declarations/openlabelgap--e08c0d823bd17be1c0c904cb.md) | 22 | `declaration-track:e08c0d823bd17be1c0c904cbf94630f9317d59587f2988626d100f2846d42e30` |
| 3 | `theorem` | [plateau_on_Icc](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/GapTransport__SourceOccurrence4ed3f77355832fb166b0d318.lean/declarations/plateau-on-icc--103415f6decbd05aa6ce59e8.md) | 27 | `result-track:103415f6decbd05aa6ce59e888af792f0026c7b54a753df17a95957d14bf74b0` |
| 4 | `theorem` | [gap_of_equal_endpoint_labels](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/GapTransport__SourceOccurrence4ed3f77355832fb166b0d318.lean/declarations/gap-of-equal-endpoint-labels--594993d876cdfaafd6091e38.md) | 37 | `result-track:594993d876cdfaafd6091e38102b6846100ef0f92e48a3de2de82a52c41c2a22` |
| 5 | `structure` | [LabelCoding](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/GapTransport__SourceOccurrence4ed3f77355832fb166b0d318.lean/declarations/labelcoding--4f2a4a1b8c510821da902737.md) | 59 | `declaration-track:4f2a4a1b8c510821da9027378d40098fe45e988d85ead1c95a3044d204d0d72a` |
| 6 | `theorem` | [gap_of_distinct_paths](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/GapTransport__SourceOccurrence4ed3f77355832fb166b0d318.lean/declarations/gap-of-distinct-paths--cf7b1b38130787af7c93a481.md) | 67 | `result-track:cf7b1b38130787af7c93a481b2c4b0e8985bde12e41c174f9e04fc4c979715b0` |
| 7 | `theorem` | [transport_open_label](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/GapTransport__SourceOccurrence4ed3f77355832fb166b0d318.lean/declarations/transport-open-label--380d58ff7b2a10759907a3ba.md) | 87 | `result-track:380d58ff7b2a10759907a3ba99496c2914657fa9e246247d01c8529810c7c892` |
| 8 | `theorem` | [transport_all_labels](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/GapTransport__SourceOccurrence4ed3f77355832fb166b0d318.lean/declarations/transport-all-labels--986d6a5befa6e94df4077e72.md) | 109 | `result-track:986d6a5befa6e94df4077e72ef17dab8e2c0b23ac05861580d242aa1390d67de` |
| 9 | `theorem` | [labelled_point_bounds_of_ids_comparison](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/GapTransport__SourceOccurrence4ed3f77355832fb166b0d318.lean/declarations/labelled-point-bounds-of-ids-comparison--f5ec680763998ed412a463a7.md) | 124 | `result-track:f5ec680763998ed412a463a75a8169989ca30e212f4bb6fa6c2d3ea0f8c1b349` |
| 10 | `theorem` | [gap_width_le_of_ids_comparison](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/GapTransport__SourceOccurrence4ed3f77355832fb166b0d318.lean/declarations/gap-width-le-of-ids-comparison--4eb91d2140e57af259167a69.md) | 137 | `result-track:4eb91d2140e57af259167a69f3ba62809df51913d80d975707cf175278d84b0e` |
| 11 | `theorem` | [continuity_does_not_prevent_zero_collapse](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/GapTransport__SourceOccurrence4ed3f77355832fb166b0d318.lean/declarations/continuity-does-not-prevent-zero-collapse--1535142a7d008b4364454a67.md) | 152 | `result-track:1535142a7d008b4364454a67b8b83d14e21066a900e167258ed9f97eb8eba77c` |
| 12 | `theorem` | [positive_width_has_no_uniform_floor](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/GapTransport__SourceOccurrence4ed3f77355832fb166b0d318.lean/declarations/positive-width-has-no-uniform-floor--b8caa93b3c1b7807e096ff42.md) | 159 | `result-track:b8caa93b3c1b7807e096ff42a864cb71283e5a1f493aa072eb80e55c38cf426c` |
| 13 | `theorem` | [monotone_plateau_alone_is_not_a_gap](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/GapTransport__SourceOccurrence4ed3f77355832fb166b0d318.lean/declarations/monotone-plateau-alone-is-not-a-gap--e57b3e2bf81a68d15a1eca73.md) | 170 | `result-track:e57b3e2bf81a68d15a1eca736ac73fe97dd8f71d78678cea3b31743a765be419` |
| 14 | `theorem` | [collapsed_coding_not_injective](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/GapTransport__SourceOccurrence4ed3f77355832fb166b0d318.lean/declarations/collapsed-coding-not-injective--fb9e672018f3d60da922a917.md) | 178 | `result-track:fb9e672018f3d60da922a917062387373e86657ce904f12cf759da6aecdb10a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
