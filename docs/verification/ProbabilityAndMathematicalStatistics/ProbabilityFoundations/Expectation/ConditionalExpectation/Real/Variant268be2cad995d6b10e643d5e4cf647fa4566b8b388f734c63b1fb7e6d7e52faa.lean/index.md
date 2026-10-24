# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.ConditionalExpectation.Real.Variant268be2cad995d6b10e643d5e4cf647fa4566b8b388f734c63b1fb7e6d7e52faa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b12b87175f99e52c18f5259e5d3d9517eefebca",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant268be2cad995d6b10e643d5e4cf647fa4566b8b388f734c63b1fb7e6d7e52faa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant268be2cad995d6b10e643d5e4cf647fa4566b8b388f734c63b1fb7e6d7e52faa.lean/index.md) · [Full source](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant268be2cad995d6b10e643d5e4cf647fa4566b8b388f734c63b1fb7e6d7e52faa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b12b87175f99e52c18f5259e5d3d9517eefebca`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant268be2cad995d6b10e643d5e4cf647fa4566b8b388f734c63b1fb7e6d7e52faa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant268be2cad995d6b10e643d5e4cf647fa4566b8b388f734c63b1fb7e6d7e52faa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.ConditionalExpectation.Indicator` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.UniformIntegrable` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.VectorMeasure.Decomposition.RadonNikodym` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rnDeriv_ae_eq_condExp](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant268be2cad995d6b10e643d5e4cf647fa4566b8b388f734c63b1fb7e6d7e52faa.lean/declarations/rnderiv-ae-eq-condexp--e677fe2a51627b4900f6bf51.md) | 38 | `result-track:e677fe2a51627b4900f6bf5153b1021b7f309f2b353f25e22eba0be576c31610` |
| 2 | `theorem` | [eLpNorm_one_condExp_le_eLpNorm](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant268be2cad995d6b10e643d5e4cf647fa4566b8b388f734c63b1fb7e6d7e52faa.lean/declarations/elpnorm-one-condexp-le-elpnorm--5bee19c750fa1f0bc9084f65.md) | 58 | `result-track:5bee19c750fa1f0bc9084f65a038902e2198210d1343cfbe49b99a11eaef399a` |
| 3 | `theorem` | [integral_abs_condExp_le](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant268be2cad995d6b10e643d5e4cf647fa4566b8b388f734c63b1fb7e6d7e52faa.lean/declarations/integral-abs-condexp-le--f7a3eb0992b6731e4d24feb9.md) | 93 | `result-track:f7a3eb0992b6731e4d24feb9144c649a1a2a75caf97a39b9718e4de02cc5d496` |
| 4 | `theorem` | [setIntegral_abs_condExp_le](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant268be2cad995d6b10e643d5e4cf647fa4566b8b388f734c63b1fb7e6d7e52faa.lean/declarations/setintegral-abs-condexp-le--3bd681dcf187e5d76c7b472e.md) | 117 | `result-track:3bd681dcf187e5d76c7b472edc26d5bf06c64121dd932fe0a657a86306927726` |
| 5 | `theorem` | [ae_bdd_condExp_of_ae_bdd](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant268be2cad995d6b10e643d5e4cf647fa4566b8b388f734c63b1fb7e6d7e52faa.lean/declarations/ae-bdd-condexp-of-ae-bdd--fe1191468a8b76b60d0f53f0.md) | 145 | `result-track:fe1191468a8b76b60d0f53f0b6a275d5d2ff7107c0a48ecc596bf35971e10211` |
| 6 | `theorem` | [Integrable.uniformIntegrable_condExp](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant268be2cad995d6b10e643d5e4cf647fa4566b8b388f734c63b1fb7e6d7e52faa.lean/declarations/integrable-uniformintegrable-condexp--495c3c546a32f1bb95b82858.md) | 182 | `result-track:495c3c546a32f1bb95b828587bcc0413aa229a13a88008281dfa1fd56091b31e` |
| 7 | `theorem` | [condExp_stronglyMeasurable_simpleFunc_mul](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant268be2cad995d6b10e643d5e4cf647fa4566b8b388f734c63b1fb7e6d7e52faa.lean/declarations/condexp-stronglymeasurable-simplefunc-mul--99405bb5c73a2ecb9e3c92aa.md) | 234 | `result-track:99405bb5c73a2ecb9e3c92aa49bd75153dba31fb1689d31286de835b6d4b7386` |
| 8 | `theorem` | [condExp_stronglyMeasurable_mul_of_bound](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant268be2cad995d6b10e643d5e4cf647fa4566b8b388f734c63b1fb7e6d7e52faa.lean/declarations/condexp-stronglymeasurable-mul-of-bound--4ae189042a3224161d495538.md) | 263 | `result-track:4ae189042a3224161d49553841c4ba8b88562e29cfb914e8b069b8889824df8a` |
| 9 | `theorem` | [condExp_stronglyMeasurable_mul_of_bound₀](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant268be2cad995d6b10e643d5e4cf647fa4566b8b388f734c63b1fb7e6d7e52faa.lean/declarations/condexp-stronglymeasurable-mul-of-bound--e552572d03df8995a499bf72.md) | 309 | `result-track:e552572d03df8995a499bf722c7b1dd537f3994e462db1080b93c9b31a6edc8a` |
| 10 | `theorem` | [condExp_mul_of_stronglyMeasurable_left](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant268be2cad995d6b10e643d5e4cf647fa4566b8b388f734c63b1fb7e6d7e52faa.lean/declarations/condexp-mul-of-stronglymeasurable-left--a707eb1c858630975c8aeb06.md) | 325 | `result-track:a707eb1c858630975c8aeb06f7ad5357d01b96178bf273c2c1f6b3717b3aadd4` |
| 11 | `lemma` | [condExp_mul_of_stronglyMeasurable_right](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant268be2cad995d6b10e643d5e4cf647fa4566b8b388f734c63b1fb7e6d7e52faa.lean/declarations/condexp-mul-of-stronglymeasurable-right--29b63f6df0df95140d179bda.md) | 365 | `result-track:29b63f6df0df95140d179bdabf9f39e6ace5b8403347438a25968655c51f7d3a` |
| 12 | `theorem` | [condExp_mul_of_aestronglyMeasurable_left](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant268be2cad995d6b10e643d5e4cf647fa4566b8b388f734c63b1fb7e6d7e52faa.lean/declarations/condexp-mul-of-aestronglymeasurable-left--6020f10c02344c02de1ea0ca.md) | 370 | `result-track:6020f10c02344c02de1ea0ca2451808eeed59717d5bf77e709b25383eec4cfe2` |
| 13 | `lemma` | [condExp_mul_of_aestronglyMeasurable_right](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant268be2cad995d6b10e643d5e4cf647fa4566b8b388f734c63b1fb7e6d7e52faa.lean/declarations/condexp-mul-of-aestronglymeasurable-right--d0c852fdd6707fb54c301226.md) | 384 | `result-track:d0c852fdd6707fb54c3012262e1f3331c8b24d38b9aa0c6ae27e84337581509c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
