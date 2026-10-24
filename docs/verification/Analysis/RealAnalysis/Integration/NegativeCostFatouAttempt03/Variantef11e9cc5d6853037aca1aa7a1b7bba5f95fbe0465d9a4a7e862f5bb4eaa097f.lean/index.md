# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.NegativeCostFatouAttempt03.Variantef11e9cc5d6853037aca1aa7a1b7bba5f95fbe0465d9a4a7e862f5bb4eaa097f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1726e46d7a2ad93d6cedea111b7ad94d146989c8",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt03/Variantef11e9cc5d6853037aca1aa7a1b7bba5f95fbe0465d9a4a7e862f5bb4eaa097f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt03/Variantef11e9cc5d6853037aca1aa7a1b7bba5f95fbe0465d9a4a7e862f5bb4eaa097f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt03/Variantef11e9cc5d6853037aca1aa7a1b7bba5f95fbe0465d9a4a7e862f5bb4eaa097f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1726e46d7a2ad93d6cedea111b7ad94d146989c8`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt03/Variantef11e9cc5d6853037aca1aa7a1b7bba5f95fbe0465d9a4a7e862f5bb4eaa097f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt03/Variantef11e9cc5d6853037aca1aa7a1b7bba5f95fbe0465d9a4a7e862f5bb4eaa097f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L1Space.Integrable` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integrable_limit_of_nonnegative_uniform_integrals](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt03/Variantef11e9cc5d6853037aca1aa7a1b7bba5f95fbe0465d9a4a7e862f5bb4eaa097f.lean/declarations/integrable-limit-of-nonnegative-uniform-integrals--c45fba9b93553f9004511ecf.md) | 16 | `result-track:c45fba9b93553f9004511ecf49b3c6bea1c55e2e93453c868492af1e1423da6b` |
| 2 | `theorem` | [no_uniform_nonnegative_integrals_of_nonintegrable_limit](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt03/Variantef11e9cc5d6853037aca1aa7a1b7bba5f95fbe0465d9a4a7e862f5bb4eaa097f.lean/declarations/no-uniform-nonnegative-integrals-of-nonintegrable-limit--20ca933c46a5db9e4333c00b.md) | 35 | `result-track:20ca933c46a5db9e4333c00bb9f33c91f19e54211a8ebf562b724fec2f8fa511` |
| 3 | `theorem` | [not_integrableOn_of_positive_tail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt03/Variantef11e9cc5d6853037aca1aa7a1b7bba5f95fbe0465d9a4a7e862f5bb4eaa097f.lean/declarations/not-integrableon-of-positive-tail--dc4ad450f6a62d259dc53fdc.md) | 46 | `result-track:dc4ad450f6a62d259dc53fdca3f8b1667798c6c75ddc557c342ed722e15e5985` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
