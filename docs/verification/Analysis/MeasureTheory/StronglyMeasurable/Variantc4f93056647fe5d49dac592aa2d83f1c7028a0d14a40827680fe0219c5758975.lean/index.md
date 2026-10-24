# Verification target: GRWTSK.Analysis.MeasureTheory.StronglyMeasurable.Variantc4f93056647fe5d49dac592aa2d83f1c7028a0d14a40827680fe0219c5758975

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2fc0e4ca9898fd404e1fe71b65e172cd567b404e",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/StronglyMeasurable/Variantc4f93056647fe5d49dac592aa2d83f1c7028a0d14a40827680fe0219c5758975.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/StronglyMeasurable/Variantc4f93056647fe5d49dac592aa2d83f1c7028a0d14a40827680fe0219c5758975.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/StronglyMeasurable/Variantc4f93056647fe5d49dac592aa2d83f1c7028a0d14a40827680fe0219c5758975.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2fc0e4ca9898fd404e1fe71b65e172cd567b404e`.

Source path: `GRWTSK/Analysis/MeasureTheory/StronglyMeasurable/Variantc4f93056647fe5d49dac592aa2d83f1c7028a0d14a40827680fe0219c5758975.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/StronglyMeasurable/Variantc4f93056647fe5d49dac592aa2d83f1c7028a0d14a40827680fe0219c5758975.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.Polish.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.StronglyMeasurable.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [measurableSet_exists_tendsto](../../../../../mathematics/Analysis/MeasureTheory/StronglyMeasurable/Variantc4f93056647fe5d49dac592aa2d83f1c7028a0d14a40827680fe0219c5758975.lean/declarations/measurableset-exists-tendsto--4fcb5a34cf0ffb0494a8398b.md) | 39 | `result-track:4fcb5a34cf0ffb0494a8398b7c6e5fc712a074a3247275b4b55e8b16b23996c4` |
| 2 | `theorem` | [limUnder](../../../../../mathematics/Analysis/MeasureTheory/StronglyMeasurable/Variantc4f93056647fe5d49dac592aa2d83f1c7028a0d14a40827680fe0219c5758975.lean/declarations/limunder--a8dd109620150d68ebaebe70.md) | 57 | `result-track:a8dd109620150d68ebaebe705e4022856add352d8ec881c4f0a5154415db664f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
