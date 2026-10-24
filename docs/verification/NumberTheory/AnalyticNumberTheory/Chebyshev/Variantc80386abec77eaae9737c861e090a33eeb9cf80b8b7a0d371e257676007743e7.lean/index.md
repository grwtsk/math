# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.Chebyshev.Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d0d154c5fb6a7cec2352a0772b4b1a09c38ce3b",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d0d154c5fb6a7cec2352a0772b4b1a09c38ce3b`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Chebyshev` — import line 36; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.AbelSummation` — import line 37; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 38; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 39; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 40; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ExponentialBounds` — import line 41; external provider; requires a separately pinned dependency.
- `Zeta23.FromPNTPlus.Mertens` — import line 42; external provider; requires a separately pinned dependency.
- `Zeta23.Hypotheses` — import line 43; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sum_vonMangoldt_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean/declarations/sum-vonmangoldt-le--5f2471a9fc6b6c62c964c167.md) | 58 | `result-track:5f2471a9fc6b6c62c964c167cd54da1f6991531b2760b2fa0e0916a93e7851c8` |
| 2 | `lemma` | [sum_Icc_eq_sum_Ioc](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean/declarations/sum-icc-eq-sum-ioc--dbc46776de1b2ee2ba575a2f.md) | 69 | `result-track:dbc46776de1b2ee2ba575a2f7e644db05d953722a9959d461fbdb57c68919ae5` |
| 3 | `lemma` | [psi_eq_sum_Icc'](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean/declarations/psi-eq-sum-icc--d4706fa26be73e14a2927ea3.md) | 73 | `result-track:d4706fa26be73e14a2927ea3acac864a91c19095915d60ac98d5874981ed3bd7` |
| 4 | `lemma` | [abel_sqrt](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean/declarations/abel-sqrt--6e70f615da43eacd8bcaadc4.md) | 78 | `result-track:6e70f615da43eacd8bcaadc43cac9067fd8975c370f946eaca053a47e318e284` |
| 5 | `lemma` | [integral_tail_bound](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean/declarations/integral-tail-bound--e18ee4be659aacde48790632.md) | 115 | `result-track:e18ee4be659aacde48790632cc3609f9882eacfff76372d5d1df02b6ce1c166a` |
| 6 | `theorem` | [sum_vonMangoldt_div_sqrt_le_precise](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean/declarations/sum-vonmangoldt-div-sqrt-le-precise--752ba72276c96373ae13ebf9.md) | 240 | `result-track:752ba72276c96373ae13ebf9291638bf1f76baba0b5d8b4fe0ed7408c0d42b60` |
| 7 | `theorem` | [sum_vonMangoldt_div_sqrt_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean/declarations/sum-vonmangoldt-div-sqrt-le--a0965f27077002e70c0650ef.md) | 264 | `result-track:a0965f27077002e70c0650efc06e74ecdccef60f6fbc081267c03648517ae719` |
| 8 | `theorem` | [sum_vonMangoldt_div_sqrt_le_three_explicit](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean/declarations/sum-vonmangoldt-div-sqrt-le-three-explicit--42d743a9131178bf49229093.md) | 285 | `result-track:42d743a9131178bf49229093850affd381a930d69c9d0369881c1aaa0a773049` |
| 9 | `theorem` | [sum_vonMangoldt_div_sqrt_le_three](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean/declarations/sum-vonmangoldt-div-sqrt-le-three--9837ac812f63d1625ec611fa.md) | 333 | `result-track:9837ac812f63d1625ec611fac7591e5994ea59b689f271ab52184cb8c61d1820` |
| 10 | `theorem` | [sum_one_div_sqrt_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean/declarations/sum-one-div-sqrt-le--f9f618375afeafc951b9a9b0.md) | 340 | `result-track:f9f618375afeafc951b9a9b0b8c95548eb16c810ef4a343e8987e126253eff8f` |
| 11 | `theorem` | [sum_vonMangoldt_div_sqrt_mul_log_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean/declarations/sum-vonmangoldt-div-sqrt-mul-log-le--3f4a020e965b43511687b425.md) | 361 | `result-track:3f4a020e965b43511687b42581367d5aae04ff46710825cfe48f0edf29dff9e3` |
| 12 | `theorem` | [sum_vonMangoldt_sq_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean/declarations/sum-vonmangoldt-sq-le--63195103469b279155008ec6.md) | 482 | `result-track:63195103469b279155008ec66b0feda1e22e227a3158d4f760f70fbfacf31015` |
| 13 | `theorem` | [mertensFirst](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean/declarations/mertensfirst--4879b0b19cc429a0a2b1439b.md) | 517 | `result-track:4879b0b19cc429a0a2b1439b3b2f48ef6f70f44d77026feb5068edd13e0f3579` |
| 14 | `def` | [Msum](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean/declarations/msum--3045788cfbb6b2496330a94b.md) | 522 | `declaration-track:3045788cfbb6b2496330a94b733d5f86473b8bb613be6fa455b9fc99c32dedbc` |
| 15 | `def` | [M2sum](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean/declarations/m2sum--f97c6df6260074c35c019ef8.md) | 525 | `declaration-track:f97c6df6260074c35c019ef8a5775d3fcd284f41db4ab5851c7c97ffc93cc3db` |
| 16 | `lemma` | [Msum_eq_Ioc](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean/declarations/msum-eq-ioc--523dfed7feedaca5f46efcd7.md) | 527 | `result-track:523dfed7feedaca5f46efcd71a16dcc09318f0a8f98f3865254e2f22aa1d4470` |
| 17 | `lemma` | [M2sum_eq_Ioc](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean/declarations/m2sum-eq-ioc--3f8a7f4ebe77661ff3a9f508.md) | 530 | `result-track:3f8a7f4ebe77661ff3a9f508cf6c1237f55f2e2ef534242ffc1888e117cb979f` |
| 18 | `lemma` | [Msum_mono](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean/declarations/msum-mono--27fb8b7b994e42da4ed84347.md) | 533 | `result-track:27fb8b7b994e42da4ed843478ca911450ae95b695023f895e14674518f235d62` |
| 19 | `lemma` | [M2sum_mono](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean/declarations/m2sum-mono--1884992ac1d04e21036b7779.md) | 538 | `result-track:1884992ac1d04e21036b77792f0db4fdf5d177c1d822b3397021ed504be22207` |
| 20 | `lemma` | [Msum_nonneg](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean/declarations/msum-nonneg--f90f9d20760539444de9a9dc.md) | 543 | `result-track:f90f9d20760539444de9a9dcb6b4701b40c219da02795ef4995cf7fd1ddfdf1c` |
| 21 | `lemma` | [M2sum_nonneg](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean/declarations/m2sum-nonneg--d288c71dad7c541bdd92d7f8.md) | 546 | `result-track:d288c71dad7c541bdd92d7f8b35c5bb006fd3a62d080f5038db76c5877405fc4` |
| 22 | `lemma` | [abel_log_Msum](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean/declarations/abel-log-msum--a08158996e6814b1759a3547.md) | 550 | `result-track:a08158996e6814b1759a3547f0cfeb466869e042846d3484088944f8a2463a41` |
| 23 | `lemma` | [abel_log_M2sum](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean/declarations/abel-log-m2sum--3990bdba949607fd5f64ccee.md) | 577 | `result-track:3990bdba949607fd5f64ccee4fc4ea938db0894bd6a9347c2b9043adc93d6620` |
| 24 | `lemma` | [integral_inv_Ioc](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean/declarations/integral-inv-ioc--58a99e420a9f28605f3fee48.md) | 603 | `result-track:58a99e420a9f28605f3fee48279f03bc3a34a65bd48374548f59166588b6616e` |
| 25 | `lemma` | [integral_inv_mul_log](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean/declarations/integral-inv-mul-log--33031a3cb47d21e005c85f0e.md) | 613 | `result-track:33031a3cb47d21e005c85f0e649452231527827ffd810b4b5d3e28c9a0ed3eae` |
| 26 | `lemma` | [integral_inv_mul_log_sq](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean/declarations/integral-inv-mul-log-sq--c4c5bf041f5b106f62479823.md) | 638 | `result-track:c4c5bf041f5b106f62479823d9a4f9c113744a6d951d20fc5d89be39b86fbddb` |
| 27 | `lemma` | [integrableOn_inv_mul_mono](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean/declarations/integrableon-inv-mul-mono--227dc8dfc51396571faa8eb4.md) | 665 | `result-track:227dc8dfc51396571faa8eb40b09ad4d7aaf9f775f4f33767c995a0648122062` |
| 28 | `lemma` | [sum_log_mul_vonMangoldt_div_bound](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean/declarations/sum-log-mul-vonmangoldt-div-bound--f37d8a461151b61829665467.md) | 683 | `result-track:f37d8a461151b618296654675d98227ae27221c183237a652b2c3ad80c666200` |
| 29 | `lemma` | [sum_k_mul_half_pow_aux](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean/declarations/sum-k-mul-half-pow-aux--2ca3b89052c09b82726e81c6.md) | 755 | `result-track:2ca3b89052c09b82726e81c6ec20b6aeb031a3542d70cd1db130dc1426f15906` |
| 30 | `lemma` | [sum_k_mul_half_pow_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean/declarations/sum-k-mul-half-pow-le--9776e26ae3464ba39bb5e647.md) | 765 | `result-track:9776e26ae3464ba39bb5e647bbc80689a55bd548a8447c4a1831a10fd0afcf81` |
| 31 | `lemma` | [log_sq_div_sq_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean/declarations/log-sq-div-sq-le--0f0d0a16d14b1b9df2dcf024.md) | 772 | `result-track:0f0d0a16d14b1b9df2dcf024f441d8afe96f787113f8b5c170fd5ea48b6a3a2a` |
| 32 | `lemma` | [defect_term_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean/declarations/defect-term-le--c0003268e41d182cfb4b2fba.md) | 794 | `result-track:c0003268e41d182cfb4b2fba5eb10c19c5455f0dd42693fa6cfa0c2afa60c6b4` |
| 33 | `lemma` | [rpow_inv_le_telescope](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean/declarations/rpow-inv-le-telescope--da6541126ff0b797cc78f696.md) | 845 | `result-track:da6541126ff0b797cc78f696702bb4579b106467b6511378c7a9cb93c2af932c` |
| 34 | `lemma` | [sum_range_rpow_inv_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean/declarations/sum-range-rpow-inv-le--777e2100e43c9966c7e324e7.md) | 893 | `result-track:777e2100e43c9966c7e324e7878a37473f28731d5e52d1908ac60b48c945446f` |
| 35 | `lemma` | [tsum_rpow_neg_seven_quarters_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean/declarations/tsum-rpow-neg-seven-quarters-le--1ec3b866994d2ee5c5a25119.md) | 923 | `result-track:1ec3b866994d2ee5c5a25119961fbb29435a8e102b365ac1672710b8bcc68593` |
| 36 | `lemma` | [defect_bounded_explicit](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean/declarations/defect-bounded-explicit--c6aa79f48c1160433049f5e5.md) | 940 | `result-track:c6aa79f48c1160433049f5e56474bab226f1492300f0c4df90eb1a875e6e6166` |
| 37 | `lemma` | [defect_bounded](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean/declarations/defect-bounded--660bcd47e1aecb8230e558b3.md) | 1000 | `result-track:660bcd47e1aecb8230e558b37c2f1e2d97601c4162c10289f0fecf15252391b4` |
| 38 | `theorem` | [sum_vonMangoldt_sq_div_eq_explicit](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean/declarations/sum-vonmangoldt-sq-div-eq-explicit--109285f23b63e2610a8a057a.md) | 1006 | `result-track:109285f23b63e2610a8a057a048c469cff423fd5325f9f59eb9173cb3f42f60f` |
| 39 | `theorem` | [sum_vonMangoldt_sq_div_eq](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean/declarations/sum-vonmangoldt-sq-div-eq--01064267360ead89a30eb1a1.md) | 1047 | `result-track:01064267360ead89a30eb1a14797b19f9810dee9ac647d76b119296f9b856c1e` |
| 40 | `theorem` | [sum_vonMangoldt_sq_div_mul_log_sub_eq_explicit](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean/declarations/sum-vonmangoldt-sq-div-mul-log-sub-eq-explicit--ad0f39dbdc25ef178b6e5501.md) | 1055 | `result-track:ad0f39dbdc25ef178b6e55017677d079c17ddf16de4614cdd74c1e85d4ba8a3c` |
| 41 | `theorem` | [sum_vonMangoldt_sq_div_mul_log_sub_eq](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean/declarations/sum-vonmangoldt-sq-div-mul-log-sub-eq--0d59f30e574973778a60226b.md) | 1192 | `result-track:0d59f30e574973778a60226b19036373701dc19e0dd52c0f6c223208c4c5b706` |
| 42 | `theorem` | [chebyshevMertens](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean/declarations/chebyshevmertens--7f9c4cd8e5cde51a9275b990.md) | 1204 | `result-track:7f9c4cd8e5cde51a9275b99072f6393c2cbcfb3e93a83b31fc7734c13184b1a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
