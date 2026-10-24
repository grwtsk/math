# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ZeroSmoothingL2Core.Variant1756471b8a9b8685ecf2728ea2c8bfd6d03b3c2044e185e7017eb804ea6bc8d8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0316bc59527c558497290a85c6f705686fcfb542",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingL2Core/Variant1756471b8a9b8685ecf2728ea2c8bfd6d03b3c2044e185e7017eb804ea6bc8d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2Core/Variant1756471b8a9b8685ecf2728ea2c8bfd6d03b3c2044e185e7017eb804ea6bc8d8.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2Core/Variant1756471b8a9b8685ecf2728ea2c8bfd6d03b3c2044e185e7017eb804ea6bc8d8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0316bc59527c558497290a85c6f705686fcfb542`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingL2Core/Variant1756471b8a9b8685ecf2728ea2c8bfd6d03b3c2044e185e7017eb804ea6bc8d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ZeroSmoothingL2Core/Variant1756471b8a9b8685ecf2728ea2c8bfd6d03b3c2044e185e7017eb804ea6bc8d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothingDerivative` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mollify](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2Core/Variant1756471b8a9b8685ecf2728ea2c8bfd6d03b3c2044e185e7017eb804ea6bc8d8.lean/declarations/mollify--2910394455bf712777932c2c.md) | 34 | `declaration-track:2910394455bf712777932c2c8599e838e4cb954c8364ac118fac03b4fdf683dd` |
| 2 | `theorem` | [mollify_integrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2Core/Variant1756471b8a9b8685ecf2728ea2c8bfd6d03b3c2044e185e7017eb804ea6bc8d8.lean/declarations/mollify-integrand-integrable--a7ab38ffb0c896d950c18564.md) | 38 | `result-track:a7ab38ffb0c896d950c185648c4dbce12142db16e8bfb5c92339dbd712c03c05` |
| 3 | `theorem` | [mollify_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2Core/Variant1756471b8a9b8685ecf2728ea2c8bfd6d03b3c2044e185e7017eb804ea6bc8d8.lean/declarations/mollify-contdiff--779bbc0ea4bba32d859dc458.md) | 45 | `result-track:779bbc0ea4bba32d859dc4585798489ccf15a0e9cfb2e19ff63a218e8cc38a16` |
| 4 | `theorem` | [mollify_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2Core/Variant1756471b8a9b8685ecf2728ea2c8bfd6d03b3c2044e185e7017eb804ea6bc8d8.lean/declarations/mollify-continuous--91f7b2ea79df5ef2a055ccf7.md) | 51 | `result-track:91f7b2ea79df5ef2a055ccf7287e00c5eba1f1ff782cd82719e4bccefc40dfbf` |
| 5 | `theorem` | [mollify_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2Core/Variant1756471b8a9b8685ecf2728ea2c8bfd6d03b3c2044e185e7017eb804ea6bc8d8.lean/declarations/mollify-hascompactsupport--008bfe166573004b8b08b436.md) | 56 | `result-track:008bfe166573004b8b08b4366c28081e11309e37fbc9dcf2a0c5fdd6f2e76794` |
| 6 | `theorem` | [continuous_compact_memLp_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2Core/Variant1756471b8a9b8685ecf2728ea2c8bfd6d03b3c2044e185e7017eb804ea6bc8d8.lean/declarations/continuous-compact-memlp-two--77190381bd1dcf53c3caee99.md) | 62 | `result-track:77190381bd1dcf53c3caee99cf76c16502bf8824453e24628f781d57ed8aa4e4` |
| 7 | `theorem` | [mollify_memLp_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2Core/Variant1756471b8a9b8685ecf2728ea2c8bfd6d03b3c2044e185e7017eb804ea6bc8d8.lean/declarations/mollify-memlp-two--c9e1a21fc5daa01603ce1a28.md) | 67 | `result-track:c9e1a21fc5daa01603ce1a287ade8f22784796174b135e4d8d659ce7fd4ab701` |
| 8 | `theorem` | [error_memLp_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2Core/Variant1756471b8a9b8685ecf2728ea2c8bfd6d03b3c2044e185e7017eb804ea6bc8d8.lean/declarations/error-memlp-two--b6db3ae9b5e3ea4ba7ff094a.md) | 73 | `result-track:b6db3ae9b5e3ea4ba7ff094af9b4e0e7ca9c4b7259d7e2fe5d0cdc21f25248de` |
| 9 | `theorem` | [error_square_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2Core/Variant1756471b8a9b8685ecf2728ea2c8bfd6d03b3c2044e185e7017eb804ea6bc8d8.lean/declarations/error-square-integrable--a6190422f553d14a08eea7b1.md) | 78 | `result-track:a6190422f553d14a08eea7b179e61d66b050e7615b8a9219251579d02f418aef` |
| 10 | `theorem` | [mollify_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2Core/Variant1756471b8a9b8685ecf2728ea2c8bfd6d03b3c2044e185e7017eb804ea6bc8d8.lean/declarations/mollify-norm-le--448567254222d392aa70d58a.md) | 84 | `result-track:448567254222d392aa70d58ab5c7f3517e69a71598dbd83a101c5f6eac549d50` |
| 11 | `theorem` | [mollify_support_subset](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2Core/Variant1756471b8a9b8685ecf2728ea2c8bfd6d03b3c2044e185e7017eb804ea6bc8d8.lean/declarations/mollify-support-subset--ea6ebd7881a0db83a52142af.md) | 97 | `result-track:ea6ebd7881a0db83a52142af9e7b6d79e572384f905e4bde28b2fa0d29cdf211` |
| 12 | `theorem` | [error_support_subset_common](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2Core/Variant1756471b8a9b8685ecf2728ea2c8bfd6d03b3c2044e185e7017eb804ea6bc8d8.lean/declarations/error-support-subset-common--c054b4f4de451e88c189ca3f.md) | 108 | `result-track:c054b4f4de451e88c189ca3fe276642ef4ce6e615eb4c38062f1b921a789d01d` |
| 13 | `theorem` | [mollify_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2Core/Variant1756471b8a9b8685ecf2728ea2c8bfd6d03b3c2044e185e7017eb804ea6bc8d8.lean/declarations/mollify-tendsto--521de1720130543cce2237a3.md) | 126 | `result-track:521de1720130543cce2237a308941f68899a9632632035e8f17f8cb6aa251810` |
| 14 | `theorem` | [mollify_integral_sq_tendsto_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2Core/Variant1756471b8a9b8685ecf2728ea2c8bfd6d03b3c2044e185e7017eb804ea6bc8d8.lean/declarations/mollify-integral-sq-tendsto-zero--1f02305b706c03989f294aef.md) | 134 | `result-track:1f02305b706c03989f294aefe8354fbc794fd34d525c5a5005fa1eb64d437700` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
