# Verification target: GRWTSK.Algebra.Ring.Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7fb35473abe6e0a02c75127a03e061e8940348e8",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Ring/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/RingTheory/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean/index.md) · [Full source](../../../../mathematics/Algebra/RingTheory/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7fb35473abe6e0a02c75127a03e061e8940348e8`.

Source path: `GRWTSK/Algebra/Ring/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Ring/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean.json)

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
| 1 | `class` | [IsJacobsonRing](../../../../mathematics/Algebra/RingTheory/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean/declarations/isjacobsonring--055aa23d47141c5f598a8007.md) | 68 | `declaration-track:055aa23d47141c5f598a800748f0b5a3e3670499242106aaf6b6e5bfe905caa7` |
| 2 | `theorem` | [isJacobsonRing_iff](../../../../mathematics/Algebra/RingTheory/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean/declarations/isjacobsonring-iff--e0e9cad9363978225556df9b.md) | 71 | `result-track:e0e9cad9363978225556df9b67c8a0534846226c0bdde240d57c301e1ce0806c` |
| 3 | `theorem` | [IsJacobsonRing.out](../../../../mathematics/Algebra/RingTheory/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean/declarations/isjacobsonring-out--0f153b3cbc72ccd0a9d688b1.md) | 75 | `result-track:0f153b3cbc72ccd0a9d688b1f615567d46d6d9572a212f1c9b3319788f799e37` |
| 4 | `theorem` | [isJacobsonRing_iff_prime_eq](../../../../mathematics/Algebra/RingTheory/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean/declarations/isjacobsonring-iff-prime-eq--9f9e1ca1cf09e6604b178e76.md) | 81 | `result-track:9f9e1ca1cf09e6604b178e7664ec02601f08be23dbaca06fda3154796c1e1404` |
| 5 | `theorem` | [isJacobsonRing_iff_sInf_maximal](../../../../mathematics/Algebra/RingTheory/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean/declarations/isjacobsonring-iff-sinf-maximal--69b51364de330f6cf9c318d1.md) | 95 | `result-track:69b51364de330f6cf9c318d117057c208e7bfb5125e07d52c55c12200951e181` |
| 6 | `theorem` | [isJacobsonRing_iff_sInf_maximal'](../../../../mathematics/Algebra/RingTheory/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean/declarations/isjacobsonring-iff-sinf-maximal--b01148011554c8c15bc6a525.md) | 101 | `result-track:b01148011554c8c15bc6a525323bd3323fcca482fefdb8f81e24ead1f36430d0` |
| 7 | `theorem` | [Ideal.radical_eq_jacobson](../../../../mathematics/Algebra/RingTheory/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean/declarations/ideal-radical-eq-jacobson--2b48ba85532045d101b608ea.md) | 106 | `result-track:2b48ba85532045d101b608ead0a53cc458810649880c9cadcf2330833a02340e` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean/declarations/instance--d09e63ea2e52101100d0091d.md) | 110 | `declaration-track:d09e63ea2e52101100d0091d1f130f53bff87459000f1349baf9ed811fada745` |
| 9 | `theorem` | [isJacobsonRing_of_surjective](../../../../mathematics/Algebra/RingTheory/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean/declarations/isjacobsonring-of-surjective--03ac13fb795d4149ae9c39ca.md) | 113 | `result-track:03ac13fb795d4149ae9c39ca12c5028bd358f4e81ac252dbf53bcffa195daddf` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean/declarations/instance--505e14678079547adb3d3b40.md) | 124 | `declaration-track:505e14678079547adb3d3b40fcdb030c2100f2b14bd586fddd072f1709253a5c` |
| 11 | `theorem` | [isJacobsonRing_iso](../../../../mathematics/Algebra/RingTheory/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean/declarations/isjacobsonring-iso--878128b8e9c3f331344e3778.md) | 130 | `result-track:878128b8e9c3f331344e3778b549263a5b296ac39bcc3511314bfcab01471bc6` |
| 12 | `theorem` | [isJacobsonRing_of_isIntegral](../../../../mathematics/Algebra/RingTheory/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean/declarations/isjacobsonring-of-isintegral--13b86ef3b87a0d86a500d198.md) | 134 | `result-track:13b86ef3b87a0d86a500d198f7917aab9fac7c83f34a5be6b8f156c9d2c4bf1e` |
| 13 | `theorem` | [isJacobsonRing_of_isIntegral'](../../../../mathematics/Algebra/RingTheory/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean/declarations/isjacobsonring-of-isintegral--f9a62388ac3f817da39847da.md) | 153 | `result-track:f9a62388ac3f817da39847da9e325293d6263da8d88bd99fad711ea020656b2e` |
| 14 | `theorem` | [IsLocalization.isMaximal_iff_isMaximal_disjoint](../../../../mathematics/Algebra/RingTheory/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean/declarations/islocalization-ismaximal-iff-ismaximal-disjoint--606cbf02a4a3bd5d2a30da3c.md) | 173 | `result-track:606cbf02a4a3bd5d2a30da3c4d8c16f51c1c14eb92bb0418c821e8246756819c` |
| 15 | `theorem` | [IsLocalization.isMaximal_of_isMaximal_notMem](../../../../mathematics/Algebra/RingTheory/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean/declarations/islocalization-ismaximal-of-ismaximal-notmem--651f910250faa1fb0a62b5c2.md) | 200 | `result-track:651f910250faa1fb0a62b5c21b2fa21547f323f3e57f1afed6ff40bf81f10812` |
| 16 | `def` | [IsLocalization.orderIsoOfMaximal](../../../../mathematics/Algebra/RingTheory/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean/declarations/islocalization-orderisoofmaximal--480b7e53ef1381c461f5503b.md) | 208 | `declaration-track:480b7e53ef1381c461f5503bd50cb0c979a11ac4183cde0388148431ab3b7dc8` |
| 17 | `theorem` | [isJacobsonRing_localization](../../../../mathematics/Algebra/RingTheory/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean/declarations/isjacobsonring-localization--cf18eea01db5bcd4f65a1a94.md) | 223 | `result-track:cf18eea01db5bcd4f65a1a942d128e680c4703a3e0d26b56a4b04b4fe6cdecab` |
| 18 | `lemma` | [mem_closure_X_union_C](../../../../mathematics/Algebra/RingTheory/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean/declarations/mem-closure-x-union-c--3f23b37b6cee1691352c91c7.md) | 258 | `result-track:3f23b37b6cee1691352c91c776ed2cf27a9262b15fbfd44372ba7bd89cc8d7ed` |
| 19 | `theorem` | [isIntegral_isLocalization_polynomial_quotient](../../../../mathematics/Algebra/RingTheory/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean/declarations/isintegral-islocalization-polynomial-quotient--773544fca8024f5870ecdb8c.md) | 280 | `result-track:773544fca8024f5870ecdb8c596fc357a3bcea6ec0c18bcf82d6dd1aa998429f` |
| 20 | `theorem` | [jacobson_bot_of_integral_localization](../../../../mathematics/Algebra/RingTheory/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean/declarations/jacobson-bot-of-integral-localization--909e2dc0ee18e0859e26166f.md) | 330 | `result-track:909e2dc0ee18e0859e26166f7c2ebbfbc0747c2fbf22b26f97537c4e9f85f50a` |
| 21 | `theorem` | [isJacobsonRing_polynomial_of_domain](../../../../mathematics/Algebra/RingTheory/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean/declarations/isjacobsonring-polynomial-of-domain--9be2440c01c8c2ed2c99fac3.md) | 376 | `result-track:9be2440c01c8c2ed2c99fac3117b5f44fac9b914a8795ab32fb915c1dca0d9ec` |
| 22 | `theorem` | [isJacobsonRing_polynomial_of_isJacobsonRing](../../../../mathematics/Algebra/RingTheory/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean/declarations/isjacobsonring-polynomial-of-isjacobsonring--2744c47d063b8262bad360b2.md) | 396 | `result-track:2744c47d063b8262bad360b2c66a426bbb206b2cd7a5352bae8dc95c3a3af7b6` |
| 23 | `theorem` | [isJacobsonRing_polynomial_iff_isJacobsonRing](../../../../mathematics/Algebra/RingTheory/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean/declarations/isjacobsonring-polynomial-iff-isjacobsonring--7e11421cc187d2abba549288.md) | 424 | `result-track:7e11421cc187d2abba5492883ca1decc63ef252b84122126284340c367b4067d` |
| 24 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean/declarations/instance--34a51ceac64be31a79cb1320.md) | 430 | `declaration-track:34a51ceac64be31a79cb1320e1fd6d52bee94686feaf0747efc34c22491dd041` |
| 25 | `theorem` | [isMaximal_comap_C_of_isMaximal](../../../../mathematics/Algebra/RingTheory/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean/declarations/ismaximal-comap-c-of-ismaximal--c1c33909099fc43371a27786.md) | 440 | `result-track:c1c33909099fc43371a27786ece2b0857ead8bea9be239f39c3fa0f0b39213a6` |
| 26 | `theorem` | [quotient_mk_comp_C_isIntegral_of_jacobson'](../../../../mathematics/Algebra/RingTheory/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean/declarations/quotient-mk-comp-c-isintegral-of-jacobson--678c2cd3ff213f6dee373638.md) | 484 | `result-track:678c2cd3ff213f6dee373638306af9cc88e630e2b00f21058c4ed53e249ee963` |
| 27 | `theorem` | [quotient_mk_comp_C_isIntegral_of_isJacobsonRing](../../../../mathematics/Algebra/RingTheory/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean/declarations/quotient-mk-comp-c-isintegral-of-isjacobsonring--ae9f11825a2941695a2b8ba1.md) | 524 | `result-track:ae9f11825a2941695a2b8ba1029293d32af69472da5dd2d7da93ab3e518c7567` |
| 28 | `theorem` | [isMaximal_comap_C_of_isJacobsonRing](../../../../mathematics/Algebra/RingTheory/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean/declarations/ismaximal-comap-c-of-isjacobsonring--0e73c29c22e0e8e7b7f43b8b.md) | 548 | `result-track:0e73c29c22e0e8e7b7f43b8b61b36732f10134050d5266cfd145d25259f8eaad` |
| 29 | `theorem` | [comp_C_integral_of_surjective_of_isJacobsonRing](../../../../mathematics/Algebra/RingTheory/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean/declarations/comp-c-integral-of-surjective-of-isjacobsonring--6a288ea7ee7ac060e0477ce8.md) | 554 | `result-track:6a288ea7ee7ac060e0477ce8f9a5e5a556e4423cd8ae3b93fb075e1a2f01c68b` |
| 30 | `theorem` | [isJacobsonRing_MvPolynomial_fin](../../../../mathematics/Algebra/RingTheory/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean/declarations/isjacobsonring-mvpolynomial-fin--8d80b4941fe2bae8209983fa.md) | 573 | `result-track:8d80b4941fe2bae8209983fa9d26af96ee487d4fe389938fd9462b970d094416` |
| 31 | `instance` | [isJacobsonRing](../../../../mathematics/Algebra/RingTheory/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean/declarations/isjacobsonring--8d9915b48d9ec2999ae4b285.md) | 584 | `declaration-track:8d9915b48d9ec2999ae4b28540be068671e727a2117d91042341da93c3b28b0f` |
| 32 | `def` | [Cₐ](../../../../mathematics/Algebra/RingTheory/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean/declarations/c--1c81f092b02835399986ada3.md) | 596 | `declaration-track:1c81f092b02835399986ada34a2e2d28f781a26a1d52dc0ad37ccfc2aeea0ebf` |
| 33 | `lemma` | [aux_IH](../../../../mathematics/Algebra/RingTheory/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean/declarations/aux-ih--474a6519d3f526b8890f2786.md) | 600 | `result-track:474a6519d3f526b8890f2786a6a0f40fc8dfef55d68123a49507c698514b94ec` |
| 34 | `theorem` | [quotient_mk_comp_C_isIntegral_of_isJacobsonRing'](../../../../mathematics/Algebra/RingTheory/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean/declarations/quotient-mk-comp-c-isintegral-of-isjacobsonring--005b8d3e9d0fd013fb31b420.md) | 630 | `result-track:005b8d3e9d0fd013fb31b420e87a89bbf6f2153457115f3a556b8dcff2fd0161` |
| 35 | `theorem` | [quotient_mk_comp_C_isIntegral_of_isJacobsonRing](../../../../mathematics/Algebra/RingTheory/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean/declarations/quotient-mk-comp-c-isintegral-of-isjacobsonring--74445fda2dcc85b6db7e0e94.md) | 641 | `result-track:74445fda2dcc85b6db7e0e9460b0b05b126f728530378cac38e4da6b8e9fe834` |
| 36 | `theorem` | [comp_C_integral_of_surjective_of_isJacobsonRing](../../../../mathematics/Algebra/RingTheory/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean/declarations/comp-c-integral-of-surjective-of-isjacobsonring--5bd46f617493ae7127519b47.md) | 648 | `result-track:5bd46f617493ae7127519b47b85ca90313d23d2a7459067429af821e8e88261e` |
| 37 | `lemma` | [isJacobsonRing_of_finiteType](../../../../mathematics/Algebra/RingTheory/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean/declarations/isjacobsonring-of-finitetype--77988247f3a8664e908c2d32.md) | 674 | `result-track:77988247f3a8664e908c2d32044d3ec1528c7304a323c5e487f0957268f290d8` |
| 38 | `lemma` | [RingHom.FiniteType.isJacobsonRing](../../../../mathematics/Algebra/RingTheory/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean/declarations/ringhom-finitetype-isjacobsonring--4017a37471565987d892b635.md) | 679 | `result-track:4017a37471565987d892b635cba7b01537c1653062bbd5b78e677a3827f2d5a7` |
| 39 | `lemma` | [finite_of_finite_type_of_isJacobsonRing](../../../../mathematics/Algebra/RingTheory/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean/declarations/finite-of-finite-type-of-isjacobsonring--b4354202fc328d3780e0fe3e.md) | 684 | `result-track:b4354202fc328d3780e0fe3ec9afe14bf7c16aa5997c65d75056a278fce9d48c` |
| 40 | `lemma` | [RingHom.finite_iff_finiteType_of_isJacobsonRing](../../../../mathematics/Algebra/RingTheory/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean/declarations/ringhom-finite-iff-finitetype-of-isjacobsonring--42e3c61bfeb6b4ba48b28b61.md) | 699 | `result-track:42e3c61bfeb6b4ba48b28b61de0cb7b1b1e51c5d768ad4383b4abd0e6f238cf7` |
| 41 | `theorem` | [finite_of_algHom_finiteType_of_isJacobsonRing](../../../../mathematics/Algebra/RingTheory/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean/declarations/finite-of-alghom-finitetype-of-isjacobsonring--8cf3325576d88f7f7ed340ae.md) | 707 | `result-track:8cf3325576d88f7f7ed340ae5d35159c365d88418fe43dd29bd22978696817ff` |
| 42 | `theorem` | [RingHom.finite_of_algHom_finiteType_of_isJacobsonRing](../../../../mathematics/Algebra/RingTheory/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean/declarations/ringhom-finite-of-alghom-finitetype-of-isjacobsonring--3a0d37b0a9b4dc3868322db5.md) | 721 | `result-track:3a0d37b0a9b4dc3868322db5c861b199c29b44384523f298b47aae488bebb096` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
