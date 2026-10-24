# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Basic.Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "98f5e525eb155df803ab5f3f56db05e6fb71e637",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `98f5e525eb155df803ab5f3f56db05e6fb71e637`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.EuclideanDomain.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factors` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Coprime.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PrincipalIdealDomain` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean/declarations/instance--81f4c5c1265ab0744bef0a05.md) | 36 | `declaration-track:81f4c5c1265ab0744bef0a05b433ca901e07f70c4ab2403c700eda388f963a59` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean/declarations/instance--e3b6537bb0b018fb2eb59040.md) | 54 | `declaration-track:e3b6537bb0b018fb2eb59040c2eeed3b6c4ed404ea00b7fc009f2adf0aaa9d50` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean/declarations/instance--22ba5a2a10f2562c34a371a6.md) | 60 | `declaration-track:22ba5a2a10f2562c34a371a65eb963650ac85f19b6be07fa8d7b9aa5ac305c3d` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean/declarations/instance--195598b175c29aaff57e4812.md) | 70 | `declaration-track:195598b175c29aaff57e48127039e7552fd835ff64c3100c4e1dc0ba5f81cc27` |
| 5 | `theorem` | [gcd_eq_nat_gcd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean/declarations/gcd-eq-nat-gcd--2d6fe532a3cccffe7be79102.md) | 76 | `result-track:2d6fe532a3cccffe7be791029c7471fac9f6f8b3b866c46c4197114e1c792ba4` |
| 6 | `theorem` | [lcm_eq_nat_lcm](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean/declarations/lcm-eq-nat-lcm--dbd90571ddf998320e4c7bad.md) | 80 | `result-track:dbd90571ddf998320e4c7bad49fa0a4c9188cdbf64e9867e763bb53d54ef027c` |
| 7 | `instance` | [normalizationMonoid](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean/declarations/normalizationmonoid--9045cd8da198e4448522e441.md) | 88 | `declaration-track:9045cd8da198e4448522e44101ad3bb37a3153dce33c14c8b2b892be52aafa81` |
| 8 | `theorem` | [normUnit_eq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean/declarations/normunit-eq--fee992002dea9175497e01ed.md) | 99 | `result-track:fee992002dea9175497e01ed680c78552bab896b7e34b1802cf054b0db093d94` |
| 9 | `theorem` | [normalize_of_nonneg](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean/declarations/normalize-of-nonneg--91ffcceb04b88b306984bb06.md) | 101 | `result-track:91ffcceb04b88b306984bb06b434ae0242fee3501f236edde88e30cbf6701975` |
| 10 | `theorem` | [normalize_of_nonpos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean/declarations/normalize-of-nonpos--cbfdd5dbd3b3928e60d78473.md) | 105 | `result-track:cbfdd5dbd3b3928e60d78473970aa453f62c6eaf9fdf1f3c401e47ab83b84089` |
| 11 | `theorem` | [normalize_coe_nat](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean/declarations/normalize-coe-nat--d8cd9018ee1fa9a3dd6f9e05.md) | 112 | `result-track:d8cd9018ee1fa9a3dd6f9e05635a67864f9e2650f25088de75f1296e3ee9daa7` |
| 12 | `theorem` | [abs_eq_normalize](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean/declarations/abs-eq-normalize--9c2f8f3a72c5ef7a8c9e743f.md) | 116 | `result-track:9c2f8f3a72c5ef7a8c9e743f603423245d9099753e372932e563a111b42c2970` |
| 13 | `theorem` | [nonneg_of_normalize_eq_self](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean/declarations/nonneg-of-normalize-eq-self--7fb61985b00a4256812d30d1.md) | 120 | `result-track:7fb61985b00a4256812d30d1a22a54dba2539f00b9256bdd51711187e38e2a73` |
| 14 | `theorem` | [nonneg_iff_normalize_eq_self](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean/declarations/nonneg-iff-normalize-eq-self--df56f9092a580f6cabc98791.md) | 124 | `result-track:df56f9092a580f6cabc987910c50089884a3cd3f3d56a9d2abb35d6ee8b14f59` |
| 15 | `theorem` | [eq_of_associated_of_nonneg](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean/declarations/eq-of-associated-of-nonneg--52ceae57ba70dffbf34ea920.md) | 128 | `result-track:52ceae57ba70dffbf34ea92087e6b21dfc66141155636ce1023a117a8428c366` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean/declarations/instance--a78d98562201d6d7f5eb8aa0.md) | 137 | `declaration-track:a78d98562201d6d7f5eb8aa06b4a5965b5c6a7cfbf7857369678161614ffe369` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean/declarations/instance--761347574e3f872b46f80143.md) | 149 | `declaration-track:761347574e3f872b46f801432c86c6acd6bb09b9b0ff48b0ec99a17e96474c03` |
| 18 | `theorem` | [coe_gcd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean/declarations/coe-gcd--bd8523977896c3492cfc8ba4.md) | 155 | `result-track:bd8523977896c3492cfc8ba452b9b0db656bdbadb6e669f33ed122d8da9ccd34` |
| 19 | `theorem` | [coe_lcm](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean/declarations/coe-lcm--62f916a0f060f25aad706be7.md) | 159 | `result-track:62f916a0f060f25aad706be73d13d5824c3c3326d9c87b40f9e9a5e8c4d2fc8d` |
| 20 | `theorem` | [natAbs_gcd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean/declarations/natabs-gcd--7e3eaea42ad549781c9ac4fa.md) | 163 | `result-track:7e3eaea42ad549781c9ac4fa48a8eb6a81ad77df15d6088a5109bbb94012440b` |
| 21 | `theorem` | [natAbs_lcm](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean/declarations/natabs-lcm--0a0d4e498de69b8817575758.md) | 167 | `result-track:0a0d4e498de69b8817575758729a5db4bf75fe667836b4d6759fad10a24cebb0` |
| 22 | `theorem` | [exists_unit_of_abs](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean/declarations/exists-unit-of-abs--ae1f95fbda29384205714b13.md) | 173 | `result-track:ae1f95fbda29384205714b13096d30a7c8c3506c0fdd085254cc4c9de3cb9293` |
| 23 | `theorem` | [gcd_eq_natAbs](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean/declarations/gcd-eq-natabs--950f7e439aad43ec6094ca66.md) | 182 | `result-track:950f7e439aad43ec6094ca667916b7a1024832c748ed3b426089134e5552d76b` |
| 24 | `theorem` | [gcd_eq_one_iff_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean/declarations/gcd-eq-one-iff-coprime--739705f4a7860f4ed83ebe6b.md) | 186 | `result-track:739705f4a7860f4ed83ebe6b507aff2cf64908204b45a9bdc7191f2733c5e332` |
| 25 | `theorem` | [coprime_iff_nat_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean/declarations/coprime-iff-nat-coprime--22a056bc2439ff667e42a86d.md) | 202 | `result-track:22a056bc2439ff667e42a86d3bc973a72fcc859d7479a827443890e595bc2143` |
| 26 | `theorem` | [gcd_ne_one_iff_gcd_mul_right_ne_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean/declarations/gcd-ne-one-iff-gcd-mul-right-ne-one--4de15ae244701fcb7b7ea120.md) | 207 | `result-track:4de15ae244701fcb7b7ea120b469de6e7e1f516a64458c91a04216de2db1a39b` |
| 27 | `theorem` | [gcd_eq_one_of_gcd_mul_right_eq_one_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean/declarations/gcd-eq-one-of-gcd-mul-right-eq-one-left--a27ff26d05cd4ef6aa45c443.md) | 214 | `result-track:a27ff26d05cd4ef6aa45c443f52af6b17746ca5f38d83d0e358ea686226f919c` |
| 28 | `theorem` | [gcd_eq_one_of_gcd_mul_right_eq_one_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean/declarations/gcd-eq-one-of-gcd-mul-right-eq-one-right--c20abd7fbe68c313f39bcc07.md) | 221 | `result-track:c20abd7fbe68c313f39bcc071895f0ed0e49c719801862c43ddc91b3fb571465` |
| 29 | `theorem` | [sq_of_gcd_eq_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean/declarations/sq-of-gcd-eq-one--1514496b3b55b1c075dd92e7.md) | 226 | `result-track:1514496b3b55b1c075dd92e7b129bc67ffc3b302580b460c389c4bfad87b9bb7` |
| 30 | `theorem` | [sq_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean/declarations/sq-of-coprime--049b113ddae6be11bc960b1a.md) | 239 | `result-track:049b113ddae6be11bc960b1a65d848683664f502ecb34ac376453426a02b103f` |
| 31 | `theorem` | [natAbs_euclideanDomain_gcd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean/declarations/natabs-euclideandomain-gcd--e6d40ca4fd0e3f20cf308ff3.md) | 244 | `result-track:e6d40ca4fd0e3f20cf308ff34a98eae915b9c4c33fef6959a82eb83c4a8f0453` |
| 32 | `def` | [associatesIntEquivNat](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean/declarations/associatesintequivnat--df3438e9cb3911a267260898.md) | 256 | `declaration-track:df3438e9cb3911a2672608983b5ddf1f6f4730c03efb27e6564e58b3e22d9cc2` |
| 33 | `theorem` | [Int.Prime.dvd_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean/declarations/int-prime-dvd-mul--2b5a39e49acf1b054a00b02b.md) | 267 | `result-track:2b5a39e49acf1b054a00b02b3315ff087f27f491f53bdb63fc3c783ca42186d7` |
| 34 | `theorem` | [Int.Prime.dvd_mul'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean/declarations/int-prime-dvd-mul--69e187e7af7d45e5b533be32.md) | 272 | `result-track:69e187e7af7d45e5b533be3216850cfed8774cd876cd39f3f482d4a54d6eca1a` |
| 35 | `theorem` | [Int.Prime.dvd_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean/declarations/int-prime-dvd-pow--0308be04792b6e5299542af1.md) | 278 | `result-track:0308be04792b6e5299542af1ce186a2c2abebc4c6a6a1e826edd22c99b73de75` |
| 36 | `theorem` | [Int.Prime.dvd_pow'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean/declarations/int-prime-dvd-pow--c64a03e788a9f228d58ebc59.md) | 284 | `result-track:c64a03e788a9f228d58ebc5968560e4b70d375eaa2f38fad4c9f7dd3c30bf7a2` |
| 37 | `theorem` | [prime_two_or_dvd_of_dvd_two_mul_pow_self_two](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean/declarations/prime-two-or-dvd-of-dvd-two-mul-pow-self-two--315ea20f3b24929c14c5272e.md) | 290 | `result-track:315ea20f3b24929c14c5272e8a7c6f86cf88b7b7d1d643a8afb27f5089b1f7d2` |
| 38 | `theorem` | [Int.exists_prime_and_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean/declarations/int-exists-prime-and-dvd--6c744fb60ab6981298bedead.md) | 300 | `result-track:6c744fb60ab6981298bedeadfa4786f0cc789cf422606195c75254811f30c9d7` |
| 39 | `theorem` | [Nat.factors_eq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean/declarations/nat-factors-eq--542f95e536e25c46fe6b1456.md) | 307 | `result-track:542f95e536e25c46fe6b1456dd719e60044e82dc84f07d5a77a8dd4d0a60bc63` |
| 40 | `theorem` | [Nat.factors_multiset_prod_of_irreducible](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean/declarations/nat-factors-multiset-prod-of-irreducible--a9ecf002d1d7c4fd83633f0c.md) | 320 | `result-track:a9ecf002d1d7c4fd83633f0cc701647ef3c1c0d84c4324c7c09f79a5f8258580` |
| 41 | `theorem` | [finite_int_iff_natAbs_finite](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean/declarations/finite-int-iff-natabs-finite--0d5cb3a29e26c7834b59ca53.md) | 333 | `result-track:0d5cb3a29e26c7834b59ca537f394d8aff3d4169a23948a3593f56f828309e8a` |
| 42 | `theorem` | [finite_int_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean/declarations/finite-int-iff--6b1bf930aba90d69622b0d31.md) | 337 | `result-track:6b1bf930aba90d69622b0d31d59da2547332264dae51ceac1542236344d1c42e` |
| 43 | `instance` | [decidableNat](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean/declarations/decidablenat--ee87b56e2be53cab5fa5e00a.md) | 341 | `declaration-track:ee87b56e2be53cab5fa5e00a22c070fbec5a7a821a3f6d24b0aba1a1dd0e8277` |
| 44 | `instance` | [decidableInt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean/declarations/decidableint--0d21ba6a5a0617329b411f11.md) | 345 | `declaration-track:0d21ba6a5a0617329b411f117e86e6211d21ea1832fb450ff33bccd9d4065f4e` |
| 45 | `theorem` | [induction_on_primes](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean/declarations/induction-on-primes--33cff672e6de5b340d220e7a.md) | 351 | `result-track:33cff672e6de5b340d220e7a16d4ec20e180fd6a13d0d47d7f122358890a9d76` |
| 46 | `theorem` | [Int.associated_natAbs](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean/declarations/int-associated-natabs--6a680cdd5df7741a042b0900.md) | 362 | `result-track:6a680cdd5df7741a042b0900beb02cb6dba9b3dff420849e3be87f1b4138ae87` |
| 47 | `theorem` | [Int.prime_iff_natAbs_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean/declarations/int-prime-iff-natabs-prime--52924d5d9fdcab788fcc4cbd.md) | 366 | `result-track:52924d5d9fdcab788fcc4cbd65cf7d795bc1fd904e3609bd759b3e69264bb98c` |
| 48 | `theorem` | [Int.associated_iff_natAbs](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean/declarations/int-associated-iff-natabs--43b298eed615330bbb32cbab.md) | 370 | `result-track:43b298eed615330bbb32cbabae7f5c2d11a6050adc99297ed06d9c380c4cb146` |
| 49 | `theorem` | [Int.associated_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean/declarations/int-associated-iff--3bdaa0b00ec48baf0be6e170.md) | 376 | `result-track:3bdaa0b00ec48baf0be6e170c1302253aadbbde17a8e3dc65742223161f68bbf` |
| 50 | `theorem` | [zmultiples_natAbs](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean/declarations/zmultiples-natabs--ffd884397d69746c1f6ac84c.md) | 383 | `result-track:ffd884397d69746c1f6ac84c0d809f791bdb2edce5de2d85d560eec54fa6336e` |
| 51 | `theorem` | [span_natAbs](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean/declarations/span-natabs--f3640eeab60552285fe91442.md) | 389 | `result-track:f3640eeab60552285fe9144214b377cd5ccf3df64c0d24ec183c304fb935d23d` |
| 52 | `theorem` | [eq_pow_of_mul_eq_pow_bit1_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean/declarations/eq-pow-of-mul-eq-pow-bit1-left--23731aa47ef992012b1c02af.md) | 397 | `result-track:23731aa47ef992012b1c02afc194e0b6f2fbb796d81674e07de15c96a5dfa013` |
| 53 | `theorem` | [eq_pow_of_mul_eq_pow_bit1_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean/declarations/eq-pow-of-mul-eq-pow-bit1-right--94cbc080bc16045ad4de7435.md) | 405 | `result-track:94cbc080bc16045ad4de7435fa1b68f1183544f85fef73079468fbf5efe2a780` |
| 54 | `theorem` | [eq_pow_of_mul_eq_pow_bit1](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean/declarations/eq-pow-of-mul-eq-pow-bit1--1bb88c9b1ffe84a73e06a87a.md) | 410 | `result-track:1bb88c9b1ffe84a73e06a87a52ed5531275f63bbc47dbd25f0e878a8668c9a70` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
