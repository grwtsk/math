# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Basic.Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b1898c758cb7a7070476e7e756f3118068690522",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b1898c758cb7a7070476e7e756f3118068690522`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Instances.ENNReal.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Dirac` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PMF.](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean/declarations/pmf--59bd8f999b8f92145f35ccc0.md) | 41 | `declaration-track:59bd8f999b8f92145f35ccc0f6b06093ab17f86641f64f0375fc5f8ec9e260ca` |
| 2 | `instance` | [instFunLike](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean/declarations/instfunlike--ccf2a4f5e4a2009fcab4992d.md) | 46 | `declaration-track:ccf2a4f5e4a2009fcab4992db1aa81d611f89358be153ef7b78f4ccd048b3a70` |
| 3 | `theorem` | [ext](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean/declarations/ext--ba2d9d9b1cb4c2232ea7d50b.md) | 51 | `result-track:ba2d9d9b1cb4c2232ea7d50b4b7fab3ad5a12e475c6e3f03c9e47ad7c29a5856` |
| 4 | `theorem` | [hasSum_coe_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean/declarations/hassum-coe-one--68da1d0b46e50560fb992aee.md) | 54 | `result-track:68da1d0b46e50560fb992aeea07ce5bb74ecb2a24156bf215f0af46a12bf1fce` |
| 5 | `theorem` | [tsum_coe](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean/declarations/tsum-coe--278ecb16e1a1b4b79f0e41fe.md) | 58 | `result-track:278ecb16e1a1b4b79f0e41fe59ddc04cd5e5e10cf2aa0b84d1d4956f7bf877b3` |
| 6 | `theorem` | [tsum_coe_ne_top](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean/declarations/tsum-coe-ne-top--1f3b73b6689342302d65b2f6.md) | 61 | `result-track:1f3b73b6689342302d65b2f600941b9e35c087e715e5601a2096db250a403061` |
| 7 | `theorem` | [tsum_coe_indicator_ne_top](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean/declarations/tsum-coe-indicator-ne-top--38372c1ce8f4ba9131dfc834.md) | 64 | `result-track:38372c1ce8f4ba9131dfc8340582a0d27fd5c2c451c9db95aa339ed518c1b580` |
| 8 | `theorem` | [coe_ne_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean/declarations/coe-ne-zero--1f8c23d84cfbba4471e60eec.md) | 70 | `result-track:1f8c23d84cfbba4471e60eec143a51cfb4a93f076a9243c1685cf3228b808f6e` |
| 9 | `def` | [support](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean/declarations/support--4ab790bb862571573b5ea64b.md) | 74 | `declaration-track:4ab790bb862571573b5ea64b967f2bcef1accc710cf1eed6c61a46c37f4e174b` |
| 10 | `theorem` | [mem_support_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean/declarations/mem-support-iff--4812908f9d33d1f78cee688a.md) | 78 | `result-track:4812908f9d33d1f78cee688a57af517a74f669461baa3861a4aadc71e9e3f88b` |
| 11 | `theorem` | [support_nonempty](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean/declarations/support-nonempty--ee77a047dbe5cac7f148c586.md) | 81 | `result-track:ee77a047dbe5cac7f148c5866a8129b7817fcdb7769ef9f5dc4653f17818898c` |
| 12 | `theorem` | [support_countable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean/declarations/support-countable--bf02d781ffe4f0c9bf912742.md) | 85 | `result-track:bf02d781ffe4f0c9bf9127421b954f4acf66c37b3e39a557e9fbb9bc252a0e19` |
| 13 | `theorem` | [apply_eq_zero_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean/declarations/apply-eq-zero-iff--a53631bdab03473a03488cce.md) | 88 | `result-track:a53631bdab03473a03488cce327e1e95b42ac20afeb89e4fd3fd49ed1177ca13` |
| 14 | `theorem` | [apply_pos_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean/declarations/apply-pos-iff--2bf4961a182e31d0e62f2f26.md) | 91 | `result-track:2bf4961a182e31d0e62f2f26844f17478c1efa3644392139de547abde3f6fb7c` |
| 15 | `theorem` | [apply_eq_one_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean/declarations/apply-eq-one-iff--248133cea91351eac8a5309f.md) | 94 | `result-track:248133cea91351eac8a5309fbc5a21c1e56c30866ae8fd98c2df4b2e53db7700` |
| 16 | `theorem` | [coe_le_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean/declarations/coe-le-one--df29400850092be0619d3034.md) | 115 | `result-track:df29400850092be0619d3034a426cdb6377e2e34d428ccbc57611dabdd87710f` |
| 17 | `theorem` | [apply_ne_top](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean/declarations/apply-ne-top--2f2fcbec0abcdd8dfdfc5261.md) | 120 | `result-track:2f2fcbec0abcdd8dfdfc5261d3e75ba04961c110e4e4e46657bc28a26d08c7df` |
| 18 | `theorem` | [apply_lt_top](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean/declarations/apply-lt-top--d752cd50924be42cd4087e0f.md) | 123 | `result-track:d752cd50924be42cd4087e0fca28d2dfc30dc93e62df9639672ea2c044859fe4` |
| 19 | `def` | [toOuterMeasure](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean/declarations/tooutermeasure--83dab7ac530f303d04589d35.md) | 132 | `declaration-track:83dab7ac530f303d04589d35611d5068e9a4b88ca7543ac811e6636ea32b67f6` |
| 20 | `theorem` | [toOuterMeasure_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean/declarations/tooutermeasure-apply--1946b108f8e7fbc2efc90caa.md) | 137 | `result-track:1946b108f8e7fbc2efc90caa6190f456e17b1f855bb6f7b2ee6186aba03222b0` |
| 21 | `theorem` | [toOuterMeasure_caratheodory](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean/declarations/tooutermeasure-caratheodory--1233b46461f8cf03b63bd8a1.md) | 141 | `result-track:1233b46461f8cf03b63bd8a18943b09608fc33f5f739a052e75b9e448f5a191c` |
| 22 | `theorem` | [toOuterMeasure_apply_finset](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean/declarations/tooutermeasure-apply-finset--99b91c51dae4f130f231c8d0.md) | 148 | `result-track:99b91c51dae4f130f231c8d04cccbaf339e9c71f1c14ddb381517fb1907bc380` |
| 23 | `theorem` | [toOuterMeasure_apply_singleton](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean/declarations/tooutermeasure-apply-singleton--c5b17c67d201edf120ed5bc1.md) | 153 | `result-track:c5b17c67d201edf120ed5bc179c36c2ad4825d4687c5cdac102591c763227c23` |
| 24 | `theorem` | [toOuterMeasure_injective](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean/declarations/tooutermeasure-injective--2bbde425ea9bb1fcef19d5cd.md) | 158 | `result-track:2bbde425ea9bb1fcef19d5cd1bb54d56b950d43aeff7762c871dcde2de2e3760` |
| 25 | `theorem` | [toOuterMeasure_inj](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean/declarations/tooutermeasure-inj--a0c08874c64f82ed997ef8fb.md) | 163 | `result-track:a0c08874c64f82ed997ef8fb8cfaf84bcb3f80ce9786916b94638f7971255c90` |
| 26 | `theorem` | [toOuterMeasure_apply_eq_zero_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean/declarations/tooutermeasure-apply-eq-zero-iff--f97b4d10fcb7140a24909d16.md) | 166 | `result-track:f97b4d10fcb7140a24909d165e28012f3dc28e430a5639e35610e3441c9f9dbb` |
| 27 | `theorem` | [toOuterMeasure_apply_eq_one_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean/declarations/tooutermeasure-apply-eq-one-iff--7c5b85dc6d66f9bd511347ab.md) | 170 | `result-track:7c5b85dc6d66f9bd511347ab8e817eb450853dfa8f05d75f429fd64c5c01f32a` |
| 28 | `theorem` | [toOuterMeasure_apply_inter_support](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean/declarations/tooutermeasure-apply-inter-support--846446ba5f96a132375795a8.md) | 184 | `result-track:846446ba5f96a132375795a82461c10f01016d50b740212cce90412921a21126` |
| 29 | `theorem` | [toOuterMeasure_mono](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean/declarations/tooutermeasure-mono--d714f56b0be9eb026da4fb62.md) | 189 | `result-track:d714f56b0be9eb026da4fb62905fc02b1314a51551c0b7c0c77064a0ddc97d57` |
| 30 | `theorem` | [toOuterMeasure_apply_eq_of_inter_support_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean/declarations/tooutermeasure-apply-eq-of-inter-support-eq--1b4a5c63683a9cf87c98572a.md) | 193 | `result-track:1b4a5c63683a9cf87c98572a52db845a5cb6adb651c36e0880ef9b8752d9e253` |
| 31 | `theorem` | [toOuterMeasure_apply_fintype](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean/declarations/tooutermeasure-apply-fintype--542895269a64a61768c68d0c.md) | 199 | `result-track:542895269a64a61768c68d0cd460ca65a5605fcc0d14dabf330f2335c408049d` |
| 32 | `def` | [toMeasure](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean/declarations/tomeasure--f754d79af3ca559005b47fea.md) | 210 | `declaration-track:f754d79af3ca559005b47fea3e496c549044b77ca56377d47e0212ccbf655e26` |
| 33 | `theorem` | [toOuterMeasure_apply_le_toMeasure_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean/declarations/tooutermeasure-apply-le-tomeasure-apply--e61d3bbee595555ed6d775b3.md) | 215 | `result-track:e61d3bbee595555ed6d775b3c88fab8407d3529f3d538ce4b497df4b3983c7a2` |
| 34 | `theorem` | [toMeasure_apply_eq_toOuterMeasure_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean/declarations/tomeasure-apply-eq-tooutermeasure-apply--d444b69505893d46bf1c5531.md) | 218 | `result-track:d444b69505893d46bf1c55317b82ab463bd32d001b3ee6a4d6032105ee39ffab` |
| 35 | `theorem` | [toMeasure_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean/declarations/tomeasure-apply--5e6a5c0ae7be129e4a6d008e.md) | 222 | `result-track:5e6a5c0ae7be129e4a6d008ee975f0afd32bda120a961acdc06fdd0f7a4e7aa2` |
| 36 | `theorem` | [toMeasure_apply_singleton](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean/declarations/tomeasure-apply-singleton--4d24cbbf42a63f42fcdc616a.md) | 225 | `result-track:4d24cbbf42a63f42fcdc616a3e963f9832ba61c3d155e6bfa4adc91b025212a5` |
| 37 | `theorem` | [toMeasure_apply_eq_zero_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean/declarations/tomeasure-apply-eq-zero-iff--458433293285226cb9d2da28.md) | 229 | `result-track:458433293285226cb9d2da28a24c3b5801cfac31c15028a0f604592d8ce1c942` |
| 38 | `theorem` | [toMeasure_apply_eq_one_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean/declarations/tomeasure-apply-eq-one-iff--6dbc04f00a139c0d830259ad.md) | 233 | `result-track:6dbc04f00a139c0d830259ad74373f152e71115010a5bba38383d70edb2af0f0` |
| 39 | `theorem` | [toMeasure_apply_inter_support](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean/declarations/tomeasure-apply-inter-support--c74ced749e2d851412ac5cee.md) | 237 | `result-track:c74ced749e2d851412ac5cee42cc8d37383ecdfc19b7f676c26c72b4e6ce7d69` |
| 40 | `theorem` | [restrict_toMeasure_support](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean/declarations/restrict-tomeasure-support--27375709d1f639d9c70ee732.md) | 243 | `result-track:27375709d1f639d9c70ee732a8387839ad2e577208982401a7eff51cae5303b4` |
| 41 | `theorem` | [toMeasure_mono](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean/declarations/tomeasure-mono--053d89151531ea421ccc9336.md) | 249 | `result-track:053d89151531ea421ccc93365d883886ed2a05abc590973d772c4fbe0e2ee38e` |
| 42 | `theorem` | [toMeasure_apply_eq_of_inter_support_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean/declarations/tomeasure-apply-eq-of-inter-support-eq--92379fab05476c8f496c9ddd.md) | 253 | `result-track:92379fab05476c8f496c9ddd17b2f8ee9375f82be439206ab1be9c4de22b882b` |
| 43 | `theorem` | [toMeasure_injective](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean/declarations/tomeasure-injective--2179dbcf16d63974015d6341.md) | 262 | `result-track:2179dbcf16d63974015d63416770fc90c36360c37cd5bef925385da187dd4339` |
| 44 | `theorem` | [toMeasure_inj](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean/declarations/tomeasure-inj--b712bf738f14b4723b5dc97d.md) | 269 | `result-track:b712bf738f14b4723b5dc97de6fa3b38e9a49e3d1d1dc82cf8375045c2570351` |
| 45 | `theorem` | [toMeasure_apply_finset](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean/declarations/tomeasure-apply-finset--cf3d501bcd8798e87b454ef2.md) | 273 | `result-track:cf3d501bcd8798e87b454ef2f6a109f90d25a24c176ad21bce5f5d5657cc6927` |
| 46 | `theorem` | [toMeasure_apply_of_finite](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean/declarations/tomeasure-apply-of-finite--fcbb15a6644e76805692ea5b.md) | 277 | `result-track:fcbb15a6644e76805692ea5b5ece3f48cfbf2398e4c4d2a9888f212e8a929bc4` |
| 47 | `theorem` | [toMeasure_apply_fintype](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean/declarations/tomeasure-apply-fintype--f9f9a831db9aad314d70f0f5.md) | 281 | `result-track:f9f9a831db9aad314d70f0f52ef1d1ecf7ebf80a14f4eed0e76107749a15f9e9` |
| 48 | `def` | [toPMF](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean/declarations/topmf--42a5e18ad1856c32533773b1.md) | 300 | `declaration-track:42a5e18ad1856c32533773b1007c4bd0d8ac59ab58dd2d4c20f683bbab053308` |
| 49 | `theorem` | [toPMF_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean/declarations/topmf-apply--9de852168f5e229a852ee8be.md) | 313 | `result-track:9de852168f5e229a852ee8be027f61c089cd539fbe85935139dbb324c458ebc3` |
| 50 | `theorem` | [toPMF_toMeasure](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean/declarations/topmf-tomeasure--fa9581293630a50c640cb998.md) | 316 | `result-track:fa9581293630a50c640cb9980d1350ceef84a1db2ba1dd6af7f5ce1f53223fc2` |
| 51 | `instance` | [toMeasure.isProbabilityMeasure](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean/declarations/tomeasure-isprobabilitymeasure--216a99f2d816e2839a96b233.md) | 330 | `declaration-track:216a99f2d816e2839a96b233a593931dd22d2b8f4eeedf319b59e178bbbe6c0d` |
| 52 | `theorem` | [toMeasure_toPMF](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean/declarations/tomeasure-topmf--75d6c6ef401dc928753ddac5.md) | 339 | `result-track:75d6c6ef401dc928753ddac5c8fa3896a06e0e30401b001227faa899ba2b3921` |
| 53 | `theorem` | [toMeasure_eq_iff_eq_toPMF](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean/declarations/tomeasure-eq-iff-eq-topmf--2f01046d95ff89af30af6f20.md) | 343 | `result-track:2f01046d95ff89af30af6f20bc490f2af361f9678dcdb4c55e831f5659b7654e` |
| 54 | `theorem` | [toPMF_eq_iff_toMeasure_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantf6f486c812445542aca6fdc81726e78b330c082690cb0161a2715a6d1c3a4a45.lean/declarations/topmf-eq-iff-tomeasure-eq--e9fec8b53fc3ff1ea336f842.md) | 346 | `result-track:e9fec8b53fc3ff1ea336f8421f44ad70123cf16f3db0f883dc202b5c3eecc84a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
