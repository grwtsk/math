# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.LevyConvergence.Variantd9b3d4dabdab4ac969bdc1f2d4a4206075e6092c9f80482f4061a23203259785

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f2366cf31c9f8f13bcedff96ebf62714c1826958",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/LevyConvergence/Variantd9b3d4dabdab4ac969bdc1f2d4a4206075e6092c9f80482f4061a23203259785.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/LevyConvergence/Variantd9b3d4dabdab4ac969bdc1f2d4a4206075e6092c9f80482f4061a23203259785.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/LevyConvergence/Variantd9b3d4dabdab4ac969bdc1f2d4a4206075e6092c9f80482f4061a23203259785.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f2366cf31c9f8f13bcedff96ebf62714c1826958`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/LevyConvergence/Variantd9b3d4dabdab4ac969bdc1f2d4a4206075e6092c9f80482f4061a23203259785.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/LevyConvergence/Variantd9b3d4dabdab4ac969bdc1f2d4a4206075e6092c9f80482f4061a23203259785.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.CharacteristicFunction.TaylorExpansion` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.IntegralCharFun` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Prokhorov` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.TightNormed` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isTightMeasureSet_of_tendsto_charFun](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/LevyConvergence/Variantd9b3d4dabdab4ac969bdc1f2d4a4206075e6092c9f80482f4061a23203259785.lean/declarations/istightmeasureset-of-tendsto-charfun--805d21f7c9952a01c46606f0.md) | 54 | `result-track:805d21f7c9952a01c46606f0103307a8b9a6dffb1c5c6f35037aba2025279fae` |
| 2 | `lemma` | [ProbabilityMeasure.tendsto_of_tight_of_separatesPoints](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/LevyConvergence/Variantd9b3d4dabdab4ac969bdc1f2d4a4206075e6092c9f80482f4061a23203259785.lean/declarations/probabilitymeasure-tendsto-of-tight-of-separatespoints--130f4519fb56d7bcfa57d116.md) | 162 | `result-track:130f4519fb56d7bcfa57d11607201c7806106a6b10d159fbfafaa89552e4c83b` |
| 3 | `lemma` | [ProbabilityMeasure.tendsto_charPoly_of_tendsto_charFun](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/LevyConvergence/Variantd9b3d4dabdab4ac969bdc1f2d4a4206075e6092c9f80482f4061a23203259785.lean/declarations/probabilitymeasure-tendsto-charpoly-of-tendsto-charfun--59822371d14a4f7fb9dcf5e3.md) | 188 | `result-track:59822371d14a4f7fb9dcf5e3903420d838c34d43443ff7d4e645ba839d5551b9` |
| 4 | `lemma` | [ProbabilityMeasure.tendsto_of_tendsto_charFun](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/LevyConvergence/Variantd9b3d4dabdab4ac969bdc1f2d4a4206075e6092c9f80482f4061a23203259785.lean/declarations/probabilitymeasure-tendsto-of-tendsto-charfun--7ea74b2fd11cf323618e36c4.md) | 211 | `result-track:7ea74b2fd11cf323618e36c4c3026b67a10f0cd4954040cb667ed0132c5f346e` |
| 5 | `theorem` | [ProbabilityMeasure.tendsto_iff_tendsto_charFun](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/LevyConvergence/Variantd9b3d4dabdab4ac969bdc1f2d4a4206075e6092c9f80482f4061a23203259785.lean/declarations/probabilitymeasure-tendsto-iff-tendsto-charfun--75f114fb7778586f68d36168.md) | 224 | `result-track:75f114fb7778586f68d361681921e42059e1c1a79e18d7f3183fe46223f66282` |
| 6 | `lemma` | [TendstoInDistribution.of_tendsto_charFun](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/LevyConvergence/Variantd9b3d4dabdab4ac969bdc1f2d4a4206075e6092c9f80482f4061a23203259785.lean/declarations/tendstoindistribution-of-tendsto-charfun--047ae4332ca2d96b80510d24.md) | 240 | `result-track:047ae4332ca2d96b80510d249819b3b5ccd0e0509073c9d5853d4318dc514775` |
| 7 | `lemma` | [TendstoInDistribution.tendsto_charFun](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/LevyConvergence/Variantd9b3d4dabdab4ac969bdc1f2d4a4206075e6092c9f80482f4061a23203259785.lean/declarations/tendstoindistribution-tendsto-charfun--30256364ea71a4906f966b76.md) | 254 | `result-track:30256364ea71a4906f966b76131236a4d7263defabc9355c27f189b4d57e177a` |
| 8 | `lemma` | [tendstoInDistribution_iff_tendsto_charFun](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/LevyConvergence/Variantd9b3d4dabdab4ac969bdc1f2d4a4206075e6092c9f80482f4061a23203259785.lean/declarations/tendstoindistribution-iff-tendsto-charfun--563baa02ca9cd16eb3cca76b.md) | 261 | `result-track:563baa02ca9cd16eb3cca76b5cedb67fbeb4a3d8ce80600f96e87af5539aada9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
