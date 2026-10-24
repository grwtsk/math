# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.VerticalLineChi.Variant1de000e75c0557b1d41245e54e7482f8facdba064a94943969c7cf0c1afed28a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b7033b926b715aa7d0952e5790330aaa2c56ca8",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/VerticalLineChi/Variant1de000e75c0557b1d41245e54e7482f8facdba064a94943969c7cf0c1afed28a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalLineChi/Variant1de000e75c0557b1d41245e54e7482f8facdba064a94943969c7cf0c1afed28a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalLineChi/Variant1de000e75c0557b1d41245e54e7482f8facdba064a94943969c7cf0c1afed28a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b7033b926b715aa7d0952e5790330aaa2c56ca8`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/VerticalLineChi/Variant1de000e75c0557b1d41245e54e7482f8facdba064a94943969c7cf0c1afed28a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/VerticalLineChi/Variant1de000e75c0557b1d41245e54e7482f8facdba064a94943969c7cf0c1afed28a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.WeilEF.VerticalLine` — import line 16; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.LandauChi` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [neg_logDeriv_LFunction_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalLineChi/Variant1de000e75c0557b1d41245e54e7482f8facdba064a94943969c7cf0c1afed28a.lean/declarations/neg-logderiv-lfunction-eq--52f70f247560fcf8b8686958.md) | 38 | `result-track:52f70f247560fcf8b86869582a9feacd4a4b01b145ad0270c2046b8d1b71014d` |
| 2 | `theorem` | [integrand_eq_tsum_chi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalLineChi/Variant1de000e75c0557b1d41245e54e7482f8facdba064a94943969c7cf0c1afed28a.lean/declarations/integrand-eq-tsum-chi--61bd0449242a56c0b79084fb.md) | 54 | `result-track:61bd0449242a56c0b79084fb2637353f603cd620315abf809b076ab46894834c` |
| 3 | `theorem` | [per_n_line_integral_chi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalLineChi/Variant1de000e75c0557b1d41245e54e7482f8facdba064a94943969c7cf0c1afed28a.lean/declarations/per-n-line-integral-chi--b2fec7a5d4271d8da5b62434.md) | 66 | `result-track:b2fec7a5d4271d8da5b62434e93e04e46a2db2db89bfaa259b7bcf2e8192fa17` |
| 4 | `theorem` | [line_integral_swap_chi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalLineChi/Variant1de000e75c0557b1d41245e54e7482f8facdba064a94943969c7cf0c1afed28a.lean/declarations/line-integral-swap-chi--54eca1f331c36094c1c9b10d.md) | 132 | `result-track:54eca1f331c36094c1c9b10d1974e33588dd4e832910d49bdf1c7ad02b20aaf6` |
| 5 | `theorem` | [prime_side_line_chi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalLineChi/Variant1de000e75c0557b1d41245e54e7482f8facdba064a94943969c7cf0c1afed28a.lean/declarations/prime-side-line-chi--0b87a13749c026121017f581.md) | 212 | `result-track:0b87a13749c026121017f5816d358fb54c96415719c5d799a4a57e8c833e3575` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
