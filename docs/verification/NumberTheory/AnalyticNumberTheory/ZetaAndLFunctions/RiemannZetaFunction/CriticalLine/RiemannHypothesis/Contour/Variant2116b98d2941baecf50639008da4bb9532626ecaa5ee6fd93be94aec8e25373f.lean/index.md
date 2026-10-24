# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Contour.Variant2116b98d2941baecf50639008da4bb9532626ecaa5ee6fd93be94aec8e25373f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65d1ae6f90d820e5c6bf8b933c4e0368abfeb4dd",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variant2116b98d2941baecf50639008da4bb9532626ecaa5ee6fd93be94aec8e25373f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variant2116b98d2941baecf50639008da4bb9532626ecaa5ee6fd93be94aec8e25373f.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variant2116b98d2941baecf50639008da4bb9532626ecaa5ee6fd93be94aec8e25373f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65d1ae6f90d820e5c6bf8b933c4e0368abfeb4dd`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variant2116b98d2941baecf50639008da4bb9532626ecaa5ee6fd93be94aec8e25373f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variant2116b98d2941baecf50639008da4bb9532626ecaa5ee6fd93be94aec8e25373f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Hardy.Omega` — import line 18; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.ZeroCount.GenericRvM` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [GoodHeightW](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variant2116b98d2941baecf50639008da4bb9532626ecaa5ee6fd93be94aec8e25373f.lean/declarations/goodheightw--e5494355600b22691fd7c0d1.md) | 36 | `declaration-track:e5494355600b22691fd7c0d1ac5309122579ce3082c4247079654deebd0d8ad0` |
| 2 | `theorem` | [exists_goodHeightW](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variant2116b98d2941baecf50639008da4bb9532626ecaa5ee6fd93be94aec8e25373f.lean/declarations/exists-goodheightw--5889e2fa6fb33e20835a3ff6.md) | 39 | `result-track:5889e2fa6fb33e20835a3ff669100d771af05612240216e7fa95df97126d1c5a` |
| 3 | `theorem` | [goodHeightW_ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variant2116b98d2941baecf50639008da4bb9532626ecaa5ee6fd93be94aec8e25373f.lean/declarations/goodheightw-ne-zero--e108e7bf2eb0e4ec8edaf579.md) | 53 | `result-track:e108e7bf2eb0e4ec8edaf579b5690d3ba0a7c86ef5a02c960de2c8aee2aa3c50` |
| 4 | `theorem` | [goodHeightW_omegaW_ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variant2116b98d2941baecf50639008da4bb9532626ecaa5ee6fd93be94aec8e25373f.lean/declarations/goodheightw-omegaw-ne-zero--6a331f1be096a1609e64601b.md) | 56 | `result-track:6a331f1be096a1609e64601b64b43d483a2be9a903e914188dfbb2e3e750fe38` |
| 5 | `theorem` | [rectangleIntegral'_logDeriv_omegaW_eq_NcountW](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variant2116b98d2941baecf50639008da4bb9532626ecaa5ee6fd93be94aec8e25373f.lean/declarations/rectangleintegral-logderiv-omegaw-eq-ncountw--dfeb771517a425409954fd85.md) | 61 | `result-track:dfeb771517a425409954fd85d3265cb934f5fed9244d8063f0447a2e93e07d61` |
| 6 | `lemma` | [continuous_logDeriv_omegaW_horizontal](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variant2116b98d2941baecf50639008da4bb9532626ecaa5ee6fd93be94aec8e25373f.lean/declarations/continuous-logderiv-omegaw-horizontal--90668f545295cfa8e241058f.md) | 132 | `result-track:90668f545295cfa8e241058f3057b967ce04bf6819b557ef234c4b325a6def01` |
| 7 | `theorem` | [rectangleIntegral_logDeriv_omegaW_eq_halfContour](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variant2116b98d2941baecf50639008da4bb9532626ecaa5ee6fd93be94aec8e25373f.lean/declarations/rectangleintegral-logderiv-omegaw-eq-halfcontour--22a7c32e6cdf9f14a02df497.md) | 144 | `result-track:22a7c32e6cdf9f14a02df49768441195961cbb16d14cf9f4ef8decc99e1d135e` |
| 8 | `theorem` | [NcountW_eq_im_halfContour](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variant2116b98d2941baecf50639008da4bb9532626ecaa5ee6fd93be94aec8e25373f.lean/declarations/ncountw-eq-im-halfcontour--df06c098c4f6ea212ade5d76.md) | 158 | `result-track:df06c098c4f6ea212ade5d767d88432e7afac6e6d4e40049356f9ea0df7f6628` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
