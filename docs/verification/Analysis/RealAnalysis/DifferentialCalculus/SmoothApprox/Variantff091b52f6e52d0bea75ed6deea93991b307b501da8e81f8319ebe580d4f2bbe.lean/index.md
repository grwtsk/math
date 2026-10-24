# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SmoothApprox.Variantff091b52f6e52d0bea75ed6deea93991b307b501da8e81f8319ebe580d4f2bbe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b46bee0938d0851350a7ad9addd7770f5914160",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SmoothApprox/Variantff091b52f6e52d0bea75ed6deea93991b307b501da8e81f8319ebe580d4f2bbe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothApprox/Variantff091b52f6e52d0bea75ed6deea93991b307b501da8e81f8319ebe580d4f2bbe.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothApprox/Variantff091b52f6e52d0bea75ed6deea93991b307b501da8e81f8319ebe580d4f2bbe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b46bee0938d0851350a7ad9addd7770f5914160`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SmoothApprox/Variantff091b52f6e52d0bea75ed6deea93991b307b501da8e81f8319ebe580d4f2bbe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SmoothApprox/Variantff091b52f6e52d0bea75ed6deea93991b307b501da8e81f8319ebe580d4f2bbe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.BumpFunction.Convolution` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.BumpFunction.FiniteDimension` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [MeasureTheory.LocallyIntegrable.exists_contDiff_dist_le_of_forall_mem_ball_dist_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothApprox/Variantff091b52f6e52d0bea75ed6deea93991b307b501da8e81f8319ebe580d4f2bbe.lean/declarations/measuretheory-locallyintegrable-exists-contdiff-dist-le-of-forall-mem-ba--2de39514030ddda7c507a68d.md) | 28 | `result-track:2de39514030ddda7c507a68d527d725a60dbb0edcb40354b10cc4bcd32f12549` |
| 2 | `theorem` | [Continuous.exists_contDiff_dist_le_of_forall_mem_ball_dist_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothApprox/Variantff091b52f6e52d0bea75ed6deea93991b307b501da8e81f8319ebe580d4f2bbe.lean/declarations/continuous-exists-contdiff-dist-le-of-forall-mem-ball-dist-le--5e8cdbc3e2169f66bb1cbb30.md) | 37 | `result-track:5e8cdbc3e2169f66bb1cbb308ebfe6233f73279bcd51c4cadca3f2abe9ff70dc` |
| 3 | `theorem` | [UniformContinuous.exists_contDiff_dist_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothApprox/Variantff091b52f6e52d0bea75ed6deea93991b307b501da8e81f8319ebe580d4f2bbe.lean/declarations/uniformcontinuous-exists-contdiff-dist-le--4080a30ed85ce55255edf457.md) | 44 | `result-track:4080a30ed85ce55255edf457f0380202df0093f9b15b1a0b57503bb9da439c97` |
| 4 | `theorem` | [ContinuousMap.dense_setOf_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothApprox/Variantff091b52f6e52d0bea75ed6deea93991b307b501da8e81f8319ebe580d4f2bbe.lean/declarations/continuousmap-dense-setof-contdiff--08a0adc7cae1e89147d9befc.md) | 51 | `result-track:08a0adc7cae1e89147d9befce6c8d39516a2c2713fcaebbfb7ae0021dc32b22d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
