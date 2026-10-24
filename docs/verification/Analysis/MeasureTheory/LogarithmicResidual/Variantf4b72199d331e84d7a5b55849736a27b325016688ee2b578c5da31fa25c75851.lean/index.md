# Verification target: GRWTSK.Analysis.MeasureTheory.LogarithmicResidual.Variantf4b72199d331e84d7a5b55849736a27b325016688ee2b578c5da31fa25c75851

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "293dcc9f292f39090c0fd720bb047848b39149f1",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/LogarithmicResidual/Variantf4b72199d331e84d7a5b55849736a27b325016688ee2b578c5da31fa25c75851.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/LogarithmicResidual/Variantf4b72199d331e84d7a5b55849736a27b325016688ee2b578c5da31fa25c75851.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/LogarithmicResidual/Variantf4b72199d331e84d7a5b55849736a27b325016688ee2b578c5da31fa25c75851.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `293dcc9f292f39090c0fd720bb047848b39149f1`.

Source path: `GRWTSK/Analysis/MeasureTheory/LogarithmicResidual/Variantf4b72199d331e84d7a5b55849736a27b325016688ee2b578c5da31fa25c75851.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/LogarithmicResidual/Variantf4b72199d331e84d7a5b55849736a27b325016688ee2b578c5da31fa25c75851.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.MobiusFractionalResidual` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.FourierTransform` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.JacobianOneDim` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.Floor` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logResidual](../../../../../mathematics/Analysis/MeasureTheory/LogarithmicResidual/Variantf4b72199d331e84d7a5b55849736a27b325016688ee2b578c5da31fa25c75851.lean/declarations/logresidual--e19f737a165a033bd6f3e480.md) | 15 | `declaration-track:e19f737a165a033bd6f3e480b93ff37df3e52f93033c7cf6037a9aa75e1d9308` |
| 2 | `theorem` | [arithmeticResidual_measurable](../../../../../mathematics/Analysis/MeasureTheory/LogarithmicResidual/Variantf4b72199d331e84d7a5b55849736a27b325016688ee2b578c5da31fa25c75851.lean/declarations/arithmeticresidual-measurable--ff4aa1d7d75a97f6444c3240.md) | 19 | `result-track:ff4aa1d7d75a97f6444c3240618b88e60657019b351ab1e0402589b3ca83a3c7` |
| 3 | `theorem` | [logResidual_measurable](../../../../../mathematics/Analysis/MeasureTheory/LogarithmicResidual/Variantf4b72199d331e84d7a5b55849736a27b325016688ee2b578c5da31fa25c75851.lean/declarations/logresidual-measurable--f9dc53f600c25186e318853f.md) | 28 | `result-track:f9dc53f600c25186e318853f653a205f91f77fb69b20a67c6246b454bbd5db01` |
| 4 | `theorem` | [exp_image_univ](../../../../../mathematics/Analysis/MeasureTheory/LogarithmicResidual/Variantf4b72199d331e84d7a5b55849736a27b325016688ee2b578c5da31fa25c75851.lean/declarations/exp-image-univ--bc1d72daa7e64a283c91b8ab.md) | 33 | `result-track:bc1d72daa7e64a283c91b8abec2c0711a7bc7d06543f9c1ae77014df6508f09b` |
| 5 | `theorem` | [exp_integrability](../../../../../mathematics/Analysis/MeasureTheory/LogarithmicResidual/Variantf4b72199d331e84d7a5b55849736a27b325016688ee2b578c5da31fa25c75851.lean/declarations/exp-integrability--c4ef0ef110ea97da1655e3f0.md) | 36 | `result-track:c4ef0ef110ea97da1655e3f044141bbf1c9273303dbb6e85319919bb6fa80838` |
| 6 | `theorem` | [exp_integral](../../../../../mathematics/Analysis/MeasureTheory/LogarithmicResidual/Variantf4b72199d331e84d7a5b55849736a27b325016688ee2b578c5da31fa25c75851.lean/declarations/exp-integral--983a5232b2a13ee154890aa1.md) | 45 | `result-track:983a5232b2a13ee154890aa1578404366cae93d2043341c3ebb56bbfa6903f53` |
| 7 | `theorem` | [exp_integrand](../../../../../mathematics/Analysis/MeasureTheory/LogarithmicResidual/Variantf4b72199d331e84d7a5b55849736a27b325016688ee2b578c5da31fa25c75851.lean/declarations/exp-integrand--5030652aeba0df2837c8bb35.md) | 53 | `result-track:5030652aeba0df2837c8bb35332bca3e9db5d672eed0321f42acb9dac2449420` |
| 8 | `theorem` | [logResidual_integrable](../../../../../mathematics/Analysis/MeasureTheory/LogarithmicResidual/Variantf4b72199d331e84d7a5b55849736a27b325016688ee2b578c5da31fa25c75851.lean/declarations/logresidual-integrable--10eb9328e74e13bf6568ab32.md) | 69 | `result-track:10eb9328e74e13bf6568ab32e2c0e2f9c3e13bc85e056b364642e29277526488` |
| 9 | `theorem` | [logResidual_angular_integral](../../../../../mathematics/Analysis/MeasureTheory/LogarithmicResidual/Variantf4b72199d331e84d7a5b55849736a27b325016688ee2b578c5da31fa25c75851.lean/declarations/logresidual-angular-integral--d8e3069217e00c02cf6f4f88.md) | 85 | `result-track:d8e3069217e00c02cf6f4f88904be766e674dbd84025cd02da4538e4fb367000` |
| 10 | `theorem` | [logResidual_fourier](../../../../../mathematics/Analysis/MeasureTheory/LogarithmicResidual/Variantf4b72199d331e84d7a5b55849736a27b325016688ee2b578c5da31fa25c75851.lean/declarations/logresidual-fourier--92e89131b864934f79a26f41.md) | 109 | `result-track:92e89131b864934f79a26f4183078a0637b3ed7daaa14dd5f1e39eef06e51eff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
