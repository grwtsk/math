# Verification target: GRWTSK.Analysis.MeasureTheory.Measure.Varianta4f46c15d683e8d9aad02b4f7a395a8aeea1dcba069bc3f210fad4f941a4f2dd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5cab6aec8eb5eab425dfeb350202649f17d89fdd",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Measure/Varianta4f46c15d683e8d9aad02b4f7a395a8aeea1dcba069bc3f210fad4f941a4f2dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Measure/Varianta4f46c15d683e8d9aad02b4f7a395a8aeea1dcba069bc3f210fad4f941a4f2dd.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Measure/Varianta4f46c15d683e8d9aad02b4f7a395a8aeea1dcba069bc3f210fad4f941a4f2dd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5cab6aec8eb5eab425dfeb350202649f17d89fdd`.

Source path: `GRWTSK/Analysis/MeasureTheory/Measure/Varianta4f46c15d683e8d9aad02b4f7a395a8aeea1dcba069bc3f210fad4f941a4f2dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Measure/Varianta4f46c15d683e8d9aad02b4f7a395a8aeea1dcba069bc3f210fad4f941a4f2dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Affine.AddTorsorBases` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Convex` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.EqHaar` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [addHaar_frontier](../../../../../mathematics/Analysis/MeasureTheory/Measure/Varianta4f46c15d683e8d9aad02b4f7a395a8aeea1dcba069bc3f210fad4f941a4f2dd.lean/declarations/addhaar-frontier--b9946be436bc89ad9c7d1926.md) | 39 | `result-track:b9946be436bc89ad9c7d1926d53bfc18531017f23c04a410782a4f75a86b6d88` |
| 2 | `theorem` | [nullMeasurableSet](../../../../../mathematics/Analysis/MeasureTheory/Measure/Varianta4f46c15d683e8d9aad02b4f7a395a8aeea1dcba069bc3f210fad4f941a4f2dd.lean/declarations/nullmeasurableset--7a2860ffa81ba02ddee95856.md) | 90 | `result-track:7a2860ffa81ba02ddee95856b18edc3992f3e453272ab387c4eba12213190f24` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
