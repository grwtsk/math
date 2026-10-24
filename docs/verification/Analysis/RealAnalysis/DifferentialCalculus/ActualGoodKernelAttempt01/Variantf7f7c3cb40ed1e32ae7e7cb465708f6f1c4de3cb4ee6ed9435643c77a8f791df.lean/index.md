# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualGoodKernelAttempt01.Variantf7f7c3cb40ed1e32ae7e7cb465708f6f1c4de3cb4ee6ed9435643c77a8f791df

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a65ca8ae6bef8ef534addf673f629d27537ac73b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernelAttempt01/Variantf7f7c3cb40ed1e32ae7e7cb465708f6f1c4de3cb4ee6ed9435643c77a8f791df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernelAttempt01/Variantf7f7c3cb40ed1e32ae7e7cb465708f6f1c4de3cb4ee6ed9435643c77a8f791df.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernelAttempt01/Variantf7f7c3cb40ed1e32ae7e7cb465708f6f1c4de3cb4ee6ed9435643c77a8f791df.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a65ca8ae6bef8ef534addf673f629d27537ac73b`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernelAttempt01/Variantf7f7c3cb40ed1e32ae7e7cb465708f6f1c4de3cb4ee6ed9435643c77a8f791df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernelAttempt01/Variantf7f7c3cb40ed1e32ae7e7cb465708f6f1c4de3cb4ee6ed9435643c77a8f791df.lean.json)

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
| 1 | `theorem` | [actualLogSource_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernelAttempt01/Variantf7f7c3cb40ed1e32ae7e7cb465708f6f1c4de3cb4ee6ed9435643c77a8f791df.lean/declarations/actuallogsource-contdiff--7011a470800a2be192053739.md) | 26 | `result-track:7011a470800a2be192053739ab9c61c365a4cee88b98196d320bdf54ce624b73` |
| 2 | `theorem` | [actualLogSource_deriv_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernelAttempt01/Variantf7f7c3cb40ed1e32ae7e7cb465708f6f1c4de3cb4ee6ed9435643c77a8f791df.lean/declarations/actuallogsource-deriv-hascompactsupport--14fbbec364ea10ffe6c43753.md) | 43 | `result-track:14fbbec364ea10ffe6c437539c370350a251895f2df7de003e0456992c841997` |
| 3 | `theorem` | [actualLogSource_integrable_global](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernelAttempt01/Variantf7f7c3cb40ed1e32ae7e7cb465708f6f1c4de3cb4ee6ed9435643c77a8f791df.lean/declarations/actuallogsource-integrable-global--16b2c168d61e0bab03091c8a.md) | 47 | `result-track:16b2c168d61e0bab03091c8a9f431157b53cb23fce7e2c717dca30c40ad144e2` |
| 4 | `theorem` | [actualLogSource_weighted_derivative_integrable_global](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernelAttempt01/Variantf7f7c3cb40ed1e32ae7e7cb465708f6f1c4de3cb4ee6ed9435643c77a8f791df.lean/declarations/actuallogsource-weighted-derivative-integrable-global--8f37b3dba085dde6000fc8ed.md) | 52 | `result-track:8f37b3dba085dde6000fc8ed6db1edb09b76badf9e9e87c800a508ee0973dbd4` |
| 5 | `theorem` | [actualLogSource_weighted_derivative_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernelAttempt01/Variantf7f7c3cb40ed1e32ae7e7cb465708f6f1c4de3cb4ee6ed9435643c77a8f791df.lean/declarations/actuallogsource-weighted-derivative-integrable--7f90bf65406b11b681fb597f.md) | 59 | `result-track:7f90bf65406b11b681fb597fc8b31a7184490a32e5da0dad8282769da0b9ec74` |
| 6 | `theorem` | [actual_good_kernel_hypotheses](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernelAttempt01/Variantf7f7c3cb40ed1e32ae7e7cb465708f6f1c4de3cb4ee6ed9435643c77a8f791df.lean/declarations/actual-good-kernel-hypotheses--58d67ec8f1b917229e238892.md) | 63 | `result-track:58d67ec8f1b917229e2388929652bbb04e0c0fe0714e7de7bb72a113dd7e69cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
