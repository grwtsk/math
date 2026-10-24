# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.FourierDraft.Variantca717292568268f01f086e799291e2117f6ae8b8f619ec959ab253f722970178

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9195805c3a64b0572ffb49ae24da758b0b905db2",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/FourierDraft/Variantca717292568268f01f086e799291e2117f6ae8b8f619ec959ab253f722970178.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierDraft/Variantca717292568268f01f086e799291e2117f6ae8b8f619ec959ab253f722970178.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierDraft/Variantca717292568268f01f086e799291e2117f6ae8b8f619ec959ab253f722970178.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9195805c3a64b0572ffb49ae24da758b0b905db2`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/FourierDraft/Variantca717292568268f01f086e799291e2117f6ae8b8f619ec959ab253f722970178.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/FourierDraft/Variantca717292568268f01f086e799291e2117f6ae8b8f619ec959ab253f722970178.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourcePlancherel` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.BigOperators` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceHankelReflection` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sourceFourierSquare](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierDraft/Variantca717292568268f01f086e799291e2117f6ae8b8f619ec959ab253f722970178.lean/declarations/sourcefouriersquare--00a2483c0610a60213fe334e.md) | 17 | `declaration-track:00a2483c0610a60213fe334e8875ee2b497a0228ffbc5b23ae06bebb36f6232c` |
| 2 | `theorem` | [sourceFourierSquare_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierDraft/Variantca717292568268f01f086e799291e2117f6ae8b8f619ec959ab253f722970178.lean/declarations/sourcefouriersquare-integrable--26f892535d5db3e68074036b.md) | 20 | `result-track:26f892535d5db3e68074036b225eb1710f3b5f5987ecba735f483d3658fc8e8d` |
| 3 | `theorem` | [sourceFourierSquare_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierDraft/Variantca717292568268f01f086e799291e2117f6ae8b8f619ec959ab253f722970178.lean/declarations/sourcefouriersquare-nonneg--a52a11ed8b1d079cfafd0f38.md) | 23 | `result-track:a52a11ed8b1d079cfafd0f3866c2c19ea626a14d78055f8c288814169c9425d2` |
| 4 | `theorem` | [sourceFourierSquare_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierDraft/Variantca717292568268f01f086e799291e2117f6ae8b8f619ec959ab253f722970178.lean/declarations/sourcefouriersquare-integral--cee4b303fb8b09ac9574fa3d.md) | 26 | `result-track:cee4b303fb8b09ac9574fa3dc4590257ac6435da8c50ad3dd45ebccc7acd0e4b` |
| 5 | `theorem` | [standard_correlation_cosine_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierDraft/Variantca717292568268f01f086e799291e2117f6ae8b8f619ec959ab253f722970178.lean/declarations/standard-correlation-cosine-integral--df46ac266038b183574fc251.md) | 29 | `result-track:df46ac266038b183574fc251f5d7b7cd5122d70cc8ae47d88d7e935937430d80` |
| 6 | `theorem` | [source_cosine_product_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierDraft/Variantca717292568268f01f086e799291e2117f6ae8b8f619ec959ab253f722970178.lean/declarations/source-cosine-product-integrable--319e22d4c3f9678f4fb2cc0e.md) | 78 | `result-track:319e22d4c3f9678f4fb2cc0ef62a9d3273769e84734e016409ddd07123057070` |
| 7 | `theorem` | [source_correlation_fourier](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierDraft/Variantca717292568268f01f086e799291e2117f6ae8b8f619ec959ab253f722970178.lean/declarations/source-correlation-fourier--4ebb842a3c80460008853aeb.md) | 85 | `result-track:4ebb842a3c80460008853aebc26a0953376c80f0bad8e6e477292271296c9aed` |
| 8 | `def` | [arithmeticPolynomial](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierDraft/Variantca717292568268f01f086e799291e2117f6ae8b8f619ec959ab253f722970178.lean/declarations/arithmeticpolynomial--56372e9706e424fe0b267507.md) | 108 | `declaration-track:56372e9706e424fe0b267507d3a7e8eba1c80c3dfd487871f161c7d22dfeaf4c` |
| 9 | `theorem` | [arithmeticPolynomial_real_product](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierDraft/Variantca717292568268f01f086e799291e2117f6ae8b8f619ec959ab253f722970178.lean/declarations/arithmeticpolynomial-real-product--6606ed52a8fdeddce831e269.md) | 111 | `result-track:6606ed52a8fdeddce831e2691fda7ab0ff9f7299a9b3d4cda9b7579439735e83` |
| 10 | `def` | [jointFourierIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierDraft/Variantca717292568268f01f086e799291e2117f6ae8b8f619ec959ab253f722970178.lean/declarations/jointfourierintegrand--67295ee342bf86d4feb6f955.md) | 138 | `declaration-track:67295ee342bf86d4feb6f95590c5954d80f2ef4b92b3f02c1dd0f87448ea11d6` |
| 11 | `theorem` | [jointFourierIntegrand_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierDraft/Variantca717292568268f01f086e799291e2117f6ae8b8f619ec959ab253f722970178.lean/declarations/jointfourierintegrand-eq--47026edc25d7d73c59dace19.md) | 141 | `result-track:47026edc25d7d73c59dace19fe970d3da746f6c4a951a9e6de8c14f204d0757e` |
| 12 | `theorem` | [jointFourierIntegrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierDraft/Variantca717292568268f01f086e799291e2117f6ae8b8f619ec959ab253f722970178.lean/declarations/jointfourierintegrand-integrable--7b611d72b14c84496c6234a7.md) | 154 | `result-track:7b611d72b14c84496c6234a7badafc88b77664818fce1fd69d17c38331e9d759` |
| 13 | `theorem` | [jointFourierIntegrand_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierDraft/Variantca717292568268f01f086e799291e2117f6ae8b8f619ec959ab253f722970178.lean/declarations/jointfourierintegrand-integral--2857fa32d8bb8849dcd76cae.md) | 164 | `result-track:2857fa32d8bb8849dcd76caede4b621c5ad5915845930a3c2a7c80ab095cb343` |
| 14 | `theorem` | [finite_correlation_fourier](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierDraft/Variantca717292568268f01f086e799291e2117f6ae8b8f619ec959ab253f722970178.lean/declarations/finite-correlation-fourier--c854a51ce65f3f57fb73bd5d.md) | 183 | `result-track:c854a51ce65f3f57fb73bd5d39fff19ff162998fb7f2dca0fa193d3e7fccd372` |
| 15 | `theorem` | [finite_hankel_fourier](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierDraft/Variantca717292568268f01f086e799291e2117f6ae8b8f619ec959ab253f722970178.lean/declarations/finite-hankel-fourier--cc24d016f40d457be81ada9a.md) | 198 | `result-track:cc24d016f40d457be81ada9ac7ad713c15af76d25f9ac93f74eb3d4191771ceb` |
| 16 | `theorem` | [joint_phase_is_not_conjugate_phase](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierDraft/Variantca717292568268f01f086e799291e2117f6ae8b8f619ec959ab253f722970178.lean/declarations/joint-phase-is-not-conjugate-phase--361e74b526a1daa0797dac10.md) | 218 | `result-track:361e74b526a1daa0797dac1059e46e8b2d2dd72bdddd7819011f15363726bda5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
