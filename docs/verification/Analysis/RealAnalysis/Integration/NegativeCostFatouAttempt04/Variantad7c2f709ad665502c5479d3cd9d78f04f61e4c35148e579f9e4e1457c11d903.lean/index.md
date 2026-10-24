# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.NegativeCostFatouAttempt04.Variantad7c2f709ad665502c5479d3cd9d78f04f61e4c35148e579f9e4e1457c11d903

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d5743fa385cc9c1db29bd19c8f9d9efd1c896ff",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt04/Variantad7c2f709ad665502c5479d3cd9d78f04f61e4c35148e579f9e4e1457c11d903.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt04/Variantad7c2f709ad665502c5479d3cd9d78f04f61e4c35148e579f9e4e1457c11d903.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt04/Variantad7c2f709ad665502c5479d3cd9d78f04f61e4c35148e579f9e4e1457c11d903.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d5743fa385cc9c1db29bd19c8f9d9efd1c896ff`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt04/Variantad7c2f709ad665502c5479d3cd9d78f04f61e4c35148e579f9e4e1457c11d903.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt04/Variantad7c2f709ad665502c5479d3cd9d78f04f61e4c35148e579f9e4e1457c11d903.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L1Space.Integrable` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integrable_limit_of_nonnegative_uniform_integrals](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt04/Variantad7c2f709ad665502c5479d3cd9d78f04f61e4c35148e579f9e4e1457c11d903.lean/declarations/integrable-limit-of-nonnegative-uniform-integrals--157cd99de168842a236ce816.md) | 24 | `result-track:157cd99de168842a236ce8168dd68525bf4d9337af411f481ed62ed4c0004ee0` |
| 2 | `theorem` | [no_uniform_nonnegative_integrals_of_nonintegrable_limit](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt04/Variantad7c2f709ad665502c5479d3cd9d78f04f61e4c35148e579f9e4e1457c11d903.lean/declarations/no-uniform-nonnegative-integrals-of-nonintegrable-limit--7252254e4cb53eb6ae51e48c.md) | 43 | `result-track:7252254e4cb53eb6ae51e48cff16a609a98fcd537cd3dd982e51273faa0cd8cd` |
| 3 | `theorem` | [not_integrableOn_of_positive_tail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt04/Variantad7c2f709ad665502c5479d3cd9d78f04f61e4c35148e579f9e4e1457c11d903.lean/declarations/not-integrableon-of-positive-tail--ba32c985c49d861a228a7e3a.md) | 54 | `result-track:ba32c985c49d861a228a7e3afa638f6cb5c815e645aa36daecd93f10094f6ddb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
