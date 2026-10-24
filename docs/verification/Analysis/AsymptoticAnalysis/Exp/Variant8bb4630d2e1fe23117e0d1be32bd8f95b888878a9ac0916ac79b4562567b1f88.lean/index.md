# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Exp.Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1174a9a77a4eff10de99c2c2b5ff44e52c4a78a7",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1174a9a77a4eff10de99c2c2b5ff44e52c4a78a7`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Asymptotics.Theta` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exp_bound_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/exp-bound-sq--130531c548e1a00fc564c403.md) | 42 | `result-track:130531c548e1a00fc564c4033f6ad3edc53cd350e9211dafa0282120afafc5ee` |
| 2 | `theorem` | [locally_lipschitz_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/locally-lipschitz-exp--8f74b358fc811c822d2ab973.md) | 54 | `result-track:8f74b358fc811c822d2ab973813ae749f14fe0e4b3d2779ea2a35fcd24272088` |
| 3 | `theorem` | [continuous_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/continuous-exp--e50d9401678ffa1280047fad.md) | 76 | `result-track:e50d9401678ffa1280047fad683ef4424de3adf269259e3a88b2fe6592411803` |
| 4 | `theorem` | [continuousOn_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/continuouson-exp--bac726fcc7b962365c9e7131.md) | 85 | `result-track:bac726fcc7b962365c9e7131539449eb24054cf6cc87b13f698f19cde0143e51` |
| 5 | `theorem` | [Filter.Tendsto.cexp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/filter-tendsto-cexp--038f9248c83b67372f7fa26f.md) | 97 | `result-track:038f9248c83b67372f7fa26ffc10bee19c6b8683b43117a18b14e023debe66c5` |
| 6 | `theorem` | [ContinuousWithinAt.cexp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/continuouswithinat-cexp--3fec7469d70c3801a518e527.md) | 105 | `result-track:3fec7469d70c3801a518e52788ce0d96226ec9fb0a78c00832e4adc86e0b20d0` |
| 7 | `theorem` | [ContinuousAt.cexp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/continuousat-cexp--8889d36d166e0ec4396033a8.md) | 111 | `result-track:8889d36d166e0ec4396033a88ebd47fae7435a7df7dbec801ccda4e36da47423` |
| 8 | `theorem` | [ContinuousOn.cexp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/continuouson-cexp--631f6321092e67a1fc968b32.md) | 115 | `result-track:631f6321092e67a1fc968b32b0267cffc4b2578d6b2f4acdd9001642b0a3e749` |
| 9 | `theorem` | [Continuous.cexp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/continuous-cexp--83f0d86ecefaae6a2e97c481.md) | 119 | `result-track:83f0d86ecefaae6a2e97c481bc2df2d2c44eb6f50fae57e6523a507e65f02341` |
| 10 | `theorem` | [continuous_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/continuous-exp--2fd1fa2f22480b2f67b6e59d.md) | 128 | `result-track:2fd1fa2f22480b2f67b6e59dba1ad4534f6b52b85a8737a9da676a56a831b008` |
| 11 | `theorem` | [continuousOn_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/continuouson-exp--4608ba8c7a1d8a2fec22ef58.md) | 132 | `result-track:4608ba8c7a1d8a2fec22ef588fdf6d502cb8601595e7a8a4bfe32d2a8c339392` |
| 12 | `theorem` | [Filter.Tendsto.exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/filter-tendsto-exp--db64a10b7c55fbfbe12624d9.md) | 144 | `result-track:db64a10b7c55fbfbe12624d9319d77c44bd825d78eac891929a94f2daff5f16f` |
| 13 | `theorem` | [ContinuousWithinAt.exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/continuouswithinat-exp--a906eea1e510943b961d1923.md) | 152 | `result-track:a906eea1e510943b961d1923faf17f7580d6d23da940c772a8201a1be8d7c354` |
| 14 | `theorem` | [ContinuousAt.exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/continuousat-exp--bab0e288bba21ec2bd1e14c3.md) | 158 | `result-track:bab0e288bba21ec2bd1e14c3e0f7d4051d0e42771994adc77f22dbb77f8d4264` |
| 15 | `theorem` | [ContinuousOn.exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/continuouson-exp--eb89dabe48d46ed27ec6563f.md) | 162 | `result-track:eb89dabe48d46ed27ec6563f3cb1b460b15de4f60a5cc5a619a6a30018132eef` |
| 16 | `theorem` | [Continuous.exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/continuous-exp--5bd152128a9ec9d5b3dffc90.md) | 166 | `result-track:5bd152128a9ec9d5b3dffc9063d74b5601212c9ba38f5ca7f7135e94df263826` |
| 17 | `theorem` | [exp_half](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/exp-half--f49402d4d3123fd73ccbbde4.md) | 176 | `result-track:f49402d4d3123fd73ccbbde49dd51835fb07e4e641e01fbe82aa72bbdbac7f4d` |
| 18 | `theorem` | [tendsto_exp_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/tendsto-exp-attop--e234d9521905e7d54a56a09a.md) | 181 | `result-track:e234d9521905e7d54a56a09a047cc70f8aff3d6ff20882847d887d732f9ce7bb` |
| 19 | `theorem` | [tendsto_exp_neg_atTop_nhds_0](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/tendsto-exp-neg-attop-nhds-0--6fcaa6e8a498d079781fbb3f.md) | 190 | `result-track:6fcaa6e8a498d079781fbb3f6f05dc22507bd06e2b9b9b54f4ea8aea4cb974d6` |
| 20 | `theorem` | [tendsto_exp_nhds_0_nhds_1](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/tendsto-exp-nhds-0-nhds-1--813782fce6e9be4ec7b071c4.md) | 195 | `result-track:813782fce6e9be4ec7b071c486ea1e2c11d28cc3e1b3e74a267243a5039250eb` |
| 21 | `theorem` | [tendsto_exp_atBot](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/tendsto-exp-atbot--2df44284ea5690c6948c8e74.md) | 200 | `result-track:2df44284ea5690c6948c8e7498e33a5bf6cf016bf8c0735463d479f0e84a9b15` |
| 22 | `theorem` | [tendsto_exp_atBot_nhdsWithin](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/tendsto-exp-atbot-nhdswithin--9df16903bc61f05847ae508c.md) | 205 | `result-track:9df16903bc61f05847ae508c2a156fb8bac05f9ad2a076a0915d697ea0269d6d` |
| 23 | `theorem` | [isBoundedUnder_ge_exp_comp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/isboundedunder-ge-exp-comp--b71c775b5223b7193c07951d.md) | 210 | `result-track:b71c775b5223b7193c07951dfa4f6be26d0aedb7430dc7bfe2ebb87ea86ed5bd` |
| 24 | `theorem` | [isBoundedUnder_le_exp_comp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/isboundedunder-le-exp-comp--e00fb5ee12e5fa3b1430d8e7.md) | 216 | `result-track:e00fb5ee12e5fa3b1430d8e7d52065f596a72ca478636d44d626d85b205a1a19` |
| 25 | `theorem` | [tendsto_exp_div_pow_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/tendsto-exp-div-pow-attop--ba3cc3360bd080ee42a04315.md) | 222 | `result-track:ba3cc3360bd080ee42a0431542b876cc5cafa5d135a9bdb9be01c22746d5ed28` |
| 26 | `theorem` | [tendsto_pow_mul_exp_neg_atTop_nhds_0](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/tendsto-pow-mul-exp-neg-attop-nhds-0--680313e800cbff93e8c83c55.md) | 245 | `result-track:680313e800cbff93e8c83c55e812d07b06b394953e7cba8c4b90429e6531bb94` |
| 27 | `theorem` | [tendsto_mul_exp_add_div_pow_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/tendsto-mul-exp-add-div-pow-attop--e08f863e875dd298c79755e1.md) | 253 | `result-track:e08f863e875dd298c79755e1a6860e1619cce995f034fc91feb347d7d1b29cad` |
| 28 | `theorem` | [tendsto_div_pow_mul_exp_add_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/tendsto-div-pow-mul-exp-add-attop--fb5551da6a263f30f54321c5.md) | 266 | `result-track:fb5551da6a263f30f54321c5ff700e7cd6f0a0ac0616688cb024fd0b0f9ab77f` |
| 29 | `def` | [expOrderIso](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/exporderiso--e21b28991de6466b8b341ee1.md) | 283 | `declaration-track:e21b28991de6466b8b341ee1a11f298bb4f77487c67bdd980345960637fda351` |
| 30 | `theorem` | [coe_expOrderIso_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/coe-exporderiso-apply--a1e5938f14d2fddae933eac6.md) | 291 | `result-track:a1e5938f14d2fddae933eac692944de42c3920b7ff05932e7543479d870f7f8a` |
| 31 | `theorem` | [coe_comp_expOrderIso](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/coe-comp-exporderiso--9b4b6ea3141746a37087874e.md) | 296 | `result-track:9b4b6ea3141746a37087874e5371c797ddb7929f0028a20d0062ddeb1379acff` |
| 32 | `theorem` | [range_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/range-exp--23408d21af05ad60954cbd1a.md) | 301 | `result-track:23408d21af05ad60954cbd1a7cd2d5b2034cfe483619c74d72760f68f4e439fa` |
| 33 | `theorem` | [map_exp_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/map-exp-attop--14bf8a69c8502dc15eb17945.md) | 306 | `result-track:14bf8a69c8502dc15eb179458760c3503d1dbe6640ee5d30a3be843d85970e20` |
| 34 | `theorem` | [comap_exp_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/comap-exp-attop--d2e270407b64eafce951d5a5.md) | 311 | `result-track:d2e270407b64eafce951d5a51da8ed08a0116a792c4fa3576ed4786f0e01980e` |
| 35 | `theorem` | [tendsto_exp_comp_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/tendsto-exp-comp-attop--b58b7d7c68a3b821f473b262.md) | 316 | `result-track:b58b7d7c68a3b821f473b26277e06d9a26ff83149c04fef147d9405af51599da` |
| 36 | `theorem` | [tendsto_comp_exp_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/tendsto-comp-exp-attop--83c4db5594ffe1cd4988da26.md) | 321 | `result-track:83c4db5594ffe1cd4988da269d77132c0d83e4620d77cad0912a63e6378e58a6` |
| 37 | `theorem` | [map_exp_atBot](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/map-exp-atbot--f9d53a9ffa7fec68cefd7f58.md) | 327 | `result-track:f9d53a9ffa7fec68cefd7f58441041c01791e86f2c78943167ed96270a316ce9` |
| 38 | `theorem` | [comap_exp_nhdsWithin_Ioi_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/comap-exp-nhdswithin-ioi-zero--5e1e5ad72d2b5e527fe8b18a.md) | 332 | `result-track:5e1e5ad72d2b5e527fe8b18a469b87fdb5c855665aa12ab2ea9c5b73ca922776` |
| 39 | `theorem` | [tendsto_comp_exp_atBot](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/tendsto-comp-exp-atbot--4e09926dd47df9f9c72c1074.md) | 336 | `result-track:4e09926dd47df9f9c72c107475a31d3036af707193060b632d83e28bc2e1801a` |
| 40 | `theorem` | [comap_exp_nhds_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/comap-exp-nhds-zero--59fee63661f95ce3b8264f26.md) | 343 | `result-track:59fee63661f95ce3b8264f262758844c75b2ff321bcfdd1c3227e996084f7b5d` |
| 41 | `theorem` | [tendsto_exp_comp_nhds_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/tendsto-exp-comp-nhds-zero--9b963debd00cdf1541240468.md) | 348 | `result-track:9b963debd00cdf154124046845ea80eb83d293725470d7dfa6449a0b20e6e0b7` |
| 42 | `theorem` | [openEmbedding_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/openembedding-exp--77580db0aec1684362a269ca.md) | 354 | `result-track:77580db0aec1684362a269ca36652bb8a572b37aef223f74c2a28248e9ba635c` |
| 43 | `theorem` | [map_exp_nhds](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/map-exp-nhds--b192f12401baf257aa7e89a8.md) | 358 | `result-track:b192f12401baf257aa7e89a8eea06bf0469c0087bf9c6a2e91437469b2f8ae99` |
| 44 | `theorem` | [comap_exp_nhds_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/comap-exp-nhds-exp--6b48d07492ed7ec326bc9ca3.md) | 362 | `result-track:6b48d07492ed7ec326bc9ca30d14f4bf7093276c01a32dee15b9cd3a2325bfc2` |
| 45 | `theorem` | [isLittleO_pow_exp_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/islittleo-pow-exp-attop--0c2155528ffb0d734c91eeb7.md) | 365 | `result-track:0c2155528ffb0d734c91eeb7bd1a6b78f11c0b51c91bbdfcfeb06ee9fc8b4e9f` |
| 46 | `theorem` | [isBigO_exp_comp_exp_comp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/isbigo-exp-comp-exp-comp--1b6be523ae371433f1fdfc85.md) | 371 | `result-track:1b6be523ae371433f1fdfc857c3fdc26bf466536aaa0fca634e7c87eaad231ab` |
| 47 | `theorem` | [isTheta_exp_comp_exp_comp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/istheta-exp-comp-exp-comp--1ed8146bf2f74e2184c69833.md) | 379 | `result-track:1ed8146bf2f74e2184c69833d75af84abb7ba9627df387062a33324583beef97` |
| 48 | `theorem` | [isLittleO_exp_comp_exp_comp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/islittleo-exp-comp-exp-comp--22ac51e4d5a614127e40b272.md) | 388 | `result-track:22ac51e4d5a614127e40b27203c378654bfa32aea2da15b0cc4cc47765b048d6` |
| 49 | `theorem` | [isLittleO_one_exp_comp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/islittleo-one-exp-comp--88bc6f3e0f30c8d706b74115.md) | 396 | `result-track:88bc6f3e0f30c8d706b7411538ff5bd9b956037aa3c92d639b035a13ff67fbce` |
| 50 | `theorem` | [isBigO_one_exp_comp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/isbigo-one-exp-comp--bf3882ad8e138066df02499d.md) | 404 | `result-track:bf3882ad8e138066df02499d5a22795cfdbedcc1fd2cb239d97caa9301e01932` |
| 51 | `theorem` | [isBigO_exp_comp_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/isbigo-exp-comp-one--8d922964cd19dd9ef9538da2.md) | 412 | `result-track:8d922964cd19dd9ef9538da276ad211f6c62be9a6a4a5e39b35060c465cf4233` |
| 52 | `theorem` | [isTheta_exp_comp_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/istheta-exp-comp-one--731c0f83a2f52a1ebdb21a74.md) | 421 | `result-track:731c0f83a2f52a1ebdb21a746ab175508569b0e881f1b94f9d921e2411432a7c` |
| 53 | `theorem` | [comap_exp_comap_abs_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/comap-exp-comap-abs-attop--fa20231a39e7725ef7955dc0.md) | 431 | `result-track:fa20231a39e7725ef7955dc0a7b25184e37d720840795b04cea80d6d3d56c30a` |
| 54 | `theorem` | [comap_exp_nhds_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/comap-exp-nhds-zero--0e4a44830dc6d8365af982db.md) | 439 | `result-track:0e4a44830dc6d8365af982db412ab7665bc5f84270aa72fe19ef2b9fcd644064` |
| 55 | `theorem` | [comap_exp_nhdsWithin_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/comap-exp-nhdswithin-zero--df277f3158f1021d200e057f.md) | 447 | `result-track:df277f3158f1021d200e057f0f8fcfe44f288962a11c6b7d803b2b96bd3df0f3` |
| 56 | `theorem` | [tendsto_exp_nhds_zero_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/tendsto-exp-nhds-zero-iff--c467dc17603608ffb96b3914.md) | 452 | `result-track:c467dc17603608ffb96b3914456782d9065397e356200381c5c0e868a30a6ae3` |
| 57 | `theorem` | [tendsto_exp_comap_re_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/tendsto-exp-comap-re-attop--1783d05ebdb5f96f2e5aece7.md) | 459 | `result-track:1783d05ebdb5f96f2e5aece76970405f04bfe01cc4c0d426112c2163fa5e24d0` |
| 58 | `theorem` | [tendsto_exp_comap_re_atBot](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/tendsto-exp-comap-re-atbot--d4779f2f30c1da96449850fd.md) | 464 | `result-track:d4779f2f30c1da96449850fd5d36c016975599120e911bef22eb8eb11129b6f4` |
| 59 | `theorem` | [tendsto_exp_comap_re_atBot_nhdsWithin](../../../../../mathematics/Analysis/AsymptoticAnalysis/Exp/Variant8bb4630d2e1fe23117e0d1be32bd8f95b888878a9ac0916ac79b4562567b1f88.lean/declarations/tendsto-exp-comap-re-atbot-nhdswithin--b62776cfc668b716f9a8190d.md) | 468 | `result-track:b62776cfc668b716f9a8190d6ab7559ce0ac5f26df9ab081c773279099022e01` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
