# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.StirlingVert.Variantd46739791d054ef009d82df991724c16e27275b956c6c4eba16cdc3916e424f1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a211e2f2ab84bc0f9b013a4671fd6d19c6675ef6",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/StirlingVert/Variantd46739791d054ef009d82df991724c16e27275b956c6c4eba16cdc3916e424f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantd46739791d054ef009d82df991724c16e27275b956c6c4eba16cdc3916e424f1.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantd46739791d054ef009d82df991724c16e27275b956c6c4eba16cdc3916e424f1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a211e2f2ab84bc0f9b013a4671fd6d19c6675ef6`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/StirlingVert/Variantd46739791d054ef009d82df991724c16e27275b956c6c4eba16cdc3916e424f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/StirlingVert/Variantd46739791d054ef009d82df991724c16e27275b956c6c4eba16cdc3916e424f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.GammaFacts.Mu` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.EulerMascheroni` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SumIntegralComparisons` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 25; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [intervalIntegral_mul_const_C](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantd46739791d054ef009d82df991724c16e27275b956c6c4eba16cdc3916e424f1.lean/declarations/intervalintegral-mul-const-c--25b836e43b394372c551d251.md) | 40 | `result-track:25b836e43b394372c551d251ae7fb1d3829d47770c3282d1bd9cda4642506b41` |
| 2 | `theorem` | [intervalIntegral_const_mul_C](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantd46739791d054ef009d82df991724c16e27275b956c6c4eba16cdc3916e424f1.lean/declarations/intervalintegral-const-mul-c--3fc8a18a43c02e6012142fb5.md) | 44 | `result-track:3fc8a18a43c02e6012142fb54ad3f5a352b37f58df91b49983cab7c2a465f1d9` |
| 3 | `theorem` | [abs_im_le_norm_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantd46739791d054ef009d82df991724c16e27275b956c6c4eba16cdc3916e424f1.lean/declarations/abs-im-le-norm-add--e1f17b832055806e42e43ff3.md) | 51 | `result-track:e1f17b832055806e42e43ff3bd97e90106e0105d0c6a07b6b186e0e331138f7e` |
| 4 | `theorem` | [re_add_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantd46739791d054ef009d82df991724c16e27275b956c6c4eba16cdc3916e424f1.lean/declarations/re-add-pos--0be6501142c53d326c507573.md) | 55 | `result-track:0be6501142c53d326c5075734216a2884b6827f0c412ad6f22921e1f73a57997` |
| 5 | `theorem` | [add_mem_slitPlane](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantd46739791d054ef009d82df991724c16e27275b956c6c4eba16cdc3916e424f1.lean/declarations/add-mem-slitplane--4e36bf3ce0132eb9fab487ff.md) | 58 | `result-track:4e36bf3ce0132eb9fab487ffc201c068a2d221314f268611a805bd3230f16cad` |
| 6 | `theorem` | [add_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantd46739791d054ef009d82df991724c16e27275b956c6c4eba16cdc3916e424f1.lean/declarations/add-ne-zero--007d9888d59e74006825af05.md) | 62 | `result-track:007d9888d59e74006825af0583ce895501e00a93c7797fe7dfa8244630c2843c` |
| 7 | `theorem` | [hasDerivAt_log_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantd46739791d054ef009d82df991724c16e27275b956c6c4eba16cdc3916e424f1.lean/declarations/hasderivat-log-add--35961e0e915f760186720a87.md) | 67 | `result-track:35961e0e915f760186720a876c73225ae0c9be11a687967d13b2710aabc5769c` |
| 8 | `theorem` | [integral_inv_add_eq_log_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantd46739791d054ef009d82df991724c16e27275b956c6c4eba16cdc3916e424f1.lean/declarations/integral-inv-add-eq-log-sub--1de143ced38051824cdf5e02.md) | 76 | `result-track:1de143ced38051824cdf5e02c4ff2d197ced286d3e9fadfd108152e73fa90022` |
| 9 | `theorem` | [inv_add_expand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantd46739791d054ef009d82df991724c16e27275b956c6c4eba16cdc3916e424f1.lean/declarations/inv-add-expand--432822c8e1a71b93f919d9f4.md) | 93 | `result-track:432822c8e1a71b93f919d9f49909e1d7b6207f2d55ef78decdce2684ea2ecf08` |
| 10 | `def` | [eps](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantd46739791d054ef009d82df991724c16e27275b956c6c4eba16cdc3916e424f1.lean/declarations/eps--0fa1a9938ca276ea5a97a79d.md) | 102 | `declaration-track:0fa1a9938ca276ea5a97a79dc41904f575f141c48ee6acb712dee2b436ad01c0` |
| 11 | `theorem` | [integral_inv_add_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantd46739791d054ef009d82df991724c16e27275b956c6c4eba16cdc3916e424f1.lean/declarations/integral-inv-add-eq--8f41c6f71233699f7e11d5b9.md) | 106 | `result-track:8f41c6f71233699f7e11d5b991fc1512f0da1f3bdbcbe40a55f601c2a805bebd` |
| 12 | `theorem` | [norm_eps_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantd46739791d054ef009d82df991724c16e27275b956c6c4eba16cdc3916e424f1.lean/declarations/norm-eps-le--48fa1314c67a519e2534ce74.md) | 144 | `result-track:48fa1314c67a519e2534ce74e64b86dc9d095c552a239e837a3f9dfeda78a5dc` |
| 13 | `theorem` | [natp1_re_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantd46739791d054ef009d82df991724c16e27275b956c6c4eba16cdc3916e424f1.lean/declarations/natp1-re-pos--868dfb317c209c51cceb0623.md) | 180 | `result-track:868dfb317c209c51cceb0623498a5b7a0ade56b517e74a516bc5cffd0d7fca08` |
| 14 | `theorem` | [natp1_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantd46739791d054ef009d82df991724c16e27275b956c6c4eba16cdc3916e424f1.lean/declarations/natp1-ne-zero--118116f6c9c700a1c6082152.md) | 183 | `result-track:118116f6c9c700a1c608215287bda9f8982c89fd5e698724374a4f6714eb4cc7` |
| 15 | `theorem` | [abs_im_le_norm_natp1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantd46739791d054ef009d82df991724c16e27275b956c6c4eba16cdc3916e424f1.lean/declarations/abs-im-le-norm-natp1--7e06802142954fac6ae526f5.md) | 186 | `result-track:7e06802142954fac6ae526f590865dd1d3246dfa1e468104ea366747eea43e6c` |
| 16 | `theorem` | [natp1_le_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantd46739791d054ef009d82df991724c16e27275b956c6c4eba16cdc3916e424f1.lean/declarations/natp1-le-norm--87fc37a640d233a524cf8647.md) | 189 | `result-track:87fc37a640d233a524cf8647120a0e259405551181f461825ab9e69e96f22615` |
| 17 | `theorem` | [natp1_cast](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantd46739791d054ef009d82df991724c16e27275b956c6c4eba16cdc3916e424f1.lean/declarations/natp1-cast--2eb01224a8c402c071099362.md) | 194 | `result-track:2eb01224a8c402c071099362486e14a047a543656d6201ee302e085792886a2b` |
| 18 | `theorem` | [inv_natp1_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantd46739791d054ef009d82df991724c16e27275b956c6c4eba16cdc3916e424f1.lean/declarations/inv-natp1-eq--a9264a3b58e9e50bcbfb0e4f.md) | 198 | `result-track:a9264a3b58e9e50bcbfb0e4ffe2360efe30ec124958a2ffea22300fd33fc6cb5` |
| 19 | `def` | [rho](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantd46739791d054ef009d82df991724c16e27275b956c6c4eba16cdc3916e424f1.lean/declarations/rho--c7b975a3e6801539201df40b.md) | 212 | `declaration-track:c7b975a3e6801539201df40bc2f5b620d52451f2d4bb8093f6e0aa55367180a8` |
| 20 | `theorem` | [inv_natp1_sq_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantd46739791d054ef009d82df991724c16e27275b956c6c4eba16cdc3916e424f1.lean/declarations/inv-natp1-sq-eq--c6e74a13005a44560b417440.md) | 215 | `result-track:c6e74a13005a44560b417440d37c44502491e45df318f3100c799e33dad3b6d6` |
| 21 | `theorem` | [norm_rho_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantd46739791d054ef009d82df991724c16e27275b956c6c4eba16cdc3916e424f1.lean/declarations/norm-rho-le--1882c1294c90ac345ffda41c.md) | 226 | `result-track:1882c1294c90ac345ffda41c210ad4410d92a9ecc47fe4006a55ab8ae24993d5` |
| 22 | `theorem` | [norm_eps_natp1_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantd46739791d054ef009d82df991724c16e27275b956c6c4eba16cdc3916e424f1.lean/declarations/norm-eps-natp1-le--0a05d18af7b57ec5645ac45e.md) | 237 | `result-track:0a05d18af7b57ec5645ac45e9e94297cdfdc1fcf2f65c1e61c6c0f49f56602f9` |
| 23 | `theorem` | [partial_sum_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantd46739791d054ef009d82df991724c16e27275b956c6c4eba16cdc3916e424f1.lean/declarations/partial-sum-eq--3944c7d613d8880c24324bd0.md) | 244 | `result-track:3944c7d613d8880c24324bd01f74b7f359252535dd9824d5c99bbbcd64c7b68a` |
| 24 | `theorem` | [norm_sq_natp1_ge](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantd46739791d054ef009d82df991724c16e27275b956c6c4eba16cdc3916e424f1.lean/declarations/norm-sq-natp1-ge--73c6118db55ec9acd3cf9374.md) | 269 | `result-track:73c6118db55ec9acd3cf93746946cb7172e21d933d848108c0014c53faff847f` |
| 25 | `theorem` | [inv_norm_sq_le_telescope](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantd46739791d054ef009d82df991724c16e27275b956c6c4eba16cdc3916e424f1.lean/declarations/inv-norm-sq-le-telescope--b346a6ace037dd9c9ec3a555.md) | 277 | `result-track:b346a6ace037dd9c9ec3a555a16992cdaa2f74d86945f01a839158a3bed2e42f` |
| 26 | `theorem` | [sum_inv_norm_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantd46739791d054ef009d82df991724c16e27275b956c6c4eba16cdc3916e424f1.lean/declarations/sum-inv-norm-sq-le--44a2a02969c3d79936901261.md) | 293 | `result-track:44a2a02969c3d79936901261107de804c693e920141d09fa239b31bc8658ad87` |
| 27 | `theorem` | [summable_inv_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantd46739791d054ef009d82df991724c16e27275b956c6c4eba16cdc3916e424f1.lean/declarations/summable-inv-norm-sq--accfb5904dacab4ea457c7d6.md) | 312 | `result-track:accfb5904dacab4ea457c7d6f2c5d580e979a849c99e429265d3ed1dcc89ca87` |
| 28 | `theorem` | [summable_rho](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantd46739791d054ef009d82df991724c16e27275b956c6c4eba16cdc3916e424f1.lean/declarations/summable-rho--0ac23f4d8bf3d6a6e5a0f4a5.md) | 321 | `result-track:0ac23f4d8bf3d6a6e5a0f4a5a7508623aaae2ab0ff7def4fb96132ca81e0812a` |
| 29 | `theorem` | [summable_eps](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantd46739791d054ef009d82df991724c16e27275b956c6c4eba16cdc3916e424f1.lean/declarations/summable-eps--acfad21848b34a1ab0d9e6f5.md) | 326 | `result-track:acfad21848b34a1ab0d9e6f53b52ad8b9ad112c01b3a4ae9d2a76fa2c8614b60` |
| 30 | `theorem` | [summable_norm_rho](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantd46739791d054ef009d82df991724c16e27275b956c6c4eba16cdc3916e424f1.lean/declarations/summable-norm-rho--28bfd7b1ce20846484c1ad6c.md) | 333 | `result-track:28bfd7b1ce20846484c1ad6cb45ac414859c534e0c653bef44df815a371b764c` |
| 31 | `theorem` | [summable_norm_eps](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantd46739791d054ef009d82df991724c16e27275b956c6c4eba16cdc3916e424f1.lean/declarations/summable-norm-eps--6c3dd4f1184995d075d813d7.md) | 339 | `result-track:6c3dd4f1184995d075d813d77e4e8a04f049bb1d841034e448b8c20e4766b2c3` |
| 32 | `theorem` | [tsum_inv_norm_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantd46739791d054ef009d82df991724c16e27275b956c6c4eba16cdc3916e424f1.lean/declarations/tsum-inv-norm-sq-le--1ab4ab3c559f5e0f9e7b06ae.md) | 346 | `result-track:1ab4ab3c559f5e0f9e7b06ae93b8cf4403ed214ba62a0df936027db651bf51d5` |
| 33 | `theorem` | [norm_tsum_rho_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantd46739791d054ef009d82df991724c16e27275b956c6c4eba16cdc3916e424f1.lean/declarations/norm-tsum-rho-le--70326cfecb7ac2e4447af309.md) | 350 | `result-track:70326cfecb7ac2e4447af309dfa54917ec6a4ee5800150e27c4fa29b299bf587` |
| 34 | `theorem` | [norm_tsum_eps_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantd46739791d054ef009d82df991724c16e27275b956c6c4eba16cdc3916e424f1.lean/declarations/norm-tsum-eps-le--ae6c031423382bbd6525e02c.md) | 364 | `result-track:ae6c031423382bbd6525e02c3aa1a9cd519f47f711800f822afefd6ebd09f902` |
| 35 | `theorem` | [tendsto_harmonic_sub_clog](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantd46739791d054ef009d82df991724c16e27275b956c6c4eba16cdc3916e424f1.lean/declarations/tendsto-harmonic-sub-clog--578357fd6d43e86f01ac669e.md) | 382 | `result-track:578357fd6d43e86f01ac669ebdf3cb0d6539dfcc5c1a69419ee35f7b12c542c1` |
| 36 | `theorem` | [tendsto_inv_natp1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantd46739791d054ef009d82df991724c16e27275b956c6c4eba16cdc3916e424f1.lean/declarations/tendsto-inv-natp1--2ac389626cc47924cd86abb3.md) | 425 | `result-track:2ac389626cc47924cd86abb3f7d0b5c1b6252e66aa23e6f509f203336c363200` |
| 37 | `theorem` | [digamma_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantd46739791d054ef009d82df991724c16e27275b956c6c4eba16cdc3916e424f1.lean/declarations/digamma-eq--07c87783cf7c7093fc77a8d7.md) | 439 | `result-track:07c87783cf7c7093fc77a8d7e65808438a550b3feea73ad1542e9c78e7c47c3c` |
| 38 | `theorem` | [log_one_add_sub_log](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantd46739791d054ef009d82df991724c16e27275b956c6c4eba16cdc3916e424f1.lean/declarations/log-one-add-sub-log--72f9e26d36fbfe248a76f57b.md) | 471 | `result-track:72f9e26d36fbfe248a76f57becdea9ffbbc79828066c0ffa213f86e9b81147aa` |
| 39 | `theorem` | [norm_eps_zero_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantd46739791d054ef009d82df991724c16e27275b956c6c4eba16cdc3916e424f1.lean/declarations/norm-eps-zero-le--61904d72fe6d93eeb508f983.md) | 478 | `result-track:61904d72fe6d93eeb508f98306f32be24b7b74d87eeb8d91d00ae3c1522ba72e` |
| 40 | `theorem` | [digamma_stirling](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantd46739791d054ef009d82df991724c16e27275b956c6c4eba16cdc3916e424f1.lean/declarations/digamma-stirling--e0824591ce74773eccb5295a.md) | 491 | `result-track:e0824591ce74773eccb5295a8fe6a61fec0fdb9b78f3de6febfeb95c714998d4` |
| 41 | `theorem` | [re_digamma_stirling](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantd46739791d054ef009d82df991724c16e27275b956c6c4eba16cdc3916e424f1.lean/declarations/re-digamma-stirling--0dc202d9bc132fbaee95c015.md) | 558 | `result-track:0dc202d9bc132fbaee95c0153a290280b7e27f9ddae9c0423a0e7081a05846f0` |
| 42 | `theorem` | [re_digamma_stirling'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantd46739791d054ef009d82df991724c16e27275b956c6c4eba16cdc3916e424f1.lean/declarations/re-digamma-stirling--59aa16829636e1fd06b4b05b.md) | 596 | `result-track:59aa16829636e1fd06b4b05b52722f9181d41df8ac27102a792dea24e0f4cb8a` |
| 43 | `theorem` | [mu_stirling](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantd46739791d054ef009d82df991724c16e27275b956c6c4eba16cdc3916e424f1.lean/declarations/mu-stirling--ff51346bf4789285a2d1237e.md) | 624 | `result-track:ff51346bf4789285a2d1237e15fd8950818880c62e8964a102234d9ba67fcaeb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
