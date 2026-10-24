# Verification target: GRWTSK.Algebra.GoingUp.Variant806bcfca9dc5ad60fb4af27e5892943bd28c8ab31e5ba79f4d78cce9f50325e1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b519251123fc5ad17f47dd71d4752e9801793db",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GoingUp/Variant806bcfca9dc5ad60fb4af27e5892943bd28c8ab31e5ba79f4d78cce9f50325e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/GoingUp/Variant806bcfca9dc5ad60fb4af27e5892943bd28c8ab31e5ba79f4d78cce9f50325e1.lean/index.md) · [Full source](../../../../mathematics/Algebra/GoingUp/Variant806bcfca9dc5ad60fb4af27e5892943bd28c8ab31e5ba79f4d78cce9f50325e1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b519251123fc5ad17f47dd71d4752e9801793db`.

Source path: `GRWTSK/Algebra/GoingUp/Variant806bcfca9dc5ad60fb4af27e5892943bd28c8ab31e5ba79f4d78cce9f50325e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GoingUp/Variant806bcfca9dc5ad60fb4af27e5892943bd28c8ab31e5ba79f4d78cce9f50325e1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.Over` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.AtPrime` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Integral` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coeff_zero_mem_comap_of_root_mem_of_eval_mem](../../../../mathematics/Algebra/GoingUp/Variant806bcfca9dc5ad60fb4af27e5892943bd28c8ab31e5ba79f4d78cce9f50325e1.lean/declarations/coeff-zero-mem-comap-of-root-mem-of-eval-mem--185a4b05edc53132b1eb064b.md) | 35 | `result-track:185a4b05edc53132b1eb064bdf69445f2a6fb127c8daeb653f2f336a0b4048cc` |
| 2 | `theorem` | [coeff_zero_mem_comap_of_root_mem](../../../../mathematics/Algebra/GoingUp/Variant806bcfca9dc5ad60fb4af27e5892943bd28c8ab31e5ba79f4d78cce9f50325e1.lean/declarations/coeff-zero-mem-comap-of-root-mem--389ed97e059050b93be206ae.md) | 41 | `result-track:389ed97e059050b93be206ae859cf080fc44a4c0551a9ee204cc132bce6c0ea8` |
| 3 | `theorem` | [exists_coeff_ne_zero_mem_comap_of_non_zero_divisor_root_mem](../../../../mathematics/Algebra/GoingUp/Variant806bcfca9dc5ad60fb4af27e5892943bd28c8ab31e5ba79f4d78cce9f50325e1.lean/declarations/exists-coeff-ne-zero-mem-comap-of-non-zero-divisor-root-mem--41d5c3e810160d99a908d636.md) | 45 | `result-track:41d5c3e810160d99a908d63617c22f95a1fdec4bb9fdd90cb2b9855b32a6792b` |
| 4 | `theorem` | [injective_quotient_le_comap_map](../../../../mathematics/Algebra/GoingUp/Variant806bcfca9dc5ad60fb4af27e5892943bd28c8ab31e5ba79f4d78cce9f50325e1.lean/declarations/injective-quotient-le-comap-map--c78f678553231df84e351dc9.md) | 65 | `result-track:c78f678553231df84e351dc9d3a77ebb6587509ee4da4a769d43217cc80c70cc` |
| 5 | `theorem` | [quotient_mk_maps_eq](../../../../mathematics/Algebra/GoingUp/Variant806bcfca9dc5ad60fb4af27e5892943bd28c8ab31e5ba79f4d78cce9f50325e1.lean/declarations/quotient-mk-maps-eq--37e88aff48a0fd032266276e.md) | 88 | `result-track:37e88aff48a0fd032266276ec73bfa4d1bc8029656936024837466714e6e1c06` |
| 6 | `theorem` | [exists_nonzero_mem_of_ne_bot](../../../../mathematics/Algebra/GoingUp/Variant806bcfca9dc5ad60fb4af27e5892943bd28c8ab31e5ba79f4d78cce9f50325e1.lean/declarations/exists-nonzero-mem-of-ne-bot--499a3d34097111920538eaf6.md) | 102 | `result-track:499a3d34097111920538eaf640bb0191b43776eb8139355cabaa00d5b03e257d` |
| 7 | `theorem` | [exists_coeff_ne_zero_mem_comap_of_root_mem](../../../../mathematics/Algebra/GoingUp/Variant806bcfca9dc5ad60fb4af27e5892943bd28c8ab31e5ba79f4d78cce9f50325e1.lean/declarations/exists-coeff-ne-zero-mem-comap-of-root-mem--767ab330d03e35d6e6dff081.md) | 121 | `result-track:767ab330d03e35d6e6dff081ce9303b334625f75fa79a4c8f07b1a59611ef5ef` |
| 8 | `theorem` | [exists_coeff_mem_comap_sdiff_comap_of_root_mem_sdiff](../../../../mathematics/Algebra/GoingUp/Variant806bcfca9dc5ad60fb4af27e5892943bd28c8ab31e5ba79f4d78cce9f50325e1.lean/declarations/exists-coeff-mem-comap-sdiff-comap-of-root-mem-sdiff--1e5587d5f1d2c408ed578c6e.md) | 127 | `result-track:1e5587d5f1d2c408ed578c6e4abcc30b1a19cab19b2d15738e2f9bcd560ae2ff` |
| 9 | `theorem` | [comap_lt_comap_of_root_mem_sdiff](../../../../mathematics/Algebra/GoingUp/Variant806bcfca9dc5ad60fb4af27e5892943bd28c8ab31e5ba79f4d78cce9f50325e1.lean/declarations/comap-lt-comap-of-root-mem-sdiff--84992f59597476cb68f8b1de.md) | 148 | `result-track:84992f59597476cb68f8b1de33df156e26dc29740057f8efd149a6c0b797e520` |
| 10 | `theorem` | [mem_of_one_mem](../../../../mathematics/Algebra/GoingUp/Variant806bcfca9dc5ad60fb4af27e5892943bd28c8ab31e5ba79f4d78cce9f50325e1.lean/declarations/mem-of-one-mem--3284a541b2872af1c12f4a0d.md) | 154 | `result-track:3284a541b2872af1c12f4a0dfb52726d7a58b8b61f09965ae0f0ef6866e03355` |
| 11 | `theorem` | [comap_lt_comap_of_integral_mem_sdiff](../../../../mathematics/Algebra/GoingUp/Variant806bcfca9dc5ad60fb4af27e5892943bd28c8ab31e5ba79f4d78cce9f50325e1.lean/declarations/comap-lt-comap-of-integral-mem-sdiff--983144d29c02b86d8ebd1c5b.md) | 157 | `result-track:983144d29c02b86d8ebd1c5b893ee8098335d4f429d2169dbca869af98c0172b` |
| 12 | `theorem` | [comap_ne_bot_of_root_mem](../../../../mathematics/Algebra/GoingUp/Variant806bcfca9dc5ad60fb4af27e5892943bd28c8ab31e5ba79f4d78cce9f50325e1.lean/declarations/comap-ne-bot-of-root-mem--12c520fa5672b512a93c5cd4.md) | 164 | `result-track:12c520fa5672b512a93c5cd47c7f3f8aefc4b12dee51d79ce664a35ae558c6e4` |
| 13 | `theorem` | [isMaximal_of_isIntegral_of_isMaximal_comap](../../../../mathematics/Algebra/GoingUp/Variant806bcfca9dc5ad60fb4af27e5892943bd28c8ab31e5ba79f4d78cce9f50325e1.lean/declarations/ismaximal-of-isintegral-of-ismaximal-comap--476c6e6fcd8ddcf06c6a4789.md) | 169 | `result-track:476c6e6fcd8ddcf06c6a478966afdbebe08cef268168748bb9a233925e5db6e5` |
| 14 | `theorem` | [isMaximal_of_isIntegral_of_isMaximal_comap'](../../../../mathematics/Algebra/GoingUp/Variant806bcfca9dc5ad60fb4af27e5892943bd28c8ab31e5ba79f4d78cce9f50325e1.lean/declarations/ismaximal-of-isintegral-of-ismaximal-comap--a5ec385241aa0be04a360236.md) | 177 | `result-track:a5ec385241aa0be04a360236f20dc134ba73a8a3a655fbb244bd981ec027c4f4` |
| 15 | `theorem` | [comap_ne_bot_of_algebraic_mem](../../../../mathematics/Algebra/GoingUp/Variant806bcfca9dc5ad60fb4af27e5892943bd28c8ab31e5ba79f4d78cce9f50325e1.lean/declarations/comap-ne-bot-of-algebraic-mem--5b3344d662e1c2ad1f665e8b.md) | 185 | `result-track:5b3344d662e1c2ad1f665e8b9f15d4e2e4c28014ab1e33fe99f6b20f15e1e40c` |
| 16 | `theorem` | [comap_ne_bot_of_integral_mem](../../../../mathematics/Algebra/GoingUp/Variant806bcfca9dc5ad60fb4af27e5892943bd28c8ab31e5ba79f4d78cce9f50325e1.lean/declarations/comap-ne-bot-of-integral-mem--bcb232111fb2c5ab7510c326.md) | 190 | `result-track:bcb232111fb2c5ab7510c32678469f07f6df9b2abfb642b91d981bacf29ffac5` |
| 17 | `theorem` | [eq_bot_of_comap_eq_bot](../../../../mathematics/Algebra/GoingUp/Variant806bcfca9dc5ad60fb4af27e5892943bd28c8ab31e5ba79f4d78cce9f50325e1.lean/declarations/eq-bot-of-comap-eq-bot--b39f44d7f0fe6d41b7244dc3.md) | 194 | `result-track:b39f44d7f0fe6d41b7244dc34e324a5e31d5cfbb6576d8b0b40e5f72ec4df01b` |
| 18 | `theorem` | [isMaximal_comap_of_isIntegral_of_isMaximal](../../../../mathematics/Algebra/GoingUp/Variant806bcfca9dc5ad60fb4af27e5892943bd28c8ab31e5ba79f4d78cce9f50325e1.lean/declarations/ismaximal-comap-of-isintegral-of-ismaximal--00d1f972bec6de1152c64e4f.md) | 201 | `result-track:00d1f972bec6de1152c64e4ff69a8286633a0a0e2de1a4c424b8147b96867c64` |
| 19 | `theorem` | [isMaximal_comap_of_isIntegral_of_isMaximal'](../../../../mathematics/Algebra/GoingUp/Variant806bcfca9dc5ad60fb4af27e5892943bd28c8ab31e5ba79f4d78cce9f50325e1.lean/declarations/ismaximal-comap-of-isintegral-of-ismaximal--270941f67f7099a92413dc4d.md) | 208 | `result-track:270941f67f7099a92413dc4dd5fdd77514d0e6c98c7ccd06b2a2e171e96fb9c7` |
| 20 | `theorem` | [IsIntegralClosure.comap_lt_comap](../../../../mathematics/Algebra/GoingUp/Variant806bcfca9dc5ad60fb4af27e5892943bd28c8ab31e5ba79f4d78cce9f50325e1.lean/declarations/isintegralclosure-comap-lt-comap--a09352e501bca9f0190d2ebe.md) | 220 | `result-track:a09352e501bca9f0190d2ebe195464e3786397ad6d43834557e501c1b82ab11c` |
| 21 | `theorem` | [IsIntegralClosure.isMaximal_of_isMaximal_comap](../../../../mathematics/Algebra/GoingUp/Variant806bcfca9dc5ad60fb4af27e5892943bd28c8ab31e5ba79f4d78cce9f50325e1.lean/declarations/isintegralclosure-ismaximal-of-ismaximal-comap--3f0bb8ecd70013eff7f624eb.md) | 225 | `result-track:3f0bb8ecd70013eff7f624eb456f15384870e184225b612c9dd2d1d98e6a8832` |
| 22 | `theorem` | [IsIntegralClosure.comap_ne_bot](../../../../mathematics/Algebra/GoingUp/Variant806bcfca9dc5ad60fb4af27e5892943bd28c8ab31e5ba79f4d78cce9f50325e1.lean/declarations/isintegralclosure-comap-ne-bot--1356509db68649d1f16a5e2a.md) | 232 | `result-track:1356509db68649d1f16a5e2a7a6a88d7cf7bfd76a1093982e96d2c1e899f17e7` |
| 23 | `theorem` | [IsIntegralClosure.eq_bot_of_comap_eq_bot](../../../../mathematics/Algebra/GoingUp/Variant806bcfca9dc5ad60fb4af27e5892943bd28c8ab31e5ba79f4d78cce9f50325e1.lean/declarations/isintegralclosure-eq-bot-of-comap-eq-bot--27fdd5f1dc0086861cce831b.md) | 237 | `result-track:27fdd5f1dc0086861cce831be1055ac16930c42962086dc845ffa1c09cac78a6` |
| 24 | `theorem` | [IntegralClosure.comap_lt_comap](../../../../mathematics/Algebra/GoingUp/Variant806bcfca9dc5ad60fb4af27e5892943bd28c8ab31e5ba79f4d78cce9f50325e1.lean/declarations/integralclosure-comap-lt-comap--b24660f61bf67c02166bcda8.md) | 244 | `result-track:b24660f61bf67c02166bcda8a0f41f2b3219d33717552de7d64da721c2b52a6f` |
| 25 | `theorem` | [IntegralClosure.isMaximal_of_isMaximal_comap](../../../../mathematics/Algebra/GoingUp/Variant806bcfca9dc5ad60fb4af27e5892943bd28c8ab31e5ba79f4d78cce9f50325e1.lean/declarations/integralclosure-ismaximal-of-ismaximal-comap--ab1740f2e03c11fa2fe4392c.md) | 249 | `result-track:ab1740f2e03c11fa2fe4392cb6cd9a1d439715f6ee079e916ac682853d0be0af` |
| 26 | `theorem` | [IntegralClosure.comap_ne_bot](../../../../mathematics/Algebra/GoingUp/Variant806bcfca9dc5ad60fb4af27e5892943bd28c8ab31e5ba79f4d78cce9f50325e1.lean/declarations/integralclosure-comap-ne-bot--002fd3abd09eb29f263c66c0.md) | 257 | `result-track:002fd3abd09eb29f263c66c05a7944f1e9fdc7b0033abd10cd3728deeb698a0e` |
| 27 | `theorem` | [IntegralClosure.eq_bot_of_comap_eq_bot](../../../../mathematics/Algebra/GoingUp/Variant806bcfca9dc5ad60fb4af27e5892943bd28c8ab31e5ba79f4d78cce9f50325e1.lean/declarations/integralclosure-eq-bot-of-comap-eq-bot--92ea6e16aefed8cd003b0736.md) | 261 | `result-track:92ea6e16aefed8cd003b0736c56063567ab76668ebecbe071ca77e9b89210789` |
| 28 | `theorem` | [exists_ideal_over_prime_of_isIntegral_of_isDomain](../../../../mathematics/Algebra/GoingUp/Variant806bcfca9dc5ad60fb4af27e5892943bd28c8ab31e5ba79f4d78cce9f50325e1.lean/declarations/exists-ideal-over-prime-of-isintegral-of-isdomain--a6ff9f5a7eb7056faf2757db.md) | 267 | `result-track:a6ff9f5a7eb7056faf2757dba2fc5269310195bee431cf97a87b668dad5b99be` |
| 29 | `theorem` | [exists_ideal_over_prime_of_isIntegral_of_isPrime](../../../../mathematics/Algebra/GoingUp/Variant806bcfca9dc5ad60fb4af27e5892943bd28c8ab31e5ba79f4d78cce9f50325e1.lean/declarations/exists-ideal-over-prime-of-isintegral-of-isprime--871c86b6858b9109b44d5ad2.md) | 295 | `result-track:871c86b6858b9109b44d5ad254cf70b99e53a5b482da82db6a86174936cca89a` |
| 30 | `theorem` | [exists_ideal_over_prime_of_isIntegral](../../../../mathematics/Algebra/GoingUp/Variant806bcfca9dc5ad60fb4af27e5892943bd28c8ab31e5ba79f4d78cce9f50325e1.lean/declarations/exists-ideal-over-prime-of-isintegral--327bafe5a8f4f00d005b8873.md) | 315 | `result-track:327bafe5a8f4f00d005b88730ff719014bb24c8e46fc1f97ff9f54651132e810` |
| 31 | `theorem` | [exists_ideal_over_maximal_of_isIntegral](../../../../mathematics/Algebra/GoingUp/Variant806bcfca9dc5ad60fb4af27e5892943bd28c8ab31e5ba79f4d78cce9f50325e1.lean/declarations/exists-ideal-over-maximal-of-isintegral--2022d0f56b707fce0994d5f4.md) | 324 | `result-track:2022d0f56b707fce0994d5f41378cfcf3490841846178611160d2fb7f8b2fbd7` |
| 32 | `lemma` | [map_eq_top_iff_of_ker_le](../../../../mathematics/Algebra/GoingUp/Variant806bcfca9dc5ad60fb4af27e5892943bd28c8ab31e5ba79f4d78cce9f50325e1.lean/declarations/map-eq-top-iff-of-ker-le--9bba1565bd2fdccec45d65b3.md) | 330 | `result-track:9bba1565bd2fdccec45d65b3777319df6f63c16fb30fa18b8e3ad0bf54fd7812` |
| 33 | `lemma` | [map_eq_top_iff](../../../../mathematics/Algebra/GoingUp/Variant806bcfca9dc5ad60fb4af27e5892943bd28c8ab31e5ba79f4d78cce9f50325e1.lean/declarations/map-eq-top-iff--94b29a55b0b632a6243882d6.md) | 344 | `result-track:94b29a55b0b632a6243882d6989c0bf389c73fee298ddcb30df7c97cdbc67331` |
| 34 | `instance` | [IsMaximal.under](../../../../mathematics/Algebra/GoingUp/Variant806bcfca9dc5ad60fb4af27e5892943bd28c8ab31e5ba79f4d78cce9f50325e1.lean/declarations/ismaximal-under--bf09bd4bf2ce66673043f218.md) | 359 | `declaration-track:bf09bd4bf2ce66673043f21814c94d2d0fc2149a83373df975e82bf0a4c899f1` |
| 35 | `theorem` | [IsMaximal.of_liesOver_isMaximal](../../../../mathematics/Algebra/GoingUp/Variant806bcfca9dc5ad60fb4af27e5892943bd28c8ab31e5ba79f4d78cce9f50325e1.lean/declarations/ismaximal-of-liesover-ismaximal--820ffba90c5c472f96b54799.md) | 362 | `result-track:820ffba90c5c472f96b547993a9b178d5a27314cb5cc8cb4975be62a35f25163` |
| 36 | `theorem` | [IsMaximal.of_isMaximal_liesOver](../../../../mathematics/Algebra/GoingUp/Variant806bcfca9dc5ad60fb4af27e5892943bd28c8ab31e5ba79f4d78cce9f50325e1.lean/declarations/ismaximal-of-ismaximal-liesover--23289e8586a4d08eee273e15.md) | 366 | `result-track:23289e8586a4d08eee273e1509a76ce4296b56c5e748f5487090c671898d07ab` |
| 37 | `instance` | [Quotient.algebra_isIntegral_of_liesOver](../../../../mathematics/Algebra/GoingUp/Variant806bcfca9dc5ad60fb4af27e5892943bd28c8ab31e5ba79f4d78cce9f50325e1.lean/declarations/quotient-algebra-isintegral-of-liesover--73077f2cb956ebfd97140fff.md) | 371 | `declaration-track:73077f2cb956ebfd97140fff146e1974e1e61a5029334e593c3d9696410201cc` |
| 38 | `theorem` | [exists_ideal_liesOver_maximal_of_isIntegral](../../../../mathematics/Algebra/GoingUp/Variant806bcfca9dc5ad60fb4af27e5892943bd28c8ab31e5ba79f4d78cce9f50325e1.lean/declarations/exists-ideal-liesover-maximal-of-isintegral--b2140576096fae4e6c27e9ee.md) | 374 | `result-track:b2140576096fae4e6c27e9ee6f0b63294ef21e33988391df201ce7841fa04b54` |
| 39 | `instance` | [primesOver.isMaximal](../../../../mathematics/Algebra/GoingUp/Variant806bcfca9dc5ad60fb4af27e5892943bd28c8ab31e5ba79f4d78cce9f50325e1.lean/declarations/primesover-ismaximal--db965b6f58df94107ebffd41.md) | 387 | `declaration-track:db965b6f58df94107ebffd41f966d3a2c1bc6e4e74885b44df23119da9bba5e4` |
| 40 | `lemma` | [primesOver_bot](../../../../mathematics/Algebra/GoingUp/Variant806bcfca9dc5ad60fb4af27e5892943bd28c8ab31e5ba79f4d78cce9f50325e1.lean/declarations/primesover-bot--3c8a4bfb88b89a13b96855ef.md) | 391 | `result-track:3c8a4bfb88b89a13b96855ef40841f0316329fa45adfca51847fb483c611a59f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
