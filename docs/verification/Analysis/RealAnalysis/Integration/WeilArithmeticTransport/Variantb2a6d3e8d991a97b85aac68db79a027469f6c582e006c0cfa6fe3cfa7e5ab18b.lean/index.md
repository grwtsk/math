# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.WeilArithmeticTransport.Variantb2a6d3e8d991a97b85aac68db79a027469f6c582e006c0cfa6fe3cfa7e5ab18b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "460ca494088df4b27c60cc992e636e2ab4e0c6d8",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variantb2a6d3e8d991a97b85aac68db79a027469f6c582e006c0cfa6fe3cfa7e5ab18b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variantb2a6d3e8d991a97b85aac68db79a027469f6c582e006c0cfa6fe3cfa7e5ab18b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variantb2a6d3e8d991a97b85aac68db79a027469f6c582e006c0cfa6fe3cfa7e5ab18b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `460ca494088df4b27c60cc992e636e2ab4e0c6d8`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variantb2a6d3e8d991a97b85aac68db79a027469f6c582e006c0cfa6fe3cfa7e5ab18b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variantb2a6d3e8d991a97b85aac68db79a027469f6c582e006c0cfa6fe3cfa7e5ab18b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ZeroSide.WeilFormulaImport` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.AdmissionSource` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [realKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variantb2a6d3e8d991a97b85aac68db79a027469f6c582e006c0cfa6fe3cfa7e5ab18b.lean/declarations/realkernel--7566e5ecbaed5a26ea031ecf.md) | 38 | `declaration-track:7566e5ecbaed5a26ea031ecf8d8b152ab12bbad372de69566dd351709c86cb2e` |
| 2 | `theorem` | [smoothKernel_eq_realKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variantb2a6d3e8d991a97b85aac68db79a027469f6c582e006c0cfa6fe3cfa7e5ab18b.lean/declarations/smoothkernel-eq-realkernel--67ef8785c8197810ee2513f8.md) | 41 | `result-track:67ef8785c8197810ee2513f892f415e17f53faf6fa0ac49231cf79f5dff00a26` |
| 3 | `theorem` | [realKernel_eq_convolution](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variantb2a6d3e8d991a97b85aac68db79a027469f6c582e006c0cfa6fe3cfa7e5ab18b.lean/declarations/realkernel-eq-convolution--2c7fd3d1882fd79de9f46ea4.md) | 44 | `result-track:2c7fd3d1882fd79de9f46ea408455f4e24f592fae13befc58fe77b128e029076` |
| 4 | `theorem` | [realKernel_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variantb2a6d3e8d991a97b85aac68db79a027469f6c582e006c0cfa6fe3cfa7e5ab18b.lean/declarations/realkernel-even--dcd71e224b3d5e9fc6df4c8e.md) | 56 | `result-track:dcd71e224b3d5e9fc6df4c8ecf46abce11f5e3f07cc195affe368e911ffe3fbf` |
| 5 | `theorem` | [smoothKernel_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variantb2a6d3e8d991a97b85aac68db79a027469f6c582e006c0cfa6fe3cfa7e5ab18b.lean/declarations/smoothkernel-even--b960c8dd9945c1bb88004d20.md) | 64 | `result-track:b960c8dd9945c1bb88004d20bca5c4fc87e3de6e9132a3fb9f54b90ebb8d4e9d` |
| 6 | `theorem` | [smoothed_support_open](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variantb2a6d3e8d991a97b85aac68db79a027469f6c582e006c0cfa6fe3cfa7e5ab18b.lean/declarations/smoothed-support-open--d3770cae5324b791ef46f1ee.md) | 69 | `result-track:d3770cae5324b791ef46f1ee154094a4d7d489dce154c9e0226739c387f054d7` |
| 7 | `theorem` | [realKernel_support_open](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variantb2a6d3e8d991a97b85aac68db79a027469f6c582e006c0cfa6fe3cfa7e5ab18b.lean/declarations/realkernel-support-open--1ecdccb7d1f0571446fbfa3e.md) | 79 | `result-track:1ecdccb7d1f0571446fbfa3e33aba60545eca00adbf32e39c510043a39100a16` |
| 8 | `theorem` | [smoothKernel_support_open](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variantb2a6d3e8d991a97b85aac68db79a027469f6c582e006c0cfa6fe3cfa7e5ab18b.lean/declarations/smoothkernel-support-open--f1ec39225a5ce91fe7295d30.md) | 91 | `result-track:f1ec39225a5ce91fe7295d301bbc9617beb18534e82bab41c1f85498a74be37b` |
| 9 | `def` | [primeIndices](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variantb2a6d3e8d991a97b85aac68db79a027469f6c582e006c0cfa6fe3cfa7e5ab18b.lean/declarations/primeindices--e9c6bd4367cfdbdba37e1ace.md) | 100 | `declaration-track:e9c6bd4367cfdbdba37e1ace00b0af9d3bf14807fc7b0d95ca2fd886e6d045fa` |
| 10 | `theorem` | [mem_primeIndices_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variantb2a6d3e8d991a97b85aac68db79a027469f6c582e006c0cfa6fe3cfa7e5ab18b.lean/declarations/mem-primeindices-iff--6154ec61d7ffb3e1f4205393.md) | 104 | `result-track:6154ec61d7ffb3e1f4205393a4b26dfcdb04946fd704fafc981e58a0e025eb29` |
| 11 | `def` | [primeSummand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variantb2a6d3e8d991a97b85aac68db79a027469f6c582e006c0cfa6fe3cfa7e5ab18b.lean/declarations/primesummand--d04955e9efa248c28dfe8563.md) | 110 | `declaration-track:d04955e9efa248c28dfe85632d22e1b3c9cec6dca4728c6a771b8f5c86a82a27` |
| 12 | `theorem` | [primeSummand_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variantb2a6d3e8d991a97b85aac68db79a027469f6c582e006c0cfa6fe3cfa7e5ab18b.lean/declarations/primesummand-zero--5e81084605b1bfe40b758114.md) | 114 | `result-track:5e81084605b1bfe40b7581142523e66a5680739b90b1ec3e296ea7000557763f` |
| 13 | `theorem` | [prime_sum_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variantb2a6d3e8d991a97b85aac68db79a027469f6c582e006c0cfa6fe3cfa7e5ab18b.lean/declarations/prime-sum-eq--fc5715cf60d1a7075753934a.md) | 136 | `result-track:fc5715cf60d1a7075753934ab8556e0f9a50bae5959dbc3d94360247e208728e` |
| 14 | `theorem` | [source_fourier_conj](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variantb2a6d3e8d991a97b85aac68db79a027469f6c582e006c0cfa6fe3cfa7e5ab18b.lean/declarations/source-fourier-conj--0ee60995e5d9abd6ac85dd61.md) | 156 | `result-track:0ee60995e5d9abd6ac85dd612b1424e66110ed2ae77815f910524d86d4109719` |
| 15 | `theorem` | [paperFT_kernel_real](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variantb2a6d3e8d991a97b85aac68db79a027469f6c582e006c0cfa6fe3cfa7e5ab18b.lean/declarations/paperft-kernel-real--6ae50a64713427d4a3fc5611.md) | 171 | `result-track:6ae50a64713427d4a3fc56113d8f5df4d746fc659fe6750411c132b3c3bcc6f7` |
| 16 | `theorem` | [smoothed_archimedean_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variantb2a6d3e8d991a97b85aac68db79a027469f6c582e006c0cfa6fe3cfa7e5ab18b.lean/declarations/smoothed-archimedean-integrable--20ca98ebf942669a00de71e3.md) | 181 | `result-track:20ca98ebf942669a00de71e3563a37c5d75c7f272ddc5fbcc6a9eb8bf036a2da` |
| 17 | `theorem` | [gamma_integrand_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variantb2a6d3e8d991a97b85aac68db79a027469f6c582e006c0cfa6fe3cfa7e5ab18b.lean/declarations/gamma-integrand-eq--1533e3424a3f50a4e5ad00eb.md) | 214 | `result-track:1533e3424a3f50a4e5ad00eb7be6c717266837fd67c48b2714fb90b14620843a` |
| 18 | `theorem` | [gamma_integrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variantb2a6d3e8d991a97b85aac68db79a027469f6c582e006c0cfa6fe3cfa7e5ab18b.lean/declarations/gamma-integrand-integrable--1fea69f134b5318b67b9a6be.md) | 226 | `result-track:1fea69f134b5318b67b9a6becbe0747e9fe4c1b30134f90478c6fff3c1f77220` |
| 19 | `theorem` | [gamma_integral_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variantb2a6d3e8d991a97b85aac68db79a027469f6c582e006c0cfa6fe3cfa7e5ab18b.lean/declarations/gamma-integral-eq--9ed23acc06861e8d3f2e22f0.md) | 234 | `result-track:9ed23acc06861e8d3f2e22f0bfe9520ad2cbd3dcc10bb034bedeef566c65c923` |
| 20 | `theorem` | [positive_real_moment_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variantb2a6d3e8d991a97b85aac68db79a027469f6c582e006c0cfa6fe3cfa7e5ab18b.lean/declarations/positive-real-moment-zero--699f8ce961c78bc1ad1f9ad7.md) | 244 | `result-track:699f8ce961c78bc1ad1f9ad7b074aacbcf88d457d5c03bd09bea0a15f943eaf0` |
| 21 | `theorem` | [real_pole_contribution_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variantb2a6d3e8d991a97b85aac68db79a027469f6c582e006c0cfa6fe3cfa7e5ab18b.lean/declarations/real-pole-contribution-zero--bad686742496a3ac49f502e8.md) | 261 | `result-track:bad686742496a3ac49f502e8182600f91aa9af5d842be7ff3f363f1421eff1cb` |
| 22 | `theorem` | [kernel_pole_values](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variantb2a6d3e8d991a97b85aac68db79a027469f6c582e006c0cfa6fe3cfa7e5ab18b.lean/declarations/kernel-pole-values--837321e339bf9e7df436c7be.md) | 267 | `result-track:837321e339bf9e7df436c7bea21bf73879c46faa81f4f30e46232ba45077bd7f` |
| 23 | `theorem` | [literatureRHS_eq_arithmetic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variantb2a6d3e8d991a97b85aac68db79a027469f6c582e006c0cfa6fe3cfa7e5ab18b.lean/declarations/literaturerhs-eq-arithmetic--9a55fafa695076fb840d89e1.md) | 287 | `result-track:9a55fafa695076fb840d89e1693940f2244a1ec19f98dc45913394f24d208b07` |
| 24 | `theorem` | [kernel_point_formula](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variantb2a6d3e8d991a97b85aac68db79a027469f6c582e006c0cfa6fe3cfa7e5ab18b.lean/declarations/kernel-point-formula--f443d0beb696495df8cf719a.md) | 302 | `result-track:f443d0beb696495df8cf719a85af854771776c8f864b68808b7be370f639de8f` |
| 25 | `theorem` | [smooth_explicit_formula](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variantb2a6d3e8d991a97b85aac68db79a027469f6c582e006c0cfa6fe3cfa7e5ab18b.lean/declarations/smooth-explicit-formula--b7c95db42bab688b4ccc657c.md) | 310 | `result-track:b7c95db42bab688b4ccc657c490f11518173bf243d3c16e141481ea946e1019c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
