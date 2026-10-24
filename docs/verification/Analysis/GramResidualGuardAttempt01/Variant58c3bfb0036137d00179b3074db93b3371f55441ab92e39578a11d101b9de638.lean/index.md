# Verification target: GRWTSK.Analysis.GramResidualGuardAttempt01.Variant58c3bfb0036137d00179b3074db93b3371f55441ab92e39578a11d101b9de638

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b04424b189fc81548296e7c60690a064ab36ca68",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/GramResidualGuardAttempt01/Variant58c3bfb0036137d00179b3074db93b3371f55441ab92e39578a11d101b9de638.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/GramResidualGuardAttempt01/Variant58c3bfb0036137d00179b3074db93b3371f55441ab92e39578a11d101b9de638.lean/index.md) · [Full source](../../../../mathematics/Analysis/GramResidualGuardAttempt01/Variant58c3bfb0036137d00179b3074db93b3371f55441ab92e39578a11d101b9de638.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b04424b189fc81548296e7c60690a064ab36ca68`.

Source path: `GRWTSK/Analysis/GramResidualGuardAttempt01/Variant58c3bfb0036137d00179b3074db93b3371f55441ab92e39578a11d101b9de638.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/GramResidualGuardAttempt01/Variant58c3bfb0036137d00179b3074db93b3371f55441ab92e39578a11d101b9de638.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Positive` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Rayleigh` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Matrix.Hermitian` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.HausdorffDistance` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [quadratic_difference_abs_le](../../../../mathematics/Analysis/GramResidualGuardAttempt01/Variant58c3bfb0036137d00179b3074db93b3371f55441ab92e39578a11d101b9de638.lean/declarations/quadratic-difference-abs-le--191feaed675a22e722e96d1f.md) | 26 | `result-track:191feaed675a22e722e96d1f492b03ad5bf84e7c84a4fce0e643b4f91c33cc63` |
| 2 | `theorem` | [positive_approximation_lower](../../../../mathematics/Analysis/GramResidualGuardAttempt01/Variant58c3bfb0036137d00179b3074db93b3371f55441ab92e39578a11d101b9de638.lean/declarations/positive-approximation-lower--80bc5e974f64f84240062910.md) | 39 | `result-track:80bc5e974f64f84240062910b6997f05320ef7ce1dd8d0abdb14da6298083a13` |
| 3 | `theorem` | [coercive_approximation_lower](../../../../mathematics/Analysis/GramResidualGuardAttempt01/Variant58c3bfb0036137d00179b3074db93b3371f55441ab92e39578a11d101b9de638.lean/declarations/coercive-approximation-lower--26b62e874365683f5272639d.md) | 47 | `result-track:26b62e874365683f5272639d0127a428ada6ba2500d09d25b398141474d36c23` |
| 4 | `theorem` | [positive_of_coercive_residual](../../../../mathematics/Analysis/GramResidualGuardAttempt01/Variant58c3bfb0036137d00179b3074db93b3371f55441ab92e39578a11d101b9de638.lean/declarations/positive-of-coercive-residual--4ac0d4433e3f77557665aaed.md) | 55 | `result-track:4ac0d4433e3f77557665aaede5325d0d0d9c4f9690eff0d76080693ebc923a7b` |
| 5 | `theorem` | [positive_of_arbitrary_precision](../../../../mathematics/Analysis/GramResidualGuardAttempt01/Variant58c3bfb0036137d00179b3074db93b3371f55441ab92e39578a11d101b9de638.lean/declarations/positive-of-arbitrary-precision--c2289fbf153a99617700ca79.md) | 63 | `result-track:c2289fbf153a99617700ca79eb27d7b2db9c9602e3bf30dccca95e391c03111f` |
| 6 | `theorem` | [gram_residual_lower](../../../../mathematics/Analysis/GramResidualGuardAttempt01/Variant58c3bfb0036137d00179b3074db93b3371f55441ab92e39578a11d101b9de638.lean/declarations/gram-residual-lower--c85401c0a6818cfc5d42a337.md) | 85 | `result-track:c85401c0a6818cfc5d42a3374035b3f7af43c09adf15c4f80d8b7a4480d40772` |
| 7 | `theorem` | [positive_of_arbitrary_gram_precision](../../../../mathematics/Analysis/GramResidualGuardAttempt01/Variant58c3bfb0036137d00179b3074db93b3371f55441ab92e39578a11d101b9de638.lean/declarations/positive-of-arbitrary-gram-precision--c1506ef362d83780380a7a7f.md) | 94 | `result-track:c1506ef362d83780380a7a7fc984a0d9d1709fddce8f6d1a69b3943eab73a64c` |
| 8 | `def` | [positiveDistance](../../../../mathematics/Analysis/GramResidualGuardAttempt01/Variant58c3bfb0036137d00179b3074db93b3371f55441ab92e39578a11d101b9de638.lean/declarations/positivedistance--c53fb6ba7adf40ac0d4d2a46.md) | 104 | `declaration-track:c53fb6ba7adf40ac0d4d2a46954df4c57f87dfccc4eeaa4aaff5c2e9b9da1831` |
| 9 | `theorem` | [negative_rayleigh_le_norm](../../../../mathematics/Analysis/GramResidualGuardAttempt01/Variant58c3bfb0036137d00179b3074db93b3371f55441ab92e39578a11d101b9de638.lean/declarations/negative-rayleigh-le-norm--a189351e99640e6342037803.md) | 107 | `result-track:a189351e99640e63420378036e4cd9a99ad6941b36717d60dbca24a96f921131` |
| 10 | `theorem` | [negative_rayleigh_distance_lower](../../../../mathematics/Analysis/GramResidualGuardAttempt01/Variant58c3bfb0036137d00179b3074db93b3371f55441ab92e39578a11d101b9de638.lean/declarations/negative-rayleigh-distance-lower--dc7096c530c8abe1ed1c6c5d.md) | 119 | `result-track:dc7096c530c8abe1ed1c6c5dd108df660b26977662c7057ef9c4740ef6f71672` |
| 11 | `theorem` | [positiveDistance_eq_zero_iff](../../../../mathematics/Analysis/GramResidualGuardAttempt01/Variant58c3bfb0036137d00179b3074db93b3371f55441ab92e39578a11d101b9de638.lean/declarations/positivedistance-eq-zero-iff--093d47fa040ee6bf98f74de4.md) | 129 | `result-track:093d47fa040ee6bf98f74de455f201653de47b42a417b54a5c61b2ee49a37ac3` |
| 12 | `def` | [matrixOperator](../../../../mathematics/Analysis/GramResidualGuardAttempt01/Variant58c3bfb0036137d00179b3074db93b3371f55441ab92e39578a11d101b9de638.lean/declarations/matrixoperator--654ca1b22177f2bfb3ef640f.md) | 147 | `declaration-track:654ca1b22177f2bfb3ef640f03eb53b20b3764a627af931fe9b5c1e58ec42a43` |
| 13 | `theorem` | [matrixOperator_positive_iff](../../../../mathematics/Analysis/GramResidualGuardAttempt01/Variant58c3bfb0036137d00179b3074db93b3371f55441ab92e39578a11d101b9de638.lean/declarations/matrixoperator-positive-iff--990dac2d3818e8b42ccc37e6.md) | 150 | `result-track:990dac2d3818e8b42ccc37e64ee801e6775a6e02130eb67eaad1d455c34c7b0c` |
| 14 | `theorem` | [matrix_posSemidef_of_arbitrary_gram_precision](../../../../mathematics/Analysis/GramResidualGuardAttempt01/Variant58c3bfb0036137d00179b3074db93b3371f55441ab92e39578a11d101b9de638.lean/declarations/matrix-possemidef-of-arbitrary-gram-precision--08d33bfc05d7e1c06e6da06a.md) | 155 | `result-track:08d33bfc05d7e1c06e6da06a14a32b0c8fbd2fd52d24f5d720f19a637b14d95b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
