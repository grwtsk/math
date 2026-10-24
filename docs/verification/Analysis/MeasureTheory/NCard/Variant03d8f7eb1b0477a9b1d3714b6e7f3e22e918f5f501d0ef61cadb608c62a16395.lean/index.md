# Verification target: GRWTSK.Analysis.MeasureTheory.NCard.Variant03d8f7eb1b0477a9b1d3714b6e7f3e22e918f5f501d0ef61cadb608c62a16395

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff79bbd7b46ae6526af7604d8ee2a37337f2ba4f",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/NCard/Variant03d8f7eb1b0477a9b1d3714b6e7f3e22e918f5f501d0ef61cadb608c62a16395.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/NCard/Variant03d8f7eb1b0477a9b1d3714b6e7f3e22e918f5f501d0ef61cadb608c62a16395.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/NCard/Variant03d8f7eb1b0477a9b1d3714b6e7f3e22e918f5f501d0ef61cadb608c62a16395.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff79bbd7b46ae6526af7604d8ee2a37337f2ba4f`.

Source path: `GRWTSK/Analysis/MeasureTheory/NCard/Variant03d8f7eb1b0477a9b1d3714b6e7f3e22e918f5f501d0ef61cadb608c62a16395.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/NCard/Variant03d8f7eb1b0477a9b1d3714b6e7f3e22e918f5f501d0ef61cadb608c62a16395.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Card` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.MeasurableSpace.Constructions` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [measurable_encard](../../../../../mathematics/Analysis/MeasureTheory/NCard/Variant03d8f7eb1b0477a9b1d3714b6e7f3e22e918f5f501d0ef61cadb608c62a16395.lean/declarations/measurable-encard--6d037d3dbd33a2185a6e7a19.md) | 29 | `result-track:6d037d3dbd33a2185a6e7a190686c6ecf4b8b753b5570f092f4bfc8497ef80d0` |
| 2 | `theorem` | [measurable_ncard](../../../../../mathematics/Analysis/MeasureTheory/NCard/Variant03d8f7eb1b0477a9b1d3714b6e7f3e22e918f5f501d0ef61cadb608c62a16395.lean/declarations/measurable-ncard--f6fd11d248937ed22f5fc842.md) | 34 | `result-track:f6fd11d248937ed22f5fc842335ec487fba1c1fe36f726aefab03fe7b17d9cd2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
