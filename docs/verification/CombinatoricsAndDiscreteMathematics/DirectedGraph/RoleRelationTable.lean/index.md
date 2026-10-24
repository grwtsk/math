# Verification target: GRWTSK.Combinatorics.DirectedGraph.RoleRelationTable

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a008799c845b3c2f5683eba2740b2e1819f25bd4",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/DirectedGraph/RoleRelationTable.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationTable.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationTable.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a008799c845b3c2f5683eba2740b2e1819f25bd4`.

Source path: `GRWTSK/Combinatorics/DirectedGraph/RoleRelationTable.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/DirectedGraph/RoleRelationTable.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.DirectedGraph.PrefixTableCompaction`](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCompaction.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Table](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationTable.lean/declarations/table--e99214e02483c7f290fcdfd4.md) | 31 | `declaration-track:e99214e02483c7f290fcdfd463ed54d850d3905f8c4adf57f75cb57a86f22978` |
| 2 | `structure` | [Vertex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationTable.lean/declarations/vertex--15b2fcca17d3e465d24768ba.md) | 37 | `declaration-track:15b2fcca17d3e465d24768ba6966a7e56ca508e4ced5f51ff5bba64dc49d6400` |
| 3 | `abbrev` | [RoleId](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationTable.lean/declarations/roleid--53cd91f68c87e81779540077.md) | 41 | `declaration-track:53cd91f68c87e81779540077103ed1bed0232bf44e36696c180f634044c924e9` |
| 4 | `instance` | [tableQuiver](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationTable.lean/declarations/tablequiver--ae8e8a82bdaf51d49546153e.md) | 43 | `declaration-track:ae8e8a82bdaf51d49546153e36bcb53244dadfaafb30bf1c2d38af9e3eef7764` |
| 5 | `def` | [vertexEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationTable.lean/declarations/vertexequiv--2a5837128d540d149de78e6b.md) | 50 | `declaration-track:2a5837128d540d149de78e6be5a29f8b08a9e40b64b47f6c689f0cf665c5f099` |
| 6 | `def` | [edgeId](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationTable.lean/declarations/edgeid--541fa42a24745d02f021bbcf.md) | 57 | `declaration-track:541fa42a24745d02f021bbcffa0cdf104aadf893eebfc53944d4f72e2a781120` |
| 7 | `def` | [fullEdge](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationTable.lean/declarations/fulledge--cc2d6087469f18799e33d4a8.md) | 61 | `declaration-track:cc2d6087469f18799e33d4a8dd7069a9e60ddcbb8835be0bbeae8ba2e3d44da3` |
| 8 | `theorem` | [fullEdge_source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationTable.lean/declarations/fulledge-source--0da9117baa8678b83c28c773.md) | 64 | `result-track:0da9117baa8678b83c28c7736213ad8f8fbd3fade56c3609b025a80fa77c6fc6` |
| 9 | `theorem` | [fullEdge_target](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationTable.lean/declarations/fulledge-target--c4880ff90d519963dda16e0b.md) | 67 | `result-track:c4880ff90d519963dda16e0bb998e78f1a76e45146ce375c782affa319fe41fc` |
| 10 | `theorem` | [fullEdge_edgeId](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationTable.lean/declarations/fulledge-edgeid--f25c2f734dc39f865a3b6654.md) | 70 | `result-track:f25c2f734dc39f865a3b6654df9a57a03b356ef6cd65ca0885018fea3a232b82` |
| 11 | `theorem` | [edgeId_fullEdge](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationTable.lean/declarations/edgeid-fulledge--c5a0096f0d05ffb6448ff1ff.md) | 77 | `result-track:c5a0096f0d05ffb6448ff1ffdb689da1b2ac024e1b5aa8cc9c193861755323a5` |
| 12 | `def` | [edgeEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationTable.lean/declarations/edgeequiv--201ad134c223ec24a0122fb5.md) | 80 | `declaration-track:201ad134c223ec24a0122fb5c76c84830ad659227c5e183ef95ebcb23b54e681` |
| 13 | `def` | [expandIds](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationTable.lean/declarations/expandids--d0c6cb3e81015a28be356a7c.md) | 87 | `declaration-track:d0c6cb3e81015a28be356a7ce43485e179018947ea46e2b7eac6fea3ae06a0df` |
| 14 | `def` | [encodePath](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationTable.lean/declarations/encodepath--a2ac4711a1d2821845ba957f.md) | 91 | `declaration-track:a2ac4711a1d2821845ba957f6ba40e2af7a397b0fef5ef6e1e6c2b45eb86e8e9` |
| 15 | `def` | [encode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationTable.lean/declarations/encode--f13083acdc124e5bf5fc7788.md) | 94 | `declaration-track:f13083acdc124e5bf5fc778811de62d531f12aa89fb0cc81bbbb1254568350ec` |
| 16 | `theorem` | [expand_encodePath](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationTable.lean/declarations/expand-encodepath--f5b89a4e940e863bb9ad9837.md) | 97 | `result-track:f5b89a4e940e863bb9ad98377b93220cd90abd818331f936e3aa54dc262e972f` |
| 17 | `theorem` | [expand_encode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationTable.lean/declarations/expand-encode--59b3d9f7e906fcbb22e83e7b.md) | 103 | `result-track:59b3d9f7e906fcbb22e83e7b4015969100b410013613709f7eca2dd29e837f97` |
| 18 | `theorem` | [ids_expand](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationTable.lean/declarations/ids-expand--9a3ff3a7efaf6872412ce36f.md) | 107 | `result-track:9a3ff3a7efaf6872412ce36fc858dd000598160861706bfae3b103c64b3988a9` |
| 19 | `theorem` | [encodePath_comp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationTable.lean/declarations/encodepath-comp--f9de829cd082eaafa8fc0bf5.md) | 112 | `result-track:f9de829cd082eaafa8fc0bf52c728ba9215e58bb7df2e31084a09028cd5fe5bc` |
| 20 | `theorem` | [encode_nil](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationTable.lean/declarations/encode-nil--4870fb0c10e9a58114744a6b.md) | 117 | `result-track:4870fb0c10e9a58114744a6b6bea7afab0a9a0af78ef463b3b9fc41efd05ed60` |
| 21 | `abbrev` | [ValidFrom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationTable.lean/declarations/validfrom--2aca46f043e4e8aaea9f7e7e.md) | 121 | `declaration-track:2aca46f043e4e8aaea9f7e7e84772826f851fc10078b88510cc3d6475f699d22` |
| 22 | `theorem` | [valid_encode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationTable.lean/declarations/valid-encode--2535b66085bff21ac1941079.md) | 124 | `result-track:2535b66085bff21ac19410790c1fb47e84b8f271078b94771c5e01e6c2be64ba` |
| 23 | `def` | [decode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationTable.lean/declarations/decode--6b8849ab08626a184551c915.md) | 130 | `declaration-track:6b8849ab08626a184551c915fa6135498e5401f78191d1fb27a0885c57b637ac` |
| 24 | `theorem` | [encode_decode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationTable.lean/declarations/encode-decode--db68358190ba2cc780905de2.md) | 134 | `result-track:db68358190ba2cc780905de22d80c348b43a495d0024396dd875ad9eb8d75cca` |
| 25 | `theorem` | [decode_encode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationTable.lean/declarations/decode-encode--1d3a571bc0b04887e5c4f600.md) | 142 | `result-track:1d3a571bc0b04887e5c4f60085ed0a1d4ad5fdb7f36c277d8e6ddff8dbfa6a9b` |
| 26 | `def` | [pathStarEquivIds](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationTable.lean/declarations/pathstarequivids--4fe4e5cf7620559206689387.md) | 150 | `declaration-track:4fe4e5cf76205592066893874dbb6ecd1a418a742f103943c94ba4a6d38ad475` |
| 27 | `theorem` | [encode_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationTable.lean/declarations/encode-injective--c032992b8fa6af4c0deb6566.md) | 157 | `result-track:c032992b8fa6af4c0deb6566e0c3bc0187f1bcd7ddd1883255a17b0e0ef4f2a4` |
| 28 | `def` | [finish](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationTable.lean/declarations/finish--fed3c5ecce79690db7fa2c0a.md) | 163 | `declaration-track:fed3c5ecce79690db7fa2c0ad4be106c68c5373f310865b6bd1cc4f4bb77db11` |
| 29 | `theorem` | [finish_nil](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationTable.lean/declarations/finish-nil--ee960828fc723c0da6949c0e.md) | 167 | `result-track:ee960828fc723c0da6949c0edb5c17a77781891684ff6514046698a64560466c` |
| 30 | `theorem` | [finish_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationTable.lean/declarations/finish-cons--e3c8c1c8cf3cffc0f47ca94b.md) | 169 | `result-track:e3c8c1c8cf3cffc0f47ca94bf4eb925bc30c1018fbd52479a8b07c97f9165def` |
| 31 | `theorem` | [decode_endpoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationTable.lean/declarations/decode-endpoint--b7056f1f0ad28dc1984b14ce.md) | 173 | `result-track:b7056f1f0ad28dc1984b14ce39222799589282d7c3a472917337ea7565553912` |
| 32 | `def` | [lookup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationTable.lean/declarations/lookup--2ece614c2f65ab5c20658861.md) | 181 | `declaration-track:2ece614c2f65ab5c2065886116e1585aa5165a8b6339b11fabdb197c0a5b632b` |
| 33 | `theorem` | [lookup_roleId](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationTable.lean/declarations/lookup-roleid--94a0102eddb8aa65daa514a5.md) | 186 | `result-track:94a0102eddb8aa65daa514a5aafacea06ea82f93220bdcfdad90c1fa78aace26` |
| 34 | `theorem` | [lookup_out_of_bounds](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationTable.lean/declarations/lookup-out-of-bounds--fa4a26da15f13dbec234f669.md) | 189 | `result-track:fa4a26da15f13dbec234f6692a99c3c2c644396ef25284e3c2ce80f323b30cc8` |
| 35 | `theorem` | [lookup_wrong_role](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationTable.lean/declarations/lookup-wrong-role--233464c2a6521d1d4045c937.md) | 193 | `result-track:233464c2a6521d1d4045c93736f46e6fc87b631dcbecd27db6d0c81861307371` |
| 36 | `def` | [idRows](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationTable.lean/declarations/idrows--588f6415c764cfc1064cf9c7.md) | 199 | `declaration-track:588f6415c764cfc1064cf9c75de06b9c080f82ccf78d546f0ee94b52df740875` |
| 37 | `theorem` | [expand_idRows](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationTable.lean/declarations/expand-idrows--e7df40857b1d46047b2ab69f.md) | 205 | `result-track:e7df40857b1d46047b2ab69f9a35b0226fe01685b5800a7ef6354904152c8279` |
| 38 | `def` | [decodeState](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationTable.lean/declarations/decodestate--da455b976b457a6bd6564f6f.md) | 219 | `declaration-track:da455b976b457a6bd6564f6f02d562a00fc8a8a4b7c8d5bc5b683c7f1a7f7f71` |
| 39 | `theorem` | [compact_preserves_ids](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationTable.lean/declarations/compact-preserves-ids--29ab0cdbc5ab5215929ce739.md) | 227 | `result-track:29ab0cdbc5ab5215929ce7396bbabb1ede8946e882b668a18f62d6a0ab56526b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
