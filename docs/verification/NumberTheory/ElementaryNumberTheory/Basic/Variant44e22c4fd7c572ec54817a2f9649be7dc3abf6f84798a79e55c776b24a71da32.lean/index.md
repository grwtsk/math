# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Basic.Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "089ad960e973126618ed8ba9d3fe31ee301744e3",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `089ad960e973126618ed8ba9d3fe31ee301744e3`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.EuclideanDomain.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factors` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Coprime.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PrincipalIdealDomain` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean/declarations/instance--7d09cb3d0ffdfa588db14292.md) | 44 | `declaration-track:7d09cb3d0ffdfa588db14292acfb14643efe9a0ff5268a9ef0c2a011bef145e1` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean/declarations/instance--f0070693a6012f4c7aa3a1b0.md) | 62 | `declaration-track:f0070693a6012f4c7aa3a1b067ff9d4cc15132a2994daf65ee132f6245f3d641` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean/declarations/instance--7ea87d456f6bbe4023a55c63.md) | 68 | `declaration-track:7ea87d456f6bbe4023a55c636146736b9f857c7e9b480b328313150db41e68b6` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean/declarations/instance--9206bba3ed6cd036d42d275c.md) | 78 | `declaration-track:9206bba3ed6cd036d42d275cbeca6109195d200e11526dba66b4b0d670bcd84a` |
| 5 | `theorem` | [gcd_eq_nat_gcd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean/declarations/gcd-eq-nat-gcd--82cd6d993b6a54d5fe345258.md) | 84 | `result-track:82cd6d993b6a54d5fe345258f5ab4e2c1096b0171c83ad785c98ea3ef1cac57c` |
| 6 | `theorem` | [lcm_eq_nat_lcm](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean/declarations/lcm-eq-nat-lcm--ee3dd9d77d584bbece27f078.md) | 88 | `result-track:ee3dd9d77d584bbece27f0787030d084dba6880504bfa32d47bbb75305fd8ad1` |
| 7 | `instance` | [normalizationMonoid](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean/declarations/normalizationmonoid--b9989fa698a70296cbd09104.md) | 96 | `declaration-track:b9989fa698a70296cbd091042b7675fc353ccae66c72e3f4858e66dbb66033ae` |
| 8 | `theorem` | [normUnit_eq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean/declarations/normunit-eq--d1acfe60d7efd29244e0c266.md) | 107 | `result-track:d1acfe60d7efd29244e0c266ed87f33a065f307974765d9481eb7b9da62d0919` |
| 9 | `theorem` | [normalize_of_nonneg](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean/declarations/normalize-of-nonneg--d7ba2d69b4ca648e51a6ce0a.md) | 109 | `result-track:d7ba2d69b4ca648e51a6ce0a7c99431f985aafbb332c2ac615fb6243b24cf61a` |
| 10 | `theorem` | [normalize_of_nonpos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean/declarations/normalize-of-nonpos--58a36fc3c0e09c2196403744.md) | 113 | `result-track:58a36fc3c0e09c219640374486f3805840b5924690bc54747d128110b888eb05` |
| 11 | `theorem` | [normalize_coe_nat](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean/declarations/normalize-coe-nat--6335fd3f5b24e449134e2e11.md) | 120 | `result-track:6335fd3f5b24e449134e2e11b39db5a35649153b158678bc726253d01105b2a3` |
| 12 | `theorem` | [abs_eq_normalize](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean/declarations/abs-eq-normalize--a0779fb106e69049cb4a3b2b.md) | 124 | `result-track:a0779fb106e69049cb4a3b2ba744987a4dd5dfd602bfa0abcd36bbf1cca3f8ab` |
| 13 | `theorem` | [nonneg_of_normalize_eq_self](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean/declarations/nonneg-of-normalize-eq-self--17fc72b539e677487833b541.md) | 128 | `result-track:17fc72b539e677487833b54190c22aad8b90499d1b90fdc3881ebd9da3299843` |
| 14 | `theorem` | [nonneg_iff_normalize_eq_self](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean/declarations/nonneg-iff-normalize-eq-self--bf4f18ac8f25a74f59a1265b.md) | 132 | `result-track:bf4f18ac8f25a74f59a1265b941aec1deeefaa339deeeded1cded4fe603a4749` |
| 15 | `theorem` | [eq_of_associated_of_nonneg](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean/declarations/eq-of-associated-of-nonneg--76459c34c0942775b79f792f.md) | 136 | `result-track:76459c34c0942775b79f792f8e97315c598453331a786fff7fe0fe9ded2ba625` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean/declarations/instance--10f62866a29e7273d4430adf.md) | 145 | `declaration-track:10f62866a29e7273d4430adfb92f70d8af99df3879131fe952489de853a41eaa` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean/declarations/instance--041b3ddc662a7270cf8f8f3b.md) | 157 | `declaration-track:041b3ddc662a7270cf8f8f3b3ef83b4fd51efc9cff6cef199db1350b00287ed0` |
| 18 | `theorem` | [coe_gcd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean/declarations/coe-gcd--941aebade6e874c68de16692.md) | 163 | `result-track:941aebade6e874c68de16692c57224a4d607841b12bd2429be8433d94086a53e` |
| 19 | `theorem` | [coe_lcm](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean/declarations/coe-lcm--4de7767c8631d866ebb8ed36.md) | 167 | `result-track:4de7767c8631d866ebb8ed367296658228dc48c969859eea483af9f197607180` |
| 20 | `theorem` | [natAbs_gcd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean/declarations/natabs-gcd--9668c98b9b111758a567a2e4.md) | 171 | `result-track:9668c98b9b111758a567a2e4fc2b93f0545644f3b450fc7c2ad7bfb96657f228` |
| 21 | `theorem` | [natAbs_lcm](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean/declarations/natabs-lcm--94fdd752b512adc001c89a6f.md) | 175 | `result-track:94fdd752b512adc001c89a6fd2cb1588dd09fbfab69e698c211c731c1ea8f389` |
| 22 | `theorem` | [exists_unit_of_abs](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean/declarations/exists-unit-of-abs--e1dfc5f5717bdde1a20d13d3.md) | 181 | `result-track:e1dfc5f5717bdde1a20d13d30c2252e9b07f9319d12f1ad6dcfe929a30302827` |
| 23 | `theorem` | [gcd_eq_natAbs](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean/declarations/gcd-eq-natabs--830da30e07dbd12ae6fa8cd3.md) | 190 | `result-track:830da30e07dbd12ae6fa8cd3ccc90c0fc31e6abddd71a39cbed0ac690fb34f1c` |
| 24 | `theorem` | [gcd_eq_one_iff_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean/declarations/gcd-eq-one-iff-coprime--bd9f50bd515d486fe885b224.md) | 194 | `result-track:bd9f50bd515d486fe885b224312f8cfc5d79597215731e896fbc0ad7df3fdfa1` |
| 25 | `theorem` | [coprime_iff_nat_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean/declarations/coprime-iff-nat-coprime--97148e7fb47501a89a97cb6c.md) | 210 | `result-track:97148e7fb47501a89a97cb6ce91939cb7592e53e88908788695da467257b16cc` |
| 26 | `theorem` | [gcd_ne_one_iff_gcd_mul_right_ne_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean/declarations/gcd-ne-one-iff-gcd-mul-right-ne-one--a95111cdec3a20225b2350e0.md) | 215 | `result-track:a95111cdec3a20225b2350e03f53774d9549ef95980402803efdaa7bf0765c66` |
| 27 | `theorem` | [gcd_eq_one_of_gcd_mul_right_eq_one_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean/declarations/gcd-eq-one-of-gcd-mul-right-eq-one-left--e1a0d5061d24d62f2e7560b8.md) | 222 | `result-track:e1a0d5061d24d62f2e7560b8f6c412e70700be22cba7fd68a1713cbdb3954eb2` |
| 28 | `theorem` | [gcd_eq_one_of_gcd_mul_right_eq_one_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean/declarations/gcd-eq-one-of-gcd-mul-right-eq-one-right--df8d35df6a253d3ae603140d.md) | 229 | `result-track:df8d35df6a253d3ae603140de47dd79dafb4f0c0ddd1d45bc834540c11f07b9f` |
| 29 | `theorem` | [sq_of_gcd_eq_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean/declarations/sq-of-gcd-eq-one--3337231d3a2a66ca90715d7d.md) | 234 | `result-track:3337231d3a2a66ca90715d7d1fb54e7ddc066fc4179143c9e073ad766f53e8ef` |
| 30 | `theorem` | [sq_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean/declarations/sq-of-coprime--25d18ece968509e0c5782d8d.md) | 247 | `result-track:25d18ece968509e0c5782d8dd79cdcee1c4d47d372e4d9d5ddb13771f3490b68` |
| 31 | `theorem` | [natAbs_euclideanDomain_gcd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean/declarations/natabs-euclideandomain-gcd--258c20228f49597eeb685a6a.md) | 252 | `result-track:258c20228f49597eeb685a6a47857e5b61271e2e0a096be61f9298d64d542330` |
| 32 | `def` | [associatesIntEquivNat](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean/declarations/associatesintequivnat--ed8644809038e1fc9de88e11.md) | 264 | `declaration-track:ed8644809038e1fc9de88e115e2e971594165106087f32f58841dbfb840e598c` |
| 33 | `theorem` | [Int.Prime.dvd_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean/declarations/int-prime-dvd-mul--951b6116394a9e3861dd168b.md) | 275 | `result-track:951b6116394a9e3861dd168b2eb7df22282ae755f0680d7857f352085e7b3f15` |
| 34 | `theorem` | [Int.Prime.dvd_mul'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean/declarations/int-prime-dvd-mul--815be329a7a310d4e5228b96.md) | 280 | `result-track:815be329a7a310d4e5228b96eec35528d2d6019dcea8377b3f27e823bad4f079` |
| 35 | `theorem` | [Int.Prime.dvd_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean/declarations/int-prime-dvd-pow--740b38133caa6a1cf089b88d.md) | 286 | `result-track:740b38133caa6a1cf089b88d9789cde3f8fd67d6bf3a28380f745170305deb00` |
| 36 | `theorem` | [Int.Prime.dvd_pow'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean/declarations/int-prime-dvd-pow--f39b2be17a6cc01e903ee8d0.md) | 292 | `result-track:f39b2be17a6cc01e903ee8d07f8a0d53d46f93ae33ed89697fc50ebd31685fbf` |
| 37 | `theorem` | [prime_two_or_dvd_of_dvd_two_mul_pow_self_two](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean/declarations/prime-two-or-dvd-of-dvd-two-mul-pow-self-two--232d8044a49436a3abc061a9.md) | 298 | `result-track:232d8044a49436a3abc061a9ee8da1a083743629ae2e3d61f20b9c3b5c89dd23` |
| 38 | `theorem` | [Int.exists_prime_and_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean/declarations/int-exists-prime-and-dvd--3cac811115103f5daea18aed.md) | 308 | `result-track:3cac811115103f5daea18aed9490c1f27ce084018169f5743ab6daf5d017143a` |
| 39 | `theorem` | [Nat.factors_eq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean/declarations/nat-factors-eq--fe3329551edb07879cbf3d16.md) | 315 | `result-track:fe3329551edb07879cbf3d165e319278ddfd1e8db9c49522bd79123c09369aab` |
| 40 | `theorem` | [Nat.factors_multiset_prod_of_irreducible](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean/declarations/nat-factors-multiset-prod-of-irreducible--1f1d805ba30f0441db162a82.md) | 328 | `result-track:1f1d805ba30f0441db162a8254a8d62aa3dd9bba8568483aae51c879dfa0f365` |
| 41 | `theorem` | [finite_int_iff_natAbs_finite](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean/declarations/finite-int-iff-natabs-finite--6f3ec7b44a3f78749e3362ca.md) | 341 | `result-track:6f3ec7b44a3f78749e3362cab13ba866294b4f713a01dfa72348900bb9ab4a1f` |
| 42 | `theorem` | [finite_int_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean/declarations/finite-int-iff--cd55ede84ef50ad27f20bb66.md) | 345 | `result-track:cd55ede84ef50ad27f20bb66428f4035d0e28ef5454c4c5721b20d5d09461066` |
| 43 | `instance` | [decidableNat](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean/declarations/decidablenat--4cf972118830bfc16a6b0b12.md) | 349 | `declaration-track:4cf972118830bfc16a6b0b12ecc456d6f686e4fc3480587fe6ea2c62fbac33e7` |
| 44 | `instance` | [decidableInt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean/declarations/decidableint--ab332f3cb9c37bf7321d3365.md) | 353 | `declaration-track:ab332f3cb9c37bf7321d3365a66ca438348f68a821f56011a54e8dd0547efc4d` |
| 45 | `theorem` | [induction_on_primes](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean/declarations/induction-on-primes--224ef76adce1a9334c7c28da.md) | 359 | `result-track:224ef76adce1a9334c7c28da8e9872cb0cb115d1ca79b146fd4ce4019e59bd34` |
| 46 | `theorem` | [Int.associated_natAbs](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean/declarations/int-associated-natabs--6a538e81198b1baff4deba96.md) | 370 | `result-track:6a538e81198b1baff4deba9649dc0fd154d4f3ae5df0515b37b5837c9d4799a7` |
| 47 | `theorem` | [Int.prime_iff_natAbs_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean/declarations/int-prime-iff-natabs-prime--cef4d787a0da717983b59b2f.md) | 374 | `result-track:cef4d787a0da717983b59b2ff7c034aee636bab9e07387ef415d8be4428ff409` |
| 48 | `theorem` | [Int.associated_iff_natAbs](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean/declarations/int-associated-iff-natabs--0a2613dba780841d240e4bf8.md) | 378 | `result-track:0a2613dba780841d240e4bf844702e5e278d33569c08f31395aab88a88f03f7b` |
| 49 | `theorem` | [Int.associated_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean/declarations/int-associated-iff--39363cc9fb174862adac16f0.md) | 384 | `result-track:39363cc9fb174862adac16f0d473e700350d381097656cabeb8268e37eff3930` |
| 50 | `theorem` | [zmultiples_natAbs](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean/declarations/zmultiples-natabs--dab660684359f88cd06b5220.md) | 391 | `result-track:dab660684359f88cd06b52208dddac1925c6325855fdfa8faba7c6dec0d8b358` |
| 51 | `theorem` | [span_natAbs](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean/declarations/span-natabs--eccfa15492d8d65f8f8e399c.md) | 397 | `result-track:eccfa15492d8d65f8f8e399cf958ab4f275c5b44f4c248a537f6125f877caed6` |
| 52 | `theorem` | [eq_pow_of_mul_eq_pow_bit1_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean/declarations/eq-pow-of-mul-eq-pow-bit1-left--ce64c10bc3b1cc4e610d51d5.md) | 405 | `result-track:ce64c10bc3b1cc4e610d51d51dd57de5f8bff54fa4c6a24c8cc3ff1e7fbc90ab` |
| 53 | `theorem` | [eq_pow_of_mul_eq_pow_bit1_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean/declarations/eq-pow-of-mul-eq-pow-bit1-right--73a0ed81a905eb1329d10f8c.md) | 413 | `result-track:73a0ed81a905eb1329d10f8ce5ea9590a5d9284441b73cfeca1e2d6cb874c601` |
| 54 | `theorem` | [eq_pow_of_mul_eq_pow_bit1](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant44e22c4fd7c572ec54817a2f9649be7dc3abf6f84798a79e55c776b24a71da32.lean/declarations/eq-pow-of-mul-eq-pow-bit1--f6cbe4415ca22afc5a64a5ff.md) | 418 | `result-track:f6cbe4415ca22afc5a64a5ff5b40b82c4b6a7a16d2200cb06f7de0086a54dedc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
