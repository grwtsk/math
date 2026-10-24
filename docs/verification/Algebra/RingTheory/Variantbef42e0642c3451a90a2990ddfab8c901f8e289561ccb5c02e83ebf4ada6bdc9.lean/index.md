# Verification target: GRWTSK.Algebra.Ring.Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ca5de1267dc40b8cac9d3173012e393b84f3236",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Ring/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/index.md) · [Full source](../../../../mathematics/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ca5de1267dc40b8cac9d3173012e393b84f3236`.

Source path: `GRWTSK/Algebra/Ring/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Ring/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GradedMonoid` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [GNonUnitalNonAssocSemiring](../../../../mathematics/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/declarations/gnonunitalnonassocsemiring--4b4361ea50b990a191cc8eab.md) | 100 | `declaration-track:4b4361ea50b990a191cc8eabf9dba8f5dd74bfea5fc894d85a987fe64624828d` |
| 2 | `class` | [GSemiring](../../../../mathematics/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/declarations/gsemiring--93bd88327207f1227c7860fc.md) | 120 | `declaration-track:93bd88327207f1227c7860fc5567844ae366e98695d03a9d2d7fb13a81ed96c9` |
| 3 | `class` | [GCommSemiring](../../../../mathematics/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/declarations/gcommsemiring--6b774a8860c13121dc62980c.md) | 131 | `declaration-track:6b774a8860c13121dc62980cbf62e8de6a044b0483be56e549f37fc59c646cb0` |
| 4 | `class` | [GRing](../../../../mathematics/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/declarations/gring--dda6f0ba4adecd3cdf578182.md) | 136 | `declaration-track:dda6f0ba4adecd3cdf57818266b271b79a2f0384804a96c69bf0f6115f73102d` |
| 5 | `class` | [GCommRing](../../../../mathematics/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/declarations/gcommring--85b17dfd7a0262a55c2a1f6a.md) | 149 | `declaration-track:85b17dfd7a0262a55c2a1f6aaac77b32338f5b9f8e1c1deab3fa84b42df0b564` |
| 6 | `theorem` | [of_eq_of_gradedMonoid_eq](../../../../mathematics/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/declarations/of-eq-of-gradedmonoid-eq--a415f616d5b808a43b898745.md) | 154 | `result-track:a415f616d5b808a43b898745ed8342a3e723334db212261f61516db23358a55c` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/declarations/instance--7d43eb15f44294d9b89d450f.md) | 169 | `declaration-track:7d43eb15f44294d9b89d450f440bcc2ee166301f60d60160ff17123024c144eb` |
| 8 | `def` | [gMulHom](../../../../mathematics/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/declarations/gmulhom--fa608433cfaf5e3e2d419175.md) | 181 | `declaration-track:fa608433cfaf5e3e2d419175b62a7d765a502ef6e4abeedcace4c7cb4cdce596` |
| 9 | `def` | [mulHom](../../../../mathematics/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/declarations/mulhom--d5b262616fdbb81eb7772c95.md) | 191 | `declaration-track:d5b262616fdbb81eb7772c95391e0983d3092feba4ce06d649cd599ecfb28db2` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/declarations/instance--85a88d783eecdd58c26b97e6.md) | 198 | `declaration-track:85a88d783eecdd58c26b97e69b2218defbd436435ebd7d5f82be8d4111507d26` |
| 11 | `theorem` | [mulHom_apply](../../../../mathematics/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/declarations/mulhom-apply--2803f40cfb420521315292cc.md) | 212 | `result-track:2803f40cfb420521315292cc6815306d2bdcc20d27fe9b2044b6966b9d43f7c8` |
| 12 | `theorem` | [mulHom_of_of](../../../../mathematics/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/declarations/mulhom-of-of--793c0a6734ef234bd8583613.md) | 214 | `result-track:793c0a6734ef234bd85836138a26cf75eb82433bd7e75026b576ef0058fbfac2` |
| 13 | `theorem` | [of_mul_of](../../../../mathematics/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/declarations/of-mul-of--44b92629cc61291450c15ec6.md) | 221 | `result-track:44b92629cc61291450c15ec66f42e1f2881b91f81229f4f3e1e62ea5525b4be1` |
| 14 | `theorem` | [one_mul](../../../../mathematics/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/declarations/one-mul--a13c2a5be91f1b4a57c0386d.md) | 234 | `result-track:a13c2a5be91f1b4a57c0386d3a0874bd553a3778e5dbcc3fbeb27f9630074958` |
| 15 | `theorem` | [mul_one](../../../../mathematics/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/declarations/mul-one--aef9f3acfdb285dc06458b2d.md) | 243 | `result-track:aef9f3acfdb285dc06458b2d92ba3322e01b5f678bf11ab21d280b96b55d5bf5` |
| 16 | `theorem` | [mul_assoc](../../../../mathematics/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/declarations/mul-assoc--6485f0b5afa50ca895413c05.md) | 253 | `result-track:6485f0b5afa50ca895413c058be9aee402db732fa49f9e451e5965978ce8a278` |
| 17 | `instance` | [semiring](../../../../mathematics/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/declarations/semiring--71200e6bb068eed6b75280eb.md) | 270 | `declaration-track:71200e6bb068eed6b75280eb3fb5d562a0ed4880f975b51d6cddfa9298535974` |
| 18 | `theorem` | [ofPow](../../../../mathematics/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/declarations/ofpow--52500e53b126d9fc34939176.md) | 288 | `result-track:52500e53b126d9fc3493917622932616661de5fdb4a40fd63a1ec1d37d186fac` |
| 19 | `theorem` | [ofList_dProd](../../../../mathematics/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/declarations/oflist-dprod--d92127b42168d4582d3551d6.md) | 296 | `result-track:d92127b42168d4582d3551d68c5c6e21590d46662eb7ecfb343df831de528b26` |
| 20 | `theorem` | [list_prod_ofFn_of_eq_dProd](../../../../mathematics/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/declarations/list-prod-offn-of-eq-dprod--568a2bd169dbd0312871ce98.md) | 307 | `result-track:568a2bd169dbd0312871ce98bbe00af3bf585de157df5310e30f45d83d70ce11` |
| 21 | `theorem` | [mul_eq_dfinsupp_sum](../../../../mathematics/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/declarations/mul-eq-dfinsupp-sum--5147c1549055d272faaaf1da.md) | 314 | `result-track:5147c1549055d272faaaf1dad4f47a33fd673164a0c15b4f66d69ebb8ef805d3` |
| 22 | `theorem` | [mul_eq_sum_support_ghas_mul](../../../../mathematics/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/declarations/mul-eq-sum-support-ghas-mul--0c2b467d031637423937ab2e.md) | 332 | `result-track:0c2b467d031637423937ab2ed766c42b1d60f2bed20d6731f7a66cfce0850d78` |
| 23 | `theorem` | [mul_comm](../../../../mathematics/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/declarations/mul-comm--ae01d503bd26529cae904917.md) | 345 | `result-track:ae01d503bd26529cae90491762be3961655bee09f2cadcc94eb04f34aa3bd4ca` |
| 24 | `instance` | [commSemiring](../../../../mathematics/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/declarations/commsemiring--5bc0af5591fc0b75e9fbc457.md) | 354 | `declaration-track:5bc0af5591fc0b75e9fbc457455eb70799394b6a7f9e1c36b8faab15bc07e9bf` |
| 25 | `instance` | [nonAssocRing](../../../../mathematics/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/declarations/nonassocring--3991524c99138d2abe82fb53.md) | 370 | `declaration-track:3991524c99138d2abe82fb5329478c7922b14109f221df2250a372434eb92643` |
| 26 | `instance` | [ring](../../../../mathematics/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/declarations/ring--4517ed771b3f6aa01eb665e0.md) | 387 | `declaration-track:4517ed771b3f6aa01eb665e076d2d4e2eee40461b375a9fc7cf413f49c311478` |
| 27 | `instance` | [commRing](../../../../mathematics/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/declarations/commring--812b93329fc009492dd909cb.md) | 403 | `declaration-track:812b93329fc009492dd909cb02399e3e38308c6981a03ea785206a116272fe42` |
| 28 | `theorem` | [of_zero_one](../../../../mathematics/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/declarations/of-zero-one--4594982eb1e3945994f64caa.md) | 429 | `result-track:4594982eb1e3945994f64caa1fc2d225cbab0607cf295d26d38d142e1d2ccc05` |
| 29 | `theorem` | [of_zero_smul](../../../../mathematics/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/declarations/of-zero-smul--d5af06e230d0f62acb8e7fc5.md) | 440 | `result-track:d5af06e230d0f62acb8e7fc5eed5997b8c1b6cd81d6f06c1291990274cbf7489` |
| 30 | `theorem` | [of_zero_mul](../../../../mathematics/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/declarations/of-zero-mul--0d60e973c5ed6322be2a644a.md) | 445 | `result-track:0d60e973c5ed6322be2a644a4f1189ca3a2f4b5e1410664521ecc72ee8ada78c` |
| 31 | `instance` | [GradeZero.nonUnitalNonAssocSemiring](../../../../mathematics/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/declarations/gradezero-nonunitalnonassocsemiring--1eac0609a1113681af0bd7f4.md) | 449 | `declaration-track:1eac0609a1113681af0bd7f4df9c51fe241c6ac8b47f3ea756f0f18179d482e5` |
| 32 | `instance` | [GradeZero.smulWithZero](../../../../mathematics/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/declarations/gradezero-smulwithzero--73c167c03abf7868cea211a1.md) | 454 | `declaration-track:73c167c03abf7868cea211a186340839e5e27bfa6abcf775a732260ddbca6a5d` |
| 33 | `theorem` | [of_zero_pow](../../../../mathematics/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/declarations/of-zero-pow--8a657144e0c7d9da730d1796.md) | 467 | `result-track:8a657144e0c7d9da730d179689a771b794ab87a784781d4d8b1f58bc00713eb9` |
| 34 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/declarations/instance--2c6ecea720acf89c7e1a51f0.md) | 473 | `declaration-track:2c6ecea720acf89c7e1a51f0d93ed0d8a882ce565f5413d94140ddb50064a151` |
| 35 | `theorem` | [ofNatCast](../../../../mathematics/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/declarations/ofnatcast--89d23cfad452c73e310bd52a.md) | 477 | `result-track:89d23cfad452c73e310bd52a4a7a4dab59677b80bf2d42387872dd27922a4861` |
| 36 | `instance` | [GradeZero.semiring](../../../../mathematics/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/declarations/gradezero-semiring--0c36d34c92d64ef1ba0f446f.md) | 482 | `declaration-track:0c36d34c92d64ef1ba0f446fd28c7913629e7a7b0aaccc7533fda3b3147aa274` |
| 37 | `def` | [ofZeroRingHom](../../../../mathematics/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/declarations/ofzeroringhom--ea3d405a22cd49e8abcb42c5.md) | 489 | `declaration-track:ea3d405a22cd49e8abcb42c53193eb35f042b12403295b267431134f373abfee` |
| 38 | `instance` | [GradeZero.module](../../../../mathematics/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/declarations/gradezero-module--60231a225a855a31ed0fc724.md) | 498 | `declaration-track:60231a225a855a31ed0fc724f05de3ba3fc5f5d0ee632536bc74317a23039106` |
| 39 | `instance` | [GradeZero.commSemiring](../../../../mathematics/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/declarations/gradezero-commsemiring--c9a00ce7bf7246ca722bff62.md) | 510 | `declaration-track:c9a00ce7bf7246ca722bff6298876ccd4bdfa8ee56b73998b7bbe0dcf3e5ddac` |
| 40 | `instance` | [GradeZero.nonUnitalNonAssocRing](../../../../mathematics/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/declarations/gradezero-nonunitalnonassocring--0b2722292d5525a9fe76bcec.md) | 523 | `declaration-track:0b2722292d5525a9fe76bcece056e896ad2ae8b8fb2367e2ceca53a5c4cb4556` |
| 41 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/declarations/instance--64fda07ebe5983cb79840ed0.md) | 540 | `declaration-track:64fda07ebe5983cb79840ed0dfa828598a682fbb2ee83d24af57d7abecf89305` |
| 42 | `theorem` | [ofIntCast](../../../../mathematics/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/declarations/ofintcast--8aa352d6a2ba4682909d7577.md) | 544 | `result-track:8aa352d6a2ba4682909d7577b516812af53f0806b18954bb6605305681d26cd0` |
| 43 | `instance` | [GradeZero.ring](../../../../mathematics/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/declarations/gradezero-ring--884f097076ab8b4336466633.md) | 549 | `declaration-track:884f097076ab8b4336466633dc0e22a65702673562f54a8c5bc08be23c9ae040` |
| 44 | `instance` | [GradeZero.commRing](../../../../mathematics/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/declarations/gradezero-commring--367dc9566d709a3170dc8c7a.md) | 568 | `declaration-track:367dc9566d709a3170dc8c7a8cfe0b55f9225396627e747fc2fd42c804c05857` |
| 45 | `theorem` | [ringHom_ext'](../../../../mathematics/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/declarations/ringhom-ext--ea64681af1bc8210eb3a7fb1.md) | 595 | `result-track:ea64681af1bc8210eb3a7fb155bcd6c1db91735482cda60ff49ea85b803c5b70` |
| 46 | `theorem` | [ringHom_ext](../../../../mathematics/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/declarations/ringhom-ext--58219a8f52e521d2cc3944ac.md) | 601 | `result-track:58219a8f52e521d2cc3944ac9515f152ffd5e0689657b67991a2774a7706aaa6` |
| 47 | `def` | [toSemiring](../../../../mathematics/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/declarations/tosemiring--87141acaa924191928885669.md) | 613 | `declaration-track:87141acaa924191928885669aa2cbaa749705299b710152b9db7a5bb8ef8f937` |
| 48 | `theorem` | [toSemiring_of](../../../../mathematics/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/declarations/tosemiring-of--7f07f4464268e196eb1e3eb3.md) | 634 | `result-track:7f07f4464268e196eb1e3eb3a39cd65a617fbb2a22af0b8f2b2f157e25a223f9` |
| 49 | `theorem` | [toSemiring_coe_addMonoidHom](../../../../mathematics/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/declarations/tosemiring-coe-addmonoidhom--09c791f86da1eaa3700397b1.md) | 640 | `result-track:09c791f86da1eaa3700397b117bbc453f5d47843a8c464b1f6e3a65f797d6b71` |
| 50 | `def` | [liftRingHom](../../../../mathematics/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/declarations/liftringhom--bc26d6f0e290976bc7b027ab.md) | 649 | `declaration-track:bc26d6f0e290976bc7b027ab9272d44a51398dcff516e028c3a29e589877ba6d` |
| 51 | `instance` | [NonUnitalNonAssocSemiring.directSumGNonUnitalNonAssocSemiring](../../../../mathematics/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/declarations/nonunitalnonassocsemiring-directsumgnonunitalnonassocsemiring--098f87de92987ea9b1a69455.md) | 687 | `declaration-track:098f87de92987ea9b1a69455a429a89ccd77104bf88537443a468fa63b680d41` |
| 52 | `instance` | [Semiring.directSumGSemiring](../../../../mathematics/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/declarations/semiring-directsumgsemiring--398edb86b6ad6f001da64f5f.md) | 697 | `declaration-track:398edb86b6ad6f001da64f5f0e2e5d4d949aed173af27825e9c10a3c78075f52` |
| 53 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/declarations/example--16611a69e22e041caee0486d.md) | 709 | `declaration-track:16611a69e22e041caee0486ddde4adc7e15b067061f4df7a2be3e69278274240` |
| 54 | `instance` | [CommSemiring.directSumGCommSemiring](../../../../mathematics/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/declarations/commsemiring-directsumgcommsemiring--f9ccd7264a51dd510b84469a.md) | 715 | `declaration-track:f9ccd7264a51dd510b84469a0881cc733b5c71e5a19987ba8889e50ec7349dff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
