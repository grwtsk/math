# Verification target: GRWTSK.Combinatorics.DirectedGraph.RoleRelationReindex

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "232533b32727a0323a4182a4adc3e01f8e2decfe",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/DirectedGraph/RoleRelationReindex.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationReindex.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationReindex.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `232533b32727a0323a4182a4adc3e01f8e2decfe`.

Source path: `GRWTSK/Combinatorics/DirectedGraph/RoleRelationReindex.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/DirectedGraph/RoleRelationReindex.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.DirectedGraph.RoleRelationTable`](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationTable.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Reindex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationReindex.lean/declarations/reindex--e320d204d26e7375dd9c3f21.md) | 33 | `declaration-track:e320d204d26e7375dd9c3f215818c58050dc4a5c50f2ad708def8608a6f8b728` |
| 2 | `def` | [mapVertex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationReindex.lean/declarations/mapvertex--28daef4f87f98525d88e3d25.md) | 41 | `declaration-track:28daef4f87f98525d88e3d253967f109750b51a1d9f7ac2afb2ad92c77c94bea` |
| 3 | `def` | [qualified](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationReindex.lean/declarations/qualified--d3bbe02c57cf8d04991ffc7f.md) | 44 | `declaration-track:d3bbe02c57cf8d04991ffc7f902ca2f14169faa61eb7e88569b90c7911c7c632` |
| 4 | `theorem` | [qualified_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationReindex.lean/declarations/qualified-injective--93c42e65437dbe74c0ecbb10.md) | 47 | `result-track:93c42e65437dbe74c0ecbb103c39253100b0f5f33747502038ad27dcfc06eb55` |
| 5 | `def` | [prefunctor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationReindex.lean/declarations/prefunctor--68688ce21701566afe60f0b3.md) | 54 | `declaration-track:68688ce21701566afe60f0b3a10ab491089676c5483c10b611e3b269b3ceebca` |
| 6 | `def` | [mapStar](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationReindex.lean/declarations/mapstar--0be6504714f24fda221d55ed.md) | 61 | `declaration-track:0be6504714f24fda221d55eda63d0a0d60b27aa4e074d236f603622634ac07ee` |
| 7 | `theorem` | [mapped_endpoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationReindex.lean/declarations/mapped-endpoint--01e10a326ab2cd5990e37076.md) | 65 | `result-track:01e10a326ab2cd5990e3707670b52bf5e7af7878151f130837ed8017517c1b98` |
| 8 | `theorem` | [encodePath_naturality](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationReindex.lean/declarations/encodepath-naturality--b5842b57274a6db5a3d347c6.md) | 69 | `result-track:b5842b57274a6db5a3d347c6c8af58d68b4b8e23b1580a2cb2f229900cac7e77` |
| 9 | `theorem` | [encode_naturality](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationReindex.lean/declarations/encode-naturality--1b04af9348d8b121c74c87e7.md) | 82 | `result-track:1b04af9348d8b121c74c87e76b118fbd6be7d9df45b45357f66e39fb9198f6f0` |
| 10 | `theorem` | [valid_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationReindex.lean/declarations/valid-map--46578a8bf00f917397a08703.md) | 88 | `result-track:46578a8bf00f917397a08703c22fab00e40f4124c8570b15c90a19493d592ae5` |
| 11 | `theorem` | [decode_naturality](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationReindex.lean/declarations/decode-naturality--7e5385dcb5dd389cf208f748.md) | 97 | `result-track:7e5385dcb5dd389cf208f748c6d65dd846090195d4bc225938bd7e1df54c7358` |
| 12 | `theorem` | [finish_naturality](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationReindex.lean/declarations/finish-naturality--0db547f859bd7c36c7d2d538.md) | 105 | `result-track:0db547f859bd7c36c7d2d53880fb70d7288f91972bf9f002f871575be52d4ec1` |
| 13 | `theorem` | [mapStar_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationReindex.lean/declarations/mapstar-injective--ee9de24289f16ebc4315dee5.md) | 114 | `result-track:ee9de24289f16ebc4315dee5c52c4276fe1cf95cd726597aaf1746ff4864de22` |
| 14 | `def` | [inverse](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationReindex.lean/declarations/inverse--966b31f54ab69b2fcb35b240.md) | 123 | `declaration-track:966b31f54ab69b2fcb35b2408dcfc88a475b6cf3e1b926e39c1cb501dcf8f5cc` |
| 15 | `theorem` | [inverse_qualified](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationReindex.lean/declarations/inverse-qualified--7296e73e59234cac75914876.md) | 142 | `result-track:7296e73e59234cac75914876f8c0a832cf9484ea75188640954077d552c5d8e3` |
| 16 | `theorem` | [qualified_inverse](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationReindex.lean/declarations/qualified-inverse--356344df619b865275a284e7.md) | 148 | `result-track:356344df619b865275a284e7fab2641e1777599f0a1795be47cca5f514118c36` |
| 17 | `def` | [qualifiedEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationReindex.lean/declarations/qualifiedequiv--81c783ba9e2a1ad9dd972cfe.md) | 154 | `declaration-track:81c783ba9e2a1ad9dd972cfe01e6cf39359a15b6132114865830bbbc001caa00` |
| 18 | `theorem` | [inverse_mapStar](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationReindex.lean/declarations/inverse-mapstar--ce7ef8935d39e7aa64890a72.md) | 161 | `result-track:ce7ef8935d39e7aa64890a7286a567b3977ebcc6d727f2dc36c46e4467167fbf` |
| 19 | `theorem` | [mapStar_inverse](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationReindex.lean/declarations/mapstar-inverse--2d19e35179b252f2b00fa1e1.md) | 179 | `result-track:2d19e35179b252f2b00fa1e1a6c33f60fe34eb6c8e166408bf924d69b9a350a9` |
| 20 | `def` | [pathStarEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationReindex.lean/declarations/pathstarequiv--7720b94f9ee1a6fbd4a0ef28.md) | 198 | `declaration-track:7720b94f9ee1a6fbd4a0ef28ba25e4952eb496807166dfc8e8baf2273234cb6d` |
| 21 | `def` | [reindexRows](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationReindex.lean/declarations/reindexrows--a0c72255d7766ac38734f388.md) | 206 | `declaration-track:a0c72255d7766ac38734f388a7b5bfa6dcedcd07649bb0e935fdd5e43031f096` |
| 22 | `theorem` | [inverse_rows](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationReindex.lean/declarations/inverse-rows--7f81f6874cbe166bf06a62b0.md) | 210 | `result-track:7f81f6874cbe166bf06a62b0024e6bf417e3d6d364646819c7c358d589477c56` |
| 23 | `def` | [pathRows](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationReindex.lean/declarations/pathrows--ee4dbffd6397d55e5e4c64fa.md) | 224 | `declaration-track:ee4dbffd6397d55e5e4c64fa7f83cf67c653e4fc97858ba5e0f9a11de0df0af1` |
| 24 | `def` | [mappedPathRows](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationReindex.lean/declarations/mappedpathrows--b76adaa0bb1aba4fcdf10786.md) | 229 | `declaration-track:b76adaa0bb1aba4fcdf10786b6c9882a857950d3656fdaaf3aff2143a44242f9` |
| 25 | `theorem` | [mappedPathRows_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationReindex.lean/declarations/mappedpathrows-eq--8a1836cef2cc39f261006f28.md) | 234 | `result-track:8a1836cef2cc39f261006f28771187a6fdbd662f9e0630c5cef91721f9674367` |
| 26 | `def` | [rootedRows](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationReindex.lean/declarations/rootedrows--e3fe5ff4bbf9dff34076e835.md) | 243 | `declaration-track:e3fe5ff4bbf9dff34076e835ca1b45d2a773b5ffd1151d1d681445b3ad17b29c` |
| 27 | `def` | [mappedPacked](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationReindex.lean/declarations/mappedpacked--2c298a84f7b1447b8007579d.md) | 247 | `declaration-track:2c298a84f7b1447b8007579dee70f4095251b2d13f8ac209bde27372c45ac21b` |
| 28 | `def` | [restorePacked](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationReindex.lean/declarations/restorepacked--5e667566f339f715376a67b1.md) | 254 | `declaration-track:5e667566f339f715376a67b102492f4c949c7a3ca34feb100b3a6fcb6d7a4450` |
| 29 | `theorem` | [restore_mappedPacked](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationReindex.lean/declarations/restore-mappedpacked--c29a34f350c740769a6a69b8.md) | 262 | `result-track:c29a34f350c740769a6a69b8431d1a4409361b5197bd583bfde1f9960cfb0999` |
| 30 | `theorem` | [certified_reindex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationReindex.lean/declarations/certified-reindex--d625df4458774783c3fcde74.md) | 272 | `result-track:d625df4458774783c3fcde7496fe1ef5535633790a276cf416c7a5dd5bb0afaf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
