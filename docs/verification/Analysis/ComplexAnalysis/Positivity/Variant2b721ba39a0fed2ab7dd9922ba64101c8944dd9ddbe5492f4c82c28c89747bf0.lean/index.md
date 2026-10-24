# Verification target: GRWTSK.Analysis.ComplexAnalysis.Positivity.Variant2b721ba39a0fed2ab7dd9922ba64101c8944dd9ddbe5492f4c82c28c89747bf0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2ae7d9222a05a02fa0bb25f8d71eeca366e879a",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Positivity/Variant2b721ba39a0fed2ab7dd9922ba64101c8944dd9ddbe5492f4c82c28c89747bf0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/Positivity/Variant2b721ba39a0fed2ab7dd9922ba64101c8944dd9ddbe5492f4c82c28c89747bf0.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/Positivity/Variant2b721ba39a0fed2ab7dd9922ba64101c8944dd9ddbe5492f4c82c28c89747bf0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2ae7d9222a05a02fa0bb25f8d71eeca366e879a`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Positivity/Variant2b721ba39a0fed2ab7dd9922ba64101c8944dd9ddbe5492f4c82c28c89747bf0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Positivity/Variant2b721ba39a0fed2ab7dd9922ba64101c8944dd9ddbe5492f4c82c28c89747bf0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.TaylorSeries` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [nonneg_of_iteratedDeriv_nonneg](../../../../../mathematics/Analysis/ComplexAnalysis/Positivity/Variant2b721ba39a0fed2ab7dd9922ba64101c8944dd9ddbe5492f4c82c28c89747bf0.lean/declarations/nonneg-of-iteratedderiv-nonneg--ec02b0a573affd3c3b5f1d53.md) | 26 | `result-track:ec02b0a573affd3c3b5f1d5383ed2ee18a60cf19741c70fee107fb992cdc54f7` |
| 2 | `theorem` | [nonneg_of_iteratedDeriv_nonneg](../../../../../mathematics/Analysis/ComplexAnalysis/Positivity/Variant2b721ba39a0fed2ab7dd9922ba64101c8944dd9ddbe5492f4c82c28c89747bf0.lean/declarations/nonneg-of-iteratedderiv-nonneg--fc153e80121325778e2212fa.md) | 47 | `result-track:fc153e80121325778e2212fa266a94f8f0b2f0d8121f44ed5e93146ac74af288` |
| 3 | `theorem` | [apply_le_of_iteratedDeriv_nonneg](../../../../../mathematics/Analysis/ComplexAnalysis/Positivity/Variant2b721ba39a0fed2ab7dd9922ba64101c8944dd9ddbe5492f4c82c28c89747bf0.lean/declarations/apply-le-of-iteratedderiv-nonneg--3b41700f80332e0bad80edf4.md) | 57 | `result-track:3b41700f80332e0bad80edf41a8f6f3dc362c600a383d2cf9a2309a086a6356f` |
| 4 | `theorem` | [apply_le_of_iteratedDeriv_alternating](../../../../../mathematics/Analysis/ComplexAnalysis/Positivity/Variant2b721ba39a0fed2ab7dd9922ba64101c8944dd9ddbe5492f4c82c28c89747bf0.lean/declarations/apply-le-of-iteratedderiv-alternating--bf0ba8022f40d82b622ed11b.md) | 72 | `result-track:bf0ba8022f40d82b622ed11b5abe650c20a936d5ae63357573a8222d993256a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
