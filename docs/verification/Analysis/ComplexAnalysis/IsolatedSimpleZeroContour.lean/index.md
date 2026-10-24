# Verification target: GRWTSK.Analysis.Complex.IsolatedSimpleZeroContour

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f325456531fdcfd2a8619f8d8b8ef67d4bea91da",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/IsolatedSimpleZeroContour.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/IsolatedSimpleZeroContour.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/IsolatedSimpleZeroContour.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f325456531fdcfd2a8619f8d8b8ef67d4bea91da`.

Source path: `GRWTSK/Analysis/Complex/IsolatedSimpleZeroContour.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/IsolatedSimpleZeroContour.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.IsolatedZeros` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [regularPart](../../../../mathematics/Analysis/ComplexAnalysis/IsolatedSimpleZeroContour.lean/declarations/regularpart--8f01aecb6a8caacc2446c196.md) | 38 | `declaration-track:8f01aecb6a8caacc2446c196191db225364d165db0be87d557dc51f15603afac` |
| 2 | `theorem` | [factorization](../../../../mathematics/Analysis/ComplexAnalysis/IsolatedSimpleZeroContour.lean/declarations/factorization--940fddf07a9564945cfb03d5.md) | 42 | `result-track:940fddf07a9564945cfb03d52fb0adc9780521ee0f7090101e57f4f1f4c48c31` |
| 3 | `theorem` | [factor_analytic](../../../../mathematics/Analysis/ComplexAnalysis/IsolatedSimpleZeroContour.lean/declarations/factor-analytic--fb0032e95b4e960b5404a6b7.md) | 47 | `result-track:fb0032e95b4e960b5404a6b7a910b45294e795fe513fc9168f4b60959b104420` |
| 4 | `theorem` | [factor_nonzero](../../../../mathematics/Analysis/ComplexAnalysis/IsolatedSimpleZeroContour.lean/declarations/factor-nonzero--98597fe01526494d4dd65d09.md) | 62 | `result-track:98597fe01526494d4dd65d09485b0f627a146d3164e4b33770e50e0ddd04183f` |
| 5 | `theorem` | [regularPart_analytic](../../../../mathematics/Analysis/ComplexAnalysis/IsolatedSimpleZeroContour.lean/declarations/regularpart-analytic--b5675f26a91061af3f87c78f.md) | 75 | `result-track:b5675f26a91061af3f87c78f2021c8b6f90a61277504bdb31ffea704d96b8b01` |
| 6 | `theorem` | [regularPart_at_root](../../../../mathematics/Analysis/ComplexAnalysis/IsolatedSimpleZeroContour.lean/declarations/regularpart-at-root--1ace6b0589adf5226e7ced7a.md) | 86 | `result-track:1ace6b0589adf5226e7ced7a16a0ff3f3a06902d92f775929edcbe38293642d6` |
| 7 | `theorem` | [log_derivative_split](../../../../mathematics/Analysis/ComplexAnalysis/IsolatedSimpleZeroContour.lean/declarations/log-derivative-split--8c3890a34141206dbc281cec.md) | 91 | `result-track:8c3890a34141206dbc281cec59cab668a3de4f4a6d62be54663677b935eb1ec2` |
| 8 | `theorem` | [regularPart_eq_subtracted](../../../../mathematics/Analysis/ComplexAnalysis/IsolatedSimpleZeroContour.lean/declarations/regularpart-eq-subtracted--a8b2d9d26bd78da528a28b80.md) | 107 | `result-track:a8b2d9d26bd78da528a28b8063143da1496f229e399a0ae7bb7847ddc49803c4` |
| 9 | `theorem` | [boundary_ne_root](../../../../mathematics/Analysis/ComplexAnalysis/IsolatedSimpleZeroContour.lean/declarations/boundary-ne-root--abed8a3cb87c53221fbcfc00.md) | 115 | `result-track:abed8a3cb87c53221fbcfc00fef708e5cd8acbf772a6e59768cfea2b9737a26a` |
| 10 | `theorem` | [pole_circleIntegrable](../../../../mathematics/Analysis/ComplexAnalysis/IsolatedSimpleZeroContour.lean/declarations/pole-circleintegrable--1ccdd177de5489000ae9abe9.md) | 124 | `result-track:1ccdd177de5489000ae9abe966e2948adcbed13c0780bff788ff696d1a821a2d` |
| 11 | `theorem` | [regularPart_circleIntegral_zero](../../../../mathematics/Analysis/ComplexAnalysis/IsolatedSimpleZeroContour.lean/declarations/regularpart-circleintegral-zero--00bb9ee066e95270afc252cc.md) | 133 | `result-track:00bb9ee066e95270afc252cca0fef6cc7683ba2542a9f446f5d3f0b48dcb9393` |
| 12 | `theorem` | [log_derivative_circleIntegral](../../../../mathematics/Analysis/ComplexAnalysis/IsolatedSimpleZeroContour.lean/declarations/log-derivative-circleintegral--685e519f410301af1784c3f3.md) | 148 | `result-track:685e519f410301af1784c3f341527e2ee505d14fde4112afc2da9b335b0d1b00` |
| 13 | `theorem` | [pole_shift_circleIntegral_zero](../../../../mathematics/Analysis/ComplexAnalysis/IsolatedSimpleZeroContour.lean/declarations/pole-shift-circleintegral-zero--2fb22fbfbd1bfa668c1e9116.md) | 190 | `result-track:2fb22fbfbd1bfa668c1e9116c124e67fff2f59241b24cf32b74865bdbd328332` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
