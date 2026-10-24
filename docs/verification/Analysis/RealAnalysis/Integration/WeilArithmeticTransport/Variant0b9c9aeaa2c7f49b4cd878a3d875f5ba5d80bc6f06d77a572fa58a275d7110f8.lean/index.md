# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.WeilArithmeticTransport.Variant0b9c9aeaa2c7f49b4cd878a3d875f5ba5d80bc6f06d77a572fa58a275d7110f8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e884fb374952af11dd5fd933095555694ca37ef",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variant0b9c9aeaa2c7f49b4cd878a3d875f5ba5d80bc6f06d77a572fa58a275d7110f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variant0b9c9aeaa2c7f49b4cd878a3d875f5ba5d80bc6f06d77a572fa58a275d7110f8.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variant0b9c9aeaa2c7f49b4cd878a3d875f5ba5d80bc6f06d77a572fa58a275d7110f8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e884fb374952af11dd5fd933095555694ca37ef`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variant0b9c9aeaa2c7f49b4cd878a3d875f5ba5d80bc6f06d77a572fa58a275d7110f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variant0b9c9aeaa2c7f49b4cd878a3d875f5ba5d80bc6f06d77a572fa58a275d7110f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ZeroSide.WeilFormulaImport` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.AdmissionSource` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [realKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variant0b9c9aeaa2c7f49b4cd878a3d875f5ba5d80bc6f06d77a572fa58a275d7110f8.lean/declarations/realkernel--a0a2f01f2d8f19045b6ffded.md) | 46 | `declaration-track:a0a2f01f2d8f19045b6ffded4915bc3ca5bc842d1e0fe66856704528e70eec7e` |
| 2 | `theorem` | [smoothKernel_eq_realKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variant0b9c9aeaa2c7f49b4cd878a3d875f5ba5d80bc6f06d77a572fa58a275d7110f8.lean/declarations/smoothkernel-eq-realkernel--241dd3d8f16af9bd7555e91d.md) | 49 | `result-track:241dd3d8f16af9bd7555e91db81f7fe35751a78f03ec64bca9cc5a5cd62ac48d` |
| 3 | `theorem` | [realKernel_eq_convolution](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variant0b9c9aeaa2c7f49b4cd878a3d875f5ba5d80bc6f06d77a572fa58a275d7110f8.lean/declarations/realkernel-eq-convolution--b8286311844a8b89b26bc5e2.md) | 52 | `result-track:b8286311844a8b89b26bc5e2b54a6b0a3cd2cf7c5fea54a2f29be592a2307762` |
| 4 | `theorem` | [realKernel_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variant0b9c9aeaa2c7f49b4cd878a3d875f5ba5d80bc6f06d77a572fa58a275d7110f8.lean/declarations/realkernel-even--8334e6866c122991e53c373a.md) | 64 | `result-track:8334e6866c122991e53c373ace59529588dc84e2c824c9c208e57b7991b6bc8d` |
| 5 | `theorem` | [smoothKernel_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variant0b9c9aeaa2c7f49b4cd878a3d875f5ba5d80bc6f06d77a572fa58a275d7110f8.lean/declarations/smoothkernel-even--c02ccfb5ecad709c145db302.md) | 72 | `result-track:c02ccfb5ecad709c145db302f54d6d6c969cb115e259d301b805575b4fb3851a` |
| 6 | `theorem` | [smoothed_support_open](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variant0b9c9aeaa2c7f49b4cd878a3d875f5ba5d80bc6f06d77a572fa58a275d7110f8.lean/declarations/smoothed-support-open--931067371936efbbf04fa75c.md) | 77 | `result-track:931067371936efbbf04fa75cf7447deadda3f6230e14529855bef323f9bc61ab` |
| 7 | `theorem` | [realKernel_support_open](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variant0b9c9aeaa2c7f49b4cd878a3d875f5ba5d80bc6f06d77a572fa58a275d7110f8.lean/declarations/realkernel-support-open--dc041a4ce1fec2bb108a008a.md) | 87 | `result-track:dc041a4ce1fec2bb108a008a7bca0ecd7fa8803315b5d27cad9eea6b01ff909b` |
| 8 | `theorem` | [smoothKernel_support_open](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variant0b9c9aeaa2c7f49b4cd878a3d875f5ba5d80bc6f06d77a572fa58a275d7110f8.lean/declarations/smoothkernel-support-open--8d495ce08a47cea73b2df0f8.md) | 99 | `result-track:8d495ce08a47cea73b2df0f8afbc1be10ae6d4b7ac984202ed3baa62700f02fe` |
| 9 | `def` | [primeIndices](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variant0b9c9aeaa2c7f49b4cd878a3d875f5ba5d80bc6f06d77a572fa58a275d7110f8.lean/declarations/primeindices--0a1bd4d59aa81f44b2c783b0.md) | 108 | `declaration-track:0a1bd4d59aa81f44b2c783b09891a926de8a8d0a2d550099c7f65ee9eb3e6d59` |
| 10 | `theorem` | [mem_primeIndices_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variant0b9c9aeaa2c7f49b4cd878a3d875f5ba5d80bc6f06d77a572fa58a275d7110f8.lean/declarations/mem-primeindices-iff--a6abbfb737ddbff92cb590e8.md) | 112 | `result-track:a6abbfb737ddbff92cb590e8a43c9d80b8fb56278cc6a1a500b59424edd915f9` |
| 11 | `def` | [primeSummand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variant0b9c9aeaa2c7f49b4cd878a3d875f5ba5d80bc6f06d77a572fa58a275d7110f8.lean/declarations/primesummand--fa49946052afd47fcb551961.md) | 118 | `declaration-track:fa49946052afd47fcb55196197bad8a8b38c1d9b0e34225ef8c53df4baf38354` |
| 12 | `theorem` | [primeSummand_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variant0b9c9aeaa2c7f49b4cd878a3d875f5ba5d80bc6f06d77a572fa58a275d7110f8.lean/declarations/primesummand-zero--4a568a6066eaaa948d7d2999.md) | 122 | `result-track:4a568a6066eaaa948d7d2999cdd036c48fb2e5694797f4dda94a8669de3b350d` |
| 13 | `theorem` | [prime_sum_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variant0b9c9aeaa2c7f49b4cd878a3d875f5ba5d80bc6f06d77a572fa58a275d7110f8.lean/declarations/prime-sum-eq--e277ddd66ab008df8568eed2.md) | 144 | `result-track:e277ddd66ab008df8568eed21e39832c1a9d2ccabdca93f05ede72cff545ff0e` |
| 14 | `theorem` | [source_fourier_conj](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variant0b9c9aeaa2c7f49b4cd878a3d875f5ba5d80bc6f06d77a572fa58a275d7110f8.lean/declarations/source-fourier-conj--ba93e60364f412e37d25be0a.md) | 164 | `result-track:ba93e60364f412e37d25be0a229e4f6777a532d8c5f77392e319d75b43ad136d` |
| 15 | `theorem` | [paperFT_kernel_real](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variant0b9c9aeaa2c7f49b4cd878a3d875f5ba5d80bc6f06d77a572fa58a275d7110f8.lean/declarations/paperft-kernel-real--b8fb13a1eb61805a73269445.md) | 179 | `result-track:b8fb13a1eb61805a732694459cb90a90f9724db503e1d32efc2cb0b9cd3d335d` |
| 16 | `theorem` | [smoothed_archimedean_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variant0b9c9aeaa2c7f49b4cd878a3d875f5ba5d80bc6f06d77a572fa58a275d7110f8.lean/declarations/smoothed-archimedean-integrable--fbd5feb300e26af89c0fface.md) | 189 | `result-track:fbd5feb300e26af89c0fface777dc3926b3e6108361809234bfaaa8948a7a926` |
| 17 | `theorem` | [gamma_integrand_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variant0b9c9aeaa2c7f49b4cd878a3d875f5ba5d80bc6f06d77a572fa58a275d7110f8.lean/declarations/gamma-integrand-eq--6ba864d437841ad869c1212f.md) | 222 | `result-track:6ba864d437841ad869c1212f2155f33b28cd80ca6e81670712fad4f0b4f393c1` |
| 18 | `theorem` | [gamma_integrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variant0b9c9aeaa2c7f49b4cd878a3d875f5ba5d80bc6f06d77a572fa58a275d7110f8.lean/declarations/gamma-integrand-integrable--e1089e5b19a587522fe5f411.md) | 234 | `result-track:e1089e5b19a587522fe5f411e020281ca31ee3ce352dcdc58aa62fc180d17856` |
| 19 | `theorem` | [gamma_integral_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variant0b9c9aeaa2c7f49b4cd878a3d875f5ba5d80bc6f06d77a572fa58a275d7110f8.lean/declarations/gamma-integral-eq--6b695a8b4d375c55cac7c21b.md) | 242 | `result-track:6b695a8b4d375c55cac7c21b7ea9a775e7f8387906450b9da13585ff93030204` |
| 20 | `theorem` | [positive_real_moment_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variant0b9c9aeaa2c7f49b4cd878a3d875f5ba5d80bc6f06d77a572fa58a275d7110f8.lean/declarations/positive-real-moment-zero--f2e857005e0e97e1298d5a02.md) | 252 | `result-track:f2e857005e0e97e1298d5a025a00390398a9ac1c69e88dcae425ff1bb6b0cc35` |
| 21 | `theorem` | [real_pole_contribution_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variant0b9c9aeaa2c7f49b4cd878a3d875f5ba5d80bc6f06d77a572fa58a275d7110f8.lean/declarations/real-pole-contribution-zero--31ff3d12df85b10a6cf769de.md) | 269 | `result-track:31ff3d12df85b10a6cf769de670628d713d07d9106857e0a82b4d9b9fe9d2013` |
| 22 | `theorem` | [kernel_pole_values](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variant0b9c9aeaa2c7f49b4cd878a3d875f5ba5d80bc6f06d77a572fa58a275d7110f8.lean/declarations/kernel-pole-values--88997f3744a560dc66801f87.md) | 275 | `result-track:88997f3744a560dc66801f87a2f55168100d8a8e48bab579779af59964a8191c` |
| 23 | `theorem` | [literatureRHS_eq_arithmetic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variant0b9c9aeaa2c7f49b4cd878a3d875f5ba5d80bc6f06d77a572fa58a275d7110f8.lean/declarations/literaturerhs-eq-arithmetic--012f7b199bdaf27e5a386f12.md) | 295 | `result-track:012f7b199bdaf27e5a386f12feb63dcdd4b88573a7fae6fca63ddee8b6b1dce4` |
| 24 | `theorem` | [kernel_point_formula](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variant0b9c9aeaa2c7f49b4cd878a3d875f5ba5d80bc6f06d77a572fa58a275d7110f8.lean/declarations/kernel-point-formula--8536766f4e1deb933c8dd74f.md) | 310 | `result-track:8536766f4e1deb933c8dd74fbd051b1866f02917b7d4125710983654812e7014` |
| 25 | `theorem` | [smooth_explicit_formula](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variant0b9c9aeaa2c7f49b4cd878a3d875f5ba5d80bc6f06d77a572fa58a275d7110f8.lean/declarations/smooth-explicit-formula--56c57891b620d0b7957d81ed.md) | 318 | `result-track:56c57891b620d0b7957d81edd630853fecba0efa29c0402b53c7f15b5db671a2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
