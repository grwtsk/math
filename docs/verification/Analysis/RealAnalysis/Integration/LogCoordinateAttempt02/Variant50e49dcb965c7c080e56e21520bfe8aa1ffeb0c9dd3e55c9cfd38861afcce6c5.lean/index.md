# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LogCoordinateAttempt02.Variant50e49dcb965c7c080e56e21520bfe8aa1ffeb0c9dd3e55c9cfd38861afcce6c5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f3e159e839815e947d71742da42fd0b23488c20",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogCoordinateAttempt02/Variant50e49dcb965c7c080e56e21520bfe8aa1ffeb0c9dd3e55c9cfd38861afcce6c5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt02/Variant50e49dcb965c7c080e56e21520bfe8aa1ffeb0c9dd3e55c9cfd38861afcce6c5.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt02/Variant50e49dcb965c7c080e56e21520bfe8aa1ffeb0c9dd3e55c9cfd38861afcce6c5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f3e159e839815e947d71742da42fd0b23488c20`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogCoordinateAttempt02/Variant50e49dcb965c7c080e56e21520bfe8aa1ffeb0c9dd3e55c9cfd38861afcce6c5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogCoordinateAttempt02/Variant50e49dcb965c7c080e56e21520bfe8aa1ffeb0c9dd3e55c9cfd38861afcce6c5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualComplexDilation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.JacobianOneDim` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.WithDensity` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [LogL2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt02/Variant50e49dcb965c7c080e56e21520bfe8aa1ffeb0c9dd3e55c9cfd38861afcce6c5.lean/declarations/logl2--a1bd170aa9c0eaa1d09a7178.md) | 23 | `declaration-track:a1bd170aa9c0eaa1d09a71782c735adc625e5dcacbc5f3e92934b50b1a417b20` |
| 2 | `theorem` | [integral_exp_jacobian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt02/Variant50e49dcb965c7c080e56e21520bfe8aa1ffeb0c9dd3e55c9cfd38861afcce6c5.lean/declarations/integral-exp-jacobian--7d9fa6b5157c86267a4b1744.md) | 25 | `result-track:7d9fa6b5157c86267a4b1744b4006b403d85cb42522522079de6badf9e644d6a` |
| 3 | `theorem` | [integrable_exp_jacobian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt02/Variant50e49dcb965c7c080e56e21520bfe8aa1ffeb0c9dd3e55c9cfd38861afcce6c5.lean/declarations/integrable-exp-jacobian--ec631418ebf79dc6c0d4b943.md) | 34 | `result-track:ec631418ebf79dc6c0d4b943c9c2ca04c21dc84c135da188e9779085dd990503` |
| 4 | `theorem` | [exp_quasi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt02/Variant50e49dcb965c7c080e56e21520bfe8aa1ffeb0c9dd3e55c9cfd38861afcce6c5.lean/declarations/exp-quasi--c52c0e88410d265a9fab17b9.md) | 43 | `result-track:c52c0e88410d265a9fab17b97b9b07172773a1beacb5b1ea74007ed73ccd2b07` |
| 5 | `theorem` | [log_quasi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt02/Variant50e49dcb965c7c080e56e21520bfe8aa1ffeb0c9dd3e55c9cfd38861afcce6c5.lean/declarations/log-quasi--29814ac51ad7b83010aed765.md) | 63 | `result-track:29814ac51ad7b83010aed7654eb7f7353e0bb835570c07489faff37c0a76c005` |
| 6 | `def` | [logFunc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt02/Variant50e49dcb965c7c080e56e21520bfe8aa1ffeb0c9dd3e55c9cfd38861afcce6c5.lean/declarations/logfunc--22a335f00cc60738d757abaa.md) | 82 | `declaration-track:22a335f00cc60738d757abaa5a560906665f03abf345feaed2626003178417e3` |
| 7 | `def` | [positiveFunc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt02/Variant50e49dcb965c7c080e56e21520bfe8aa1ffeb0c9dd3e55c9cfd38861afcce6c5.lean/declarations/positivefunc--ead7cc8effd6b4f767bcc897.md) | 83 | `declaration-track:ead7cc8effd6b4f767bcc8977abe51aff44ce138fe7c52c6d74f3b5ee753d9d3` |
| 8 | `theorem` | [logFunc_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt02/Variant50e49dcb965c7c080e56e21520bfe8aa1ffeb0c9dd3e55c9cfd38861afcce6c5.lean/declarations/logfunc-norm-sq--1d2d9c8db99265ecf3afad80.md) | 86 | `result-track:1d2d9c8db99265ecf3afad808ed8f95e7b335ab95f5685821fbb69c84f820329` |
| 9 | `theorem` | [logFunc_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt02/Variant50e49dcb965c7c080e56e21520bfe8aa1ffeb0c9dd3e55c9cfd38861afcce6c5.lean/declarations/logfunc-memlp--7380f24d6b3eb2ddfd44d888.md) | 94 | `result-track:7380f24d6b3eb2ddfd44d8888e5d610f5bf11419ebff4716ae4b07318d1af847` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
