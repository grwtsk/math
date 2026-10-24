# Verification target: GRWTSK.Combinatorics.DirectedGraph.PrefixTableCompaction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7585644ab7d689bab3a93dcba1e6a9a4a21b190f",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/DirectedGraph/PrefixTableCompaction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCompaction.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCompaction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7585644ab7d689bab3a93dcba1e6a9a4a21b190f`.

Source path: `GRWTSK/Combinatorics/DirectedGraph/PrefixTableCompaction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/DirectedGraph/PrefixTableCompaction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.DirectedGraph.PrefixTableState`](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrence337c990a6d25e8085ca30434.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [traceRows_recoverRows](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCompaction.lean/declarations/tracerows-recoverrows--f7287d95546cbe9b0526f2fa.md) | 29 | `result-track:f7287d95546cbe9b0526f2fac766b8f3e298f7ff5a5c8d778114b51d396aef39` |
| 2 | `def` | [realEntries](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCompaction.lean/declarations/realentries--8faa8a2707ac2575f1e48694.md) | 46 | `declaration-track:8faa8a2707ac2575f1e48694aea72104fc9e406d685005730119d2b01ab3a663` |
| 3 | `theorem` | [decode_realEntries](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCompaction.lean/declarations/decode-realentries--31e6b6c6da556ef9f1147f0e.md) | 50 | `result-track:31e6b6c6da556ef9f1147f0e858cead0575bc545d252313e676ad9da5d8c26b5` |
| 4 | `theorem` | [realEntries_valid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCompaction.lean/declarations/realentries-valid--8b151d314667e0bf98e9eb83.md) | 54 | `result-track:8b151d314667e0bf98e9eb8396c61978109c370a9f42027dfc1cfa478a8f0d8a` |
| 5 | `def` | [realRows](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCompaction.lean/declarations/realrows--2bebfaaa11a36ecd1c858e1c.md) | 58 | `declaration-track:2bebfaaa11a36ecd1c858e1c40ee401565e8214bfa7a35acee41f9fafe627349` |
| 6 | `theorem` | [traceRows_realRows](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCompaction.lean/declarations/tracerows-realrows--0e65e3a7907c232ccab149dc.md) | 62 | `result-track:0e65e3a7907c232ccab149dc2ebf50959fa334b0baf14b6e9bd5fb2bb9ff7d54` |
| 7 | `theorem` | [realRows_of_decode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCompaction.lean/declarations/realrows-of-decode--67894582be5b262b7296347f.md) | 67 | `result-track:67894582be5b262b7296347f1b9f52acb580510f8e2cca11572992721fdee472` |
| 8 | `def` | [compact](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCompaction.lean/declarations/compact--a6a19519fa2a1f15839e1ffe.md) | 77 | `declaration-track:a6a19519fa2a1f15839e1ffe743a50b01bab6fb2bcda2b97960ffcaed6500a05` |
| 9 | `theorem` | [compact_root](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCompaction.lean/declarations/compact-root--90fbb874a428f98f09c824d4.md) | 80 | `result-track:90fbb874a428f98f09c824d488700623b994405a8c585c3ccc65ed0feb66682d` |
| 10 | `theorem` | [compact_wellFormed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCompaction.lean/declarations/compact-wellformed--eb27673de548f7ac3be2cdb9.md) | 83 | `result-track:eb27673de548f7ac3be2cdb99672fb593408ca9cbbdfc72b7ed61531e187eb47` |
| 11 | `theorem` | [compact_dictionary](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCompaction.lean/declarations/compact-dictionary--6ddb1954e94304acc92461cc.md) | 86 | `result-track:6ddb1954e94304acc92461cce0743ae9b34a72747e9d3609e15f401d1a213e54` |
| 12 | `theorem` | [compact_references](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCompaction.lean/declarations/compact-references--cb840ed3c9dc2a944b980529.md) | 92 | `result-track:cb840ed3c9dc2a944b980529e1b57dbfa5ba25f3b9235c7992a017bb54e77d13` |
| 13 | `theorem` | [decode_compact](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCompaction.lean/declarations/decode-compact--18066e0ff0495a574d611e90.md) | 99 | `result-track:18066e0ff0495a574d611e90496189bee58fd8a825757a2b259129df9a653621` |
| 14 | `theorem` | [compact_recovers](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCompaction.lean/declarations/compact-recovers--ffbb85dbf638a0b47db67cfc.md) | 104 | `result-track:ffbb85dbf638a0b47db67cfced95ced0cbc4b52fef7fb2fe9372b313529c5c62` |
| 15 | `theorem` | [references_decoded](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCompaction.lean/declarations/references-decoded--9f6530213b9405898ce63e65.md) | 117 | `result-track:9f6530213b9405898ce63e655557a36aed94b3a250712067d15e9feec9217b8c` |
| 16 | `theorem` | [realEntries_mem_old_dictionary](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCompaction.lean/declarations/realentries-mem-old-dictionary--f7c35058eb37671d4d36354b.md) | 150 | `result-track:f7c35058eb37671d4d36354b1bab6d4a8842a08932405979a1ea8b1bf584d942` |
| 17 | `theorem` | [realEntries_mem_compact_dictionary](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCompaction.lean/declarations/realentries-mem-compact-dictionary--1289bdd893d03a12da899875.md) | 166 | `result-track:1289bdd893d03a12da899875fa4c7b7b82b448d23e756200461a20342f539b96` |
| 18 | `theorem` | [compact_dictionary_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCompaction.lean/declarations/compact-dictionary-subset--8a43a638cf8e9c780f248591.md) | 175 | `result-track:8a43a638cf8e9c780f248591328e0ee543c2b811f6cba68e54343ff410c49d6b` |
| 19 | `def` | [remap](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCompaction.lean/declarations/remap--508d0e58413763057cbb0968.md) | 186 | `declaration-track:508d0e58413763057cbb0968c6039f16a1c97c569e73d284ba799665cd6aad4a` |
| 20 | `theorem` | [remap_retained](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCompaction.lean/declarations/remap-retained--daed3ffe0a2fc1c09f262340.md) | 195 | `result-track:daed3ffe0a2fc1c09f262340a2ebefaf0aac55e0bbdc0a49c43653f3cb594f64` |
| 21 | `theorem` | [remap_removed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCompaction.lean/declarations/remap-removed--53754e2eefb98715487571ba.md) | 204 | `result-track:53754e2eefb98715487571bafce1e333843c233f3c97aa7e9a92289d5474e8b5` |
| 22 | `theorem` | [remap_lookup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCompaction.lean/declarations/remap-lookup--16e3b34ef67a4de35d7553cc.md) | 211 | `result-track:16e3b34ef67a4de35d7553ccfacd61a3d4aa5dc83a760d54a72c0c87d4094cb3` |
| 23 | `theorem` | [retained_parent_reindex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCompaction.lean/declarations/retained-parent-reindex--15c24c35bdce27c435e313a1.md) | 226 | `result-track:15c24c35bdce27c435e313a18ceb8cfe89c72812a1495d4e6d740235a09141bf` |
| 24 | `def` | [reindexReferences](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCompaction.lean/declarations/reindexreferences--54e9452ccefc6fe70e48ec70.md) | 245 | `declaration-track:54e9452ccefc6fe70e48ec7040d322b89c2c1b4d0da05450c368727e21e862b0` |
| 25 | `theorem` | [reindexReferences_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCompaction.lean/declarations/reindexreferences-eq--95afc72855398e9ab7c2d49d.md) | 251 | `result-track:95afc72855398e9ab7c2d49d042d1a24a840910eaf80db1d616f93ff6e1d7e61` |
| 26 | `theorem` | [rooted_unpack_compact](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCompaction.lean/declarations/rooted-unpack-compact--02be10895564363f043069b3.md) | 279 | `result-track:02be10895564363f043069b35c1e5a9a8f69166394a04d60166a792636fa512f` |
| 27 | `theorem` | [certified_compact](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCompaction.lean/declarations/certified-compact--ad9cdd53134d72235e71de06.md) | 292 | `result-track:ad9cdd53134d72235e71de06edf9100a290a140d7f054a24bfb49891a2a16fac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
