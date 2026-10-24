# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.MeanValue.Variantf4aee8c33b7d82564d3cf7c9ddeacb5944f7c24b49dbdce714929cd3ffa37a3e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45e3c72e110f0b67c4ff32bdd38e43ccf64acdda",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantf4aee8c33b7d82564d3cf7c9ddeacb5944f7c24b49dbdce714929cd3ffa37a3e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantf4aee8c33b7d82564d3cf7c9ddeacb5944f7c24b49dbdce714929cd3ffa37a3e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantf4aee8c33b7d82564d3cf7c9ddeacb5944f7c24b49dbdce714929cd3ffa37a3e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45e3c72e110f0b67c4ff32bdd38e43ccf64acdda`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantf4aee8c33b7d82564d3cf7c9ddeacb5944f7c24b49dbdce714929cd3ffa37a3e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantf4aee8c33b7d82564d3cf7c9ddeacb5944f7c24b49dbdce714929cd3ffa37a3e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.AffineMap` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Comp` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Mul` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Slope` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.LocalExtr.Rolle` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.AddTorsor` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.RCLike.Basic` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_ratio_hasDerivAt_eq_ratio_slope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantf4aee8c33b7d82564d3cf7c9ddeacb5944f7c24b49dbdce714929cd3ffa37a3e.lean/declarations/exists-ratio-hasderivat-eq-ratio-slope--ba0d89bcae2e8ce7045f22ae.md) | 87 | `result-track:ba0d89bcae2e8ce7045f22ae1162b69a97928f83b698112954aced8378cc5ca4` |
| 2 | `theorem` | [exists_ratio_hasDerivAt_eq_ratio_slope'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantf4aee8c33b7d82564d3cf7c9ddeacb5944f7c24b49dbdce714929cd3ffa37a3e.lean/declarations/exists-ratio-hasderivat-eq-ratio-slope--0869e71eaa1030c1fb22ddb3.md) | 101 | `result-track:0869e71eaa1030c1fb22ddb33caca09e0cf9cddd6b8ee0269b5d2431184b2c05` |
| 3 | `theorem` | [exists_hasDerivAt_eq_slope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantf4aee8c33b7d82564d3cf7c9ddeacb5944f7c24b49dbdce714929cd3ffa37a3e.lean/declarations/exists-hasderivat-eq-slope--6b233904bfbe9c67c671c29a.md) | 126 | `result-track:6b233904bfbe9c67c671c29a425bbe3711a8e96cf33a91db41d5573221b61561` |
| 4 | `theorem` | [exists_ratio_deriv_eq_ratio_slope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantf4aee8c33b7d82564d3cf7c9ddeacb5944f7c24b49dbdce714929cd3ffa37a3e.lean/declarations/exists-ratio-deriv-eq-ratio-slope--e9c32300f17fec5e3a9216e8.md) | 135 | `result-track:e9c32300f17fec5e3a9216e84c549b0ef507d1af6115db801cfde284895a5203` |
| 5 | `theorem` | [exists_ratio_deriv_eq_ratio_slope'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantf4aee8c33b7d82564d3cf7c9ddeacb5944f7c24b49dbdce714929cd3ffa37a3e.lean/declarations/exists-ratio-deriv-eq-ratio-slope--3a6cc4afc001659e1461cd3e.md) | 144 | `result-track:3a6cc4afc001659e1461cd3ee69da32abd6ecc9417eb3ee0f50ead3638502be9` |
| 6 | `theorem` | [exists_deriv_eq_slope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantf4aee8c33b7d82564d3cf7c9ddeacb5944f7c24b49dbdce714929cd3ffa37a3e.lean/declarations/exists-deriv-eq-slope--28058054cfa1c768859515ef.md) | 155 | `result-track:28058054cfa1c768859515eff3ce95a321a14063b0712b1a0c3eab747097eb85` |
| 7 | `theorem` | [exists_deriv_eq_slope'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantf4aee8c33b7d82564d3cf7c9ddeacb5944f7c24b49dbdce714929cd3ffa37a3e.lean/declarations/exists-deriv-eq-slope--5de56014472eec9fefe709d3.md) | 161 | `result-track:5de56014472eec9fefe709d35f522ff6a6b22f64ff21f97e491e62595a811f73` |
| 8 | `theorem` | [not_differentiableWithinAt_of_deriv_tendsto_atTop_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantf4aee8c33b7d82564d3cf7c9ddeacb5944f7c24b49dbdce714929cd3ffa37a3e.lean/declarations/not-differentiablewithinat-of-deriv-tendsto-attop-ioi--cee6dce3559903632ba1fb53.md) | 167 | `result-track:cee6dce3559903632ba1fb534b1a9ec19d5333aeb0af772dc3c860dbf1195045` |
| 9 | `theorem` | [not_differentiableWithinAt_of_deriv_tendsto_atBot_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantf4aee8c33b7d82564d3cf7c9ddeacb5944f7c24b49dbdce714929cd3ffa37a3e.lean/declarations/not-differentiablewithinat-of-deriv-tendsto-atbot-ioi--886ef524dcb972ee919fca59.md) | 231 | `result-track:886ef524dcb972ee919fca59e3397b68804ad3edbcd65de8a509afe7564033e8` |
| 10 | `theorem` | [not_differentiableWithinAt_of_deriv_tendsto_atBot_Iio](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantf4aee8c33b7d82564d3cf7c9ddeacb5944f7c24b49dbdce714929cd3ffa37a3e.lean/declarations/not-differentiablewithinat-of-deriv-tendsto-atbot-iio--7a62b9021b3bd346e53af614.md) | 241 | `result-track:7a62b9021b3bd346e53af6146a344d17bf5f00fff354076007d0bb7f3184df6c` |
| 11 | `theorem` | [not_differentiableWithinAt_of_deriv_tendsto_atTop_Iio](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantf4aee8c33b7d82564d3cf7c9ddeacb5944f7c24b49dbdce714929cd3ffa37a3e.lean/declarations/not-differentiablewithinat-of-deriv-tendsto-attop-iio--44ad79433f0e756515e377ea.md) | 273 | `result-track:44ad79433f0e756515e377ea4597149a0dae191acd1cc4dc94bae7242fccf04a` |
| 12 | `theorem` | [Convex.mul_sub_lt_image_sub_of_lt_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantf4aee8c33b7d82564d3cf7c9ddeacb5944f7c24b49dbdce714929cd3ffa37a3e.lean/declarations/convex-mul-sub-lt-image-sub-of-lt-deriv--1c0e7b07c2da320205efdc6a.md) | 287 | `result-track:1c0e7b07c2da320205efdc6ae907909b49a2df0158e5136a58aa4aaf2fb6a9e8` |
| 13 | `theorem` | [mul_sub_lt_image_sub_of_lt_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantf4aee8c33b7d82564d3cf7c9ddeacb5944f7c24b49dbdce714929cd3ffa37a3e.lean/declarations/mul-sub-lt-image-sub-of-lt-deriv--8e1c3ee8bc0fbdfd75ba0870.md) | 302 | `result-track:8e1c3ee8bc0fbdfd75ba087022ca025c2d1c875bb24ce929d03e4334adc5f0c4` |
| 14 | `theorem` | [Convex.mul_sub_le_image_sub_of_le_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantf4aee8c33b7d82564d3cf7c9ddeacb5944f7c24b49dbdce714929cd3ffa37a3e.lean/declarations/convex-mul-sub-le-image-sub-of-le-deriv--6c3877450b4a590e17b86963.md) | 311 | `result-track:6c3877450b4a590e17b86963a997a00af2a43e3016aa3776d4e1df162e23f138` |
| 15 | `theorem` | [mul_sub_le_image_sub_of_le_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantf4aee8c33b7d82564d3cf7c9ddeacb5944f7c24b49dbdce714929cd3ffa37a3e.lean/declarations/mul-sub-le-image-sub-of-le-deriv--01c17990df007fa2bd2ac143.md) | 328 | `result-track:01c17990df007fa2bd2ac1438ca9b578c70a08f1c5affa657123579cc8c85602` |
| 16 | `theorem` | [Convex.image_sub_lt_mul_sub_of_deriv_lt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantf4aee8c33b7d82564d3cf7c9ddeacb5944f7c24b49dbdce714929cd3ffa37a3e.lean/declarations/convex-image-sub-lt-mul-sub-of-deriv-lt--b04f42784adc1b96adbceff3.md) | 337 | `result-track:b04f42784adc1b96adbceff3eb96a24361efe160cf0c670a53a53245b2dc0e9a` |
| 17 | `theorem` | [image_sub_lt_mul_sub_of_deriv_lt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantf4aee8c33b7d82564d3cf7c9ddeacb5944f7c24b49dbdce714929cd3ffa37a3e.lean/declarations/image-sub-lt-mul-sub-of-deriv-lt--9f585f8ba6e3fac278dc389a.md) | 348 | `result-track:9f585f8ba6e3fac278dc389aaedd0f448b80fe3441b4e37b7832ba97b62eb787` |
| 18 | `theorem` | [Convex.image_sub_le_mul_sub_of_deriv_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantf4aee8c33b7d82564d3cf7c9ddeacb5944f7c24b49dbdce714929cd3ffa37a3e.lean/declarations/convex-image-sub-le-mul-sub-of-deriv-le--fca3b41d56dff14e32b231d2.md) | 357 | `result-track:fca3b41d56dff14e32b231d2cafb3c3626feed2afa02fc8f9f78fbc43aaa5e84` |
| 19 | `theorem` | [image_sub_le_mul_sub_of_deriv_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantf4aee8c33b7d82564d3cf7c9ddeacb5944f7c24b49dbdce714929cd3ffa37a3e.lean/declarations/image-sub-le-mul-sub-of-deriv-le--23dec64b00d0832aca1e4d91.md) | 368 | `result-track:23dec64b00d0832aca1e4d919a8caa52d656b4e6bd51069c3266807dd7f17b70` |
| 20 | `theorem` | [strictMonoOn_of_deriv_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantf4aee8c33b7d82564d3cf7c9ddeacb5944f7c24b49dbdce714929cd3ffa37a3e.lean/declarations/strictmonoon-of-deriv-pos--d1dbef9aee3b8321ac85bdc3.md) | 378 | `result-track:d1dbef9aee3b8321ac85bdc334f10cc070d8cbc78ebc30c29c133bcca0d84bc3` |
| 21 | `theorem` | [strictMono_of_deriv_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantf4aee8c33b7d82564d3cf7c9ddeacb5944f7c24b49dbdce714929cd3ffa37a3e.lean/declarations/strictmono-of-deriv-pos--a3f36e9d4d8ab092b132506d.md) | 390 | `result-track:a3f36e9d4d8ab092b132506d14906a9192ec3bdd5886667e7167b9e4df57155a` |
| 22 | `lemma` | [strictMonoOn_of_hasDerivWithinAt_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantf4aee8c33b7d82564d3cf7c9ddeacb5944f7c24b49dbdce714929cd3ffa37a3e.lean/declarations/strictmonoon-of-hasderivwithinat-pos--f8923b7148897d1eeb28e16d.md) | 398 | `result-track:f8923b7148897d1eeb28e16dc25c68179e3a0a129e3ccacfa674894a11f97245` |
| 23 | `lemma` | [strictMono_of_hasDerivAt_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantf4aee8c33b7d82564d3cf7c9ddeacb5944f7c24b49dbdce714929cd3ffa37a3e.lean/declarations/strictmono-of-hasderivat-pos--8ade993cf9315d5e7288a2fa.md) | 406 | `result-track:8ade993cf9315d5e7288a2faef9485f18004a3cb96d6ff268a84eb1e26eee88f` |
| 24 | `theorem` | [monotoneOn_of_deriv_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantf4aee8c33b7d82564d3cf7c9ddeacb5944f7c24b49dbdce714929cd3ffa37a3e.lean/declarations/monotoneon-of-deriv-nonneg--ffb29707d95f3ddab97feeeb.md) | 413 | `result-track:ffb29707d95f3ddab97feeebb14fb3d9329dd982649bf30523014f3f540006fd` |
| 25 | `theorem` | [monotone_of_deriv_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantf4aee8c33b7d82564d3cf7c9ddeacb5944f7c24b49dbdce714929cd3ffa37a3e.lean/declarations/monotone-of-deriv-nonneg--3523be8c1fd23ed54d47a913.md) | 421 | `result-track:3523be8c1fd23ed54d47a913e1769c2632e362194fd65538d60201541f5f00d6` |
| 26 | `lemma` | [monotoneOn_of_hasDerivWithinAt_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantf4aee8c33b7d82564d3cf7c9ddeacb5944f7c24b49dbdce714929cd3ffa37a3e.lean/declarations/monotoneon-of-hasderivwithinat-nonneg--dc382be31c5f3dcea4a56d3b.md) | 430 | `result-track:dc382be31c5f3dcea4a56d3b74ab65d4b3cd2f5bd04d62727297f625b42bb010` |
| 27 | `lemma` | [monotone_of_hasDerivAt_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantf4aee8c33b7d82564d3cf7c9ddeacb5944f7c24b49dbdce714929cd3ffa37a3e.lean/declarations/monotone-of-hasderivat-nonneg--ef2c3413856c60548d18863f.md) | 438 | `result-track:ef2c3413856c60548d18863fde9c231f180d0b1491842bf5ad343963c57996e3` |
| 28 | `theorem` | [strictAntiOn_of_deriv_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantf4aee8c33b7d82564d3cf7c9ddeacb5944f7c24b49dbdce714929cd3ffa37a3e.lean/declarations/strictantion-of-deriv-neg--335bf18849b6853ed91e5b42.md) | 446 | `result-track:335bf18849b6853ed91e5b42f6eb039fcd30372277f3e7d49a908ad2eab80b7d` |
| 29 | `theorem` | [strictAnti_of_deriv_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantf4aee8c33b7d82564d3cf7c9ddeacb5944f7c24b49dbdce714929cd3ffa37a3e.lean/declarations/strictanti-of-deriv-neg--2c9e348efb4143b746346eee.md) | 458 | `result-track:2c9e348efb4143b746346eee9ae3a38d5a49bc87473520c3c3e80baf139e8af2` |
| 30 | `lemma` | [strictAntiOn_of_hasDerivWithinAt_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantf4aee8c33b7d82564d3cf7c9ddeacb5944f7c24b49dbdce714929cd3ffa37a3e.lean/declarations/strictantion-of-hasderivwithinat-neg--8a506000d8f145a188f6dc8e.md) | 467 | `result-track:8a506000d8f145a188f6dc8ebae1e8190214889a6e21d9bdee2dcd23baa09fc5` |
| 31 | `lemma` | [strictAnti_of_hasDerivAt_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantf4aee8c33b7d82564d3cf7c9ddeacb5944f7c24b49dbdce714929cd3ffa37a3e.lean/declarations/strictanti-of-hasderivat-neg--2e23502c337eac3be7f8fb1f.md) | 475 | `result-track:2e23502c337eac3be7f8fb1fd10fc269d69c2d6358c5e9aaacff9e28054703ae` |
| 32 | `theorem` | [antitoneOn_of_deriv_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantf4aee8c33b7d82564d3cf7c9ddeacb5944f7c24b49dbdce714929cd3ffa37a3e.lean/declarations/antitoneon-of-deriv-nonpos--3f49e83a722b637309ed0688.md) | 482 | `result-track:3f49e83a722b637309ed0688af2fe167b68c799007f3769e779e55fc611bd72d` |
| 33 | `theorem` | [antitone_of_deriv_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantf4aee8c33b7d82564d3cf7c9ddeacb5944f7c24b49dbdce714929cd3ffa37a3e.lean/declarations/antitone-of-deriv-nonpos--61284977e884c0f648d213e3.md) | 490 | `result-track:61284977e884c0f648d213e38334bcc8ac14c57a7be0408fd644ca189e0eeded` |
| 34 | `lemma` | [antitoneOn_of_hasDerivWithinAt_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantf4aee8c33b7d82564d3cf7c9ddeacb5944f7c24b49dbdce714929cd3ffa37a3e.lean/declarations/antitoneon-of-hasderivwithinat-nonpos--36f4a21bb194ffa0400dbdda.md) | 499 | `result-track:36f4a21bb194ffa0400dbdda3d46e8218f0e2814afbbe15873a2a310117d5606` |
| 35 | `lemma` | [antitone_of_hasDerivAt_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantf4aee8c33b7d82564d3cf7c9ddeacb5944f7c24b49dbdce714929cd3ffa37a3e.lean/declarations/antitone-of-hasderivat-nonpos--cbcef97270dd434092a1fd4c.md) | 507 | `result-track:cbcef97270dd434092a1fd4cdf8fa8a63ad8a3696780dbf5ffddfd39b2e5359b` |
| 36 | `theorem` | [domain_mvt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantf4aee8c33b7d82564d3cf7c9ddeacb5944f7c24b49dbdce714929cd3ffa37a3e.lean/declarations/domain-mvt--d3836f3dde42947c1cdfc52a.md) | 517 | `result-track:d3836f3dde42947c1cdfc52a80b604cd5b876a77c1e8b00c01ad51c7bdf5c2a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
