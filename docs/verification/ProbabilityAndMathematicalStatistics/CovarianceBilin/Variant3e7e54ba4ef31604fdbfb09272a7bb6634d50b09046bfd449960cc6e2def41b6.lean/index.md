# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.CovarianceBilin.Variant3e7e54ba4ef31604fdbfb09272a7bb6634d50b09046bfd449960cc6e2def41b6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e803c787792e7de9607898e2d7cc85a077cd78d4",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant3e7e54ba4ef31604fdbfb09272a7bb6634d50b09046bfd449960cc6e2def41b6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant3e7e54ba4ef31604fdbfb09272a7bb6634d50b09046bfd449960cc6e2def41b6.lean/index.md) · [Full source](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant3e7e54ba4ef31604fdbfb09272a7bb6634d50b09046bfd449960cc6e2def41b6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e803c787792e7de9607898e2d7cc85a077cd78d4`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant3e7e54ba4ef31604fdbfb09272a7bb6634d50b09046bfd449960cc6e2def41b6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant3e7e54ba4ef31604fdbfb09272a7bb6634d50b09046bfd449960cc6e2def41b6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.LocallyConvex.ContinuousOfBounded` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.ContinuousLinearMap` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Moments.Variance` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toLpₗ](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant3e7e54ba4ef31604fdbfb09272a7bb6634d50b09046bfd449960cc6e2def41b6.lean/declarations/tolp--683fbfdb55d12d997600d49f.md) | 54 | `declaration-track:683fbfdb55d12d997600d49f7b8b4dbdf20bf1b19249eef2ec47b88b5a4ee53d` |
| 2 | `lemma` | [toLpₗ_apply](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant3e7e54ba4ef31604fdbfb09272a7bb6634d50b09046bfd449960cc6e2def41b6.lean/declarations/tolp-apply--525cc0b649e747c94b03874e.md) | 63 | `result-track:525cc0b649e747c94b03874e6a4603913e41fcb83c1cc5d971806df77817b873` |
| 3 | `lemma` | [toLpₗ_of_not_memLp](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant3e7e54ba4ef31604fdbfb09272a7bb6634d50b09046bfd449960cc6e2def41b6.lean/declarations/tolp-of-not-memlp--350323615ce88ba49efe3635.md) | 68 | `result-track:350323615ce88ba49efe3635ab6546ee440b8f12c1c9a01d177545c872c501e8` |
| 4 | `lemma` | [norm_toLpₗ_le](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant3e7e54ba4ef31604fdbfb09272a7bb6634d50b09046bfd449960cc6e2def41b6.lean/declarations/norm-tolp-le--a1e9f5dbaf40492bda83e0db.md) | 72 | `result-track:a1e9f5dbaf40492bda83e0dbe6e1ea7c0752be0161b52338a72268e359718976` |
| 5 | `def` | [toLp](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant3e7e54ba4ef31604fdbfb09272a7bb6634d50b09046bfd449960cc6e2def41b6.lean/declarations/tolp--746f14de259c02703c97512c.md) | 128 | `declaration-track:746f14de259c02703c97512cb4560aaf96f5481ea137cab332de14225fbc2e0a` |
| 6 | `lemma` | [toLp_apply](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant3e7e54ba4ef31604fdbfb09272a7bb6634d50b09046bfd449960cc6e2def41b6.lean/declarations/tolp-apply--d17440dc83567ce4aaa0b10c.md) | 142 | `result-track:d17440dc83567ce4aaa0b10c6c358815bdbdcadcc56683e597872762418e67ae` |
| 7 | `lemma` | [toLp_of_not_memLp](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant3e7e54ba4ef31604fdbfb09272a7bb6634d50b09046bfd449960cc6e2def41b6.lean/declarations/tolp-of-not-memlp--e40df8a6d33f9e916489f1ab.md) | 147 | `result-track:e40df8a6d33f9e916489f1ab2d6141a84e61f6143aa047aa23929f4af16449c1` |
| 8 | `def` | [uncenteredCovarianceBilin](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant3e7e54ba4ef31604fdbfb09272a7bb6634d50b09046bfd449960cc6e2def41b6.lean/declarations/uncenteredcovariancebilin--aad3879cacdc7944f09a0ce1.md) | 164 | `declaration-track:aad3879cacdc7944f09a0ce18639de1f766a024f2a1385c8b7b8c5ad0c931d0c` |
| 9 | `lemma` | [uncenteredCovarianceBilin_apply](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant3e7e54ba4ef31604fdbfb09272a7bb6634d50b09046bfd449960cc6e2def41b6.lean/declarations/uncenteredcovariancebilin-apply--08306561d07aadaf67c8ac75.md) | 168 | `result-track:08306561d07aadaf67c8ac75d5161af478d228054d67558ddf2dd61e1433eaeb` |
| 10 | `lemma` | [uncenteredCovarianceBilin_of_not_memLp](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant3e7e54ba4ef31604fdbfb09272a7bb6634d50b09046bfd449960cc6e2def41b6.lean/declarations/uncenteredcovariancebilin-of-not-memlp--fd9f608156a67a278a865988.md) | 178 | `result-track:fd9f608156a67a278a865988d2589f3bb02a13d3c114d583232d90f2fdc8a9bd` |
| 11 | `lemma` | [norm_uncenteredCovarianceBilin_le](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant3e7e54ba4ef31604fdbfb09272a7bb6634d50b09046bfd449960cc6e2def41b6.lean/declarations/norm-uncenteredcovariancebilin-le--357ebf76cd65721d7392a427.md) | 182 | `result-track:357ebf76cd65721d7392a427ce8bff16b76687a869d0994d31f28dd44a586aba` |
| 12 | `def` | [covarianceBilin](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant3e7e54ba4ef31604fdbfb09272a7bb6634d50b09046bfd449960cc6e2def41b6.lean/declarations/covariancebilin--5c88bbb0621b965cf6ddd64d.md) | 219 | `declaration-track:5c88bbb0621b965cf6ddd64df680fc26592d56b1b2432fb63e2b2288336a305e` |
| 13 | `lemma` | [covarianceBilin_of_not_memLp](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant3e7e54ba4ef31604fdbfb09272a7bb6634d50b09046bfd449960cc6e2def41b6.lean/declarations/covariancebilin-of-not-memlp--131f5633a3c73cf1aa863c47.md) | 223 | `result-track:131f5633a3c73cf1aa863c47f7a14dfbfb02a694058bfc2329455a9a04a388dd` |
| 14 | `lemma` | [covarianceBilin_apply](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant3e7e54ba4ef31604fdbfb09272a7bb6634d50b09046bfd449960cc6e2def41b6.lean/declarations/covariancebilin-apply--cdd8c86325291de7b0c36527.md) | 234 | `result-track:cdd8c86325291de7b0c365274a7c8fd1490bcf04d09014c69d8b6a350331fb74` |
| 15 | `lemma` | [covarianceBilin_same_eq_variance](../../../../mathematics/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant3e7e54ba4ef31604fdbfb09272a7bb6634d50b09046bfd449960cc6e2def41b6.lean/declarations/covariancebilin-same-eq-variance--943a323c5d49c5615676d791.md) | 242 | `result-track:943a323c5d49c5615676d7918db6da043e9c4066db155b37c8a9bd1d311e54e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
