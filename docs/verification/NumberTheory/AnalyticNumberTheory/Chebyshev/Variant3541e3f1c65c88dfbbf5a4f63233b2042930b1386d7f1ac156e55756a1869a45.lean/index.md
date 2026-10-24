# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.Chebyshev.Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5b14c82c28efbe9825a159c81cc676ea84d6ace",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5b14c82c28efbe9825a159c81cc676ea84d6ace`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Chebyshev` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Base` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [factorization_lcm](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean/declarations/factorization-lcm--d41d70c063e2d0315767c7bb.md) | 17 | `result-track:d41d70c063e2d0315767c7bbf66c7f9a4c31e327cecb7cd99c23360d5026f1e3` |
| 2 | `abbrev` | [primesLE](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean/declarations/primesle--35d6c31fdf7c12b6e2ca6f30.md) | 36 | `declaration-track:35d6c31fdf7c12b6e2ca6f3004072cf1094af87d55245510950294f557e2e746` |
| 3 | `theorem` | [mem_primesLE_prime](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean/declarations/mem-primesle-prime--5e482a5b2223addbf6575081.md) | 38 | `result-track:5e482a5b2223addbf65750815e88d1cd035542b068620469a9cfa095bb10f34e` |
| 4 | `theorem` | [mem_primesLE_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean/declarations/mem-primesle-le--43fe3694cca1d6d911ae85af.md) | 40 | `result-track:43fe3694cca1d6d911ae85afcde34c3d44987aca93e2e206429f788bfeb0ad6f` |
| 5 | `theorem` | [mem_primesLE_gt](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean/declarations/mem-primesle-gt--2a0c73d7d4129eebe7a8ea59.md) | 42 | `result-track:2a0c73d7d4129eebe7a8ea59960356280bed652e50807c2bf303f904e58b94f2` |
| 6 | `theorem` | [mem_primesLE_ge](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean/declarations/mem-primesle-ge--9010af450386a6a922f41876.md) | 44 | `result-track:9010af450386a6a922f418760a3a13b2240d0fbf817a006515ac602580246e20` |
| 7 | `theorem` | [primesLE_mono](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean/declarations/primesle-mono--f3fbe2cca50f13454512b4f4.md) | 46 | `result-track:f3fbe2cca50f13454512b4f45d5c23092971b9e03f60cdf5da0cfa9da8d7f5c6` |
| 8 | `theorem` | [primesLE_eq_filter_Icc_zero](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean/declarations/primesle-eq-filter-icc-zero--6c5724595068949e050e2ab4.md) | 50 | `result-track:6c5724595068949e050e2ab45cff7c510d665ca3d2c53a991569f460fcb8f2a8` |
| 9 | `theorem` | [primesLE_eq_filter_Icc_one](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean/declarations/primesle-eq-filter-icc-one--bb218335dd00f0d468371abe.md) | 54 | `result-track:bb218335dd00f0d468371abeb73f14be25047a18911808cbe0a9ee57fd28e49a` |
| 10 | `theorem` | [primesLE_eq_filter_Icc_two](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean/declarations/primesle-eq-filter-icc-two--bd59101ed9acb53ff7dd1d6c.md) | 58 | `result-track:bd59101ed9acb53ff7dd1d6cf2efb04a063eb9c2d4e2fe8ca1408e212c0402a5` |
| 11 | `theorem` | [card_primesLE](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean/declarations/card-primesle--cd9b27b2ca7cc52b5dc06090.md) | 63 | `result-track:cd9b27b2ca7cc52b5dc060906a631353300122bd5d158ebe25b61e242d8ccd58` |
| 12 | `theorem` | [log_prime_pos](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean/declarations/log-prime-pos--11038b18e222ee4d660031ab.md) | 66 | `result-track:11038b18e222ee4d660031ab15a7cf6e1e178b86d841e093ab47a0befe0f4cf8` |
| 13 | `theorem` | [log_prime_ne](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean/declarations/log-prime-ne--47eb11d0a85b389784aed2b4.md) | 70 | `result-track:47eb11d0a85b389784aed2b429254ee02496a2c8b74e4ae14c850d107a3c2088` |
| 14 | `theorem` | [log_prime_nonneg](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean/declarations/log-prime-nonneg--90e6ca8f9a5dcd8d2e525707.md) | 72 | `result-track:90e6ca8f9a5dcd8d2e525707d362373686b948e30fa5dbab50e0c330a3790c0c` |
| 15 | `abbrev` | [lcmUpto](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean/declarations/lcmupto--c198d9c76e968bc260f29568.md) | 75 | `declaration-track:c198d9c76e968bc260f29568b2c2b0e6aae7df17142a235daad031919167c76e` |
| 16 | `theorem` | [lcmUpto_ne_zero](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean/declarations/lcmupto-ne-zero--332831d1b04c995dd27e16f8.md) | 77 | `result-track:332831d1b04c995dd27e16f827eff1165a8bb8f9e8ae41fee5398625d78a511b` |
| 17 | `theorem` | [lcmUpto_pos](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean/declarations/lcmupto-pos--5f9cb19eb44f10fe46ecc8a8.md) | 80 | `result-track:5f9cb19eb44f10fe46ecc8a85c524a1a4727337e71ba85521a93eb2e0cfeb2d8` |
| 18 | `theorem` | [factorization_lcmUpto](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean/declarations/factorization-lcmupto--854821808fe95981cbfa475d.md) | 82 | `result-track:854821808fe95981cbfa475da06005c1d90d0ce793b8e711cb6e0e1635d70937` |
| 19 | `theorem` | [lcmUpto_dvd_factorial](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean/declarations/lcmupto-dvd-factorial--c68d548d1b3144da23aa5d04.md) | 97 | `result-track:c68d548d1b3144da23aa5d04d7f4dd3747f4d4153a489165a2943c30722f8356` |
| 20 | `theorem` | [primeFactors_lcmUpto](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean/declarations/primefactors-lcmupto--29f788b81c3bd00f8c5c1fed.md) | 100 | `result-track:29f788b81c3bd00f8c5c1fed655ad3a9bbe8971439e01c4f156bb76fdb884177` |
| 21 | `theorem` | [primorial_dvd_lcmUpto](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean/declarations/primorial-dvd-lcmupto--18978ee1dbdc94bc1f468f83.md) | 113 | `result-track:18978ee1dbdc94bc1f468f836c1498480f780bfae8c52ecf5e28e8e433ba2844` |
| 22 | `theorem` | [lcmUpto_eq_prod](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean/declarations/lcmupto-eq-prod--55b30ffca76072416be93128.md) | 118 | `result-track:55b30ffca76072416be93128e5c1264631d6998dd63551861c08a9790463a3d7` |
| 23 | `theorem` | [lcmUpto_eq_prod_pow_log](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean/declarations/lcmupto-eq-prod-pow-log--92e0ea440f5b43193cfcd3a1.md) | 130 | `result-track:92e0ea440f5b43193cfcd3a101e814c0ccd55228c3396a65ebaf8c8223892b2f` |
| 24 | `theorem` | [lcmUpto_eq_prod_pow_floor](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean/declarations/lcmupto-eq-prod-pow-floor--6ce7d5764ffb9e0ed026c8ae.md) | 135 | `result-track:6ce7d5764ffb9e0ed026c8ae31b174cb49021c0481d500e7158810b89b04e2ee` |
| 25 | `theorem` | [psi_eq_sum_mul_log_prime](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean/declarations/psi-eq-sum-mul-log-prime--14333f28244ff20fd85458d6.md) | 139 | `result-track:14333f28244ff20fd85458d648705dd6afe54fcf3475f3c1d865b3d199f0c1a0` |
| 26 | `theorem` | [psi_le_primeCounting_mul_log](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean/declarations/psi-le-primecounting-mul-log--988d00fa2e83b6a2aa3e8359.md) | 178 | `result-track:988d00fa2e83b6a2aa3e8359709c9bb417f9abcd9bb59bd68ab46e5b00774cc8` |
| 27 | `theorem` | [psi_le_primeCounting_mul_log'](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean/declarations/psi-le-primecounting-mul-log--0b14d817c98558caa99e80f9.md) | 190 | `result-track:0b14d817c98558caa99e80f97e7f8f5647bb6e0b50fc1e9c5168595b97b0dd7c` |
| 28 | `theorem` | [psi_eq_log_lcmUpto](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean/declarations/psi-eq-log-lcmupto--afa511233bc3905f37e201f5.md) | 199 | `result-track:afa511233bc3905f37e201f5e633f6e076e1ce6d7e05fd988772e72e6b089ecd` |
| 29 | `theorem` | [choose_dvd_lcmUpto](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean/declarations/choose-dvd-lcmupto--02bfa172acf067ff66d5c2a3.md) | 205 | `result-track:02bfa172acf067ff66d5c2a3788f495475a484fc2c7cd74411f77826d40791a7` |
| 30 | `theorem` | [two_pow_le_mul_lcmUpto](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean/declarations/two-pow-le-mul-lcmupto--518e9d445d2e8a00ecf65b79.md) | 211 | `result-track:518e9d445d2e8a00ecf65b7931529492da5a56ad444c4c2047995c78924753ff` |
| 31 | `theorem` | [psi_ge](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean/declarations/psi-ge--2486a161340c37f006295a73.md) | 220 | `result-track:2486a161340c37f006295a7305c4866752db3f421d6d80a4609f7cf17d9f0367` |
| 32 | `theorem` | [psi_ge'](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean/declarations/psi-ge--1abe60a5c9936aaf04411afa.md) | 227 | `result-track:1abe60a5c9936aaf04411afac3bc743a18d765617c7ceecafef5ad131451c834` |
| 33 | `theorem` | [primeCounting_ge](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean/declarations/primecounting-ge--c8cf5cff29c12b415ae42921.md) | 234 | `result-track:c8cf5cff29c12b415ae42921122163ad70ff1d23f1ebb500ee4a8a1619074480` |
| 34 | `theorem` | [primeCounting_ge'](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean/declarations/primecounting-ge--0bd22aded45b9fb7754f9ed4.md) | 240 | `result-track:0bd22aded45b9fb7754f9ed49e99e0dbbfac9a72614068388b4cb2516c824fe3` |
| 35 | `theorem` | [theta_zero](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean/declarations/theta-zero--57be96616494787cbe463751.md) | 246 | `result-track:57be96616494787cbe463751d262b60d1182dee7531beb80d71860658af8ad2e` |
| 36 | `theorem` | [theta_one](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean/declarations/theta-one--d93ebf09b3010642993577f2.md) | 249 | `result-track:d93ebf09b3010642993577f2442b37d671ad25b3d9ae54861ad9ce68aab2e67f` |
| 37 | `theorem` | [psi_sub_theta_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean/declarations/psi-sub-theta-le--48d3391922cbc35f78f7c354.md) | 251 | `result-track:48d3391922cbc35f78f7c35489f7746177889bca04908e39f135ffe772074349` |
| 38 | `theorem` | [theta_ge](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean/declarations/theta-ge--c14ac65e31b1ed176c5d55af.md) | 256 | `result-track:c14ac65e31b1ed176c5d55af3c7bae960a1bba42648cc9e28519d408bdce52f0` |
| 39 | `theorem` | [theta_ge'](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean/declarations/theta-ge--910320681ad7d8bfe98010aa.md) | 261 | `result-track:910320681ad7d8bfe98010aa6b1d3d9d3ba55e56299cfce7a240e9e45984dbe1` |
| 40 | `theorem` | [theta_eq_sum_log](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean/declarations/theta-eq-sum-log--c6d9b5edf6570bd19f1adceb.md) | 265 | `result-track:c6d9b5edf6570bd19f1adceba5132300b175658d81412668ed8e735ad88ce10e` |
| 41 | `theorem` | [theta_le_primeCounting_mul_log](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean/declarations/theta-le-primecounting-mul-log--2f392e4492695b6f8fd85fc0.md) | 268 | `result-track:2f392e4492695b6f8fd85fc0e604925fda2abd7f04c29b0e10912df0d191a77d` |
| 42 | `theorem` | [theta_le_primeCounting_mul_log'](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean/declarations/theta-le-primecounting-mul-log--cad7a47aa35c70de27afca41.md) | 271 | `result-track:cad7a47aa35c70de27afca41543072e2d0565643a16821785bf7c9d27ecf77fd` |
| 43 | `theorem` | [pi_mul_log_sqrt_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean/declarations/pi-mul-log-sqrt-le--660a88cfe79396e32f8238d5.md) | 274 | `result-track:660a88cfe79396e32f8238d511757ab22c36efb7085851a213c91639b2e821cf` |
| 44 | `theorem` | [pi_le_log4_mul_div](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean/declarations/pi-le-log4-mul-div--1295078dbe8f7ed902caaef5.md) | 304 | `result-track:1295078dbe8f7ed902caaef510b8ed23bcd05c32b6e7ffbea541b5586deff09b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
