# Verification target: GRWTSK.Algebra.Ideal.Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "804c919e41f6f36a4864dcab95dfeba61fb19258",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Ideal/Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Ideal/Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2.lean/index.md) · [Full source](../../../../mathematics/Algebra/Ideal/Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `804c919e41f6f36a4864dcab95dfeba61fb19258`.

Source path: `GRWTSK/Algebra/Ideal/Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Ideal/Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.IsPrimary` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Operations` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TwoSidedIdeal.Operations` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Jacobson.Radical` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [jacobson](../../../../mathematics/Algebra/Ideal/Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2.lean/declarations/jacobson--51d850a5380e0eee896dac78.md) | 70 | `declaration-track:51d850a5380e0eee896dac78bece55672bee7e99c051f58361ce062798af008e` |
| 2 | `theorem` | [le_jacobson](../../../../mathematics/Algebra/Ideal/Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2.lean/declarations/le-jacobson--c12a539c6cac89cc1b6572b7.md) | 73 | `result-track:c12a539c6cac89cc1b6572b7c8a8a76162f1d0e644db0171509feae6fee30465` |
| 3 | `theorem` | [jacobson_idem](../../../../mathematics/Algebra/Ideal/Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2.lean/declarations/jacobson-idem--a632f6f7b01fa81fd828a24e.md) | 76 | `result-track:a632f6f7b01fa81fd828a24e09a33b94ce0080b73e6d4b9b5b9e47c4c09ffd36` |
| 4 | `theorem` | [jacobson_top](../../../../mathematics/Algebra/Ideal/Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2.lean/declarations/jacobson-top--d699770d35605c42ccc09e06.md) | 80 | `result-track:d699770d35605c42ccc09e06c01a5ff1b9ff3e7e4aede38cf02a816bb336b491` |
| 5 | `theorem` | [jacobson_bot](../../../../mathematics/Algebra/Ideal/Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2.lean/declarations/jacobson-bot--e4000a3d0ed43fe25bf2e92b.md) | 83 | `result-track:e4000a3d0ed43fe25bf2e92be56563670be0c1693ebbb59708da5f875500647b` |
| 6 | `theorem` | [jacobson_eq_top_iff](../../../../mathematics/Algebra/Ideal/Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2.lean/declarations/jacobson-eq-top-iff--94fd197a3b7f359c17088e20.md) | 87 | `result-track:94fd197a3b7f359c17088e20cf8695fb24ff4cc9c1e130e78fce722dab156777` |
| 7 | `theorem` | [jacobson_eq_bot](../../../../mathematics/Algebra/Ideal/Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2.lean/declarations/jacobson-eq-bot--794da4b0aff01ebe2f3f2691.md) | 95 | `result-track:794da4b0aff01ebe2f3f2691d34eaf3e8b57573032453028202210347e6d17e3` |
| 8 | `theorem` | [jacobson_eq_self_of_isMaximal](../../../../mathematics/Algebra/Ideal/Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2.lean/declarations/jacobson-eq-self-of-ismaximal--fae7a0f45c278b4264b2dd4b.md) | 97 | `result-track:fae7a0f45c278b4264b2dd4b249d8567e878fed24b01b274897abb1780ea4bc3` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Ideal/Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2.lean/declarations/instance--16a634c5e97c8c6690caa56d.md) | 100 | `declaration-track:16a634c5e97c8c6690caa56dcded69a57af7586d877b81f8428757d9c9e80a61` |
| 10 | `theorem` | [mem_jacobson_iff](../../../../mathematics/Algebra/Ideal/Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2.lean/declarations/mem-jacobson-iff--cec4ea9366d2bc2964b5acc3.md) | 104 | `result-track:cec4ea9366d2bc2964b5acc3ba066928a143cce4b659cfbc68805cd7157a8b09` |
| 11 | `theorem` | [exists_mul_add_sub_mem_of_mem_jacobson](../../../../mathematics/Algebra/Ideal/Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2.lean/declarations/exists-mul-add-sub-mem-of-mem-jacobson--d770347de0d0d61249090a46.md) | 126 | `result-track:d770347de0d0d61249090a466dd1ea1be8635472bc1bd1ab0134eefcbe9a1915` |
| 12 | `theorem` | [exists_mul_sub_mem_of_sub_one_mem_jacobson](../../../../mathematics/Algebra/Ideal/Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2.lean/declarations/exists-mul-sub-mem-of-sub-one-mem-jacobson--fb6fdb337ac5984be9919c66.md) | 133 | `result-track:fb6fdb337ac5984be9919c660b3188c94b2af79a2e6e0edb7f41ede9789cf31c` |
| 13 | `theorem` | [eq_jacobson_iff_sInf_maximal](../../../../mathematics/Algebra/Ideal/Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2.lean/declarations/eq-jacobson-iff-sinf-maximal--cdab53246b6973ac0c847629.md) | 140 | `result-track:cdab53246b6973ac0c8476293b38dad6f3e943592c3dcf4d1b15d5c97540b7a3` |
| 14 | `theorem` | [eq_jacobson_iff_sInf_maximal'](../../../../mathematics/Algebra/Ideal/Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2.lean/declarations/eq-jacobson-iff-sinf-maximal--3fa20a4a00cfb18711c17f76.md) | 151 | `result-track:3fa20a4a00cfb18711c17f761e1577521ee6ecfbb6395f5771680858590fa036` |
| 15 | `theorem` | [eq_jacobson_iff_notMem](../../../../mathematics/Algebra/Ideal/Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2.lean/declarations/eq-jacobson-iff-notmem--93c8d5760fa0e50a7bc54708.md) | 169 | `result-track:93c8d5760fa0e50a7bc54708d8dc15d250c1c401110216d282a004893b775c7f` |
| 16 | `theorem` | [map_jacobson_of_surjective](../../../../mathematics/Algebra/Ideal/Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2.lean/declarations/map-jacobson-of-surjective--f13a4ce7fadb7de30a5c20fd.md) | 184 | `result-track:f13a4ce7fadb7de30a5c20fde604af03b7775ad4a8c5b22e9733394cf9a02486` |
| 17 | `theorem` | [map_jacobson_of_bijective](../../../../mathematics/Algebra/Ideal/Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2.lean/declarations/map-jacobson-of-bijective--511d870ccbde874dc645975a.md) | 203 | `result-track:511d870ccbde874dc645975ae19d60f60fe1d50b891431b61db638d6e8771c15` |
| 18 | `theorem` | [comap_jacobson](../../../../mathematics/Algebra/Ideal/Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2.lean/declarations/comap-jacobson--c8b083962bb8e9ac8343d476.md) | 208 | `result-track:c8b083962bb8e9ac8343d4760a777831f79bf47e6d6beb39f6ede470580845cf` |
| 19 | `theorem` | [comap_jacobson_of_surjective](../../../../mathematics/Algebra/Ideal/Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2.lean/declarations/comap-jacobson-of-surjective--e52b5f9263ad94623fd4d446.md) | 212 | `result-track:e52b5f9263ad94623fd4d4469487168f2fec1beedc49982374c5745ed83c997f` |
| 20 | `theorem` | [jacobson_mono](../../../../mathematics/Algebra/Ideal/Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2.lean/declarations/jacobson-mono--289f1991729c29df7d34c210.md) | 232 | `result-track:289f1991729c29df7d34c2100223ff96f1b80611d787df05742b0eace471131b` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Ideal/Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2.lean/declarations/instance--d19063babc0c0dab55e56c89.md) | 238 | `declaration-track:d19063babc0c0dab55e56c89f93f6ce2780827234fdda021bcfcb3048e796ea6` |
| 22 | `theorem` | [radical_le_jacobson](../../../../mathematics/Algebra/Ideal/Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2.lean/declarations/radical-le-jacobson--1a68408a7f6ce82af94de543.md) | 279 | `result-track:1a68408a7f6ce82af94de543eec6b032071b3cbabff0b94d197ef7bde5fc8772` |
| 23 | `theorem` | [isRadical_of_eq_jacobson](../../../../mathematics/Algebra/Ideal/Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2.lean/declarations/isradical-of-eq-jacobson--9144c1b24ff51d23bfa41254.md) | 282 | `result-track:9144c1b24ff51d23bfa412547c4d0f88c8583e56b4badc84a37d9844e7be2445` |
| 24 | `lemma` | [isRadical_jacobson](../../../../mathematics/Algebra/Ideal/Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2.lean/declarations/isradical-jacobson--33417660835ebc7845966381.md) | 285 | `result-track:33417660835ebc7845966381e0e3b80c9a9b8060d7fc61da83a4b1118f2c9de4` |
| 25 | `theorem` | [isUnit_of_sub_one_mem_jacobson_bot](../../../../mathematics/Algebra/Ideal/Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2.lean/declarations/isunit-of-sub-one-mem-jacobson-bot--1e484c41ccec98032b510065.md) | 288 | `result-track:1e484c41ccec98032b510065ce3c060145cdc59436f0f6f5164668056ef93c9f` |
| 26 | `theorem` | [mem_jacobson_bot](../../../../mathematics/Algebra/Ideal/Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2.lean/declarations/mem-jacobson-bot--3e8c2fba0e944eb1d53dc40a.md) | 294 | `result-track:3e8c2fba0e944eb1d53dc40ab83ca1e674c19be5743447e2542edc1b8ecf062a` |
| 27 | `theorem` | [jacobson_eq_iff_jacobson_quotient_eq_bot](../../../../mathematics/Algebra/Ideal/Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2.lean/declarations/jacobson-eq-iff-jacobson-quotient-eq-bot--dade7c6316ea4eb6adf9050a.md) | 307 | `result-track:dade7c6316ea4eb6adf9050a2690edd82401e565ff42741fcf6f97533264bc52` |
| 28 | `theorem` | [radical_eq_jacobson_iff_radical_quotient_eq_jacobson_bot](../../../../mathematics/Algebra/Ideal/Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2.lean/declarations/radical-eq-jacobson-iff-radical-quotient-eq-jacobson-bot--1c8331ba10b2fcf2b2be7dec.md) | 323 | `result-track:1c8331ba10b2fcf2b2be7decbcc486d16e23dfc567cf8fed3e561d0cd7b57c31` |
| 29 | `theorem` | [jacobson_radical_eq_jacobson](../../../../mathematics/Algebra/Ideal/Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2.lean/declarations/jacobson-radical-eq-jacobson--73d5f42b91e4304291a91873.md) | 338 | `result-track:73d5f42b91e4304291a91873f4409dd7c53e33d0b4bd5525ee2d8bc450d64d11` |
| 30 | `class` | [IsLocal](../../../../mathematics/Algebra/Ideal/Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2.lean/declarations/islocal--1e0be718b5c2f87d07f185c0.md) | 353 | `declaration-track:1e0be718b5c2f87d07f185c0a3f1d87f58757b84c55622c068e9f80e90d22af4` |
| 31 | `theorem` | [isLocal_iff](../../../../mathematics/Algebra/Ideal/Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2.lean/declarations/islocal-iff--53629ea991257b6066e56ac5.md) | 357 | `result-track:53629ea991257b6066e56ac5e689db32211973e018f4251916a724a7b8698276` |
| 32 | `theorem` | [isLocal_of_isMaximal_radical](../../../../mathematics/Algebra/Ideal/Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2.lean/declarations/islocal-of-ismaximal-radical--754dda7f25d1d79620a9e57c.md) | 360 | `result-track:754dda7f25d1d79620a9e57c439e568b82ba8a5d543a402c77c9346c249319f8` |
| 33 | `theorem` | [IsLocal.le_jacobson](../../../../mathematics/Algebra/Ideal/Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2.lean/declarations/islocal-le-jacobson--38ec919502cdcf4f0853e311.md) | 366 | `result-track:38ec919502cdcf4f0853e311c8aceafecafb67210ed1f1f6deb62dfee5d35e6f` |
| 34 | `theorem` | [IsLocal.mem_jacobson_or_exists_inv](../../../../mathematics/Algebra/Ideal/Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2.lean/declarations/islocal-mem-jacobson-or-exists-inv--bbc2b004a7fd4bc84fd17786.md) | 371 | `result-track:bbc2b004a7fd4bc84fd17786522bc8dc56a0a83a4e5c0b4ace80a86e5cba7059` |
| 35 | `theorem` | [isPrimary_of_isMaximal_radical](../../../../mathematics/Algebra/Ideal/Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2.lean/declarations/isprimary-of-ismaximal-radical--b0b5b9bb4db0a08ee5576667.md) | 385 | `result-track:b0b5b9bb4db0a08ee5576667744c6f2c15dae5437f67547c8d2de964c72a513b` |
| 36 | `def` | [jacobson](../../../../mathematics/Algebra/Ideal/Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2.lean/declarations/jacobson--9b3341355d5b196a1fee352c.md) | 405 | `declaration-track:9b3341355d5b196a1fee352c7903d51a3afa616816f9f61b120a1cb4c7eefb46` |
| 37 | `lemma` | [asIdeal_jacobson](../../../../mathematics/Algebra/Ideal/Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2.lean/declarations/asideal-jacobson--2c3c07df7dc2a74da40b9f97.md) | 408 | `result-track:2c3c07df7dc2a74da40b9f9785fb08f1c141199e3e1cd9ff8e4aff4ebd4c8149` |
| 38 | `theorem` | [mem_jacobson_iff](../../../../mathematics/Algebra/Ideal/Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2.lean/declarations/mem-jacobson-iff--e65ee13b546a4e6ad86a6d90.md) | 411 | `result-track:e65ee13b546a4e6ad86a6d90072a6b56fe670c741c3e361d4a4fe8135cee4136` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
