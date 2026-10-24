# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.KernelSeries.Variantd1464e574c52b582b1820caaea2119ecc6f8a24a357e70e9902e5777ba25cacc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fa3e26b22372c5ed7e6cc48a639caddb7d397a26",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/KernelSeries/Variantd1464e574c52b582b1820caaea2119ecc6f8a24a357e70e9902e5777ba25cacc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/KernelSeries/Variantd1464e574c52b582b1820caaea2119ecc6f8a24a357e70e9902e5777ba25cacc.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/KernelSeries/Variantd1464e574c52b582b1820caaea2119ecc6f8a24a357e70e9902e5777ba25cacc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fa3e26b22372c5ed7e6cc48a639caddb7d397a26`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/KernelSeries/Variantd1464e574c52b582b1820caaea2119ecc6f8a24a357e70e9902e5777ba25cacc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/KernelSeries/Variantd1464e574c52b582b1820caaea2119ecc6f8a24a357e70e9902e5777ba25cacc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.Polish.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [nonnegative_kernel_series_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/KernelSeries/Variantd1464e574c52b582b1820caaea2119ecc6f8a24a357e70e9902e5777ba25cacc.lean/declarations/nonnegative-kernel-series-integrable--4bd86b365456f12edb63c02a.md) | 23 | `result-track:4bd86b365456f12edb63c02aed6ec584f77c5e9ae3fd1523701237d2204e4955` |
| 2 | `theorem` | [nonnegative_kernel_series_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/KernelSeries/Variantd1464e574c52b582b1820caaea2119ecc6f8a24a357e70e9902e5777ba25cacc.lean/declarations/nonnegative-kernel-series-integral--252957189101b705548e2e28.md) | 47 | `result-track:252957189101b705548e2e28784c398f6664671a4fdd2f345ed5dcdc8e9e2546` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
