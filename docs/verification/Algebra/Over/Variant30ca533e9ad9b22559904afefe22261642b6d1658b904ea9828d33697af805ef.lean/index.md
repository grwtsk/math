# Verification target: GRWTSK.Algebra.Over.Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a48eb66e5f6b6ee26a6428452e16cac8c64fcbaa",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean/index.md) · [Full source](../../../../mathematics/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a48eb66e5f6b6ee26a6428452e16cac8c64fcbaa`.

Source path: `GRWTSK/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Tower` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.Actions` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Pointwise` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Operations` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [comap_eq_of_scalar_tower_quotient](../../../../mathematics/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean/declarations/comap-eq-of-scalar-tower-quotient--3510e2d9f3a7801ef2ab8252.md) | 56 | `result-track:3510e2d9f3a7801ef2ab8252e232cb81d5ad10f7cda73be5ba2edec7d733cfd6` |
| 2 | `instance` | [Quotient.algebraQuotientMapQuotient](../../../../mathematics/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean/declarations/quotient-algebraquotientmapquotient--8be2c6070212647e37ad8879.md) | 71 | `declaration-track:8be2c6070212647e37ad887955c2753cf6a98f9c81c080bffdc7d1e6bf810fa0` |
| 3 | `theorem` | [Quotient.algebraMap_quotient_map_quotient](../../../../mathematics/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean/declarations/quotient-algebramap-quotient-map-quotient--90adfecca8778630bd352908.md) | 75 | `result-track:90adfecca8778630bd3529085dae859f2f2379538b02b5e68444644a2fe000a7` |
| 4 | `theorem` | [Quotient.mk_smul_mk_quotient_map_quotient](../../../../mathematics/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean/declarations/quotient-mk-smul-mk-quotient-map-quotient--3af38730b076c6ce0aab577f.md) | 82 | `result-track:3af38730b076c6ce0aab577fa5f47fd38c6bc42bc4f98922e84e313fa9987fa6` |
| 5 | `instance` | [Quotient.tower_quotient_map_quotient](../../../../mathematics/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean/declarations/quotient-tower-quotient-map-quotient--2509cf77360f35de7245cfb8.md) | 87 | `declaration-track:2509cf77360f35de7245cfb8b9b4101287c65a8cf1e266faae902d5c27a3a9da` |
| 6 | `abbrev` | [under](../../../../mathematics/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean/declarations/under--90b539a12f3218367b75b57d.md) | 103 | `declaration-track:90b539a12f3218367b75b57d7d8847da495e86a3ad6a965135acad8f56cba23d` |
| 7 | `theorem` | [under_def](../../../../mathematics/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean/declarations/under-def--1fe5b00059a0b8eb4c8a5d24.md) | 105 | `result-track:1fe5b00059a0b8eb4c8a5d24a260376ed515641862383e7c39d40d9d4afe7ba0` |
| 8 | `instance` | [IsPrime.under](../../../../mathematics/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean/declarations/isprime-under--530071e1af6995626cacd02d.md) | 107 | `declaration-track:530071e1af6995626cacd02d64861d2192a771f280080a1ca099ff54fb11fbcf` |
| 9 | `lemma` | [under_smul](../../../../mathematics/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean/declarations/under-smul--bc2ea107d68eb419d8218af9.md) | 111 | `result-track:bc2ea107d68eb419d8218af9b63a79b9b59d84aaed7b039abfe6b96cf2fec276` |
| 10 | `theorem` | [under_top](../../../../mathematics/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean/declarations/under-top--7f2540dc841dd03199945017.md) | 117 | `result-track:7f2540dc841dd031999450176eb8a4d258a8923ebd36896cabfecbabcaa924fe` |
| 11 | `class` | [LiesOver](../../../../mathematics/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean/declarations/liesover--6e048b052ce7ff8d329de5f0.md) | 122 | `declaration-track:6e048b052ce7ff8d329de5f03b09662700be1e010a33f8c329e426ecb3c973dc` |
| 12 | `instance` | [over_under](../../../../mathematics/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean/declarations/over-under--84cb39361c83e2f9822eb3b7.md) | 125 | `declaration-track:84cb39361c83e2f9822eb3b716f2412ce3a7054fb3a64614424715bb94f5156f` |
| 13 | `theorem` | [over_def](../../../../mathematics/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean/declarations/over-def--2a0a01e4b0723ddabe106a89.md) | 127 | `result-track:2a0a01e4b0723ddabe106a89cc724a3ecf5f9348f4e35a343987ceeced03b742` |
| 14 | `theorem` | [mem_of_liesOver](../../../../mathematics/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean/declarations/mem-of-liesover--d16f071863452280152b2410.md) | 129 | `result-track:d16f071863452280152b2410c7b7c3947ec260ea48e9817306c161b6e3bd33b6` |
| 15 | `instance` | [top_liesOver_top](../../../../mathematics/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean/declarations/top-liesover-top--766c0a704a3639305d528b3c.md) | 134 | `declaration-track:766c0a704a3639305d528b3c758dd7594d4357aadb5e1d06ded869d54650c06d` |
| 16 | `theorem` | [eq_top_iff_of_liesOver](../../../../mathematics/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean/declarations/eq-top-iff-of-liesover--56a909ccdb0c3e63fe013564.md) | 137 | `result-track:56a909ccdb0c3e63fe013564f7b36bd88f547983ce1845f00d24ce01619b1187` |
| 17 | `theorem` | [LiesOver.of_eq_comap](../../../../mathematics/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean/declarations/liesover-of-eq-comap--a9fea40c365f487173bf23ea.md) | 143 | `result-track:a9fea40c365f487173bf23ea81021ed16ed681743da1d2d5c5872a07ee0eb1e7` |
| 18 | `theorem` | [LiesOver.of_eq_map_equiv](../../../../mathematics/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean/declarations/liesover-of-eq-map-equiv--fe69ed4b1cff505420c745b9.md) | 150 | `result-track:fe69ed4b1cff505420c745b9e0ebf7d93f5c01eba4c8c886fdc4b2c0491ac395` |
| 19 | `instance` | [comap_liesOver](../../../../mathematics/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean/declarations/comap-liesover--81524cc3a03ccf7c5f04b882.md) | 157 | `declaration-track:81524cc3a03ccf7c5f04b882362174c9b439510b96ea2acd4eb34d56bcd63943` |
| 20 | `instance` | [map_equiv_liesOver](../../../../mathematics/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean/declarations/map-equiv-liesover--c46e8bc204d0c8e551dde3be.md) | 161 | `declaration-track:c46e8bc204d0c8e551dde3bea2e7a6baefb7e016b9b80b5d112a67d85c294b03` |
| 21 | `theorem` | [under_under](../../../../mathematics/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean/declarations/under-under--715b2ae810476c5bccfa81e1.md) | 174 | `result-track:715b2ae810476c5bccfa81e1e5d54298de67a4e04bba7008a33887205749b499` |
| 22 | `theorem` | [LiesOver.trans](../../../../mathematics/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean/declarations/liesover-trans--25eec39ce7838500ea1825fa.md) | 177 | `result-track:25eec39ce7838500ea1825fa28c82e6b1fdc205e4c4e01f096497b0d8275fa6a` |
| 23 | `theorem` | [LiesOver.tower_bot](../../../../mathematics/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean/declarations/liesover-tower-bot--ffa0ca03f9e80ea940c2abf9.md) | 180 | `result-track:ffa0ca03f9e80ea940c2abf90c4747d67858c3106af1d50663f704482b5d13af` |
| 24 | `instance` | [under_liesOver_of_liesOver](../../../../mathematics/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean/declarations/under-liesover-of-liesover--5fe49497fa9f83eb98e628f8.md) | 185 | `declaration-track:5fe49497fa9f83eb98e628f877705a1ae67a2f80c5c3d5b1f1df5a86ab155c61` |
| 25 | `theorem` | [under_bot](../../../../mathematics/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean/declarations/under-bot--9e3bc655a70fd91ab302cee2.md) | 196 | `result-track:9e3bc655a70fd91ab302cee20f787523cc5837447896fa04cc236221d0c10d88` |
| 26 | `instance` | [bot_liesOver_bot](../../../../mathematics/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean/declarations/bot-liesover-bot--ad44b555c60a6dd4a9585faf.md) | 199 | `declaration-track:ad44b555c60a6dd4a9585faf4447dc985bd8e8806331027dc9a9f4a39ced7547` |
| 27 | `theorem` | [ne_bot_of_liesOver_of_ne_bot](../../../../mathematics/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean/declarations/ne-bot-of-liesover-of-ne-bot--1415e22b384ec020f6cbda67.md) | 203 | `result-track:1415e22b384ec020f6cbda67623245d3651ccc02bf493298abb8f13e6bc08680` |
| 28 | `instance` | [algebraOfLiesOver](../../../../mathematics/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean/declarations/algebraofliesover--943b4bd694861d4d33b8f3cd.md) | 217 | `declaration-track:943b4bd694861d4d33b8f3cdec5f31a48f789e1e78d35ee52047031ab7399431` |
| 29 | `instance` | [isScalarTower_of_liesOver](../../../../mathematics/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean/declarations/isscalartower-of-liesover--7eeb9025e9dfe5b35528e3a1.md) | 220 | `declaration-track:7eeb9025e9dfe5b35528e3a1a6c3c1e8b6a913ff43e095135b1799feac33a88b` |
| 30 | `instance` | [instFaithfulSMul](../../../../mathematics/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean/declarations/instfaithfulsmul--b3f2a234e6382a1c8b22fc0a.md) | 224 | `declaration-track:b3f2a234e6382a1c8b22fc0a8d711722cb128ca718c63517ea10b3b2aeea713d` |
| 31 | `theorem` | [nontrivial_of_liesOver_of_ne_top](../../../../mathematics/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean/declarations/nontrivial-of-liesover-of-ne-top--25d77980f9eb055c94a01691.md) | 235 | `result-track:25d77980f9eb055c94a016910f780f4ece6f4191065b64fb2d77ccafb05ca1fd` |
| 32 | `theorem` | [nontrivial_of_liesOver_of_isPrime](../../../../mathematics/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean/declarations/nontrivial-of-liesover-of-isprime--bfac2ca50f517d45ed30510e.md) | 238 | `result-track:bfac2ca50f517d45ed30510e3e328f7d66ab67f1b21b751abebced91b3580d6c` |
| 33 | `def` | [algEquivOfEqMap](../../../../mathematics/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean/declarations/algequivofeqmap--61778f51fecc374b1a1a47a5.md) | 247 | `declaration-track:61778f51fecc374b1a1a47a5f67b8c3414469e7cd98bc25f7964f10027deadd2` |
| 34 | `theorem` | [algEquivOfEqMap_apply](../../../../mathematics/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean/declarations/algequivofeqmap-apply--64147b55ea0d17f83470eaaf.md) | 254 | `result-track:64147b55ea0d17f83470eaaf9ab33126446529bf903c5f223e7020c9dd6bccbe` |
| 35 | `def` | [algEquivOfEqComap](../../../../mathematics/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean/declarations/algequivofeqcomap--1518b7c5b991c0a7d6f6dcf2.md) | 259 | `declaration-track:1518b7c5b991c0a7d6f6dcf230811b958ff1764913e715e1948d230f647cc841` |
| 36 | `theorem` | [algEquivOfEqComap_apply](../../../../mathematics/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean/declarations/algequivofeqcomap-apply--6e9946c803a403bed0089ee0.md) | 263 | `result-track:6e9946c803a403bed0089ee0b34d3fce5edb9531be21b44a924b34e3ac8735f6` |
| 37 | `def` | [stabilizerHom](../../../../mathematics/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean/declarations/stabilizerhom--4848bfa40547fdd4f51b8763.md) | 269 | `declaration-track:4848bfa40547fdd4f51b87632336d154481f07f5e51c8def932e78a0366100be` |
| 38 | `theorem` | [stabilizerHom_apply](../../../../mathematics/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean/declarations/stabilizerhom-apply--8c808eb87ddda0eb9fc34f3c.md) | 278 | `result-track:8c808eb87ddda0eb9fc34f3ceb0b5a2dd93e093c91030632ca8f02094d254404` |
| 39 | `def` | [primesOver](../../../../mathematics/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean/declarations/primesover--9be61e4485115b758cbf1d9b.md) | 291 | `declaration-track:9be61e4485115b758cbf1d9b275d8b0aabd8b1281bae3e28cdd349d163191ecd` |
| 40 | `instance` | [primesOver.isPrime](../../../../mathematics/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean/declarations/primesover-isprime--71cc7928fb2fa4da1b609c39.md) | 296 | `declaration-track:71cc7928fb2fa4da1b609c39996c0eb301a1140ff5b5752a50f35934050ed89f` |
| 41 | `instance` | [primesOver.liesOver](../../../../mathematics/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean/declarations/primesover-liesover--4240825c10eea58ff87df5b9.md) | 299 | `declaration-track:4240825c10eea58ff87df5b9ec97bcb55cdfd86ea4232e64bb28a00c5b413e85` |
| 42 | `abbrev` | [primesOver.mk](../../../../mathematics/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean/declarations/primesover-mk--6c7ca15bcbe16b539b49506d.md) | 303 | `declaration-track:6c7ca15bcbe16b539b49506d8915e31b40429d471d31e7c5ac2c5957b2ef498c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
