# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.WF.Variantd5ad3a7e9a1e5ba5d5e266e94da3fe99946719401011a1dc5499cefecfc795b7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df053e8028f819527c16edf55009c90748175c0a",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variantd5ad3a7e9a1e5ba5d5e266e94da3fe99946719401011a1dc5499cefecfc795b7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variantd5ad3a7e9a1e5ba5d5e266e94da3fe99946719401011a1dc5499cefecfc795b7.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variantd5ad3a7e9a1e5ba5d5e266e94da3fe99946719401011a1dc5499cefecfc795b7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df053e8028f819527c16edf55009c90748175c0a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variantd5ad3a7e9a1e5ba5d5e266e94da3fe99946719401011a1dc5499cefecfc795b7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variantd5ad3a7e9a1e5ba5d5e266e94da3fe99946719401011a1dc5499cefecfc795b7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.HashMap.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Std.Data.List.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Std.Data.Array.Lemmas` — import line 8; external provider; requires a separately pinned dependency.
- `Std.Tactic.ShowTerm` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variantd5ad3a7e9a1e5ba5d5e266e94da3fe99946719401011a1dc5499cefecfc795b7.lean/declarations/ext--b3103c307638ca9e964e973e.md) | 18 | `result-track:b3103c307638ca9e964e973efe48347443a6406d5c714bc0274211ec07d71a2a` |
| 2 | `theorem` | [update_data](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variantd5ad3a7e9a1e5ba5d5e266e94da3fe99946719401011a1dc5499cefecfc795b7.lean/declarations/update-data--09634d689cf95a2d431953f5.md) | 21 | `result-track:09634d689cf95a2d431953f5b45de7b82e811c934eee36ca48ab2d3a584605e5` |
| 3 | `theorem` | [exists_of_update](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variantd5ad3a7e9a1e5ba5d5e266e94da3fe99946719401011a1dc5499cefecfc795b7.lean/declarations/exists-of-update--6f54e0c8d7e71fee13b5d958.md) | 24 | `result-track:6f54e0c8d7e71fee13b5d9586be9e7d9c6453a50b67bca5ecfd6fd0cb11ca9c7` |
| 4 | `theorem` | [update_update](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variantd5ad3a7e9a1e5ba5d5e266e94da3fe99946719401011a1dc5499cefecfc795b7.lean/declarations/update-update--f7bf1efba8b169f2b71210b9.md) | 29 | `result-track:f7bf1efba8b169f2b71210b9571b6cc930072315fae0acd341977e7aa5078c99` |
| 5 | `theorem` | [size_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variantd5ad3a7e9a1e5ba5d5e266e94da3fe99946719401011a1dc5499cefecfc795b7.lean/declarations/size-eq--919518c28c333bbe3d2311b3.md) | 33 | `result-track:919518c28c333bbe3d2311b36485afb54b766da981d584228ba0a0c3575cc4a0` |
| 6 | `theorem` | [mk_size](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variantd5ad3a7e9a1e5ba5d5e266e94da3fe99946719401011a1dc5499cefecfc795b7.lean/declarations/mk-size--6ee3d9750e35a5237f02221f.md) | 36 | `result-track:6ee3d9750e35a5237f02221f97b1010a48ea0923c45015d1743ad2f47743974f` |
| 7 | `theorem` | [WF.mk'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variantd5ad3a7e9a1e5ba5d5e266e94da3fe99946719401011a1dc5499cefecfc795b7.lean/declarations/wf-mk--fbbc8cc74d9ceb22b9ba9dba.md) | 40 | `result-track:fbbc8cc74d9ceb22b9ba9dbae1e4ef5c71178dc4bcb09c4bac89ba73436fd300` |
| 8 | `theorem` | [WF.update](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variantd5ad3a7e9a1e5ba5d5e266e94da3fe99946719401011a1dc5499cefecfc795b7.lean/declarations/wf-update--7e24bf5174561a2f66bb00e5.md) | 46 | `result-track:7e24bf5174561a2f66bb00e51c70666106d8e60af454613c8b6dc37b2dab77fe` |
| 9 | `theorem` | [reinsertAux_size](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variantd5ad3a7e9a1e5ba5d5e266e94da3fe99946719401011a1dc5499cefecfc795b7.lean/declarations/reinsertaux-size--8358c58b6ab1e3a0e7ac6db8.md) | 64 | `result-track:8358c58b6ab1e3a0e7ac6db88ea2279cde66d36adbcf465990208fe24b05fb8e` |
| 10 | `theorem` | [reinsertAux_WF](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variantd5ad3a7e9a1e5ba5d5e266e94da3fe99946719401011a1dc5499cefecfc795b7.lean/declarations/reinsertaux-wf--2923f5320a125658091a6b68.md) | 70 | `result-track:2923f5320a125658091a6b68ab86625b60cc6753c530dc10c2d6d7fa55b55702` |
| 11 | `theorem` | [expand_size](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variantd5ad3a7e9a1e5ba5d5e266e94da3fe99946719401011a1dc5499cefecfc795b7.lean/declarations/expand-size--749940a8b78261430375450f.md) | 79 | `result-track:749940a8b78261430375450f03a7648a76fa8b1eab3681175f728a1071c58e0f` |
| 12 | `theorem` | [expand_WF.foldl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variantd5ad3a7e9a1e5ba5d5e266e94da3fe99946719401011a1dc5499cefecfc795b7.lean/declarations/expand-wf-foldl--e2908a18c2d9bf1e544eb8de.md) | 113 | `result-track:e2908a18c2d9bf1e544eb8de01bf50ef79db1637ac66b30c3f7f057632894466` |
| 13 | `theorem` | [expand_WF](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variantd5ad3a7e9a1e5ba5d5e266e94da3fe99946719401011a1dc5499cefecfc795b7.lean/declarations/expand-wf--84e3e176792de4b2763207af.md) | 143 | `result-track:84e3e176792de4b2763207af844135752e22bcd5633248d5974cbe51abf3d5a6` |
| 14 | `theorem` | [insert_size](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variantd5ad3a7e9a1e5ba5d5e266e94da3fe99946719401011a1dc5499cefecfc795b7.lean/declarations/insert-size--7469b8503cfbf53deb02f182.md) | 175 | `result-track:7469b8503cfbf53deb02f1820ba41c6dd9ca1f1570a395175147f604038d8587` |
| 15 | `theorem` | [mem_replaceF](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variantd5ad3a7e9a1e5ba5d5e266e94da3fe99946719401011a1dc5499cefecfc795b7.lean/declarations/mem-replacef--3f852b88b49c6a7f16b908c8.md) | 190 | `result-track:3f852b88b49c6a7f16b908c82e1d16640d97406df2148860c254243fb6d15e93` |
| 16 | `theorem` | [pairwise_replaceF](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variantd5ad3a7e9a1e5ba5d5e266e94da3fe99946719401011a1dc5499cefecfc795b7.lean/declarations/pairwise-replacef--c227cb0d9767b1252c5e44cb.md) | 204 | `result-track:c227cb0d9767b1252c5e44cb3209112aebdf0363701fc3974359b7fbd8a43ad9` |
| 17 | `theorem` | [insert_WF](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variantd5ad3a7e9a1e5ba5d5e266e94da3fe99946719401011a1dc5499cefecfc795b7.lean/declarations/insert-wf--4e80c1d0e66c752396c4e729.md) | 222 | `result-track:4e80c1d0e66c752396c4e729aee2f1fe54705e0a2fa70340c16b04c17ca9c134` |
| 18 | `theorem` | [erase_size](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variantd5ad3a7e9a1e5ba5d5e266e94da3fe99946719401011a1dc5499cefecfc795b7.lean/declarations/erase-size--5b207cb8ffd6ff822060fa1e.md) | 242 | `result-track:5b207cb8ffd6ff822060fa1e62920358b82b1b3dd8f8d2e2bf7abca6ea92fbce` |
| 19 | `theorem` | [erase_WF](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variantd5ad3a7e9a1e5ba5d5e266e94da3fe99946719401011a1dc5499cefecfc795b7.lean/declarations/erase-wf--cbb081718702eed7824b8424.md) | 258 | `result-track:cbb081718702eed7824b84244af3210895a67d6d55f5d573f5a5987a3429f065` |
| 20 | `theorem` | [modify_size](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variantd5ad3a7e9a1e5ba5d5e266e94da3fe99946719401011a1dc5499cefecfc795b7.lean/declarations/modify-size--eab3f978221394354b502ae7.md) | 266 | `result-track:eab3f978221394354b502ae7c04e5fa0472db87334e21e55ecc8a32b21d02fea` |
| 21 | `theorem` | [modify_WF](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variantd5ad3a7e9a1e5ba5d5e266e94da3fe99946719401011a1dc5499cefecfc795b7.lean/declarations/modify-wf--9e3a16ce66177dc85207b8cb.md) | 274 | `result-track:9e3a16ce66177dc85207b8cbaf76921b50df9a0fbac9e0fe2828ceea2708845c` |
| 22 | `theorem` | [WF.out](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variantd5ad3a7e9a1e5ba5d5e266e94da3fe99946719401011a1dc5499cefecfc795b7.lean/declarations/wf-out--8c12cf76e36b1ce315562d0d.md) | 284 | `result-track:8c12cf76e36b1ce315562d0db0fbaf2143616ed185d62047bf570b5f3de1ea6b` |
| 23 | `theorem` | [WF_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variantd5ad3a7e9a1e5ba5d5e266e94da3fe99946719401011a1dc5499cefecfc795b7.lean/declarations/wf-iff--ec5676bbfa43fa7f5e768838.md) | 293 | `result-track:ec5676bbfa43fa7f5e768838731fd97a7cca86e124a78c5c696abdebb2dee411` |
| 24 | `theorem` | [WF.mapVal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variantd5ad3a7e9a1e5ba5d5e266e94da3fe99946719401011a1dc5499cefecfc795b7.lean/declarations/wf-mapval--ca24308dab495f122ea8f8c0.md) | 297 | `result-track:ca24308dab495f122ea8f8c0bb3f07b49904f353bd614716f3d0aef85be234e6` |
| 25 | `theorem` | [WF.filterMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variantd5ad3a7e9a1e5ba5d5e266e94da3fe99946719401011a1dc5499cefecfc795b7.lean/declarations/wf-filtermap--d00bcbe89921ba5156f41923.md) | 309 | `result-track:d00bcbe89921ba5156f41923f75687f842856d5eb7bcb3c03ee90cc31c40046e` |
| 26 | `def` | [mapVal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variantd5ad3a7e9a1e5ba5d5e266e94da3fe99946719401011a1dc5499cefecfc795b7.lean/declarations/mapval--33024d5b96368f8f226ed28c.md) | 355 | `declaration-track:33024d5b96368f8f226ed28c2dc29af136262a353c36b444aa2a99e3a2102b37` |
| 27 | `def` | [filterMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variantd5ad3a7e9a1e5ba5d5e266e94da3fe99946719401011a1dc5499cefecfc795b7.lean/declarations/filtermap--bbf6e1cf2ef40e84c76ec29c.md) | 362 | `declaration-track:bbf6e1cf2ef40e84c76ec29c9611233d2e70253b245db1c945efca96bb01a70d` |
| 28 | `def` | [filter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variantd5ad3a7e9a1e5ba5d5e266e94da3fe99946719401011a1dc5499cefecfc795b7.lean/declarations/filter--1aac6fcb24dc8a0bbd2fdcbe.md) | 366 | `declaration-track:1aac6fcb24dc8a0bbd2fdcbe252361886c4a483dca6abd89b81a28257e41edcb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
