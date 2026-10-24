# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.ParentTraceDictionary

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "927580b708fbc4793a5d0f659c88cf3afc8bb859",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence34b462c9fbce3ba4e122cba1.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence34b462c9fbce3ba4e122cba1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `927580b708fbc4793a5d0f659c88cf3afc8bb859`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.PrefixInventory`](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory__SourceOccurrence43a088072295cb7a9d0330a9.lean/index.md) — import line 7; pinned internal source present.
- `Mathlib.Data.List.FinRange` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Node](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence34b462c9fbce3ba4e122cba1.lean/declarations/node--67a6a121e40661a01c031c1f.md) | 38 | `declaration-track:67a6a121e40661a01c031c1f87e967758b709287f11b9aa1d723c694c6487efc` |
| 2 | `structure` | [Representation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence34b462c9fbce3ba4e122cba1.lean/declarations/representation--ad0073d830810779c745033e.md) | 41 | `declaration-track:ad0073d830810779c745033ea7100698703d62178efe06683582637dc85b0d0e` |
| 3 | `def` | [ValidRanks](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence34b462c9fbce3ba4e122cba1.lean/declarations/validranks--f8db0e61ffe6427a1b1eda7a.md) | 47 | `declaration-track:f8db0e61ffe6427a1b1eda7a608ae482a767fba53bc21eab765270caaf5ba358` |
| 4 | `def` | [expand](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence34b462c9fbce3ba4e122cba1.lean/declarations/expand--8621130977d8e0aef0a28f22.md) | 55 | `declaration-track:8621130977d8e0aef0a28f2214feb0ffbb7d8e840cc4bb75a5d1f039d410ff69` |
| 5 | `def` | [decodeSlot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence34b462c9fbce3ba4e122cba1.lean/declarations/decodeslot--f56475438c913bc4ae8b77a6.md) | 74 | `declaration-track:f56475438c913bc4ae8b77a66138e67f3e264abc96beb4e5331779eeb70db03f` |
| 6 | `def` | [expandDictionary](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence34b462c9fbce3ba4e122cba1.lean/declarations/expanddictionary--e7fb2b202ca9187f65d46b0d.md) | 80 | `declaration-track:e7fb2b202ca9187f65d46b0dce337391eb749b125d76578304ba020d9675061b` |
| 7 | `def` | [expandedPacked](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence34b462c9fbce3ba4e122cba1.lean/declarations/expandedpacked--5d380cc1337dc65f0ec818ed.md) | 85 | `declaration-track:5d380cc1337dc65f0ec818edf1c63bfbedcf9c8e0b900b36ea5eeefcdf12c69e` |
| 8 | `def` | [decodeReferences](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence34b462c9fbce3ba4e122cba1.lean/declarations/decodereferences--4b8c087cec0b1f7033f1fa5c.md) | 92 | `declaration-track:4b8c087cec0b1f7033f1fa5c1012f4a09fe65fe559a372ea4c5cfbd881de72f9` |
| 9 | `def` | [position](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence34b462c9fbce3ba4e122cba1.lean/declarations/position--e0ffc0934f0686dff68b628a.md) | 99 | `declaration-track:e0ffc0934f0686dff68b628ac9af5d3a5cfd67e831a13d137cdcb697582e0882` |
| 10 | `theorem` | [position_lookup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence34b462c9fbce3ba4e122cba1.lean/declarations/position-lookup--ab007dba79aa0b92442ff253.md) | 103 | `result-track:ab007dba79aa0b92442ff25359d30ff40be6ed4dc651427b5d3190d54c619c44` |
| 11 | `theorem` | [position_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence34b462c9fbce3ba4e122cba1.lean/declarations/position-lt--8ce2016bb21cea221ff64e1e.md) | 109 | `result-track:8ce2016bb21cea221ff64e1eb82a3f0c9e82943512fa5180234f00797d454546` |
| 12 | `def` | [nodeFor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence34b462c9fbce3ba4e122cba1.lean/declarations/nodefor--23985841c15ae701626b1e8f.md) | 116 | `declaration-track:23985841c15ae701626b1e8fe4d9546b981acbc3968313156b7ece95bd05ff3c` |
| 13 | `def` | [encodedNodes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence34b462c9fbce3ba4e122cba1.lean/declarations/encodednodes--2817460106ed428e74afb02e.md) | 121 | `declaration-track:2817460106ed428e74afb02e69d47fa2bdba6d489dfdcb6b7db884adbb107f2d` |
| 14 | `def` | [encode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence34b462c9fbce3ba4e122cba1.lean/declarations/encode--7ef75ec8243f7caed7adc1dc.md) | 125 | `declaration-track:7ef75ec8243f7caed7adc1dc757577c2f291517e391df781c5882d1550ae15b8` |
| 15 | `theorem` | [encoded_lookup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence34b462c9fbce3ba4e122cba1.lean/declarations/encoded-lookup--79cd5974bf60c8dc72081869.md) | 128 | `result-track:79cd5974bf60c8dc72081869fe6f03f71a4b39db8ad8d5edf919ddf060d442c4` |
| 16 | `theorem` | [parent_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence34b462c9fbce3ba4e122cba1.lean/declarations/parent-mem--148492b8376058062681583e.md) | 134 | `result-track:148492b8376058062681583e4e5e2d8dcc9f0d47341d30479121fc1ef3a0b34e` |
| 17 | `theorem` | [parent_join](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence34b462c9fbce3ba4e122cba1.lean/declarations/parent-join--484735b884ce87734e78ae32.md) | 140 | `result-track:484735b884ce87734e78ae32f241455bae8da29417007a308abbb1acfa4cc50b` |
| 18 | `theorem` | [parent_rank_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence34b462c9fbce3ba4e122cba1.lean/declarations/parent-rank-lt--e354718d6fbaf658ea717dc3.md) | 149 | `result-track:e354718d6fbaf658ea717dc393a75e9b87393a9b6f24690e92c3f31dfa17cfc3` |
| 19 | `theorem` | [nodeFor_empty_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence34b462c9fbce3ba4e122cba1.lean/declarations/nodefor-empty-iff--28e286bf458965112eae4779.md) | 155 | `result-track:28e286bf458965112eae4779c9515fe483e598346d9d8d66fa6a851b4a3f77ee` |
| 20 | `theorem` | [encoded_validRanks](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence34b462c9fbce3ba4e122cba1.lean/declarations/encoded-validranks--2b37dd89572732ce77d08231.md) | 160 | `result-track:2b37dd89572732ce77d08231c13607100aa74e4562076ba2e6545c8f3e009824` |
| 21 | `theorem` | [expand_encoded](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence34b462c9fbce3ba4e122cba1.lean/declarations/expand-encoded--166436a7c69c45235c170849.md) | 174 | `result-track:166436a7c69c45235c170849a7c4f1c598f69519488ce56f08e209f4c4fff48e` |
| 22 | `theorem` | [decodeSlot_encoded](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence34b462c9fbce3ba4e122cba1.lean/declarations/decodeslot-encoded--306703c6d569f561228c8f2e.md) | 200 | `result-track:306703c6d569f561228c8f2e34e36d1f420701c89b61e8274faa49e3db094a3e` |
| 23 | `theorem` | [expandDictionary_encoded](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence34b462c9fbce3ba4e122cba1.lean/declarations/expanddictionary-encoded--2b7a9b391bf88cb1db1e31f4.md) | 209 | `result-track:2b7a9b391bf88cb1db1e31f4190df8c56e81a333ac37fd2afca799567e1d2d4e` |
| 24 | `theorem` | [expandedPacked_encode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence34b462c9fbce3ba4e122cba1.lean/declarations/expandedpacked-encode--a0f0f5e7c9d7f86ee5afd7bb.md) | 236 | `result-track:a0f0f5e7c9d7f86ee5afd7bb5b2aa311e3726dc953f544c874ed79d97fbc5a8b` |
| 25 | `theorem` | [decodeReferences_encode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence34b462c9fbce3ba4e122cba1.lean/declarations/decodereferences-encode--667d485ed1260b46aa8f1974.md) | 242 | `result-track:667d485ed1260b46aa8f1974bbfb702220d3e4cdc4718d6c8ce59ea8ba49a1c5` |
| 26 | `theorem` | [decoded_valid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence34b462c9fbce3ba4e122cba1.lean/declarations/decoded-valid--eeb947635fd3367eae3b612f.md) | 248 | `result-track:eeb947635fd3367eae3b612fe07276163ff115ec440b87d6d8f0e2f300ae2b83` |
| 27 | `theorem` | [decoded_recovers](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence34b462c9fbce3ba4e122cba1.lean/declarations/decoded-recovers--4675ba42793fc892a7333453.md) | 257 | `result-track:4675ba42793fc892a7333453aa521c4ca7249b1796bfb1a373ef0ce151e8f184` |
| 28 | `theorem` | [empty_mem_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence34b462c9fbce3ba4e122cba1.lean/declarations/empty-mem-iff--69da8272d3fb04f74e7e087f.md) | 266 | `result-track:69da8272d3fb04f74e7e087fd84eac5328b15f9788bed0cb291ef0e2e44f5727` |
| 29 | `theorem` | [empty_count](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence34b462c9fbce3ba4e122cba1.lean/declarations/empty-count--ef280745dd9e573d6a74ce66.md) | 277 | `result-track:ef280745dd9e573d6a74ce664839ac593c9dce3f5edc95fc803af91405f305a7` |
| 30 | `theorem` | [no_root_decoder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence34b462c9fbce3ba4e122cba1.lean/declarations/no-root-decoder--fb38e517b440632ef1ee06b9.md) | 284 | `result-track:fb38e517b440632ef1ee06b9a13c67083961490734aebae9a24acad93162c02a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
