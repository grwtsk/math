# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ThetaPositiveLift.Variantfec4e60e627e792815ebcd02df3a2d13a3f6e9d24af18e59359a89ea36d6ca77

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad30a12da4cf20c1c25f5a5e173d9f019b4d9d7a",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantfec4e60e627e792815ebcd02df3a2d13a3f6e9d24af18e59359a89ea36d6ca77.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantfec4e60e627e792815ebcd02df3a2d13a3f6e9d24af18e59359a89ea36d6ca77.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantfec4e60e627e792815ebcd02df3a2d13a3f6e9d24af18e59359a89ea36d6ca77.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad30a12da4cf20c1c25f5a5e173d9f019b4d9d7a`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantfec4e60e627e792815ebcd02df3a2d13a3f6e9d24af18e59359a89ea36d6ca77.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantfec4e60e627e792815ebcd02df3a2d13a3f6e9d24af18e59359a89ea36d6ca77.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaKernel` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.SmoothSeries` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.HurwitzZetaEven` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaPsiTerm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantfec4e60e627e792815ebcd02df3a2d13a3f6e9d24af18e59359a89ea36d6ca77.lean/declarations/thetapsiterm--e1a9cce4e7dfd1b985e689b3.md) | 38 | `declaration-track:e1a9cce4e7dfd1b985e689b3de2e799fca42ece795ef29e0e695478877eb7132` |
| 2 | `def` | [thetaPsi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantfec4e60e627e792815ebcd02df3a2d13a3f6e9d24af18e59359a89ea36d6ca77.lean/declarations/thetapsi--796ec74ee5b85b4b7df9ddc3.md) | 42 | `declaration-track:796ec74ee5b85b4b7df9ddc305684c331323dc4d30d6c32208e76ca5b1a477ce` |
| 3 | `def` | [thetaAMode](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantfec4e60e627e792815ebcd02df3a2d13a3f6e9d24af18e59359a89ea36d6ca77.lean/declarations/thetaamode--a5917001a62a44f7571e5b01.md) | 46 | `declaration-track:a5917001a62a44f7571e5b01e0a0fb13d40c6631444f672b98f4627907ebb0f6` |
| 4 | `def` | [thetaAModeDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantfec4e60e627e792815ebcd02df3a2d13a3f6e9d24af18e59359a89ea36d6ca77.lean/declarations/thetaamodederiv--1e42799511aa268839849755.md) | 50 | `declaration-track:1e42799511aa2688398497555e7e8df4d217b61c1d7f3b1840928cde2eb1c812` |
| 5 | `def` | [thetaAModeSecond](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantfec4e60e627e792815ebcd02df3a2d13a3f6e9d24af18e59359a89ea36d6ca77.lean/declarations/thetaamodesecond--03c034372789e8eb1f52be5a.md) | 55 | `declaration-track:03c034372789e8eb1f52be5acd888a8d3a772d95d543ce05d0fd763b8dc223f4` |
| 6 | `def` | [thetaA](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantfec4e60e627e792815ebcd02df3a2d13a3f6e9d24af18e59359a89ea36d6ca77.lean/declarations/thetaa--7704c884fc3ac6d47533ad0c.md) | 61 | `declaration-track:7704c884fc3ac6d47533ad0cdd93cdd8dd147814f563ca0755072d35178a63ac` |
| 7 | `def` | [thetaADerivSeries](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantfec4e60e627e792815ebcd02df3a2d13a3f6e9d24af18e59359a89ea36d6ca77.lean/declarations/thetaaderivseries--7c28fa3059bbc99606f6cad3.md) | 65 | `declaration-track:7c28fa3059bbc99606f6cad34d36602b80c22636206366efc6e6d64ee8dbba72` |
| 8 | `def` | [thetaASecondSeries](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantfec4e60e627e792815ebcd02df3a2d13a3f6e9d24af18e59359a89ea36d6ca77.lean/declarations/thetaasecondseries--04bc57d64dd377653c5273e8.md) | 69 | `declaration-track:04bc57d64dd377653c5273e894dbaf59769e3b48c7e0ad6f283bc0146b94984f` |
| 9 | `theorem` | [thetaAMode_eq_gaussian](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantfec4e60e627e792815ebcd02df3a2d13a3f6e9d24af18e59359a89ea36d6ca77.lean/declarations/thetaamode-eq-gaussian--89b49bd0103b99a689e825e6.md) | 72 | `result-track:89b49bd0103b99a689e825e6cd6672b2e6994e7b06350f5d50cff0b5901e37b4` |
| 10 | `theorem` | [thetaAModeDeriv_eq_gaussians](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantfec4e60e627e792815ebcd02df3a2d13a3f6e9d24af18e59359a89ea36d6ca77.lean/declarations/thetaamodederiv-eq-gaussians--32d55a964b24556ae7489fed.md) | 77 | `result-track:32d55a964b24556ae7489feda96e6f467eeffaef4fdd5b401744625edcb988e2` |
| 11 | `theorem` | [thetaAModeSecond_eq_gaussians](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantfec4e60e627e792815ebcd02df3a2d13a3f6e9d24af18e59359a89ea36d6ca77.lean/declarations/thetaamodesecond-eq-gaussians--8f267a0262c5bc13e96a43db.md) | 90 | `result-track:8f267a0262c5bc13e96a43db23a0e3b0ba0c105c2e59d567bd3501f50210b2fb` |
| 12 | `theorem` | [thetaAModeSecond_sub_mode](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantfec4e60e627e792815ebcd02df3a2d13a3f6e9d24af18e59359a89ea36d6ca77.lean/declarations/thetaamodesecond-sub-mode--4a3d413e4b675b7b2e7b85a8.md) | 110 | `result-track:4a3d413e4b675b7b2e7b85a8f760af0d320135aa023d660b884095fab249d6e2` |
| 13 | `theorem` | [thetaAMode_summable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantfec4e60e627e792815ebcd02df3a2d13a3f6e9d24af18e59359a89ea36d6ca77.lean/declarations/thetaamode-summable--9a540267c62bebca581cb94d.md) | 116 | `result-track:9a540267c62bebca581cb94d322d06b73707ac07135bb6e35bf294ab8c6e532d` |
| 14 | `theorem` | [thetaAModeDeriv_summable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantfec4e60e627e792815ebcd02df3a2d13a3f6e9d24af18e59359a89ea36d6ca77.lean/declarations/thetaamodederiv-summable--bc2eac6d1898624982043ae9.md) | 122 | `result-track:bc2eac6d1898624982043ae9f4a1da4c373aac3583ede108830bbf49f07c46d5` |
| 15 | `theorem` | [thetaAModeSecond_summable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantfec4e60e627e792815ebcd02df3a2d13a3f6e9d24af18e59359a89ea36d6ca77.lean/declarations/thetaamodesecond-summable--1d4561700a486a3ad4c9c6f3.md) | 132 | `result-track:1d4561700a486a3ad4c9c6f33cbecab4ebdb9a952774162f19e23bec24d5f829` |
| 16 | `theorem` | [thetaA_eq_tsum_modes](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantfec4e60e627e792815ebcd02df3a2d13a3f6e9d24af18e59359a89ea36d6ca77.lean/declarations/thetaa-eq-tsum-modes--f6a1c497d24445898b5ef4e2.md) | 144 | `result-track:f6a1c497d24445898b5ef4e2f75c1970248ebe4e8fbb9fd6dca0ef6c6f3d9eac` |
| 17 | `theorem` | [thetaAMode_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantfec4e60e627e792815ebcd02df3a2d13a3f6e9d24af18e59359a89ea36d6ca77.lean/declarations/thetaamode-hasderivat--80e38b2e7a44dc64336693c0.md) | 149 | `result-track:80e38b2e7a44dc64336693c02d9a2a8b538cd73d8bb4b6a5a2ab16b51f1b34e3` |
| 18 | `theorem` | [thetaAModeDeriv_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantfec4e60e627e792815ebcd02df3a2d13a3f6e9d24af18e59359a89ea36d6ca77.lean/declarations/thetaamodederiv-hasderivat--c3e2343f363be4c75addde87.md) | 174 | `result-track:c3e2343f363be4c75addde8733a6d44c6a569401434b883bc6b46ea3a71c68a1` |
| 19 | `def` | [thetaADerivCompactBound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantfec4e60e627e792815ebcd02df3a2d13a3f6e9d24af18e59359a89ea36d6ca77.lean/declarations/thetaaderivcompactbound--24e3a937f31f9a8f3deef08e.md) | 198 | `declaration-track:24e3a937f31f9a8f3deef08e94b28696a94f327d8e79b2d5b9191127bb8c5b34` |
| 20 | `def` | [thetaASecondCompactBound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantfec4e60e627e792815ebcd02df3a2d13a3f6e9d24af18e59359a89ea36d6ca77.lean/declarations/thetaasecondcompactbound--2cacec071390b39c4700dfe8.md) | 204 | `declaration-track:2cacec071390b39c4700dfe83162380241cb38fdc1bc7bd766b713faa813673e` |
| 21 | `theorem` | [thetaADerivCompactBound_summable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantfec4e60e627e792815ebcd02df3a2d13a3f6e9d24af18e59359a89ea36d6ca77.lean/declarations/thetaaderivcompactbound-summable--70833deafb78a6443538e3ca.md) | 211 | `result-track:70833deafb78a6443538e3ca51209e3c22190f6e962909158ef15a0ffe1ce42e` |
| 22 | `theorem` | [thetaASecondCompactBound_summable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantfec4e60e627e792815ebcd02df3a2d13a3f6e9d24af18e59359a89ea36d6ca77.lean/declarations/thetaasecondcompactbound-summable--7ac84e355adb51ba76ed5cd8.md) | 218 | `result-track:7ac84e355adb51ba76ed5cd8dc4ccb917f19e8168249fc5a5e861f4b2565b232` |
| 23 | `theorem` | [f_nat_exp_four_mono](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantfec4e60e627e792815ebcd02df3a2d13a3f6e9d24af18e59359a89ea36d6ca77.lean/declarations/f-nat-exp-four-mono--750a99ce7649d625e430cedb.md) | 227 | `result-track:750a99ce7649d625e430cedba097c8dd5b80282b7366f78e7075452221a12017` |
| 24 | `theorem` | [thetaAModeDeriv_norm_le_compactBound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantfec4e60e627e792815ebcd02df3a2d13a3f6e9d24af18e59359a89ea36d6ca77.lean/declarations/thetaamodederiv-norm-le-compactbound--cd9c0bcabd4cb60efe9778f6.md) | 238 | `result-track:cd9c0bcabd4cb60efe9778f6a59ca3089f67244b26b2eba53aa40742bd382d13` |
| 25 | `theorem` | [thetaAModeSecond_norm_le_compactBound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantfec4e60e627e792815ebcd02df3a2d13a3f6e9d24af18e59359a89ea36d6ca77.lean/declarations/thetaamodesecond-norm-le-compactbound--fac66e3fc55f322379d47d9e.md) | 254 | `result-track:fac66e3fc55f322379d47d9e8c64a7dfb6ddba4c14472155a29b21dd35d39764` |
| 26 | `theorem` | [hasDerivAt_thetaA](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantfec4e60e627e792815ebcd02df3a2d13a3f6e9d24af18e59359a89ea36d6ca77.lean/declarations/hasderivat-thetaa--6882d16675bbef19a9dda77c.md) | 283 | `result-track:6882d16675bbef19a9dda77cff7f6383634d7b88506c602e9f9799e487bef951` |
| 27 | `theorem` | [hasDerivAt_thetaADerivSeries](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantfec4e60e627e792815ebcd02df3a2d13a3f6e9d24af18e59359a89ea36d6ca77.lean/declarations/hasderivat-thetaaderivseries--bd9fcabcf2dbabb3a03de601.md) | 299 | `result-track:bd9fcabcf2dbabb3a03de601d3e7a1119c1de3a89a7885547f0e2e3f698b3dd3` |
| 28 | `theorem` | [thetaA_second_deriv_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantfec4e60e627e792815ebcd02df3a2d13a3f6e9d24af18e59359a89ea36d6ca77.lean/declarations/thetaa-second-deriv-sub--ae68b4e93742617d6a74da0d.md) | 313 | `result-track:ae68b4e93742617d6a74da0d8ee23f01730d1399d85a98b553111877850d8d52` |
| 29 | `theorem` | [thetaPsi_eq_cosKernel](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantfec4e60e627e792815ebcd02df3a2d13a3f6e9d24af18e59359a89ea36d6ca77.lean/declarations/thetapsi-eq-coskernel--9397f3dd98e772c178e70dcc.md) | 331 | `result-track:9397f3dd98e772c178e70dcc0a8d6590c34c9e1b5ecbc02f070c510930fa8bce` |
| 30 | `theorem` | [exp_four_rpow_half](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantfec4e60e627e792815ebcd02df3a2d13a3f6e9d24af18e59359a89ea36d6ca77.lean/declarations/exp-four-rpow-half--97454f15bfd4f1c80397c0ea.md) | 340 | `result-track:97454f15bfd4f1c80397c0eac2acff40ed886e411aae38526fee7976f3c3ba8a` |
| 31 | `theorem` | [one_div_exp_four](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantfec4e60e627e792815ebcd02df3a2d13a3f6e9d24af18e59359a89ea36d6ca77.lean/declarations/one-div-exp-four--9881c5c668996b15a32573c8.md) | 346 | `result-track:9881c5c668996b15a32573c868cce00091374ffd4446a8c2b2b7c6baf65132a0` |
| 32 | `theorem` | [thetaA_reflection](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantfec4e60e627e792815ebcd02df3a2d13a3f6e9d24af18e59359a89ea36d6ca77.lean/declarations/thetaa-reflection--3bb12db89ae0467dd127c097.md) | 353 | `result-track:3bb12db89ae0467dd127c0978ae71eaf3d8025d1e5afdd5e540a9ff9ab5088ca` |
| 33 | `theorem` | [thetaA_deriv_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantfec4e60e627e792815ebcd02df3a2d13a3f6e9d24af18e59359a89ea36d6ca77.lean/declarations/thetaa-deriv-zero--dad17b48fe3c0f17e1e3df9e.md) | 371 | `result-track:dad17b48fe3c0f17e1e3df9ee042a86a52050dcb601ee568f3f34927c8af9aa4` |
| 34 | `theorem` | [theta_differential_bridge](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantfec4e60e627e792815ebcd02df3a2d13a3f6e9d24af18e59359a89ea36d6ca77.lean/declarations/theta-differential-bridge--246e93941b6e9081de6d1669.md) | 404 | `result-track:246e93941b6e9081de6d166939e2669a2674c0f184c34ad959caaa6fd3e29d96` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
