# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.KernelSeries.Variantf093989b7966c722d1309212c7ea515f1c7bb6f7618cb60ad9095a33ddbab7c0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "21185b81d181b04a5707cca520bd6eb5df765f57",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/KernelSeries/Variantf093989b7966c722d1309212c7ea515f1c7bb6f7618cb60ad9095a33ddbab7c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/KernelSeries/Variantf093989b7966c722d1309212c7ea515f1c7bb6f7618cb60ad9095a33ddbab7c0.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/KernelSeries/Variantf093989b7966c722d1309212c7ea515f1c7bb6f7618cb60ad9095a33ddbab7c0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `21185b81d181b04a5707cca520bd6eb5df765f57`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/KernelSeries/Variantf093989b7966c722d1309212c7ea515f1c7bb6f7618cb60ad9095a33ddbab7c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/KernelSeries/Variantf093989b7966c722d1309212c7ea515f1c7bb6f7618cb60ad9095a33ddbab7c0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.Polish.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [nonnegative_kernel_series_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/KernelSeries/Variantf093989b7966c722d1309212c7ea515f1c7bb6f7618cb60ad9095a33ddbab7c0.lean/declarations/nonnegative-kernel-series-integrable--199e7e105d83b5278bfe8226.md) | 15 | `result-track:199e7e105d83b5278bfe8226fd70af265f6f9d6fe6a304a64908337e571c68fa` |
| 2 | `theorem` | [nonnegative_kernel_series_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/KernelSeries/Variantf093989b7966c722d1309212c7ea515f1c7bb6f7618cb60ad9095a33ddbab7c0.lean/declarations/nonnegative-kernel-series-integral--2baa12bc4cb4efec50d81f8c.md) | 39 | `result-track:2baa12bc4cb4efec50d81f8cdf2d0c619a0dd2064992f7f7b83bb3128edfe7d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
