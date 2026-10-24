# Verification target: GRWTSK.Analysis.MeasureTheory.AEMeasurableOrder.Variant2b37165360e87ae41120b7e0f46f10039b758ad335b09373d85292d14541a04d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "36c55d5276c4411b9bea7de6f338c4975ad2945a",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/AEMeasurableOrder/Variant2b37165360e87ae41120b7e0f46f10039b758ad335b09373d85292d14541a04d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableOrder/Variant2b37165360e87ae41120b7e0f46f10039b758ad335b09373d85292d14541a04d.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableOrder/Variant2b37165360e87ae41120b7e0f46f10039b758ad335b09373d85292d14541a04d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `36c55d5276c4411b9bea7de6f338c4975ad2945a`.

Source path: `GRWTSK/Analysis/MeasureTheory/AEMeasurableOrder/Variant2b37165360e87ae41120b7e0f46f10039b758ad335b09373d85292d14541a04d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/AEMeasurableOrder/Variant2b37165360e87ae41120b7e0f46f10039b758ad335b09373d85292d14541a04d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.BorelSpace.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [MeasureTheory.aemeasurable_of_exist_almost_disjoint_supersets](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableOrder/Variant2b37165360e87ae41120b7e0f46f10039b758ad335b09373d85292d14541a04d.lean/declarations/measuretheory-aemeasurable-of-exist-almost-disjoint-supersets--93986ad45e707e770899e6d8.md) | 41 | `result-track:93986ad45e707e770899e6d8ef609095cb08505f70bd1e474ced367cff888118` |
| 2 | `theorem` | [ENNReal.aemeasurable_of_exist_almost_disjoint_supersets](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableOrder/Variant2b37165360e87ae41120b7e0f46f10039b758ad335b09373d85292d14541a04d.lean/declarations/ennreal-aemeasurable-of-exist-almost-disjoint-supersets--95551d464909477246b967cf.md) | 121 | `result-track:95551d464909477246b967cf33cb80d78a082db357a2a6efa5f2f617226d2ca3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
