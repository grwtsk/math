# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.LevyConvergence.Variantc00347a429ee88b973976ff260dadfba834260879a0a37011e7bf3c5624ff60a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d52877dd7704ee9fd878cd4035cbe2980bd8cb7a",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/LevyConvergence/Variantc00347a429ee88b973976ff260dadfba834260879a0a37011e7bf3c5624ff60a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/LevyConvergence/Variantc00347a429ee88b973976ff260dadfba834260879a0a37011e7bf3c5624ff60a.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/LevyConvergence/Variantc00347a429ee88b973976ff260dadfba834260879a0a37011e7bf3c5624ff60a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d52877dd7704ee9fd878cd4035cbe2980bd8cb7a`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/LevyConvergence/Variantc00347a429ee88b973976ff260dadfba834260879a0a37011e7bf3c5624ff60a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/LevyConvergence/Variantc00347a429ee88b973976ff260dadfba834260879a0a37011e7bf3c5624ff60a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.CharacteristicFunction.TaylorExpansion` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.IntegralCharFun` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Prokhorov` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.TightNormed` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isTightMeasureSet_of_tendsto_charFun](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/LevyConvergence/Variantc00347a429ee88b973976ff260dadfba834260879a0a37011e7bf3c5624ff60a.lean/declarations/istightmeasureset-of-tendsto-charfun--44fb99ac69ced46091e0057b.md) | 46 | `result-track:44fb99ac69ced46091e0057b82e6c7e0464190c1a3e65e9d554f1f74fd77d6f4` |
| 2 | `lemma` | [ProbabilityMeasure.tendsto_of_tight_of_separatesPoints](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/LevyConvergence/Variantc00347a429ee88b973976ff260dadfba834260879a0a37011e7bf3c5624ff60a.lean/declarations/probabilitymeasure-tendsto-of-tight-of-separatespoints--fba5c10814c46fabec8d3035.md) | 154 | `result-track:fba5c10814c46fabec8d3035179175b41bc23a53caeee2bffa158e28b94d2ad4` |
| 3 | `lemma` | [ProbabilityMeasure.tendsto_charPoly_of_tendsto_charFun](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/LevyConvergence/Variantc00347a429ee88b973976ff260dadfba834260879a0a37011e7bf3c5624ff60a.lean/declarations/probabilitymeasure-tendsto-charpoly-of-tendsto-charfun--66454d37ffb88fc677e049e3.md) | 180 | `result-track:66454d37ffb88fc677e049e38ac965a8d85d1f60f58a449a0458e350c686072b` |
| 4 | `lemma` | [ProbabilityMeasure.tendsto_of_tendsto_charFun](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/LevyConvergence/Variantc00347a429ee88b973976ff260dadfba834260879a0a37011e7bf3c5624ff60a.lean/declarations/probabilitymeasure-tendsto-of-tendsto-charfun--d143554662fa5b092fad7b3c.md) | 203 | `result-track:d143554662fa5b092fad7b3cd072eead66764a871096e48627f2bf97344017a1` |
| 5 | `theorem` | [ProbabilityMeasure.tendsto_iff_tendsto_charFun](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/LevyConvergence/Variantc00347a429ee88b973976ff260dadfba834260879a0a37011e7bf3c5624ff60a.lean/declarations/probabilitymeasure-tendsto-iff-tendsto-charfun--c766617068e3af9204a1fe8b.md) | 216 | `result-track:c766617068e3af9204a1fe8b2d1a5f64aeb3ffe7c06548a65aa4713de790d3eb` |
| 6 | `lemma` | [TendstoInDistribution.of_tendsto_charFun](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/LevyConvergence/Variantc00347a429ee88b973976ff260dadfba834260879a0a37011e7bf3c5624ff60a.lean/declarations/tendstoindistribution-of-tendsto-charfun--b3ea03a3e43309085567e07d.md) | 232 | `result-track:b3ea03a3e43309085567e07d426dc7a46d55d070bb8dbbdf8e07fb5533be4ff3` |
| 7 | `lemma` | [TendstoInDistribution.tendsto_charFun](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/LevyConvergence/Variantc00347a429ee88b973976ff260dadfba834260879a0a37011e7bf3c5624ff60a.lean/declarations/tendstoindistribution-tendsto-charfun--65a4eca20af055c759329f80.md) | 246 | `result-track:65a4eca20af055c759329f80605324a793d87e8e7ce244191082bdaa875a8aa8` |
| 8 | `lemma` | [tendstoInDistribution_iff_tendsto_charFun](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/LevyConvergence/Variantc00347a429ee88b973976ff260dadfba834260879a0a37011e7bf3c5624ff60a.lean/declarations/tendstoindistribution-iff-tendsto-charfun--963bdca1b9f081a249595156.md) | 253 | `result-track:963bdca1b9f081a2495951564ac84eb93c00de0a845460f9144b12f2c1da704b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
