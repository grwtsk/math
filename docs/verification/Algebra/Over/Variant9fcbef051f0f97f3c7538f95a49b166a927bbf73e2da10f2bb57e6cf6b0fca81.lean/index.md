# Verification target: GRWTSK.Algebra.Over.Variant9fcbef051f0f97f3c7538f95a49b166a927bbf73e2da10f2bb57e6cf6b0fca81

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9eff4df97936422d010f723bf024f2a045de6dfc",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Over/Variant9fcbef051f0f97f3c7538f95a49b166a927bbf73e2da10f2bb57e6cf6b0fca81.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Over/Variant9fcbef051f0f97f3c7538f95a49b166a927bbf73e2da10f2bb57e6cf6b0fca81.lean/index.md) · [Full source](../../../../mathematics/Algebra/Over/Variant9fcbef051f0f97f3c7538f95a49b166a927bbf73e2da10f2bb57e6cf6b0fca81.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9eff4df97936422d010f723bf024f2a045de6dfc`.

Source path: `GRWTSK/Algebra/Over/Variant9fcbef051f0f97f3c7538f95a49b166a927bbf73e2da10f2bb57e6cf6b0fca81.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Over/Variant9fcbef051f0f97f3c7538f95a49b166a927bbf73e2da10f2bb57e6cf6b0fca81.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Algebraic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.AtPrime` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Integral` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coeff_zero_mem_comap_of_root_mem_of_eval_mem](../../../../mathematics/Algebra/Over/Variant9fcbef051f0f97f3c7538f95a49b166a927bbf73e2da10f2bb57e6cf6b0fca81.lean/declarations/coeff-zero-mem-comap-of-root-mem-of-eval-mem--7f0598587e1c8c9cd805c316.md) | 52 | `result-track:7f0598587e1c8c9cd805c316d8a5a58382d176ccc3717460b8517857fde45af5` |
| 2 | `theorem` | [coeff_zero_mem_comap_of_root_mem](../../../../mathematics/Algebra/Over/Variant9fcbef051f0f97f3c7538f95a49b166a927bbf73e2da10f2bb57e6cf6b0fca81.lean/declarations/coeff-zero-mem-comap-of-root-mem--475befbc7166e1fae37ec981.md) | 59 | `result-track:475befbc7166e1fae37ec98169220598efeeb641258a7caea92b76f1b8986bf4` |
| 3 | `theorem` | [exists_coeff_ne_zero_mem_comap_of_non_zero_divisor_root_mem](../../../../mathematics/Algebra/Over/Variant9fcbef051f0f97f3c7538f95a49b166a927bbf73e2da10f2bb57e6cf6b0fca81.lean/declarations/exists-coeff-ne-zero-mem-comap-of-non-zero-divisor-root-mem--6752b9563565bc6769840850.md) | 64 | `result-track:6752b9563565bc67698408509aa279b7b4fa01b4eaa3203fa67db2be2cb30c0c` |
| 4 | `theorem` | [injective_quotient_le_comap_map](../../../../mathematics/Algebra/Over/Variant9fcbef051f0f97f3c7538f95a49b166a927bbf73e2da10f2bb57e6cf6b0fca81.lean/declarations/injective-quotient-le-comap-map--73ccfcc6619aedc29c9f5da4.md) | 85 | `result-track:73ccfcc6619aedc29c9f5da4d77ec7dea35f40aa5b19aba00a281163f61806ba` |
| 5 | `theorem` | [quotient_mk_maps_eq](../../../../mathematics/Algebra/Over/Variant9fcbef051f0f97f3c7538f95a49b166a927bbf73e2da10f2bb57e6cf6b0fca81.lean/declarations/quotient-mk-maps-eq--095150f0158f853bf48e7a61.md) | 109 | `result-track:095150f0158f853bf48e7a61f284bf4e9bf26d964fc0471755fdcc8cb780f059` |
| 6 | `theorem` | [exists_nonzero_mem_of_ne_bot](../../../../mathematics/Algebra/Over/Variant9fcbef051f0f97f3c7538f95a49b166a927bbf73e2da10f2bb57e6cf6b0fca81.lean/declarations/exists-nonzero-mem-of-ne-bot--7b7c629012873f36da3573fc.md) | 124 | `result-track:7b7c629012873f36da3573fca85e76f33c07aa65a22bf3cc8680fd9956f45eb7` |
| 7 | `theorem` | [comap_eq_of_scalar_tower_quotient](../../../../mathematics/Algebra/Over/Variant9fcbef051f0f97f3c7538f95a49b166a927bbf73e2da10f2bb57e6cf6b0fca81.lean/declarations/comap-eq-of-scalar-tower-quotient--80cb4e0bd8df40dbdce969eb.md) | 147 | `result-track:80cb4e0bd8df40dbdce969eb2f36e62a2524ef62dbd97b15103dde13f3e588fa` |
| 8 | `def` | [Quotient.algebraQuotientOfLeComap](../../../../mathematics/Algebra/Over/Variant9fcbef051f0f97f3c7538f95a49b166a927bbf73e2da10f2bb57e6cf6b0fca81.lean/declarations/quotient-algebraquotientoflecomap--4ac0a5f6699d0ad7ac084806.md) | 161 | `declaration-track:4ac0a5f6699d0ad7ac084806e4d7065046876e0cc19442d92dd79136adc22ee0` |
| 9 | `instance` | [Quotient.algebraQuotientMapQuotient](../../../../mathematics/Algebra/Over/Variant9fcbef051f0f97f3c7538f95a49b166a927bbf73e2da10f2bb57e6cf6b0fca81.lean/declarations/quotient-algebraquotientmapquotient--db2cfc79b6f0e1044b4b2078.md) | 166 | `declaration-track:db2cfc79b6f0e1044b4b2078d9917d2b4483729e50f1234e5c6150b80ecf99bf` |
| 10 | `theorem` | [Quotient.algebraMap_quotient_map_quotient](../../../../mathematics/Algebra/Over/Variant9fcbef051f0f97f3c7538f95a49b166a927bbf73e2da10f2bb57e6cf6b0fca81.lean/declarations/quotient-algebramap-quotient-map-quotient--622d409156f535fe4a503bb5.md) | 171 | `result-track:622d409156f535fe4a503bb575f88fa86d02e3a906d8298fe808b604bc6a4452` |
| 11 | `theorem` | [Quotient.mk_smul_mk_quotient_map_quotient](../../../../mathematics/Algebra/Over/Variant9fcbef051f0f97f3c7538f95a49b166a927bbf73e2da10f2bb57e6cf6b0fca81.lean/declarations/quotient-mk-smul-mk-quotient-map-quotient--f4552c16bedfb6332a3dc258.md) | 178 | `result-track:f4552c16bedfb6332a3dc258d10433e9fecf31ab202d6e2f961e4345981bec25` |
| 12 | `instance` | [Quotient.tower_quotient_map_quotient](../../../../mathematics/Algebra/Over/Variant9fcbef051f0f97f3c7538f95a49b166a927bbf73e2da10f2bb57e6cf6b0fca81.lean/declarations/quotient-tower-quotient-map-quotient--d4efb29bf703fadbcdae2915.md) | 183 | `declaration-track:d4efb29bf703fadbcdae29150d1d25ab0691917ab46afe7e1c0674ad3a6d862f` |
| 13 | `instance` | [QuotientMapQuotient.isNoetherian](../../../../mathematics/Algebra/Over/Variant9fcbef051f0f97f3c7538f95a49b166a927bbf73e2da10f2bb57e6cf6b0fca81.lean/declarations/quotientmapquotient-isnoetherian--33f96330e53128a36ff1a660.md) | 190 | `declaration-track:33f96330e53128a36ff1a660a88878c1080a7a350c9cbd9dc90a4a2dea2dd6af` |
| 14 | `theorem` | [exists_coeff_ne_zero_mem_comap_of_root_mem](../../../../mathematics/Algebra/Over/Variant9fcbef051f0f97f3c7538f95a49b166a927bbf73e2da10f2bb57e6cf6b0fca81.lean/declarations/exists-coeff-ne-zero-mem-comap-of-root-mem--f61ed5c5f353f7212e3da1d7.md) | 203 | `result-track:f61ed5c5f353f7212e3da1d7e2c9919f8906a42f813dfb2a1aa6656a7b62472c` |
| 15 | `theorem` | [exists_coeff_mem_comap_sdiff_comap_of_root_mem_sdiff](../../../../mathematics/Algebra/Over/Variant9fcbef051f0f97f3c7538f95a49b166a927bbf73e2da10f2bb57e6cf6b0fca81.lean/declarations/exists-coeff-mem-comap-sdiff-comap-of-root-mem-sdiff--c9f25678997260b3926f91b0.md) | 210 | `result-track:c9f25678997260b3926f91b061f0bc8124d2250a3fc6b30e4ecbaeb680d7b23e` |
| 16 | `theorem` | [comap_lt_comap_of_root_mem_sdiff](../../../../mathematics/Algebra/Over/Variant9fcbef051f0f97f3c7538f95a49b166a927bbf73e2da10f2bb57e6cf6b0fca81.lean/declarations/comap-lt-comap-of-root-mem-sdiff--fe1ab2fb728290606240335b.md) | 232 | `result-track:fe1ab2fb728290606240335b37e75088ed3f3187481291707d75026459c75f15` |
| 17 | `theorem` | [mem_of_one_mem](../../../../mathematics/Algebra/Over/Variant9fcbef051f0f97f3c7538f95a49b166a927bbf73e2da10f2bb57e6cf6b0fca81.lean/declarations/mem-of-one-mem--5456a1e36ec89d88544a14e6.md) | 239 | `result-track:5456a1e36ec89d88544a14e68bf0c455eb7240836e7f6848b8cbe183287c1dfc` |
| 18 | `theorem` | [comap_lt_comap_of_integral_mem_sdiff](../../../../mathematics/Algebra/Over/Variant9fcbef051f0f97f3c7538f95a49b166a927bbf73e2da10f2bb57e6cf6b0fca81.lean/declarations/comap-lt-comap-of-integral-mem-sdiff--480001a494d353b28fd5843f.md) | 243 | `result-track:480001a494d353b28fd5843f2c5b8dc0c52b12103966bc4581be70185bb24513` |
| 19 | `theorem` | [comap_ne_bot_of_root_mem](../../../../mathematics/Algebra/Over/Variant9fcbef051f0f97f3c7538f95a49b166a927bbf73e2da10f2bb57e6cf6b0fca81.lean/declarations/comap-ne-bot-of-root-mem--96d9fba25bd2bea386da4672.md) | 257 | `result-track:96d9fba25bd2bea386da46722ead0e20f5b981732a805564603628445d27ee4d` |
| 20 | `theorem` | [isMaximal_of_isIntegral_of_isMaximal_comap](../../../../mathematics/Algebra/Over/Variant9fcbef051f0f97f3c7538f95a49b166a927bbf73e2da10f2bb57e6cf6b0fca81.lean/declarations/ismaximal-of-isintegral-of-ismaximal-comap--1ca0a89f32f4c92da6cc7811.md) | 263 | `result-track:1ca0a89f32f4c92da6cc7811df7d531e5f2f6a54dce4adb057f79650de953370` |
| 21 | `theorem` | [isMaximal_of_isIntegral_of_isMaximal_comap'](../../../../mathematics/Algebra/Over/Variant9fcbef051f0f97f3c7538f95a49b166a927bbf73e2da10f2bb57e6cf6b0fca81.lean/declarations/ismaximal-of-isintegral-of-ismaximal-comap--3a02aa1961e36b7c0371532a.md) | 271 | `result-track:3a02aa1961e36b7c0371532a9a7e2771a9eaaf42ef3d6ca625bfa7e64df91a73` |
| 22 | `theorem` | [comap_ne_bot_of_algebraic_mem](../../../../mathematics/Algebra/Over/Variant9fcbef051f0f97f3c7538f95a49b166a927bbf73e2da10f2bb57e6cf6b0fca81.lean/declarations/comap-ne-bot-of-algebraic-mem--d3adffe27e08ec5dd96211eb.md) | 278 | `result-track:d3adffe27e08ec5dd96211eb597608f569464b47d00ac17256c7845612da870f` |
| 23 | `theorem` | [comap_ne_bot_of_integral_mem](../../../../mathematics/Algebra/Over/Variant9fcbef051f0f97f3c7538f95a49b166a927bbf73e2da10f2bb57e6cf6b0fca81.lean/declarations/comap-ne-bot-of-integral-mem--2f158ca4a4d27026a5d47ce8.md) | 284 | `result-track:2f158ca4a4d27026a5d47ce8d68e8b0f11b4d7711e59bd315329ec19a5af372e` |
| 24 | `theorem` | [eq_bot_of_comap_eq_bot](../../../../mathematics/Algebra/Over/Variant9fcbef051f0f97f3c7538f95a49b166a927bbf73e2da10f2bb57e6cf6b0fca81.lean/declarations/eq-bot-of-comap-eq-bot--5ee5a6d6cd969fd420bb939e.md) | 289 | `result-track:5ee5a6d6cd969fd420bb939e0c4d6e7965c379b9e9342bdbb351c60d562e06d7` |
| 25 | `theorem` | [isMaximal_comap_of_isIntegral_of_isMaximal](../../../../mathematics/Algebra/Over/Variant9fcbef051f0f97f3c7538f95a49b166a927bbf73e2da10f2bb57e6cf6b0fca81.lean/declarations/ismaximal-comap-of-isintegral-of-ismaximal--f2e94e2322071b9abb83908f.md) | 297 | `result-track:f2e94e2322071b9abb83908f635a07bcfbd78300a361292848261f03f58c0698` |
| 26 | `theorem` | [isMaximal_comap_of_isIntegral_of_isMaximal'](../../../../mathematics/Algebra/Over/Variant9fcbef051f0f97f3c7538f95a49b166a927bbf73e2da10f2bb57e6cf6b0fca81.lean/declarations/ismaximal-comap-of-isintegral-of-ismaximal--bfa1b276de51fa37d11a0a1e.md) | 306 | `result-track:bfa1b276de51fa37d11a0a1e70968e316a565da6fec7d78f08c878072fda0cd2` |
| 27 | `theorem` | [IsIntegralClosure.comap_lt_comap](../../../../mathematics/Algebra/Over/Variant9fcbef051f0f97f3c7538f95a49b166a927bbf73e2da10f2bb57e6cf6b0fca81.lean/declarations/isintegralclosure-comap-lt-comap--187fe5fee818dcdb507d80b5.md) | 317 | `result-track:187fe5fee818dcdb507d80b5e0ef1adcc8911633b8a2582b537e5edc8372efaf` |
| 28 | `theorem` | [IsIntegralClosure.isMaximal_of_isMaximal_comap](../../../../mathematics/Algebra/Over/Variant9fcbef051f0f97f3c7538f95a49b166a927bbf73e2da10f2bb57e6cf6b0fca81.lean/declarations/isintegralclosure-ismaximal-of-ismaximal-comap--76810d662db7184fde77577a.md) | 323 | `result-track:76810d662db7184fde77577ac502c8a9e8f7072293c1691ce87ba153b19fd7f6` |
| 29 | `theorem` | [IsIntegralClosure.comap_ne_bot](../../../../mathematics/Algebra/Over/Variant9fcbef051f0f97f3c7538f95a49b166a927bbf73e2da10f2bb57e6cf6b0fca81.lean/declarations/isintegralclosure-comap-ne-bot--c976b89cbb5e3613fb78b33c.md) | 330 | `result-track:c976b89cbb5e3613fb78b33cf0b80d17e1b11e22b97d4a772174e72646234af8` |
| 30 | `theorem` | [IsIntegralClosure.eq_bot_of_comap_eq_bot](../../../../mathematics/Algebra/Over/Variant9fcbef051f0f97f3c7538f95a49b166a927bbf73e2da10f2bb57e6cf6b0fca81.lean/declarations/isintegralclosure-eq-bot-of-comap-eq-bot--6b02a299c2ca3bada6dda361.md) | 336 | `result-track:6b02a299c2ca3bada6dda36107490d475105f3b9cb806db979be9ff33d7cfbf8` |
| 31 | `theorem` | [IntegralClosure.comap_lt_comap](../../../../mathematics/Algebra/Over/Variant9fcbef051f0f97f3c7538f95a49b166a927bbf73e2da10f2bb57e6cf6b0fca81.lean/declarations/integralclosure-comap-lt-comap--2cb599a8471c619fc0a9108e.md) | 344 | `result-track:2cb599a8471c619fc0a9108e5c3ceff54874d88d3da065a71f92dc5ff242c256` |
| 32 | `theorem` | [IntegralClosure.isMaximal_of_isMaximal_comap](../../../../mathematics/Algebra/Over/Variant9fcbef051f0f97f3c7538f95a49b166a927bbf73e2da10f2bb57e6cf6b0fca81.lean/declarations/integralclosure-ismaximal-of-ismaximal-comap--6ac127b129c278293a543757.md) | 350 | `result-track:6ac127b129c278293a54375740014cf4ec998ef5c8426465aa043d398b6a3c49` |
| 33 | `theorem` | [IntegralClosure.comap_ne_bot](../../../../mathematics/Algebra/Over/Variant9fcbef051f0f97f3c7538f95a49b166a927bbf73e2da10f2bb57e6cf6b0fca81.lean/declarations/integralclosure-comap-ne-bot--f8fd68f930dc99492f7f3c47.md) | 359 | `result-track:f8fd68f930dc99492f7f3c4797be39cccff17975c3093679aed55aa0d64446ed` |
| 34 | `theorem` | [IntegralClosure.eq_bot_of_comap_eq_bot](../../../../mathematics/Algebra/Over/Variant9fcbef051f0f97f3c7538f95a49b166a927bbf73e2da10f2bb57e6cf6b0fca81.lean/declarations/integralclosure-eq-bot-of-comap-eq-bot--651839ac1e1a26d2731a3cc6.md) | 364 | `result-track:651839ac1e1a26d2731a3cc6ab9c46d4893ef912a9c3fee8939202a1e94b1e47` |
| 35 | `theorem` | [exists_ideal_over_prime_of_isIntegral'](../../../../mathematics/Algebra/Over/Variant9fcbef051f0f97f3c7538f95a49b166a927bbf73e2da10f2bb57e6cf6b0fca81.lean/declarations/exists-ideal-over-prime-of-isintegral--0aa047256d623431d54fc9f0.md) | 371 | `result-track:0aa047256d623431d54fc9f0e3c7712eefc706fec254932edbbf4969e5271548` |
| 36 | `theorem` | [exists_ideal_over_prime_of_isIntegral](../../../../mathematics/Algebra/Over/Variant9fcbef051f0f97f3c7538f95a49b166a927bbf73e2da10f2bb57e6cf6b0fca81.lean/declarations/exists-ideal-over-prime-of-isintegral--5d34a4a4279ea54c2ffa2d41.md) | 399 | `result-track:5d34a4a4279ea54c2ffa2d4198a70d864471755334e8e92ae065fb50dff550f8` |
| 37 | `theorem` | [exists_ideal_over_maximal_of_isIntegral](../../../../mathematics/Algebra/Over/Variant9fcbef051f0f97f3c7538f95a49b166a927bbf73e2da10f2bb57e6cf6b0fca81.lean/declarations/exists-ideal-over-maximal-of-isintegral--e531597aa1688526f6c4c7b3.md) | 421 | `result-track:e531597aa1688526f6c4c7b30ba02a17b16d534249dfa20248672ef9d67dd06b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
