# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.JointPhaseScaling.Variantf3f49692f7790ad7e70541dbf599fddf5e0916c251fc644c30cb82f6c5757a12

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "44a0060013dbf7344a8c4a0198a44acbeae31d29",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variantf3f49692f7790ad7e70541dbf599fddf5e0916c251fc644c30cb82f6c5757a12.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variantf3f49692f7790ad7e70541dbf599fddf5e0916c251fc644c30cb82f6c5757a12.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variantf3f49692f7790ad7e70541dbf599fddf5e0916c251fc644c30cb82f6c5757a12.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `44a0060013dbf7344a8c4a0198a44acbeae31d29`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variantf3f49692f7790ad7e70541dbf599fddf5e0916c251fc644c30cb82f6c5757a12.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variantf3f49692f7790ad7e70541dbf599fddf5e0916c251fc644c30cb82f6c5757a12.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.DilationFourierFactorization` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationSpectralLens` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.PrimeSquareEstimate` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [chi_scaled](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variantf3f49692f7790ad7e70541dbf599fddf5e0916c251fc644c30cb82f6c5757a12.lean/declarations/chi-scaled--adaa7735b1ea0230ddd3a141.md) | 36 | `result-track:adaa7735b1ea0230ddd3a1419d68e86ffb9dd9c86df46a60f4f5a0733401f046` |
| 2 | `theorem` | [source_fourier_scaled_bump](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variantf3f49692f7790ad7e70541dbf599fddf5e0916c251fc644c30cb82f6c5757a12.lean/declarations/source-fourier-scaled-bump--7479e10e35589a4a1b97c01d.md) | 44 | `result-track:7479e10e35589a4a1b97c01d0c9c13ed8341038b527aeb04ab72b8c495818092` |
| 3 | `def` | [rescaledDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variantf3f49692f7790ad7e70541dbf599fddf5e0916c251fc644c30cb82f6c5757a12.lean/declarations/rescaleddensity--f9914b257cd821b4a84652fc.md) | 63 | `declaration-track:f9914b257cd821b4a84652fcee8a34d7139cc12b6b9cef3769d6425b5b52e090` |
| 4 | `def` | [scaledKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variantf3f49692f7790ad7e70541dbf599fddf5e0916c251fc644c30cb82f6c5757a12.lean/declarations/scaledkernel--fbcf18798de24e77f6fd0b53.md) | 66 | `declaration-track:fbcf18798de24e77f6fd0b53b3fe12099b6ced04c632ea1e8077e2a56ddd41f6` |
| 5 | `def` | [bumpDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variantf3f49692f7790ad7e70541dbf599fddf5e0916c251fc644c30cb82f6c5757a12.lean/declarations/bumpdensity--7fbf8b8e7faae2be129877cf.md) | 70 | `declaration-track:7fbf8b8e7faae2be129877cf90c77d65eae156cac7fc536e0b52af5b43bf2034` |
| 6 | `def` | [bumpMomentDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variantf3f49692f7790ad7e70541dbf599fddf5e0916c251fc644c30cb82f6c5757a12.lean/declarations/bumpmomentdensity--9552bf4453fdba677bbba6f9.md) | 74 | `declaration-track:9552bf4453fdba677bbba6f964e7da5f6e8bae26c4864c5cfac4292fac8b16d8` |
| 7 | `def` | [fixedKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variantf3f49692f7790ad7e70541dbf599fddf5e0916c251fc644c30cb82f6c5757a12.lean/declarations/fixedkernel--615b629be81601980d6877ab.md) | 77 | `declaration-track:615b629be81601980d6877abbe1a86fe152292affcc742a22958c67fb7fbf58c` |
| 8 | `theorem` | [source_fourier_normalized_test_scaled](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variantf3f49692f7790ad7e70541dbf599fddf5e0916c251fc644c30cb82f6c5757a12.lean/declarations/source-fourier-normalized-test-scaled--d05ee7cf566351db5c5821e1.md) | 81 | `result-track:d05ee7cf566351db5c5821e1b6e9e70aab637e854bb7f7d6641d48330a9c672f` |
| 9 | `theorem` | [rescaled_density_eq_bump_fourier](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variantf3f49692f7790ad7e70541dbf599fddf5e0916c251fc644c30cb82f6c5757a12.lean/declarations/rescaled-density-eq-bump-fourier--334f5348275fb049f4a839f5.md) | 94 | `result-track:334f5348275fb049f4a839f52793aea33300a98bd33eb7fe223d667a5068b9be` |
| 10 | `theorem` | [rescaled_density_eq_three_moments](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variantf3f49692f7790ad7e70541dbf599fddf5e0916c251fc644c30cb82f6c5757a12.lean/declarations/rescaled-density-eq-three-moments--3d24ac94b218936bdce13192.md) | 108 | `result-track:3d24ac94b218936bdce1319215ea524df571452566b9b4426e0a1dbce9203e23` |
| 11 | `theorem` | [rescaled_density_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variantf3f49692f7790ad7e70541dbf599fddf5e0916c251fc644c30cb82f6c5757a12.lean/declarations/rescaled-density-nonneg--ed8a787691c3a2886e21e2a5.md) | 118 | `result-track:ed8a787691c3a2886e21e2a580bbf156efaa819df563c8bf6bcd9e967f128977` |
| 12 | `theorem` | [rescaled_density_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variantf3f49692f7790ad7e70541dbf599fddf5e0916c251fc644c30cb82f6c5757a12.lean/declarations/rescaled-density-integrable--1cbfa58172538557cb0b326c.md) | 123 | `result-track:1cbfa58172538557cb0b326cd71f4d1bda43c65256cd79032b6ea3203d28ed3a` |
| 13 | `theorem` | [rescaled_density_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variantf3f49692f7790ad7e70541dbf599fddf5e0916c251fc644c30cb82f6c5757a12.lean/declarations/rescaled-density-integral--2eb8aaaf8bc177cbd48a38b0.md) | 129 | `result-track:2eb8aaaf8bc177cbd48a38b0e99cf1543de29db84b7b18ae8d6ea8f69d7240e8` |
| 14 | `theorem` | [source_bump_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variantf3f49692f7790ad7e70541dbf599fddf5e0916c251fc644c30cb82f6c5757a12.lean/declarations/source-bump-integrable--c0c6d2aae407583a426bf35d.md) | 137 | `result-track:c0c6d2aae407583a426bf35d05bcd87f6dd79403d535ba73ee327e5c6e831026` |
| 15 | `theorem` | [bump_moment_density_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variantf3f49692f7790ad7e70541dbf599fddf5e0916c251fc644c30cb82f6c5757a12.lean/declarations/bump-moment-density-nonneg--7dd018597227bbacc8bc7137.md) | 145 | `result-track:7dd018597227bbacc8bc7137f0d6ae36d229813f9272f54274cfdf292aee1e40` |
| 16 | `theorem` | [bump_moment_density_le_radius_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variantf3f49692f7790ad7e70541dbf599fddf5e0916c251fc644c30cb82f6c5757a12.lean/declarations/bump-moment-density-le-radius-one--60f13b7e953e12bf8a3219d1.md) | 151 | `result-track:60f13b7e953e12bf8a3219d174097bcd8a5d5e6a2965b670085f33e41a31f914` |
| 17 | `theorem` | [bump_moment_density_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variantf3f49692f7790ad7e70541dbf599fddf5e0916c251fc644c30cb82f6c5757a12.lean/declarations/bump-moment-density-integrable--a7ec994254f1c3a4b3e54463.md) | 174 | `result-track:a7ec994254f1c3a4b3e544630ff0f7ed15c371fa2023f71836382bb9b91dc969` |
| 18 | `theorem` | [fixed_kernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variantf3f49692f7790ad7e70541dbf599fddf5e0916c251fc644c30cb82f6c5757a12.lean/declarations/fixed-kernel-integrable--0e58f4ff5b1acd164317c4f0.md) | 187 | `result-track:0e58f4ff5b1acd164317c4f081022ca796dfe6354d7871ceb9464dfd9ee1f832` |
| 19 | `theorem` | [scaled_kernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variantf3f49692f7790ad7e70541dbf599fddf5e0916c251fc644c30cb82f6c5757a12.lean/declarations/scaled-kernel-integrable--b48dcc415d50deb52917b3ff.md) | 195 | `result-track:b48dcc415d50deb52917b3ff146aa64c6e9f0a3199489c120feea0ec2f42be3d` |
| 20 | `theorem` | [scaled_kernel_eq_source_correlation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variantf3f49692f7790ad7e70541dbf599fddf5e0916c251fc644c30cb82f6c5757a12.lean/declarations/scaled-kernel-eq-source-correlation--d983240343225381a67b8320.md) | 203 | `result-track:d983240343225381a67b83207bf70bdcd9d555b5b0f728c172e010b7494958e4` |
| 21 | `theorem` | [scaled_kernel_eq_three_fixed_kernels](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variantf3f49692f7790ad7e70541dbf599fddf5e0916c251fc644c30cb82f6c5757a12.lean/declarations/scaled-kernel-eq-three-fixed-kernels--272562911cdaa814ac1ca386.md) | 221 | `result-track:272562911cdaa814ac1ca386a5afb14b7d7cd5d098bf08b3765ed5aaa4a4e722` |
| 22 | `theorem` | [scaled_kernel_at_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variantf3f49692f7790ad7e70541dbf599fddf5e0916c251fc644c30cb82f6c5757a12.lean/declarations/scaled-kernel-at-zero--0baa3f333c35944a4244dd55.md) | 240 | `result-track:0baa3f333c35944a4244dd553b1bf39443550ca0b8f48d92a1da4a5544d92ed3` |
| 23 | `theorem` | [fixed_kernel_mass_values](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variantf3f49692f7790ad7e70541dbf599fddf5e0916c251fc644c30cb82f6c5757a12.lean/declarations/fixed-kernel-mass-values--a5f321067cad93cf55fba058.md) | 245 | `result-track:a5f321067cad93cf55fba058dda147da05602980d0928c07de48cd50891c934c` |
| 24 | `theorem` | [bump_moment_mass_values](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variantf3f49692f7790ad7e70541dbf599fddf5e0916c251fc644c30cb82f6c5757a12.lean/declarations/bump-moment-mass-values--f505a2e3b815fdf49b741ac8.md) | 261 | `result-track:f505a2e3b815fdf49b741ac85c8a85ef624f65c58899cf9ea1f419a37cb844b2` |
| 25 | `theorem` | [scaled_kernel_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variantf3f49692f7790ad7e70541dbf599fddf5e0916c251fc644c30cb82f6c5757a12.lean/declarations/scaled-kernel-continuous--0343f383a2a1bfbab9f8c800.md) | 268 | `result-track:0343f383a2a1bfbab9f8c8001ea44f6c29207476589d225872cca022aaf41649` |
| 26 | `theorem` | [scaled_kernel_eq_zero_of_two_le_abs](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variantf3f49692f7790ad7e70541dbf599fddf5e0916c251fc644c30cb82f6c5757a12.lean/declarations/scaled-kernel-eq-zero-of-two-le-abs--2e539148db072efc4af2525d.md) | 277 | `result-track:2e539148db072efc4af2525d564b37f74fb9f8a26df5eef3eecb60b8b60e96ce` |
| 27 | `theorem` | [scaled_kernel_abs_le_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variantf3f49692f7790ad7e70541dbf599fddf5e0916c251fc644c30cb82f6c5757a12.lean/declarations/scaled-kernel-abs-le-one--e0fd60f65ef0be03c7db96df.md) | 286 | `result-track:e0fd60f65ef0be03c7db96df4b3d657e53e96a45e3b01d9c6eae601c30aa6f2d` |
| 28 | `theorem` | [scaled_kernel_exponential_moment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variantf3f49692f7790ad7e70541dbf599fddf5e0916c251fc644c30cb82f6c5757a12.lean/declarations/scaled-kernel-exponential-moment-integrable--1571dffff5fdcf89b4e200f0.md) | 291 | `result-track:1571dffff5fdcf89b4e200f0daa90eb31d991482ff16ff7d7a329e44e76a83ee` |
| 29 | `theorem` | [scaled_kernel_exponential_moment_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variantf3f49692f7790ad7e70541dbf599fddf5e0916c251fc644c30cb82f6c5757a12.lean/declarations/scaled-kernel-exponential-moment-zero--3c7bb2b8fa222d27f4508186.md) | 307 | `result-track:3c7bb2b8fa222d27f4508186278cd4fbcf8cd632e0dfbf14affad920c65a3be1` |
| 30 | `theorem` | [scaled_log_mem_range](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variantf3f49692f7790ad7e70541dbf599fddf5e0916c251fc644c30cb82f6c5757a12.lean/declarations/scaled-log-mem-range--a53ee8bb03daad18487c33de.md) | 327 | `result-track:a53ee8bb03daad18487c33de046b6920db37f24f37b6d2de3f9454fe9656e97a` |
| 31 | `theorem` | [lower_power_contribution_eq_scaled_kernel_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variantf3f49692f7790ad7e70541dbf599fddf5e0916c251fc644c30cb82f6c5757a12.lean/declarations/lower-power-contribution-eq-scaled-kernel-sum--497374891834b80b4c513b88.md) | 338 | `result-track:497374891834b80b4c513b8811a19b553ce8de3389b8518451596f68dfc0fd33` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
