# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Basic.Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d85c79681ce75e89a6c58a85c2a2f5279474c82f",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d85c79681ce75e89a6c58a85c2a2f5279474c82f`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.NeZero` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.BigOperators` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RootsOfUnity.Complex` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Lifts` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Splits` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Algebra` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.RatFunc` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Separable` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RootsOfUnity.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cyclotomic'](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean/declarations/cyclotomic--9e8ab8827bf7725c6c1f9a95.md) | 68 | `declaration-track:9e8ab8827bf7725c6c1f9a957001fac708d11f116ea025bf71a0d00e423e8214` |
| 2 | `theorem` | [cyclotomic'_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean/declarations/cyclotomic-zero--0730f58d85a37393dd5f4d1d.md) | 74 | `result-track:0730f58d85a37393dd5f4d1d236bd6d32781fd7802d384a827c82883257e62ef` |
| 3 | `theorem` | [cyclotomic'_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean/declarations/cyclotomic-one--8d728a2ce1ab279cade5b27f.md) | 80 | `result-track:8d728a2ce1ab279cade5b27fed31bea6d38012488768d7d41b6906ed6e66cb15` |
| 4 | `theorem` | [cyclotomic'_two](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean/declarations/cyclotomic-two--c67f402bd2847494b8d13ff1.md) | 87 | `result-track:c67f402bd2847494b8d13ff100270c7e9e7e375be08ed27ba9ecb0c2becaa8e6` |
| 5 | `theorem` | [cyclotomic'.monic](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean/declarations/cyclotomic-monic--2508aeedc5a9afe6e3f6170e.md) | 97 | `result-track:2508aeedc5a9afe6e3f6170e281992da72c1684b6083abce3edc2a0bd96ee02b` |
| 6 | `theorem` | [cyclotomic'_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean/declarations/cyclotomic-ne-zero--c6b39f313ab259409f839d7f.md) | 103 | `result-track:c6b39f313ab259409f839d7fbb7b26a154f0c5cdc2bb2f73dd9dcd6ffa1b3644` |
| 7 | `theorem` | [natDegree_cyclotomic'](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean/declarations/natdegree-cyclotomic--2fc8d84f546e39f6cd7fc79e.md) | 109 | `result-track:2fc8d84f546e39f6cd7fc79e17b44322e10e5813f330650696d665c0dd56d268` |
| 8 | `theorem` | [degree_cyclotomic'](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean/declarations/degree-cyclotomic--2212801bfd95f320f834b1bb.md) | 120 | `result-track:2212801bfd95f320f834b1bb5ffd3dda444b1b466737bfd9716a4536162eed2a` |
| 9 | `theorem` | [roots_of_cyclotomic](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean/declarations/roots-of-cyclotomic--cdb55f8d93e0bff406dd2ec5.md) | 126 | `result-track:cdb55f8d93e0bff406dd2ec51a5de4e67f9c1542722fc1b41934c73f1c0b6fcc` |
| 10 | `theorem` | [X_pow_sub_one_eq_prod](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean/declarations/x-pow-sub-one-eq-prod--929e6da7bef7a4355ba3ca8d.md) | 133 | `result-track:929e6da7bef7a4355ba3ca8d46de82be7c96e3c54e7d31497d82c897db230561` |
| 11 | `theorem` | [cyclotomic'_splits](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean/declarations/cyclotomic-splits--fbb1ba5fea5650d68758a6d4.md) | 153 | `result-track:fbb1ba5fea5650d68758a6d462cf67663543be900e765ad564d966a07bf841c4` |
| 12 | `theorem` | [X_pow_sub_one_splits](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean/declarations/x-pow-sub-one-splits--84ebf3f03f3f2c1e51620ed3.md) | 160 | `result-track:84ebf3f03f3f2c1e51620ed34ae33fd95da430e2797ece314f4e32e31ebee6bc` |
| 13 | `theorem` | [prod_cyclotomic'_eq_X_pow_sub_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean/declarations/prod-cyclotomic-eq-x-pow-sub-one--c513432515e11c0ce7a85075.md) | 168 | `result-track:c513432515e11c0ce7a850750de4c46c1f272937352c50e99095a8f36735a2e1` |
| 14 | `theorem` | [cyclotomic'_eq_X_pow_sub_one_div](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean/declarations/cyclotomic-eq-x-pow-sub-one-div--9f21cce2f1c8c92738f54d40.md) | 180 | `result-track:9f21cce2f1c8c92738f54d406158e40a8be56a8fb2a343c484ebf9890f6ec9cd` |
| 15 | `theorem` | [int_coeff_of_cyclotomic'](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean/declarations/int-coeff-of-cyclotomic--143efb28e486ab0b2851a766.md) | 200 | `result-track:143efb28e486ab0b2851a76625da7464edab800ee1abbb3ecf2a0a25f584b7f0` |
| 16 | `theorem` | [unique_int_coeff_of_cycl](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean/declarations/unique-int-coeff-of-cycl--51085253ce286ae0df9a506b.md) | 237 | `result-track:51085253ce286ae0df9a506be6d2a02b760cf0a065f4f359c4013f80c08aa0d8` |
| 17 | `def` | [cyclotomic](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean/declarations/cyclotomic--f1e268afcf677e0e107fdb23.md) | 253 | `declaration-track:f1e268afcf677e0e107fdb238a82119f60109ca3ba06a0ed690d1f7ec954d0a9` |
| 18 | `theorem` | [int_cyclotomic_rw](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean/declarations/int-cyclotomic-rw--0be13e4a349e259761a2c278.md) | 258 | `result-track:0be13e4a349e259761a2c27842a992601be2d969b9838ea916cd034256f6661e` |
| 19 | `theorem` | [map_cyclotomic_int](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean/declarations/map-cyclotomic-int--b4a4d4aa1a8807246a0c73f5.md) | 266 | `result-track:b4a4d4aa1a8807246a0c73f5074b6c9876e911591640be8de42961c58ad5c4e9` |
| 20 | `theorem` | [int_cyclotomic_spec](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean/declarations/int-cyclotomic-spec--058d1adb6c92e39860cca4c0.md) | 273 | `result-track:058d1adb6c92e39860cca4c07b8a939cefb2c9d585a13427597a6af0f904f78c` |
| 21 | `theorem` | [int_cyclotomic_unique](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean/declarations/int-cyclotomic-unique--acfbccd1f210f0e1a4ab0a7f.md) | 283 | `result-track:acfbccd1f210f0e1a4ab0a7fedeab2560222001e7fb6f0a132f4edbb44ff8a82` |
| 22 | `theorem` | [map_cyclotomic](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean/declarations/map-cyclotomic--3e11b017bedfa6463eea9835.md) | 291 | `result-track:3e11b017bedfa6463eea9835ab4abc2fce0035201194f9277a79ec9e2289881f` |
| 23 | `theorem` | [cyclotomic.eval_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean/declarations/cyclotomic-eval-apply--a6548f9da230db19131396bb.md) | 297 | `result-track:a6548f9da230db19131396bbc9aee2145ca3105f65f72032dd6c294ed3a59b39` |
| 24 | `theorem` | [cyclotomic_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean/declarations/cyclotomic-zero--edf04636dec46222e3bf8774.md) | 304 | `result-track:edf04636dec46222e3bf877496850043eddb4bfd62166d1ee1ca83ce64365895` |
| 25 | `theorem` | [cyclotomic_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean/declarations/cyclotomic-one--6d5d29f01c244be1a5e2304f.md) | 310 | `result-track:6d5d29f01c244be1a5e2304f307820921425a15ea8bf17cd5202cb1fa197b4a5` |
| 26 | `theorem` | [cyclotomic.monic](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean/declarations/cyclotomic-monic--2dc8e09d7f807892e8cfe0e4.md) | 319 | `result-track:2dc8e09d7f807892e8cfe0e462175613785171a0ab213fb7ef986fd77f718e5a` |
| 27 | `theorem` | [cyclotomic.isPrimitive](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean/declarations/cyclotomic-isprimitive--c1042925fc0eb1f948b4d0f2.md) | 325 | `result-track:c1042925fc0eb1f948b4d0f21737b7f9e4753c2a2f24fe2f57836c4890c1b809` |
| 28 | `theorem` | [cyclotomic_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean/declarations/cyclotomic-ne-zero--9dd1f20bca1b693d92131a83.md) | 330 | `result-track:9dd1f20bca1b693d92131a8379acf1dcf249b284775912d7b8f9d4d8619180e5` |
| 29 | `theorem` | [degree_cyclotomic](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean/declarations/degree-cyclotomic--61959313b5813b7cdd0ae3f1.md) | 335 | `result-track:61959313b5813b7cdd0ae3f1e3a2eb5a4a0599b11b041043139c8a5ed21516b7` |
| 30 | `theorem` | [natDegree_cyclotomic](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean/declarations/natdegree-cyclotomic--c9b08956bc86ea4adf01bfd2.md) | 348 | `result-track:c9b08956bc86ea4adf01bfd2531896bfffee79920e8a71c74571b2d3048f7c6d` |
| 31 | `theorem` | [degree_cyclotomic_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean/declarations/degree-cyclotomic-pos--1f7a5d885ca656a61d48dd30.md) | 354 | `result-track:1f7a5d885ca656a61d48dd300a255c047b5a26b138511bb98cfd0c8f322713e9` |
| 32 | `theorem` | [prod_cyclotomic_eq_X_pow_sub_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean/declarations/prod-cyclotomic-eq-x-pow-sub-one--56f60ae6e77d0e810ef9f4c4.md) | 362 | `result-track:56f60ae6e77d0e810ef9f4c4e8fb46e009a3dde01ee39f79a3b1868c3c8a6605` |
| 33 | `theorem` | [cyclotomic.dvd_X_pow_sub_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean/declarations/cyclotomic-dvd-x-pow-sub-one--9550eb4d00be8a62c4e3da76.md) | 374 | `result-track:9550eb4d00be8a62c4e3da76edc1efe1ac68f2c5cbdb12191695ae3e367e0413` |
| 34 | `theorem` | [prod_cyclotomic_eq_geom_sum](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean/declarations/prod-cyclotomic-eq-geom-sum--bab124337415a49bb38356a9.md) | 386 | `result-track:bab124337415a49bb38356a9adb247c71e0770edaad2d69bb15480726b364037` |
| 35 | `theorem` | [cyclotomic_prime](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean/declarations/cyclotomic-prime--31a80a8ecd2dc5c28c38e0dc.md) | 396 | `result-track:31a80a8ecd2dc5c28c38e0dc08fde8ba70b80ca7d40084f5f6c6765eaec929b8` |
| 36 | `theorem` | [cyclotomic_prime_mul_X_sub_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean/declarations/cyclotomic-prime-mul-x-sub-one--2ca71b1cd95cf1a0dc5ad1c7.md) | 405 | `result-track:2ca71b1cd95cf1a0dc5ad1c7cadad8292c807fa66a4345b5b0136d8a0530523b` |
| 37 | `theorem` | [cyclotomic_two](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean/declarations/cyclotomic-two--67990077eb54487533488c1d.md) | 411 | `result-track:67990077eb54487533488c1d5e7e52b1ca58ac19a3b5951aba5a5a9391c1419c` |
| 38 | `theorem` | [cyclotomic_three](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean/declarations/cyclotomic-three--ef6a67d5be84af2468eed590.md) | 415 | `result-track:ef6a67d5be84af2468eed590620ea31498a077683520389c84eb8febaae0bc12` |
| 39 | `theorem` | [cyclotomic_dvd_geom_sum_of_dvd](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean/declarations/cyclotomic-dvd-geom-sum-of-dvd--df9a11c1e95608d9360f01e6.md) | 419 | `result-track:df9a11c1e95608d9360f01e6d29fed8a73be9be213e6fc0ac45860f9eae63c84` |
| 40 | `theorem` | [X_pow_sub_one_mul_prod_cyclotomic_eq_X_pow_sub_one_of_dvd](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean/declarations/x-pow-sub-one-mul-prod-cyclotomic-eq-x-pow-sub-one-of-dvd--17a19e9444b5e1b7fabc7fda.md) | 431 | `result-track:17a19e9444b5e1b7fabc7fdaefecdb55474958f6ecbb1e67594be629e513eabf` |
| 41 | `theorem` | [X_pow_sub_one_mul_cyclotomic_dvd_X_pow_sub_one_of_dvd](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean/declarations/x-pow-sub-one-mul-cyclotomic-dvd-x-pow-sub-one-of-dvd--5fd345a6f6a5a9b7bb3fe92c.md) | 442 | `result-track:5fd345a6f6a5a9b7bb3fe92cc84333ce772941cb8544cce94427bc44be69a04e` |
| 42 | `theorem` | [cyclotomic_eq_prod_X_pow_sub_one_pow_moebius](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean/declarations/cyclotomic-eq-prod-x-pow-sub-one-pow-moebius--01cdf68c73c56442d39f5f54.md) | 464 | `result-track:01cdf68c73c56442d39f5f54852aaf3f4dda80dabf745e2b8409aeed174e62c9` |
| 43 | `theorem` | [cyclotomic_eq_X_pow_sub_one_div](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean/declarations/cyclotomic-eq-x-pow-sub-one-div--bf8312e37daa3b5428314a5e.md) | 486 | `result-track:bf8312e37daa3b5428314a5e6dea6c4c56746db853491877af97e2933f82fac9` |
| 44 | `theorem` | [X_pow_sub_one_dvd_prod_cyclotomic](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean/declarations/x-pow-sub-one-dvd-prod-cyclotomic--8d6c37974aa3837c7d9763ea.md) | 507 | `result-track:8d6c37974aa3837c7d9763eab9bb67d480c3acf6d4e5fd857aff5fb7fd33346d` |
| 45 | `theorem` | [cyclotomic_eq_prod_X_sub_primitiveRoots](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean/declarations/cyclotomic-eq-prod-x-sub-primitiveroots--c5ef7bac7335e4964b7ba594.md) | 522 | `result-track:c5ef7bac7335e4964b7ba5942f91ad59d5a08a9d4b6ca9511591b02155e9bc73` |
| 46 | `theorem` | [eq_cyclotomic_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean/declarations/eq-cyclotomic-iff--97294aab5627f73ad78183c1.md) | 538 | `result-track:97294aab5627f73ad78183c14b8894167fb20ca8290983973c4a757941d54460` |
| 47 | `theorem` | [cyclotomic_prime_pow_eq_geom_sum](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean/declarations/cyclotomic-prime-pow-eq-geom-sum--3e3cd39bc6d10bd198ccf6ef.md) | 558 | `result-track:3e3cd39bc6d10bd198ccf6ef55be8bbce19cbe12ae19b43ddba11d84ed73481d` |
| 48 | `theorem` | [cyclotomic_prime_pow_mul_X_pow_sub_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean/declarations/cyclotomic-prime-pow-mul-x-pow-sub-one--f736481ead5246928e0088dd.md) | 576 | `result-track:f736481ead5246928e0088dd3ac2462b481bce63372fd34df4110372f3aace57` |
| 49 | `theorem` | [cyclotomic_coeff_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean/declarations/cyclotomic-coeff-zero--090bd00e53768f29728f3d13.md) | 584 | `result-track:090bd00e53768f29728f3d13e26523930e4c46df5e515460f7dca116db164fa0` |
| 50 | `theorem` | [coprime_of_root_cyclotomic](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean/declarations/coprime-of-root-cyclotomic--5035df46088c51f2c463a3a1.md) | 617 | `result-track:5035df46088c51f2c463a3a1dadc88f2777f205ff80e98f5e1319fa8ad7dc830` |
| 51 | `theorem` | [orderOf_root_cyclotomic_dvd](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean/declarations/orderof-root-cyclotomic-dvd--f443f4ddaff1c2d417f64672.md) | 638 | `result-track:f443f4ddaff1c2d417f646724d6e25e225309630bd963e8b2f1395b4e871a26b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
