# Verification target: GRWTSK.Algebra.CriticalTwoModeDiophantine.Variantb26c145799cafd8b41c91b3eee8200bf8fb28bf8ad3d6d6785548d3c34d6d23a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e87a93636cdf6a3cf4bfbae020aedd5c7167c9e3",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CriticalTwoModeDiophantine/Variantb26c145799cafd8b41c91b3eee8200bf8fb28bf8ad3d6d6785548d3c34d6d23a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/CriticalTwoModeDiophantine/Variantb26c145799cafd8b41c91b3eee8200bf8fb28bf8ad3d6d6785548d3c34d6d23a.lean/index.md) · [Full source](../../../../mathematics/Algebra/CriticalTwoModeDiophantine/Variantb26c145799cafd8b41c91b3eee8200bf8fb28bf8ad3d6d6785548d3c34d6d23a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e87a93636cdf6a3cf4bfbae020aedd5c7167c9e3`.

Source path: `GRWTSK/Algebra/CriticalTwoModeDiophantine/Variantb26c145799cafd8b41c91b3eee8200bf8fb28bf8ad3d6d6785548d3c34d6d23a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CriticalTwoModeDiophantine/Variantb26c145799cafd8b41c91b3eee8200bf8fb28bf8ad3d6d6785548d3c34d6d23a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.CriticalTwoModeBasic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Round` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Pi.Bounds` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [BadlyApproximable](../../../../mathematics/Algebra/CriticalTwoModeDiophantine/Variantb26c145799cafd8b41c91b3eee8200bf8fb28bf8ad3d6d6785548d3c34d6d23a.lean/declarations/badlyapproximable--5e75421c5152bb339ec94eb7.md) | 28 | `declaration-track:5e75421c5152bb339ec94eb722e2faafab06f86016f2fd76f8faaabf90ea09e1` |
| 2 | `def` | [nearestPeriod](../../../../mathematics/Algebra/CriticalTwoModeDiophantine/Variantb26c145799cafd8b41c91b3eee8200bf8fb28bf8ad3d6d6785548d3c34d6d23a.lean/declarations/nearestperiod--fb367f89f85766f30ba16d3a.md) | 36 | `declaration-track:fb367f89f85766f30ba16d3a69ad64de0aec9b5b7e4e4bfbc8b5a67615d3f510` |
| 3 | `def` | [periodResidual](../../../../mathematics/Algebra/CriticalTwoModeDiophantine/Variantb26c145799cafd8b41c91b3eee8200bf8fb28bf8ad3d6d6785548d3c34d6d23a.lean/declarations/periodresidual--4a5e01b450bb22e6905bb126.md) | 41 | `declaration-track:4a5e01b450bb22e6905bb126c942315b92570b255d3d39bfd8b89303ba97595c` |
| 4 | `theorem` | [badly_approximable_iff_positive_denominators](../../../../mathematics/Algebra/CriticalTwoModeDiophantine/Variantb26c145799cafd8b41c91b3eee8200bf8fb28bf8ad3d6d6785548d3c34d6d23a.lean/declarations/badly-approximable-iff-positive-denominators--82b8990254e406130589bb0b.md) | 43 | `result-track:82b8990254e406130589bb0ba56b96fb855d3b7d157c1ba50ec6284ade2b1c2e` |
| 5 | `theorem` | [badly_approximable_is_irrational](../../../../mathematics/Algebra/CriticalTwoModeDiophantine/Variantb26c145799cafd8b41c91b3eee8200bf8fb28bf8ad3d6d6785548d3c34d6d23a.lean/declarations/badly-approximable-is-irrational--a334e1b2c589085e5b54d380.md) | 70 | `result-track:a334e1b2c589085e5b54d380eecbafdaaab3fc1ff9c3b98125df7f25e30af15b` |
| 6 | `theorem` | [literal_period_residual_abs_le_pi](../../../../mathematics/Algebra/CriticalTwoModeDiophantine/Variantb26c145799cafd8b41c91b3eee8200bf8fb28bf8ad3d6d6785548d3c34d6d23a.lean/declarations/literal-period-residual-abs-le-pi--9a4d38343ada06111e67d06e.md) | 80 | `result-track:9a4d38343ada06111e67d06eedd0b58f46cf9037507db303a94ff104148f2d76` |
| 7 | `theorem` | [literal_period_residual_cos](../../../../mathematics/Algebra/CriticalTwoModeDiophantine/Variantb26c145799cafd8b41c91b3eee8200bf8fb28bf8ad3d6d6785548d3c34d6d23a.lean/declarations/literal-period-residual-cos--ae6b69f0855af1588822b22c.md) | 92 | `result-track:ae6b69f0855af1588822b22c5cb56bfa8292a38bc66f5211196159c0bbaf761e` |
| 8 | `theorem` | [literal_period_residual_deficit](../../../../mathematics/Algebra/CriticalTwoModeDiophantine/Variantb26c145799cafd8b41c91b3eee8200bf8fb28bf8ad3d6d6785548d3c34d6d23a.lean/declarations/literal-period-residual-deficit--c4cf0dfe7ab0acad7529848a.md) | 95 | `result-track:c4cf0dfe7ab0acad7529848a5cf1789240fa4cb51b9caaf7fe45da7e3f8ebbc2` |
| 9 | `theorem` | [literal_two_mode_residual_deficit](../../../../mathematics/Algebra/CriticalTwoModeDiophantine/Variantb26c145799cafd8b41c91b3eee8200bf8fb28bf8ad3d6d6785548d3c34d6d23a.lean/declarations/literal-two-mode-residual-deficit--a90a60a51ad795f08a7a797b.md) | 101 | `result-track:a90a60a51ad795f08a7a797b7ac034c9c96439a2ec282dc30aca48c2bc1d0c89` |
| 10 | `theorem` | [literal_nearest_period_size_bound](../../../../mathematics/Algebra/CriticalTwoModeDiophantine/Variantb26c145799cafd8b41c91b3eee8200bf8fb28bf8ad3d6d6785548d3c34d6d23a.lean/declarations/literal-nearest-period-size-bound--adc42e9db4c02757fb5eb367.md) | 109 | `result-track:adc42e9db4c02757fb5eb367d823a2eabc76297a4e7eec7ba57092cb2d1cea75` |
| 11 | `theorem` | [literal_nonzero_period_diophantine_price](../../../../mathematics/Algebra/CriticalTwoModeDiophantine/Variantb26c145799cafd8b41c91b3eee8200bf8fb28bf8ad3d6d6785548d3c34d6d23a.lean/declarations/literal-nonzero-period-diophantine-price--f432c395c7d695d049fc812b.md) | 127 | `result-track:f432c395c7d695d049fc812ba395aa89b7a27301c7f521dc1a04e6016a9ea168` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
