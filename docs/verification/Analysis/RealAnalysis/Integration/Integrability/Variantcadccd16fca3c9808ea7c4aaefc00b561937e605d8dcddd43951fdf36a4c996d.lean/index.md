# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Integrability.Variantcadccd16fca3c9808ea7c4aaefc00b561937e605d8dcddd43951fdf36a4c996d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b73046230ca8be0ac9dc15f8496fada5287e3e6b",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Integrability/Variantcadccd16fca3c9808ea7c4aaefc00b561937e605d8dcddd43951fdf36a4c996d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integrability/Variantcadccd16fca3c9808ea7c4aaefc00b561937e605d8dcddd43951fdf36a4c996d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integrability/Variantcadccd16fca3c9808ea7c4aaefc00b561937e605d8dcddd43951fdf36a4c996d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b73046230ca8be0ac9dc15f8496fada5287e3e6b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Integrability/Variantcadccd16fca3c9808ea7c4aaefc00b561937e605d8dcddd43951fdf36a4c996d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Integrability/Variantcadccd16fca3c9808ea7c4aaefc00b561937e605d8dcddd43951fdf36a4c996d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.BoxIntegral.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Generalize` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasIntegralIndicatorConst](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integrability/Variantcadccd16fca3c9808ea7c4aaefc00b561937e605d8dcddd43951fdf36a4c996d.lean/declarations/hasintegralindicatorconst--93d7aea067feca2f1ac07f34.md) | 44 | `result-track:93d7aea067feca2f1ac07f34ab868a1e50ff00de973bdecf72bcf69629334e2e` |
| 2 | `theorem` | [HasIntegral.of_aeEq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integrability/Variantcadccd16fca3c9808ea7c4aaefc00b561937e605d8dcddd43951fdf36a4c996d.lean/declarations/hasintegral-of-aeeq-zero--0bf62b9947aba87742df5680.md) | 109 | `result-track:0bf62b9947aba87742df56809f7e5f3599933b466e4b7c221903be14354eddb0` |
| 3 | `theorem` | [HasIntegral.congr_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integrability/Variantcadccd16fca3c9808ea7c4aaefc00b561937e605d8dcddd43951fdf36a4c996d.lean/declarations/hasintegral-congr-ae--c5ce27995bd68d73d9ec748f.md) | 164 | `result-track:c5ce27995bd68d73d9ec748f289279fa0fe370293c0e9f6249881221646db34d` |
| 4 | `theorem` | [hasBoxIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integrability/Variantcadccd16fca3c9808ea7c4aaefc00b561937e605d8dcddd43951fdf36a4c996d.lean/declarations/hasboxintegral--32fddae4e635dbecf30ccbbf.md) | 178 | `result-track:32fddae4e635dbecf30ccbbf3c551cfe2ef4e06ec12416e79098c0b10775ea7c` |
| 5 | `theorem` | [box_integral_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integrability/Variantcadccd16fca3c9808ea7c4aaefc00b561937e605d8dcddd43951fdf36a4c996d.lean/declarations/box-integral-eq-integral--f2e5f7dec6b673d038307abc.md) | 192 | `result-track:f2e5f7dec6b673d038307abcdbbede7d0ba534b83b121a01385143f0604a779b` |
| 6 | `theorem` | [IntegrableOn.hasBoxIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integrability/Variantcadccd16fca3c9808ea7c4aaefc00b561937e605d8dcddd43951fdf36a4c996d.lean/declarations/integrableon-hasboxintegral--5d1c6300baae7e09fa4b0ad2.md) | 203 | `result-track:5d1c6300baae7e09fa4b0ad2c3490f69067ea60057b717b5e6fb19b4e6305527` |
| 7 | `theorem` | [ContinuousOn.hasBoxIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integrability/Variantcadccd16fca3c9808ea7c4aaefc00b561937e605d8dcddd43951fdf36a4c996d.lean/declarations/continuouson-hasboxintegral--12eb54232764d25bdd559799.md) | 310 | `result-track:12eb54232764d25bdd559799a6747e5165e30e4c3c0a349e2f9382a1ea94c719` |
| 8 | `theorem` | [AEContinuous.hasBoxIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integrability/Variantcadccd16fca3c9808ea7c4aaefc00b561937e605d8dcddd43951fdf36a4c996d.lean/declarations/aecontinuous-hasboxintegral--0236baee403c0de2e7aeb777.md) | 322 | `result-track:0236baee403c0de2e7aeb777230e5a227ea47829c4580fb5df44792dbc02afbd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
