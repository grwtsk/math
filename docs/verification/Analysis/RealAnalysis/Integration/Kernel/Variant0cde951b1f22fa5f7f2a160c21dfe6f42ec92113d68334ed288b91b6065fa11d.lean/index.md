# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Kernel.Variant0cde951b1f22fa5f7f2a160c21dfe6f42ec92113d68334ed288b91b6065fa11d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d3e56782820eb272f935a426b620923282a6d0c",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Kernel/Variant0cde951b1f22fa5f7f2a160c21dfe6f42ec92113d68334ed288b91b6065fa11d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant0cde951b1f22fa5f7f2a160c21dfe6f42ec92113d68334ed288b91b6065fa11d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant0cde951b1f22fa5f7f2a160c21dfe6f42ec92113d68334ed288b91b6065fa11d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d3e56782820eb272f935a426b620923282a6d0c`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Kernel/Variant0cde951b1f22fa5f7f2a160c21dfe6f42ec92113d68334ed288b91b6065fa11d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Kernel/Variant0cde951b1f22fa5f7f2a160c21dfe6f42ec92113d68334ed288b91b6065fa11d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Laplace.Algebra` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [kernelIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant0cde951b1f22fa5f7f2a160c21dfe6f42ec92113d68334ed288b91b6065fa11d.lean/declarations/kernelintegrand--c4f3dfd0b3cab61131ebe5f1.md) | 30 | `declaration-track:c4f3dfd0b3cab61131ebe5f1391a54fff03289c5e3347cd523f63986375931c8` |
| 2 | `lemma` | [norm_kernelIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant0cde951b1f22fa5f7f2a160c21dfe6f42ec92113d68334ed288b91b6065fa11d.lean/declarations/norm-kernelintegrand--f2788868dd8f302746d633bf.md) | 34 | `result-track:f2788868dd8f302746d633bfd710fd35fc2aa90eb3fbd2dcd973ba8fd3f5d382` |
| 3 | `lemma` | [kernelIntegrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant0cde951b1f22fa5f7f2a160c21dfe6f42ec92113d68334ed288b91b6065fa11d.lean/declarations/kernelintegrand-integrable--d2d84a1d23909a0081bbafee.md) | 42 | `result-track:d2d84a1d23909a0081bbafee734a50cbda391ddfcea0b31fc636ba81a307c892` |
| 4 | `lemma` | [kernelIntegrand_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant0cde951b1f22fa5f7f2a160c21dfe6f42ec92113d68334ed288b91b6065fa11d.lean/declarations/kernelintegrand-tendsto--44b53b818721cdcab349116c.md) | 60 | `result-track:44b53b818721cdcab349116cae2579dc237a9465f6a60368cf2a5cf805f42e6b` |
| 5 | `lemma` | [kernelIntegrand_deriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant0cde951b1f22fa5f7f2a160c21dfe6f42ec92113d68334ed288b91b6065fa11d.lean/declarations/kernelintegrand-deriv--1d0566c55c0dc532059cad22.md) | 73 | `result-track:1d0566c55c0dc532059cad2230e83fb35a3abaa636f75ff851bfb460ca8721b9` |
| 6 | `lemma` | [integral_recurrence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant0cde951b1f22fa5f7f2a160c21dfe6f42ec92113d68334ed288b91b6065fa11d.lean/declarations/integral-recurrence--d96dbf7611d9185068b9fc75.md) | 87 | `result-track:d96dbf7611d9185068b9fc751f0850da0cd5e7c954d334fbdee4540a770071f5` |
| 7 | `def` | [kernelNumerator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant0cde951b1f22fa5f7f2a160c21dfe6f42ec92113d68334ed288b91b6065fa11d.lean/declarations/kernelnumerator--c73048b3f26334f70b0bb6c6.md) | 113 | `declaration-track:c73048b3f26334f70b0bb6c6d90c7e59d40fa6186e96b70c343e50ae8ac73731` |
| 8 | `def` | [laplaceKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant0cde951b1f22fa5f7f2a160c21dfe6f42ec92113d68334ed288b91b6065fa11d.lean/declarations/laplacekernel--08c806c4e17e5e288ea22ae0.md) | 118 | `declaration-track:08c806c4e17e5e288ea22ae09ceca0e5d218a4bbbcb9d5a33a3a0445ccf6267b` |
| 9 | `lemma` | [laplaceKernel_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant0cde951b1f22fa5f7f2a160c21dfe6f42ec92113d68334ed288b91b6065fa11d.lean/declarations/laplacekernel-zero--4ce895fe4bebe3236691c42f.md) | 121 | `result-track:4ce895fe4bebe3236691c42f50ce54b5fd994f3d9a49afbd165b3c93c9e4bab9` |
| 10 | `lemma` | [laplaceKernel_succ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant0cde951b1f22fa5f7f2a160c21dfe6f42ec92113d68334ed288b91b6065fa11d.lean/declarations/laplacekernel-succ--0475c254688b043cfdd20fd2.md) | 125 | `result-track:0475c254688b043cfdd20fd2bb442b9262ca466d4b63bbdc817ec1b8e0d09864` |
| 11 | `lemma` | [integral_eq_laplaceKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant0cde951b1f22fa5f7f2a160c21dfe6f42ec92113d68334ed288b91b6065fa11d.lean/declarations/integral-eq-laplacekernel--136f4275c0754fe6d45480f1.md) | 134 | `result-track:136f4275c0754fe6d45480f102c5b45ceb747464824b1261c9280c7b326ea08b` |
| 12 | `lemma` | [kernelNumerator_eq_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant0cde951b1f22fa5f7f2a160c21dfe6f42ec92113d68334ed288b91b6065fa11d.lean/declarations/kernelnumerator-eq-sum--2b80b804f7f19e1c923d137a.md) | 153 | `result-track:2b80b804f7f19e1c923d137ad72f84f6ef46b4a29afd62a523c6d308918ee948` |
| 13 | `lemma` | [laplaceKernel_eq_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant0cde951b1f22fa5f7f2a160c21dfe6f42ec92113d68334ed288b91b6065fa11d.lean/declarations/laplacekernel-eq-sum--9077337543405b8b11a9eeed.md) | 174 | `result-track:9077337543405b8b11a9eeed6dbcd34a6caf8e4ad520902ab341cf068bcb4b48` |
| 14 | `lemma` | [kernelNumerator_eq_source_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant0cde951b1f22fa5f7f2a160c21dfe6f42ec92113d68334ed288b91b6065fa11d.lean/declarations/kernelnumerator-eq-source-sum--fdc389d8538d90cc5fbf91f4.md) | 185 | `result-track:fdc389d8538d90cc5fbf91f447605e46b45d7ba31bd230e90d419b351d5ceb68` |
| 15 | `theorem` | [laplaceKernel_eq_J](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant0cde951b1f22fa5f7f2a160c21dfe6f42ec92113d68334ed288b91b6065fa11d.lean/declarations/laplacekernel-eq-j--ffc665110930981dee216e98.md) | 197 | `result-track:ffc665110930981dee216e98f11b2fc8c7db0e4a95e4eee556ee0fa9268232dd` |
| 16 | `theorem` | [j_integral_obligation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant0cde951b1f22fa5f7f2a160c21dfe6f42ec92113d68334ed288b91b6065fa11d.lean/declarations/j-integral-obligation--e8f18f455d79bebde8c8403a.md) | 217 | `result-track:e8f18f455d79bebde8c8403a13c03e3b8870603f52cff591433570c105019f7a` |
| 17 | `def` | [headIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant0cde951b1f22fa5f7f2a160c21dfe6f42ec92113d68334ed288b91b6065fa11d.lean/declarations/headintegral--c37e83f2d81d2707fda477cd.md) | 234 | `declaration-track:c37e83f2d81d2707fda477cd0d85cdef057cd94c4e4519af1e7753ea01b098dd` |
| 18 | `lemma` | [headIntegral_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant0cde951b1f22fa5f7f2a160c21dfe6f42ec92113d68334ed288b91b6065fa11d.lean/declarations/headintegral-zero--a9cfa4e51b2f4b8928f90d59.md) | 237 | `result-track:a9cfa4e51b2f4b8928f90d59d96516a22bcf6d9d763b6e74f5c45aba1bd91fdd` |
| 19 | `lemma` | [headIntegral_succ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant0cde951b1f22fa5f7f2a160c21dfe6f42ec92113d68334ed288b91b6065fa11d.lean/declarations/headintegral-succ--2a4645e36d06471ce16e1f67.md) | 251 | `result-track:2a4645e36d06471ce16e1f671d9105c21b32fb52b014c356749fcebd3efc066a` |
| 20 | `def` | [regularKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant0cde951b1f22fa5f7f2a160c21dfe6f42ec92113d68334ed288b91b6065fa11d.lean/declarations/regularkernel--2d9ec41281f577aca05526e1.md) | 294 | `declaration-track:2d9ec41281f577aca05526e1eb7b7453b3ff11b65361718d3903848eb9790c3b` |
| 21 | `lemma` | [regularKernel_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant0cde951b1f22fa5f7f2a160c21dfe6f42ec92113d68334ed288b91b6065fa11d.lean/declarations/regularkernel-zero--848132fe3f8d80f9e0538d98.md) | 297 | `result-track:848132fe3f8d80f9e0538d9842978637f5568f46b11b10d6a551fb86b61c9654` |
| 22 | `lemma` | [regularKernel_succ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant0cde951b1f22fa5f7f2a160c21dfe6f42ec92113d68334ed288b91b6065fa11d.lean/declarations/regularkernel-succ--2c5bc7b594ececf9f37e6667.md) | 305 | `result-track:2c5bc7b594ececf9f37e6667b0ffadbd5dbd4cc20df07697a975750569de49fc` |
| 23 | `lemma` | [regularKernel_eq_laplaceKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant0cde951b1f22fa5f7f2a160c21dfe6f42ec92113d68334ed288b91b6065fa11d.lean/declarations/regularkernel-eq-laplacekernel--1a9b59515a2db606c55121a7.md) | 318 | `result-track:1a9b59515a2db606c55121a75e2277dd619f9da06d7adc8e08699630daf81182` |
| 24 | `lemma` | [setIntegral_Icc_eq_headIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant0cde951b1f22fa5f7f2a160c21dfe6f42ec92113d68334ed288b91b6065fa11d.lean/declarations/setintegral-icc-eq-headintegral--ed3abedc30b42dad060cfebc.md) | 330 | `result-track:ed3abedc30b42dad060cfebcd1ddda76f7dd1f6d88b16f0118641158cb3a6ecd` |
| 25 | `theorem` | [j_regular_part_obligation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant0cde951b1f22fa5f7f2a160c21dfe6f42ec92113d68334ed288b91b6065fa11d.lean/declarations/j-regular-part-obligation--1ca0f5742ca2c16540979f7f.md) | 342 | `result-track:1ca0f5742ca2c16540979f7ff36e89c13152408c4b99fa452d43ff9cae0c5a00` |
| 26 | `lemma` | [kernelNumerator_analytic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant0cde951b1f22fa5f7f2a160c21dfe6f42ec92113d68334ed288b91b6065fa11d.lean/declarations/kernelnumerator-analytic--b4739e22ec5cc5deef20565f.md) | 350 | `result-track:b4739e22ec5cc5deef20565ffd6ea8917f7cd6cffafc59ae13bba5981234c968` |
| 27 | `lemma` | [laplaceKernel_analytic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant0cde951b1f22fa5f7f2a160c21dfe6f42ec92113d68334ed288b91b6065fa11d.lean/declarations/laplacekernel-analytic--fe7d632ac212b1f7fb70db63.md) | 361 | `result-track:fe7d632ac212b1f7fb70db630bfac8cd9eec6b9d61102cedfe4d71b322d96bae` |
| 28 | `lemma` | [kernelNumerator_at_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant0cde951b1f22fa5f7f2a160c21dfe6f42ec92113d68334ed288b91b6065fa11d.lean/declarations/kernelnumerator-at-zero--1e82049a5a5fcfb89f94cae1.md) | 368 | `result-track:1e82049a5a5fcfb89f94cae1e6b377858e6fa6b33e011e34d13e4b54f280af9f` |
| 29 | `lemma` | [laplaceKernel_cleared](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant0cde951b1f22fa5f7f2a160c21dfe6f42ec92113d68334ed288b91b6065fa11d.lean/declarations/laplacekernel-cleared--93caf7c6dd723f43daffb1ea.md) | 377 | `result-track:93caf7c6dd723f43daffb1ea30a9dec25fd31e573d9f66ec8026268bcbc5d0c9` |
| 30 | `lemma` | [laplaceKernel_cleared_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant0cde951b1f22fa5f7f2a160c21dfe6f42ec92113d68334ed288b91b6065fa11d.lean/declarations/laplacekernel-cleared-tendsto--57234242149d167ce057e23f.md) | 385 | `result-track:57234242149d167ce057e23f81b48b759b8fe5af0824e90d85843db87ca3a385` |
| 31 | `theorem` | [J_cleared_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant0cde951b1f22fa5f7f2a160c21dfe6f42ec92113d68334ed288b91b6065fa11d.lean/declarations/j-cleared-tendsto--89d8881548c1a92497402159.md) | 407 | `result-track:89d8881548c1a924974021593a69c3d725b7ed0e8dcaf6830b4a2828fad9f6e1` |
| 32 | `theorem` | [kernel_checkpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variant0cde951b1f22fa5f7f2a160c21dfe6f42ec92113d68334ed288b91b6065fa11d.lean/declarations/kernel-checkpoint--b7b87631a4ee2738e01ddcb0.md) | 417 | `result-track:b7b87631a4ee2738e01ddcb0b469027b1b8ebd5828a410f7e05a7bcc854abd18` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
