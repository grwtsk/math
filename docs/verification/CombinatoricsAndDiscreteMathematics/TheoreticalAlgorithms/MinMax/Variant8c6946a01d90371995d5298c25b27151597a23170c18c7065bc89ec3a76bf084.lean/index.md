# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MinMax.Variant8c6946a01d90371995d5298c25b27151597a23170c18c7065bc89ec3a76bf084

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7f4fac2232f8e44cd80f5c0fd5f328f1f5f2ac2",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant8c6946a01d90371995d5298c25b27151597a23170c18c7065bc89ec3a76bf084.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant8c6946a01d90371995d5298c25b27151597a23170c18c7065bc89ec3a76bf084.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant8c6946a01d90371995d5298c25b27151597a23170c18c7065bc89ec3a76bf084.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7f4fac2232f8e44cd80f5c0fd5f328f1f5f2ac2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant8c6946a01d90371995d5298c25b27151597a23170c18c7065bc89ec3a76bf084.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant8c6946a01d90371995d5298c25b27151597a23170c18c7065bc89ec3a76bf084.lean.json)

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
| 1 | `def` | [argAux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant8c6946a01d90371995d5298c25b27151597a23170c18c7065bc89ec3a76bf084.lean/declarations/argaux--3b1b5cde2ac7c88ba7195275.md) | 40 | `declaration-track:3b1b5cde2ac7c88ba71952750cf515426d52a8d44d56d022ab43bf4c22a37d8d` |
| 2 | `theorem` | [foldl_argAux_eq_none](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant8c6946a01d90371995d5298c25b27151597a23170c18c7065bc89ec3a76bf084.lean/declarations/foldl-argaux-eq-none--438cef4f7dd7b5a0bc791204.md) | 44 | `result-track:438cef4f7dd7b5a0bc791204c28076a24c9aa8e0af9741de9be72f126abb246b` |
| 3 | `theorem` | [foldl_argAux_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant8c6946a01d90371995d5298c25b27151597a23170c18c7065bc89ec3a76bf084.lean/declarations/foldl-argaux-mem--aeb235692fd0a06beebfae2a.md) | 52 | `result-track:aeb235692fd0a06beebfae2a3b14c74db8cb0fbb327ed2cf4967cd76e32361cd` |
| 4 | `theorem` | [argAux_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant8c6946a01d90371995d5298c25b27151597a23170c18c7065bc89ec3a76bf084.lean/declarations/argaux-self--56f03b3ff21dd40ae63fec69.md) | 59 | `result-track:56f03b3ff21dd40ae63fec69f5efab066d8f2f07fe56435b7de75b5bf4867237` |
| 5 | `theorem` | [not_of_mem_foldl_argAux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant8c6946a01d90371995d5298c25b27151597a23170c18c7065bc89ec3a76bf084.lean/declarations/not-of-mem-foldl-argaux--331760efac502e12a0289588.md) | 62 | `result-track:331760efac502e12a0289588838902210b6bb5c81bad2799e71091eee66e1ba9` |
| 6 | `def` | [argmax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant8c6946a01d90371995d5298c25b27151597a23170c18c7065bc89ec3a76bf084.lean/declarations/argmax--caab2900bfc94055cbc22e81.md) | 89 | `declaration-track:caab2900bfc94055cbc22e81eb41a8c012c33aaba975a47e2f9dd73191e4d021` |
| 7 | `theorem` | [argmax_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant8c6946a01d90371995d5298c25b27151597a23170c18c7065bc89ec3a76bf084.lean/declarations/argmax-nil--3fd949ffffcc63e483529ef8.md) | 93 | `result-track:3fd949ffffcc63e483529ef834da8a74a9529068d9fa181a984aa02234e80a0b` |
| 8 | `theorem` | [argmax_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant8c6946a01d90371995d5298c25b27151597a23170c18c7065bc89ec3a76bf084.lean/declarations/argmax-singleton--56c3c46839bf55eb5a571e49.md) | 97 | `result-track:56c3c46839bf55eb5a571e498576938d1f05970a86706df016df47c0a715b335` |
| 9 | `theorem` | [not_lt_of_mem_argmax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant8c6946a01d90371995d5298c25b27151597a23170c18c7065bc89ec3a76bf084.lean/declarations/not-lt-of-mem-argmax--d7d8824ca7d69265fdaf6e8f.md) | 101 | `result-track:d7d8824ca7d69265fdaf6e8f1f2d0bc6976a21e6147a4c494f5a4ed7f8c8cdde` |
| 10 | `theorem` | [argmax_concat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant8c6946a01d90371995d5298c25b27151597a23170c18c7065bc89ec3a76bf084.lean/declarations/argmax-concat--21a23479622acca2b8c71d9c.md) | 106 | `result-track:21a23479622acca2b8c71d9c587ad4972f1431a2e30cea4a9f2b26b5c8365ccb` |
| 11 | `theorem` | [argmax_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant8c6946a01d90371995d5298c25b27151597a23170c18c7065bc89ec3a76bf084.lean/declarations/argmax-mem--85dbb8682d2d5bb5f5edf9da.md) | 112 | `result-track:85dbb8682d2d5bb5f5edf9da15c27d0c37808b037cbe45944508ad649b7a5d09` |
| 12 | `theorem` | [argmax_eq_none](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant8c6946a01d90371995d5298c25b27151597a23170c18c7065bc89ec3a76bf084.lean/declarations/argmax-eq-none--2d195f2dbae01d5ece6085f0.md) | 117 | `result-track:2d195f2dbae01d5ece6085f05480d08c026d10a3d92b23eea9153a1d4313ab5b` |
| 13 | `theorem` | [le_of_mem_argmax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant8c6946a01d90371995d5298c25b27151597a23170c18c7065bc89ec3a76bf084.lean/declarations/le-of-mem-argmax--e494b402afada60d2a91c56b.md) | 126 | `result-track:e494b402afada60d2a91c56bc7c2ec1eeda4670cfa2e1792b9321c90ef77205e` |
| 14 | `theorem` | [argmax_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant8c6946a01d90371995d5298c25b27151597a23170c18c7065bc89ec3a76bf084.lean/declarations/argmax-cons--7470136b50cfa92b34aefc04.md) | 130 | `result-track:7470136b50cfa92b34aefc0460a2680a328050e61b5f2499eb1a33f659ba2f58` |
| 15 | `theorem` | [index_of_argmax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant8c6946a01d90371995d5298c25b27151597a23170c18c7065bc89ec3a76bf084.lean/declarations/index-of-argmax--85c40e6e5431ec966050a2f5.md) | 144 | `result-track:85c40e6e5431ec966050a2f5301c9a10df700bc08fd7bf7c258e4fc31388f477` |
| 16 | `theorem` | [mem_argmax_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant8c6946a01d90371995d5298c25b27151597a23170c18c7065bc89ec3a76bf084.lean/declarations/mem-argmax-iff--aa890d4d0b5951016822494e.md) | 166 | `result-track:aa890d4d0b5951016822494efa1f21505fe8c90115614ebb65c2d7b123290339` |
| 17 | `theorem` | [argmax_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant8c6946a01d90371995d5298c25b27151597a23170c18c7065bc89ec3a76bf084.lean/declarations/argmax-eq-some-iff--c6b20c1f5df7ad170ca26237.md) | 180 | `result-track:c6b20c1f5df7ad170ca26237ffc09cb59de54adae2e18ce4805173ba9e25c591` |
| 18 | `def` | [maximum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant8c6946a01d90371995d5298c25b27151597a23170c18c7065bc89ec3a76bf084.lean/declarations/maximum--fba07121e05f619e3ad6d194.md) | 198 | `declaration-track:fba07121e05f619e3ad6d194dc240a51469b36689a7fdaaed25afa24926a2eed` |
| 19 | `theorem` | [maximum_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant8c6946a01d90371995d5298c25b27151597a23170c18c7065bc89ec3a76bf084.lean/declarations/maximum-nil--68dec566df9b0408b44eae54.md) | 202 | `result-track:68dec566df9b0408b44eae5451fb70f1416052f6f97e2facb3487a978d3149a1` |
| 20 | `theorem` | [maximum_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant8c6946a01d90371995d5298c25b27151597a23170c18c7065bc89ec3a76bf084.lean/declarations/maximum-singleton--2d5398f85f6d188bdfada1b4.md) | 206 | `result-track:2d5398f85f6d188bdfada1b40c656d15bdd58e831e5cac4e76b1832cad66ed7c` |
| 21 | `theorem` | [maximum_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant8c6946a01d90371995d5298c25b27151597a23170c18c7065bc89ec3a76bf084.lean/declarations/maximum-mem--2e112d7fc4e60c432411b4ff.md) | 210 | `result-track:2e112d7fc4e60c432411b4ff0d780c3ee8d4ccb7a08a569d0d11f668965ca676` |
| 22 | `theorem` | [maximum_eq_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant8c6946a01d90371995d5298c25b27151597a23170c18c7065bc89ec3a76bf084.lean/declarations/maximum-eq-bot--855d4dd34cc798103b9ade6c.md) | 214 | `result-track:855d4dd34cc798103b9ade6c288924558a93b79fea50f287e6dd27deeb4c426c` |
| 23 | `theorem` | [not_maximum_lt_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant8c6946a01d90371995d5298c25b27151597a23170c18c7065bc89ec3a76bf084.lean/declarations/not-maximum-lt-of-mem--756aff68d00099362798abd1.md) | 218 | `result-track:756aff68d00099362798abd1069c957a9c9226cf1676741ae2407e3a35578ee5` |
| 24 | `theorem` | [not_maximum_lt_of_mem'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant8c6946a01d90371995d5298c25b27151597a23170c18c7065bc89ec3a76bf084.lean/declarations/not-maximum-lt-of-mem--61631a65bbe171893b1b51b6.md) | 222 | `result-track:61631a65bbe171893b1b51b62ab7aec7ec4a5aa194b82d7f7b19a2765b708bd2` |
| 25 | `theorem` | [maximum_concat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant8c6946a01d90371995d5298c25b27151597a23170c18c7065bc89ec3a76bf084.lean/declarations/maximum-concat--f8393a3babc7bc32544bfd2c.md) | 233 | `result-track:f8393a3babc7bc32544bfd2ca8a173256c46da8478899363b90b6bdf17191fef` |
| 26 | `theorem` | [le_maximum_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant8c6946a01d90371995d5298c25b27151597a23170c18c7065bc89ec3a76bf084.lean/declarations/le-maximum-of-mem--c9ae1ce0f5a76dcd9fdb2e35.md) | 240 | `result-track:c9ae1ce0f5a76dcd9fdb2e35d6cf194ff123e34df77b55154e5c1a5215f528c4` |
| 27 | `theorem` | [le_maximum_of_mem'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant8c6946a01d90371995d5298c25b27151597a23170c18c7065bc89ec3a76bf084.lean/declarations/le-maximum-of-mem--2735a8239225dc35273e03cd.md) | 244 | `result-track:2735a8239225dc35273e03cd0bfd13c91149d3223b7ceaaa80089d87c4e84694` |
| 28 | `theorem` | [maximum_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant8c6946a01d90371995d5298c25b27151597a23170c18c7065bc89ec3a76bf084.lean/declarations/maximum-cons--5bc2e240913ec147475e3a5a.md) | 248 | `result-track:5bc2e240913ec147475e3a5ab89ea528172ed2399ffb2982192ee4d71a6aa39a` |
| 29 | `lemma` | [maximum_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant8c6946a01d90371995d5298c25b27151597a23170c18c7065bc89ec3a76bf084.lean/declarations/maximum-append--90d4bbc41be99de7f8340d1e.md) | 253 | `result-track:90d4bbc41be99de7f8340d1eaab6c8e31deb9c441d039f97148a66d7f807829b` |
| 30 | `theorem` | [maximum_le_of_forall_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant8c6946a01d90371995d5298c25b27151597a23170c18c7065bc89ec3a76bf084.lean/declarations/maximum-le-of-forall-le--0eae0c22875389b2f21a01c2.md) | 259 | `result-track:0eae0c22875389b2f21a01c2b238f4e45e2da353ec8ba0f50e07a713ce48dbeb` |
| 31 | `theorem` | [maximum_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant8c6946a01d90371995d5298c25b27151597a23170c18c7065bc89ec3a76bf084.lean/declarations/maximum-mono--1e7b93043020558a47501939.md) | 267 | `result-track:1e7b93043020558a475019390746dbc3afc57145adba45c53fc29b86cc8ba508` |
| 32 | `theorem` | [maximum_eq_coe_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant8c6946a01d90371995d5298c25b27151597a23170c18c7065bc89ec3a76bf084.lean/declarations/maximum-eq-coe-iff--13d1c6dec77d4f90e49d7ba8.md) | 272 | `result-track:13d1c6dec77d4f90e49d7ba810163ab6be76c9980a2af757e1e65132b5b4c5ac` |
| 33 | `theorem` | [coe_le_maximum_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant8c6946a01d90371995d5298c25b27151597a23170c18c7065bc89ec3a76bf084.lean/declarations/coe-le-maximum-iff--9a1f29440b67fd1c1f3b4755.md) | 279 | `result-track:9a1f29440b67fd1c1f3b4755d18640e20b6fd8da48a37c4f51adbfef06f6741b` |
| 34 | `theorem` | [maximum_ne_bot_of_ne_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant8c6946a01d90371995d5298c25b27151597a23170c18c7065bc89ec3a76bf084.lean/declarations/maximum-ne-bot-of-ne-nil--fb6ba69d91c4aac6e5681834.md) | 283 | `result-track:fb6ba69d91c4aac6e5681834087afb7b598974c94df2009f41dea57378f5febc` |
| 35 | `theorem` | [maximum_ne_bot_of_length_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant8c6946a01d90371995d5298c25b27151597a23170c18c7065bc89ec3a76bf084.lean/declarations/maximum-ne-bot-of-length-pos--316cc84963a80415343c3ed9.md) | 287 | `result-track:316cc84963a80415343c3ed9cb47e5e654104d1bd2176bcf1a6bb4363dd1b555` |
| 36 | `def` | [maximum_of_length_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant8c6946a01d90371995d5298c25b27151597a23170c18c7065bc89ec3a76bf084.lean/declarations/maximum-of-length-pos--c322a180adecc3724f6158ed.md) | 292 | `declaration-track:c322a180adecc3724f6158ed8526337fcdc55161e3d72819946850d9f03caff5` |
| 37 | `lemma` | [coe_maximum_of_length_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant8c6946a01d90371995d5298c25b27151597a23170c18c7065bc89ec3a76bf084.lean/declarations/coe-maximum-of-length-pos--068645e016e28430093ddee6.md) | 296 | `result-track:068645e016e28430093ddee6450fb42b0b15028349eb77903a0d1c7ef3f159b9` |
| 38 | `theorem` | [le_maximum_of_length_pos_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant8c6946a01d90371995d5298c25b27151597a23170c18c7065bc89ec3a76bf084.lean/declarations/le-maximum-of-length-pos-iff--d037ef774f69296f75000367.md) | 301 | `result-track:d037ef774f69296f75000367ce52b8563e96024279d5f296f0d0fdddae6fe8f8` |
| 39 | `theorem` | [maximum_of_length_pos_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant8c6946a01d90371995d5298c25b27151597a23170c18c7065bc89ec3a76bf084.lean/declarations/maximum-of-length-pos-mem--14d62bd131dd59154f958692.md) | 306 | `result-track:14d62bd131dd59154f958692984049a27ef9ea230584e5af1349dca009957ff1` |
| 40 | `theorem` | [le_maximum_of_length_pos_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant8c6946a01d90371995d5298c25b27151597a23170c18c7065bc89ec3a76bf084.lean/declarations/le-maximum-of-length-pos-of-mem--491b100ba3e8e69c141dfd8e.md) | 312 | `result-track:491b100ba3e8e69c141dfd8e0708aa300eb3551b6eea8d8749c156526fb71240` |
| 41 | `theorem` | [getElem_le_maximum_of_length_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant8c6946a01d90371995d5298c25b27151597a23170c18c7065bc89ec3a76bf084.lean/declarations/getelem-le-maximum-of-length-pos--b46c37aa1604afa4ff6adde9.md) | 318 | `result-track:b46c37aa1604afa4ff6adde943e17b8b724935524ede3e3d4dda979c0b1f6893` |
| 42 | `theorem` | [Perm.maximum_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant8c6946a01d90371995d5298c25b27151597a23170c18c7065bc89ec3a76bf084.lean/declarations/perm-maximum-eq--06b56e96a440ee96eb2af950.md) | 324 | `result-track:06b56e96a440ee96eb2af95017415e793544296ecda8143e90cc8f6fedc2537c` |
| 43 | `lemma` | [getD_max?_eq_unbotD_maximum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant8c6946a01d90371995d5298c25b27151597a23170c18c7065bc89ec3a76bf084.lean/declarations/getd-max-eq-unbotd-maximum--af34542e9adb35824cf2ac66.md) | 329 | `result-track:af34542e9adb35824cf2ac66d99894a86f18cef5229187e830e0dfd6a03f9db3` |
| 44 | `theorem` | [foldr_max_of_ne_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant8c6946a01d90371995d5298c25b27151597a23170c18c7065bc89ec3a76bf084.lean/declarations/foldr-max-of-ne-nil--4fbdb1cdaa5d9d82c0834c02.md) | 356 | `result-track:4fbdb1cdaa5d9d82c0834c020951bf2f0e6b2a05e3f4bc00884fc2ddee519eeb` |
| 45 | `theorem` | [max_le_of_forall_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant8c6946a01d90371995d5298c25b27151597a23170c18c7065bc89ec3a76bf084.lean/declarations/max-le-of-forall-le--418bbdb6376f7c4f7129aa85.md) | 366 | `result-track:418bbdb6376f7c4f7129aa855b969cd7248a5e4b59385c7577626fa61d728929` |
| 46 | `theorem` | [le_max_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant8c6946a01d90371995d5298c25b27151597a23170c18c7065bc89ec3a76bf084.lean/declarations/le-max-of-le--fa2cdbe72a309217c9980191.md) | 372 | `result-track:fa2cdbe72a309217c9980191acc941d74b7aebae128cfc6e5128074b9aac106a` |
| 47 | `theorem` | [le_max_of_le'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant8c6946a01d90371995d5298c25b27151597a23170c18c7065bc89ec3a76bf084.lean/declarations/le-max-of-le--15560c1699370fa0ef61f56c.md) | 385 | `result-track:15560c1699370fa0ef61f56c3b02fe2a1728afb0fd4b56d099cdde70608fdbf7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
