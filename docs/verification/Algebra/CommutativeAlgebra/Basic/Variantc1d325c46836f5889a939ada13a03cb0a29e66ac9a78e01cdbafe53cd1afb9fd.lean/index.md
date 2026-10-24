# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Basic.Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31ddc3a601ed5ecf54b23a35f16c478a7a2d2c0b",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31ddc3a601ed5ecf54b23a35f16c478a7a2d2c0b`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.NeZero` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.BigOperators` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RootsOfUnity.Complex` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Lifts` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Splits` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Algebra` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.RatFunc` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Separable` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RootsOfUnity.Basic` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cyclotomic'](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean/declarations/cyclotomic--69a3413bda74cf50d6d977fe.md) | 76 | `declaration-track:69a3413bda74cf50d6d977fe1e1c40c1fb5b389474cc3b6ce67c68a2383dafbc` |
| 2 | `theorem` | [cyclotomic'_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean/declarations/cyclotomic-zero--12e70575476a28d5c38cccf7.md) | 82 | `result-track:12e70575476a28d5c38cccf744255738baf8994a9ef493517d38fefb73f7ac8e` |
| 3 | `theorem` | [cyclotomic'_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean/declarations/cyclotomic-one--aba6b38561712c65582dadac.md) | 88 | `result-track:aba6b38561712c65582dadacf0b8ad8250a58ccb3470a648a28179061bc82371` |
| 4 | `theorem` | [cyclotomic'_two](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean/declarations/cyclotomic-two--9fb31c6e0b080ea34d3d0429.md) | 95 | `result-track:9fb31c6e0b080ea34d3d04292061c3b815b4c8f32e0c142d48c6a57c440f8356` |
| 5 | `theorem` | [cyclotomic'.monic](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean/declarations/cyclotomic-monic--4ab37d8ab1de042d32ebf381.md) | 105 | `result-track:4ab37d8ab1de042d32ebf38109efcc67d092996196c9217269c866c7bd15fddd` |
| 6 | `theorem` | [cyclotomic'_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean/declarations/cyclotomic-ne-zero--764161b1031261414eb2ab15.md) | 111 | `result-track:764161b1031261414eb2ab152bf6780738a9acb8a53eb5fbe3ea8be104abe904` |
| 7 | `theorem` | [natDegree_cyclotomic'](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean/declarations/natdegree-cyclotomic--52a2a0ed4bdf1314fbb15a60.md) | 117 | `result-track:52a2a0ed4bdf1314fbb15a60a01f755921d5f25f2aa9524c068b9be217a470b7` |
| 8 | `theorem` | [degree_cyclotomic'](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean/declarations/degree-cyclotomic--62a2f681b1e14287e1104d9d.md) | 128 | `result-track:62a2f681b1e14287e1104d9dfec1d947bbc0e630611c5c2a8edba9200819a569` |
| 9 | `theorem` | [roots_of_cyclotomic](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean/declarations/roots-of-cyclotomic--dff875750e8f64bb55c2ec03.md) | 134 | `result-track:dff875750e8f64bb55c2ec0369806c565bdcd42e6f074160bf4e92eeea52a857` |
| 10 | `theorem` | [X_pow_sub_one_eq_prod](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean/declarations/x-pow-sub-one-eq-prod--7033d7deb89d62072b0941c8.md) | 141 | `result-track:7033d7deb89d62072b0941c8d1903d15128482259531d4911f1916f4a1a434b5` |
| 11 | `theorem` | [cyclotomic'_splits](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean/declarations/cyclotomic-splits--5f298114b68f9323961af86a.md) | 161 | `result-track:5f298114b68f9323961af86a1ce360ff7872d02b0cd4c386d5f3fceb9945f654` |
| 12 | `theorem` | [X_pow_sub_one_splits](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean/declarations/x-pow-sub-one-splits--638bddaa4b088c54aecf73ee.md) | 168 | `result-track:638bddaa4b088c54aecf73ee8f25a3eef1581b1170c15698f17932fec4e16866` |
| 13 | `theorem` | [prod_cyclotomic'_eq_X_pow_sub_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean/declarations/prod-cyclotomic-eq-x-pow-sub-one--e60b43aad9e6a83a52dbd9bb.md) | 176 | `result-track:e60b43aad9e6a83a52dbd9bb733376a33d1f38a3136ffc8f2f1ab11515a434c5` |
| 14 | `theorem` | [cyclotomic'_eq_X_pow_sub_one_div](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean/declarations/cyclotomic-eq-x-pow-sub-one-div--fa6a23cc7c4af4347685b985.md) | 188 | `result-track:fa6a23cc7c4af4347685b98592df315a5ef2c7096f49982ba57ba8132458940e` |
| 15 | `theorem` | [int_coeff_of_cyclotomic'](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean/declarations/int-coeff-of-cyclotomic--ffaa29961cbced2988e2135e.md) | 208 | `result-track:ffaa29961cbced2988e2135e4f704a2aadd266adf225484b9bcb2bdb2ef34c3a` |
| 16 | `theorem` | [unique_int_coeff_of_cycl](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean/declarations/unique-int-coeff-of-cycl--ff87f34008decdc71328385d.md) | 245 | `result-track:ff87f34008decdc71328385d93b2886e41e4ec838d5a898ac860889c1910a13b` |
| 17 | `def` | [cyclotomic](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean/declarations/cyclotomic--7d914078942859f8c82d8f62.md) | 261 | `declaration-track:7d914078942859f8c82d8f6227abdfad2265f0a00d47d8682b6c2e0e163227bc` |
| 18 | `theorem` | [int_cyclotomic_rw](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean/declarations/int-cyclotomic-rw--d0768c2f1734ea096eafa87e.md) | 266 | `result-track:d0768c2f1734ea096eafa87ecf44ff11578be9bb95376b121758f9164584c41d` |
| 19 | `theorem` | [map_cyclotomic_int](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean/declarations/map-cyclotomic-int--5b02192ef5d117aa1a8bf707.md) | 274 | `result-track:5b02192ef5d117aa1a8bf70734fe7223588d58c4e3d802eb6c78c91d0379bc7b` |
| 20 | `theorem` | [int_cyclotomic_spec](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean/declarations/int-cyclotomic-spec--ad0b5a3043cc9d3fe9cef39f.md) | 281 | `result-track:ad0b5a3043cc9d3fe9cef39f12a933fb9fe65bc1e63152d489d865c48e9cc094` |
| 21 | `theorem` | [int_cyclotomic_unique](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean/declarations/int-cyclotomic-unique--260c4db6890f2134d552073f.md) | 291 | `result-track:260c4db6890f2134d552073f73ac8fa7126bb600dbbf3e4b32531cc6d1322f6f` |
| 22 | `theorem` | [map_cyclotomic](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean/declarations/map-cyclotomic--b96695afcf7d6067d7f353b2.md) | 299 | `result-track:b96695afcf7d6067d7f353b2076e6d96ba1a814c6392559e5b6ff3ead0093a53` |
| 23 | `theorem` | [cyclotomic.eval_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean/declarations/cyclotomic-eval-apply--850b9ba9b2f06c6780f82218.md) | 305 | `result-track:850b9ba9b2f06c6780f822180c855b33e28a13f50c4310b1e01abe9562c151a6` |
| 24 | `theorem` | [cyclotomic_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean/declarations/cyclotomic-zero--3fd288ff63aecb668f8b8148.md) | 312 | `result-track:3fd288ff63aecb668f8b8148d0572d127608da68d2d81e265d8cde2721d14056` |
| 25 | `theorem` | [cyclotomic_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean/declarations/cyclotomic-one--0d6017db3aa0acb4abe85661.md) | 318 | `result-track:0d6017db3aa0acb4abe85661b70004add977c3c42239c5b974c89da1d3876fe6` |
| 26 | `theorem` | [cyclotomic.monic](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean/declarations/cyclotomic-monic--4a764f9b1b8d84d549b77cb0.md) | 327 | `result-track:4a764f9b1b8d84d549b77cb0f59c5fcdf4be1511558fea31b85b71a4a09af5b1` |
| 27 | `theorem` | [cyclotomic.isPrimitive](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean/declarations/cyclotomic-isprimitive--7324c6ce57837cf16050376e.md) | 333 | `result-track:7324c6ce57837cf16050376ee62e47264c4ec1ceb672d3093e2ebd4e88ca2243` |
| 28 | `theorem` | [cyclotomic_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean/declarations/cyclotomic-ne-zero--3276016cca979b82c7820c13.md) | 338 | `result-track:3276016cca979b82c7820c1398f94bb0f82e31ce90777645bad67769c5270446` |
| 29 | `theorem` | [degree_cyclotomic](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean/declarations/degree-cyclotomic--4a97ed5de2052b1a8181a829.md) | 343 | `result-track:4a97ed5de2052b1a8181a829d658bc890de27c9e4ad457b6dcd2390c2fba4c84` |
| 30 | `theorem` | [natDegree_cyclotomic](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean/declarations/natdegree-cyclotomic--55276102afb5e47f0c48cee4.md) | 356 | `result-track:55276102afb5e47f0c48cee4d5a67cfe1aeafec0fc4619a561b68cc541deed79` |
| 31 | `theorem` | [degree_cyclotomic_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean/declarations/degree-cyclotomic-pos--5f3228f517947682198adce5.md) | 362 | `result-track:5f3228f517947682198adce55e359b0ee5bc5e1cedff2ed3caf60661e641d7e1` |
| 32 | `theorem` | [prod_cyclotomic_eq_X_pow_sub_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean/declarations/prod-cyclotomic-eq-x-pow-sub-one--7cc312b99fc1d11fc42b164a.md) | 370 | `result-track:7cc312b99fc1d11fc42b164accbb8512a4e9b07ca06a600bef40b312fedeb43a` |
| 33 | `theorem` | [cyclotomic.dvd_X_pow_sub_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean/declarations/cyclotomic-dvd-x-pow-sub-one--3d1349ed730f51454bc8722d.md) | 382 | `result-track:3d1349ed730f51454bc8722d1435ad2d68a777c74ad891d07ae37fb1a0b2086a` |
| 34 | `theorem` | [prod_cyclotomic_eq_geom_sum](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean/declarations/prod-cyclotomic-eq-geom-sum--a90f98cd428280d0e6273d03.md) | 394 | `result-track:a90f98cd428280d0e6273d0396e3f5e7ef9ce5c007b81959c24f019544af654d` |
| 35 | `theorem` | [cyclotomic_prime](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean/declarations/cyclotomic-prime--e8d87ce6b9e5a14af12a8a99.md) | 404 | `result-track:e8d87ce6b9e5a14af12a8a998fb999dc33e14ad0e7b87dd3a4c802bd7121ebc1` |
| 36 | `theorem` | [cyclotomic_prime_mul_X_sub_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean/declarations/cyclotomic-prime-mul-x-sub-one--40d821643e969a7e0ed86b4a.md) | 413 | `result-track:40d821643e969a7e0ed86b4add74b4ea0282819819e973f1ce31d315912a2a11` |
| 37 | `theorem` | [cyclotomic_two](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean/declarations/cyclotomic-two--95dd22799e1e34fe1d87e84e.md) | 419 | `result-track:95dd22799e1e34fe1d87e84eeb8ebbf7da22999a74a4bccf13d50554d3a79dcf` |
| 38 | `theorem` | [cyclotomic_three](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean/declarations/cyclotomic-three--d0ece7508555c42a254c08f0.md) | 423 | `result-track:d0ece7508555c42a254c08f0a40976c13ae1cf55c83a219257e799623defdda3` |
| 39 | `theorem` | [cyclotomic_dvd_geom_sum_of_dvd](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean/declarations/cyclotomic-dvd-geom-sum-of-dvd--d25325a2539c66172be03b26.md) | 427 | `result-track:d25325a2539c66172be03b263494f6981d4c538ba310cd120de231b090031591` |
| 40 | `theorem` | [X_pow_sub_one_mul_prod_cyclotomic_eq_X_pow_sub_one_of_dvd](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean/declarations/x-pow-sub-one-mul-prod-cyclotomic-eq-x-pow-sub-one-of-dvd--e9b67ee6f3b77de70b0ed668.md) | 439 | `result-track:e9b67ee6f3b77de70b0ed6684bd3f14f4354205ac2ebeee51cf6dc77795088e0` |
| 41 | `theorem` | [X_pow_sub_one_mul_cyclotomic_dvd_X_pow_sub_one_of_dvd](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean/declarations/x-pow-sub-one-mul-cyclotomic-dvd-x-pow-sub-one-of-dvd--733404d9c497bee3261bdaf0.md) | 450 | `result-track:733404d9c497bee3261bdaf040129233ff725b2a090b5191b9af3ca02c473f08` |
| 42 | `theorem` | [cyclotomic_eq_prod_X_pow_sub_one_pow_moebius](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean/declarations/cyclotomic-eq-prod-x-pow-sub-one-pow-moebius--b6fe1d8bb55f9becf0fd8ccd.md) | 472 | `result-track:b6fe1d8bb55f9becf0fd8ccdfa2bada1be13c3e4e05449652677982590aec040` |
| 43 | `theorem` | [cyclotomic_eq_X_pow_sub_one_div](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean/declarations/cyclotomic-eq-x-pow-sub-one-div--c7863b3b563be2c1950045b2.md) | 494 | `result-track:c7863b3b563be2c1950045b2220b075abe00ce07509c1c066d2a444383cddb7d` |
| 44 | `theorem` | [X_pow_sub_one_dvd_prod_cyclotomic](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean/declarations/x-pow-sub-one-dvd-prod-cyclotomic--b677743508c3c9fd564a64c4.md) | 515 | `result-track:b677743508c3c9fd564a64c4816e1e4692fbab0bb68a82cb6ee607aace37b896` |
| 45 | `theorem` | [cyclotomic_eq_prod_X_sub_primitiveRoots](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean/declarations/cyclotomic-eq-prod-x-sub-primitiveroots--1bba4c0195cccf8be5b2ea0c.md) | 530 | `result-track:1bba4c0195cccf8be5b2ea0cb0b801aba76caa55b997d0942290f4eb6aaef3e1` |
| 46 | `theorem` | [eq_cyclotomic_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean/declarations/eq-cyclotomic-iff--17bcb33a5d27247e31e3cc24.md) | 546 | `result-track:17bcb33a5d27247e31e3cc2404c7520ac8b40da3a644a7d751cd7598cc48716b` |
| 47 | `theorem` | [cyclotomic_prime_pow_eq_geom_sum](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean/declarations/cyclotomic-prime-pow-eq-geom-sum--18710a54766a8a11121f6671.md) | 566 | `result-track:18710a54766a8a11121f6671f7945c775281b048502e8300f001c7abf8cfc3f2` |
| 48 | `theorem` | [cyclotomic_prime_pow_mul_X_pow_sub_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean/declarations/cyclotomic-prime-pow-mul-x-pow-sub-one--fe0f14c29c2a8582b50a6e0c.md) | 584 | `result-track:fe0f14c29c2a8582b50a6e0cd0295f022dfbf8b2e3a2f8a66607f19570bbe8bd` |
| 49 | `theorem` | [cyclotomic_coeff_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean/declarations/cyclotomic-coeff-zero--a25fb86b04aa532e82fcacaf.md) | 592 | `result-track:a25fb86b04aa532e82fcacaf15628c0bae83113b623ee66f466244ecedd10e26` |
| 50 | `theorem` | [coprime_of_root_cyclotomic](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean/declarations/coprime-of-root-cyclotomic--c086f2c567a8393e04deba1f.md) | 625 | `result-track:c086f2c567a8393e04deba1f8c50c8c17c60de716f6758dcc07ff0525af280ac` |
| 51 | `theorem` | [orderOf_root_cyclotomic_dvd](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean/declarations/orderof-root-cyclotomic-dvd--9dd97feb202291c3fe119287.md) | 646 | `result-track:9dd97feb202291c3fe1192876222e817f766d3b5d84b3e5d22205c2453235317` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
