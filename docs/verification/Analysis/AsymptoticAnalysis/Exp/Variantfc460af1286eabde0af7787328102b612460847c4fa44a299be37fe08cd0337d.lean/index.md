# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Exp.Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f25f565bd82162577409a2a2d5c72e5d9f7c5b5",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f25f565bd82162577409a2a2d5c72e5d9f7c5b5`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Asymptotics.Theta` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exp_bound_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/exp-bound-sq--35f1d7b6a5c2d87c4c6c2cb1.md) | 34 | `result-track:35f1d7b6a5c2d87c4c6c2cb1efe9e8a27c2a682f5079562d574347e0327433de` |
| 2 | `theorem` | [locally_lipschitz_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/locally-lipschitz-exp--5ddfb66f3832d41da64e3463.md) | 46 | `result-track:5ddfb66f3832d41da64e3463966a60495c11330db20753b26e72601fcb7a3a66` |
| 3 | `theorem` | [continuous_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/continuous-exp--286e3365fad198dcb4d9f386.md) | 68 | `result-track:286e3365fad198dcb4d9f386dafe5ebf28321ae4d6d09da7d8b9257ba3091f78` |
| 4 | `theorem` | [continuousOn_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/continuouson-exp--31b1475ab1a2a24f402820b3.md) | 77 | `result-track:31b1475ab1a2a24f402820b3f4d62af769ae3da47735943738b8b2a992557a42` |
| 5 | `theorem` | [Filter.Tendsto.cexp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/filter-tendsto-cexp--0c3f5b4a9fe2430c2651b952.md) | 89 | `result-track:0c3f5b4a9fe2430c2651b9529168e5610e120a8c438156b866d7413ce42ebc87` |
| 6 | `theorem` | [ContinuousWithinAt.cexp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/continuouswithinat-cexp--a3ace34fb4304134960930c5.md) | 97 | `result-track:a3ace34fb4304134960930c5fdcbf0e5e78b1d3a940a03c561ead8a689b40225` |
| 7 | `theorem` | [ContinuousAt.cexp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/continuousat-cexp--002ff8b519ea5a3dd86beb06.md) | 103 | `result-track:002ff8b519ea5a3dd86beb06fbc7a3bcc12282a2e5f67867803aa28a3ea90f5d` |
| 8 | `theorem` | [ContinuousOn.cexp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/continuouson-cexp--2ec93a8628b51619a60fc369.md) | 107 | `result-track:2ec93a8628b51619a60fc36994ebde150809ed7b38b0ccb37c38976f10eb046c` |
| 9 | `theorem` | [Continuous.cexp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/continuous-cexp--d7fe094e8ed10cb4abbd96b4.md) | 111 | `result-track:d7fe094e8ed10cb4abbd96b4c7b2dd9d01a6a1896166ffa0b39fb13f9b4ae38a` |
| 10 | `theorem` | [continuous_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/continuous-exp--264c0bdc2df70d3af2ea7433.md) | 120 | `result-track:264c0bdc2df70d3af2ea743338730202600e91127dfc3e4dce0da364a891bf5e` |
| 11 | `theorem` | [continuousOn_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/continuouson-exp--c86225db82fb86e87fd7191d.md) | 124 | `result-track:c86225db82fb86e87fd7191d4f3d50410e47a8cac81b845d5e6d459df7b331c7` |
| 12 | `theorem` | [Filter.Tendsto.exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/filter-tendsto-exp--2fa95b1f1ef95fcf481201f7.md) | 136 | `result-track:2fa95b1f1ef95fcf481201f75efe3d436eb6a1a5090dae6b009929ccad8ebb62` |
| 13 | `theorem` | [ContinuousWithinAt.exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/continuouswithinat-exp--4ee21991cbba66783d59875d.md) | 144 | `result-track:4ee21991cbba66783d59875d22f09ba0c70def426c9db714f70c01c056e3cdcf` |
| 14 | `theorem` | [ContinuousAt.exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/continuousat-exp--b493dd43c962e841b04f4127.md) | 150 | `result-track:b493dd43c962e841b04f4127a1a9f8842782717016e46f4a2eb633f392f41534` |
| 15 | `theorem` | [ContinuousOn.exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/continuouson-exp--19d6f64568fbd7a58d535f98.md) | 154 | `result-track:19d6f64568fbd7a58d535f98f314fb22faa3ecc90a293e77fcf48f7cf121fd99` |
| 16 | `theorem` | [Continuous.exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/continuous-exp--a62fe7ebdbe5bacde978dd43.md) | 158 | `result-track:a62fe7ebdbe5bacde978dd43707ffa3dd2a7ed49f7f590b6c5f65cee9bab03de` |
| 17 | `theorem` | [exp_half](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/exp-half--421a2ffe97280c2ef065d77d.md) | 168 | `result-track:421a2ffe97280c2ef065d77dec918ce345e7ab2d9013237e46181038eccdf572` |
| 18 | `theorem` | [tendsto_exp_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/tendsto-exp-attop--f043e3696eb73cc17e0f889a.md) | 173 | `result-track:f043e3696eb73cc17e0f889a0eff3489057a9b8be4b288cda1471ea3cccab627` |
| 19 | `theorem` | [tendsto_exp_neg_atTop_nhds_0](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/tendsto-exp-neg-attop-nhds-0--57292026be0c9febc0c1652a.md) | 182 | `result-track:57292026be0c9febc0c1652a2424dc6d5d54160a4abb1ff9057513c3857f9225` |
| 20 | `theorem` | [tendsto_exp_nhds_0_nhds_1](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/tendsto-exp-nhds-0-nhds-1--83d297115a4f197fbebc2043.md) | 187 | `result-track:83d297115a4f197fbebc204384a3220e726356c5b777a614bcca9d41f90e45b7` |
| 21 | `theorem` | [tendsto_exp_atBot](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/tendsto-exp-atbot--af3aaadee1aa48b75ef3fa12.md) | 192 | `result-track:af3aaadee1aa48b75ef3fa12dd5e427e956ab00b7a58f8bec6b00c44c5ac4458` |
| 22 | `theorem` | [tendsto_exp_atBot_nhdsWithin](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/tendsto-exp-atbot-nhdswithin--c07bd0389dd9153b6f74e265.md) | 197 | `result-track:c07bd0389dd9153b6f74e2658047c6e9a195258cae12502410b69118a3dcb5b8` |
| 23 | `theorem` | [isBoundedUnder_ge_exp_comp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/isboundedunder-ge-exp-comp--ab558ed6135cfeb04bd6003d.md) | 202 | `result-track:ab558ed6135cfeb04bd6003d028127ffafc11c0d3edf17f840f2384e30341ff2` |
| 24 | `theorem` | [isBoundedUnder_le_exp_comp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/isboundedunder-le-exp-comp--35c1bca25dc9e05e851a327b.md) | 208 | `result-track:35c1bca25dc9e05e851a327b99311e367ad3021c345fadb703c209d286980fab` |
| 25 | `theorem` | [tendsto_exp_div_pow_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/tendsto-exp-div-pow-attop--b236b18c7b8870d9cb5612d8.md) | 214 | `result-track:b236b18c7b8870d9cb5612d846b0b073d05ee581d8f1ecfa8df57319fb5af64b` |
| 26 | `theorem` | [tendsto_pow_mul_exp_neg_atTop_nhds_0](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/tendsto-pow-mul-exp-neg-attop-nhds-0--fde1871d894bf0d0d536cfc8.md) | 237 | `result-track:fde1871d894bf0d0d536cfc8e774b6b5a0d3192903b140066af9da50446692b5` |
| 27 | `theorem` | [tendsto_mul_exp_add_div_pow_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/tendsto-mul-exp-add-div-pow-attop--d1b29413156cede080e37717.md) | 245 | `result-track:d1b29413156cede080e37717523957e379da086aae49e0619bc5fb01fe5cb785` |
| 28 | `theorem` | [tendsto_div_pow_mul_exp_add_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/tendsto-div-pow-mul-exp-add-attop--7d50a9b6cb51c698ab5a719a.md) | 258 | `result-track:7d50a9b6cb51c698ab5a719ad83427b21976e6edf4438593a3e21052b65d1dad` |
| 29 | `def` | [expOrderIso](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/exporderiso--697e4349463b9d4a65bc797b.md) | 275 | `declaration-track:697e4349463b9d4a65bc797ba8ff0f14e9ca6bbdc9bf0a4a88a1e39c3e9597a0` |
| 30 | `theorem` | [coe_expOrderIso_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/coe-exporderiso-apply--ba0b96d121f5b3a6a94a66b2.md) | 283 | `result-track:ba0b96d121f5b3a6a94a66b26501f23c2fe515580fefa64b6e164ac37b3bcd73` |
| 31 | `theorem` | [coe_comp_expOrderIso](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/coe-comp-exporderiso--bd83161620629280622f3fcf.md) | 288 | `result-track:bd83161620629280622f3fcfc17fb4b5170d0437a0711eca600bf54d430cf32c` |
| 32 | `theorem` | [range_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/range-exp--f0d3be9fafd19364d9af0fcb.md) | 293 | `result-track:f0d3be9fafd19364d9af0fcbdf2d525f68d625b5b7f2a7dcd10687275c1dfa70` |
| 33 | `theorem` | [map_exp_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/map-exp-attop--f81e2ed05ce20249ad6273c6.md) | 298 | `result-track:f81e2ed05ce20249ad6273c6f3fd161a22c35060479ab87c0fb046bbb345d311` |
| 34 | `theorem` | [comap_exp_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/comap-exp-attop--ae62ae4a011a5a231170c690.md) | 303 | `result-track:ae62ae4a011a5a231170c6909c2b54c0bc3d15212d6f4c49360769126d3f7316` |
| 35 | `theorem` | [tendsto_exp_comp_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/tendsto-exp-comp-attop--49228be0980c392f7112d9eb.md) | 308 | `result-track:49228be0980c392f7112d9ebaef4124c40a5db4a8e50b37418f1628165ef176d` |
| 36 | `theorem` | [tendsto_comp_exp_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/tendsto-comp-exp-attop--c5577777763037d16ac8a087.md) | 313 | `result-track:c5577777763037d16ac8a087f7ddb69dd87e99f3b2e56e05fd774383a057c889` |
| 37 | `theorem` | [map_exp_atBot](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/map-exp-atbot--48665c46a173a64f44bb7039.md) | 319 | `result-track:48665c46a173a64f44bb703983c5213608930c3ca86dceaae775b2b7bba0ee58` |
| 38 | `theorem` | [comap_exp_nhdsWithin_Ioi_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/comap-exp-nhdswithin-ioi-zero--fc4f893bfcd1d212a87d9d9b.md) | 324 | `result-track:fc4f893bfcd1d212a87d9d9b5a64178219d45a6ee9110af9c5d959f1ff9d80ea` |
| 39 | `theorem` | [tendsto_comp_exp_atBot](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/tendsto-comp-exp-atbot--556a9bf32ff6b34210da890d.md) | 328 | `result-track:556a9bf32ff6b34210da890de0f6ebeae1ebf08af239d4be4c31bdb954cfa287` |
| 40 | `theorem` | [comap_exp_nhds_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/comap-exp-nhds-zero--94dfd0d385c310b24bd8d710.md) | 335 | `result-track:94dfd0d385c310b24bd8d710f5e67137a4441d3bb4974fc3f17d85c8f1660eaa` |
| 41 | `theorem` | [tendsto_exp_comp_nhds_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/tendsto-exp-comp-nhds-zero--832b652b0822437c72a5e846.md) | 340 | `result-track:832b652b0822437c72a5e846a71072d1b841957b8f8f2b159a15a1ab9db06271` |
| 42 | `theorem` | [openEmbedding_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/openembedding-exp--49056264d1b04f9ba4065dfb.md) | 346 | `result-track:49056264d1b04f9ba4065dfb7986667efe0b8b0ae185a1d4555177a89e3ff07c` |
| 43 | `theorem` | [map_exp_nhds](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/map-exp-nhds--05de0c90f5677a9a475223da.md) | 350 | `result-track:05de0c90f5677a9a475223daadd16823db8cdab107c2faee453c203087073e66` |
| 44 | `theorem` | [comap_exp_nhds_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/comap-exp-nhds-exp--27ec3d22cecd22b9db01c5ed.md) | 354 | `result-track:27ec3d22cecd22b9db01c5ede40d6f8f5825cfab392f4806541001dcfd5ee75b` |
| 45 | `theorem` | [isLittleO_pow_exp_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/islittleo-pow-exp-attop--2c2c30eae620c57a376d4e62.md) | 357 | `result-track:2c2c30eae620c57a376d4e62411bc7f3cda1bbb240957ced17a3f25d92a93ef0` |
| 46 | `theorem` | [isBigO_exp_comp_exp_comp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/isbigo-exp-comp-exp-comp--8c9463384f88cc8fb974a011.md) | 363 | `result-track:8c9463384f88cc8fb974a011140b0efa05e0de8b96ec8baf2ec0ec212ed58b0d` |
| 47 | `theorem` | [isTheta_exp_comp_exp_comp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/istheta-exp-comp-exp-comp--b3a0fd817275123139b4d9e0.md) | 371 | `result-track:b3a0fd817275123139b4d9e0ea5a51f659a45d7737b6dd1bbc53ad0c7c6a74cf` |
| 48 | `theorem` | [isLittleO_exp_comp_exp_comp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/islittleo-exp-comp-exp-comp--548057c5e5f99ba0b61a66f8.md) | 380 | `result-track:548057c5e5f99ba0b61a66f8b915693d5c0844094986fdfcd136659830f165cf` |
| 49 | `theorem` | [isLittleO_one_exp_comp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/islittleo-one-exp-comp--0319f10f8b4048cbfb973519.md) | 388 | `result-track:0319f10f8b4048cbfb973519aec3bd211be0f2bd439c76b426245c55815954d6` |
| 50 | `theorem` | [isBigO_one_exp_comp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/isbigo-one-exp-comp--2ced16b4db9581b5f568bd3d.md) | 396 | `result-track:2ced16b4db9581b5f568bd3d31e575e2a4af1a1e46ff7776847c3896e052a948` |
| 51 | `theorem` | [isBigO_exp_comp_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/isbigo-exp-comp-one--85496a8585979fd576c96df1.md) | 404 | `result-track:85496a8585979fd576c96df1c27a9652fc874de96613dcc87c6e5883fb523e24` |
| 52 | `theorem` | [isTheta_exp_comp_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/istheta-exp-comp-one--b47a0fd1cd5a29229ca39089.md) | 413 | `result-track:b47a0fd1cd5a29229ca39089a74e86f01a5b1a45f4dea1fc04f3d10443938b11` |
| 53 | `theorem` | [comap_exp_comap_abs_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/comap-exp-comap-abs-attop--eb959d1dbefcee19eeb4b4a9.md) | 423 | `result-track:eb959d1dbefcee19eeb4b4a9ade41f5a61d0892c0880210377ddbcb8c6fd111f` |
| 54 | `theorem` | [comap_exp_nhds_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/comap-exp-nhds-zero--bd625f2dc489d38ffab113cf.md) | 431 | `result-track:bd625f2dc489d38ffab113cff6c48e2fd253e1c117af94a63aedc26691630ddd` |
| 55 | `theorem` | [comap_exp_nhdsWithin_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/comap-exp-nhdswithin-zero--ed60fda66bf402bbb91f96a0.md) | 439 | `result-track:ed60fda66bf402bbb91f96a07a78ee102d6c7bed15642a729cf3cd9aefc6a45b` |
| 56 | `theorem` | [tendsto_exp_nhds_zero_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/tendsto-exp-nhds-zero-iff--fb188adbf3b6f3e58b58e94f.md) | 444 | `result-track:fb188adbf3b6f3e58b58e94f2502113f140bf48ecabc5454f8dd5cf6235719e6` |
| 57 | `theorem` | [tendsto_exp_comap_re_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/tendsto-exp-comap-re-attop--924e405e2794213cd3ead0ce.md) | 451 | `result-track:924e405e2794213cd3ead0ce72de278ee8edad5cedc65ed478ea7731c5af11d2` |
| 58 | `theorem` | [tendsto_exp_comap_re_atBot](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/tendsto-exp-comap-re-atbot--6a7411c9e5a104780829a215.md) | 456 | `result-track:6a7411c9e5a104780829a215d66a1993ea4fefe1282605bfbe3290acea960fb9` |
| 59 | `theorem` | [tendsto_exp_comap_re_atBot_nhdsWithin](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variantfc460af1286eabde0af7787328102b612460847c4fa44a299be37fe08cd0337d.lean/declarations/tendsto-exp-comap-re-atbot-nhdswithin--45b08f0fe0e5d35cf75e2b98.md) | 460 | `result-track:45b08f0fe0e5d35cf75e2b983a39c40faa795daf98ddc41324ec8fcdaf2b2f19` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
