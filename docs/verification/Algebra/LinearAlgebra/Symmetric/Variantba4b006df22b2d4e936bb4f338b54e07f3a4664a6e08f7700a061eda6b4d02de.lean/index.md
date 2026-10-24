# Verification target: GRWTSK.Algebra.LinearAlgebra.Symmetric.Variantba4b006df22b2d4e936bb4f338b54e07f3a4664a6e08f7700a061eda6b4d02de

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69ff49a8f37d99272939c82a32a4db779aa02a3e",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Symmetric/Variantba4b006df22b2d4e936bb4f338b54e07f3a4664a6e08f7700a061eda6b4d02de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantba4b006df22b2d4e936bb4f338b54e07f3a4664a6e08f7700a061eda6b4d02de.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantba4b006df22b2d4e936bb4f338b54e07f3a4664a6e08f7700a061eda6b4d02de.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69ff49a8f37d99272939c82a32a4db779aa02a3e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Symmetric/Variantba4b006df22b2d4e936bb4f338b54e07f3a4664a6e08f7700a061eda6b4d02de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Symmetric/Variantba4b006df22b2d4e936bb4f338b54e07f3a4664a6e08f7700a061eda6b4d02de.lean.json)

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
| 1 | `def` | [IsSymm](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantba4b006df22b2d4e936bb4f338b54e07f3a4664a6e08f7700a061eda6b4d02de.lean/declarations/issymm--3596906af1f0594a5d0e5ec7.md) | 35 | `declaration-track:3596906af1f0594a5d0e5ec703405d04f1f3f608ec5347da93de6217250f642e` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantba4b006df22b2d4e936bb4f338b54e07f3a4664a6e08f7700a061eda6b4d02de.lean/declarations/instance--c0127ee4cee57f3459f554db.md) | 38 | `declaration-track:c0127ee4cee57f3459f554dbc7a81f05db9f3d275ba5eebb8a14a7c070601238` |
| 3 | `theorem` | [IsSymm.eq](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantba4b006df22b2d4e936bb4f338b54e07f3a4664a6e08f7700a061eda6b4d02de.lean/declarations/issymm-eq--08eec67b0e524505058d8f7a.md) | 41 | `result-track:08eec67b0e524505058d8f7a69e793f927892677321a8658d8e92cb1dd99ed3f` |
| 4 | `theorem` | [IsSymm.ext_iff](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantba4b006df22b2d4e936bb4f338b54e07f3a4664a6e08f7700a061eda6b4d02de.lean/declarations/issymm-ext-iff--675364e326c6a97eeabf11e5.md) | 45 | `result-track:675364e326c6a97eeabf11e5e5c942a69d2487faec009131d677d27b55451fd4` |
| 5 | `theorem` | [IsSymm.ext](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantba4b006df22b2d4e936bb4f338b54e07f3a4664a6e08f7700a061eda6b4d02de.lean/declarations/issymm-ext--561de73c3f7b0b03025aba00.md) | 49 | `result-track:561de73c3f7b0b03025aba000417b4e34d7c056907a4872ec5fb20492ea9fd69` |
| 6 | `theorem` | [IsSymm.apply](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantba4b006df22b2d4e936bb4f338b54e07f3a4664a6e08f7700a061eda6b4d02de.lean/declarations/issymm-apply--ee8866757bae7369edc54622.md) | 52 | `result-track:ee8866757bae7369edc546221c5e1118a4d9c2d91ff46aa3d4e3642485c14dc7` |
| 7 | `theorem` | [isSymm_mul_transpose_self](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantba4b006df22b2d4e936bb4f338b54e07f3a4664a6e08f7700a061eda6b4d02de.lean/declarations/issymm-mul-transpose-self--c7c193918e5190875d093689.md) | 55 | `result-track:c7c193918e5190875d09368951dfc37e5786b00048dcceadd09118aaa822635f` |
| 8 | `theorem` | [isSymm_transpose_mul_self](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantba4b006df22b2d4e936bb4f338b54e07f3a4664a6e08f7700a061eda6b4d02de.lean/declarations/issymm-transpose-mul-self--54053fec012f4bec8e642ecc.md) | 59 | `result-track:54053fec012f4bec8e642eccb4f7456bc4c2863311fad3c452714dc508bd8dd0` |
| 9 | `theorem` | [isSymm_add_transpose_self](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantba4b006df22b2d4e936bb4f338b54e07f3a4664a6e08f7700a061eda6b4d02de.lean/declarations/issymm-add-transpose-self--b7e3ef68eedffa77692598c8.md) | 63 | `result-track:b7e3ef68eedffa77692598c8505f89958fcc336dc7011e224a7d100d2d90f65a` |
| 10 | `theorem` | [isSymm_transpose_add_self](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantba4b006df22b2d4e936bb4f338b54e07f3a4664a6e08f7700a061eda6b4d02de.lean/declarations/issymm-transpose-add-self--e4096b4211f67b04a0ba2060.md) | 66 | `result-track:e4096b4211f67b04a0ba206092a748e2e99997076205625d7d2290e2991b0534` |
| 11 | `theorem` | [isSymm_zero](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantba4b006df22b2d4e936bb4f338b54e07f3a4664a6e08f7700a061eda6b4d02de.lean/declarations/issymm-zero--2004cff6b5c08699ce566e21.md) | 70 | `result-track:2004cff6b5c08699ce566e2161f7a72095ecf86b31ac8edcaa94d0fae3895240` |
| 12 | `theorem` | [isSymm_one](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantba4b006df22b2d4e936bb4f338b54e07f3a4664a6e08f7700a061eda6b4d02de.lean/declarations/issymm-one--af447edb159b0e605095accf.md) | 74 | `result-track:af447edb159b0e605095accf0f57b0fe7c9764a279f219c809b48a62ec004376` |
| 13 | `theorem` | [IsSymm.pow](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantba4b006df22b2d4e936bb4f338b54e07f3a4664a6e08f7700a061eda6b4d02de.lean/declarations/issymm-pow--a880025aa9f218fda896d2ae.md) | 77 | `result-track:a880025aa9f218fda896d2ae6d2b94c2789ec177c36b6924567fecbc45ac1dca` |
| 14 | `theorem` | [IsSymm.map](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantba4b006df22b2d4e936bb4f338b54e07f3a4664a6e08f7700a061eda6b4d02de.lean/declarations/issymm-map--5d8af6c2af7819146792f0c5.md) | 83 | `result-track:5d8af6c2af7819146792f0c57e297c9a2e193c41fccc6ee3e9589e0ef9735c56` |
| 15 | `theorem` | [isSymm_map_iff](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantba4b006df22b2d4e936bb4f338b54e07f3a4664a6e08f7700a061eda6b4d02de.lean/declarations/issymm-map-iff--0f6aacde8e62dace35ba1c65.md) | 87 | `result-track:0f6aacde8e62dace35ba1c65203b30f6b9fc38d329df177130c36592147b7664` |
| 16 | `theorem` | [IsSymm.transpose](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantba4b006df22b2d4e936bb4f338b54e07f3a4664a6e08f7700a061eda6b4d02de.lean/declarations/issymm-transpose--191859ba52a09340f24ca399.md) | 91 | `result-track:191859ba52a09340f24ca399fce413779afe6d12022c3d31e19b2f2adc53dd9a` |
| 17 | `theorem` | [isSymm_transpose_iff](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantba4b006df22b2d4e936bb4f338b54e07f3a4664a6e08f7700a061eda6b4d02de.lean/declarations/issymm-transpose-iff--2cb05e7ecc4c463d4d834ba2.md) | 95 | `result-track:2cb05e7ecc4c463d4d834ba2ddef3c12b010b61635fc5d85ac55ee4820b50b79` |
| 18 | `theorem` | [IsSymm.conjTranspose](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantba4b006df22b2d4e936bb4f338b54e07f3a4664a6e08f7700a061eda6b4d02de.lean/declarations/issymm-conjtranspose--f24b9cf90d0c86497c6d4860.md) | 101 | `result-track:f24b9cf90d0c86497c6d486095b93ed82101f2e2cc554b0c51db1365025c9cd4` |
| 19 | `theorem` | [isSymm_conjTranspose_iff](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantba4b006df22b2d4e936bb4f338b54e07f3a4664a6e08f7700a061eda6b4d02de.lean/declarations/issymm-conjtranspose-iff--4df0be852541ee77f9ed4b69.md) | 105 | `result-track:4df0be852541ee77f9ed4b69bc1e7bc436e6fefdb5e01e95b6092b6188241231` |
| 20 | `theorem` | [IsSymm.neg](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantba4b006df22b2d4e936bb4f338b54e07f3a4664a6e08f7700a061eda6b4d02de.lean/declarations/issymm-neg--c48aba704f4ec150cca37413.md) | 111 | `result-track:c48aba704f4ec150cca37413492ee861fd572a89fb431b120342f896678805fe` |
| 21 | `theorem` | [isSymm_neg_iff](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantba4b006df22b2d4e936bb4f338b54e07f3a4664a6e08f7700a061eda6b4d02de.lean/declarations/issymm-neg-iff--a16c0032c9b7e29790f08bdc.md) | 115 | `result-track:a16c0032c9b7e29790f08bdc35c28c75d1e806c5cb082ddda54aba5c72b4e2a7` |
| 22 | `theorem` | [IsSymm.add](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantba4b006df22b2d4e936bb4f338b54e07f3a4664a6e08f7700a061eda6b4d02de.lean/declarations/issymm-add--20554bfbb4e132f6032a0562.md) | 121 | `result-track:20554bfbb4e132f6032a05620aa6b289359c99473089d6124263cb94977b0abe` |
| 23 | `theorem` | [IsSymm.sub](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantba4b006df22b2d4e936bb4f338b54e07f3a4664a6e08f7700a061eda6b4d02de.lean/declarations/issymm-sub--3f9f0cd9b9504f1e3848c0b9.md) | 125 | `result-track:3f9f0cd9b9504f1e3848c0b918411ecb0ba2b6d43c3a36576354c505ce6a3f85` |
| 24 | `theorem` | [IsSymm.smul](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantba4b006df22b2d4e936bb4f338b54e07f3a4664a6e08f7700a061eda6b4d02de.lean/declarations/issymm-smul--a1ea90fab024f97fcdda2b6a.md) | 129 | `result-track:a1ea90fab024f97fcdda2b6a9eef13ee8219feb914d0beb4b278ee7cb4a50baf` |
| 25 | `theorem` | [isSymm_smul_iff](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantba4b006df22b2d4e936bb4f338b54e07f3a4664a6e08f7700a061eda6b4d02de.lean/declarations/issymm-smul-iff--85a909e41975b6a4bf2fad8d.md) | 133 | `result-track:85a909e41975b6a4bf2fad8daf74269ed1a695fc29d250f5b90a122955bfc25b` |
| 26 | `lemma` | [IsSymm.dotProduct_mulVec_comm](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantba4b006df22b2d4e936bb4f338b54e07f3a4664a6e08f7700a061eda6b4d02de.lean/declarations/issymm-dotproduct-mulvec-comm--d8d743536ab015232a190994.md) | 139 | `result-track:d8d743536ab015232a190994c58e28bb5c91223299c975aa37627b4abe5f0915` |
| 27 | `theorem` | [IsSymm.submatrix](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantba4b006df22b2d4e936bb4f338b54e07f3a4664a6e08f7700a061eda6b4d02de.lean/declarations/issymm-submatrix--197456d88b65bd1f44c2d66b.md) | 145 | `result-track:197456d88b65bd1f44c2d66b37b1ad1bcf010919e0ff511baeed7be0c398b2b1` |
| 28 | `theorem` | [IsSymm.reindex](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantba4b006df22b2d4e936bb4f338b54e07f3a4664a6e08f7700a061eda6b4d02de.lean/declarations/issymm-reindex--bd9610d9999c9581d8021ac5.md) | 148 | `result-track:bd9610d9999c9581d8021ac59310a6d924f7a4d2831328644a495d5127abc188` |
| 29 | `theorem` | [isSymm_reindex_iff](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantba4b006df22b2d4e936bb4f338b54e07f3a4664a6e08f7700a061eda6b4d02de.lean/declarations/issymm-reindex-iff--4748837043267a52e7fa14f4.md) | 152 | `result-track:4748837043267a52e7fa14f436f73f281bf7f0222c6c67dc1e0b66a7acc5b8a0` |
| 30 | `theorem` | [isSymm_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantba4b006df22b2d4e936bb4f338b54e07f3a4664a6e08f7700a061eda6b4d02de.lean/declarations/issymm-diagonal--a825a8aa4f812fadaf84a441.md) | 158 | `result-track:a825a8aa4f812fadaf84a44194e2ca1f6a1f214c273b76738e1a90a0684cc4f0` |
| 31 | `theorem` | [IsSymm.fromBlocks](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantba4b006df22b2d4e936bb4f338b54e07f3a4664a6e08f7700a061eda6b4d02de.lean/declarations/issymm-fromblocks--9cb7c50a99d0563eb2e02967.md) | 163 | `result-track:9cb7c50a99d0563eb2e02967b26877d81bc05f6c6b98619a1e0314d6d69237fb` |
| 32 | `theorem` | [isSymm_fromBlocks_iff](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantba4b006df22b2d4e936bb4f338b54e07f3a4664a6e08f7700a061eda6b4d02de.lean/declarations/issymm-fromblocks-iff--2f502f110f02b336d44d8d99.md) | 173 | `result-track:2f502f110f02b336d44d8d99100a760dfc94f23844343b1b40d7502d31ad2769` |
| 33 | `theorem` | [isSymm_comp_iff](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantba4b006df22b2d4e936bb4f338b54e07f3a4664a6e08f7700a061eda6b4d02de.lean/declarations/issymm-comp-iff--5ad4a15a9f3b12f6398ca6a2.md) | 180 | `result-track:5ad4a15a9f3b12f6398ca6a268969e1f7f75eee8b8bb566603fc73fbf4412e4f` |
| 34 | `theorem` | [isSymm_comp_iff_forall](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantba4b006df22b2d4e936bb4f338b54e07f3a4664a6e08f7700a061eda6b4d02de.lean/declarations/issymm-comp-iff-forall--e6b18f86f6a06d787de443cb.md) | 185 | `result-track:e6b18f86f6a06d787de443cb6c00984c21282b43e561b4c7bfbec4df9c0dfbca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
