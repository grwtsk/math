# Verification target: GRWTSK.Algebra.Rat.Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2bfbc50ddf81b8eb63cc4180199762b7548d7efd",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean/index.md) · [Full source](../../../../mathematics/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2bfbc50ddf81b8eb63cc4180199762b7548d7efd`.

Source path: `GRWTSK/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Cyclotomic.Discriminant` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Eisenstein.IsIntegral` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Norm.AbsNorm` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Prime` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [discr_prime_pow_ne_two'](../../../../mathematics/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean/declarations/discr-prime-pow-ne-two--7b2ab0d381bcc9a92f324ce5.md) | 47 | `result-track:7b2ab0d381bcc9a92f324ce59fa8ed3e846080a9fd2912f9d6ef2fcb7f5575b2` |
| 2 | `theorem` | [discr_odd_prime'](../../../../mathematics/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean/declarations/discr-odd-prime--9acfba4d2c6046442109b3d2.md) | 54 | `result-track:9acfba4d2c6046442109b3d2953dc26944fed9c02cecbbd014815c4a58d0c7b2` |
| 3 | `theorem` | [discr_prime_pow'](../../../../mathematics/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean/declarations/discr-prime-pow--ba7d5e76ba06f65914260325.md) | 62 | `result-track:ba7d5e76ba06f6591426032595731a959174acf3d4f6f748ce28953ebedd27c9` |
| 4 | `theorem` | [discr_prime_pow_eq_unit_mul_pow'](../../../../mathematics/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean/declarations/discr-prime-pow-eq-unit-mul-pow--e72a9f6973d5e4d89140702d.md) | 71 | `result-track:e72a9f6973d5e4d89140702dfeb5160ad6b1775302dce7cbdfb22f403e9102b0` |
| 5 | `theorem` | [isIntegralClosure_adjoin_singleton_of_prime_pow](../../../../mathematics/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean/declarations/isintegralclosure-adjoin-singleton-of-prime-pow--718bef5f30b8d4db6ad3ed84.md) | 79 | `result-track:718bef5f30b8d4db6ad3ed848305345ac8cb6eb35ee21104bf07dee0cc8790af` |
| 6 | `theorem` | [isIntegralClosure_adjoin_singleton_of_prime](../../../../mathematics/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean/declarations/isintegralclosure-adjoin-singleton-of-prime--2b916163d19241ed486e2b6d.md) | 125 | `result-track:2b916163d19241ed486e2b6d9b7041e081f462f69dd2fc7758975e48c502699a` |
| 7 | `theorem` | [cyclotomicRing_isIntegralClosure_of_prime_pow](../../../../mathematics/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean/declarations/cyclotomicring-isintegralclosure-of-prime-pow--92da7386560171c2c51bcbd4.md) | 132 | `result-track:92da7386560171c2c51bcbd4c768843035728df8c9555cb62fc3e29edcd0981c` |
| 8 | `theorem` | [cyclotomicRing_isIntegralClosure_of_prime](../../../../mathematics/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean/declarations/cyclotomicring-isintegralclosure-of-prime--e76b903829ec4c0d13e6ccb1.md) | 143 | `result-track:e76b903829ec4c0d13e6ccb162b157614bc975e045163c580c712837f89e0be3` |
| 9 | `def` | [_root_.GRWTSK.Algebra.DiscrPrimePowNeTwoPrime.Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.IsPrimitiveRoot.adjoinEquivRingOfIntegers](../../../../mathematics/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean/declarations/root-grwtsk-algebra-discrprimepownetwoprime-variantfc86d59585bdeec80c7e1--f16f4b8e6228bd6e4f92da46.md) | 163 | `declaration-track:f16f4b8e6228bd6e4f92da468f06bc4d740970b5fe7fa546cde45ad876231965` |
| 10 | `instance` | [IsCyclotomicExtension.ringOfIntegers](../../../../mathematics/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean/declarations/iscyclotomicextension-ringofintegers--d952d7863dcaf58e76c853f6.md) | 170 | `declaration-track:d952d7863dcaf58e76c853f6b179ccef4314dbf83f0ba5b7dbcbeaa0a3eb3e3c` |
| 11 | `def` | [integralPowerBasis](../../../../mathematics/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean/declarations/integralpowerbasis--0d47f6d50c8f0d49aaba51fa.md) | 177 | `declaration-track:0d47f6d50c8f0d49aaba51fa38dc454f098c012044c4ab82e05f91e346854b88` |
| 12 | `abbrev` | [toInteger](../../../../mathematics/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean/declarations/tointeger--d08aff59424ef65c81dfcd42.md) | 182 | `declaration-track:d08aff59424ef65c81dfcd420c66472dc9fa369b63e43577ef1a39331276a102` |
| 13 | `lemma` | [coe_toInteger](../../../../mathematics/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean/declarations/coe-tointeger--04c6ae6b129e90cf31abd434.md) | 186 | `result-track:04c6ae6b129e90cf31abd434a604e82d46280f7337eb4407cf1a32bae8cce438` |
| 14 | `lemma` | [finite_quotient_toInteger_sub_one](../../../../mathematics/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean/declarations/finite-quotient-tointeger-sub-one--0f2c3fd07b446e35beccd203.md) | 189 | `result-track:0f2c3fd07b446e35beccd20375cd969217fe89c36723acb486fd5587edf7c79a` |
| 15 | `lemma` | [card_quotient_toInteger_sub_one](../../../../mathematics/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean/declarations/card-quotient-tointeger-sub-one--642c3a0c1e019882c38c5984.md) | 198 | `result-track:642c3a0c1e019882c38c5984ac35380f63f233b65b6e206bf15187e2121be2b2` |
| 16 | `lemma` | [toInteger_isPrimitiveRoot](../../../../mathematics/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean/declarations/tointeger-isprimitiveroot--3f165a4a6ce44f1fedf58124.md) | 203 | `result-track:3f165a4a6ce44f1fedf58124842bff9163c40db40121aca8d8b8306a67191a44` |
| 17 | `theorem` | [integralPowerBasis_gen](../../../../mathematics/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean/declarations/integralpowerbasis-gen--ade3e321a1bd93ae6575d99b.md) | 210 | `result-track:ade3e321a1bd93ae6575d99b2e357c006bc9b6dfc3de6ce1eae6de79018587ea` |
| 18 | `theorem` | [integralPowerBasis_dim](../../../../mathematics/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean/declarations/integralpowerbasis-dim--4f55c8514390d99b257818c4.md) | 224 | `result-track:4f55c8514390d99b257818c447f15a03a75ec13b5e1b829d4455b8fb39dbfc98` |
| 19 | `def` | [_root_.GRWTSK.Algebra.DiscrPrimePowNeTwoPrime.Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.IsPrimitiveRoot.adjoinEquivRingOfIntegers'](../../../../mathematics/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean/declarations/root-grwtsk-algebra-discrprimepownetwoprime-variantfc86d59585bdeec80c7e1--e83292cb42fe452e0642cc1a.md) | 231 | `declaration-track:e83292cb42fe452e0642cc1a6da044a6daf7c8cfb0f43004d3488bde62704de4` |
| 20 | `instance` | [_root_.GRWTSK.Algebra.DiscrPrimePowNeTwoPrime.Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.IsCyclotomicExtension.ring_of_integers'](../../../../mathematics/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean/declarations/root-grwtsk-algebra-discrprimepownetwoprime-variantfc86d59585bdeec80c7e1--f9c02e0fd3aa7c6b70e1c664.md) | 238 | `declaration-track:f9c02e0fd3aa7c6b70e1c664883dee42b1378d96c54f189796557dfab57db3ef` |
| 21 | `def` | [integralPowerBasis'](../../../../mathematics/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean/declarations/integralpowerbasis--a821268ec3d8ace132bb6d3c.md) | 245 | `declaration-track:a821268ec3d8ace132bb6d3c90ca0d9f5171a49b4bd49c6c82e63783b8a8d163` |
| 22 | `theorem` | [integralPowerBasis'_gen](../../../../mathematics/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean/declarations/integralpowerbasis-gen--6e85948ca3b3fe1d061b2125.md) | 251 | `result-track:6e85948ca3b3fe1d061b2125a625b13e63ee0d4bb09f0fa4ff553b8433482bd7` |
| 23 | `theorem` | [power_basis_int'_dim](../../../../mathematics/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean/declarations/power-basis-int-dim--9b519e114bff3e5d29a02876.md) | 256 | `result-track:9b519e114bff3e5d29a0287629c7892015d11cf81a947d116c93cc8680f65f92` |
| 24 | `def` | [subOneIntegralPowerBasis](../../../../mathematics/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean/declarations/suboneintegralpowerbasis--09c099de12f0913b7b1268b9.md) | 264 | `declaration-track:09c099de12f0913b7b1268b9fdf16920f8764a6aafe1cf6161f5b8530877879f` |
| 25 | `theorem` | [subOneIntegralPowerBasis_gen](../../../../mathematics/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean/declarations/suboneintegralpowerbasis-gen--c3af0327a0f759a2d958b3a5.md) | 275 | `result-track:c3af0327a0f759a2d958b3a54143d82f1a224d863b6edb10870973c1f03e1eba` |
| 26 | `def` | [subOneIntegralPowerBasis'](../../../../mathematics/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean/declarations/suboneintegralpowerbasis--b079511d0992f80589d7fa4d.md) | 283 | `declaration-track:b079511d0992f80589d7fa4da5b01f09cb50b57e535ae8ecb7b7a799270ddbb0` |
| 27 | `theorem` | [subOneIntegralPowerBasis'_gen](../../../../mathematics/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean/declarations/suboneintegralpowerbasis-gen--889cf48809c8957121c7e65f.md) | 289 | `result-track:889cf48809c8957121c7e65ffc49dd00bef78694c4c51c4c358195bc88873cf0` |
| 28 | `theorem` | [zeta_sub_one_prime_of_ne_two](../../../../mathematics/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean/declarations/zeta-sub-one-prime-of-ne-two--375581f74b2007791f274fe4.md) | 298 | `result-track:375581f74b2007791f274fe4f34fac9cf074d8df0cb5e18de183b9aa82242cf1` |
| 29 | `theorem` | [zeta_sub_one_prime_of_two_pow](../../../../mathematics/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean/declarations/zeta-sub-one-prime-of-two-pow--c5aea85ed150e75cc45f6995.md) | 317 | `result-track:c5aea85ed150e75cc45f6995fb6c2aa4f161b36e726be3d042e2f806257ed3a0` |
| 30 | `theorem` | [zeta_sub_one_prime](../../../../mathematics/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean/declarations/zeta-sub-one-prime--d8918b956d477ad09f74698b.md) | 345 | `result-track:d8918b956d477ad09f74698b4c1c4ec00beb0e6764d5de21a51d1bcf8f0990c6` |
| 31 | `theorem` | [zeta_sub_one_prime'](../../../../mathematics/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean/declarations/zeta-sub-one-prime--b3e20081025e2c8c7fbc039c.md) | 353 | `result-track:b3e20081025e2c8c7fbc039ca93ddcc87f7fa7cdb271f42fbaf9c5160a88f617` |
| 32 | `theorem` | [subOneIntegralPowerBasis_gen_prime](../../../../mathematics/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean/declarations/suboneintegralpowerbasis-gen-prime--32e4de166ae743fc6bda40e9.md) | 358 | `result-track:32e4de166ae743fc6bda40e9e4e8654cf52b4e06b8db2e53676577dc05d46559` |
| 33 | `theorem` | [subOneIntegralPowerBasis'_gen_prime](../../../../mathematics/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean/declarations/suboneintegralpowerbasis-gen-prime--f98b26856fc2aeff8dc287e5.md) | 363 | `result-track:f98b26856fc2aeff8dc287e50db370cc8d06e793cbd6af915ed022e6b94cd75d` |
| 34 | `lemma` | [norm_toInteger_pow_sub_one_of_prime_pow_ne_two](../../../../mathematics/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean/declarations/norm-tointeger-pow-sub-one-of-prime-pow-ne-two--885bd3328cf98f9e3438f40d.md) | 370 | `result-track:885bd3328cf98f9e3438f40dae4cdb46aab8dbe2a5cf484f1fcbd36c4f070b58` |
| 35 | `lemma` | [norm_toInteger_pow_sub_one_of_two](../../../../mathematics/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean/declarations/norm-tointeger-pow-sub-one-of-two--f2a33e6536f30e9e3fe49525.md) | 381 | `result-track:f2a33e6536f30e9e3fe49525c5a33672e8a1d0807b150bcb0b03936e4e705769` |
| 36 | `lemma` | [norm_toInteger_pow_sub_one_of_prime_ne_two](../../../../mathematics/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean/declarations/norm-tointeger-pow-sub-one-of-prime-ne-two--fb9a67c0a26281eea8f4efe1.md) | 390 | `result-track:fb9a67c0a26281eea8f4efe162965931fd70ea4f3c11d67cb93173f04499955a` |
| 37 | `lemma` | [norm_toInteger_sub_one_of_prime_ne_two](../../../../mathematics/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean/declarations/norm-tointeger-sub-one-of-prime-ne-two--4e059070a170d21df363284e.md) | 401 | `result-track:4e059070a170d21df363284eb56c66b4d56b5dcdbec22f2caf9045d3cf9e50f6` |
| 38 | `lemma` | [norm_toInteger_sub_one_of_prime_ne_two'](../../../../mathematics/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean/declarations/norm-tointeger-sub-one-of-prime-ne-two--119d4d54bb7c7dca7506507e.md) | 409 | `result-track:119d4d54bb7c7dca7506507e8d5ba3b9d7546988983ec60b334f1817411b82eb` |
| 39 | `lemma` | [prime_norm_toInteger_sub_one_of_prime_pow_ne_two](../../../../mathematics/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean/declarations/prime-norm-tointeger-sub-one-of-prime-pow-ne-two--52532b0dd3b0341a26cf0e55.md) | 417 | `result-track:52532b0dd3b0341a26cf0e55eb39b1dcdad3a691334bdd6416099f13d180a5a5` |
| 40 | `lemma` | [prime_norm_toInteger_sub_one_of_prime_ne_two](../../../../mathematics/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean/declarations/prime-norm-tointeger-sub-one-of-prime-ne-two--edde161ee8d9c8fc557a3b55.md) | 427 | `result-track:edde161ee8d9c8fc557a3b55ec46be00d3eb6e41b145794b9068b684cda1fe61` |
| 41 | `lemma` | [prime_norm_toInteger_sub_one_of_prime_ne_two'](../../../../mathematics/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean/declarations/prime-norm-tointeger-sub-one-of-prime-ne-two--cfbbc13cbd398eb9e4429ca7.md) | 437 | `result-track:cfbbc13cbd398eb9e4429ca71721ac3884676a1da3510fe3c6bd812c118720ac` |
| 42 | `theorem` | [not_exists_int_prime_dvd_sub_of_prime_pow_ne_two](../../../../mathematics/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean/declarations/not-exists-int-prime-dvd-sub-of-prime-pow-ne-two--ff8cc75988dae014ff054f94.md) | 446 | `result-track:ff8cc75988dae014ff054f941627e81bff5c8dd684a768e11230625db7aff926` |
| 43 | `theorem` | [not_exists_int_prime_dvd_sub_of_prime_ne_two](../../../../mathematics/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean/declarations/not-exists-int-prime-dvd-sub-of-prime-ne-two--4393bbee5c94b6605c89376d.md) | 484 | `result-track:4393bbee5c94b6605c89376d8ec12affc63176b1387f5cc3f1b97ede70a8fb87` |
| 44 | `theorem` | [not_exists_int_prime_dvd_sub_of_prime_ne_two'](../../../../mathematics/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean/declarations/not-exists-int-prime-dvd-sub-of-prime-ne-two--0b99069541bb17019c8ba7d9.md) | 494 | `result-track:0b99069541bb17019c8ba7d99af7deb7610daaed1c0f5ac185eac56e2ccd517e` |
| 45 | `theorem` | [finite_quotient_span_sub_one](../../../../mathematics/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean/declarations/finite-quotient-span-sub-one--4b2d55fa26b1a7aa7bafae45.md) | 502 | `result-track:4b2d55fa26b1a7aa7bafae45f483fbc818fd7cf2971651beb82d0af06ef8f12e` |
| 46 | `theorem` | [finite_quotient_span_sub_one'](../../../../mathematics/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean/declarations/finite-quotient-span-sub-one--eb3f4097625fbf11210edfe3.md) | 511 | `result-track:eb3f4097625fbf11210edfe33f39e98bc9f1ddcb2eb9518ad4576f4c78351ae8` |
| 47 | `lemma` | [toInteger_sub_one_dvd_prime](../../../../mathematics/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean/declarations/tointeger-sub-one-dvd-prime--8b138a1db362f4ff9369059d.md) | 520 | `result-track:8b138a1db362f4ff9369059d9a0b4fb22a23ecd805effbe049878c3989daa39e` |
| 48 | `lemma` | [toInteger_sub_one_dvd_prime'](../../../../mathematics/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean/declarations/tointeger-sub-one-dvd-prime--2a5e455f6c7653f166d05450.md) | 543 | `result-track:2a5e455f6c7653f166d054505b7865e9ef48bd7b7be849ba916012612966c07d` |
| 49 | `lemma` | [toInteger_sub_one_not_dvd_two](../../../../mathematics/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean/declarations/tointeger-sub-one-not-dvd-two--7df31b879c03502dbc9a5168.md) | 550 | `result-track:7df31b879c03502dbc9a5168101d5f1b81ce241045b59ebda408d9677b132539` |
| 50 | `theorem` | [absdiscr_prime_pow](../../../../mathematics/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean/declarations/absdiscr-prime-pow--76509f1e0ff94398ceabb488.md) | 576 | `result-track:76509f1e0ff94398ceabb488dcd2f3bb37e22065cc596c889c095ab737e8cdce` |
| 51 | `theorem` | [absdiscr_prime_pow_succ](../../../../mathematics/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean/declarations/absdiscr-prime-pow-succ--10a280f147565dd8790239cd.md) | 600 | `result-track:10a280f147565dd8790239cd72fb088ea11cc03372e353404e7c5eedfcfdaec6` |
| 52 | `theorem` | [absdiscr_prime](../../../../mathematics/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean/declarations/absdiscr-prime--5a585d69abdc7f17d2e8a221.md) | 607 | `result-track:5a585d69abdc7f17d2e8a2213ccfdd0f84e0e5e614093fd9681e1ea4e8c3fec3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
