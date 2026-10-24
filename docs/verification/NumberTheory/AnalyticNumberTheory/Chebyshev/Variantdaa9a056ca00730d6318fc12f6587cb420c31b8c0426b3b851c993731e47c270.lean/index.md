# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.Chebyshev.Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f527e07a44c44619e45eb142a7aa0d20a239b39",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f527e07a44c44619e45eb142a7aa0d20a239b39`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Chebyshev` — import line 31; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.AbelSummation` — import line 32; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 33; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 34; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 35; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ExponentialBounds` — import line 36; external provider; requires a separately pinned dependency.
- `Zeta23.FromPNTPlus.Mertens` — import line 37; external provider; requires a separately pinned dependency.
- `Zeta23.Hypotheses` — import line 38; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sum_vonMangoldt_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/declarations/sum-vonmangoldt-le--aea01405658bf6767b4d9445.md) | 50 | `result-track:aea01405658bf6767b4d9445fdacc8b2a478fe14b035a177aed1a3f57d6a520f` |
| 2 | `lemma` | [sum_Icc_eq_sum_Ioc](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/declarations/sum-icc-eq-sum-ioc--4f81ac6c92879bdd6bca867a.md) | 61 | `result-track:4f81ac6c92879bdd6bca867a0cdae81cf78371862897527bbb30e91ac5f8034d` |
| 3 | `lemma` | [psi_eq_sum_Icc'](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/declarations/psi-eq-sum-icc--2c40bec457630138a3ca7cca.md) | 65 | `result-track:2c40bec457630138a3ca7cca26c45407cb79bff1666520fb4684d0cfd04e9b88` |
| 4 | `lemma` | [abel_sqrt](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/declarations/abel-sqrt--f703c568c077b54c3f4191ac.md) | 70 | `result-track:f703c568c077b54c3f4191ac875734a00d285f5b389287340fa45385338433d0` |
| 5 | `lemma` | [integral_tail_bound](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/declarations/integral-tail-bound--4fd60725e3a11516cf077d23.md) | 107 | `result-track:4fd60725e3a11516cf077d2317aadc980641a7a81dbeabd5571411a73002c8a4` |
| 6 | `theorem` | [sum_vonMangoldt_div_sqrt_le_precise](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/declarations/sum-vonmangoldt-div-sqrt-le-precise--f2adc9b3da6922569c1ac853.md) | 232 | `result-track:f2adc9b3da6922569c1ac8539a13b2d103fc4c2b71b8962a74e9b4540ed0cd06` |
| 7 | `theorem` | [sum_vonMangoldt_div_sqrt_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/declarations/sum-vonmangoldt-div-sqrt-le--c87857ff0aba6542026b3200.md) | 256 | `result-track:c87857ff0aba6542026b32005132893d13f4f6370baab6d16a5e29f43ea01811` |
| 8 | `theorem` | [sum_vonMangoldt_div_sqrt_le_three_explicit](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/declarations/sum-vonmangoldt-div-sqrt-le-three-explicit--c26ca855edc618ff33e183de.md) | 277 | `result-track:c26ca855edc618ff33e183dedee2d8b706806aa22b99ecc770028ac456562920` |
| 9 | `theorem` | [sum_vonMangoldt_div_sqrt_le_three](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/declarations/sum-vonmangoldt-div-sqrt-le-three--6d141612256f1fd291b5a930.md) | 325 | `result-track:6d141612256f1fd291b5a93014ae143c31830d7080c5746919f49ec9296f6d82` |
| 10 | `theorem` | [sum_one_div_sqrt_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/declarations/sum-one-div-sqrt-le--ffdf3bf164cf2876a7ad5e62.md) | 332 | `result-track:ffdf3bf164cf2876a7ad5e62e1fcefb50fe0aa96a19b56c7e5d8692af9513226` |
| 11 | `theorem` | [sum_vonMangoldt_div_sqrt_mul_log_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/declarations/sum-vonmangoldt-div-sqrt-mul-log-le--e893db7e86ae074941aa33b2.md) | 353 | `result-track:e893db7e86ae074941aa33b27fb75aa0c9c272302369e887bb57c676c7d62eb2` |
| 12 | `theorem` | [sum_vonMangoldt_sq_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/declarations/sum-vonmangoldt-sq-le--9c2ce7bb4d2424e6acaaad3c.md) | 474 | `result-track:9c2ce7bb4d2424e6acaaad3cfe67dd17c130c81af57b015e25fde59a054fe049` |
| 13 | `theorem` | [mertensFirst](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/declarations/mertensfirst--cd47e46e5871ca0c74cebc74.md) | 509 | `result-track:cd47e46e5871ca0c74cebc746dcf3958ec6f4dd4c6be4db489b4cf90df3c7ec1` |
| 14 | `def` | [Msum](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/declarations/msum--ade7c0624820c64b8d37687e.md) | 514 | `declaration-track:ade7c0624820c64b8d37687e1b586355926814e8d28f4bea1dff1fb0f62cc0c2` |
| 15 | `def` | [M2sum](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/declarations/m2sum--5d6369248ae9c886bd6f5b31.md) | 517 | `declaration-track:5d6369248ae9c886bd6f5b3108eda8bc26a20eee7523f5b7cba0abf0e5e951e6` |
| 16 | `lemma` | [Msum_eq_Ioc](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/declarations/msum-eq-ioc--d61f5245b7d12a71c914828c.md) | 519 | `result-track:d61f5245b7d12a71c914828cfff9069b182a10596ddb5f2775962f9f08589f6d` |
| 17 | `lemma` | [M2sum_eq_Ioc](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/declarations/m2sum-eq-ioc--e74c33efa3948c4444345b59.md) | 522 | `result-track:e74c33efa3948c4444345b59f4598fdd14df30605212b76454c891a33f010cf9` |
| 18 | `lemma` | [Msum_mono](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/declarations/msum-mono--a58eb6f92c7846be3d682204.md) | 525 | `result-track:a58eb6f92c7846be3d682204ca017a114e76f48c1f5e912ab584ee8c318eb38b` |
| 19 | `lemma` | [M2sum_mono](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/declarations/m2sum-mono--51b2cbed55f509e3d011b714.md) | 530 | `result-track:51b2cbed55f509e3d011b7141d51594e6101ff67d51d0dda6859ae8fe912f899` |
| 20 | `lemma` | [Msum_nonneg](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/declarations/msum-nonneg--1f7954301f4c1e4202598c8c.md) | 535 | `result-track:1f7954301f4c1e4202598c8c4cb15f8e7d3641a1bc148b025d5858525a94b615` |
| 21 | `lemma` | [M2sum_nonneg](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/declarations/m2sum-nonneg--d0d735088a4a43b73d8a9846.md) | 538 | `result-track:d0d735088a4a43b73d8a9846731b9bd16a07fc8a0806dd7dfa7f3fe64f9cd08b` |
| 22 | `lemma` | [abel_log_Msum](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/declarations/abel-log-msum--afec9a078b71f4dcf55b5c5c.md) | 542 | `result-track:afec9a078b71f4dcf55b5c5ca7426a39d5ffb414137b19081e04caf06bd8f025` |
| 23 | `lemma` | [abel_log_M2sum](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/declarations/abel-log-m2sum--bc32f8a5ad3aee3f6582f0f4.md) | 569 | `result-track:bc32f8a5ad3aee3f6582f0f48d168712fba5b1ef1e4802e9652a3a81d1cf625e` |
| 24 | `lemma` | [integral_inv_Ioc](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/declarations/integral-inv-ioc--8f20d2e418ab0d63778b5698.md) | 595 | `result-track:8f20d2e418ab0d63778b56987ff4b92d2ac3d05de872cff098e0ed6ccf76ba2a` |
| 25 | `lemma` | [integral_inv_mul_log](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/declarations/integral-inv-mul-log--9c30047a4232d13ea61c4569.md) | 605 | `result-track:9c30047a4232d13ea61c4569b39054e3635276fd642416f3886d62f75f8b69c1` |
| 26 | `lemma` | [integral_inv_mul_log_sq](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/declarations/integral-inv-mul-log-sq--2f5d201dabc6274e325896a1.md) | 630 | `result-track:2f5d201dabc6274e325896a1a890d90e184a2c86f7222f60c1cb2184a086b961` |
| 27 | `lemma` | [integrableOn_inv_mul_mono](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/declarations/integrableon-inv-mul-mono--db390d5b32ba66f479c97b71.md) | 657 | `result-track:db390d5b32ba66f479c97b71a1623137a4a533302de016a0e822e3aba97caa4f` |
| 28 | `lemma` | [sum_log_mul_vonMangoldt_div_bound](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/declarations/sum-log-mul-vonmangoldt-div-bound--6cd1c5bfb9411850cf308f47.md) | 675 | `result-track:6cd1c5bfb9411850cf308f47b8930996fc8ad476befa72a3b04c4333d81103eb` |
| 29 | `lemma` | [sum_k_mul_half_pow_aux](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/declarations/sum-k-mul-half-pow-aux--647d5273a63ba23856885169.md) | 747 | `result-track:647d5273a63ba23856885169cf18410193b5c27ad8db36872d4a9d776a98a0a4` |
| 30 | `lemma` | [sum_k_mul_half_pow_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/declarations/sum-k-mul-half-pow-le--c437512b9f4447a9c5717bd9.md) | 757 | `result-track:c437512b9f4447a9c5717bd9ec4064bcbb13f9205ac10ae9a47006fa22986186` |
| 31 | `lemma` | [log_sq_div_sq_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/declarations/log-sq-div-sq-le--a1f9cdb1335b5438f4e06e3d.md) | 764 | `result-track:a1f9cdb1335b5438f4e06e3d071aefa40e6e3bbd7a4b204e61d57fff3aa3968e` |
| 32 | `lemma` | [defect_term_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/declarations/defect-term-le--eeb27ea1b10042728157a10f.md) | 786 | `result-track:eeb27ea1b10042728157a10f15811416479689583c2586c22abe083ae70fa43d` |
| 33 | `lemma` | [rpow_inv_le_telescope](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/declarations/rpow-inv-le-telescope--dc685e3ea7b16926f69e3153.md) | 837 | `result-track:dc685e3ea7b16926f69e31539b858b0c3b90e1136bce03cbfc7cb06f2e56681a` |
| 34 | `lemma` | [sum_range_rpow_inv_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/declarations/sum-range-rpow-inv-le--a37d33b3cb4008d087403c67.md) | 885 | `result-track:a37d33b3cb4008d087403c67c50477822003fa20e4ec2b13ec0d0c963c268e8f` |
| 35 | `lemma` | [tsum_rpow_neg_seven_quarters_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/declarations/tsum-rpow-neg-seven-quarters-le--52943b6ee0ebb143bfda46a8.md) | 915 | `result-track:52943b6ee0ebb143bfda46a89fa3e41a8c780e856ae623714d440de42036fd03` |
| 36 | `lemma` | [defect_bounded_explicit](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/declarations/defect-bounded-explicit--01beac62cfc7ac1ddc747427.md) | 932 | `result-track:01beac62cfc7ac1ddc747427bb1737687dfd1ef69f86dba33f98132ea56af1b9` |
| 37 | `lemma` | [defect_bounded](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/declarations/defect-bounded--de79bcc8f4746e3a8076f255.md) | 992 | `result-track:de79bcc8f4746e3a8076f255cd20174190a4c8e846c7d708d04a4e45b04dc6c6` |
| 38 | `theorem` | [sum_vonMangoldt_sq_div_eq_explicit](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/declarations/sum-vonmangoldt-sq-div-eq-explicit--478148ead61774618536d732.md) | 998 | `result-track:478148ead61774618536d73260d7e4922dc3d18c44d360f862191140fb609bcd` |
| 39 | `theorem` | [sum_vonMangoldt_sq_div_eq](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/declarations/sum-vonmangoldt-sq-div-eq--b989684d429a25b50d13a4f8.md) | 1039 | `result-track:b989684d429a25b50d13a4f826bb2246c3e6dbd83386a4f0f76e351b6f730044` |
| 40 | `theorem` | [sum_vonMangoldt_sq_div_mul_log_sub_eq_explicit](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/declarations/sum-vonmangoldt-sq-div-mul-log-sub-eq-explicit--4643f4fda44f700c0c1ddd8d.md) | 1047 | `result-track:4643f4fda44f700c0c1ddd8d990c5792743dd3782cc1b9cca8e9b945d9d55371` |
| 41 | `theorem` | [sum_vonMangoldt_sq_div_mul_log_sub_eq](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/declarations/sum-vonmangoldt-sq-div-mul-log-sub-eq--c73719ee7804e7902a75ceb6.md) | 1184 | `result-track:c73719ee7804e7902a75ceb654af3778e8822fa6977fa67e6bb792af87c3eedf` |
| 42 | `theorem` | [chebyshevMertens](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/declarations/chebyshevmertens--fd091d8843177144e45db2c8.md) | 1196 | `result-track:fd091d8843177144e45db2c8921ccba367757ecd3ae9a118ff9e1fe00992717a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
