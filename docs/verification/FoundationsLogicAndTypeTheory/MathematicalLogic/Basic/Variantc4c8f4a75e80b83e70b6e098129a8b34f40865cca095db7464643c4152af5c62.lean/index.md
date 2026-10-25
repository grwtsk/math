# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Basic.Variantc4c8f4a75e80b83e70b6e098129a8b34f40865cca095db7464643c4152af5c62

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff585c1335b886546e282da848566b309ff3e962",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc4c8f4a75e80b83e70b6e098129a8b34f40865cca095db7464643c4152af5c62.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc4c8f4a75e80b83e70b6e098129a8b34f40865cca095db7464643c4152af5c62.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc4c8f4a75e80b83e70b6e098129a8b34f40865cca095db7464643c4152af5c62.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff585c1335b886546e282da848566b309ff3e962`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc4c8f4a75e80b83e70b6e098129a8b34f40865cca095db7464643c4152af5c62.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc4c8f4a75e80b83e70b6e098129a8b34f40865cca095db7464643c4152af5c62.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Logic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc4c8f4a75e80b83e70b6e098129a8b34f40865cca095db7464643c4152af5c62.lean/declarations/isleft--5af5267b09b291c9cab20717.md) | 51 | `declaration-track:5af5267b09b291c9cab207171a2746baedf1d2eb20eda1bc1921a71a22f19ebe` |
| 2 | `def` | [isRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc4c8f4a75e80b83e70b6e098129a8b34f40865cca095db7464643c4152af5c62.lean/declarations/isright--dfdebb901c500d83e818ac12.md) | 56 | `declaration-track:dfdebb901c500d83e818ac124d69efc1b2b7952cf85a5d3e8309e3938e5ba5b6` |
| 3 | `def` | [getLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc4c8f4a75e80b83e70b6e098129a8b34f40865cca095db7464643c4152af5c62.lean/declarations/getleft--0164ea6790c438edd4d4e1a4.md) | 61 | `declaration-track:0164ea6790c438edd4d4e1a48f935a885c9d19d8023027c249a1e2dc0888669f` |
| 4 | `def` | [getRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc4c8f4a75e80b83e70b6e098129a8b34f40865cca095db7464643c4152af5c62.lean/declarations/getright--ff90fab6768a321862ab6ec1.md) | 65 | `declaration-track:ff90fab6768a321862ab6ec1848fbd77c40d37adfd4bc92f6280ce1263750463` |
| 5 | `def` | [getLeft?](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc4c8f4a75e80b83e70b6e098129a8b34f40865cca095db7464643c4152af5c62.lean/declarations/getleft--40155528271485494591aab7.md) | 69 | `declaration-track:40155528271485494591aab76763c465a817291a8cce3f6c4d95f3c7611b5805` |
| 6 | `def` | [getRight?](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc4c8f4a75e80b83e70b6e098129a8b34f40865cca095db7464643c4152af5c62.lean/declarations/getright--9c464a23f823efe6dbef35d5.md) | 74 | `declaration-track:9c464a23f823efe6dbef35d51dbe1bd45960a81c90162f4df438c50a8c7a3042` |
| 7 | `theorem` | [isLeft_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc4c8f4a75e80b83e70b6e098129a8b34f40865cca095db7464643c4152af5c62.lean/declarations/isleft-inl--77ded0e0b80fcb83e44138dd.md) | 78 | `result-track:77ded0e0b80fcb83e44138ddfbb1c54dc48b4d351cec91da1cec1f0bf5c4bd63` |
| 8 | `theorem` | [isLeft_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc4c8f4a75e80b83e70b6e098129a8b34f40865cca095db7464643c4152af5c62.lean/declarations/isleft-inr--7ea2ea62c454ef9a14b3fd79.md) | 79 | `result-track:7ea2ea62c454ef9a14b3fd79ec367649307da22743a7b79a71cab3c1353cf779` |
| 9 | `theorem` | [isRight_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc4c8f4a75e80b83e70b6e098129a8b34f40865cca095db7464643c4152af5c62.lean/declarations/isright-inl--532c55d9f32547c7fa0d115b.md) | 80 | `result-track:532c55d9f32547c7fa0d115b3dc933b324c61f8c1c476b05365c83ef2f176674` |
| 10 | `theorem` | [isRight_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc4c8f4a75e80b83e70b6e098129a8b34f40865cca095db7464643c4152af5c62.lean/declarations/isright-inr--dd5b71d89eed089deaafa23b.md) | 81 | `result-track:dd5b71d89eed089deaafa23b55fbb54091fe56d15752a52d6ec13abd242be594` |
| 11 | `theorem` | [getLeft_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc4c8f4a75e80b83e70b6e098129a8b34f40865cca095db7464643c4152af5c62.lean/declarations/getleft-inl--45e120ef05f6d7d0b7c7e172.md) | 83 | `result-track:45e120ef05f6d7d0b7c7e1728f3cf92d6d8725e8bbe90bd9e90f8894082161e5` |
| 12 | `theorem` | [getRight_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc4c8f4a75e80b83e70b6e098129a8b34f40865cca095db7464643c4152af5c62.lean/declarations/getright-inr--11f874865c71f9e5b0cdd26c.md) | 84 | `result-track:11f874865c71f9e5b0cdd26cba6c57d2dd7a7d94ea376b74650e478f389ea751` |
| 13 | `theorem` | [getLeft?_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc4c8f4a75e80b83e70b6e098129a8b34f40865cca095db7464643c4152af5c62.lean/declarations/getleft-inl--54a88a922701f5f0c6285693.md) | 86 | `result-track:54a88a922701f5f0c62856936a41b935d21ac4d43d726e40fd56f9798f5a10a9` |
| 14 | `theorem` | [getLeft?_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc4c8f4a75e80b83e70b6e098129a8b34f40865cca095db7464643c4152af5c62.lean/declarations/getleft-inr--1417e14cff6c673b8bef5f2d.md) | 87 | `result-track:1417e14cff6c673b8bef5f2d24a5d117d9c0a0bfc05a4ce4b3c1b68efde3595f` |
| 15 | `theorem` | [getRight?_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc4c8f4a75e80b83e70b6e098129a8b34f40865cca095db7464643c4152af5c62.lean/declarations/getright-inl--0c973f4b1add9f927475362e.md) | 88 | `result-track:0c973f4b1add9f927475362eca252b197f581d70c8b7a032a67ddc3c8ebb872d` |
| 16 | `theorem` | [getRight?_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc4c8f4a75e80b83e70b6e098129a8b34f40865cca095db7464643c4152af5c62.lean/declarations/getright-inr--12802b3992c205675e17d7f9.md) | 89 | `result-track:12802b3992c205675e17d7f9129086c28c66202ac1af679b38310a992f67a320` |
| 17 | `def` | [elim](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc4c8f4a75e80b83e70b6e098129a8b34f40865cca095db7464643c4152af5c62.lean/declarations/elim--86ad17a20ac497ae90ced417.md) | 94 | `declaration-track:86ad17a20ac497ae90ced41748b2dc08b7be6a9f645d2183505381754eed7465` |
| 18 | `theorem` | [elim_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc4c8f4a75e80b83e70b6e098129a8b34f40865cca095db7464643c4152af5c62.lean/declarations/elim-inl--c81acc137b56becee540b520.md) | 97 | `result-track:c81acc137b56becee540b52065c150350cf0b2a5d6133f3d5ed614d6e5cbadfb` |
| 19 | `theorem` | [elim_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc4c8f4a75e80b83e70b6e098129a8b34f40865cca095db7464643c4152af5c62.lean/declarations/elim-inr--fd3d960f35774b5e5c02da8c.md) | 100 | `result-track:fd3d960f35774b5e5c02da8c3a2a7135f6da095e3f5d663441143c332ad73601` |
| 20 | `def` | [map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc4c8f4a75e80b83e70b6e098129a8b34f40865cca095db7464643c4152af5c62.lean/declarations/map--eaf355adb844269b7d34cb84.md) | 104 | `declaration-track:eaf355adb844269b7d34cb8433d7c9a6f362917bf02f7e1671ac40573141b453` |
| 21 | `theorem` | [map_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc4c8f4a75e80b83e70b6e098129a8b34f40865cca095db7464643c4152af5c62.lean/declarations/map-inl--ccf1a80faf09b4a498087848.md) | 107 | `result-track:ccf1a80faf09b4a498087848180086e8533fd3e97645f8ac8d635e16f19262b2` |
| 22 | `theorem` | [map_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc4c8f4a75e80b83e70b6e098129a8b34f40865cca095db7464643c4152af5c62.lean/declarations/map-inr--1f27c25bae435b29c7c4c20a.md) | 109 | `result-track:1f27c25bae435b29c7c4c20acf08ab746c759eb993a9396b93b5800519963d86` |
| 23 | `def` | [swap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc4c8f4a75e80b83e70b6e098129a8b34f40865cca095db7464643c4152af5c62.lean/declarations/swap--35ccb84ad462ddafa8965a5a.md) | 112 | `declaration-track:35ccb84ad462ddafa8965a5a97cbad87eff46b1758252dfab42a586b4e6499a0` |
| 24 | `theorem` | [swap_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc4c8f4a75e80b83e70b6e098129a8b34f40865cca095db7464643c4152af5c62.lean/declarations/swap-inl--f8c55033ac4671f51e8e0e01.md) | 114 | `result-track:f8c55033ac4671f51e8e0e0136d5f52ecc9b67da0c06b572a54e2fbeff3f4564` |
| 25 | `theorem` | [swap_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc4c8f4a75e80b83e70b6e098129a8b34f40865cca095db7464643c4152af5c62.lean/declarations/swap-inr--13adab5fe378ad8e4ef99b5f.md) | 116 | `result-track:13adab5fe378ad8e4ef99b5ff051988233e962f2504766da7e50e70140564f60` |
| 26 | `inductive` | [LiftRel](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc4c8f4a75e80b83e70b6e098129a8b34f40865cca095db7464643c4152af5c62.lean/declarations/liftrel--f342483ffd0ece506baf3685.md) | 122 | `declaration-track:f342483ffd0ece506baf36853ba1c0d86163f00958bcec827e59fcf2e77c0897` |
| 27 | `theorem` | [liftRel_inl_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc4c8f4a75e80b83e70b6e098129a8b34f40865cca095db7464643c4152af5c62.lean/declarations/liftrel-inl-inl--05ed6eca6e3a5953caad5b8a.md) | 128 | `result-track:05ed6eca6e3a5953caad5b8a1cf30216ea69c6b6b50c0d65c9b925dc2f949391` |
| 28 | `theorem` | [not_liftRel_inl_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc4c8f4a75e80b83e70b6e098129a8b34f40865cca095db7464643c4152af5c62.lean/declarations/not-liftrel-inl-inr--7b6c9746acf1fda1fd109dd1.md) | 131 | `result-track:7b6c9746acf1fda1fd109dd1e19c24e47fc7aa0bd444909139d222c72a9b7161` |
| 29 | `theorem` | [not_liftRel_inr_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc4c8f4a75e80b83e70b6e098129a8b34f40865cca095db7464643c4152af5c62.lean/declarations/not-liftrel-inr-inl--53a3fd922571ea496140e464.md) | 133 | `result-track:53a3fd922571ea496140e464b79dec773a3cf514eb9b53528ac112460408e9fd` |
| 30 | `theorem` | [liftRel_inr_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc4c8f4a75e80b83e70b6e098129a8b34f40865cca095db7464643c4152af5c62.lean/declarations/liftrel-inr-inr--9cff62d116d22fe0e41b57f7.md) | 135 | `result-track:9cff62d116d22fe0e41b57f7dbecf11b57fdf5fe6cc35e0a36e3034c9bf139d1` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc4c8f4a75e80b83e70b6e098129a8b34f40865cca095db7464643c4152af5c62.lean/declarations/instance--806498983a75ab65ba380948.md) | 138 | `declaration-track:806498983a75ab65ba3809482785dc7b3c21f56fab8fb787117b4ae9963286ab` |
| 32 | `inductive` | [Lex](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc4c8f4a75e80b83e70b6e098129a8b34f40865cca095db7464643c4152af5c62.lean/declarations/lex--531707162c311e399d8892d7.md) | 152 | `declaration-track:531707162c311e399d8892d7bf31ac0e846980e989f513d94e6cc25916d5fe8a` |
| 33 | `theorem` | [lex_inl_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc4c8f4a75e80b83e70b6e098129a8b34f40865cca095db7464643c4152af5c62.lean/declarations/lex-inl-inl--ac22c60929f5f2330dc4b44d.md) | 162 | `result-track:ac22c60929f5f2330dc4b44d05af4e8669b3600854608d8312b058b816098efb` |
| 34 | `theorem` | [lex_inr_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc4c8f4a75e80b83e70b6e098129a8b34f40865cca095db7464643c4152af5c62.lean/declarations/lex-inr-inr--5a1b3fcca2ad0d8b5d5e98e5.md) | 165 | `result-track:5a1b3fcca2ad0d8b5d5e98e54bdb56af5c39a8140dbae1a1991ce3d732f47567` |
| 35 | `theorem` | [lex_inr_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc4c8f4a75e80b83e70b6e098129a8b34f40865cca095db7464643c4152af5c62.lean/declarations/lex-inr-inl--7ec3aff9034e13f2ebcbc912.md) | 168 | `result-track:7ec3aff9034e13f2ebcbc91279d48d22b2455760dfece1e82d4afc5727380442` |
| 36 | `instance` | [instDecidableRelSumLex](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc4c8f4a75e80b83e70b6e098129a8b34f40865cca095db7464643c4152af5c62.lean/declarations/instdecidablerelsumlex--8b7acf5896e5dc973e2277c3.md) | 170 | `declaration-track:8b7acf5896e5dc973e2277c3094e2ca193880bdfee6d76d2a653dc3e9c0b5703` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
