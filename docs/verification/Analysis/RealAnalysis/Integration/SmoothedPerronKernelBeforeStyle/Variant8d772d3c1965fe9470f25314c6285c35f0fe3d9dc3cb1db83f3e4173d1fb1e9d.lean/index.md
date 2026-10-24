# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SmoothedPerronKernelBeforeStyle.Variant8d772d3c1965fe9470f25314c6285c35f0fe3d9dc3cb1db83f3e4173d1fb1e9d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "235026aa7fe50a4c20dcef6bace58a7d03db6f6f",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SmoothedPerronKernelBeforeStyle/Variant8d772d3c1965fe9470f25314c6285c35f0fe3d9dc3cb1db83f3e4173d1fb1e9d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernelBeforeStyle/Variant8d772d3c1965fe9470f25314c6285c35f0fe3d9dc3cb1db83f3e4173d1fb1e9d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernelBeforeStyle/Variant8d772d3c1965fe9470f25314c6285c35f0fe3d9dc3cb1db83f3e4173d1fb1e9d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `235026aa7fe50a4c20dcef6bace58a7d03db6f6f`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SmoothedPerronKernelBeforeStyle/Variant8d772d3c1965fe9470f25314c6285c35f0fe3d9dc3cb1db83f3e4173d1fb1e9d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SmoothedPerronKernelBeforeStyle/Variant8d772d3c1965fe9470f25314c6285c35f0fe3d9dc3cb1db83f3e4173d1fb1e9d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceLaplaceKernel` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.Inversion` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.MellinTransform` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [kernelIntegrand_integrable_Ioi_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernelBeforeStyle/Variant8d772d3c1965fe9470f25314c6285c35f0fe3d9dc3cb1db83f3e4173d1fb1e9d.lean/declarations/kernelintegrand-integrable-ioi-zero--fdbedaf55441d22e93f037f9.md) | 18 | `result-track:fdbedaf55441d22e93f037f98ea1960f550e3cc41eb02db865f445ba17a4b80f` |
| 2 | `theorem` | [integral_first_moment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernelBeforeStyle/Variant8d772d3c1965fe9470f25314c6285c35f0fe3d9dc3cb1db83f3e4173d1fb1e9d.lean/declarations/integral-first-moment--d6c958db06d2cc9f439cdecc.md) | 32 | `result-track:d6c958db06d2cc9f439cdecc40bb6586010117ea6acfc6d530a5e32e30f5d0d3` |
| 3 | `def` | [dampedRamp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernelBeforeStyle/Variant8d772d3c1965fe9470f25314c6285c35f0fe3d9dc3cb1db83f3e4173d1fb1e9d.lean/declarations/dampedramp--dd13f883d20ce7f186dfda38.md) | 54 | `declaration-track:dd13f883d20ce7f186dfda38c375561a16c2c6acb6aee466bae7245a88b4ba27` |
| 4 | `theorem` | [dampedRamp_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernelBeforeStyle/Variant8d772d3c1965fe9470f25314c6285c35f0fe3d9dc3cb1db83f3e4173d1fb1e9d.lean/declarations/dampedramp-continuous--91c27c09cb9eb76dcd0b12fd.md) | 58 | `result-track:91c27c09cb9eb76dcd0b12fda3eeaf714428a1a08d4b5a9b32d036b167d7c424` |
| 5 | `theorem` | [dampedRamp_eq_indicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernelBeforeStyle/Variant8d772d3c1965fe9470f25314c6285c35f0fe3d9dc3cb1db83f3e4173d1fb1e9d.lean/declarations/dampedramp-eq-indicator--3427c9d0a40087be161a5e8a.md) | 63 | `result-track:3427c9d0a40087be161a5e8ab59f3d9b921dac813f1d44d1eb03b2fd777f2a35` |
| 6 | `theorem` | [dampedRamp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernelBeforeStyle/Variant8d772d3c1965fe9470f25314c6285c35f0fe3d9dc3cb1db83f3e4173d1fb1e9d.lean/declarations/dampedramp-integrable--1c2b00ca8ce611fd9d3d3559.md) | 71 | `result-track:1c2b00ca8ce611fd9d3d3559d9351702c77ce1290ca26ef22ad397ef29c0eda2` |
| 7 | `theorem` | [dampedRamp_fourier](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernelBeforeStyle/Variant8d772d3c1965fe9470f25314c6285c35f0fe3d9dc3cb1db83f3e4173d1fb1e9d.lean/declarations/dampedramp-fourier--2dfc20e151d4cd053b7a17be.md) | 76 | `result-track:2dfc20e151d4cd053b7a17be201863727a9a78928d3a2690cd68bd5a0dba0eb1` |
| 8 | `theorem` | [reciprocal_square_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernelBeforeStyle/Variant8d772d3c1965fe9470f25314c6285c35f0fe3d9dc3cb1db83f3e4173d1fb1e9d.lean/declarations/reciprocal-square-integrable--1dc2856b4c6e7c20018a050e.md) | 95 | `result-track:1dc2856b4c6e7c20018a050e557d5e58966c29ba7fe4854158eeb03906fbe5d2` |
| 9 | `theorem` | [dampedRamp_fourier_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernelBeforeStyle/Variant8d772d3c1965fe9470f25314c6285c35f0fe3d9dc3cb1db83f3e4173d1fb1e9d.lean/declarations/dampedramp-fourier-integrable--681c85b32353c6cc0875f10c.md) | 109 | `result-track:681c85b32353c6cc0875f10cf1c15df6c19450464f9e735a034d04b74227dff0` |
| 10 | `def` | [perronIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernelBeforeStyle/Variant8d772d3c1965fe9470f25314c6285c35f0fe3d9dc3cb1db83f3e4173d1fb1e9d.lean/declarations/perronintegrand--64385dd787ae62b9a60306e3.md) | 121 | `declaration-track:64385dd787ae62b9a60306e3d38e561cdbabc2537b92caea583196061e559cf3` |
| 11 | `theorem` | [perronIntegrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernelBeforeStyle/Variant8d772d3c1965fe9470f25314c6285c35f0fe3d9dc3cb1db83f3e4173d1fb1e9d.lean/declarations/perronintegrand-integrable--f8c5c3dd47dedafc0ec7796c.md) | 126 | `result-track:f8c5c3dd47dedafc0ec7796c0a5846587b6b29583f69948d57b86039c5a1d31e` |
| 12 | `theorem` | [vertical_ramp_inversion](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernelBeforeStyle/Variant8d772d3c1965fe9470f25314c6285c35f0fe3d9dc3cb1db83f3e4173d1fb1e9d.lean/declarations/vertical-ramp-inversion--e89699a7e94c223fa8b7b6cf.md) | 139 | `result-track:e89699a7e94c223fa8b7b6cf0376232008cfa0c188c1144339ca8d1c704ad513` |
| 13 | `theorem` | [elementary_perron_kernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernelBeforeStyle/Variant8d772d3c1965fe9470f25314c6285c35f0fe3d9dc3cb1db83f3e4173d1fb1e9d.lean/declarations/elementary-perron-kernel--8bed58466946fea6c504b29e.md) | 165 | `result-track:8bed58466946fea6c504b29ec9942d629dacdf442788b1422da4659aac283169` |
| 14 | `theorem` | [elementary_perron_endpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernelBeforeStyle/Variant8d772d3c1965fe9470f25314c6285c35f0fe3d9dc3cb1db83f3e4173d1fb1e9d.lean/declarations/elementary-perron-endpoint--6c23cfbf235c56546ff13aac.md) | 188 | `result-track:6c23cfbf235c56546ff13aac58932102d83d0999b5f9d5df4eb037c4794855cf` |
| 15 | `theorem` | [elementary_perron_ratio](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernelBeforeStyle/Variant8d772d3c1965fe9470f25314c6285c35f0fe3d9dc3cb1db83f3e4173d1fb1e9d.lean/declarations/elementary-perron-ratio--7a4f6f8b6c6215af5db96885.md) | 193 | `result-track:7a4f6f8b6c6215af5db968855a08c1bb21fc25e57220fe3a4d5f6f52cc8faffe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
