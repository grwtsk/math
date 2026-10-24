# Verification target: GRWTSK.Algebra.GroupTheory.Lemmas.Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e76e5b8ad639472811bee0299f2ece967c6143bb",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e76e5b8ad639472811bee0299f2ece967c6143bb`.

Source path: `GRWTSK/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ofNatHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/ofnathom--e8c9f1b292d73749dd50721e.md) | 37 | `declaration-track:e8c9f1b292d73749dd50721e89e217268c445e93904bbc8967b1000e3c7b7ade` |
| 2 | `def` | [castAddHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/castaddhom--f7df803a2d24b9e900947473.md) | 43 | `declaration-track:f7df803a2d24b9e9009474733d016be5c218c6d13bfa362c7bb8b384574e2815` |
| 3 | `lemma` | [coe_castAddHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/coe-castaddhom--8474350393c6c87025e99bb5.md) | 51 | `result-track:8474350393c6c87025e99bb50b3d69ec16232d30f56f3f179692ee0efa6ead2e` |
| 4 | `lemma` | [_root_.Even.intCast](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/root-even-intcast--026168086a7e9b6e5fb85b73.md) | 53 | `result-track:026168086a7e9b6e5fb85b7395f623103c60b3e92c330a375494d0a4d3d30946` |
| 5 | `lemma` | [cast_eq_zero](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/cast-eq-zero--1e0f30ea0bd626be85ec837b.md) | 57 | `result-track:1e0f30ea0bd626be85ec837b82f01d9300286d2745024c33de93e3e4b2871b30` |
| 6 | `lemma` | [cast_inj](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/cast-inj--0ccffc26bff057abac054e79.md) | 67 | `result-track:0ccffc26bff057abac054e794fb2d360b11404138e2d1e5faebcca5d5761c3b6` |
| 7 | `lemma` | [cast_injective](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/cast-injective--84b666e61dc2534f39eaa365.md) | 69 | `result-track:84b666e61dc2534f39eaa365b9a00cfd8118d9380ede5bc65546bd1a36858cea` |
| 8 | `lemma` | [cast_ne_zero](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/cast-ne-zero--19a00a2d01283f4e1a0bcb35.md) | 71 | `result-track:19a00a2d01283f4e1a0bcb35deb0e315b1182c7b7ca33ba2e8606d6923b7089d` |
| 9 | `lemma` | [cast_eq_one](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/cast-eq-one--72fb95865d0a8b8d69947651.md) | 73 | `result-track:72fb95865d0a8b8d69947651a7ffc7f7b2f7a098e4bc6de93c9c6ae1f164f5eb` |
| 10 | `lemma` | [cast_ne_one](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/cast-ne-one--c0876815527e3ddcb87ea221.md) | 75 | `result-track:c0876815527e3ddcb87ea221843b70ed732c5ce37f25022ee384fd896034c208` |
| 11 | `def` | [castRingHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/castringhom--93e2e730bd3508746c5df276.md) | 85 | `declaration-track:93e2e730bd3508746c5df2761924b94590c3a9d7fee810b2698b0d7eb457628a` |
| 12 | `lemma` | [coe_castRingHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/coe-castringhom--ce3f296e078952b2425a5e35.md) | 92 | `result-track:ce3f296e078952b2425a5e359781bf64595f2fa1925c672a884c0c6124b9d656` |
| 13 | `lemma` | [cast_commute](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/cast-commute--57e7a5adae544ff6d683e40a.md) | 94 | `result-track:57e7a5adae544ff6d683e40ac1395abd39f12ca52a9058f394f6e9614209761f` |
| 14 | `lemma` | [cast_comm](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/cast-comm--5dc59348d3ff7cf9bab72155.md) | 100 | `result-track:5dc59348d3ff7cf9bab721553950228daa7f7a7de89f0667501c58dd4a93b274` |
| 15 | `lemma` | [commute_cast](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/commute-cast--531e13fb97a4eacc6337473c.md) | 102 | `result-track:531e13fb97a4eacc6337473cac1da71168034ed61978ea486c2e1f3560ed4bf4` |
| 16 | `lemma` | [_root_.zsmul_eq_mul](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/root-zsmul-eq-mul--a6022ffefa8b116550b2eb95.md) | 104 | `result-track:a6022ffefa8b116550b2eb95995f39f19bb93441970d2cc46257a3c6ade56b35` |
| 17 | `lemma` | [_root_.zsmul_eq_mul'](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/root-zsmul-eq-mul--9c5163ba78be933ef7a3dbde.md) | 108 | `result-track:9c5163ba78be933ef7a3dbded0497dbe34d4f66196b9e25a835318cfc2f6ede2` |
| 18 | `lemma` | [_root_.Odd.intCast](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/root-odd-intcast--c4451e4dfbdb7ab606ad5a90.md) | 116 | `result-track:c4451e4dfbdb7ab606ad5a900e2e64fd6f076541d217f893f92d681ea0898344` |
| 19 | `theorem` | [cast_dvd_cast](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/cast-dvd-cast--2de816dea1ca61ba15a3f29c.md) | 120 | `result-track:2de816dea1ca61ba15a3f29c963adc7ff2ac6d1dc41ae2525fd25f4af4452ad8` |
| 20 | `lemma` | [intCast_mul_right](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/intcast-mul-right--6ddded3f0ee3c7d3d8b4a01c.md) | 132 | `result-track:6ddded3f0ee3c7d3d8b4a01c720e0c648ae950718bf3cf8456b57c1767cf5566` |
| 21 | `lemma` | [intCast_mul_left](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/intcast-mul-left--38d1ff375167f907935eb134.md) | 135 | `result-track:38d1ff375167f907935eb134dd35a20abc5eb05d66888a9714bbf18d4344e434` |
| 22 | `lemma` | [intCast_mul_intCast_mul](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/intcast-mul-intcast-mul--4884811ca8ff52aa68d3e4de.md) | 138 | `result-track:4884811ca8ff52aa68d3e4debca77729cd5e5d691ff1b782ffb9c0cab84d4a40` |
| 23 | `lemma` | [intCast_left](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/intcast-left--13c7ad37ea9f7e5bcb534b85.md) | 147 | `result-track:13c7ad37ea9f7e5bcb534b85f2219a446956cac32a78ad14811b355dabb68e81` |
| 24 | `lemma` | [intCast_right](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/intcast-right--950cc544064aa190468d969e.md) | 149 | `result-track:950cc544064aa190468d969e95b62d1dd53459d8a16406b0d65a27cc528a8908` |
| 25 | `lemma` | [intCast_mul_right](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/intcast-mul-right--50fe5c22b03270258dd8a2b9.md) | 156 | `result-track:50fe5c22b03270258dd8a2b96f56245d4fb3ef25cd386ddb87408985f449dba4` |
| 26 | `lemma` | [intCast_mul_left](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/intcast-mul-left--87de17f4c504c98011e734b3.md) | 159 | `result-track:87de17f4c504c98011e734b3971c6bc0ff569134822ca225a4fea00405f0bfe3` |
| 27 | `lemma` | [intCast_mul_intCast_mul](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/intcast-mul-intcast-mul--577b67dfb3c5fabfe20f91f8.md) | 162 | `result-track:577b67dfb3c5fabfe20f91f8da469ec6100389a1ce60b8a0157430d4704b0995` |
| 28 | `lemma` | [self_intCast_mul](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/self-intcast-mul--1696c4e662b6c6a065968851.md) | 167 | `result-track:1696c4e662b6c6a0659688514c2aeebe9d12f29dcdd9d2efbec5f888ff7c13bd` |
| 29 | `lemma` | [intCast_mul_self](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/intcast-mul-self--a3ef302788325edd5d758e47.md) | 169 | `result-track:a3ef302788325edd5d758e475c97ca8e7080dc67cf3126ed47627e59cfb6bbfe` |
| 30 | `lemma` | [self_intCast_mul_intCast_mul](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/self-intcast-mul-intcast-mul--db0abd1b26463891cce54045.md) | 171 | `result-track:db0abd1b26463891cce54045c078ef79cf0ffe34dab8f585e3b9ab212c3a6238` |
| 31 | `theorem` | [ext_int](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/ext-int--2081751263bb75f65e4f2425.md) | 184 | `result-track:2081751263bb75f65e4f24250e79e969edd645aa8d5fa3b233eca58490834240` |
| 32 | `theorem` | [eq_intCastAddHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/eq-intcastaddhom--bab245bc16c59f8f76722794.md) | 193 | `result-track:bab245bc16c59f8f76722794a2a3511893bc485e32cabed7cab680e03aba48f5` |
| 33 | `theorem` | [ext_int](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/ext-int--2d62248b67a6668a49d2941e.md) | 204 | `result-track:2d62248b67a6668a49d2941eb9b428cb5be1d20fc1c971722110e0dba15ad978` |
| 34 | `theorem` | [eq_intCast'](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/eq-intcast--4e5474d533126b42f48047d0.md) | 209 | `result-track:4e5474d533126b42f48047d017d9af848a3ca94f90c49e435786b6c12caebb11` |
| 35 | `theorem` | [map_intCast'](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/map-intcast--260cd14bff93d05fce04bc3a.md) | 215 | `result-track:260cd14bff93d05fce04bc3a63aec6a4f83118be51d2d426130605402109cc0f` |
| 36 | `theorem` | [Int.castAddHom_int](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/int-castaddhom-int--c2b93ab6ed298b0aac795c9c.md) | 220 | `result-track:c2b93ab6ed298b0aac795c9c942738a8012aef184fd95f52e07650ce7240c60b` |
| 37 | `theorem` | [ext_mint](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/ext-mint--91e064e10f0a33263b5d2036.md) | 228 | `result-track:91e064e10f0a33263b5d2036d5bc1bc7528c147f77b7b58e804a8a0fdf2f87d3` |
| 38 | `theorem` | [ext_int](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/ext-int--568119dcec3d1bbabeea2c4a.md) | 233 | `result-track:568119dcec3d1bbabeea2c4a86a1e004b356189d54d9cb50fb4f4963343a3ef2` |
| 39 | `theorem` | [ext_int](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/ext-int--da5e40d5fba14005dc3aa0f4.md) | 249 | `result-track:da5e40d5fba14005dc3aa0f463fd20039205b8b6a3acc36e27e2ed84c97035e2` |
| 40 | `theorem` | [ext_int'](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/ext-int--242f04db21bdd94091717eff.md) | 258 | `result-track:242f04db21bdd94091717effab7e33d22ec2734c134fb32a0d3c1967925eded3` |
| 41 | `def` | [zmultiplesHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/zmultipleshom--0a092cc9eb39f610b3248ebf.md) | 272 | `declaration-track:0a092cc9eb39f610b3248ebfc3cab3ce715f745dd7c503089444355d01427d42` |
| 42 | `def` | [zpowersHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/zpowershom--7cb228e867143651e73bf384.md) | 283 | `declaration-track:7cb228e867143651e73bf3844e04995c371973c6d463b1725699fbbae762cdea` |
| 43 | `lemma` | [zmultiplesHom_apply](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/zmultipleshom-apply--5281ff9138df882a01a03e06.md) | 286 | `result-track:5281ff9138df882a01a03e0677ec37db513dd228979805d786d173a44d4a653b` |
| 44 | `lemma` | [zmultiplesHom_symm_apply](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/zmultipleshom-symm-apply--44ce8e7cbaaa340cd52104f8.md) | 288 | `result-track:44ce8e7cbaaa340cd52104f8446eac295f5ecfd2bb7ee3a4cee7ef3c6a591727` |
| 45 | `lemma` | [zpowersHom_apply](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/zpowershom-apply--b7962f2f6f031dcff77ea2c8.md) | 290 | `result-track:b7962f2f6f031dcff77ea2c8b51c507c37b48d905fa14157e4440de4400eac79` |
| 46 | `lemma` | [zpowersHom_symm_apply](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/zpowershom-symm-apply--38f25b29128c6babab2a96a9.md) | 293 | `result-track:38f25b29128c6babab2a96a95017c1121774b31ef9c6772e35a2a52d61153083` |
| 47 | `lemma` | [MonoidHom.apply_mint](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/monoidhom-apply-mint--a49494b480633fbfb47d99ad.md) | 296 | `result-track:a49494b480633fbfb47d99adf7c11db92253369358b6fa0db1c2906b165cbfe8` |
| 48 | `lemma` | [AddMonoidHom.apply_int](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/addmonoidhom-apply-int--de18fb2c33d9e7d8ded4b969.md) | 300 | `result-track:de18fb2c33d9e7d8ded4b9691f94b0e4020eb3c06e71f8aef190f36af9f87c44` |
| 49 | `def` | [zmultiplesAddHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/zmultiplesaddhom--2146c71c06e2ffd6b780d7d5.md) | 309 | `declaration-track:2146c71c06e2ffd6b780d7d55b8ab50721860b0779aa53ec9e9db67c7cb17703` |
| 50 | `def` | [zpowersMulHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/zpowersmulhom--72c07aa15e53f30d4d4a6655.md) | 313 | `declaration-track:72c07aa15e53f30d4d4a6655773ed1dcc1d6e672a8aa3c0d881f553e7921de18` |
| 51 | `lemma` | [zpowersMulHom_apply](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/zpowersmulhom-apply--c72c13eeada83336c6a68b4a.md) | 319 | `result-track:c72c13eeada83336c6a68b4a85aa993b0bcf98925236f92d1dd0fc2deccc6fb2` |
| 52 | `lemma` | [zpowersMulHom_symm_apply](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/zpowersmulhom-symm-apply--6aaa13255ef48ece82471e9d.md) | 322 | `result-track:6aaa13255ef48ece82471e9d8df9586fc2eba3188d5aa6363addee93b648869b` |
| 53 | `lemma` | [zmultiplesAddHom_apply](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/zmultiplesaddhom-apply--d4e98eb772e092b472f4c2a5.md) | 325 | `result-track:d4e98eb772e092b472f4c2a523d48b6d657b1282281375daee013650246626a8` |
| 54 | `lemma` | [zmultiplesAddHom_symm_apply](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/zmultiplesaddhom-symm-apply--39b976a15ddfddb4a52e2f3a.md) | 327 | `result-track:39b976a15ddfddb4a52e2f3ab97ca16e273ad8e64a8630305a14987b9b1b3e5d` |
| 55 | `theorem` | [eq_intCast](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/eq-intcast--0557528c20ecc7daa9c0f6e0.md) | 336 | `result-track:0557528c20ecc7daa9c0f6e0aba946754439429c93379c8db27f8d05e3014be6` |
| 56 | `theorem` | [map_intCast](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/map-intcast--4412fe7d477f46dee9e63cab.md) | 340 | `result-track:4412fe7d477f46dee9e63caba85bf4b6e850268ae33bac18ff83487fbbe0567c` |
| 57 | `theorem` | [eq_intCast'](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/eq-intcast--7863f8b913247e7eaa533ddb.md) | 345 | `result-track:7863f8b913247e7eaa533ddb399ae5b27e97ba88bfecd6b9efc7fd3773c25a70` |
| 58 | `theorem` | [ext_int](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/ext-int--a6730ab9320d048d08ed9ea9.md) | 348 | `result-track:a6730ab9320d048d08ed9ea97ca86c75bd5e287d10188cbc79bd527d50f1c561` |
| 59 | `instance` | [Int.subsingleton_ringHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/int-subsingleton-ringhom--1581faa9ceca595945c89377.md) | 351 | `declaration-track:1581faa9ceca595945c8937773ac69cd5955cc62bdd0d40e76f64f59ace861e2` |
| 60 | `theorem` | [Int.castRingHom_int](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant96045cabdced9868db60ce14a08ed828dab1291951937b2d05ab8d7c476853b3.lean/declarations/int-castringhom-int--94b1d49d18ede3180ba2d20b.md) | 359 | `result-track:94b1d49d18ede3180ba2d20bcf19582592a416a9c1ebd5d294789fa0ffe22222` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
