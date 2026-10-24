# Verification target: GRWTSK.Algebra.Rat.Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c9f72232eb3095958a8d8d4cb0a2a6e3fd00efa",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean/index.md) · [Full source](../../../../mathematics/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c9f72232eb3095958a8d8d4cb0a2a6e3fd00efa`.

Source path: `GRWTSK/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Cyclotomic.Discriminant` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Eisenstein.IsIntegral` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Norm.AbsNorm` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Prime` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [discr_prime_pow_ne_two'](../../../../mathematics/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean/declarations/discr-prime-pow-ne-two--ca41ff91be51b933e555caea.md) | 39 | `result-track:ca41ff91be51b933e555caea07fb88bc2cccaa597333249f6bbe276c1a2c0278` |
| 2 | `theorem` | [discr_odd_prime'](../../../../mathematics/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean/declarations/discr-odd-prime--bf392402936f7f57c66246d7.md) | 46 | `result-track:bf392402936f7f57c66246d787905c4874bf57f7b10359ece7e4fbbd4aa79c54` |
| 3 | `theorem` | [discr_prime_pow'](../../../../mathematics/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean/declarations/discr-prime-pow--ec56b06215092172b8b5da57.md) | 54 | `result-track:ec56b06215092172b8b5da5721a0e03d1b6bc05d8832583f699a7fd38f1ccd1d` |
| 4 | `theorem` | [discr_prime_pow_eq_unit_mul_pow'](../../../../mathematics/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean/declarations/discr-prime-pow-eq-unit-mul-pow--30c653b4a74cb095aaeea2da.md) | 63 | `result-track:30c653b4a74cb095aaeea2da208bb0d5b76becba4b181220b115c780f3eb049a` |
| 5 | `theorem` | [isIntegralClosure_adjoin_singleton_of_prime_pow](../../../../mathematics/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean/declarations/isintegralclosure-adjoin-singleton-of-prime-pow--d9f49509b9b011613403db9f.md) | 71 | `result-track:d9f49509b9b011613403db9fc51fd5d89bf169371da783f366968f3843ab339f` |
| 6 | `theorem` | [isIntegralClosure_adjoin_singleton_of_prime](../../../../mathematics/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean/declarations/isintegralclosure-adjoin-singleton-of-prime--042faad36abb30e02e58a868.md) | 117 | `result-track:042faad36abb30e02e58a868e8f62284ce02d70f32b5621dc66284cad7a1822c` |
| 7 | `theorem` | [cyclotomicRing_isIntegralClosure_of_prime_pow](../../../../mathematics/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean/declarations/cyclotomicring-isintegralclosure-of-prime-pow--e417aafbbd8568bbb3627abb.md) | 124 | `result-track:e417aafbbd8568bbb3627abb27d05a6b0ac61bfb03b7f7be81486ac36241c705` |
| 8 | `theorem` | [cyclotomicRing_isIntegralClosure_of_prime](../../../../mathematics/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean/declarations/cyclotomicring-isintegralclosure-of-prime--1349368e51d2b29f5ff9d5b6.md) | 135 | `result-track:1349368e51d2b29f5ff9d5b60aba55b828013cdef7be804fff6bbd6131499ba9` |
| 9 | `def` | [_root_.IsPrimitiveRoot.adjoinEquivRingOfIntegers](../../../../mathematics/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean/declarations/root-isprimitiveroot-adjoinequivringofintegers--3dd4ea49fe8145396dc56a6c.md) | 155 | `declaration-track:3dd4ea49fe8145396dc56a6c770cb5ddd08a3730d3bd59bc1d04e69fb8409b2a` |
| 10 | `instance` | [IsCyclotomicExtension.ringOfIntegers](../../../../mathematics/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean/declarations/iscyclotomicextension-ringofintegers--5be8f3337345932c55630348.md) | 162 | `declaration-track:5be8f3337345932c5563034801b0861d5bfb535b586da47a47e3d7367e338eb2` |
| 11 | `def` | [integralPowerBasis](../../../../mathematics/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean/declarations/integralpowerbasis--a6c83c6d2717841f9161e0f5.md) | 169 | `declaration-track:a6c83c6d2717841f9161e0f5c3ff4277353103f62cec707b51847881a28004a8` |
| 12 | `abbrev` | [toInteger](../../../../mathematics/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean/declarations/tointeger--7fc0d78d421c5e337ace231f.md) | 174 | `declaration-track:7fc0d78d421c5e337ace231f115e627768674667a9e199649687f7450f7a5c0a` |
| 13 | `lemma` | [coe_toInteger](../../../../mathematics/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean/declarations/coe-tointeger--69f842dfdff2163b4bd81a12.md) | 178 | `result-track:69f842dfdff2163b4bd81a12017d863e7d35af549a60562eb251bd2aee648a74` |
| 14 | `lemma` | [finite_quotient_toInteger_sub_one](../../../../mathematics/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean/declarations/finite-quotient-tointeger-sub-one--e110c7c8d60493684429b294.md) | 181 | `result-track:e110c7c8d60493684429b294f29f3a28d0529c44bb540df76261e9c5d8787af3` |
| 15 | `lemma` | [card_quotient_toInteger_sub_one](../../../../mathematics/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean/declarations/card-quotient-tointeger-sub-one--49da508fc669dcff459440ae.md) | 190 | `result-track:49da508fc669dcff459440ae4f487562b638e9f19e0e0d182d89f11a7a25c5d9` |
| 16 | `lemma` | [toInteger_isPrimitiveRoot](../../../../mathematics/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean/declarations/tointeger-isprimitiveroot--277d242219cb395b720504e3.md) | 195 | `result-track:277d242219cb395b720504e3edc783db375dba225094c21f38d1eb24a8eeb208` |
| 17 | `theorem` | [integralPowerBasis_gen](../../../../mathematics/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean/declarations/integralpowerbasis-gen--0336c7e94003a6b8b49177dc.md) | 202 | `result-track:0336c7e94003a6b8b49177dc66fee0db355774341fe1c89f76e2cbfd8dd512f3` |
| 18 | `theorem` | [integralPowerBasis_dim](../../../../mathematics/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean/declarations/integralpowerbasis-dim--df2f5129cc49ceffbc19a0d0.md) | 216 | `result-track:df2f5129cc49ceffbc19a0d0d0a8d969eba6c639ce992adb23857a9d9d62615c` |
| 19 | `def` | [_root_.IsPrimitiveRoot.adjoinEquivRingOfIntegers'](../../../../mathematics/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean/declarations/root-isprimitiveroot-adjoinequivringofintegers--31566e80e11ec95a94621594.md) | 223 | `declaration-track:31566e80e11ec95a946215944c1288e262f32c183dc0b28ab9745d0a915ba22d` |
| 20 | `instance` | [_root_.IsCyclotomicExtension.ring_of_integers'](../../../../mathematics/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean/declarations/root-iscyclotomicextension-ring-of-integers--b9dbb27f1dab621139fa6e64.md) | 230 | `declaration-track:b9dbb27f1dab621139fa6e64c9aeb1ae010c3b4a0415ad43aeb46e9eb5d9df85` |
| 21 | `def` | [integralPowerBasis'](../../../../mathematics/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean/declarations/integralpowerbasis--7d072d37a08143bb61cd38c4.md) | 237 | `declaration-track:7d072d37a08143bb61cd38c4ab81f69438e30b211aa12d0357f9d6e2fcdd0c23` |
| 22 | `theorem` | [integralPowerBasis'_gen](../../../../mathematics/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean/declarations/integralpowerbasis-gen--240a63cdec898af0bc296446.md) | 243 | `result-track:240a63cdec898af0bc2964463e32a58cbc8d5a9121c2edd907720b67a126a41d` |
| 23 | `theorem` | [power_basis_int'_dim](../../../../mathematics/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean/declarations/power-basis-int-dim--4f374456558eef377348cd5e.md) | 248 | `result-track:4f374456558eef377348cd5e36ac5873d8502937238e0ec2151dc39be9e644ed` |
| 24 | `def` | [subOneIntegralPowerBasis](../../../../mathematics/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean/declarations/suboneintegralpowerbasis--a58f91f8b05acd087e1d4e0b.md) | 256 | `declaration-track:a58f91f8b05acd087e1d4e0baa135d75ab207922aa6c78f5236338329b0de89a` |
| 25 | `theorem` | [subOneIntegralPowerBasis_gen](../../../../mathematics/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean/declarations/suboneintegralpowerbasis-gen--f99c4e53b87d9fb27b4dce7e.md) | 267 | `result-track:f99c4e53b87d9fb27b4dce7e45871a4d80080be64c874dc2881bf0f0ada55c72` |
| 26 | `def` | [subOneIntegralPowerBasis'](../../../../mathematics/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean/declarations/suboneintegralpowerbasis--3c6413961865da9d8a3b8486.md) | 275 | `declaration-track:3c6413961865da9d8a3b8486b99b9bff2b0f89c664e3151fea65e9b2a02a86b3` |
| 27 | `theorem` | [subOneIntegralPowerBasis'_gen](../../../../mathematics/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean/declarations/suboneintegralpowerbasis-gen--8c0b41d4d0ad69f36cb26ab0.md) | 281 | `result-track:8c0b41d4d0ad69f36cb26ab06a9db036fd55be671bb952bf8dc12acd33142469` |
| 28 | `theorem` | [zeta_sub_one_prime_of_ne_two](../../../../mathematics/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean/declarations/zeta-sub-one-prime-of-ne-two--97241ea0da6aacb3513dbdb4.md) | 290 | `result-track:97241ea0da6aacb3513dbdb4feca28f1ec62ca7c5a24d75354f8b091d00f115a` |
| 29 | `theorem` | [zeta_sub_one_prime_of_two_pow](../../../../mathematics/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean/declarations/zeta-sub-one-prime-of-two-pow--93104d118215aa873cc6b3f6.md) | 309 | `result-track:93104d118215aa873cc6b3f6f36a120972e4e8a1e3f5b3fb6f2d6541e099c8d8` |
| 30 | `theorem` | [zeta_sub_one_prime](../../../../mathematics/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean/declarations/zeta-sub-one-prime--8ec36c033db860923b6af1a0.md) | 337 | `result-track:8ec36c033db860923b6af1a0be9bd427271e4429448060a97412442acf9f1031` |
| 31 | `theorem` | [zeta_sub_one_prime'](../../../../mathematics/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean/declarations/zeta-sub-one-prime--fb28a730b501879a6c8699c6.md) | 345 | `result-track:fb28a730b501879a6c8699c609e0ea8da9e23d5bd13dc9d6e5f6333f8bf9fc83` |
| 32 | `theorem` | [subOneIntegralPowerBasis_gen_prime](../../../../mathematics/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean/declarations/suboneintegralpowerbasis-gen-prime--6512a413cfa855140bca1c1b.md) | 350 | `result-track:6512a413cfa855140bca1c1bde4ec59a3453f6f90063d8a671140f71aab58775` |
| 33 | `theorem` | [subOneIntegralPowerBasis'_gen_prime](../../../../mathematics/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean/declarations/suboneintegralpowerbasis-gen-prime--ac26f3f7d73b1cd01b90d34a.md) | 355 | `result-track:ac26f3f7d73b1cd01b90d34a6418a31bd46b9a8981ed0955316c98e1ca54c1f7` |
| 34 | `lemma` | [norm_toInteger_pow_sub_one_of_prime_pow_ne_two](../../../../mathematics/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean/declarations/norm-tointeger-pow-sub-one-of-prime-pow-ne-two--deb9ecfc52e905884808c10d.md) | 362 | `result-track:deb9ecfc52e905884808c10d316bfc7667d15be7212fa0546dee9d0ee17f1d7d` |
| 35 | `lemma` | [norm_toInteger_pow_sub_one_of_two](../../../../mathematics/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean/declarations/norm-tointeger-pow-sub-one-of-two--a2cffe1e337d6487c0e9965a.md) | 373 | `result-track:a2cffe1e337d6487c0e9965a764d7ed5691be1b9c798356e9170da331284259c` |
| 36 | `lemma` | [norm_toInteger_pow_sub_one_of_prime_ne_two](../../../../mathematics/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean/declarations/norm-tointeger-pow-sub-one-of-prime-ne-two--862d60b64d809269cf88a876.md) | 382 | `result-track:862d60b64d809269cf88a876f75e023d30248ba269b088271cfaa8fb0773934e` |
| 37 | `lemma` | [norm_toInteger_sub_one_of_prime_ne_two](../../../../mathematics/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean/declarations/norm-tointeger-sub-one-of-prime-ne-two--c31a5c8715321997c333aef9.md) | 393 | `result-track:c31a5c8715321997c333aef93b3483c644699c76cb8e5398db3ea76c64911579` |
| 38 | `lemma` | [norm_toInteger_sub_one_of_prime_ne_two'](../../../../mathematics/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean/declarations/norm-tointeger-sub-one-of-prime-ne-two--ac3698ebc25f659da59240e1.md) | 401 | `result-track:ac3698ebc25f659da59240e147da558f22e426cae01e1a238b52f09a7005686c` |
| 39 | `lemma` | [prime_norm_toInteger_sub_one_of_prime_pow_ne_two](../../../../mathematics/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean/declarations/prime-norm-tointeger-sub-one-of-prime-pow-ne-two--30c6314a18e06ddd95a48bd9.md) | 409 | `result-track:30c6314a18e06ddd95a48bd9ef5b47c114455efcade8b25c37da5b022e2efa62` |
| 40 | `lemma` | [prime_norm_toInteger_sub_one_of_prime_ne_two](../../../../mathematics/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean/declarations/prime-norm-tointeger-sub-one-of-prime-ne-two--4ada0e80536cfaf9db039fd1.md) | 419 | `result-track:4ada0e80536cfaf9db039fd1986eeee8d3e7dd98cda0b94d88c488a6b4c8c2bf` |
| 41 | `lemma` | [prime_norm_toInteger_sub_one_of_prime_ne_two'](../../../../mathematics/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean/declarations/prime-norm-tointeger-sub-one-of-prime-ne-two--68cc5766f0d46334fa4452ae.md) | 429 | `result-track:68cc5766f0d46334fa4452aec61841b0a0f8c91f99fe1c79232d3eacc3380cbd` |
| 42 | `theorem` | [not_exists_int_prime_dvd_sub_of_prime_pow_ne_two](../../../../mathematics/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean/declarations/not-exists-int-prime-dvd-sub-of-prime-pow-ne-two--eafa06e0f614b50c15e56b79.md) | 438 | `result-track:eafa06e0f614b50c15e56b79fe7164dea7e964f7df37ea69a2a35fb02d7862d8` |
| 43 | `theorem` | [not_exists_int_prime_dvd_sub_of_prime_ne_two](../../../../mathematics/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean/declarations/not-exists-int-prime-dvd-sub-of-prime-ne-two--9341835b01ee6620cbaf1e24.md) | 476 | `result-track:9341835b01ee6620cbaf1e2427edd1a937f4a339b4dcaa71c62a91228f315d46` |
| 44 | `theorem` | [not_exists_int_prime_dvd_sub_of_prime_ne_two'](../../../../mathematics/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean/declarations/not-exists-int-prime-dvd-sub-of-prime-ne-two--de94a7a305f995e5fbb63cfe.md) | 486 | `result-track:de94a7a305f995e5fbb63cfef03cdc6bcaeb28687bafc5be8f11d40ea2ea2b7d` |
| 45 | `theorem` | [finite_quotient_span_sub_one](../../../../mathematics/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean/declarations/finite-quotient-span-sub-one--5eb0f43daf62fc6ec95f3ad4.md) | 494 | `result-track:5eb0f43daf62fc6ec95f3ad4f26d08211e331d534f426de0861db1461cb2aef1` |
| 46 | `theorem` | [finite_quotient_span_sub_one'](../../../../mathematics/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean/declarations/finite-quotient-span-sub-one--e4c7a7160b049ad8ab841450.md) | 503 | `result-track:e4c7a7160b049ad8ab8414507683b0629a9be5fc1fa9ad0773e406d7e31cd5a1` |
| 47 | `lemma` | [toInteger_sub_one_dvd_prime](../../../../mathematics/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean/declarations/tointeger-sub-one-dvd-prime--b6a375721064d42dc42985c9.md) | 512 | `result-track:b6a375721064d42dc42985c9d4ae8eeb587408f55439219662ed79745b2e5dfb` |
| 48 | `lemma` | [toInteger_sub_one_dvd_prime'](../../../../mathematics/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean/declarations/tointeger-sub-one-dvd-prime--41358f88c490a45bacd6fb83.md) | 535 | `result-track:41358f88c490a45bacd6fb839192882e71b47072de961e91fba2a6cb301c20db` |
| 49 | `lemma` | [toInteger_sub_one_not_dvd_two](../../../../mathematics/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean/declarations/tointeger-sub-one-not-dvd-two--33bc8a9ddda96de0094d9bef.md) | 542 | `result-track:33bc8a9ddda96de0094d9befcac8541487247edba5582572c2d22d982339ee3e` |
| 50 | `theorem` | [absdiscr_prime_pow](../../../../mathematics/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean/declarations/absdiscr-prime-pow--67b568ab07ed3ae49a9237d5.md) | 568 | `result-track:67b568ab07ed3ae49a9237d571d09b4af0337af7ba4e7c5007aef56600be6095` |
| 51 | `theorem` | [absdiscr_prime_pow_succ](../../../../mathematics/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean/declarations/absdiscr-prime-pow-succ--4890a7394bbe07d02ba6031a.md) | 592 | `result-track:4890a7394bbe07d02ba6031ae7156817b7118c0a619e4dda27e8ab4807aaef42` |
| 52 | `theorem` | [absdiscr_prime](../../../../mathematics/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean/declarations/absdiscr-prime--25ebe9d658623eaae8df9015.md) | 599 | `result-track:25ebe9d658623eaae8df9015ee0703b33c2437be23450a125501ba245add69be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
