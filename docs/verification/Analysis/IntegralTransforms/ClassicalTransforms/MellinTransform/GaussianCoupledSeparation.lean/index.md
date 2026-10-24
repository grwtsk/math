# Verification target: GRWTSK.Analysis.MellinTransform.GaussianCoupledSeparation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1063713a1f78fffd9290cff787affd647b9d7728",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MellinTransform/GaussianCoupledSeparation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianCoupledSeparation.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianCoupledSeparation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1063713a1f78fffd9290cff787affd647b9d7728`.

Source path: `GRWTSK/Analysis/MellinTransform/GaussianCoupledSeparation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MellinTransform/GaussianCoupledSeparation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Calculus.CompactCutoff`](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompactCutoff.lean/index.md) — import line 20; pinned internal source present.
- [`GRWTSK.Analysis.MellinTransform.GaussianLogWindow`](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianLogWindow.lean/index.md) — import line 21; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logPhase](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianCoupledSeparation.lean/declarations/logphase--756f5b64dbff45067ee56212.md) | 32 | `declaration-track:756f5b64dbff45067ee562123363c17d4b577ed6afa520d8cd24b610af3f86c0` |
| 2 | `lemma` | [logPhase_add](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianCoupledSeparation.lean/declarations/logphase-add--1bf8b2a4db0ddc4d063fefd1.md) | 35 | `result-track:1bf8b2a4db0ddc4d063fefd177819ad6bc1888766047631d83f3977ba46b578e` |
| 3 | `lemma` | [logPhase_zero](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianCoupledSeparation.lean/declarations/logphase-zero--61ccce2e57f3048c36d6f15c.md) | 41 | `result-track:61ccce2e57f3048c36d6f15cc8b66f41f296b34042f7261d52e07066c341585c` |
| 4 | `lemma` | [logPhase_norm](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianCoupledSeparation.lean/declarations/logphase-norm--a76ceae241110ffd45e26c20.md) | 43 | `result-track:a76ceae241110ffd45e26c2090a86a71f2cbf5c3dff08ddb9413f435280c8750` |
| 5 | `lemma` | [logPhase_sum](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianCoupledSeparation.lean/declarations/logphase-sum--22a39dac5a5622cc030e665d.md) | 46 | `result-track:22a39dac5a5622cc030e665d03495f5c7bba81866515896056881246bc217734` |
| 6 | `lemma` | [coupled_phase_product](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianCoupledSeparation.lean/declarations/coupled-phase-product--659e868af5462d733342a892.md) | 53 | `result-track:659e868af5462d733342a8927569aec33fb38eaff336a4215e781602da6d31aa` |
| 7 | `lemma` | [gaussianLogWindow_inversion](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianCoupledSeparation.lean/declarations/gaussianlogwindow-inversion--4185d0b15afbb639835ced26.md) | 61 | `result-track:4185d0b15afbb639835ced263bc3d76c2f48d1c8b3bb730c54ca974703b6bebf` |
| 8 | `lemma` | [gaussian_coupled_integrable](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianCoupledSeparation.lean/declarations/gaussian-coupled-integrable--94e7fd0975fe08014a6db7a8.md) | 73 | `result-track:94e7fd0975fe08014a6db7a89cc1670a0d24d0c2feebae3296387b80c1e44141` |
| 9 | `theorem` | [gaussian_coupled_separation](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianCoupledSeparation.lean/declarations/gaussian-coupled-separation--e3a8d97eb43124feed916920.md) | 85 | `result-track:e3a8d97eb43124feed9169206e74793bb0e09cf307dc8ffccbb37ab5b30c1513` |
| 10 | `theorem` | [gaussian_coupled_family](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianCoupledSeparation.lean/declarations/gaussian-coupled-family--8acf06defe041498aa9afb2d.md) | 100 | `result-track:8acf06defe041498aa9afb2dfaf047acd67b6da0a84fe92eb96546bc63f8f9ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
