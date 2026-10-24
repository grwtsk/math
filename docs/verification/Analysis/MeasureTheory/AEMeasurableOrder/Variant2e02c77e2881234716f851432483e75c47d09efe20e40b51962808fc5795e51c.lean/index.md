# Verification target: GRWTSK.Analysis.MeasureTheory.AEMeasurableOrder.Variant2e02c77e2881234716f851432483e75c47d09efe20e40b51962808fc5795e51c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "53772c2206aecb4f5b7d55e2f61003c911f1688f",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/AEMeasurableOrder/Variant2e02c77e2881234716f851432483e75c47d09efe20e40b51962808fc5795e51c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableOrder/Variant2e02c77e2881234716f851432483e75c47d09efe20e40b51962808fc5795e51c.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableOrder/Variant2e02c77e2881234716f851432483e75c47d09efe20e40b51962808fc5795e51c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `53772c2206aecb4f5b7d55e2f61003c911f1688f`.

Source path: `GRWTSK/Analysis/MeasureTheory/AEMeasurableOrder/Variant2e02c77e2881234716f851432483e75c47d09efe20e40b51962808fc5795e51c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/AEMeasurableOrder/Variant2e02c77e2881234716f851432483e75c47d09efe20e40b51962808fc5795e51c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.BorelSpace.Order` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [MeasureTheory.aemeasurable_of_exist_almost_disjoint_supersets](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableOrder/Variant2e02c77e2881234716f851432483e75c47d09efe20e40b51962808fc5795e51c.lean/declarations/measuretheory-aemeasurable-of-exist-almost-disjoint-supersets--5f8ed74ec2a8cec61357b876.md) | 39 | `result-track:5f8ed74ec2a8cec61357b876b28652fb8dc0de09b9268ccd9c891efdda20df5f` |
| 2 | `theorem` | [ENNReal.aemeasurable_of_exist_almost_disjoint_supersets](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableOrder/Variant2e02c77e2881234716f851432483e75c47d09efe20e40b51962808fc5795e51c.lean/declarations/ennreal-aemeasurable-of-exist-almost-disjoint-supersets--5b880711f4826a5987084960.md) | 116 | `result-track:5b880711f4826a5987084960e9e2a74133d9ba13111ac7d4700fe4ee8566cfb7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
