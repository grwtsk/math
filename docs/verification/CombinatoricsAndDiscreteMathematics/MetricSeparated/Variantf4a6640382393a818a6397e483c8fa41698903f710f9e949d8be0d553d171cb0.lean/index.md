# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.MetricSeparated.Variantf4a6640382393a818a6397e483c8fa41698903f710f9e949d8be0d553d171cb0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "478e0385ce8bb5825848df0110bd99684666cdf1",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variantf4a6640382393a818a6397e483c8fa41698903f710f9e949d8be0d553d171cb0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variantf4a6640382393a818a6397e483c8fa41698903f710f9e949d8be0d553d171cb0.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variantf4a6640382393a818a6397e483c8fa41698903f710f9e949d8be0d553d171cb0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `478e0385ce8bb5825848df0110bd99684666cdf1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variantf4a6640382393a818a6397e483c8fa41698903f710f9e949d8be0d553d171cb0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variantf4a6640382393a818a6397e483c8fa41698903f710f9e949d8be0d553d171cb0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.EMetricSpace.Defs` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsSeparated](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variantf4a6640382393a818a6397e483c8fa41698903f710f9e949d8be0d553d171cb0.lean/declarations/isseparated--7dae90f2475e563177576246.md) | 38 | `declaration-track:7dae90f2475e563177576246be6d295339b2c5640d17cf36f8c3c65b8d72f82d` |
| 2 | `lemma` | [IsSeparated.empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variantf4a6640382393a818a6397e483c8fa41698903f710f9e949d8be0d553d171cb0.lean/declarations/isseparated-empty--b44fc455ee4e22aa93dbe5bf.md) | 40 | `result-track:b44fc455ee4e22aa93dbe5bfeb980c539712fddf994bd61491681ad5d19a70a9` |
| 3 | `lemma` | [IsSeparated.singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variantf4a6640382393a818a6397e483c8fa41698903f710f9e949d8be0d553d171cb0.lean/declarations/isseparated-singleton--d0ac4f4f9c0fadaa086c3fb0.md) | 41 | `result-track:d0ac4f4f9c0fadaa086c3fb0e161450248a8ab6dcd5bafc63d9d99e5a31c7a54` |
| 4 | `lemma` | [IsSeparated.of_subsingleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variantf4a6640382393a818a6397e483c8fa41698903f710f9e949d8be0d553d171cb0.lean/declarations/isseparated-of-subsingleton--76c88898df3a6eede5c781c7.md) | 43 | `result-track:76c88898df3a6eede5c781c76dde0197dbe346a9b0d023e3699742f91914af95` |
| 5 | `lemma` | [IsSeparated.anti](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variantf4a6640382393a818a6397e483c8fa41698903f710f9e949d8be0d553d171cb0.lean/declarations/isseparated-anti--4d4cb490af25f1a51e6b568e.md) | 47 | `result-track:4d4cb490af25f1a51e6b568e2f6ddd17e9af73928b3aa132b787d60ce694d72e` |
| 6 | `lemma` | [IsSeparated.subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variantf4a6640382393a818a6397e483c8fa41698903f710f9e949d8be0d553d171cb0.lean/declarations/isseparated-subset--a2b88635076e1cf032d9f680.md) | 50 | `result-track:a2b88635076e1cf032d9f680127f530ac51c02a4687cf1e7879010bde3926b96` |
| 7 | `lemma` | [isSeparated_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variantf4a6640382393a818a6397e483c8fa41698903f710f9e949d8be0d553d171cb0.lean/declarations/isseparated-insert--a892aa066588492c0f6ad49d.md) | 52 | `result-track:a892aa066588492c0f6ad49d9b19a486e73c5d68765a7ad66ba4488dc4b5dba7` |
| 8 | `lemma` | [isSeparated_insert_of_notMem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variantf4a6640382393a818a6397e483c8fa41698903f710f9e949d8be0d553d171cb0.lean/declarations/isseparated-insert-of-notmem--058e13e6489e2447f6756144.md) | 56 | `result-track:058e13e6489e2447f67561447037f596e6c3504c878824e1447dc8f139534a5b` |
| 9 | `lemma` | [IsSeparated.insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variantf4a6640382393a818a6397e483c8fa41698903f710f9e949d8be0d553d171cb0.lean/declarations/isseparated-insert--4f5794841f027eeaf9c49c37.md) | 63 | `result-track:4f5794841f027eeaf9c49c37e3c3a35b26bee2b5b089ca37239606c4db0361e3` |
| 10 | `def` | [AreSeparated](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variantf4a6640382393a818a6397e483c8fa41698903f710f9e949d8be0d553d171cb0.lean/declarations/areseparated--3e58ff83ce965a117d42775d.md) | 78 | `declaration-track:3e58ff83ce965a117d42775d65d61e436b24477232f0a6d61f18af050e09632e` |
| 11 | `theorem` | [symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variantf4a6640382393a818a6397e483c8fa41698903f710f9e949d8be0d553d171cb0.lean/declarations/symm--798d7208f5a72faca6f81cc3.md) | 85 | `result-track:798d7208f5a72faca6f81cc3c0abe1c08e7509724b811fcf07beecbf3865aae1` |
| 12 | `theorem` | [comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variantf4a6640382393a818a6397e483c8fa41698903f710f9e949d8be0d553d171cb0.lean/declarations/comm--751f78eb6ab5d4f9535155e5.md) | 89 | `result-track:751f78eb6ab5d4f9535155e50282c33fe4e96788ff46ac2be11f1d8507e35a48` |
| 13 | `theorem` | [empty_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variantf4a6640382393a818a6397e483c8fa41698903f710f9e949d8be0d553d171cb0.lean/declarations/empty-left--7ced66a2d9eadef429157263.md) | 92 | `result-track:7ced66a2d9eadef429157263e7a99d20a57516ed0010bcb74c1b063b39feba44` |
| 14 | `theorem` | [empty_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variantf4a6640382393a818a6397e483c8fa41698903f710f9e949d8be0d553d171cb0.lean/declarations/empty-right--1f1b75bb9b54f0b355505e8d.md) | 96 | `result-track:1f1b75bb9b54f0b355505e8d0121d5f7f175864497195819c5cd77583a1b496d` |
| 15 | `theorem` | [disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variantf4a6640382393a818a6397e483c8fa41698903f710f9e949d8be0d553d171cb0.lean/declarations/disjoint--1ebbfbf9759ff7e0c22cb851.md) | 99 | `result-track:1ebbfbf9759ff7e0c22cb8514aa9777c8febb7b6dc794704a382bc12563199b0` |
| 16 | `theorem` | [subset_compl_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variantf4a6640382393a818a6397e483c8fa41698903f710f9e949d8be0d553d171cb0.lean/declarations/subset-compl-right--3761c1ea02b3eefa0a9afde3.md) | 103 | `result-track:3761c1ea02b3eefa0a9afde310ce799adb7ee66ac8eb6f5a0d810582f67f3f19` |
| 17 | `theorem` | [mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variantf4a6640382393a818a6397e483c8fa41698903f710f9e949d8be0d553d171cb0.lean/declarations/mono--f9deea4d6e76adfba10ab577.md) | 107 | `result-track:f9deea4d6e76adfba10ab577641103c23138909774b7088f0ac322e15f686982` |
| 18 | `theorem` | [mono_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variantf4a6640382393a818a6397e483c8fa41698903f710f9e949d8be0d553d171cb0.lean/declarations/mono-left--cfc0fc92980f4497e0918ae9.md) | 111 | `result-track:cfc0fc92980f4497e0918ae97992ddb2afe8807dd82039a033b74c5625b56554` |
| 19 | `theorem` | [mono_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variantf4a6640382393a818a6397e483c8fa41698903f710f9e949d8be0d553d171cb0.lean/declarations/mono-right--a3cfd8aaea141203463c7605.md) | 114 | `result-track:a3cfd8aaea141203463c7605965276986a9ee155c8eaf6d7e7d97ece42c87b1c` |
| 20 | `theorem` | [union_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variantf4a6640382393a818a6397e483c8fa41698903f710f9e949d8be0d553d171cb0.lean/declarations/union-left--3d65af5282c2ce895d5475f5.md) | 117 | `result-track:3d65af5282c2ce895d5475f541965e4d0557b3e42b108125d40b61ac8f8f76cd` |
| 21 | `theorem` | [union_left_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variantf4a6640382393a818a6397e483c8fa41698903f710f9e949d8be0d553d171cb0.lean/declarations/union-left-iff--3c3aeb9223a086f618a1a587.md) | 127 | `result-track:3c3aeb9223a086f618a1a58712df1835e937bb1b8eae44b35373114be0fff961` |
| 22 | `theorem` | [union_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variantf4a6640382393a818a6397e483c8fa41698903f710f9e949d8be0d553d171cb0.lean/declarations/union-right--a3b03ef4b18c18db2d297112.md) | 132 | `result-track:a3b03ef4b18c18db2d29711293badf9edbf8259d1f899a2044fd21b71cb9a0ae` |
| 23 | `theorem` | [union_right_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variantf4a6640382393a818a6397e483c8fa41698903f710f9e949d8be0d553d171cb0.lean/declarations/union-right-iff--15b2c54398d016c363545317.md) | 137 | `result-track:15b2c54398d016c3635453172b44de92b37107b932fd0f444b6338fc567f84c6` |
| 24 | `theorem` | [finite_iUnion_left_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variantf4a6640382393a818a6397e483c8fa41698903f710f9e949d8be0d553d171cb0.lean/declarations/finite-iunion-left-iff--be34f4722ecc5468cdea2b5e.md) | 141 | `result-track:be34f4722ecc5468cdea2b5ede28bd98683e238aca22b75152cea25a5db3fb32` |
| 25 | `theorem` | [finite_iUnion_right_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variantf4a6640382393a818a6397e483c8fa41698903f710f9e949d8be0d553d171cb0.lean/declarations/finite-iunion-right-iff--236b5a5ae3e75274667e6d12.md) | 149 | `result-track:236b5a5ae3e75274667e6d12ab393071c651816f4fbf7d6f6196058c735583e5` |
| 26 | `theorem` | [finset_iUnion_left_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variantf4a6640382393a818a6397e483c8fa41698903f710f9e949d8be0d553d171cb0.lean/declarations/finset-iunion-left-iff--b26c00abfcf239e2f058ea7f.md) | 154 | `result-track:b26c00abfcf239e2f058ea7f444ab7d0df6c07135f446cbb54ad4442ad07ee5d` |
| 27 | `theorem` | [finset_iUnion_right_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variantf4a6640382393a818a6397e483c8fa41698903f710f9e949d8be0d553d171cb0.lean/declarations/finset-iunion-right-iff--7e260eecc52ce8ab0c1e32db.md) | 161 | `result-track:7e260eecc52ce8ab0c1e32dbd4f8567ac565eded876692ece3c387220c1af9d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
