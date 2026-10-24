# Verification target: GRWTSK.Algebra.Ring.Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a9613649e0abfe831ca64b6019ba7500d3c2e9f",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Ring/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/RingTheory/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean/index.md) · [Full source](../../../../mathematics/Algebra/RingTheory/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a9613649e0abfe831ca64b6019ba7500d3c2e9f`.

Source path: `GRWTSK/Algebra/Ring/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Ring/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsJacobsonRing](../../../../mathematics/Algebra/RingTheory/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean/declarations/isjacobsonring--c46a5b53cb2d4ce0fa070183.md) | 60 | `declaration-track:c46a5b53cb2d4ce0fa07018342a96d49c7d785ec4d5ddfc3cbc745b7a805eaab` |
| 2 | `theorem` | [isJacobsonRing_iff](../../../../mathematics/Algebra/RingTheory/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean/declarations/isjacobsonring-iff--3d4f56193c2fb568cb95fae3.md) | 63 | `result-track:3d4f56193c2fb568cb95fae392608d397dba2e343121b3d779cb8195497ca46e` |
| 3 | `theorem` | [IsJacobsonRing.out](../../../../mathematics/Algebra/RingTheory/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean/declarations/isjacobsonring-out--377d72e59b73595c12ff6e10.md) | 67 | `result-track:377d72e59b73595c12ff6e100f297c205ad2eb86fb608a509fc26e5158bb51b0` |
| 4 | `theorem` | [isJacobsonRing_iff_prime_eq](../../../../mathematics/Algebra/RingTheory/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean/declarations/isjacobsonring-iff-prime-eq--3f3e1884cb85f795b987985c.md) | 73 | `result-track:3f3e1884cb85f795b987985ce3839447d0b296e60b1ae9e76174f5991815c710` |
| 5 | `theorem` | [isJacobsonRing_iff_sInf_maximal](../../../../mathematics/Algebra/RingTheory/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean/declarations/isjacobsonring-iff-sinf-maximal--dd6481572a0dec3fc98013e5.md) | 87 | `result-track:dd6481572a0dec3fc98013e5700598c697c735b8c286eb837d0f07f1533f8af7` |
| 6 | `theorem` | [isJacobsonRing_iff_sInf_maximal'](../../../../mathematics/Algebra/RingTheory/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean/declarations/isjacobsonring-iff-sinf-maximal--f0e7c246f1906b5ec78e4b1d.md) | 93 | `result-track:f0e7c246f1906b5ec78e4b1d763e6200c915a1cc01ab1154814ab65125a07499` |
| 7 | `theorem` | [Ideal.radical_eq_jacobson](../../../../mathematics/Algebra/RingTheory/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean/declarations/ideal-radical-eq-jacobson--aefc18c756e04c88e71df998.md) | 98 | `result-track:aefc18c756e04c88e71df99828b4019b75d8bafef31ad132eec20a6e0015fca4` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean/declarations/instance--0e4f2cf4f8eec2e18a08e5b1.md) | 102 | `declaration-track:0e4f2cf4f8eec2e18a08e5b1084c52b16b97764e0a3f38a11647ed16b0417447` |
| 9 | `theorem` | [isJacobsonRing_of_surjective](../../../../mathematics/Algebra/RingTheory/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean/declarations/isjacobsonring-of-surjective--b34ffb39469f356fd26bfe4a.md) | 105 | `result-track:b34ffb39469f356fd26bfe4a29417175c92ed32f84f0ead0c69b1027c9767f02` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean/declarations/instance--87df284b8a13197a36d45515.md) | 116 | `declaration-track:87df284b8a13197a36d45515814e5adb6bfa8ba579d7428bf939be074415258e` |
| 11 | `theorem` | [isJacobsonRing_iso](../../../../mathematics/Algebra/RingTheory/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean/declarations/isjacobsonring-iso--276a582359b06e64af3d7903.md) | 122 | `result-track:276a582359b06e64af3d79036efc40dcb655b5d2f56f54d644a520be404c1b7d` |
| 12 | `theorem` | [isJacobsonRing_of_isIntegral](../../../../mathematics/Algebra/RingTheory/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean/declarations/isjacobsonring-of-isintegral--761b3480552b6f528e63bfcb.md) | 126 | `result-track:761b3480552b6f528e63bfcbef9419676ca991a3bb7bc23616b02aceed412cae` |
| 13 | `theorem` | [isJacobsonRing_of_isIntegral'](../../../../mathematics/Algebra/RingTheory/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean/declarations/isjacobsonring-of-isintegral--3cecdadde44f3dc4cb30cfa3.md) | 145 | `result-track:3cecdadde44f3dc4cb30cfa3233221fc782f5028c6c678464d4379f1749d7bea` |
| 14 | `theorem` | [IsLocalization.isMaximal_iff_isMaximal_disjoint](../../../../mathematics/Algebra/RingTheory/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean/declarations/islocalization-ismaximal-iff-ismaximal-disjoint--ec66d557454a266d9aa9dcba.md) | 165 | `result-track:ec66d557454a266d9aa9dcbae4daf9c1b0c8810e2e6cc92ddbbb534b31532ce5` |
| 15 | `theorem` | [IsLocalization.isMaximal_of_isMaximal_notMem](../../../../mathematics/Algebra/RingTheory/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean/declarations/islocalization-ismaximal-of-ismaximal-notmem--ee87bd5ced9fa74ea00259b5.md) | 192 | `result-track:ee87bd5ced9fa74ea00259b548a5714377c944a4a78a1b2203e4b3c90987a57d` |
| 16 | `def` | [IsLocalization.orderIsoOfMaximal](../../../../mathematics/Algebra/RingTheory/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean/declarations/islocalization-orderisoofmaximal--e6e7a81620013f923682b496.md) | 200 | `declaration-track:e6e7a81620013f923682b496300708da6219a1dd382e85f4aaab9657cd132e5d` |
| 17 | `theorem` | [isJacobsonRing_localization](../../../../mathematics/Algebra/RingTheory/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean/declarations/isjacobsonring-localization--1722d78b53a272acdc8f99c9.md) | 215 | `result-track:1722d78b53a272acdc8f99c9e7dd0fc8e2802007450048b045c03e9509af9f57` |
| 18 | `lemma` | [mem_closure_X_union_C](../../../../mathematics/Algebra/RingTheory/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean/declarations/mem-closure-x-union-c--d82aa0e883bb5c3231f9c793.md) | 250 | `result-track:d82aa0e883bb5c3231f9c793dc6be945562fe36cbff3f0745abe4ce85558007b` |
| 19 | `theorem` | [isIntegral_isLocalization_polynomial_quotient](../../../../mathematics/Algebra/RingTheory/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean/declarations/isintegral-islocalization-polynomial-quotient--8bcc9b57414a3830b209c3b6.md) | 272 | `result-track:8bcc9b57414a3830b209c3b6604d6188766826834d8406c4f75cb54332527bb0` |
| 20 | `theorem` | [jacobson_bot_of_integral_localization](../../../../mathematics/Algebra/RingTheory/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean/declarations/jacobson-bot-of-integral-localization--bb49c7b236ad3dd213691f17.md) | 322 | `result-track:bb49c7b236ad3dd213691f17f4c560f10262dd67ccc1c03aa88b275fb90836a7` |
| 21 | `theorem` | [isJacobsonRing_polynomial_of_domain](../../../../mathematics/Algebra/RingTheory/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean/declarations/isjacobsonring-polynomial-of-domain--1019cb64aac79ae4c0443f07.md) | 368 | `result-track:1019cb64aac79ae4c0443f07d5ef7b0fd5d319d7a059231223793155f03fec4c` |
| 22 | `theorem` | [isJacobsonRing_polynomial_of_isJacobsonRing](../../../../mathematics/Algebra/RingTheory/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean/declarations/isjacobsonring-polynomial-of-isjacobsonring--0238830361a6c49a3eedf44a.md) | 388 | `result-track:0238830361a6c49a3eedf44af92bff26b1e783d6ea47020bd29a5aed70ca2239` |
| 23 | `theorem` | [isJacobsonRing_polynomial_iff_isJacobsonRing](../../../../mathematics/Algebra/RingTheory/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean/declarations/isjacobsonring-polynomial-iff-isjacobsonring--fae6f82b54eee6a2471c69d0.md) | 416 | `result-track:fae6f82b54eee6a2471c69d048ba68b4cfdf8e6668a25bf6c7fb9fdeaa4d3379` |
| 24 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean/declarations/instance--ce47330d9547eb1fd5e3271a.md) | 422 | `declaration-track:ce47330d9547eb1fd5e3271a1599be2c6c6eb1982bca9f860d3f9927a0941c96` |
| 25 | `theorem` | [isMaximal_comap_C_of_isMaximal](../../../../mathematics/Algebra/RingTheory/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean/declarations/ismaximal-comap-c-of-ismaximal--cbccae5f75686343ddca1dce.md) | 432 | `result-track:cbccae5f75686343ddca1dcee58b628cb167921e20ef3aa3019f17331c43656e` |
| 26 | `theorem` | [quotient_mk_comp_C_isIntegral_of_jacobson'](../../../../mathematics/Algebra/RingTheory/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean/declarations/quotient-mk-comp-c-isintegral-of-jacobson--3cd188ba756f371ff8e0dd53.md) | 476 | `result-track:3cd188ba756f371ff8e0dd53f3a2ceb7d5b398d625d7f8ffc245be2262b099a7` |
| 27 | `theorem` | [quotient_mk_comp_C_isIntegral_of_isJacobsonRing](../../../../mathematics/Algebra/RingTheory/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean/declarations/quotient-mk-comp-c-isintegral-of-isjacobsonring--bce141836cc8b1288d3bbf31.md) | 516 | `result-track:bce141836cc8b1288d3bbf31fbd224799eee6d01e4116de836ae8065e902f018` |
| 28 | `theorem` | [isMaximal_comap_C_of_isJacobsonRing](../../../../mathematics/Algebra/RingTheory/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean/declarations/ismaximal-comap-c-of-isjacobsonring--920f3ec28e0b91eea58963e6.md) | 540 | `result-track:920f3ec28e0b91eea58963e659e0c20890f089b40ecf14ca8d14918d7550d0e2` |
| 29 | `theorem` | [comp_C_integral_of_surjective_of_isJacobsonRing](../../../../mathematics/Algebra/RingTheory/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean/declarations/comp-c-integral-of-surjective-of-isjacobsonring--f3d03aace12442975d1d6941.md) | 546 | `result-track:f3d03aace12442975d1d6941d311c630b08abe04be1975a89a9a05e5859fbeea` |
| 30 | `theorem` | [isJacobsonRing_MvPolynomial_fin](../../../../mathematics/Algebra/RingTheory/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean/declarations/isjacobsonring-mvpolynomial-fin--615a5bafe46f6bb51fc1fa34.md) | 565 | `result-track:615a5bafe46f6bb51fc1fa34b522d977864a066cbee242bd29a6caddad304914` |
| 31 | `instance` | [isJacobsonRing](../../../../mathematics/Algebra/RingTheory/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean/declarations/isjacobsonring--439df5a93a8b7310d29371fe.md) | 576 | `declaration-track:439df5a93a8b7310d29371fed2df05de09df3c788d9440b580383215117824fa` |
| 32 | `def` | [Cₐ](../../../../mathematics/Algebra/RingTheory/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean/declarations/c--ddb0ed5c2068672e2e8b55a2.md) | 588 | `declaration-track:ddb0ed5c2068672e2e8b55a22306cc23e8a6bfe03110b52061a3dc0cff39e4d4` |
| 33 | `lemma` | [aux_IH](../../../../mathematics/Algebra/RingTheory/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean/declarations/aux-ih--8ccf52bf52b4653a6a366fc3.md) | 592 | `result-track:8ccf52bf52b4653a6a366fc3b0e9695337b9c8e9eb0db4b35b345bafd3ccb624` |
| 34 | `theorem` | [quotient_mk_comp_C_isIntegral_of_isJacobsonRing'](../../../../mathematics/Algebra/RingTheory/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean/declarations/quotient-mk-comp-c-isintegral-of-isjacobsonring--295b6edb43c6440b5563ad6e.md) | 622 | `result-track:295b6edb43c6440b5563ad6ec41b7bd0e73ce7dfd0a8ca43ffb3c11503c740ce` |
| 35 | `theorem` | [quotient_mk_comp_C_isIntegral_of_isJacobsonRing](../../../../mathematics/Algebra/RingTheory/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean/declarations/quotient-mk-comp-c-isintegral-of-isjacobsonring--1fbd4c9c5f1788feab814a74.md) | 633 | `result-track:1fbd4c9c5f1788feab814a7494b8bb6764e77337b503a029f845cab02e6ef54f` |
| 36 | `theorem` | [comp_C_integral_of_surjective_of_isJacobsonRing](../../../../mathematics/Algebra/RingTheory/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean/declarations/comp-c-integral-of-surjective-of-isjacobsonring--48f3f8d5e6c3fab3b2278e0b.md) | 640 | `result-track:48f3f8d5e6c3fab3b2278e0b50fe6cf4978cd4c894e743363a10714e5914a99e` |
| 37 | `lemma` | [isJacobsonRing_of_finiteType](../../../../mathematics/Algebra/RingTheory/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean/declarations/isjacobsonring-of-finitetype--d01ec003050cedd617b622e7.md) | 666 | `result-track:d01ec003050cedd617b622e78b96f07ffcd7f74583acc0de4aab59c730ee6873` |
| 38 | `lemma` | [RingHom.FiniteType.isJacobsonRing](../../../../mathematics/Algebra/RingTheory/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean/declarations/ringhom-finitetype-isjacobsonring--08f86eaf77b6613758986098.md) | 671 | `result-track:08f86eaf77b6613758986098088713bd68e4c2236f17cd204a38c24c3e05f355` |
| 39 | `lemma` | [finite_of_finite_type_of_isJacobsonRing](../../../../mathematics/Algebra/RingTheory/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean/declarations/finite-of-finite-type-of-isjacobsonring--0bcd6e227064cda48aba2c9e.md) | 676 | `result-track:0bcd6e227064cda48aba2c9ea5cd74f5b38c363773a8fa8ef629cab31dcd4c19` |
| 40 | `lemma` | [RingHom.finite_iff_finiteType_of_isJacobsonRing](../../../../mathematics/Algebra/RingTheory/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean/declarations/ringhom-finite-iff-finitetype-of-isjacobsonring--2833261021aea3395ab318a5.md) | 691 | `result-track:2833261021aea3395ab318a50f81c154dcd8e60a5676202b48dcd7f86a59e945` |
| 41 | `theorem` | [finite_of_algHom_finiteType_of_isJacobsonRing](../../../../mathematics/Algebra/RingTheory/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean/declarations/finite-of-alghom-finitetype-of-isjacobsonring--7032afcccf6621d6d9559ae9.md) | 699 | `result-track:7032afcccf6621d6d9559ae952fad62aa79e4c3175e5f42d110405e5d218fa23` |
| 42 | `theorem` | [RingHom.finite_of_algHom_finiteType_of_isJacobsonRing](../../../../mathematics/Algebra/RingTheory/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean/declarations/ringhom-finite-of-alghom-finitetype-of-isjacobsonring--10e685e3929f594124d60bcf.md) | 713 | `result-track:10e685e3929f594124d60bcfe5e1707eb0fc4a1c4111a57c87cfb26f089fe19c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
