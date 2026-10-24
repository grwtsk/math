# Verification target: GRWTSK.Analysis.Convolution.AutocorrelationSecondDerivative

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "23d0e8ee17a01b491a8df07b38a3b471d5270baf",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Convolution/AutocorrelationSecondDerivative.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Convolution/AutocorrelationSecondDerivative.lean/index.md) · [Full source](../../../../mathematics/Analysis/Convolution/AutocorrelationSecondDerivative.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `23d0e8ee17a01b491a8df07b38a3b471d5270baf`.

Source path: `GRWTSK/Analysis/Convolution/AutocorrelationSecondDerivative.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Convolution/AutocorrelationSecondDerivative.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Convolution.AutocorrelationDerivativeEnergy`](../../../../mathematics/Analysis/Convolution/AutocorrelationDerivativeEnergy.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.Calculus.Taylor` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [normalizedTest_deriv_integrable](../../../../mathematics/Analysis/Convolution/AutocorrelationSecondDerivative.lean/declarations/normalizedtest-deriv-integrable--57999db828f6fbfa77fff08c.md) | 29 | `result-track:57999db828f6fbfa77fff08c8834360a1a6d57f4fe39ed9d7603ee68a73e6429` |
| 2 | `theorem` | [reflectedTest_hasDerivAt](../../../../mathematics/Analysis/Convolution/AutocorrelationSecondDerivative.lean/declarations/reflectedtest-hasderivat--694ada73bd58f4490a01644d.md) | 35 | `result-track:694ada73bd58f4490a01644d20f66ba28c351cfcd8deb53cce647d59a286f428` |
| 3 | `theorem` | [sourceCorrelation_deriv_eq_convolution](../../../../mathematics/Analysis/Convolution/AutocorrelationSecondDerivative.lean/declarations/sourcecorrelation-deriv-eq-convolution--ccf795412233339dd5cfef3e.md) | 42 | `result-track:ccf795412233339dd5cfef3e57a1acd72c05e3d54c248dc569f1044670b1ed1c` |
| 4 | `theorem` | [sourceCorrelation_deriv_contDiff](../../../../mathematics/Analysis/Convolution/AutocorrelationSecondDerivative.lean/declarations/sourcecorrelation-deriv-contdiff--ec64baecf13d37d81455e7af.md) | 51 | `result-track:ec64baecf13d37d81455e7af73c2509fce564ccea9127f21bd887b9138e9b6d4` |
| 5 | `theorem` | [sourceCorrelation_contDiff_two](../../../../mathematics/Analysis/Convolution/AutocorrelationSecondDerivative.lean/declarations/sourcecorrelation-contdiff-two--ba09316228f148afd99f1319.md) | 59 | `result-track:ba09316228f148afd99f1319227e6337b5c21dad02b2989e13048461fd8d51ce` |
| 6 | `theorem` | [sourceCorrelation_deriv_hasDerivAt_integral](../../../../mathematics/Analysis/Convolution/AutocorrelationSecondDerivative.lean/declarations/sourcecorrelation-deriv-hasderivat-integral--573a6cb1b0a7a640cbd9b0a1.md) | 66 | `result-track:573a6cb1b0a7a640cbd9b0a1f14018e553c154ece0262bf44649662a87eabeba` |
| 7 | `theorem` | [sourceCorrelation_second_deriv_eq_integral](../../../../mathematics/Analysis/Convolution/AutocorrelationSecondDerivative.lean/declarations/sourcecorrelation-second-deriv-eq-integral--330d3751d965bcdf39bb6332.md) | 81 | `result-track:330d3751d965bcdf39bb63329edb57790c4b3147a09c6de514bb002a67dfe3e5` |
| 8 | `theorem` | [sourceCorrelation_second_deriv_integrand_integrable](../../../../mathematics/Analysis/Convolution/AutocorrelationSecondDerivative.lean/declarations/sourcecorrelation-second-deriv-integrand-integrable--e125873e3e8e1dc054c04960.md) | 88 | `result-track:e125873e3e8e1dc054c0496026e1afbdad09c91a78e6b7ac3533baab07fb2131` |
| 9 | `theorem` | [sourceCorrelation_second_deriv_abs_le_energy](../../../../mathematics/Analysis/Convolution/AutocorrelationSecondDerivative.lean/declarations/sourcecorrelation-second-deriv-abs-le-energy--1554b52f5cdb86c4a1878583.md) | 96 | `result-track:1554b52f5cdb86c4a187858323615654377076710e1b36aefcde152f75c65e6b` |
| 10 | `theorem` | [sourceCorrelation_second_deriv_abs_le_coefficient](../../../../mathematics/Analysis/Convolution/AutocorrelationSecondDerivative.lean/declarations/sourcecorrelation-second-deriv-abs-le-coefficient--49c31b25ff1ac03d17fd72f0.md) | 120 | `result-track:49c31b25ff1ac03d17fd72f04f884a8a58558ceb2d2c514a74df2571917534fb` |
| 11 | `theorem` | [sourceCorrelation_deriv_increment_bound](../../../../mathematics/Analysis/Convolution/AutocorrelationSecondDerivative.lean/declarations/sourcecorrelation-deriv-increment-bound--7587bb779f33ffeace73ad3f.md) | 131 | `result-track:7587bb779f33ffeace73ad3f3f61b38659a14af9c4f9c5c3a2e50b2fa1348cad` |
| 12 | `theorem` | [sourceCorrelation_linear_taylor_bound](../../../../mathematics/Analysis/Convolution/AutocorrelationSecondDerivative.lean/declarations/sourcecorrelation-linear-taylor-bound--d4179bad4b6e9379aed33f28.md) | 145 | `result-track:d4179bad4b6e9379aed33f28808e3d328e3d90f880a0a3e4a01b686846c038b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
