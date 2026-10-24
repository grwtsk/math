# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.Chebyshev.Variant8e752ba4c46b43880478c7101e27994b901394ec80f35b0c450328ae6c3e2d5e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "127d981f6245b8f13a3cabddc5109a6b64de5b7f",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant8e752ba4c46b43880478c7101e27994b901394ec80f35b0c450328ae6c3e2d5e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant8e752ba4c46b43880478c7101e27994b901394ec80f35b0c450328ae6c3e2d5e.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant8e752ba4c46b43880478c7101e27994b901394ec80f35b0c450328ae6c3e2d5e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `127d981f6245b8f13a3cabddc5109a6b64de5b7f`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant8e752ba4c46b43880478c7101e27994b901394ec80f35b0c450328ae6c3e2d5e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant8e752ba4c46b43880478c7101e27994b901394ec80f35b0c450328ae6c3e2d5e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Chebyshev` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Base` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [factorization_lcm](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant8e752ba4c46b43880478c7101e27994b901394ec80f35b0c450328ae6c3e2d5e.lean/declarations/factorization-lcm--bbd4a95266a72e197cec9bec.md) | 9 | `result-track:bbd4a95266a72e197cec9bec9901c7e8629f5d740f18fb408b84a38fb3bd4932` |
| 2 | `abbrev` | [primesLE](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant8e752ba4c46b43880478c7101e27994b901394ec80f35b0c450328ae6c3e2d5e.lean/declarations/primesle--ad517264f4275ba604c227f8.md) | 28 | `declaration-track:ad517264f4275ba604c227f854bf14f9dccb7a88213a643724355357a938832f` |
| 3 | `theorem` | [mem_primesLE_prime](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant8e752ba4c46b43880478c7101e27994b901394ec80f35b0c450328ae6c3e2d5e.lean/declarations/mem-primesle-prime--b3cb41ca9c93be1fbae84f80.md) | 30 | `result-track:b3cb41ca9c93be1fbae84f8006e4a79086db8aa0fa6fd8806bed550572218461` |
| 4 | `theorem` | [mem_primesLE_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant8e752ba4c46b43880478c7101e27994b901394ec80f35b0c450328ae6c3e2d5e.lean/declarations/mem-primesle-le--9d3d864513345cff50e7abb4.md) | 32 | `result-track:9d3d864513345cff50e7abb41e5ba0a5c28d94d26a7cd9436db6a1086d9f16f6` |
| 5 | `theorem` | [mem_primesLE_gt](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant8e752ba4c46b43880478c7101e27994b901394ec80f35b0c450328ae6c3e2d5e.lean/declarations/mem-primesle-gt--a13c54ee198576591b2bf5aa.md) | 34 | `result-track:a13c54ee198576591b2bf5aa4004fb794553523848c80b9f33fcf423814db8a0` |
| 6 | `theorem` | [mem_primesLE_ge](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant8e752ba4c46b43880478c7101e27994b901394ec80f35b0c450328ae6c3e2d5e.lean/declarations/mem-primesle-ge--0592a024cdb94efce14410f0.md) | 36 | `result-track:0592a024cdb94efce14410f036614b84cb811a8057d2f2d8adb8c86a06ce719f` |
| 7 | `theorem` | [primesLE_mono](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant8e752ba4c46b43880478c7101e27994b901394ec80f35b0c450328ae6c3e2d5e.lean/declarations/primesle-mono--5fa16fb2a724dbfc7329e2b5.md) | 38 | `result-track:5fa16fb2a724dbfc7329e2b5609c7a68610c9c1411b06420844b7bdba08bfd03` |
| 8 | `theorem` | [primesLE_eq_filter_Icc_zero](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant8e752ba4c46b43880478c7101e27994b901394ec80f35b0c450328ae6c3e2d5e.lean/declarations/primesle-eq-filter-icc-zero--b2540f76830a0995d3e21389.md) | 42 | `result-track:b2540f76830a0995d3e213892fa5cb727dad46abdbd9ea7b88b542c3eea49f24` |
| 9 | `theorem` | [primesLE_eq_filter_Icc_one](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant8e752ba4c46b43880478c7101e27994b901394ec80f35b0c450328ae6c3e2d5e.lean/declarations/primesle-eq-filter-icc-one--d64e779de7820a71547d7417.md) | 46 | `result-track:d64e779de7820a71547d741780b75aa418b2ffaf801ac025bab20d469ae25ccc` |
| 10 | `theorem` | [primesLE_eq_filter_Icc_two](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant8e752ba4c46b43880478c7101e27994b901394ec80f35b0c450328ae6c3e2d5e.lean/declarations/primesle-eq-filter-icc-two--0337b39266c1cfa7eee38edb.md) | 50 | `result-track:0337b39266c1cfa7eee38edb44f639b575b944ebdd2ff7e548ec2a106c88b61f` |
| 11 | `theorem` | [card_primesLE](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant8e752ba4c46b43880478c7101e27994b901394ec80f35b0c450328ae6c3e2d5e.lean/declarations/card-primesle--d1096f8491e4e0bddf43dd1d.md) | 55 | `result-track:d1096f8491e4e0bddf43dd1da405456ad305eee924d90f2b42c1379d0e48ee50` |
| 12 | `theorem` | [log_prime_pos](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant8e752ba4c46b43880478c7101e27994b901394ec80f35b0c450328ae6c3e2d5e.lean/declarations/log-prime-pos--570c5fd23c73dd5bbdaabff2.md) | 58 | `result-track:570c5fd23c73dd5bbdaabff2f5587c044d40c89bb84531b4058effaa24cb7ade` |
| 13 | `theorem` | [log_prime_ne](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant8e752ba4c46b43880478c7101e27994b901394ec80f35b0c450328ae6c3e2d5e.lean/declarations/log-prime-ne--f76edc52daad313123dca557.md) | 62 | `result-track:f76edc52daad313123dca55721c7c83c959077118c5a066c67422a3bc75771eb` |
| 14 | `theorem` | [log_prime_nonneg](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant8e752ba4c46b43880478c7101e27994b901394ec80f35b0c450328ae6c3e2d5e.lean/declarations/log-prime-nonneg--2303f4a1ede271066bb4fc22.md) | 64 | `result-track:2303f4a1ede271066bb4fc22987ca4fd943120ea3f90647c059ab87cc0d63c0d` |
| 15 | `abbrev` | [lcmUpto](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant8e752ba4c46b43880478c7101e27994b901394ec80f35b0c450328ae6c3e2d5e.lean/declarations/lcmupto--7cf854eeb661fe3bde8e23c1.md) | 67 | `declaration-track:7cf854eeb661fe3bde8e23c157bdf8da619e3373b626d4e6d07728d35bed9580` |
| 16 | `theorem` | [lcmUpto_ne_zero](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant8e752ba4c46b43880478c7101e27994b901394ec80f35b0c450328ae6c3e2d5e.lean/declarations/lcmupto-ne-zero--97f5c669260c988bf0216531.md) | 69 | `result-track:97f5c669260c988bf0216531463e118a37ab4ae703e93b6d6f5a607aa0c93a0c` |
| 17 | `theorem` | [lcmUpto_pos](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant8e752ba4c46b43880478c7101e27994b901394ec80f35b0c450328ae6c3e2d5e.lean/declarations/lcmupto-pos--5abb5cf35fceccf1444a398d.md) | 72 | `result-track:5abb5cf35fceccf1444a398d1d1cfea6f829a7d710973ec17b27fb7c25595dbf` |
| 18 | `theorem` | [factorization_lcmUpto](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant8e752ba4c46b43880478c7101e27994b901394ec80f35b0c450328ae6c3e2d5e.lean/declarations/factorization-lcmupto--07499bcfa0bfb1b113d8f01e.md) | 74 | `result-track:07499bcfa0bfb1b113d8f01e7dba790d3f96d26945c77e62f9f00771d1b30ccb` |
| 19 | `theorem` | [lcmUpto_dvd_factorial](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant8e752ba4c46b43880478c7101e27994b901394ec80f35b0c450328ae6c3e2d5e.lean/declarations/lcmupto-dvd-factorial--94308cd27107a733ebb74f02.md) | 89 | `result-track:94308cd27107a733ebb74f0211a07ed9fade29037ca863676685a0d52e2dafbe` |
| 20 | `theorem` | [primeFactors_lcmUpto](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant8e752ba4c46b43880478c7101e27994b901394ec80f35b0c450328ae6c3e2d5e.lean/declarations/primefactors-lcmupto--b9448ca57eca67e231980e99.md) | 92 | `result-track:b9448ca57eca67e231980e9973ade56e0425ef421a75c936e695677f1de93c42` |
| 21 | `theorem` | [primorial_dvd_lcmUpto](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant8e752ba4c46b43880478c7101e27994b901394ec80f35b0c450328ae6c3e2d5e.lean/declarations/primorial-dvd-lcmupto--69c727d3a619b8bad41396df.md) | 105 | `result-track:69c727d3a619b8bad41396df4001afffe27fec0b43d3117c912b50fb76e9bbb8` |
| 22 | `theorem` | [lcmUpto_eq_prod](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant8e752ba4c46b43880478c7101e27994b901394ec80f35b0c450328ae6c3e2d5e.lean/declarations/lcmupto-eq-prod--249d329e08ea18800925cb2d.md) | 110 | `result-track:249d329e08ea18800925cb2d79876e43c878981322534fe28ceaf7e0ad060c36` |
| 23 | `theorem` | [lcmUpto_eq_prod_pow_log](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant8e752ba4c46b43880478c7101e27994b901394ec80f35b0c450328ae6c3e2d5e.lean/declarations/lcmupto-eq-prod-pow-log--981f6c4c44f2fb6063d28363.md) | 122 | `result-track:981f6c4c44f2fb6063d283638a3bc7116fb41b45440e08802c850540b885b3b4` |
| 24 | `theorem` | [lcmUpto_eq_prod_pow_floor](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant8e752ba4c46b43880478c7101e27994b901394ec80f35b0c450328ae6c3e2d5e.lean/declarations/lcmupto-eq-prod-pow-floor--e4dc6154503b2340cce2480f.md) | 127 | `result-track:e4dc6154503b2340cce2480f44a76fef93ac6bf113235e1abd9423bff5a47f1c` |
| 25 | `theorem` | [psi_eq_sum_mul_log_prime](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant8e752ba4c46b43880478c7101e27994b901394ec80f35b0c450328ae6c3e2d5e.lean/declarations/psi-eq-sum-mul-log-prime--bfcc87bfce52781283f81654.md) | 131 | `result-track:bfcc87bfce52781283f81654fec026b227154b81a3301fef54ca67f02330c36f` |
| 26 | `theorem` | [psi_le_primeCounting_mul_log](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant8e752ba4c46b43880478c7101e27994b901394ec80f35b0c450328ae6c3e2d5e.lean/declarations/psi-le-primecounting-mul-log--785523cc23be364282ef7c0a.md) | 170 | `result-track:785523cc23be364282ef7c0a13c83ab1c4869ff11ad4bbd890bbf3184ddf4b71` |
| 27 | `theorem` | [psi_le_primeCounting_mul_log'](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant8e752ba4c46b43880478c7101e27994b901394ec80f35b0c450328ae6c3e2d5e.lean/declarations/psi-le-primecounting-mul-log--33cc5cec6f7924264d80f4f0.md) | 182 | `result-track:33cc5cec6f7924264d80f4f0339d698dc35de83bdac9c49a66acc4d69d18a437` |
| 28 | `theorem` | [psi_eq_log_lcmUpto](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant8e752ba4c46b43880478c7101e27994b901394ec80f35b0c450328ae6c3e2d5e.lean/declarations/psi-eq-log-lcmupto--3d27be0d82e3f44bd0fce7e3.md) | 191 | `result-track:3d27be0d82e3f44bd0fce7e36bd44761e500c40b7ded0739fa5a624e5dd69909` |
| 29 | `theorem` | [choose_dvd_lcmUpto](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant8e752ba4c46b43880478c7101e27994b901394ec80f35b0c450328ae6c3e2d5e.lean/declarations/choose-dvd-lcmupto--6a2241fb40b14a4d91e85a74.md) | 197 | `result-track:6a2241fb40b14a4d91e85a74d957a9b462d6d9cb0444cbe8c6990db0cf6eb3db` |
| 30 | `theorem` | [two_pow_le_mul_lcmUpto](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant8e752ba4c46b43880478c7101e27994b901394ec80f35b0c450328ae6c3e2d5e.lean/declarations/two-pow-le-mul-lcmupto--0aa49fa0fc20b05583058b54.md) | 203 | `result-track:0aa49fa0fc20b05583058b542782dfb019697129c1408f55f89b6805b9fbb014` |
| 31 | `theorem` | [psi_ge](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant8e752ba4c46b43880478c7101e27994b901394ec80f35b0c450328ae6c3e2d5e.lean/declarations/psi-ge--f9ce9c57e48f35994ee53600.md) | 212 | `result-track:f9ce9c57e48f35994ee5360067c568960487e23757215657c3a9216fdb713d3c` |
| 32 | `theorem` | [psi_ge'](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant8e752ba4c46b43880478c7101e27994b901394ec80f35b0c450328ae6c3e2d5e.lean/declarations/psi-ge--b4cb02866484dd31a57807a3.md) | 219 | `result-track:b4cb02866484dd31a57807a31b77e9de209dcaed77cc5343e1e3e42a4b12dcfe` |
| 33 | `theorem` | [primeCounting_ge](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant8e752ba4c46b43880478c7101e27994b901394ec80f35b0c450328ae6c3e2d5e.lean/declarations/primecounting-ge--aed614cf9906feb7d991ae7d.md) | 226 | `result-track:aed614cf9906feb7d991ae7d26aeb7b2e8618f43c3b4667807499f80a3dc7d5e` |
| 34 | `theorem` | [primeCounting_ge'](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant8e752ba4c46b43880478c7101e27994b901394ec80f35b0c450328ae6c3e2d5e.lean/declarations/primecounting-ge--00b3f04d6f94a6531e6f6734.md) | 232 | `result-track:00b3f04d6f94a6531e6f67343fea7608507736ac1f020608eb55a47cd7f5ad31` |
| 35 | `theorem` | [theta_zero](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant8e752ba4c46b43880478c7101e27994b901394ec80f35b0c450328ae6c3e2d5e.lean/declarations/theta-zero--f0cc0303711da6ba3a938808.md) | 238 | `result-track:f0cc0303711da6ba3a938808918ab56c240e9eb85e0fb8ab8f5f19dbcbc6c5d8` |
| 36 | `theorem` | [theta_one](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant8e752ba4c46b43880478c7101e27994b901394ec80f35b0c450328ae6c3e2d5e.lean/declarations/theta-one--838084714e0f6914339df810.md) | 241 | `result-track:838084714e0f6914339df8108fd0077f83653470f217ab299b06e21cba76f929` |
| 37 | `theorem` | [psi_sub_theta_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant8e752ba4c46b43880478c7101e27994b901394ec80f35b0c450328ae6c3e2d5e.lean/declarations/psi-sub-theta-le--5454c251d80ead28e8328799.md) | 243 | `result-track:5454c251d80ead28e832879955db4749197e82fd88c9211d4499f57b8309b498` |
| 38 | `theorem` | [theta_ge](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant8e752ba4c46b43880478c7101e27994b901394ec80f35b0c450328ae6c3e2d5e.lean/declarations/theta-ge--1f74fc4303b1c51fa81f0f7d.md) | 248 | `result-track:1f74fc4303b1c51fa81f0f7d5d37f1547863f5b585792018d89df38cfc6c35db` |
| 39 | `theorem` | [theta_ge'](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant8e752ba4c46b43880478c7101e27994b901394ec80f35b0c450328ae6c3e2d5e.lean/declarations/theta-ge--5920043b90199d5e3d06da31.md) | 253 | `result-track:5920043b90199d5e3d06da312eeccc875368548b92804adfd45291a55c4fef44` |
| 40 | `theorem` | [theta_eq_sum_log](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant8e752ba4c46b43880478c7101e27994b901394ec80f35b0c450328ae6c3e2d5e.lean/declarations/theta-eq-sum-log--8e07598e3abb0d84c37f76e2.md) | 257 | `result-track:8e07598e3abb0d84c37f76e22d2a811c29b62b317f0aeaa54f011d75ca66cd02` |
| 41 | `theorem` | [theta_le_primeCounting_mul_log](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant8e752ba4c46b43880478c7101e27994b901394ec80f35b0c450328ae6c3e2d5e.lean/declarations/theta-le-primecounting-mul-log--5f94eddb0fbeffd3feb67b69.md) | 260 | `result-track:5f94eddb0fbeffd3feb67b69699f7ba9f0bfa72792065aa372ebf46da612a037` |
| 42 | `theorem` | [theta_le_primeCounting_mul_log'](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant8e752ba4c46b43880478c7101e27994b901394ec80f35b0c450328ae6c3e2d5e.lean/declarations/theta-le-primecounting-mul-log--56f0dc8acc39407b5a6ee51a.md) | 263 | `result-track:56f0dc8acc39407b5a6ee51ad6925bf3c429f53108876216a22c1cd5a3650f0b` |
| 43 | `theorem` | [pi_mul_log_sqrt_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant8e752ba4c46b43880478c7101e27994b901394ec80f35b0c450328ae6c3e2d5e.lean/declarations/pi-mul-log-sqrt-le--2da2ed77e264bca16d49f67a.md) | 266 | `result-track:2da2ed77e264bca16d49f67a154b84f86f914784356ce516f63e5dfcb71206f5` |
| 44 | `theorem` | [pi_le_log4_mul_div](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant8e752ba4c46b43880478c7101e27994b901394ec80f35b0c450328ae6c3e2d5e.lean/declarations/pi-le-log4-mul-div--fb9179995ac439da6c4fae60.md) | 296 | `result-track:fb9179995ac439da6c4fae60330b55be66e526fd7e9718bb9a3844d2ba2e5fa3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
