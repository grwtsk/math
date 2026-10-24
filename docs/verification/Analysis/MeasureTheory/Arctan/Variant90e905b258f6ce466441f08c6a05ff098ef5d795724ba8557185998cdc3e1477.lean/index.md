# Verification target: GRWTSK.Analysis.MeasureTheory.Arctan.Variant90e905b258f6ce466441f08c6a05ff098ef5d795724ba8557185998cdc3e1477

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7dff35e376ae6ef7324e4401737a7c268cbaca39",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Arctan/Variant90e905b258f6ce466441f08c6a05ff098ef5d795724ba8557185998cdc3e1477.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Arctan/Variant90e905b258f6ce466441f08c6a05ff098ef5d795724ba8557185998cdc3e1477.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Arctan/Variant90e905b258f6ce466441f08c6a05ff098ef5d795724ba8557185998cdc3e1477.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7dff35e376ae6ef7324e4401737a7c268cbaca39`.

Source path: `GRWTSK/Analysis/MeasureTheory/Arctan/Variant90e905b258f6ce466441f08c6a05ff098ef5d795724ba8557185998cdc3e1477.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Arctan/Variant90e905b258f6ce466441f08c6a05ff098ef5d795724ba8557185998cdc3e1477.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Arctan` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [measurable_arctan](../../../../../mathematics/Analysis/MeasureTheory/Arctan/Variant90e905b258f6ce466441f08c6a05ff098ef5d795724ba8557185998cdc3e1477.lean/declarations/measurable-arctan--286040d15ba4e82f95725be7.md) | 26 | `result-track:286040d15ba4e82f95725be787b65b85c276467d77b40eebe62ecfcbd8b0f5a5` |
| 2 | `theorem` | [Measurable.arctan](../../../../../mathematics/Analysis/MeasureTheory/Arctan/Variant90e905b258f6ce466441f08c6a05ff098ef5d795724ba8557185998cdc3e1477.lean/declarations/measurable-arctan--bce3328cb90362bbcc81274d.md) | 38 | `result-track:bce3328cb90362bbcc81274dc2cefc897c2b0d2422c0ddd0793acc257faf8d82` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
