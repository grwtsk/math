# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Reverse.Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5f8eadf2e8868b0b39a67ffeb72d104076f92ee",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5f8eadf2e8868b0b39a67ffeb72d104076f92ee`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [revAtFun](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/declarations/revatfun--2d6f11be344704efbac25f1a.md) | 37 | `declaration-track:2d6f11be344704efbac25f1af893540c6205b8605ba960cfa230919bd8de7f32` |
| 2 | `theorem` | [revAtFun_invol](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/declarations/revatfun-invol--f065a25ddf6a79b4e02ec85b.md) | 40 | `result-track:f065a25ddf6a79b4e02ec85b6e6ae59b53fcc4cf82d8af220ce1d00280af7503` |
| 3 | `theorem` | [revAtFun_inj](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/declarations/revatfun-inj--f3599afe38351613a83af1fc.md) | 44 | `result-track:f3599afe38351613a83af1fc8b938a3bd2525c686233caee543e7638e25911f8` |
| 4 | `def` | [revAt](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/declarations/revat--863da11838276a87b5efe804.md) | 52 | `declaration-track:863da11838276a87b5efe8042202f6d18a264a7eb77d1c943fb69ad79fff2430` |
| 5 | `theorem` | [revAtFun_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/declarations/revatfun-eq--9b98c0fdf40c3d016fc4d8d7.md) | 58 | `result-track:9b98c0fdf40c3d016fc4d8d7c0168a4e7b410036e1627df7cb36a1756baade90` |
| 6 | `theorem` | [revAt_invol](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/declarations/revat-invol--bd837606f63760570ba12720.md) | 62 | `result-track:bd837606f63760570ba1272012dcb4f0799162dc546fc6d0148e1fe59e8fdbb8` |
| 7 | `theorem` | [revAt_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/declarations/revat-le--6508bf79a400b4f52102155e.md) | 66 | `result-track:6508bf79a400b4f52102155ea61be11ec1db06c0bbdd75221d23e84fd2ca0c78` |
| 8 | `lemma` | [revAt_eq_self_of_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/declarations/revat-eq-self-of-lt--41250ae8635425433e6cf58c.md) | 70 | `result-track:41250ae8635425433e6cf58ce3ade81e0d9ce9f6f282d3fc6ddaba74f8c1a45f` |
| 9 | `theorem` | [revAt_add](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/declarations/revat-add--3fc7795baa909f9527aa64b0.md) | 72 | `result-track:3fc7795baa909f9527aa64b039f361c5e6d8b031af8e16e1621cb67b085080a5` |
| 10 | `theorem` | [revAt_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/declarations/revat-zero--8b3d0c3fbb5cb934c046d3ad.md) | 80 | `result-track:8b3d0c3fbb5cb934c046d3adfa2e0f25fea8ed368955782b996e24dcfc50321c` |
| 11 | `def` | [reflect](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/declarations/reflect--1deefdc523e9321dbbf1d6d1.md) | 88 | `declaration-track:1deefdc523e9321dbbf1d6d191a6a63e10e63f75a3a80e2514e85daa5e89061b` |
| 12 | `theorem` | [reflect_support](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/declarations/reflect-support--48c34a5210ba8352de113161.md) | 91 | `result-track:48c34a5210ba8352de11316123bf4559f74c084f2d55c0ecd2a6d2c763773f56` |
| 13 | `theorem` | [coeff_reflect](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/declarations/coeff-reflect--96fb04db70cebe3ab3c98bad.md) | 95 | `result-track:96fb04db70cebe3ab3c98badfb2f75b9614b37a0c2a7f8320693836051ffd528` |
| 14 | `lemma` | [reflect_reflect](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/declarations/reflect-reflect--6506d117e93d0d9f568be694.md) | 103 | `result-track:6506d117e93d0d9f568be694559216e2b0e03e8f91077ccc64706213fa189c6d` |
| 15 | `theorem` | [reflect_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/declarations/reflect-zero--c4a421f70ed9eddf25cb0267.md) | 106 | `result-track:c4a421f70ed9eddf25cb0267b4881b1a3f6363d037584e1375018da0c7c8739d` |
| 16 | `lemma` | [reflect_eq_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/declarations/reflect-eq-zero-iff--3982c127951dbcdbaebad69b.md) | 110 | `result-track:3982c127951dbcdbaebad69bfac4997e20ab0b8e9dbdf31b273ca80ff7f7d445` |
| 17 | `theorem` | [reflect_add](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/declarations/reflect-add--b5d1393049447f0fd24a30c2.md) | 113 | `result-track:b5d1393049447f0fd24a30c2b9b98ee8223b8d7bf50d937d8a7b2f4d73bb46dd` |
| 18 | `theorem` | [reflect_C_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/declarations/reflect-c-mul--20e73cf378af88392e381abe.md) | 118 | `result-track:20e73cf378af88392e381abeb68acf1222ad475e63c5b07ea0bd9fdab4bce8a5` |
| 19 | `theorem` | [reflect_C_mul_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/declarations/reflect-c-mul-x-pow--bef005b4e02ec8841e157384.md) | 122 | `result-track:bef005b4e02ec8841e1573845f5f0b2fa721ef016eb44928ce4e27dce7b8c983` |
| 20 | `theorem` | [reflect_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/declarations/reflect-c--433e7a23324ec81cc4b6b423.md) | 127 | `result-track:433e7a23324ec81cc4b6b42383cccba170dedaff6be8df859d94c17b3bf19126` |
| 21 | `theorem` | [reflect_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/declarations/reflect-monomial--22bd2859b6b974955e178a00.md) | 131 | `result-track:22bd2859b6b974955e178a00535635cfbd42d102f43c9376e5babbfffeb6d239` |
| 22 | `lemma` | [reflect_one_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/declarations/reflect-one-x--93fce7a0a3d8c3294818125c.md) | 134 | `result-track:93fce7a0a3d8c3294818125c8e3ec7dec01e199d8575efcbf85229674dfc0db5` |
| 23 | `lemma` | [reflect_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/declarations/reflect-map--f49373518936c59cb82b9908.md) | 137 | `result-track:f49373518936c59cb82b990833f5f5e8e955153443b97c23fc73744ae8aae053` |
| 24 | `lemma` | [reflect_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/declarations/reflect-one--2dc95b4a446d54a46d2265ee.md) | 142 | `result-track:2dc95b4a446d54a46d2265ee953c41c02f985c5b9f3db8d7b4886c333c0599f9` |
| 25 | `theorem` | [reflect_mul_induction](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/declarations/reflect-mul-induction--9f18e513c46792c787c05f2a.md) | 145 | `result-track:9f18e513c46792c787c05f2a5b5ac37509936e58b0c45b3f362f4ab1a7b80cff` |
| 26 | `theorem` | [reflect_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/declarations/reflect-mul--c0d963e87715c9e68401381a.md) | 176 | `result-track:c0d963e87715c9e68401381a0e127ac4ca630af78ab53d076bf493542d23bf3c` |
| 27 | `lemma` | [natDegree_reflect_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/declarations/natdegree-reflect-le--771f5bf91bedc2c5ed96d318.md) | 181 | `result-track:771f5bf91bedc2c5ed96d318ba89f05d1b5e1e93539e412be58ae7b42b9c1b04` |
| 28 | `theorem` | [eval₂_reflect_mul_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/declarations/eval-reflect-mul-pow--5949d39ddb1df23fb6f1c09c.md) | 190 | `result-track:5949d39ddb1df23fb6f1c09c980a308374eb654f53328ed6f9945bcbbf1af9dd` |
| 29 | `theorem` | [eval₂_reflect_eq_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/declarations/eval-reflect-eq-zero-iff--a5137770dbc55cdc36b53e66.md) | 203 | `result-track:a5137770dbc55cdc36b53e66ccf29cd6735644ca7f0f79354b59b1c02b1eb863` |
| 30 | `def` | [reverse](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/declarations/reverse--2e33a46256448c090ad210c1.md) | 217 | `declaration-track:2e33a46256448c090ad210c1940d2925ee9c3f51b35738557a65ca2d92f6951e` |
| 31 | `theorem` | [coeff_reverse](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/declarations/coeff-reverse--617352f8cd7de4479ee6a02f.md) | 220 | `result-track:617352f8cd7de4479ee6a02fcf202137ccc093b9d5512f05e164e75842abc0fe` |
| 32 | `theorem` | [coeff_zero_reverse](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/declarations/coeff-zero-reverse--dc5741dafc963a0ecd1ea984.md) | 224 | `result-track:dc5741dafc963a0ecd1ea984423fb9096809fd99f1013752d2e8b409f3e01050` |
| 33 | `theorem` | [reverse_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/declarations/reverse-zero--e5132e635a463e5ee429ee63.md) | 228 | `result-track:e5132e635a463e5ee429ee6372d935766646c0a4600ec3ce33e6aea3c4e88889` |
| 34 | `theorem` | [reverse_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/declarations/reverse-eq-zero--4570470930dbcd2ea147ecda.md) | 232 | `result-track:4570470930dbcd2ea147ecdaaf03622ba6cbea54a819daad19e083c786deba86` |
| 35 | `theorem` | [reverse_natDegree_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/declarations/reverse-natdegree-le--8eeaa4e087e6d745b8cedf11.md) | 235 | `result-track:8eeaa4e087e6d745b8cedf11375fc7f3175750843c5dd1b9721d25acc30e74b1` |
| 36 | `theorem` | [natDegree_eq_reverse_natDegree_add_natTrailingDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/declarations/natdegree-eq-reverse-natdegree-add-nattrailingdegree--91f0a3f361ed796e743673cf.md) | 242 | `result-track:91f0a3f361ed796e743673cfc0fa04cceed71bab11bb6a426e3225d976c5a3d7` |
| 37 | `theorem` | [reverse_natDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/declarations/reverse-natdegree--e8235d9955486e1cddd08504.md) | 256 | `result-track:e8235d9955486e1cddd085042ba82be8828708ef92038388f816e2916167667b` |
| 38 | `theorem` | [reverse_leadingCoeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/declarations/reverse-leadingcoeff--61719f17f96ccc8ef5442467.md) | 259 | `result-track:61719f17f96ccc8ef54424678bbd6cb5ad5079a9b44ac861b41a5ec2443e415d` |
| 39 | `theorem` | [natTrailingDegree_reverse](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/declarations/nattrailingdegree-reverse--e366945d1e8fa28291483ce0.md) | 263 | `result-track:e366945d1e8fa28291483ce052a0c0a4972b3321d010b4264e11a2fa1551df4b` |
| 40 | `theorem` | [reverse_trailingCoeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/declarations/reverse-trailingcoeff--af92c0c7e32fa74bdac19114.md) | 267 | `result-track:af92c0c7e32fa74bdac1911475b9e1c5ba7dc3b4121b4145ce254e3d8634657c` |
| 41 | `theorem` | [reverse_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/declarations/reverse-mul--ca3aa8853cf5f3d98d3223c0.md) | 270 | `result-track:ca3aa8853cf5f3d98d3223c0a3ebd51d3898306388b898faa5f1776f0fcd4ffb` |
| 42 | `theorem` | [reverse_mul_of_domain](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/declarations/reverse-mul-of-domain--388fa4c7cbb50dc25639c081.md) | 276 | `result-track:388fa4c7cbb50dc25639c08179ecf2b3996e20a8763dd31e90d962e45bfa1004` |
| 43 | `theorem` | [trailingCoeff_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/declarations/trailingcoeff-mul--73d455f57775bb92f2c39f23.md) | 284 | `result-track:73d455f57775bb92f2c39f23744f79657b9a452896d229bf09544f241724f12b` |
| 44 | `theorem` | [coeff_one_reverse](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/declarations/coeff-one-reverse--143be64adb5b5925f4c2de6f.md) | 290 | `result-track:143be64adb5b5925f4c2de6f6aa03c468d05121b49cf9dff5b39e1947203cb8f` |
| 45 | `lemma` | [reverse_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/declarations/reverse-c--deee082c6ac141f5fee82556.md) | 298 | `result-track:deee082c6ac141f5fee825560001d4622dc3b03e66927c5d32ef296472ff2b97` |
| 46 | `lemma` | [reverse_mul_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/declarations/reverse-mul-x--444a0dd87033b43c3e190072.md) | 302 | `result-track:444a0dd87033b43c3e190072578c475c4d5856549d890524ce94d09b516707d5` |
| 47 | `lemma` | [reverse_X_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/declarations/reverse-x-mul--8e131adb41f8421a15c66b9b.md) | 308 | `result-track:8e131adb41f8421a15c66b9b246d36b0f5f74e922d412cd72d482777a8f32ea7` |
| 48 | `lemma` | [reverse_mul_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/declarations/reverse-mul-x-pow--f859be0fdd1bc5c5bcce26e6.md) | 311 | `result-track:f859be0fdd1bc5c5bcce26e6e30f8b67b234f6c42123971e820de07889abc77b` |
| 49 | `lemma` | [reverse_X_pow_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/declarations/reverse-x-pow-mul--fb7101b84d72c02bc9aa7a9c.md) | 316 | `result-track:fb7101b84d72c02bc9aa7a9ca50cf781a8a82a40550d3fde3e250aa0a0bb33ec` |
| 50 | `lemma` | [reverse_add_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/declarations/reverse-add-c--038a755595028b9cef7e8973.md) | 319 | `result-track:038a755595028b9cef7e8973f85d9accb34e7569f9827e5c00aae080f8ea53c9` |
| 51 | `lemma` | [reverse_C_add](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/declarations/reverse-c-add--37fe25315317752f4b8972e3.md) | 323 | `result-track:37fe25315317752f4b8972e3ea7ab5a2fd03401c34ee17ceeef782d68033280b` |
| 52 | `theorem` | [eval₂_reverse_mul_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/declarations/eval-reverse-mul-pow--3d05db77ee0d3abcbfec3328.md) | 331 | `result-track:3d05db77ee0d3abcbfec3328c2210c22a681bab64a170f1a8bd4b77a4aef12d6` |
| 53 | `theorem` | [eval₂_reverse_eq_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/declarations/eval-reverse-eq-zero-iff--259e4f26bab1b111d18d1ca1.md) | 336 | `result-track:259e4f26bab1b111d18d1ca12118a3e97ec16dc787eca9ebf4fff894b3f70686` |
| 54 | `theorem` | [reflect_neg](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/declarations/reflect-neg--f5c77e75c283347f8e21b5b0.md) | 349 | `result-track:f5c77e75c283347f8e21b5b00a0f677fa82878755dcaa6943f5a7ced71f93ca1` |
| 55 | `theorem` | [reflect_sub](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/declarations/reflect-sub--ecb872b3c49471c0791ab508.md) | 353 | `result-track:ecb872b3c49471c0791ab508fdc740cb2ce4940233c76b0ddb82258d5b87b340` |
| 56 | `theorem` | [reverse_neg](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/declarations/reverse-neg--3190e70dd474feb64c94cdb1.md) | 357 | `result-track:3190e70dd474feb64c94cdb1bd3235365c19a133c48dae6f4bece6e297cf42e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
