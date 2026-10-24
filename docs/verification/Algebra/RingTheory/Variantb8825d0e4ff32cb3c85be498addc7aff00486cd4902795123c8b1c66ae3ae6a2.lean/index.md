# Verification target: GRWTSK.Algebra.Ring.Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d9dbe84d417b0086e6bfc7f205cefac230f5406b",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Ring/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/RingTheory/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean/index.md) · [Full source](../../../../mathematics/Algebra/RingTheory/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d9dbe84d417b0086e6bfc7f205cefac230f5406b`.

Source path: `GRWTSK/Algebra/Ring/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Ring/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Localization.Away.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.GoingUp` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Jacobson.Polynomial` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Artinian.Module` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsJacobsonRing](../../../../mathematics/Algebra/RingTheory/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean/declarations/isjacobsonring--7274b7607b5610343d5f81ad.md) | 61 | `declaration-track:7274b7607b5610343d5f81ad4f4d266144a1f708fe9037899b9c00751b07314b` |
| 2 | `theorem` | [isJacobsonRing_iff](../../../../mathematics/Algebra/RingTheory/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean/declarations/isjacobsonring-iff--05a6adc82dffcf70c689330e.md) | 64 | `result-track:05a6adc82dffcf70c689330eff774cb9e1183e441779e513cafe5c5c235adf86` |
| 3 | `theorem` | [IsJacobsonRing.out](../../../../mathematics/Algebra/RingTheory/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean/declarations/isjacobsonring-out--6c1cc4a20f4f22216f44662c.md) | 68 | `result-track:6c1cc4a20f4f22216f44662c7d0b46c8db9e1f04a78843706e1205c147c57035` |
| 4 | `theorem` | [isJacobsonRing_iff_prime_eq](../../../../mathematics/Algebra/RingTheory/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean/declarations/isjacobsonring-iff-prime-eq--61622e0559ab469919d430b6.md) | 74 | `result-track:61622e0559ab469919d430b658cfcccf71bb69049442b0edef83783d2237e07b` |
| 5 | `theorem` | [isJacobsonRing_iff_sInf_maximal](../../../../mathematics/Algebra/RingTheory/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean/declarations/isjacobsonring-iff-sinf-maximal--6e7f204052535c94d45601f1.md) | 88 | `result-track:6e7f204052535c94d45601f1a0aa1fd0ef3fcb79c32bd4c0b9dff68b51aa3588` |
| 6 | `theorem` | [isJacobsonRing_iff_sInf_maximal'](../../../../mathematics/Algebra/RingTheory/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean/declarations/isjacobsonring-iff-sinf-maximal--55bb76cbbf2fafbc725b1701.md) | 94 | `result-track:55bb76cbbf2fafbc725b17018687a46d8a065eb448107c68acd3f698d4118056` |
| 7 | `theorem` | [Ideal.radical_eq_jacobson](../../../../mathematics/Algebra/RingTheory/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean/declarations/ideal-radical-eq-jacobson--cd0c4b48f105b17a0f622c91.md) | 99 | `result-track:cd0c4b48f105b17a0f622c919c377642bf52b579193b3bae71301fc526cfb9dd` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean/declarations/instance--6b81de3ac72df472679ea31a.md) | 103 | `declaration-track:6b81de3ac72df472679ea31a7eaa9d0ce0fda591081b1d63b557c8943b3c487e` |
| 9 | `theorem` | [isJacobsonRing_of_surjective](../../../../mathematics/Algebra/RingTheory/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean/declarations/isjacobsonring-of-surjective--3b54b7aeec2521d774225ff2.md) | 106 | `result-track:3b54b7aeec2521d774225ff2f927180dfe565ecea199d8fcdae296ee255f743a` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean/declarations/instance--8d642a588eb7982309110d2b.md) | 117 | `declaration-track:8d642a588eb7982309110d2b66a09e43fb37699324144c708b57c483f46f5933` |
| 11 | `theorem` | [isJacobsonRing_iso](../../../../mathematics/Algebra/RingTheory/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean/declarations/isjacobsonring-iso--1c1b5fde2777c077ddc4bfda.md) | 123 | `result-track:1c1b5fde2777c077ddc4bfdaada9bc876c4f063e2a90f8a166687f58a7f9ab11` |
| 12 | `theorem` | [isJacobsonRing_of_isIntegral](../../../../mathematics/Algebra/RingTheory/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean/declarations/isjacobsonring-of-isintegral--9dd786ad2d675820e442c8a1.md) | 127 | `result-track:9dd786ad2d675820e442c8a19f1765a6589fd68c4f453865c67fb4ebbff045c6` |
| 13 | `theorem` | [isJacobsonRing_of_isIntegral'](../../../../mathematics/Algebra/RingTheory/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean/declarations/isjacobsonring-of-isintegral--b74151dee9f1eadc0e70aa8f.md) | 146 | `result-track:b74151dee9f1eadc0e70aa8fbd06bd76c174a8b8b9a39fb75acd9a885f269dca` |
| 14 | `theorem` | [IsLocalization.isMaximal_iff_isMaximal_disjoint](../../../../mathematics/Algebra/RingTheory/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean/declarations/islocalization-ismaximal-iff-ismaximal-disjoint--fa4f75694b69c63dff99d5f4.md) | 166 | `result-track:fa4f75694b69c63dff99d5f4387c0f4d5bd7acfb5ff53ae16c1e9227131e5ef8` |
| 15 | `theorem` | [IsLocalization.isMaximal_of_isMaximal_disjoint](../../../../mathematics/Algebra/RingTheory/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean/declarations/islocalization-ismaximal-of-ismaximal-disjoint--c44a0ade5f53f4818ea02968.md) | 198 | `result-track:c44a0ade5f53f4818ea029680f1dd866e724246f4b604809abb86a65f685b70a` |
| 16 | `def` | [IsLocalization.orderIsoOfMaximal](../../../../mathematics/Algebra/RingTheory/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean/declarations/islocalization-orderisoofmaximal--9f9bf720380680c14c649b28.md) | 208 | `declaration-track:9f9bf720380680c14c649b281ac6156bb103cb41da5a3b005d19ebb6419aa925` |
| 17 | `theorem` | [isJacobsonRing_localization](../../../../mathematics/Algebra/RingTheory/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean/declarations/isjacobsonring-localization--448cb2c7310a8540ebe7acb9.md) | 222 | `result-track:448cb2c7310a8540ebe7acb9956f6171a2251a1ce2349e206c31d4d45ade7f52` |
| 18 | `lemma` | [Subring.mem_closure_image_of](../../../../mathematics/Algebra/RingTheory/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean/declarations/subring-mem-closure-image-of--228f5bb1c7be8bee0d7be310.md) | 258 | `result-track:228f5bb1c7be8bee0d7be310c0d66536f364eded190e9c85fabde9eb43abe036` |
| 19 | `lemma` | [mem_closure_X_union_C](../../../../mathematics/Algebra/RingTheory/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean/declarations/mem-closure-x-union-c--c96eaa86b720f36702db23c1.md) | 268 | `result-track:c96eaa86b720f36702db23c193d47d817106275ed0bd4ee13e1734d292dc0dd6` |
| 20 | `theorem` | [isIntegral_isLocalization_polynomial_quotient](../../../../mathematics/Algebra/RingTheory/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean/declarations/isintegral-islocalization-polynomial-quotient--da1f92d45a3f572f1b30cf84.md) | 290 | `result-track:da1f92d45a3f572f1b30cf846b6ba9c4d992518f02df95e66a5a95ce0adb8e87` |
| 21 | `theorem` | [jacobson_bot_of_integral_localization](../../../../mathematics/Algebra/RingTheory/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean/declarations/jacobson-bot-of-integral-localization--3ebf66b4d0ed6421d801916a.md) | 346 | `result-track:3ebf66b4d0ed6421d801916a94e623c158da3ba1dfec54f044dbb9a8c3fb091c` |
| 22 | `theorem` | [isJacobsonRing_polynomial_of_domain](../../../../mathematics/Algebra/RingTheory/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean/declarations/isjacobsonring-polynomial-of-domain--b21a64dcef724e62cbe756d4.md) | 392 | `result-track:b21a64dcef724e62cbe756d440e1e6e7ab6da2b86459d5c2b706aeab4eb94131` |
| 23 | `theorem` | [isJacobsonRing_polynomial_of_isJacobsonRing](../../../../mathematics/Algebra/RingTheory/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean/declarations/isjacobsonring-polynomial-of-isjacobsonring--602bbea8b930fb148109a0d8.md) | 413 | `result-track:602bbea8b930fb148109a0d8d9d158547c2fedeeb4dc4123d61852272c37496d` |
| 24 | `theorem` | [isJacobsonRing_polynomial_iff_isJacobsonRing](../../../../mathematics/Algebra/RingTheory/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean/declarations/isjacobsonring-polynomial-iff-isjacobsonring--9d8cab09c17e0899c03149fa.md) | 442 | `result-track:9d8cab09c17e0899c03149fa4e391049377b258c69d3af409c229510887108a3` |
| 25 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean/declarations/instance--d75262d2ec905148d376c23d.md) | 448 | `declaration-track:d75262d2ec905148d376c23d914e86d2641df3b52c448b29285ad059a7db33c8` |
| 26 | `theorem` | [isMaximal_comap_C_of_isMaximal](../../../../mathematics/Algebra/RingTheory/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean/declarations/ismaximal-comap-c-of-ismaximal--2fd61ff75eda2e0f1c28811a.md) | 458 | `result-track:2fd61ff75eda2e0f1c28811ae8130d49ceefecac71106205157b618bab5159bb` |
| 27 | `theorem` | [quotient_mk_comp_C_isIntegral_of_jacobson'](../../../../mathematics/Algebra/RingTheory/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean/declarations/quotient-mk-comp-c-isintegral-of-jacobson--b14fea4b2137a9ed27c53e5d.md) | 504 | `result-track:b14fea4b2137a9ed27c53e5dad058220549849ef4dc1ced7f041da5190119c0e` |
| 28 | `theorem` | [quotient_mk_comp_C_isIntegral_of_isJacobsonRing](../../../../mathematics/Algebra/RingTheory/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean/declarations/quotient-mk-comp-c-isintegral-of-isjacobsonring--5852120972facd805769dc02.md) | 543 | `result-track:5852120972facd805769dc022d052a5bfa7cccc9818028178b8d022249ac2de8` |
| 29 | `theorem` | [isMaximal_comap_C_of_isJacobsonRing](../../../../mathematics/Algebra/RingTheory/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean/declarations/ismaximal-comap-c-of-isjacobsonring--aec4f11cd8f2c8c420e950e2.md) | 567 | `result-track:aec4f11cd8f2c8c420e950e29c4fcb28a463970607249c718f3b047879e0029b` |
| 30 | `theorem` | [comp_C_integral_of_surjective_of_isJacobsonRing](../../../../mathematics/Algebra/RingTheory/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean/declarations/comp-c-integral-of-surjective-of-isjacobsonring--869d78acd9641a1100681f8b.md) | 573 | `result-track:869d78acd9641a1100681f8b6ff589c849887cbcd2c53c73382a9ea9ddeecb1b` |
| 31 | `theorem` | [isJacobsonRing_MvPolynomial_fin](../../../../mathematics/Algebra/RingTheory/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean/declarations/isjacobsonring-mvpolynomial-fin--00df1f4a26c110790ff8180c.md) | 593 | `result-track:00df1f4a26c110790ff8180c1ab12664a10681725072da3558e443961de93ac8` |
| 32 | `instance` | [isJacobsonRing](../../../../mathematics/Algebra/RingTheory/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean/declarations/isjacobsonring--87017fe823fe518a325b4792.md) | 604 | `declaration-track:87017fe823fe518a325b479295db39e4b45a7bd6671bca5e04d136b42fa72fea` |
| 33 | `def` | [Cₐ](../../../../mathematics/Algebra/RingTheory/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean/declarations/c--bbe21a4246da65662861b5d5.md) | 617 | `declaration-track:bbe21a4246da65662861b5d54754be57aa97de0eef6e608e5b46decd214a3e6a` |
| 34 | `lemma` | [aux_IH](../../../../mathematics/Algebra/RingTheory/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean/declarations/aux-ih--b0f72fe56ee7c9c5de687353.md) | 621 | `result-track:b0f72fe56ee7c9c5de687353d2fb145badb33629398930e83bf80ad6dcc13b83` |
| 35 | `theorem` | [quotient_mk_comp_C_isIntegral_of_isJacobsonRing'](../../../../mathematics/Algebra/RingTheory/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean/declarations/quotient-mk-comp-c-isintegral-of-isjacobsonring--ac6c0c9eb174daaf1689d6f7.md) | 651 | `result-track:ac6c0c9eb174daaf1689d6f78ebeaf99fff59f5b4623e5b04e7e2bf7b90d3a77` |
| 36 | `theorem` | [quotient_mk_comp_C_isIntegral_of_isJacobsonRing](../../../../mathematics/Algebra/RingTheory/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean/declarations/quotient-mk-comp-c-isintegral-of-isjacobsonring--bdc7db986014d0ebf6b020e6.md) | 661 | `result-track:bdc7db986014d0ebf6b020e6e47efd04c9b087f9a286f13bf198fddffdd75c96` |
| 37 | `theorem` | [comp_C_integral_of_surjective_of_isJacobsonRing](../../../../mathematics/Algebra/RingTheory/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean/declarations/comp-c-integral-of-surjective-of-isjacobsonring--156c3330a51b9d96d7066203.md) | 668 | `result-track:156c3330a51b9d96d70662038788079e4a362668d84698d5d5802108af3b02ed` |
| 38 | `lemma` | [isJacobsonRing_of_finiteType](../../../../mathematics/Algebra/RingTheory/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean/declarations/isjacobsonring-of-finitetype--529eb0a77fd923b920a19820.md) | 695 | `result-track:529eb0a77fd923b920a19820f2555dcc4148e68192dc1e57ab08ac88c63e36a7` |
| 39 | `lemma` | [RingHom.FiniteType.isJacobsonRing](../../../../mathematics/Algebra/RingTheory/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean/declarations/ringhom-finitetype-isjacobsonring--88ea63bffc995a1012bdd2d3.md) | 700 | `result-track:88ea63bffc995a1012bdd2d301356ae1a5751cb45b4cd1a1650d187cc5bc431b` |
| 40 | `lemma` | [finite_of_finite_type_of_isJacobsonRing](../../../../mathematics/Algebra/RingTheory/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean/declarations/finite-of-finite-type-of-isjacobsonring--e87bd7d2e913685530c75efe.md) | 705 | `result-track:e87bd7d2e913685530c75efe0f3c075495a33dc61daf4656b9814028375e0b58` |
| 41 | `lemma` | [RingHom.finite_iff_finiteType_of_isJacobsonRing](../../../../mathematics/Algebra/RingTheory/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean/declarations/ringhom-finite-iff-finitetype-of-isjacobsonring--75478caad1e21106ce1a21b9.md) | 721 | `result-track:75478caad1e21106ce1a21b98a94e252f72612c0a9792862a9f1114ac0f8a681` |
| 42 | `theorem` | [finite_of_algHom_finiteType_of_isJacobsonRing](../../../../mathematics/Algebra/RingTheory/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean/declarations/finite-of-alghom-finitetype-of-isjacobsonring--1077b0ea4ef0d7ca6a932424.md) | 729 | `result-track:1077b0ea4ef0d7ca6a932424b873c68920c232d10207e3c2fde2742eecadcbc4` |
| 43 | `theorem` | [RingHom.finite_of_algHom_finiteType_of_isJacobsonRing](../../../../mathematics/Algebra/RingTheory/Variantb8825d0e4ff32cb3c85be498addc7aff00486cd4902795123c8b1c66ae3ae6a2.lean/declarations/ringhom-finite-of-alghom-finitetype-of-isjacobsonring--b0deaaab2339db00698bcb49.md) | 743 | `result-track:b0deaaab2339db00698bcb4933fedbc8011058a9f126ce900d7ca71336f0a784` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
