# Verification target: GRWTSK.Analysis.Fourier.QuadraticKernelTruncation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f6a86ceb1bdbde45ed63abe1a007d25b835c9962",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Fourier/QuadraticKernelTruncation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/QuadraticKernelTruncation.lean/index.md) · [Full source](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/QuadraticKernelTruncation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f6a86ceb1bdbde45ed63abe1a007d25b835c9962`.

Source path: `GRWTSK/Analysis/Fourier/QuadraticKernelTruncation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Fourier/QuadraticKernelTruncation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Fourier.ReciprocalZetaQuadraticKernel`](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ReciprocalZetaQuadraticKernel.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.ReciprocalDecayBounds`](../../../../../mathematics/NumberTheory/Zeta/ReciprocalDecayBounds.lean/index.md) — import line 2; pinned internal source present.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Integral` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [timeKernel_norm_bound](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/QuadraticKernelTruncation.lean/declarations/timekernel-norm-bound--8effcc49ceec247d485a98f6.md) | 19 | `result-track:8effcc49ceec247d485a98f62f5846299bf87822bc245778ba79ea2243df4ef5` |
| 2 | `theorem` | [timeKernel_continuous](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/QuadraticKernelTruncation.lean/declarations/timekernel-continuous--03d663cc5c7ca13852b2485e.md) | 36 | `result-track:03d663cc5c7ca13852b2485e99e875b15fb48c1aa3f3c1935fc4e8ead8f1daf1` |
| 3 | `theorem` | [pickupKernel_absolute_right_tail](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/QuadraticKernelTruncation.lean/declarations/pickupkernel-absolute-right-tail--a5532c4b995d15644ac626ac.md) | 40 | `result-track:a5532c4b995d15644ac626ac03c3d5a30e1199d4fa4a05f9a8f6f71a43317b91` |
| 4 | `theorem` | [pickupKernel_reflected_right_tail](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/QuadraticKernelTruncation.lean/declarations/pickupkernel-reflected-right-tail--197a8dce5ca02afbc3031fc8.md) | 62 | `result-track:197a8dce5ca02afbc3031fc8cae4fc6cc6dedcadd90285568729bcee95855f82` |
| 5 | `theorem` | [pickupKernel_absolute_left_tail](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/QuadraticKernelTruncation.lean/declarations/pickupkernel-absolute-left-tail--e235b1f09fcb5e6d258e0848.md) | 83 | `result-track:e235b1f09fcb5e6d258e0848982a96f012e025c7b6ed475c1f2187e8acd8b6c3` |
| 6 | `theorem` | [pickupKernel_integrable](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/QuadraticKernelTruncation.lean/declarations/pickupkernel-integrable--36183ca5432158e26c56ffc9.md) | 95 | `result-track:36183ca5432158e26c56ffc9906fb262c2afc29a7365323c84f02321e0781c3f` |
| 7 | `def` | [kernelL1Mass](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/QuadraticKernelTruncation.lean/declarations/kernell1mass--2af0222ae889512708951a49.md) | 112 | `declaration-track:2af0222ae889512708951a4964e08f9704a4c386ff5f0dad27a7327b5f9ce6e2` |
| 8 | `theorem` | [kernelL1Mass_nonnegative](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/QuadraticKernelTruncation.lean/declarations/kernell1mass-nonnegative--e67cf54a96fccc7a386f8ff2.md) | 114 | `result-track:e67cf54a96fccc7a386f8ff20fb80280f16c560ef0c271f3645f4773cc72a8ec` |
| 9 | `theorem` | [density_norm_bound](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/QuadraticKernelTruncation.lean/declarations/density-norm-bound--cd73303cfdae139152f102a2.md) | 117 | `result-track:cd73303cfdae139152f102a2113aafbb28cf77366c27db90dddd3b862eff21a4` |
| 10 | `theorem` | [density_continuous](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/QuadraticKernelTruncation.lean/declarations/density-continuous--db5360eb98262ad9adde230b.md) | 123 | `result-track:db5360eb98262ad9adde230ba57db780fe4bfe36e077e3a4e955b7c472df5dd6` |
| 11 | `theorem` | [density_integrable](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/QuadraticKernelTruncation.lean/declarations/density-integrable--da3994a4088de58da6c81aae.md) | 131 | `result-track:da3994a4088de58da6c81aae9d8869293dd5d12e416f796d4f808935d18ae4b9` |
| 12 | `theorem` | [density_section_integrable](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/QuadraticKernelTruncation.lean/declarations/density-section-integrable--036c68a2a68681047dc2b343.md) | 138 | `result-track:036c68a2a68681047dc2b343560f4c0e1b9a6c6443407e14a49b1d6f86c5d110` |
| 13 | `theorem` | [density_outer_integrable](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/QuadraticKernelTruncation.lean/declarations/density-outer-integrable--efa4e2604d244bf1b89ec945.md) | 149 | `result-track:efa4e2604d244bf1b89ec9455d6b49fa6df1333472c5015bb9df4f8d23475fd0` |
| 14 | `theorem` | [tensor_truncation_norm_bound](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/QuadraticKernelTruncation.lean/declarations/tensor-truncation-norm-bound--134ca1634586c02680ded30f.md) | 154 | `result-track:134ca1634586c02680ded30fd33aaf6c6aca768852930c676d506edfeeecfd21` |
| 15 | `theorem` | [pickupKernel_absolute_complement_tail](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/QuadraticKernelTruncation.lean/declarations/pickupkernel-absolute-complement-tail--3ac880ffd3d9129064f45891.md) | 191 | `result-track:3ac880ffd3d9129064f4589174a5a545f3c6923419cda285f5ef62343f2fdc67` |
| 16 | `def` | [tailConstant](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/QuadraticKernelTruncation.lean/declarations/tailconstant--fa6f376ea0dde75901ed53a0.md) | 218 | `declaration-track:fa6f376ea0dde75901ed53a0bbc420139a17a4f794de8f762340175644665d80` |
| 17 | `theorem` | [tailConstant_nonnegative](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/QuadraticKernelTruncation.lean/declarations/tailconstant-nonnegative--3928985c229f3e475b7e3521.md) | 221 | `result-track:3928985c229f3e475b7e3521b824172a105f469cb21b5d6d54190c80b80fc4b5` |
| 18 | `theorem` | [tail_bound](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/QuadraticKernelTruncation.lean/declarations/tail-bound--3d21c43983bc24cbae52fe7c.md) | 228 | `result-track:3d21c43983bc24cbae52fe7c396c7c3d0ebc9f2452e1f5035203c3e2db63fa46` |
| 19 | `def` | [quadraticHeight](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/QuadraticKernelTruncation.lean/declarations/quadraticheight--69a853a96dc1bf05a9a79440.md) | 266 | `declaration-track:69a853a96dc1bf05a9a79440d8b4b1a645c88575a5056b64c8990ff244a67b13` |
| 20 | `theorem` | [quadraticHeight_valid](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/QuadraticKernelTruncation.lean/declarations/quadraticheight-valid--27f7918a82d2aa44b497cad4.md) | 268 | `result-track:27f7918a82d2aa44b497cad4f9d95a5179def2aa846c97a6c712ff5b657ff9cf` |
| 21 | `theorem` | [tail_at_quadraticHeight](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/QuadraticKernelTruncation.lean/declarations/tail-at-quadraticheight--fd648ce603ae234cdf9730b8.md) | 273 | `result-track:fd648ce603ae234cdf9730b8e34a2553b88ae8d32912f5625b1a818f53fbc0f3` |
| 22 | `theorem` | [polynomial_tail_budget](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/QuadraticKernelTruncation.lean/declarations/polynomial-tail-budget--47fad8ef42f6b0d48a49fade.md) | 279 | `result-track:47fad8ef42f6b0d48a49fadee687bd6c253d4d9395dfec2f948edc1f7f0fdbad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
