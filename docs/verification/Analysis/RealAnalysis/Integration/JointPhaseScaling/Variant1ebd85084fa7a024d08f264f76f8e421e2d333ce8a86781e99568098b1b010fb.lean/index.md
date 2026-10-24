# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.JointPhaseScaling.Variant1ebd85084fa7a024d08f264f76f8e421e2d333ce8a86781e99568098b1b010fb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fa21fdfce150b1b9d9bbea5757ea05d4c04189ec",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variant1ebd85084fa7a024d08f264f76f8e421e2d333ce8a86781e99568098b1b010fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variant1ebd85084fa7a024d08f264f76f8e421e2d333ce8a86781e99568098b1b010fb.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variant1ebd85084fa7a024d08f264f76f8e421e2d333ce8a86781e99568098b1b010fb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fa21fdfce150b1b9d9bbea5757ea05d4c04189ec`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variant1ebd85084fa7a024d08f264f76f8e421e2d333ce8a86781e99568098b1b010fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variant1ebd85084fa7a024d08f264f76f8e421e2d333ce8a86781e99568098b1b010fb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.DilationFourierFactorization` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationSpectralLens` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.PrimeSquareEstimate` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [chi_scaled](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variant1ebd85084fa7a024d08f264f76f8e421e2d333ce8a86781e99568098b1b010fb.lean/declarations/chi-scaled--92319db3f9c0c1d01edfac85.md) | 28 | `result-track:92319db3f9c0c1d01edfac85f87667889b18bba8347d5e64a27fb5006ce0c604` |
| 2 | `theorem` | [source_fourier_scaled_bump](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variant1ebd85084fa7a024d08f264f76f8e421e2d333ce8a86781e99568098b1b010fb.lean/declarations/source-fourier-scaled-bump--f9538e05c2c7a2daec8e4640.md) | 36 | `result-track:f9538e05c2c7a2daec8e4640c8492bf73a6bb5775d9d8990a0b799c3f2e22ef8` |
| 3 | `def` | [rescaledDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variant1ebd85084fa7a024d08f264f76f8e421e2d333ce8a86781e99568098b1b010fb.lean/declarations/rescaleddensity--9d0c0358e40fe255cae391ec.md) | 55 | `declaration-track:9d0c0358e40fe255cae391ec08f12b5a9d0f937935120adced6f360f2556fc8e` |
| 4 | `def` | [scaledKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variant1ebd85084fa7a024d08f264f76f8e421e2d333ce8a86781e99568098b1b010fb.lean/declarations/scaledkernel--82d6ae2ba8e645ae2bd3e9b3.md) | 58 | `declaration-track:82d6ae2ba8e645ae2bd3e9b30e65079583f636679f0aa22fddac709dd8ba9329` |
| 5 | `def` | [bumpDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variant1ebd85084fa7a024d08f264f76f8e421e2d333ce8a86781e99568098b1b010fb.lean/declarations/bumpdensity--df3cb97d37f71a519d0b534c.md) | 62 | `declaration-track:df3cb97d37f71a519d0b534cb6199f715aee434a2a88520d531a6e32895ddaad` |
| 6 | `def` | [bumpMomentDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variant1ebd85084fa7a024d08f264f76f8e421e2d333ce8a86781e99568098b1b010fb.lean/declarations/bumpmomentdensity--da3c03eccb5d800e3d022816.md) | 66 | `declaration-track:da3c03eccb5d800e3d02281618e74478147f98ed7a7bf6431572e7e8723570d1` |
| 7 | `def` | [fixedKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variant1ebd85084fa7a024d08f264f76f8e421e2d333ce8a86781e99568098b1b010fb.lean/declarations/fixedkernel--4e6424681c2fd78b8b2532bb.md) | 69 | `declaration-track:4e6424681c2fd78b8b2532bbdc983ccd8f93c0d871ae76dbc83a67005c7310e5` |
| 8 | `theorem` | [source_fourier_normalized_test_scaled](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variant1ebd85084fa7a024d08f264f76f8e421e2d333ce8a86781e99568098b1b010fb.lean/declarations/source-fourier-normalized-test-scaled--ff9bdac3d9d905b6bfe9a938.md) | 73 | `result-track:ff9bdac3d9d905b6bfe9a93807e8f604639acaa2466445fdce8cad35154d3be2` |
| 9 | `theorem` | [rescaled_density_eq_bump_fourier](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variant1ebd85084fa7a024d08f264f76f8e421e2d333ce8a86781e99568098b1b010fb.lean/declarations/rescaled-density-eq-bump-fourier--b19cb08eb3fb5ad821a31003.md) | 86 | `result-track:b19cb08eb3fb5ad821a310037d8bc71094a165424b86f8cb710e2068659e3b6c` |
| 10 | `theorem` | [rescaled_density_eq_three_moments](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variant1ebd85084fa7a024d08f264f76f8e421e2d333ce8a86781e99568098b1b010fb.lean/declarations/rescaled-density-eq-three-moments--72c6d10b9a02d7ad9d89376b.md) | 100 | `result-track:72c6d10b9a02d7ad9d89376be99377b228f5b0719875f9c0e5c203d7e847a436` |
| 11 | `theorem` | [rescaled_density_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variant1ebd85084fa7a024d08f264f76f8e421e2d333ce8a86781e99568098b1b010fb.lean/declarations/rescaled-density-nonneg--f42ee04404ec00ef40026280.md) | 110 | `result-track:f42ee04404ec00ef4002628036ea2420880d1b0c893171e0e494dd3949c8ab83` |
| 12 | `theorem` | [rescaled_density_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variant1ebd85084fa7a024d08f264f76f8e421e2d333ce8a86781e99568098b1b010fb.lean/declarations/rescaled-density-integrable--ff46a477dd94b375dc2d2ecb.md) | 115 | `result-track:ff46a477dd94b375dc2d2ecb95fc374d47f64a39f20462d6826be6b4d5bc470a` |
| 13 | `theorem` | [rescaled_density_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variant1ebd85084fa7a024d08f264f76f8e421e2d333ce8a86781e99568098b1b010fb.lean/declarations/rescaled-density-integral--f15b5da2180f64467994dd5c.md) | 121 | `result-track:f15b5da2180f64467994dd5c59ec7c824011bc7481f12c39b22a29e0630f3fc7` |
| 14 | `theorem` | [source_bump_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variant1ebd85084fa7a024d08f264f76f8e421e2d333ce8a86781e99568098b1b010fb.lean/declarations/source-bump-integrable--0a06a7cbaf38b17b10ba2839.md) | 129 | `result-track:0a06a7cbaf38b17b10ba28391367eae7ee8ff405764522016d417dfb87df49b3` |
| 15 | `theorem` | [bump_moment_density_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variant1ebd85084fa7a024d08f264f76f8e421e2d333ce8a86781e99568098b1b010fb.lean/declarations/bump-moment-density-nonneg--1329c59e49e67501aedbbd22.md) | 137 | `result-track:1329c59e49e67501aedbbd22da6883e5e71ecdf2fe4ac9dfac7d70bcbdfdd39f` |
| 16 | `theorem` | [bump_moment_density_le_radius_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variant1ebd85084fa7a024d08f264f76f8e421e2d333ce8a86781e99568098b1b010fb.lean/declarations/bump-moment-density-le-radius-one--871232700dcf66bcb87a8479.md) | 143 | `result-track:871232700dcf66bcb87a847910e00d24e99912b062edd32375e5cf398ba9b4a1` |
| 17 | `theorem` | [bump_moment_density_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variant1ebd85084fa7a024d08f264f76f8e421e2d333ce8a86781e99568098b1b010fb.lean/declarations/bump-moment-density-integrable--a8d09ea9ae1b3a20013219ee.md) | 166 | `result-track:a8d09ea9ae1b3a20013219ee53407e623140d65abd5ebdf279461ff2ada36517` |
| 18 | `theorem` | [fixed_kernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variant1ebd85084fa7a024d08f264f76f8e421e2d333ce8a86781e99568098b1b010fb.lean/declarations/fixed-kernel-integrable--c182bf8df64b5ef3728e8878.md) | 179 | `result-track:c182bf8df64b5ef3728e8878d45d8ab06b737341db4f3608925978f051b3f121` |
| 19 | `theorem` | [scaled_kernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variant1ebd85084fa7a024d08f264f76f8e421e2d333ce8a86781e99568098b1b010fb.lean/declarations/scaled-kernel-integrable--303010a3a2879a91317d66d9.md) | 187 | `result-track:303010a3a2879a91317d66d95aa032b9290c40a2976e1dccb0987c23f44a00bd` |
| 20 | `theorem` | [scaled_kernel_eq_source_correlation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variant1ebd85084fa7a024d08f264f76f8e421e2d333ce8a86781e99568098b1b010fb.lean/declarations/scaled-kernel-eq-source-correlation--2fc3e8395faaf452e5003993.md) | 195 | `result-track:2fc3e8395faaf452e500399357a2eebcdb59b9dea1cd6744c284eace12c908e9` |
| 21 | `theorem` | [scaled_kernel_eq_three_fixed_kernels](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variant1ebd85084fa7a024d08f264f76f8e421e2d333ce8a86781e99568098b1b010fb.lean/declarations/scaled-kernel-eq-three-fixed-kernels--81df648ec9aa297a44f8f356.md) | 213 | `result-track:81df648ec9aa297a44f8f356113311239d21bfcd41c3360dfe69e72696a7ccf8` |
| 22 | `theorem` | [scaled_kernel_at_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variant1ebd85084fa7a024d08f264f76f8e421e2d333ce8a86781e99568098b1b010fb.lean/declarations/scaled-kernel-at-zero--f797cfcba4804266ce608455.md) | 232 | `result-track:f797cfcba4804266ce608455d6ee1720fa3a29ed3fdca5afc3b652b91eab7258` |
| 23 | `theorem` | [fixed_kernel_mass_values](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variant1ebd85084fa7a024d08f264f76f8e421e2d333ce8a86781e99568098b1b010fb.lean/declarations/fixed-kernel-mass-values--b8fd44b0b139642c32629e05.md) | 237 | `result-track:b8fd44b0b139642c32629e05fb00c7277ddc4187abf2e0de1f3f4329deb8c031` |
| 24 | `theorem` | [bump_moment_mass_values](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variant1ebd85084fa7a024d08f264f76f8e421e2d333ce8a86781e99568098b1b010fb.lean/declarations/bump-moment-mass-values--fac964aec5bd43c92ab036d8.md) | 253 | `result-track:fac964aec5bd43c92ab036d863dd2b212e1c7ae7775a65caa8048e17988c7b97` |
| 25 | `theorem` | [scaled_kernel_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variant1ebd85084fa7a024d08f264f76f8e421e2d333ce8a86781e99568098b1b010fb.lean/declarations/scaled-kernel-continuous--55d3c71393f142c8b8ea9a2a.md) | 260 | `result-track:55d3c71393f142c8b8ea9a2a60bd9e83daecbeeba4478b1c1b447175d070a245` |
| 26 | `theorem` | [scaled_kernel_eq_zero_of_two_le_abs](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variant1ebd85084fa7a024d08f264f76f8e421e2d333ce8a86781e99568098b1b010fb.lean/declarations/scaled-kernel-eq-zero-of-two-le-abs--7aeefde36c7157f5075719bd.md) | 269 | `result-track:7aeefde36c7157f5075719bd11b80ab403775e5dadade78f9d1b8e7fdce62c00` |
| 27 | `theorem` | [scaled_kernel_abs_le_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variant1ebd85084fa7a024d08f264f76f8e421e2d333ce8a86781e99568098b1b010fb.lean/declarations/scaled-kernel-abs-le-one--025d424f34b535bb4e191ca4.md) | 278 | `result-track:025d424f34b535bb4e191ca4f17f6f82ead9d3b370a37a1e95fdb38fb98e9d36` |
| 28 | `theorem` | [scaled_kernel_exponential_moment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variant1ebd85084fa7a024d08f264f76f8e421e2d333ce8a86781e99568098b1b010fb.lean/declarations/scaled-kernel-exponential-moment-integrable--d6bcd117f1ec7baaacf62a12.md) | 283 | `result-track:d6bcd117f1ec7baaacf62a121bbee1b34215ecc32880387d1ad640f8e1ea797c` |
| 29 | `theorem` | [scaled_kernel_exponential_moment_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variant1ebd85084fa7a024d08f264f76f8e421e2d333ce8a86781e99568098b1b010fb.lean/declarations/scaled-kernel-exponential-moment-zero--28ea94ed640b3a5174cb0913.md) | 299 | `result-track:28ea94ed640b3a5174cb09138ce76a4178a8b5482d63726fef75d2f71d7e1d1d` |
| 30 | `theorem` | [scaled_log_mem_range](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variant1ebd85084fa7a024d08f264f76f8e421e2d333ce8a86781e99568098b1b010fb.lean/declarations/scaled-log-mem-range--59a7f35a3c6521ab87846482.md) | 319 | `result-track:59a7f35a3c6521ab878464823ee92b7ef12c509693e34fe6ca46581b4562361b` |
| 31 | `theorem` | [lower_power_contribution_eq_scaled_kernel_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variant1ebd85084fa7a024d08f264f76f8e421e2d333ce8a86781e99568098b1b010fb.lean/declarations/lower-power-contribution-eq-scaled-kernel-sum--3724c1ac4bb831a8e9d7a1c8.md) | 330 | `result-track:3724c1ac4bb831a8e9d7a1c81f7a0fe2eb612dbda37a499f830ddd5cdda6c1c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
