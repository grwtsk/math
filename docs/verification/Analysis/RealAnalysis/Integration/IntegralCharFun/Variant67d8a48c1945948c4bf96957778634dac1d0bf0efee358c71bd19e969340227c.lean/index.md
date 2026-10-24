# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.IntegralCharFun.Variant67d8a48c1945948c4bf96957778634dac1d0bf0efee358c71bd19e969340227c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4913bb06233cd699a0d743fcaa3015ddeb57d805",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegralCharFun/Variant67d8a48c1945948c4bf96957778634dac1d0bf0efee358c71bd19e969340227c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCharFun/Variant67d8a48c1945948c4bf96957778634dac1d0bf0efee358c71bd19e969340227c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCharFun/Variant67d8a48c1945948c4bf96957778634dac1d0bf0efee358c71bd19e969340227c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4913bb06233cd699a0d743fcaa3015ddeb57d805`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/IntegralCharFun/Variant67d8a48c1945948c4bf96957778634dac1d0bf0efee358c71bd19e969340227c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/IntegralCharFun/Variant67d8a48c1945948c4bf96957778634dac1d0bf0efee358c71bd19e969340227c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Integrals` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.SpecialFunctions.Sinc` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.CharacteristicFunction` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [integral_charFun_Icc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCharFun/Variant67d8a48c1945948c4bf96957778634dac1d0bf0efee358c71bd19e969340227c.lean/declarations/integral-charfun-icc--2a4fcf61df12ccb747c891e6.md) | 40 | `result-track:2a4fcf61df12ccb747c891e61c80fb14a812d2fe015afc26949aefd07d8fbb9f` |
| 2 | `lemma` | [measureReal_abs_gt_le_integral_charFun](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCharFun/Variant67d8a48c1945948c4bf96957778634dac1d0bf0efee358c71bd19e969340227c.lean/declarations/measurereal-abs-gt-le-integral-charfun--036a0bc9b762ea3b56bcea7b.md) | 91 | `result-track:036a0bc9b762ea3b56bcea7b48e09bb76136a5badb08a9a01c815c4608a0c590` |
| 3 | `lemma` | [measureReal_abs_dual_gt_le_integral_charFunDual](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCharFun/Variant67d8a48c1945948c4bf96957778634dac1d0bf0efee358c71bd19e969340227c.lean/declarations/measurereal-abs-dual-gt-le-integral-charfundual--55a7f375dcf416e1196877dd.md) | 150 | `result-track:55a7f375dcf416e1196877dda1e7d14c74423f120357c9d4708097414c572f00` |
| 4 | `lemma` | [measureReal_abs_inner_gt_le_integral_charFun](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralCharFun/Variant67d8a48c1945948c4bf96957778634dac1d0bf0efee358c71bd19e969340227c.lean/declarations/measurereal-abs-inner-gt-le-integral-charfun--9e7b720d00c29657e9ab8ca3.md) | 163 | `result-track:9e7b720d00c29657e9ab8ca3503a9917733d096dc211003aab77d6a2d0c90fdd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
