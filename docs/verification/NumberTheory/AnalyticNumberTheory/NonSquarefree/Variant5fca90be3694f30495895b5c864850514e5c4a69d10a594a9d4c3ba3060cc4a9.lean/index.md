# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.NonSquarefree.Variant5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "668f6e396659b6f207692e888320091a765ab18c",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/NonSquarefree/Variant5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/NonSquarefree/Variant5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/NonSquarefree/Variant5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `668f6e396659b6f207692e888320091a765ab18c`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/NonSquarefree/Variant5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/NonSquarefree/Variant5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Coeff.PowerSums` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SdivP](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/NonSquarefree/Variant5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean/declarations/sdivp--469f97274e824f93cd495f00.md) | 30 | `declaration-track:469f97274e824f93cd495f00230ded0f4c795971373599ab569f1018b9a5d4b8` |
| 2 | `lemma` | [SdivP_nonneg](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/NonSquarefree/Variant5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean/declarations/sdivp-nonneg--3496b779c2cc2f72a52394e2.md) | 33 | `result-track:3496b779c2cc2f72a52394e26790b2366bb194515229b2836ae91849f38b907f` |
| 3 | `lemma` | [SdivP_le_Sdiv](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/NonSquarefree/Variant5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean/declarations/sdivp-le-sdiv--fc92766b174948008f18ab60.md) | 37 | `result-track:fc92766b174948008f18ab60b1b5b8ab330c89ec7f4faa36761c8a63c3b44131` |
| 4 | `lemma` | [SdivP_mono_pred](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/NonSquarefree/Variant5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean/declarations/sdivp-mono-pred--845cbafdc55d46b60683e286.md) | 41 | `result-track:845cbafdc55d46b60683e286465935ec6d1cdd7105e165df03ac4b8c00058192` |
| 5 | `lemma` | [SdivP_or_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/NonSquarefree/Variant5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean/declarations/sdivp-or-le--7344f157a5b5438e5ddbf25b.md) | 47 | `result-track:7344f157a5b5438e5ddbf25b5b4f4db5dc643d3d0c882f6d8bbb1e6ec91024c3` |
| 6 | `lemma` | [SdivP_mono_u](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/NonSquarefree/Variant5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean/declarations/sdivp-mono-u--c440a694f36c3a53ff9c6f4a.md) | 57 | `result-track:c440a694f36c3a53ff9c6f4a60b856ee30286446df4fdd34e49d4a09c7b3771f` |
| 7 | `lemma` | [SdivP_eq_sum_ite](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/NonSquarefree/Variant5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean/declarations/sdivp-eq-sum-ite--19aa3cb121aecb0e1784be12.md) | 65 | `result-track:19aa3cb121aecb0e1784be1288555f84252be6e8a93d837c19d20e55acc1b4ed` |
| 8 | `theorem` | [SdivP_mul_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/NonSquarefree/Variant5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean/declarations/sdivp-mul-le--edddac743fb0d05c706ce758.md) | 74 | `result-track:edddac743fb0d05c706ce75818c904662df3acf03ba12bb73461c030d7d18c70` |
| 9 | `def` | [Cdef](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/NonSquarefree/Variant5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean/declarations/cdef--8c017c9313934c85999efda5.md) | 136 | `declaration-track:8c017c9313934c85999efda5b98c6a113e9ced9bc6e069bc70a9aadeea61625e` |
| 10 | `lemma` | [defect_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/NonSquarefree/Variant5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean/declarations/defect-le--a5354a44d7744b9ee153ea2b.md) | 138 | `result-track:a5354a44d7744b9ee153ea2ba8d11042f08d4a15a6210bab638df7ab83ee8e74` |
| 11 | `lemma` | [defect_term_nonneg](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/NonSquarefree/Variant5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean/declarations/defect-term-nonneg--adafe736f455267ce81cf0ba.md) | 141 | `result-track:adafe736f455267ce81cf0bafbb38eb8c322f7bb306a599f4376f8929ee2f9ab` |
| 12 | `lemma` | [exists_prime_pow_of_vonMangoldt_ne_zero](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/NonSquarefree/Variant5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean/declarations/exists-prime-pow-of-vonmangoldt-ne-zero--d1e98dfecdceff0821e56bb1.md) | 146 | `result-track:d1e98dfecdceff0821e56bb1824554a0f6b181f0ef52937e32946a25318b26c8` |
| 13 | `lemma` | [vonMangoldt_le_log_sub_of_not_prime](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/NonSquarefree/Variant5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean/declarations/vonmangoldt-le-log-sub-of-not-prime--156ac1add45b58acd82d555c.md) | 155 | `result-track:156ac1add45b58acd82d555c938753e7751ebd66b9fa92e17eb0d644e4dae750` |
| 14 | `lemma` | [not_prime_of_not_squarefree](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/NonSquarefree/Variant5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean/declarations/not-prime-of-not-squarefree--c4ca47c6ba44871ff02558ad.md) | 171 | `result-track:c4ca47c6ba44871ff02558ad55f7dd74012cdf435efe52b1d6f55577a8dce30b` |
| 15 | `lemma` | [sum_not_prime_vonMangoldt_div_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/NonSquarefree/Variant5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean/declarations/sum-not-prime-vonmangoldt-div-le--f48182a495ccec2e29256c2d.md) | 175 | `result-track:f48182a495ccec2e29256c2d59f1f98917de14ec43e530d9c9f6e3e8484a09b7` |
| 16 | `lemma` | [sum_not_squarefree_vonMangoldt_sq_div_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/NonSquarefree/Variant5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean/declarations/sum-not-squarefree-vonmangoldt-sq-div-le--8ffff6cf8a77a6dcdb33cc48.md) | 194 | `result-track:8ffff6cf8a77a6dcdb33cc48d83b72f3f1260a4f063abc0296ed00de94241c3e` |
| 17 | `lemma` | [sum_not_squarefree_lamLog_div_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/NonSquarefree/Variant5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean/declarations/sum-not-squarefree-lamlog-div-le--ffc6238314b9007bfb851092.md) | 211 | `result-track:ffc6238314b9007bfb8510928bc8134fc6b386c771cda98b427a33c1ced8c7b4` |
| 18 | `lemma` | [sum_prime_log_sq_div_sq_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/NonSquarefree/Variant5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean/declarations/sum-prime-log-sq-div-sq-le--669c7d5508472986f41fe5cc.md) | 234 | `result-track:669c7d5508472986f41fe5cc5b9e369b97a93c84145ed06fb07637832c0fef67` |
| 19 | `lemma` | [sum_dvd_vonMangoldt_div_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/NonSquarefree/Variant5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean/declarations/sum-dvd-vonmangoldt-div-le--59e02c3cd5a20aba721d024f.md) | 256 | `result-track:59e02c3cd5a20aba721d024ffc0ea782bdcea342075c78cfbcdca82c8b2ba831` |
| 20 | `def` | [Dsum](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/NonSquarefree/Variant5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean/declarations/dsum--f02a04e7b8413c2787721bce.md) | 305 | `declaration-track:f02a04e7b8413c2787721bce7d8d545060cb80babb064d241e3d60c245660a1e` |
| 21 | `lemma` | [Dsum_zero](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/NonSquarefree/Variant5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean/declarations/dsum-zero--04cff1eca4828a6eb449ac79.md) | 307 | `result-track:04cff1eca4828a6eb449ac793f879338e6532069b59353451aa54e1464c2437b` |
| 22 | `def` | [Gb](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/NonSquarefree/Variant5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean/declarations/gb--b63dce4319ce9f3f1d210ba4.md) | 317 | `declaration-track:b63dce4319ce9f3f1d210ba4a49ac8872a9e205e27f80e0b3d34f5a1a2879bc9` |
| 23 | `lemma` | [Gb_ge_one](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/NonSquarefree/Variant5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean/declarations/gb-ge-one--79886f76c570116ad75284ac.md) | 319 | `result-track:79886f76c570116ad75284acf654f2380cb938466a49e96078f7147845514375` |
| 24 | `lemma` | [Gb_nonneg](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/NonSquarefree/Variant5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean/declarations/gb-nonneg--ca337fd3b90adb92156045aa.md) | 322 | `result-track:ca337fd3b90adb92156045aa5583ed961c4d21fefb09b5facadb2e058a1609de` |
| 25 | `lemma` | [Gb_mono_u](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/NonSquarefree/Variant5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean/declarations/gb-mono-u--b016a391ca35bc42427da179.md) | 324 | `result-track:b016a391ca35bc42427da17944ad747daa0c828b0a1491940337980cfb84c95f` |
| 26 | `lemma` | [Gb_succ](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/NonSquarefree/Variant5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean/declarations/gb-succ--7df8e6a3dd7a6930bd787d9b.md) | 326 | `result-track:7df8e6a3dd7a6930bd787d9b2c48944c6013bbffbdd84b6be00292b513e608c0` |
| 27 | `lemma` | [u_add_KM_le_Gb](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/NonSquarefree/Variant5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean/declarations/u-add-km-le-gb--ff06001799dca4fc223ee5f2.md) | 328 | `result-track:ff06001799dca4fc223ee5f2b04f5aa2642942c9cbbe5c07cb59a18593ac72ca` |
| 28 | `lemma` | [pow_bound_le_Gb_pow](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/NonSquarefree/Variant5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean/declarations/pow-bound-le-gb-pow--f5454d248df82f5d315f596b.md) | 331 | `result-track:f5454d248df82f5d315f596ba07cbc69ac6420a579e6f8c4cd73f9bf782bf748` |
| 29 | `theorem` | [Dsum_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/NonSquarefree/Variant5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean/declarations/dsum-le--7290389db7553b139772890b.md) | 340 | `result-track:7290389db7553b139772890bf9f59e15f01f6c0fa21587ec5a940ef6980f1dc2` |
| 30 | `def` | [Nsf](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/NonSquarefree/Variant5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean/declarations/nsf--f664ac963e06d8b007e30a93.md) | 410 | `declaration-track:f664ac963e06d8b007e30a93e192e24921f966a54048ac0b9e8235b494727e30` |
| 31 | `lemma` | [Nsf_nonneg](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/NonSquarefree/Variant5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean/declarations/nsf-nonneg--21a84b6439d7ef80f52eb804.md) | 412 | `result-track:21a84b6439d7ef80f52eb804a797b858d0abafc9a487385acf347f81798b8857` |
| 32 | `lemma` | [split_not_squarefree](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/NonSquarefree/Variant5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean/declarations/split-not-squarefree--c12efaf476ede535e177f930.md) | 415 | `result-track:c12efaf476ede535e177f930f096bcd49ebf82d1855b1c968f855803bcf786c9` |
| 33 | `theorem` | [Nsf_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/NonSquarefree/Variant5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean/declarations/nsf-le--0a3b689f75900a1f186ebd7d.md) | 429 | `result-track:0a3b689f75900a1f186ebd7d7a5b3e442c561603920ce0033f77f821383e7186` |
| 34 | `theorem` | [Nsf_le_poly](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/NonSquarefree/Variant5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean/declarations/nsf-le-poly--88109b251e39841dcfb6b5d7.md) | 549 | `result-track:88109b251e39841dcfb6b5d7efef817271b9728005f038a0e602eeebfba919a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
