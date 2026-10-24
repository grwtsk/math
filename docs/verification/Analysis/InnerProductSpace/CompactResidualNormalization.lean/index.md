# Verification target: GRWTSK.Analysis.InnerProductSpace.CompactResidualNormalization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f596a7cda32b0b8165b3cd6cd2638719944aac8",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/InnerProductSpace/CompactResidualNormalization.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/InnerProductSpace/CompactResidualNormalization.lean/index.md) · [Full source](../../../../mathematics/Analysis/InnerProductSpace/CompactResidualNormalization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f596a7cda32b0b8165b3cd6cd2638719944aac8`.

Source path: `GRWTSK/Analysis/InnerProductSpace/CompactResidualNormalization.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/InnerProductSpace/CompactResidualNormalization.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Calculus.CompactPolynomialDerivatives`](../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompactPolynomialDerivatives.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [source_normalization_nonneg](../../../../mathematics/Analysis/InnerProductSpace/CompactResidualNormalization.lean/declarations/source-normalization-nonneg--dac8f50e85be1f7ab977f79c.md) | 22 | `result-track:dac8f50e85be1f7ab977f79c26d3999db2bd0654836e86f53a01743c125d26d0` |
| 2 | `theorem` | [source_normalization_pos_of_analytic](../../../../mathematics/Analysis/InnerProductSpace/CompactResidualNormalization.lean/declarations/source-normalization-pos-of-analytic--e2823432c18d01a19c6a7f21.md) | 25 | `result-track:e2823432c18d01a19c6a7f215d015e74abc20c185b8f6a59d1a534e018b20cff` |
| 3 | `theorem` | [residual_center_negative_of_formula](../../../../mathematics/Analysis/InnerProductSpace/CompactResidualNormalization.lean/declarations/residual-center-negative-of-formula--e60a6b6ff2e00deb26038580.md) | 34 | `result-track:e60a6b6ff2e00deb26038580e0788284018a5e2a6f95a76a4bb0069209cbbe2c` |
| 4 | `theorem` | [source_normalization_pos](../../../../mathematics/Analysis/InnerProductSpace/CompactResidualNormalization.lean/declarations/source-normalization-pos--d6d7ab4347ba06a231cefb6e.md) | 44 | `result-track:d6d7ab4347ba06a231cefb6e60ad3bdd14b92c22909b8dfdec7ff44b671b366f` |
| 5 | `theorem` | [source_normalization_pos_of_one_le](../../../../mathematics/Analysis/InnerProductSpace/CompactResidualNormalization.lean/declarations/source-normalization-pos-of-one-le--48d394987c7cba9f8792faba.md) | 52 | `result-track:48d394987c7cba9f8792fabaad609c11ba14b6f3786d80c489aa2bc83f093940` |
| 6 | `theorem` | [normalized_source_continuous](../../../../mathematics/Analysis/InnerProductSpace/CompactResidualNormalization.lean/declarations/normalized-source-continuous--b0cd06756d4a1b395d65f31e.md) | 56 | `result-track:b0cd06756d4a1b395d65f31e2c088b4787362c7be3aa4bb8e6c751a0a319f9d9` |
| 7 | `theorem` | [normalized_source_square](../../../../mathematics/Analysis/InnerProductSpace/CompactResidualNormalization.lean/declarations/normalized-source-square--9a733fc3f023e3cbd80afbad.md) | 59 | `result-track:9a733fc3f023e3cbd80afbad33ad5b39058838f3e78007486755d2e6b00f0926` |
| 8 | `theorem` | [normalized_source_square_integral](../../../../mathematics/Analysis/InnerProductSpace/CompactResidualNormalization.lean/declarations/normalized-source-square-integral--b0791fd9f8fe9908743664b8.md) | 63 | `result-track:b0791fd9f8fe9908743664b83f1400013240a4b01e722e61ee5f3683265b1310` |
| 9 | `theorem` | [normalized_source_square_integrable](../../../../mathematics/Analysis/InnerProductSpace/CompactResidualNormalization.lean/declarations/normalized-source-square-integrable--deb81a7cb7f64214d6e797ae.md) | 73 | `result-track:deb81a7cb7f64214d6e797aef4e0c0ad1ba307c588064dde1631288c24815772` |
| 10 | `theorem` | [correlation_center_eq_one](../../../../mathematics/Analysis/InnerProductSpace/CompactResidualNormalization.lean/declarations/correlation-center-eq-one--4abe3f24d451403feda0f7fa.md) | 79 | `result-track:4abe3f24d451403feda0f7fa727fe7ef0ae7fbccc00b77835eb87dfa625f8f9b` |
| 11 | `theorem` | [normalized_source_square_integrable_of_pos](../../../../mathematics/Analysis/InnerProductSpace/CompactResidualNormalization.lean/declarations/normalized-source-square-integrable-of-pos--dfadec0d77dd6681cbd2c121.md) | 83 | `result-track:dfadec0d77dd6681cbd2c121922ceb4d0d7a19a8de4ddd9e6de30a2dc8a284d0` |
| 12 | `theorem` | [normalized_source_square_integral_of_pos](../../../../mathematics/Analysis/InnerProductSpace/CompactResidualNormalization.lean/declarations/normalized-source-square-integral-of-pos--10b20f13c9671e39111bf09c.md) | 87 | `result-track:10b20f13c9671e39111bf09cb35707fd40f8feaceeebd47b932c529238e93222` |
| 13 | `theorem` | [correlation_center_eq_one_of_pos](../../../../mathematics/Analysis/InnerProductSpace/CompactResidualNormalization.lean/declarations/correlation-center-eq-one-of-pos--2c6ecf700144675ac84137bf.md) | 91 | `result-track:2c6ecf700144675ac84137bf171682271e4fab57929a5c1ba0462e3a1bc81873` |
| 14 | `theorem` | [correlation_center_eq_one_of_one_le](../../../../mathematics/Analysis/InnerProductSpace/CompactResidualNormalization.lean/declarations/correlation-center-eq-one-of-one-le--0f4588a98cc03b007de5eeef.md) | 95 | `result-track:0f4588a98cc03b007de5eeefea4ec4253d8dbd4caaf9788c320d1179fa38fb18` |
| 15 | `theorem` | [normalized_source_eq_zero_of_normalization_zero](../../../../mathematics/Analysis/InnerProductSpace/CompactResidualNormalization.lean/declarations/normalized-source-eq-zero-of-normalization-zero--6c44c338b57e7d58afdc77f0.md) | 99 | `result-track:6c44c338b57e7d58afdc77f034ef3ef40fa8377860f7ecbcea85472a57f12f22` |
| 16 | `theorem` | [correlation_eq_zero_of_normalization_zero](../../../../mathematics/Analysis/InnerProductSpace/CompactResidualNormalization.lean/declarations/correlation-eq-zero-of-normalization-zero--d6807434fa2a1fa4198ceb4d.md) | 103 | `result-track:d6807434fa2a1fa4198ceb4dd590d0f46bbbe27412e77d1bfb2ac67bbcd9e8f6` |
| 17 | `theorem` | [source_residual_zero_scale](../../../../mathematics/Analysis/InnerProductSpace/CompactResidualNormalization.lean/declarations/source-residual-zero-scale--79168b20d61152475b13dae8.md) | 108 | `result-track:79168b20d61152475b13dae82898e4669841b677e9a4a4dd6b8c4fe32a74a9aa` |
| 18 | `theorem` | [source_normalization_zero_scale](../../../../mathematics/Analysis/InnerProductSpace/CompactResidualNormalization.lean/declarations/source-normalization-zero-scale--4011b9a36ad3a5360f4d21d7.md) | 112 | `result-track:4011b9a36ad3a5360f4d21d7548ea37ef3d5bde3a4e39ec374dc62774b879fe4` |
| 19 | `theorem` | [correlation_zero_scale](../../../../mathematics/Analysis/InnerProductSpace/CompactResidualNormalization.lean/declarations/correlation-zero-scale--677a7ce072d13ef1034d366c.md) | 115 | `result-track:677a7ce072d13ef1034d366c7b99f8eaf6eec72f3aee04e7924a78f4f05b14a4` |
| 20 | `theorem` | [correlation_center_exact](../../../../mathematics/Analysis/InnerProductSpace/CompactResidualNormalization.lean/declarations/correlation-center-exact--44ee13b39906102ad3454718.md) | 118 | `result-track:44ee13b39906102ad345471859dccc7307832795e351b597d1afb11e614b67bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
