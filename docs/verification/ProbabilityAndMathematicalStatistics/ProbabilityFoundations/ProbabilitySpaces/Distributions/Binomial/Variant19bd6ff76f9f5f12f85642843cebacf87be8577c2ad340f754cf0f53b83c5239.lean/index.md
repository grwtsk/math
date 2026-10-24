# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Distributions.Binomial.Variant19bd6ff76f9f5f12f85642843cebacf87be8577c2ad340f754cf0f53b83c5239

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a39b8f0f0ca5a562b01cf4fc0ef0e3094dcceae",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant19bd6ff76f9f5f12f85642843cebacf87be8577c2ad340f754cf0f53b83c5239.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant19bd6ff76f9f5f12f85642843cebacf87be8577c2ad340f754cf0f53b83c5239.lean/index.md) · [Full source](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant19bd6ff76f9f5f12f85642843cebacf87be8577c2ad340f754cf0f53b83c5239.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a39b8f0f0ca5a562b01cf4fc0ef0e3094dcceae`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant19bd6ff76f9f5f12f85642843cebacf87be8577c2ad340f754cf0f53b83c5239.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant19bd6ff76f9f5f12f85642843cebacf87be8577c2ad340f754cf0f53b83c5239.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Choose.Sum` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.ProbabilityMassFunction.Constructions` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [binomial](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant19bd6ff76f9f5f12f85642843cebacf87be8577c2ad340f754cf0f53b83c5239.lean/declarations/binomial--44fe624b733553aa9dd60f92.md) | 25 | `declaration-track:44fe624b733553aa9dd60f92a10143989f325ba6a342ab1856a439e06ab75c15` |
| 2 | `theorem` | [binomial_apply](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant19bd6ff76f9f5f12f85642843cebacf87be8577c2ad340f754cf0f53b83c5239.lean/declarations/binomial-apply--0d2b073e049b4a768f792efc.md) | 40 | `result-track:0d2b073e049b4a768f792efc40d8f723aada46cd34a30519ead4e3869ebd09a6` |
| 3 | `theorem` | [binomial_apply_zero](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant19bd6ff76f9f5f12f85642843cebacf87be8577c2ad340f754cf0f53b83c5239.lean/declarations/binomial-apply-zero--755c490c5cc01af41c196a32.md) | 46 | `result-track:755c490c5cc01af41c196a3217dc5e8b51954897ef73b63da247b20682b217cf` |
| 4 | `theorem` | [binomial_apply_last](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant19bd6ff76f9f5f12f85642843cebacf87be8577c2ad340f754cf0f53b83c5239.lean/declarations/binomial-apply-last--f6058cb2d830e561c11fbd26.md) | 51 | `result-track:f6058cb2d830e561c11fbd265c1d80807a55e7ed76b194a53c1bc3b03fd05fcf` |
| 5 | `theorem` | [binomial_apply_self](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant19bd6ff76f9f5f12f85642843cebacf87be8577c2ad340f754cf0f53b83c5239.lean/declarations/binomial-apply-self--339c6d3cadc2464445374cc4.md) | 55 | `result-track:339c6d3cadc2464445374cc491797fde7b0586f2738a1842ea3b74fe191630d1` |
| 6 | `theorem` | [binomial_one_eq_bernoulli](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant19bd6ff76f9f5f12f85642843cebacf87be8577c2ad340f754cf0f53b83c5239.lean/declarations/binomial-one-eq-bernoulli--c64834e9aafb0c7547355399.md) | 59 | `result-track:c64834e9aafb0c7547355399a0a480f8bfa654d590b85cd992d85efa62564811` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
