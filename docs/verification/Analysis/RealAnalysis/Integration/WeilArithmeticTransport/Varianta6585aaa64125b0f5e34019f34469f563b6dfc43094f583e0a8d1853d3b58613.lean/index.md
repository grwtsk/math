# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.WeilArithmeticTransport.Varianta6585aaa64125b0f5e34019f34469f563b6dfc43094f583e0a8d1853d3b58613

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "07ecb35fd6980df298a024db980019e2d92c3606",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Varianta6585aaa64125b0f5e34019f34469f563b6dfc43094f583e0a8d1853d3b58613.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Varianta6585aaa64125b0f5e34019f34469f563b6dfc43094f583e0a8d1853d3b58613.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Varianta6585aaa64125b0f5e34019f34469f563b6dfc43094f583e0a8d1853d3b58613.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `07ecb35fd6980df298a024db980019e2d92c3606`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Varianta6585aaa64125b0f5e34019f34469f563b6dfc43094f583e0a8d1853d3b58613.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Varianta6585aaa64125b0f5e34019f34469f563b6dfc43094f583e0a8d1853d3b58613.lean.json)

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
| 1 | `def` | [realKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Varianta6585aaa64125b0f5e34019f34469f563b6dfc43094f583e0a8d1853d3b58613.lean/declarations/realkernel--1a8d296ed129f1c39de7315f.md) | 45 | `declaration-track:1a8d296ed129f1c39de7315fd513b942ec1c746e02f19df9305ecdcd9ce28e83` |
| 2 | `theorem` | [smoothKernel_eq_realKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Varianta6585aaa64125b0f5e34019f34469f563b6dfc43094f583e0a8d1853d3b58613.lean/declarations/smoothkernel-eq-realkernel--c3f15ff308f33ecb5337815f.md) | 48 | `result-track:c3f15ff308f33ecb5337815f356efe8a7ea21658254d3856ab2fa05f4fe14fee` |
| 3 | `theorem` | [realKernel_eq_convolution](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Varianta6585aaa64125b0f5e34019f34469f563b6dfc43094f583e0a8d1853d3b58613.lean/declarations/realkernel-eq-convolution--2bd64aa99fad869922a53019.md) | 51 | `result-track:2bd64aa99fad869922a530194cfb62b466cb16504f364ccd6c9b4526cb407c53` |
| 4 | `theorem` | [realKernel_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Varianta6585aaa64125b0f5e34019f34469f563b6dfc43094f583e0a8d1853d3b58613.lean/declarations/realkernel-even--0efef7af75cc9181042f6d72.md) | 62 | `result-track:0efef7af75cc9181042f6d72c0067dcd3edc4b16d0c139d08c6793801ea8a98a` |
| 5 | `theorem` | [smoothKernel_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Varianta6585aaa64125b0f5e34019f34469f563b6dfc43094f583e0a8d1853d3b58613.lean/declarations/smoothkernel-even--7e4333c890c73c552db65bd4.md) | 70 | `result-track:7e4333c890c73c552db65bd42b1fadaac7969596ef6904211093bd2897e5a603` |
| 6 | `theorem` | [smoothed_support_open](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Varianta6585aaa64125b0f5e34019f34469f563b6dfc43094f583e0a8d1853d3b58613.lean/declarations/smoothed-support-open--890ec39092e80b464d84b2b6.md) | 75 | `result-track:890ec39092e80b464d84b2b6ab44b4c74fe86337698e16758ff6c8396e28d462` |
| 7 | `theorem` | [realKernel_support_open](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Varianta6585aaa64125b0f5e34019f34469f563b6dfc43094f583e0a8d1853d3b58613.lean/declarations/realkernel-support-open--958907f2de548d7c42216de4.md) | 85 | `result-track:958907f2de548d7c42216de406b7f186cd00999178422bd83640f1c1e900cc6f` |
| 8 | `theorem` | [smoothKernel_support_open](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Varianta6585aaa64125b0f5e34019f34469f563b6dfc43094f583e0a8d1853d3b58613.lean/declarations/smoothkernel-support-open--8b6465a3da8a58571da553ca.md) | 97 | `result-track:8b6465a3da8a58571da553cafe67f0e41b91c9e55bc9ed3cdb99546050e05246` |
| 9 | `def` | [primeIndices](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Varianta6585aaa64125b0f5e34019f34469f563b6dfc43094f583e0a8d1853d3b58613.lean/declarations/primeindices--2441ef493d4196d6b0aa9664.md) | 106 | `declaration-track:2441ef493d4196d6b0aa9664cbfacd033f72b7fd0010f6e7d245d01acc48b609` |
| 10 | `theorem` | [mem_primeIndices_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Varianta6585aaa64125b0f5e34019f34469f563b6dfc43094f583e0a8d1853d3b58613.lean/declarations/mem-primeindices-iff--567f5dc7b72d2da02c482708.md) | 110 | `result-track:567f5dc7b72d2da02c482708e39393ac53983b8477b64be4cbc4a3df247645b1` |
| 11 | `def` | [primeSummand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Varianta6585aaa64125b0f5e34019f34469f563b6dfc43094f583e0a8d1853d3b58613.lean/declarations/primesummand--8e5b764cec3e245a9536f2db.md) | 116 | `declaration-track:8e5b764cec3e245a9536f2db2daa113269d0239f467c4d6d4ee795784f126b3e` |
| 12 | `theorem` | [primeSummand_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Varianta6585aaa64125b0f5e34019f34469f563b6dfc43094f583e0a8d1853d3b58613.lean/declarations/primesummand-zero--eb46768a5265dfe7a0318eaa.md) | 120 | `result-track:eb46768a5265dfe7a0318eaaa61dcfb7199ac40f49ee8240b9c1bbbdbb209b75` |
| 13 | `theorem` | [prime_sum_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Varianta6585aaa64125b0f5e34019f34469f563b6dfc43094f583e0a8d1853d3b58613.lean/declarations/prime-sum-eq--691e9b3cecb880c592361e00.md) | 142 | `result-track:691e9b3cecb880c592361e00a957d331518c76bdf04d38a4cba5fb89b427ea97` |
| 14 | `theorem` | [source_fourier_conj](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Varianta6585aaa64125b0f5e34019f34469f563b6dfc43094f583e0a8d1853d3b58613.lean/declarations/source-fourier-conj--a489be33f9031c809eb7436d.md) | 162 | `result-track:a489be33f9031c809eb7436de9dc84d20b70b1005c4c4cfd93b25bd3b7a3df84` |
| 15 | `theorem` | [paperFT_kernel_real](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Varianta6585aaa64125b0f5e34019f34469f563b6dfc43094f583e0a8d1853d3b58613.lean/declarations/paperft-kernel-real--ab07b45bc3d3a7b5ea9499de.md) | 177 | `result-track:ab07b45bc3d3a7b5ea9499de39c4fb4e7995dfa58c1c7f5705a3d50051cdf03f` |
| 16 | `theorem` | [smoothed_archimedean_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Varianta6585aaa64125b0f5e34019f34469f563b6dfc43094f583e0a8d1853d3b58613.lean/declarations/smoothed-archimedean-integrable--e50005ffede31d89f588561a.md) | 187 | `result-track:e50005ffede31d89f588561a4aa6dfaef840b0400859591624e98fdd45dec62b` |
| 17 | `theorem` | [gamma_integrand_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Varianta6585aaa64125b0f5e34019f34469f563b6dfc43094f583e0a8d1853d3b58613.lean/declarations/gamma-integrand-eq--828c566019feefb4eb4f729f.md) | 220 | `result-track:828c566019feefb4eb4f729f1550e5e1cad7d0282f8bf8d833339bae51583ea8` |
| 18 | `theorem` | [gamma_integrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Varianta6585aaa64125b0f5e34019f34469f563b6dfc43094f583e0a8d1853d3b58613.lean/declarations/gamma-integrand-integrable--fcfb0b9e3ea618ec87d487ec.md) | 232 | `result-track:fcfb0b9e3ea618ec87d487ecc8812ea9fc4c7ef723246f0d0ab547ec67c6a4c9` |
| 19 | `theorem` | [gamma_integral_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Varianta6585aaa64125b0f5e34019f34469f563b6dfc43094f583e0a8d1853d3b58613.lean/declarations/gamma-integral-eq--2424c7f30dc1a5ebf89c0c80.md) | 240 | `result-track:2424c7f30dc1a5ebf89c0c801e0c582ca05474731ab5b3cb952fba4004c8fa9b` |
| 20 | `theorem` | [positive_real_moment_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Varianta6585aaa64125b0f5e34019f34469f563b6dfc43094f583e0a8d1853d3b58613.lean/declarations/positive-real-moment-zero--800eb38437240dbd0aaba180.md) | 250 | `result-track:800eb38437240dbd0aaba180385de7d756ac762ff6e5e5b1b6fb3e1895c3d37d` |
| 21 | `theorem` | [real_pole_contribution_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Varianta6585aaa64125b0f5e34019f34469f563b6dfc43094f583e0a8d1853d3b58613.lean/declarations/real-pole-contribution-zero--e0ab5cff1cd9dbe4bd3aafa9.md) | 267 | `result-track:e0ab5cff1cd9dbe4bd3aafa9b470c8249d737b3ed686820653492ba2ac57b095` |
| 22 | `theorem` | [kernel_pole_values](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Varianta6585aaa64125b0f5e34019f34469f563b6dfc43094f583e0a8d1853d3b58613.lean/declarations/kernel-pole-values--2a91aacc19dff3adfac04657.md) | 273 | `result-track:2a91aacc19dff3adfac04657ecf2620602cc6bb6f345bda5f7755b9dc0909a07` |
| 23 | `theorem` | [literatureRHS_eq_arithmetic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Varianta6585aaa64125b0f5e34019f34469f563b6dfc43094f583e0a8d1853d3b58613.lean/declarations/literaturerhs-eq-arithmetic--6b73da1f39f12697ea29d6d9.md) | 293 | `result-track:6b73da1f39f12697ea29d6d998b922f217c7ef901e5651c1083817863def78ba` |
| 24 | `theorem` | [kernel_point_formula](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Varianta6585aaa64125b0f5e34019f34469f563b6dfc43094f583e0a8d1853d3b58613.lean/declarations/kernel-point-formula--43df7db994004b6cda51c4e2.md) | 308 | `result-track:43df7db994004b6cda51c4e2d94393fae36cae1fe79005cc49559504460c4570` |
| 25 | `theorem` | [smooth_explicit_formula](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Varianta6585aaa64125b0f5e34019f34469f563b6dfc43094f583e0a8d1853d3b58613.lean/declarations/smooth-explicit-formula--bb47f3822886d0d2d970ed71.md) | 316 | `result-track:bb47f3822886d0d2d970ed7164ab18ed52eaed89b8bc673db922b03e864d8068` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
