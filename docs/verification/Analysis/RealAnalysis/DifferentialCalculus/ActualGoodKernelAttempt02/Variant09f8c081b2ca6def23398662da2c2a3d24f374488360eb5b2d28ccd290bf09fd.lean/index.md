# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualGoodKernelAttempt02.Variant09f8c081b2ca6def23398662da2c2a3d24f374488360eb5b2d28ccd290bf09fd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "863b3c93b10f6be124886f3c07727c86ba0a7295",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernelAttempt02/Variant09f8c081b2ca6def23398662da2c2a3d24f374488360eb5b2d28ccd290bf09fd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernelAttempt02/Variant09f8c081b2ca6def23398662da2c2a3d24f374488360eb5b2d28ccd290bf09fd.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernelAttempt02/Variant09f8c081b2ca6def23398662da2c2a3d24f374488360eb5b2d28ccd290bf09fd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `863b3c93b10f6be124886f3c07727c86ba0a7295`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernelAttempt02/Variant09f8c081b2ca6def23398662da2c2a3d24f374488360eb5b2d28ccd290bf09fd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernelAttempt02/Variant09f8c081b2ca6def23398662da2c2a3d24f374488360eb5b2d28ccd290bf09fd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LogarithmicSource` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Support` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [actualLogSource_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernelAttempt02/Variant09f8c081b2ca6def23398662da2c2a3d24f374488360eb5b2d28ccd290bf09fd.lean/declarations/actuallogsource-contdiff--bf56516c3213fdd85b951d6c.md) | 26 | `result-track:bf56516c3213fdd85b951d6c4e1a0fb4b38a062d259a30d48d056a3001bcf8cf` |
| 2 | `theorem` | [actualLogSource_deriv_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernelAttempt02/Variant09f8c081b2ca6def23398662da2c2a3d24f374488360eb5b2d28ccd290bf09fd.lean/declarations/actuallogsource-deriv-hascompactsupport--d06685f63cf9720c002a0507.md) | 44 | `result-track:d06685f63cf9720c002a0507b215380f58c22b987af615e8e2c0d21596908fd2` |
| 3 | `theorem` | [actualLogSource_integrable_global](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernelAttempt02/Variant09f8c081b2ca6def23398662da2c2a3d24f374488360eb5b2d28ccd290bf09fd.lean/declarations/actuallogsource-integrable-global--403153f9bcf55e4f9b9afb43.md) | 48 | `result-track:403153f9bcf55e4f9b9afb43b39d2c2ef1c3f215ea2afd34c1b73e60d3eb7f72` |
| 4 | `theorem` | [actualLogSource_weighted_derivative_integrable_global](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernelAttempt02/Variant09f8c081b2ca6def23398662da2c2a3d24f374488360eb5b2d28ccd290bf09fd.lean/declarations/actuallogsource-weighted-derivative-integrable-global--313afc9d43ecaf27f481ff52.md) | 53 | `result-track:313afc9d43ecaf27f481ff528bf7caad7bc8d5ff97c0ae3b5bbfee43e617dcd0` |
| 5 | `theorem` | [actualLogSource_weighted_derivative_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernelAttempt02/Variant09f8c081b2ca6def23398662da2c2a3d24f374488360eb5b2d28ccd290bf09fd.lean/declarations/actuallogsource-weighted-derivative-integrable--b461f5a7b01a7de83a277f65.md) | 60 | `result-track:b461f5a7b01a7de83a277f65781ddb5d77d2c68c55f9b35904f5a81d8b4b4bb9` |
| 6 | `theorem` | [actual_good_kernel_hypotheses](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernelAttempt02/Variant09f8c081b2ca6def23398662da2c2a3d24f374488360eb5b2d28ccd290bf09fd.lean/declarations/actual-good-kernel-hypotheses--0da3c8a46920a436c5b89f45.md) | 64 | `result-track:0da3c8a46920a436c5b89f45aa5f46ca1c1f1c700555654aec017afa20a82611` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
