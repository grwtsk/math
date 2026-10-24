# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalCompletedLogDetector

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "917fc9bcd9355c772137eda91188e172dff28b3e",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalCompletedLogDetector.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalCompletedLogDetector.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalCompletedLogDetector.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `917fc9bcd9355c772137eda91188e172dff28b3e`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalCompletedLogDetector.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CanonicalCompletedLogDetector.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.AnalyticZeroOrderDetector`](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticZeroOrderDetector.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalZeroDivisor`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalZeroDivisor.lean/index.md) — import line 2; pinned internal source present.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Deligne` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [completed_analytic](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalCompletedLogDetector.lean/declarations/completed-analytic--997d6cf976e8bd9a0607597e.md) | 19 | `result-track:997d6cf976e8bd9a0607597e9bcd130c123790ebce45933665284ebe9ee200a3` |
| 2 | `theorem` | [completed_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalCompletedLogDetector.lean/declarations/completed-zero--724d9eef30fc27a0f7dd5b7f.md) | 29 | `result-track:724d9eef30fc27a0f7dd5b7fdcd835685e5c7bef93d07d1d31fd450cc04369fc` |
| 3 | `theorem` | [completed_order_eq_zeta](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalCompletedLogDetector.lean/declarations/completed-order-eq-zeta--35910abd3c1b5c032bc82060.md) | 35 | `result-track:35910abd3c1b5c032bc820606ec8fe3deb1719d761c3d1ce12eed0858ef6fdff` |
| 4 | `theorem` | [completed_order_finite](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalCompletedLogDetector.lean/declarations/completed-order-finite--bda47491de9e99bfedf25c16.md) | 51 | `result-track:bda47491de9e99bfedf25c1690b57d4902791c91c4efab3b5f7dbfc6267fd123` |
| 5 | `theorem` | [completed_natural_order](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalCompletedLogDetector.lean/declarations/completed-natural-order--7f20c93b2dd6e03d33b34e11.md) | 57 | `result-track:7f20c93b2dd6e03d33b34e11b7f55c8cff3556b49971e329e8062516119fd035` |
| 6 | `theorem` | [completed_scaled_coefficient](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalCompletedLogDetector.lean/declarations/completed-scaled-coefficient--d499c9e5377d164c8cced689.md) | 62 | `result-track:d499c9e5377d164c8cced6891f56b9382bc72fed19f6692b76f9c99b71ce2f17` |
| 7 | `theorem` | [completed_no_continuous_logDeriv_extension](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalCompletedLogDetector.lean/declarations/completed-no-continuous-logderiv-extension--db9a4fb4861caebf0beea54b.md) | 70 | `result-track:db9a4fb4861caebf0beea54b6e5bb787482a4a80d8c0775b8ab460d542ab788d` |
| 8 | `theorem` | [zeta_scaled_coefficient](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalCompletedLogDetector.lean/declarations/zeta-scaled-coefficient--6c4eee3bac89f490bad8b5d0.md) | 76 | `result-track:6c4eee3bac89f490bad8b5d0b5cca27e9d03ee2acfb97f8933ad633676baaa08` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
