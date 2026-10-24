# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.IntegralRNDeriv.Variant341a7da9efc5281772fa05d74f5d460d01a471a58707df9ced9de6cac6cfa43b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "131e600f7e05362788c0b3ef5637fb75efc62bd8",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegralRNDeriv/Variant341a7da9efc5281772fa05d74f5d460d01a471a58707df9ced9de6cac6cfa43b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRNDeriv/Variant341a7da9efc5281772fa05d74f5d460d01a471a58707df9ced9de6cac6cfa43b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRNDeriv/Variant341a7da9efc5281772fa05d74f5d460d01a471a58707df9ced9de6cac6cfa43b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `131e600f7e05362788c0b3ef5637fb75efc62bd8`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/IntegralRNDeriv/Variant341a7da9efc5281772fa05d74f5d460d01a471a58707df9ced9de6cac6cfa43b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/IntegralRNDeriv/Variant341a7da9efc5281772fa05d74f5d460d01a471a58707df9ced9de6cac6cfa43b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Continuous` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Integral` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Decomposition.RadonNikodym` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Measure.integrable_toReal_rnDeriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRNDeriv/Variant341a7da9efc5281772fa05d74f5d460d01a471a58707df9ced9de6cac6cfa43b.lean/declarations/measure-integrable-toreal-rnderiv--cd37e13d8f38dcced8ee8861.md) | 37 | `result-track:cd37e13d8f38dcced8ee8861c10f4c32a446361a72088a61e6cbf04ae3999dd4` |
| 2 | `lemma` | [le_integral_rnDeriv_of_ac](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRNDeriv/Variant341a7da9efc5281772fa05d74f5d460d01a471a58707df9ced9de6cac6cfa43b.lean/declarations/le-integral-rnderiv-of-ac--115b50a36e87d07c74689894.md) | 45 | `result-track:115b50a36e87d07c746898946b4389163becad00ecc94e5f1a08f92cb31145d4` |
| 3 | `lemma` | [mul_le_integral_rnDeriv_of_ac](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRNDeriv/Variant341a7da9efc5281772fa05d74f5d460d01a471a58707df9ced9de6cac6cfa43b.lean/declarations/mul-le-integral-rnderiv-of-ac--1cbb7d684f2e5f387edabf67.md) | 67 | `result-track:1cbb7d684f2e5f387edabf67327dcf2b8b05e7118b9d0196aefbe04bd21d9f48` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
