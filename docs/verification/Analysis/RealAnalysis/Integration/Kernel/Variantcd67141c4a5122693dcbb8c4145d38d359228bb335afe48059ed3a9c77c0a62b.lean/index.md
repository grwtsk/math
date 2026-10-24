# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Kernel.Variantcd67141c4a5122693dcbb8c4145d38d359228bb335afe48059ed3a9c77c0a62b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17d67e9f4dd960a0ad958f13b18f253153d75489",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Kernel/Variantcd67141c4a5122693dcbb8c4145d38d359228bb335afe48059ed3a9c77c0a62b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variantcd67141c4a5122693dcbb8c4145d38d359228bb335afe48059ed3a9c77c0a62b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variantcd67141c4a5122693dcbb8c4145d38d359228bb335afe48059ed3a9c77c0a62b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17d67e9f4dd960a0ad958f13b18f253153d75489`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Kernel/Variantcd67141c4a5122693dcbb8c4145d38d359228bb335afe48059ed3a9c77c0a62b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Kernel/Variantcd67141c4a5122693dcbb8c4145d38d359228bb335afe48059ed3a9c77c0a62b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Laplace.Algebra` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [kernelIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variantcd67141c4a5122693dcbb8c4145d38d359228bb335afe48059ed3a9c77c0a62b.lean/declarations/kernelintegrand--d88a925e793aeb95a3a5ab07.md) | 38 | `declaration-track:d88a925e793aeb95a3a5ab07d57c2e3d458ac3c13ff6e34f69388edd164d4cb5` |
| 2 | `lemma` | [norm_kernelIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variantcd67141c4a5122693dcbb8c4145d38d359228bb335afe48059ed3a9c77c0a62b.lean/declarations/norm-kernelintegrand--8bc9f73199dde9dabd72e846.md) | 42 | `result-track:8bc9f73199dde9dabd72e846bdb1ed66dddb571bb57d65a8748f05947df61bf4` |
| 3 | `lemma` | [kernelIntegrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variantcd67141c4a5122693dcbb8c4145d38d359228bb335afe48059ed3a9c77c0a62b.lean/declarations/kernelintegrand-integrable--33faafcc0a84fed63627c037.md) | 50 | `result-track:33faafcc0a84fed63627c03796886cf71335874b3c9413ca87961ef34e8bad7c` |
| 4 | `lemma` | [kernelIntegrand_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variantcd67141c4a5122693dcbb8c4145d38d359228bb335afe48059ed3a9c77c0a62b.lean/declarations/kernelintegrand-tendsto--960c90696563f296d3b6495c.md) | 68 | `result-track:960c90696563f296d3b6495cfe7f2e52ac2285df0e342e228d9aed18600ba061` |
| 5 | `lemma` | [kernelIntegrand_deriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variantcd67141c4a5122693dcbb8c4145d38d359228bb335afe48059ed3a9c77c0a62b.lean/declarations/kernelintegrand-deriv--cbd1a9e5803de24b99b0215a.md) | 81 | `result-track:cbd1a9e5803de24b99b0215a25ea78d34b4351fc32a10bf3266d2372af2e9ec4` |
| 6 | `lemma` | [integral_recurrence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variantcd67141c4a5122693dcbb8c4145d38d359228bb335afe48059ed3a9c77c0a62b.lean/declarations/integral-recurrence--73119b70bb966e95a391ae11.md) | 95 | `result-track:73119b70bb966e95a391ae11e0cbd10baf8e7b08fb78cee9831408d9b3ec8537` |
| 7 | `def` | [kernelNumerator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variantcd67141c4a5122693dcbb8c4145d38d359228bb335afe48059ed3a9c77c0a62b.lean/declarations/kernelnumerator--ec1e5e28808cf941f4b166fa.md) | 121 | `declaration-track:ec1e5e28808cf941f4b166fafb3f170f5d7f06fd15fda8936051a84c6765e2c0` |
| 8 | `def` | [laplaceKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variantcd67141c4a5122693dcbb8c4145d38d359228bb335afe48059ed3a9c77c0a62b.lean/declarations/laplacekernel--48ed5b77d2c0fb5e64e2d390.md) | 126 | `declaration-track:48ed5b77d2c0fb5e64e2d390e47a9ef01b57d54f1157e26c5c75d59ed1c92d3c` |
| 9 | `lemma` | [laplaceKernel_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variantcd67141c4a5122693dcbb8c4145d38d359228bb335afe48059ed3a9c77c0a62b.lean/declarations/laplacekernel-zero--0e57f46344ec1bea0982ec1b.md) | 129 | `result-track:0e57f46344ec1bea0982ec1bff94dee2fd8cd16ddb32e97b9890ccaea7f801bf` |
| 10 | `lemma` | [laplaceKernel_succ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variantcd67141c4a5122693dcbb8c4145d38d359228bb335afe48059ed3a9c77c0a62b.lean/declarations/laplacekernel-succ--8b45106a7258239d9062d1d8.md) | 133 | `result-track:8b45106a7258239d9062d1d8d8b3db1e104fd26eabc2209ccfca8e239137f3b1` |
| 11 | `lemma` | [integral_eq_laplaceKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variantcd67141c4a5122693dcbb8c4145d38d359228bb335afe48059ed3a9c77c0a62b.lean/declarations/integral-eq-laplacekernel--06dd1baebe9b7cf75990b68b.md) | 142 | `result-track:06dd1baebe9b7cf75990b68beab35bfe43d07d613cca94069f5e785587e3f50a` |
| 12 | `lemma` | [kernelNumerator_eq_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variantcd67141c4a5122693dcbb8c4145d38d359228bb335afe48059ed3a9c77c0a62b.lean/declarations/kernelnumerator-eq-sum--d235a679e4ef1eee4360e431.md) | 161 | `result-track:d235a679e4ef1eee4360e431dab78a539233837a498dde430eaa59c1ba8bbaa4` |
| 13 | `lemma` | [laplaceKernel_eq_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variantcd67141c4a5122693dcbb8c4145d38d359228bb335afe48059ed3a9c77c0a62b.lean/declarations/laplacekernel-eq-sum--efc142dc6ef6bf8fcd18334c.md) | 182 | `result-track:efc142dc6ef6bf8fcd18334cee032a5b4eade46491443641f873492bafe0c8ec` |
| 14 | `lemma` | [kernelNumerator_eq_source_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variantcd67141c4a5122693dcbb8c4145d38d359228bb335afe48059ed3a9c77c0a62b.lean/declarations/kernelnumerator-eq-source-sum--41dc170aff9c338d7892dd91.md) | 193 | `result-track:41dc170aff9c338d7892dd9108ec2d7147e85d110652bf432eb70e1cf9520400` |
| 15 | `theorem` | [laplaceKernel_eq_J](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variantcd67141c4a5122693dcbb8c4145d38d359228bb335afe48059ed3a9c77c0a62b.lean/declarations/laplacekernel-eq-j--643863d2f8192bd84826ecc4.md) | 205 | `result-track:643863d2f8192bd84826ecc43bc576cf95f3c5d1bc8714cf4ee1d57c94d3f9ce` |
| 16 | `theorem` | [j_integral_obligation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variantcd67141c4a5122693dcbb8c4145d38d359228bb335afe48059ed3a9c77c0a62b.lean/declarations/j-integral-obligation--5ab02e721b3fd48a11a1c5be.md) | 226 | `result-track:5ab02e721b3fd48a11a1c5be212e3e1b19fd9b315e16f0b86fb62d6d262c37d7` |
| 17 | `def` | [headIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variantcd67141c4a5122693dcbb8c4145d38d359228bb335afe48059ed3a9c77c0a62b.lean/declarations/headintegral--81b7be9d315f4b49421e6635.md) | 244 | `declaration-track:81b7be9d315f4b49421e663549712e60403c39b699ad187abdd7dbbb44e0ffd0` |
| 18 | `lemma` | [headIntegral_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variantcd67141c4a5122693dcbb8c4145d38d359228bb335afe48059ed3a9c77c0a62b.lean/declarations/headintegral-zero--151dedb5b40bf1ca216de6ca.md) | 247 | `result-track:151dedb5b40bf1ca216de6ca4cee8a9e7e7b6bdf2cfc0ca6a766576d97bcb01b` |
| 19 | `lemma` | [headIntegral_succ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variantcd67141c4a5122693dcbb8c4145d38d359228bb335afe48059ed3a9c77c0a62b.lean/declarations/headintegral-succ--4127b76f84ab8fffc4b9fe10.md) | 261 | `result-track:4127b76f84ab8fffc4b9fe10a58cca3bfcf71a06c517a2a933791680ea14e101` |
| 20 | `def` | [regularKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variantcd67141c4a5122693dcbb8c4145d38d359228bb335afe48059ed3a9c77c0a62b.lean/declarations/regularkernel--b51120cc0c74e61bd2ba84c7.md) | 304 | `declaration-track:b51120cc0c74e61bd2ba84c76c36308a9547a3b4e7e3a9ebf6fa6d51f4d1f4e3` |
| 21 | `lemma` | [regularKernel_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variantcd67141c4a5122693dcbb8c4145d38d359228bb335afe48059ed3a9c77c0a62b.lean/declarations/regularkernel-zero--d17398b07b7ca1836e72759c.md) | 307 | `result-track:d17398b07b7ca1836e72759c149599195b0ba0d53b44a407b424b382318a89f0` |
| 22 | `lemma` | [regularKernel_succ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variantcd67141c4a5122693dcbb8c4145d38d359228bb335afe48059ed3a9c77c0a62b.lean/declarations/regularkernel-succ--7aecb6d02b64bacf0a71c90d.md) | 315 | `result-track:7aecb6d02b64bacf0a71c90d2eb3b72c2966b1b9d7f10bb517ccff7d4a8cb5ab` |
| 23 | `lemma` | [regularKernel_eq_laplaceKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variantcd67141c4a5122693dcbb8c4145d38d359228bb335afe48059ed3a9c77c0a62b.lean/declarations/regularkernel-eq-laplacekernel--da7946a1368e76ba9d7c9e03.md) | 328 | `result-track:da7946a1368e76ba9d7c9e03e44808137fc16da41de3f5c70ea33fde23d4ca81` |
| 24 | `lemma` | [setIntegral_Icc_eq_headIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variantcd67141c4a5122693dcbb8c4145d38d359228bb335afe48059ed3a9c77c0a62b.lean/declarations/setintegral-icc-eq-headintegral--22e25f84f9a807f8f490c947.md) | 340 | `result-track:22e25f84f9a807f8f490c947b9e61b4e0f39e98bd7b1af4fdbe699f8a6dd5d64` |
| 25 | `theorem` | [j_regular_part_obligation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variantcd67141c4a5122693dcbb8c4145d38d359228bb335afe48059ed3a9c77c0a62b.lean/declarations/j-regular-part-obligation--4e1543ab26dd5dc29d13167d.md) | 352 | `result-track:4e1543ab26dd5dc29d13167d8d280842432fa43116f30f20460ddee31ff18161` |
| 26 | `lemma` | [kernelNumerator_analytic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variantcd67141c4a5122693dcbb8c4145d38d359228bb335afe48059ed3a9c77c0a62b.lean/declarations/kernelnumerator-analytic--fd44936e297a62d0d889df70.md) | 360 | `result-track:fd44936e297a62d0d889df70888fc1562dd4edd7508dc7bbbb3315934ed6f85d` |
| 27 | `lemma` | [laplaceKernel_analytic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variantcd67141c4a5122693dcbb8c4145d38d359228bb335afe48059ed3a9c77c0a62b.lean/declarations/laplacekernel-analytic--69e58494ab91e0438e5d729d.md) | 371 | `result-track:69e58494ab91e0438e5d729df64ad74fecd8b66e4572d961c6a3c0a28d4e67b8` |
| 28 | `lemma` | [kernelNumerator_at_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variantcd67141c4a5122693dcbb8c4145d38d359228bb335afe48059ed3a9c77c0a62b.lean/declarations/kernelnumerator-at-zero--28da965cd7046ac0c6439e69.md) | 378 | `result-track:28da965cd7046ac0c6439e69f064ea81061427c5d7fec8c9074fdab13fc428d6` |
| 29 | `lemma` | [laplaceKernel_cleared](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variantcd67141c4a5122693dcbb8c4145d38d359228bb335afe48059ed3a9c77c0a62b.lean/declarations/laplacekernel-cleared--f1b4ec78cf07ae76a1da51c8.md) | 387 | `result-track:f1b4ec78cf07ae76a1da51c8fa0d4ffd589d365ad4bf69a26e687c8b385f7588` |
| 30 | `lemma` | [laplaceKernel_cleared_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variantcd67141c4a5122693dcbb8c4145d38d359228bb335afe48059ed3a9c77c0a62b.lean/declarations/laplacekernel-cleared-tendsto--d1e98e45232cb9127bffb6bc.md) | 395 | `result-track:d1e98e45232cb9127bffb6bcf9450c97f6808f6097d7de8d96841b8066ca4bb2` |
| 31 | `theorem` | [J_cleared_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variantcd67141c4a5122693dcbb8c4145d38d359228bb335afe48059ed3a9c77c0a62b.lean/declarations/j-cleared-tendsto--d5c5ac015673c5963b96f33f.md) | 417 | `result-track:d5c5ac015673c5963b96f33f6a4ab62f897693c2282abf6f11b409b0001bb6b6` |
| 32 | `theorem` | [kernel_checkpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Kernel/Variantcd67141c4a5122693dcbb8c4145d38d359228bb335afe48059ed3a9c77c0a62b.lean/declarations/kernel-checkpoint--c27a9c1d219013e828759343.md) | 427 | `result-track:c27a9c1d219013e82875934375c0fd3c430f055f60abd730e4be7e7c711407db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
