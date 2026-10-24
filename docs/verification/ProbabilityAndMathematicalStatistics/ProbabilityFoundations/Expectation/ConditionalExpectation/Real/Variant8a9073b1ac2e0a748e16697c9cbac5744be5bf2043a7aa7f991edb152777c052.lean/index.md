# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.ConditionalExpectation.Real.Variant8a9073b1ac2e0a748e16697c9cbac5744be5bf2043a7aa7f991edb152777c052

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b235c9258850a66d1d5c442b2d864d98c1788c2d",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant8a9073b1ac2e0a748e16697c9cbac5744be5bf2043a7aa7f991edb152777c052.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant8a9073b1ac2e0a748e16697c9cbac5744be5bf2043a7aa7f991edb152777c052.lean/index.md) · [Full source](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant8a9073b1ac2e0a748e16697c9cbac5744be5bf2043a7aa7f991edb152777c052.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b235c9258850a66d1d5c442b2d864d98c1788c2d`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant8a9073b1ac2e0a748e16697c9cbac5744be5bf2043a7aa7f991edb152777c052.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant8a9073b1ac2e0a748e16697c9cbac5744be5bf2043a7aa7f991edb152777c052.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.ConditionalExpectation.Indicator` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.UniformIntegrable` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.VectorMeasure.Decomposition.RadonNikodym` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rnDeriv_ae_eq_condExp](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant8a9073b1ac2e0a748e16697c9cbac5744be5bf2043a7aa7f991edb152777c052.lean/declarations/rnderiv-ae-eq-condexp--73791b5910220f29a6c6fbc9.md) | 46 | `result-track:73791b5910220f29a6c6fbc9a50e3ed5d3e469da82d56241bb2b7b1dbb751605` |
| 2 | `theorem` | [eLpNorm_one_condExp_le_eLpNorm](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant8a9073b1ac2e0a748e16697c9cbac5744be5bf2043a7aa7f991edb152777c052.lean/declarations/elpnorm-one-condexp-le-elpnorm--04bf7a7000f7a28d2412b1ad.md) | 66 | `result-track:04bf7a7000f7a28d2412b1add039dce82e71c2ccd1ee8600a641c774b9221cb0` |
| 3 | `theorem` | [integral_abs_condExp_le](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant8a9073b1ac2e0a748e16697c9cbac5744be5bf2043a7aa7f991edb152777c052.lean/declarations/integral-abs-condexp-le--97af9f7028b3769dbddeaf04.md) | 101 | `result-track:97af9f7028b3769dbddeaf04e1643bac938dd3aecddaecdcf2208e154a192934` |
| 4 | `theorem` | [setIntegral_abs_condExp_le](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant8a9073b1ac2e0a748e16697c9cbac5744be5bf2043a7aa7f991edb152777c052.lean/declarations/setintegral-abs-condexp-le--5b0f1236261208daa8f34009.md) | 125 | `result-track:5b0f1236261208daa8f34009c25ffb43ff1367739fbe9542849d7fd4699db06d` |
| 5 | `theorem` | [ae_bdd_condExp_of_ae_bdd](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant8a9073b1ac2e0a748e16697c9cbac5744be5bf2043a7aa7f991edb152777c052.lean/declarations/ae-bdd-condexp-of-ae-bdd--0d76fe69bf8dba19700d6e11.md) | 153 | `result-track:0d76fe69bf8dba19700d6e11f38effd616ff153b7570faf3f96edb5dbe630d28` |
| 6 | `theorem` | [Integrable.uniformIntegrable_condExp](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant8a9073b1ac2e0a748e16697c9cbac5744be5bf2043a7aa7f991edb152777c052.lean/declarations/integrable-uniformintegrable-condexp--fb3e278682e3ac8ef537d433.md) | 190 | `result-track:fb3e278682e3ac8ef537d4331d91d0335329ad3360acd99a83e67fcf5ec1071d` |
| 7 | `theorem` | [condExp_stronglyMeasurable_simpleFunc_mul](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant8a9073b1ac2e0a748e16697c9cbac5744be5bf2043a7aa7f991edb152777c052.lean/declarations/condexp-stronglymeasurable-simplefunc-mul--032f5c13f08bdcba35c651f2.md) | 242 | `result-track:032f5c13f08bdcba35c651f2c9f6245de1c3554d63871ac5ba4d5b94a932eaad` |
| 8 | `theorem` | [condExp_stronglyMeasurable_mul_of_bound](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant8a9073b1ac2e0a748e16697c9cbac5744be5bf2043a7aa7f991edb152777c052.lean/declarations/condexp-stronglymeasurable-mul-of-bound--57b07af22bce5d44927e1158.md) | 271 | `result-track:57b07af22bce5d44927e115828d7a517a1ac8f6ff9012b95d276f5e39256cce8` |
| 9 | `theorem` | [condExp_stronglyMeasurable_mul_of_bound₀](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant8a9073b1ac2e0a748e16697c9cbac5744be5bf2043a7aa7f991edb152777c052.lean/declarations/condexp-stronglymeasurable-mul-of-bound--499e198e416802bad36e8f99.md) | 317 | `result-track:499e198e416802bad36e8f994f4eeffbb8386b27b60ca94f645680a938388edf` |
| 10 | `theorem` | [condExp_mul_of_stronglyMeasurable_left](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant8a9073b1ac2e0a748e16697c9cbac5744be5bf2043a7aa7f991edb152777c052.lean/declarations/condexp-mul-of-stronglymeasurable-left--04bb17c241e3a710feb1d8ce.md) | 333 | `result-track:04bb17c241e3a710feb1d8ce8e3e3fa8c63ac0b6138ce18e85684f96ad959d10` |
| 11 | `lemma` | [condExp_mul_of_stronglyMeasurable_right](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant8a9073b1ac2e0a748e16697c9cbac5744be5bf2043a7aa7f991edb152777c052.lean/declarations/condexp-mul-of-stronglymeasurable-right--959072762f8121a8f056a689.md) | 373 | `result-track:959072762f8121a8f056a6892b8bd0a60b84dfc62ca40e8f8f124c9287ac86e2` |
| 12 | `theorem` | [condExp_mul_of_aestronglyMeasurable_left](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant8a9073b1ac2e0a748e16697c9cbac5744be5bf2043a7aa7f991edb152777c052.lean/declarations/condexp-mul-of-aestronglymeasurable-left--25a3912545eeab97d8b05da6.md) | 378 | `result-track:25a3912545eeab97d8b05da60a38632105444efd06dd9dd70910a743b0c68882` |
| 13 | `lemma` | [condExp_mul_of_aestronglyMeasurable_right](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant8a9073b1ac2e0a748e16697c9cbac5744be5bf2043a7aa7f991edb152777c052.lean/declarations/condexp-mul-of-aestronglymeasurable-right--3678c2efcaf0d694f8820716.md) | 392 | `result-track:3678c2efcaf0d694f882071640b1dadddae8ae9a0fcab2b89b7d664da090e376` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
