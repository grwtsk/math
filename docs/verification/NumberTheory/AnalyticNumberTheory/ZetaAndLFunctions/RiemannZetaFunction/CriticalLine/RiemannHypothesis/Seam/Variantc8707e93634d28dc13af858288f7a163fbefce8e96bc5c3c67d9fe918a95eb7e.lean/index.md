# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Seam.Variantc8707e93634d28dc13af858288f7a163fbefce8e96bc5c3c67d9fe918a95eb7e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aa2ca10c56ecc0787023bb2455ed5603653b2814",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Seam/Variantc8707e93634d28dc13af858288f7a163fbefce8e96bc5c3c67d9fe918a95eb7e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Seam/Variantc8707e93634d28dc13af858288f7a163fbefce8e96bc5c3c67d9fe918a95eb7e.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Seam/Variantc8707e93634d28dc13af858288f7a163fbefce8e96bc5c3c67d9fe918a95eb7e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aa2ca10c56ecc0787023bb2455ed5603653b2814`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Seam/Variantc8707e93634d28dc13af858288f7a163fbefce8e96bc5c3c67d9fe918a95eb7e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Seam/Variantc8707e93634d28dc13af858288f7a163fbefce8e96bc5c3c67d9fe918a95eb7e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Hardy.TwoLine` — import line 15; external provider; requires a separately pinned dependency.
- `Zeta23.Analytic.RectangleLogDeriv` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Convex` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instContinuousSMulRealComplex](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Seam/Variantc8707e93634d28dc13af858288f7a163fbefce8e96bc5c3c67d9fe918a95eb7e.lean/declarations/instcontinuoussmulrealcomplex--c02f4388919840ba0e3df3ae.md) | 29 | `declaration-track:c02f4388919840ba0e3df3ae17511f9a4e2434c9810ce918b7f881a3f1e47cbc` |
| 2 | `theorem` | [analyticOrderAt_hardyW_ne_top](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Seam/Variantc8707e93634d28dc13af858288f7a163fbefce8e96bc5c3c67d9fe918a95eb7e.lean/declarations/analyticorderat-hardyw-ne-top--694f5fab6366727c01e9e1c8.md) | 37 | `result-track:694f5fab6366727c01e9e1c8e0f1f5f4291462bc4c7b234f9690fd339aa0d8f8` |
| 3 | `theorem` | [wMult_cast](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Seam/Variantc8707e93634d28dc13af858288f7a163fbefce8e96bc5c3c67d9fe918a95eb7e.lean/declarations/wmult-cast--277990290feabde92cc50ac2.md) | 55 | `result-track:277990290feabde92cc50ac22aae007e16d186ba6badf663cd5151e2969875cb` |
| 4 | `theorem` | [analyticOrderNatAt_hardyW](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Seam/Variantc8707e93634d28dc13af858288f7a163fbefce8e96bc5c3c67d9fe918a95eb7e.lean/declarations/analyticordernatat-hardyw--7042d48aec9f693805801653.md) | 58 | `result-track:7042d48aec9f6938058016534ebd7efa49d529706c9e83f794a319bbde6e5133` |
| 5 | `theorem` | [one_le_wMult_iff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Seam/Variantc8707e93634d28dc13af858288f7a163fbefce8e96bc5c3c67d9fe918a95eb7e.lean/declarations/one-le-wmult-iff--3e097da2a437a2612b5f9f4f.md) | 61 | `result-track:3e097da2a437a2612b5f9f4fec4182156ac7686d0909f536428149739714f98c` |
| 6 | `theorem` | [finite_upper](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Seam/Variantc8707e93634d28dc13af858288f7a163fbefce8e96bc5c3c67d9fe918a95eb7e.lean/declarations/finite-upper--e5f89e8cecf1fca9212f71d1.md) | 73 | `result-track:e5f89e8cecf1fca9212f71d1e660b2070faa3471c35dc684f4d2f5fd72e21782` |
| 7 | `theorem` | [finite_lower](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Seam/Variantc8707e93634d28dc13af858288f7a163fbefce8e96bc5c3c67d9fe918a95eb7e.lean/declarations/finite-lower--786627ca59cae96ef2022abf.md) | 107 | `result-track:786627ca59cae96ef2022abfcb24bc0c9a972fb2a8d104c87ece1aca0e094943` |
| 8 | `theorem` | [finite_window_W](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Seam/Variantc8707e93634d28dc13af858288f7a163fbefce8e96bc5c3c67d9fe918a95eb7e.lean/declarations/finite-window-w--3f162bb4a8a8f24526a6c057.md) | 116 | `result-track:3f162bb4a8a8f24526a6c05750c67c2df3e90efc49b1bcde5a0cbde2b58496a8` |
| 9 | `theorem` | [wSeam_of_strip](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Seam/Variantc8707e93634d28dc13af858288f7a163fbefce8e96bc5c3c67d9fe918a95eb7e.lean/declarations/wseam-of-strip--1ed8f702d4ad11abeafe6c85.md) | 127 | `result-track:1ed8f702d4ad11abeafe6c8587adc930ecaa397e92c444d7983672cf633c9580` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
