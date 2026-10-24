# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.IntegralRNDeriv.Variantb4aa8e56d7e9a0721d68893b7f7a95abc527fbb99b927a1d51f76aa50bf95d6e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b91a8863958aec393843482a00a3673d17a728d3",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegralRNDeriv/Variantb4aa8e56d7e9a0721d68893b7f7a95abc527fbb99b927a1d51f76aa50bf95d6e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRNDeriv/Variantb4aa8e56d7e9a0721d68893b7f7a95abc527fbb99b927a1d51f76aa50bf95d6e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRNDeriv/Variantb4aa8e56d7e9a0721d68893b7f7a95abc527fbb99b927a1d51f76aa50bf95d6e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b91a8863958aec393843482a00a3673d17a728d3`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/IntegralRNDeriv/Variantb4aa8e56d7e9a0721d68893b7f7a95abc527fbb99b927a1d51f76aa50bf95d6e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/IntegralRNDeriv/Variantb4aa8e56d7e9a0721d68893b7f7a95abc527fbb99b927a1d51f76aa50bf95d6e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Continuous` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Integral` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Decomposition.RadonNikodym` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Measure.integrable_toReal_rnDeriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRNDeriv/Variantb4aa8e56d7e9a0721d68893b7f7a95abc527fbb99b927a1d51f76aa50bf95d6e.lean/declarations/measure-integrable-toreal-rnderiv--7e1a57b3bb945d20d2c67092.md) | 29 | `result-track:7e1a57b3bb945d20d2c67092c5e9e8795a389cee1d5d88c084e59c6584cdd50c` |
| 2 | `lemma` | [le_integral_rnDeriv_of_ac](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRNDeriv/Variantb4aa8e56d7e9a0721d68893b7f7a95abc527fbb99b927a1d51f76aa50bf95d6e.lean/declarations/le-integral-rnderiv-of-ac--0d91bee69efe4ab8bc1b5f99.md) | 37 | `result-track:0d91bee69efe4ab8bc1b5f995e00859cec64049a8edc9be4b7534184bb853e46` |
| 3 | `lemma` | [mul_le_integral_rnDeriv_of_ac](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRNDeriv/Variantb4aa8e56d7e9a0721d68893b7f7a95abc527fbb99b927a1d51f76aa50bf95d6e.lean/declarations/mul-le-integral-rnderiv-of-ac--57f7d29d1575d3c071e0886f.md) | 59 | `result-track:57f7d29d1575d3c071e0886f4f84e666afacd34fbf91ca87716df42e16fd52ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
