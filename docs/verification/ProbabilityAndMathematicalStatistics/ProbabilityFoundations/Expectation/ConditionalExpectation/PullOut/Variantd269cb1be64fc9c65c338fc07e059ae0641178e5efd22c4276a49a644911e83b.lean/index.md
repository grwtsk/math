# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.ConditionalExpectation.PullOut.Variantd269cb1be64fc9c65c338fc07e059ae0641178e5efd22c4276a49a644911e83b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9749dbee01c2ecd1d24e345fe436fec40718ac1",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantd269cb1be64fc9c65c338fc07e059ae0641178e5efd22c4276a49a644911e83b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantd269cb1be64fc9c65c338fc07e059ae0641178e5efd22c4276a49a644911e83b.lean/index.md) · [Full source](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantd269cb1be64fc9c65c338fc07e059ae0641178e5efd22c4276a49a644911e83b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9749dbee01c2ecd1d24e345fe436fec40718ac1`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantd269cb1be64fc9c65c338fc07e059ae0641178e5efd22c4276a49a644911e83b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantd269cb1be64fc9c65c338fc07e059ae0641178e5efd22c4276a49a644911e83b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.ConditionalExpectation.Indicator` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.Holder` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [condExp_stronglyMeasurable_simpleFunc_bilin](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantd269cb1be64fc9c65c338fc07e059ae0641178e5efd22c4276a49a644911e83b.lean/declarations/condexp-stronglymeasurable-simplefunc-bilin--64dd73c0dd4bcfb98c29f2c2.md) | 52 | `result-track:64dd73c0dd4bcfb98c29f2c2a2ad58e8531bad6d95e34f3beb5f235d3242180e` |
| 2 | `theorem` | [condExp_stronglyMeasurable_bilin_of_bound](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantd269cb1be64fc9c65c338fc07e059ae0641178e5efd22c4276a49a644911e83b.lean/declarations/condexp-stronglymeasurable-bilin-of-bound--51c29eea8622b0c27fb86082.md) | 85 | `result-track:51c29eea8622b0c27fb8608287986cd20591cdf2ce2ba1c31b59e7f6dd1b7361` |
| 3 | `theorem` | [condExp_aestronglyMeasurable_bilin_of_bound](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantd269cb1be64fc9c65c338fc07e059ae0641178e5efd22c4276a49a644911e83b.lean/declarations/condexp-aestronglymeasurable-bilin-of-bound--cc826a2f3726d98289b531ea.md) | 134 | `result-track:cc826a2f3726d98289b531eabdded79eabbd16375bfcb25e53d72c14a3c1988e` |
| 4 | `theorem` | [condExp_bilin_of_stronglyMeasurable_left](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantd269cb1be64fc9c65c338fc07e059ae0641178e5efd22c4276a49a644911e83b.lean/declarations/condexp-bilin-of-stronglymeasurable-left--d967f71285a6318f290a0063.md) | 151 | `result-track:d967f71285a6318f290a0063e6b0016c06360e6c57cdccbea9179bbe6436d162` |
| 5 | `theorem` | [condExp_bilin_of_stronglyMeasurable_right](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantd269cb1be64fc9c65c338fc07e059ae0641178e5efd22c4276a49a644911e83b.lean/declarations/condexp-bilin-of-stronglymeasurable-right--244ebf76bac88f5e8ff9a161.md) | 191 | `result-track:244ebf76bac88f5e8ff9a161ab7322cf8e566764c0d97b1a4cdb1fc380d7335e` |
| 6 | `theorem` | [condExp_bilin_of_aestronglyMeasurable_left](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantd269cb1be64fc9c65c338fc07e059ae0641178e5efd22c4276a49a644911e83b.lean/declarations/condexp-bilin-of-aestronglymeasurable-left--fd90ea30442026100bf24a8d.md) | 199 | `result-track:fd90ea30442026100bf24a8db7df8da44b68bec422235632a42ec96ab6d3fd8c` |
| 7 | `theorem` | [condExp_bilin_of_aestronglyMeasurable_right](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantd269cb1be64fc9c65c338fc07e059ae0641178e5efd22c4276a49a644911e83b.lean/declarations/condexp-bilin-of-aestronglymeasurable-right--0fccfe1a9a4f51168fac1a99.md) | 215 | `result-track:0fccfe1a9a4f51168fac1a9969c448017b917af7ed5b483e6a8e7ab94fc2a617` |
| 8 | `theorem` | [condExp_smul_of_aestronglyMeasurable_left](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantd269cb1be64fc9c65c338fc07e059ae0641178e5efd22c4276a49a644911e83b.lean/declarations/condexp-smul-of-aestronglymeasurable-left--7989e95aba6b23fb2a5b12ca.md) | 223 | `result-track:7989e95aba6b23fb2a5b12ca07bef8cbccc22f7470d85589fa066d1d2d47a1fa` |
| 9 | `theorem` | [condExp_smul_of_aestronglyMeasurable_right](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantd269cb1be64fc9c65c338fc07e059ae0641178e5efd22c4276a49a644911e83b.lean/declarations/condexp-smul-of-aestronglymeasurable-right--be97dce38416556c33bc4ffc.md) | 229 | `result-track:be97dce38416556c33bc4ffc7bb0980b40faa074b06222649a79ff9e21fd02bd` |
| 10 | `theorem` | [condExp_mul_of_aestronglyMeasurable_left](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantd269cb1be64fc9c65c338fc07e059ae0641178e5efd22c4276a49a644911e83b.lean/declarations/condexp-mul-of-aestronglymeasurable-left--7b8273a0805b0e7d129de593.md) | 235 | `result-track:7b8273a0805b0e7d129de593938175777bf3feb6470dcb36fb0461bbb5a3474d` |
| 11 | `theorem` | [condExp_mul_of_aestronglyMeasurable_right](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantd269cb1be64fc9c65c338fc07e059ae0641178e5efd22c4276a49a644911e83b.lean/declarations/condexp-mul-of-aestronglymeasurable-right--02ad3037cc115d9cf4fca9fc.md) | 240 | `result-track:02ad3037cc115d9cf4fca9fc3b69a9320f032f2b07124bf030eef4c8d0ba847b` |
| 12 | `theorem` | [condExp_mul_of_stronglyMeasurable_left](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantd269cb1be64fc9c65c338fc07e059ae0641178e5efd22c4276a49a644911e83b.lean/declarations/condexp-mul-of-stronglymeasurable-left--d56161b89cb8bdb281fdf5dc.md) | 245 | `result-track:d56161b89cb8bdb281fdf5dc514ad0c7a751c079409d52c86e8453278eabbdf7` |
| 13 | `lemma` | [condExp_mul_of_stronglyMeasurable_right](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantd269cb1be64fc9c65c338fc07e059ae0641178e5efd22c4276a49a644911e83b.lean/declarations/condexp-mul-of-stronglymeasurable-right--7990973ef96a360edf755b0f.md) | 251 | `result-track:7990973ef96a360edf755b0f3d646aa8157d75f6767f2c070099857c86fdc1a3` |
| 14 | `theorem` | [condExp_stronglyMeasurable_simpleFunc_mul](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantd269cb1be64fc9c65c338fc07e059ae0641178e5efd22c4276a49a644911e83b.lean/declarations/condexp-stronglymeasurable-simplefunc-mul--b31dfca054a208374f5dea9e.md) | 256 | `result-track:b31dfca054a208374f5dea9ef3a61fdd78c63372a982594e1374b279e9d7889d` |
| 15 | `theorem` | [condExp_stronglyMeasurable_mul_of_bound](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantd269cb1be64fc9c65c338fc07e059ae0641178e5efd22c4276a49a644911e83b.lean/declarations/condexp-stronglymeasurable-mul-of-bound--439cfbdafb5bac22c3d4516f.md) | 260 | `result-track:439cfbdafb5bac22c3d4516fec6d0ae589ec5ccc1c1d3ccf144f166f669a385e` |
| 16 | `theorem` | [condExp_stronglyMeasurable_mul_of_bound₀](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantd269cb1be64fc9c65c338fc07e059ae0641178e5efd22c4276a49a644911e83b.lean/declarations/condexp-stronglymeasurable-mul-of-bound--a976922b2446fe6c4ee7c8ca.md) | 265 | `result-track:a976922b2446fe6c4ee7c8cafdab312cd89e825ab4f3fe01c5e20b1f9cf9fa65` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
