# Verification target: GRWTSK.Algebra.Rearrangement.Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5eac084ef366e832d9c7e9e3e0dcaefe9d219dd",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean/index.md) · [Full source](../../../../mathematics/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5eac084ef366e832d9c7e9e3e0dcaefe9d219dd`.

Source path: `GRWTSK/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Module.OrderedSMul` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Module.Synonym` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Prod.Lex` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Image` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Max` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Support` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Monotone.Monovary` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Abel` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [MonovaryOn.sum_smul_comp_perm_le_sum_smul](../../../../mathematics/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean/declarations/monovaryon-sum-smul-comp-perm-le-sum-smul--ce8f2a6244523c44f2cc437d.md) | 67 | `result-track:ce8f2a6244523c44f2cc437d526f2dd829fa50ab7d7fd76232660b20fa7a2fb2` |
| 2 | `theorem` | [AntivaryOn.sum_smul_le_sum_smul_comp_perm](../../../../mathematics/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean/declarations/antivaryon-sum-smul-le-sum-smul-comp-perm--9be3f963d4e9fab930658c1b.md) | 116 | `result-track:9be3f963d4e9fab930658c1bf9a8ff7757f151418fbbbacaaab386eb7b532415` |
| 3 | `theorem` | [MonovaryOn.sum_comp_perm_smul_le_sum_smul](../../../../mathematics/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean/declarations/monovaryon-sum-comp-perm-smul-le-sum-smul--39da7d5b025235e27c47ad5d.md) | 122 | `result-track:39da7d5b025235e27c47ad5d9dd1f3aa69b968331cfc915f62c7c75c76c3eb44` |
| 4 | `theorem` | [AntivaryOn.sum_smul_le_sum_comp_perm_smul](../../../../mathematics/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean/declarations/antivaryon-sum-smul-le-sum-comp-perm-smul--85fd93ed4381fccd8976c42a.md) | 130 | `result-track:85fd93ed4381fccd8976c42a915e82226c60f5f0979f0b391b48b8ec86dfd4da` |
| 5 | `theorem` | [Monovary.sum_smul_comp_perm_le_sum_smul](../../../../mathematics/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean/declarations/monovary-sum-smul-comp-perm-le-sum-smul--7537d7e7034328dbbed08855.md) | 138 | `result-track:7537d7e7034328dbbed088551d6ee1777c7d4710524655d8a440c6a5bb141569` |
| 6 | `theorem` | [Antivary.sum_smul_le_sum_smul_comp_perm](../../../../mathematics/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean/declarations/antivary-sum-smul-le-sum-smul-comp-perm--d7c9f2a4146b27ffef806dc3.md) | 144 | `result-track:d7c9f2a4146b27ffef806dc32c4edad33fda2f3d74949b1b63c9fc7f95641cb7` |
| 7 | `theorem` | [Monovary.sum_comp_perm_smul_le_sum_smul](../../../../mathematics/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean/declarations/monovary-sum-comp-perm-smul-le-sum-smul--2d597b523c6db6babf4b8541.md) | 150 | `result-track:2d597b523c6db6babf4b8541f570fad02fc75cab3c468e9a363875cb9f7942b0` |
| 8 | `theorem` | [Antivary.sum_smul_le_sum_comp_perm_smul](../../../../mathematics/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean/declarations/antivary-sum-smul-le-sum-comp-perm-smul--cdf6fbd29fb4e9312f3afc23.md) | 156 | `result-track:cdf6fbd29fb4e9312f3afc2396fa6b6558dd0d2bed267b8fa0c7e89232ebfe5e` |
| 9 | `theorem` | [MonovaryOn.sum_smul_comp_perm_eq_sum_smul_iff](../../../../mathematics/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean/declarations/monovaryon-sum-smul-comp-perm-eq-sum-smul-iff--90ca3d9154c300563ad4ada4.md) | 170 | `result-track:90ca3d9154c300563ad4ada4c89f5e3e534ffc8e84fa7ab803baebf3294e128f` |
| 10 | `theorem` | [AntivaryOn.sum_smul_comp_perm_eq_sum_smul_iff](../../../../mathematics/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean/declarations/antivaryon-sum-smul-comp-perm-eq-sum-smul-iff--8e1f88e61c2ed4e2c809da40.md) | 198 | `result-track:8e1f88e61c2ed4e2c809da40b16f63a30a67daa73c9f5e1655282d89f5677b1f` |
| 11 | `theorem` | [MonovaryOn.sum_comp_perm_smul_eq_sum_smul_iff](../../../../mathematics/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean/declarations/monovaryon-sum-comp-perm-smul-eq-sum-smul-iff--1e03c5d460b629835a152be3.md) | 206 | `result-track:1e03c5d460b629835a152be376b674049ef1e23ef9cc436e887cd5b23bc845ef` |
| 12 | `theorem` | [AntivaryOn.sum_comp_perm_smul_eq_sum_smul_iff](../../../../mathematics/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean/declarations/antivaryon-sum-comp-perm-smul-eq-sum-smul-iff--423afdf4d4085d2d833af62d.md) | 226 | `result-track:423afdf4d4085d2d833af62ddf5d0e2b41947bacd789314972744ae76fd22f43` |
| 13 | `theorem` | [Monovary.sum_smul_comp_perm_eq_sum_smul_iff](../../../../mathematics/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean/declarations/monovary-sum-smul-comp-perm-eq-sum-smul-iff--b9ed7df3e2da8b13bc772cb5.md) | 236 | `result-track:b9ed7df3e2da8b13bc772cb5195fdf354885666ea5e6cd23d597f9ba957f2eea` |
| 14 | `theorem` | [Monovary.sum_comp_perm_smul_eq_sum_smul_iff](../../../../mathematics/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean/declarations/monovary-sum-comp-perm-smul-eq-sum-smul-iff--4fb920783823230ab3ba8511.md) | 243 | `result-track:4fb920783823230ab3ba8511be6c76a0bc5f9a82d180b74b63cc12cdec28b6a7` |
| 15 | `theorem` | [Antivary.sum_smul_comp_perm_eq_sum_smul_iff](../../../../mathematics/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean/declarations/antivary-sum-smul-comp-perm-eq-sum-smul-iff--b7f5c0ba18dccdf5e87b86d5.md) | 250 | `result-track:b7f5c0ba18dccdf5e87b86d5dafa2b77c54fdac416cc27e71fb6eff173b70583` |
| 16 | `theorem` | [Antivary.sum_comp_perm_smul_eq_sum_smul_iff](../../../../mathematics/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean/declarations/antivary-sum-comp-perm-smul-eq-sum-smul-iff--a99cbd1637124677fcb0569b.md) | 257 | `result-track:a99cbd1637124677fcb0569bd0384a2c6b9265de7f448cd9de2d153545063c87` |
| 17 | `theorem` | [MonovaryOn.sum_smul_comp_perm_lt_sum_smul_iff](../../../../mathematics/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean/declarations/monovaryon-sum-smul-comp-perm-lt-sum-smul-iff--24f801a5a4795d8296eaa7d6.md) | 271 | `result-track:24f801a5a4795d8296eaa7d6a7f0910317a1e0338fef1c3036afb668c687a9c5` |
| 18 | `theorem` | [AntivaryOn.sum_smul_lt_sum_smul_comp_perm_iff](../../../../mathematics/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean/declarations/antivaryon-sum-smul-lt-sum-smul-comp-perm-iff--2d988ffb20b64eccb45ff3d0.md) | 280 | `result-track:2d988ffb20b64eccb45ff3d0234ae51799ad6d3a206d4b9c37fc23ac85365029` |
| 19 | `theorem` | [MonovaryOn.sum_comp_perm_smul_lt_sum_smul_iff](../../../../mathematics/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean/declarations/monovaryon-sum-comp-perm-smul-lt-sum-smul-iff--4f71c3f2a4b5ca51e0c32da6.md) | 289 | `result-track:4f71c3f2a4b5ca51e0c32da6c432442c904608293e1c03ff7eccc10dc19df290` |
| 20 | `theorem` | [AntivaryOn.sum_smul_lt_sum_comp_perm_smul_iff](../../../../mathematics/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean/declarations/antivaryon-sum-smul-lt-sum-comp-perm-smul-iff--700944152e976a554ef09ec2.md) | 298 | `result-track:700944152e976a554ef09ec2b6d673e8784a98591d5db2030dfea3136e52e469` |
| 21 | `theorem` | [Monovary.sum_smul_comp_perm_lt_sum_smul_iff](../../../../mathematics/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean/declarations/monovary-sum-smul-comp-perm-lt-sum-smul-iff--2db1ffa4efc9eced96e4fa24.md) | 309 | `result-track:2db1ffa4efc9eced96e4fa24da933058dcbdfe96ce9057ac80ec4a42839165aa` |
| 22 | `theorem` | [Monovary.sum_comp_perm_smul_lt_sum_smul_iff](../../../../mathematics/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean/declarations/monovary-sum-comp-perm-smul-lt-sum-smul-iff--e798499984717af46498c231.md) | 316 | `result-track:e798499984717af46498c231bb395581ee778bfadc3935078b9a32525fb46a21` |
| 23 | `theorem` | [Antivary.sum_smul_lt_sum_smul_comp_perm_iff](../../../../mathematics/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean/declarations/antivary-sum-smul-lt-sum-smul-comp-perm-iff--a5feb781d44f316acecff252.md) | 323 | `result-track:a5feb781d44f316acecff252a080149bd6446e7bab1e2a40962ea04cddbd69bd` |
| 24 | `theorem` | [Antivary.sum_smul_lt_sum_comp_perm_smul_iff](../../../../mathematics/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean/declarations/antivary-sum-smul-lt-sum-comp-perm-smul-iff--803bef7101e22d0dd5d5e716.md) | 330 | `result-track:803bef7101e22d0dd5d5e716bf06e4ba6bbaa8195bd4c4596b6fcad3cd379ac0` |
| 25 | `theorem` | [MonovaryOn.sum_mul_comp_perm_le_sum_mul](../../../../mathematics/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean/declarations/monovaryon-sum-mul-comp-perm-le-sum-mul--065b5b67ae4a03dfbdd9021b.md) | 348 | `result-track:065b5b67ae4a03dfbdd9021b7073d0dff38015dc7d522b5fdd45d9f0ae3299a5` |
| 26 | `theorem` | [MonovaryOn.sum_mul_comp_perm_eq_sum_mul_iff](../../../../mathematics/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean/declarations/monovaryon-sum-mul-comp-perm-eq-sum-mul-iff--7c568c4784cec80c46225723.md) | 355 | `result-track:7c568c4784cec80c46225723714225f5134f29beaa14e58f3b5d91a01380c10d` |
| 27 | `theorem` | [MonovaryOn.sum_mul_comp_perm_lt_sum_mul_iff](../../../../mathematics/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean/declarations/monovaryon-sum-mul-comp-perm-lt-sum-mul-iff--81a638a51362fbfafd42f44d.md) | 363 | `result-track:81a638a51362fbfafd42f44d7ef00ed6d0230478173c74e705a004517c5a0f96` |
| 28 | `theorem` | [MonovaryOn.sum_comp_perm_mul_le_sum_mul](../../../../mathematics/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean/declarations/monovaryon-sum-comp-perm-mul-le-sum-mul--be66c9980203e7019000f752.md) | 370 | `result-track:be66c9980203e7019000f752f3b473b45e8ff513de9c6d7a4c82c92f2d8c40aa` |
| 29 | `theorem` | [MonovaryOn.sum_comp_perm_mul_eq_sum_mul_iff](../../../../mathematics/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean/declarations/monovaryon-sum-comp-perm-mul-eq-sum-mul-iff--fc3a8c470f806f08bf142e86.md) | 377 | `result-track:fc3a8c470f806f08bf142e86a1d920a195c39997ca6e695f709af79193e17ba7` |
| 30 | `theorem` | [MonovaryOn.sum_comp_perm_mul_lt_sum_mul_iff](../../../../mathematics/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean/declarations/monovaryon-sum-comp-perm-mul-lt-sum-mul-iff--67903b145a8ffe31db9da5f5.md) | 385 | `result-track:67903b145a8ffe31db9da5f5f69763bfd6fc1778ddf7f228224dc91c466aa558` |
| 31 | `theorem` | [AntivaryOn.sum_mul_le_sum_mul_comp_perm](../../../../mathematics/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean/declarations/antivaryon-sum-mul-le-sum-mul-comp-perm--c4d0abd4628e8ceb393c86d4.md) | 392 | `result-track:c4d0abd4628e8ceb393c86d4b45fa1d8b10c841c1c6356698bb98a64ac0fd01a` |
| 32 | `theorem` | [AntivaryOn.sum_mul_eq_sum_mul_comp_perm_iff](../../../../mathematics/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean/declarations/antivaryon-sum-mul-eq-sum-mul-comp-perm-iff--8ff549dce10dab60501980af.md) | 399 | `result-track:8ff549dce10dab60501980af99abc42986f46db225b4c60eb733b9a5823f4402` |
| 33 | `theorem` | [AntivaryOn.sum_mul_lt_sum_mul_comp_perm_iff](../../../../mathematics/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean/declarations/antivaryon-sum-mul-lt-sum-mul-comp-perm-iff--91987dd1c10dbaa09c814f71.md) | 407 | `result-track:91987dd1c10dbaa09c814f71b35174750b75a385aa5a5882efc35db398717ef8` |
| 34 | `theorem` | [AntivaryOn.sum_mul_le_sum_comp_perm_mul](../../../../mathematics/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean/declarations/antivaryon-sum-mul-le-sum-comp-perm-mul--ea83625a6e1d6492aa3411dd.md) | 414 | `result-track:ea83625a6e1d6492aa3411ddc3a1bf3ee3bf24f5ef822718702353710b1975fe` |
| 35 | `theorem` | [AntivaryOn.sum_comp_perm_mul_eq_sum_mul_iff](../../../../mathematics/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean/declarations/antivaryon-sum-comp-perm-mul-eq-sum-mul-iff--8cb7e3af4e54fc0edb9abc0f.md) | 421 | `result-track:8cb7e3af4e54fc0edb9abc0f6437cefb3227c9c0d8d7b84b723535a336c3c09c` |
| 36 | `theorem` | [AntivaryOn.sum_mul_lt_sum_comp_perm_mul_iff](../../../../mathematics/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean/declarations/antivaryon-sum-mul-lt-sum-comp-perm-mul-iff--704ea3c69cc9cfda57ee566a.md) | 429 | `result-track:704ea3c69cc9cfda57ee566ad5e3f74b1176ad010e3be0d966516de9fb3c8ec8` |
| 37 | `theorem` | [Monovary.sum_mul_comp_perm_le_sum_mul](../../../../mathematics/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean/declarations/monovary-sum-mul-comp-perm-le-sum-mul--cedf6260bff98a424601699b.md) | 438 | `result-track:cedf6260bff98a424601699b3780df25869171a3a3024e29564fc33416b6168c` |
| 38 | `theorem` | [Monovary.sum_mul_comp_perm_eq_sum_mul_iff](../../../../mathematics/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean/declarations/monovary-sum-mul-comp-perm-eq-sum-mul-iff--a9603a7e501ea09ed0cc78be.md) | 445 | `result-track:a9603a7e501ea09ed0cc78bef45f2bcf9d4b067886b0b1740c98c313328b2a17` |
| 39 | `theorem` | [Monovary.sum_mul_comp_perm_lt_sum_mul_iff](../../../../mathematics/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean/declarations/monovary-sum-mul-comp-perm-lt-sum-mul-iff--58de771efcfd4db0b0238e55.md) | 452 | `result-track:58de771efcfd4db0b0238e554a3e3bad1556f08b507e75eb55cb57c12f0960ba` |
| 40 | `theorem` | [Monovary.sum_comp_perm_mul_le_sum_mul](../../../../mathematics/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean/declarations/monovary-sum-comp-perm-mul-le-sum-mul--64e1d0a1753dfd299480e2c7.md) | 458 | `result-track:64e1d0a1753dfd299480e2c74187c73b8e391c3eeba8fa9238559c1ae947df9e` |
| 41 | `theorem` | [Monovary.sum_comp_perm_mul_eq_sum_mul_iff](../../../../mathematics/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean/declarations/monovary-sum-comp-perm-mul-eq-sum-mul-iff--03e1d5b4e928c53c15b056b6.md) | 465 | `result-track:03e1d5b4e928c53c15b056b687802b274f5db3f5f7d50ffb8167a17eedc2ece5` |
| 42 | `theorem` | [Monovary.sum_comp_perm_mul_lt_sum_mul_iff](../../../../mathematics/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean/declarations/monovary-sum-comp-perm-mul-lt-sum-mul-iff--795f159e023138a9782ab33f.md) | 472 | `result-track:795f159e023138a9782ab33fc4d69ae549cc82431d0f0c57c1eec394b66aac6c` |
| 43 | `theorem` | [Antivary.sum_mul_le_sum_mul_comp_perm](../../../../mathematics/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean/declarations/antivary-sum-mul-le-sum-mul-comp-perm--8a17bb7a3fd85f4979a68179.md) | 478 | `result-track:8a17bb7a3fd85f4979a6817921083946ed0d41c70211e50c260806a2280444c0` |
| 44 | `theorem` | [Antivary.sum_mul_eq_sum_mul_comp_perm_iff](../../../../mathematics/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean/declarations/antivary-sum-mul-eq-sum-mul-comp-perm-iff--82f78cb942d13c6ae8a85ffc.md) | 485 | `result-track:82f78cb942d13c6ae8a85ffcdb697a9cd6a32fac07ad01893ea3ee82d29d3b5e` |
| 45 | `theorem` | [Antivary.sum_mul_lt_sum_mul_comp_perm_iff](../../../../mathematics/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean/declarations/antivary-sum-mul-lt-sum-mul-comp-perm-iff--2c6ea05945b6a8bec288b0a4.md) | 492 | `result-track:2c6ea05945b6a8bec288b0a4c9b8ce9fad286fe0457f706910eaea94014595b5` |
| 46 | `theorem` | [Antivary.sum_mul_le_sum_comp_perm_mul](../../../../mathematics/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean/declarations/antivary-sum-mul-le-sum-comp-perm-mul--5d46ffa13890a9b24ff6f661.md) | 498 | `result-track:5d46ffa13890a9b24ff6f66158bbd17d65c7d108f0b382d2cb40970a842c0581` |
| 47 | `theorem` | [Antivary.sum_comp_perm_mul_eq_sum_mul_iff](../../../../mathematics/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean/declarations/antivary-sum-comp-perm-mul-eq-sum-mul-iff--1b9cb6ee495b8c06f06892b7.md) | 505 | `result-track:1b9cb6ee495b8c06f06892b74bbbbfe6845c44c8bfaf1956927f4f4831065284` |
| 48 | `theorem` | [Antivary.sum_mul_lt_sum_comp_perm_mul_iff](../../../../mathematics/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean/declarations/antivary-sum-mul-lt-sum-comp-perm-mul-iff--27553b09c48cadd72eb2fee7.md) | 512 | `result-track:27553b09c48cadd72eb2fee7a8615bf18894fd154bb71fc700807e017e8469ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
