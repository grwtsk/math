# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.CovarianceBilin.Variante60277056c73965c782ffe0b59e6645388bb6c61e1fb3c34ed6dada9e42263e6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b165b0f38ca1f52d783469a98a2885f6182ec81",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variante60277056c73965c782ffe0b59e6645388bb6c61e1fb3c34ed6dada9e42263e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variante60277056c73965c782ffe0b59e6645388bb6c61e1fb3c34ed6dada9e42263e6.lean/index.md) · [Full source](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variante60277056c73965c782ffe0b59e6645388bb6c61e1fb3c34ed6dada9e42263e6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b165b0f38ca1f52d783469a98a2885f6182ec81`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variante60277056c73965c782ffe0b59e6645388bb6c61e1fb3c34ed6dada9e42263e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variante60277056c73965c782ffe0b59e6645388bb6c61e1fb3c34ed6dada9e42263e6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.LocallyConvex.ContinuousOfBounded` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.ContinuousLinearMap` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Moments.Variance` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toLpₗ](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variante60277056c73965c782ffe0b59e6645388bb6c61e1fb3c34ed6dada9e42263e6.lean/declarations/tolp--cc0d25222f5b19f88c11cdef.md) | 62 | `declaration-track:cc0d25222f5b19f88c11cdef6e6b2fdfb75e8705da74afb22f19e201ecc26d8a` |
| 2 | `lemma` | [toLpₗ_apply](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variante60277056c73965c782ffe0b59e6645388bb6c61e1fb3c34ed6dada9e42263e6.lean/declarations/tolp-apply--1b8635c289fe9c9b92395afe.md) | 71 | `result-track:1b8635c289fe9c9b92395afeef9e57e93abcd522b161f432334cb4c25468f5f1` |
| 3 | `lemma` | [toLpₗ_of_not_memLp](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variante60277056c73965c782ffe0b59e6645388bb6c61e1fb3c34ed6dada9e42263e6.lean/declarations/tolp-of-not-memlp--1ce2ffbc26615b1cab9e1183.md) | 76 | `result-track:1ce2ffbc26615b1cab9e1183d24be005f1fe03bad7765d392ed642ece44460f0` |
| 4 | `lemma` | [norm_toLpₗ_le](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variante60277056c73965c782ffe0b59e6645388bb6c61e1fb3c34ed6dada9e42263e6.lean/declarations/norm-tolp-le--69bae7904bd7f685fc06656e.md) | 80 | `result-track:69bae7904bd7f685fc06656e208c599bdf93a7bd57859e3524a800759a52831e` |
| 5 | `def` | [toLp](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variante60277056c73965c782ffe0b59e6645388bb6c61e1fb3c34ed6dada9e42263e6.lean/declarations/tolp--517dc9f8b691e64503da3f57.md) | 136 | `declaration-track:517dc9f8b691e64503da3f57593d843666948ba3ff58f90f490f1bef8366b29c` |
| 6 | `lemma` | [toLp_apply](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variante60277056c73965c782ffe0b59e6645388bb6c61e1fb3c34ed6dada9e42263e6.lean/declarations/tolp-apply--c5a850e13fd970604226915c.md) | 150 | `result-track:c5a850e13fd970604226915cfcff04ea6743c664f3de09e8a443029e5842d764` |
| 7 | `lemma` | [toLp_of_not_memLp](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variante60277056c73965c782ffe0b59e6645388bb6c61e1fb3c34ed6dada9e42263e6.lean/declarations/tolp-of-not-memlp--485faa964c2a93621769a26f.md) | 155 | `result-track:485faa964c2a93621769a26fbc5c07d600c0209d78cb2ed22e25c89c80813522` |
| 8 | `def` | [uncenteredCovarianceBilin](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variante60277056c73965c782ffe0b59e6645388bb6c61e1fb3c34ed6dada9e42263e6.lean/declarations/uncenteredcovariancebilin--b7e3c188e511cba15bc68d1b.md) | 172 | `declaration-track:b7e3c188e511cba15bc68d1b7111e62c5f7ceee7a15c4b66e1d8048093c68046` |
| 9 | `lemma` | [uncenteredCovarianceBilin_apply](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variante60277056c73965c782ffe0b59e6645388bb6c61e1fb3c34ed6dada9e42263e6.lean/declarations/uncenteredcovariancebilin-apply--552f35aaded3aa53ce669422.md) | 176 | `result-track:552f35aaded3aa53ce66942229012cd584e5a7a2f495fd0df598b468a7be1fd1` |
| 10 | `lemma` | [uncenteredCovarianceBilin_of_not_memLp](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variante60277056c73965c782ffe0b59e6645388bb6c61e1fb3c34ed6dada9e42263e6.lean/declarations/uncenteredcovariancebilin-of-not-memlp--c415a2866674907ea30924a4.md) | 186 | `result-track:c415a2866674907ea30924a4ba3f98f1dc0dab45a79e4ce6e4629105c5bff095` |
| 11 | `lemma` | [norm_uncenteredCovarianceBilin_le](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variante60277056c73965c782ffe0b59e6645388bb6c61e1fb3c34ed6dada9e42263e6.lean/declarations/norm-uncenteredcovariancebilin-le--da4c992ecfc7f1b6ac5bb1f4.md) | 190 | `result-track:da4c992ecfc7f1b6ac5bb1f4849ca744ef10ac112b1ec90ef1313c4353b7e953` |
| 12 | `def` | [covarianceBilin](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variante60277056c73965c782ffe0b59e6645388bb6c61e1fb3c34ed6dada9e42263e6.lean/declarations/covariancebilin--001c22318562fb9b04e0e714.md) | 227 | `declaration-track:001c22318562fb9b04e0e714f089fe29301b35c6f2e8ffb860130d173003d235` |
| 13 | `lemma` | [covarianceBilin_of_not_memLp](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variante60277056c73965c782ffe0b59e6645388bb6c61e1fb3c34ed6dada9e42263e6.lean/declarations/covariancebilin-of-not-memlp--d5a2ae8307fd940f9f7f58a3.md) | 231 | `result-track:d5a2ae8307fd940f9f7f58a3bb53af00cc93f167a68283010973fb4d7767e0d9` |
| 14 | `lemma` | [covarianceBilin_apply](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variante60277056c73965c782ffe0b59e6645388bb6c61e1fb3c34ed6dada9e42263e6.lean/declarations/covariancebilin-apply--191f0d7997d99cc52b099827.md) | 242 | `result-track:191f0d7997d99cc52b09982795a67e6df89069c91ba6e33dc399522fa1f6d5af` |
| 15 | `lemma` | [covarianceBilin_same_eq_variance](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variante60277056c73965c782ffe0b59e6645388bb6c61e1fb3c34ed6dada9e42263e6.lean/declarations/covariancebilin-same-eq-variance--7edf5ec36877c8f28b1bc4c5.md) | 250 | `result-track:7edf5ec36877c8f28b1bc4c58b2c8052a703aaba05908c722946b10bee668301` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
