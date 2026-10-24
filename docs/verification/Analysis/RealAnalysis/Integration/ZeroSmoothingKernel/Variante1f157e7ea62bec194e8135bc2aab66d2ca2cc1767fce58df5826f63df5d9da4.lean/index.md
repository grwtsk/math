# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ZeroSmoothingKernel.Variante1f157e7ea62bec194e8135bc2aab66d2ca2cc1767fce58df5826f63df5d9da4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f272b00d1946dc5b96ff1ad1d9c67d8e4f4f9d54",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingKernel/Variante1f157e7ea62bec194e8135bc2aab66d2ca2cc1767fce58df5826f63df5d9da4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingKernel/Variante1f157e7ea62bec194e8135bc2aab66d2ca2cc1767fce58df5826f63df5d9da4.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingKernel/Variante1f157e7ea62bec194e8135bc2aab66d2ca2cc1767fce58df5826f63df5d9da4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f272b00d1946dc5b96ff1ad1d9c67d8e4f4f9d54`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingKernel/Variante1f157e7ea62bec194e8135bc2aab66d2ca2cc1767fce58df5826f63df5d9da4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ZeroSmoothingKernel/Variante1f157e7ea62bec194e8135bc2aab66d2ca2cc1767fce58df5826f63df5d9da4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSideTargets` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.BumpFunction.Convolution` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [smoothingBump](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingKernel/Variante1f157e7ea62bec194e8135bc2aab66d2ca2cc1767fce58df5826f63df5d9da4.lean/declarations/smoothingbump--ffc4c284c14e6051a36b0492.md) | 31 | `declaration-track:ffc4c284c14e6051a36b0492dfced28868c71de075717631195a34389b725101` |
| 2 | `def` | [mollifier](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingKernel/Variante1f157e7ea62bec194e8135bc2aab66d2ca2cc1767fce58df5826f63df5d9da4.lean/declarations/mollifier--029a8feb2f0606e4339c059a.md) | 38 | `declaration-track:029a8feb2f0606e4339c059ae6ff62bd9f0c6342ea349fe16ce4dec3d44cfbf2` |
| 3 | `theorem` | [mollifier_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingKernel/Variante1f157e7ea62bec194e8135bc2aab66d2ca2cc1767fce58df5826f63df5d9da4.lean/declarations/mollifier-nonneg--315d245d40801d1c021e3074.md) | 42 | `result-track:315d245d40801d1c021e3074db067411aaea065e47d6e5b402824443a8f8623c` |
| 4 | `theorem` | [mollifier_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingKernel/Variante1f157e7ea62bec194e8135bc2aab66d2ca2cc1767fce58df5826f63df5d9da4.lean/declarations/mollifier-even--7e1dd88cb62efb14a3dd6a06.md) | 47 | `result-track:7e1dd88cb62efb14a3dd6a067d987f1fab763a36c53070df99aebec6b0c06943` |
| 5 | `theorem` | [mollifier_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingKernel/Variante1f157e7ea62bec194e8135bc2aab66d2ca2cc1767fce58df5826f63df5d9da4.lean/declarations/mollifier-contdiff--e744580ec96d484e2d1319b3.md) | 51 | `result-track:e744580ec96d484e2d1319b3021ec2fc2d486b6f29134cbf8a60d3a7ed730a6b` |
| 6 | `theorem` | [mollifier_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingKernel/Variante1f157e7ea62bec194e8135bc2aab66d2ca2cc1767fce58df5826f63df5d9da4.lean/declarations/mollifier-integrable--6dd80a99cf510536fd4f45f1.md) | 56 | `result-track:6dd80a99cf510536fd4f45f1d1b99ed0d84425348af1eb4628dd1ee6b94fc9f5` |
| 7 | `theorem` | [mollifier_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingKernel/Variante1f157e7ea62bec194e8135bc2aab66d2ca2cc1767fce58df5826f63df5d9da4.lean/declarations/mollifier-integral--6c000ad41af4029bd5833a72.md) | 61 | `result-track:6c000ad41af4029bd5833a723b5b221fb54444404409363c0ef3fb9f48c96f95` |
| 8 | `theorem` | [mollifier_support](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingKernel/Variante1f157e7ea62bec194e8135bc2aab66d2ca2cc1767fce58df5826f63df5d9da4.lean/declarations/mollifier-support--52e82fc256e07adfc60f49b1.md) | 66 | `result-track:52e82fc256e07adfc60f49b1e5618614c5260c7638f34e04f80a28b82ee36c26` |
| 9 | `theorem` | [mollifier_tsupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingKernel/Variante1f157e7ea62bec194e8135bc2aab66d2ca2cc1767fce58df5826f63df5d9da4.lean/declarations/mollifier-tsupport--580f1b851bfb31e573848ea3.md) | 72 | `result-track:580f1b851bfb31e573848ea354e2a29b2ffd7517be73966d580d5e68b55c84dd` |
| 10 | `theorem` | [mollifier_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingKernel/Variante1f157e7ea62bec194e8135bc2aab66d2ca2cc1767fce58df5826f63df5d9da4.lean/declarations/mollifier-hascompactsupport--370f0c349d7f3255b6e94ce4.md) | 78 | `result-track:370f0c349d7f3255b6e94ce4cc41ddac2feea0a5278a9b83a9a685f6d381ff6d` |
| 11 | `def` | [smoothedTest](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingKernel/Variante1f157e7ea62bec194e8135bc2aab66d2ca2cc1767fce58df5826f63df5d9da4.lean/declarations/smoothedtest--4634e5fa41c33e4b6b19a36c.md) | 83 | `declaration-track:4634e5fa41c33e4b6b19a36c18f259a88a37d3854fdc6f403106c40bb047c2be` |
| 12 | `theorem` | [smoothedTest_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingKernel/Variante1f157e7ea62bec194e8135bc2aab66d2ca2cc1767fce58df5826f63df5d9da4.lean/declarations/smoothedtest-eq-integral--9ba18dc1c4344ff39a8e6be8.md) | 87 | `result-track:9ba18dc1c4344ff39a8e6be87d688ceaf43ffe15409dd5254dc0e5fcac95b4c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
