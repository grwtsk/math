# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Dedup.Variantae89b1d1930bd2b41c97acd4aae5ceee884ca849e162cddb8495d7cddb13a740

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "684b0cb01a5f21a048ef7cb2df7e227cb012da1b",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variantae89b1d1930bd2b41c97acd4aae5ceee884ca849e162cddb8495d7cddb13a740.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variantae89b1d1930bd2b41c97acd4aae5ceee884ca849e162cddb8495d7cddb13a740.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variantae89b1d1930bd2b41c97acd4aae5ceee884ca849e162cddb8495d7cddb13a740.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `684b0cb01a5f21a048ef7cb2df7e227cb012da1b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variantae89b1d1930bd2b41c97acd4aae5ceee884ca849e162cddb8495d7cddb13a740.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variantae89b1d1930bd2b41c97acd4aae5ceee884ca849e162cddb8495d7cddb13a740.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Dedup` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.UnionInter` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dedup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variantae89b1d1930bd2b41c97acd4aae5ceee884ca849e162cddb8495d7cddb13a740.lean/declarations/dedup--87987dcc2724b98758083f43.md) | 25 | `declaration-track:87987dcc2724b98758083f430155d5b71290089e3eb65ac8165459bd5b5340bf` |
| 2 | `theorem` | [coe_dedup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variantae89b1d1930bd2b41c97acd4aae5ceee884ca849e162cddb8495d7cddb13a740.lean/declarations/coe-dedup--7cbd1a7f12190a529db77e62.md) | 29 | `result-track:7cbd1a7f12190a529db77e62e846f9bcb2ff4193252070ec4aa0d2a27315dc29` |
| 3 | `theorem` | [dedup_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variantae89b1d1930bd2b41c97acd4aae5ceee884ca849e162cddb8495d7cddb13a740.lean/declarations/dedup-zero--72de74f38b6920d205849d5e.md) | 33 | `result-track:72de74f38b6920d205849d5e1f4d71290989285209b6cd9f170335e984564fce` |
| 4 | `theorem` | [mem_dedup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variantae89b1d1930bd2b41c97acd4aae5ceee884ca849e162cddb8495d7cddb13a740.lean/declarations/mem-dedup--3367d995b71be7bf197591b4.md) | 37 | `result-track:3367d995b71be7bf197591b41611dd87e6cb1ba7b1b0fe54070a5b20d00f68a4` |
| 5 | `theorem` | [dedup_cons_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variantae89b1d1930bd2b41c97acd4aae5ceee884ca849e162cddb8495d7cddb13a740.lean/declarations/dedup-cons-of-mem--70018d6064bd1dc33774f659.md) | 41 | `result-track:70018d6064bd1dc33774f65987c97712c6cd8f0c98d71aa43bcd6f8e08dcbf15` |
| 6 | `theorem` | [dedup_cons_of_notMem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variantae89b1d1930bd2b41c97acd4aae5ceee884ca849e162cddb8495d7cddb13a740.lean/declarations/dedup-cons-of-notmem--3a2fbeb5e8e73472f18e9321.md) | 45 | `result-track:3a2fbeb5e8e73472f18e9321e384a879e685025d65bb4cb713c6f2c6c2ae4cc1` |
| 7 | `theorem` | [dedup_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variantae89b1d1930bd2b41c97acd4aae5ceee884ca849e162cddb8495d7cddb13a740.lean/declarations/dedup-le--35e38e850f93e2031d81e5b5.md) | 50 | `result-track:35e38e850f93e2031d81e5b5541013ba022ba19a22908ef3bdbae12cd8c405dc` |
| 8 | `theorem` | [dedup_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variantae89b1d1930bd2b41c97acd4aae5ceee884ca849e162cddb8495d7cddb13a740.lean/declarations/dedup-subset--a3d41f7bf9cad097b7fbf7dd.md) | 53 | `result-track:a3d41f7bf9cad097b7fbf7dd0db4aab8554b7a8db9582a215b72392c9cd8cbf9` |
| 9 | `theorem` | [subset_dedup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variantae89b1d1930bd2b41c97acd4aae5ceee884ca849e162cddb8495d7cddb13a740.lean/declarations/subset-dedup--dfccb51607612478843e5383.md) | 56 | `result-track:dfccb51607612478843e53837fd687216563b86253e457f6b02cb0e1e2270a3e` |
| 10 | `theorem` | [dedup_subset'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variantae89b1d1930bd2b41c97acd4aae5ceee884ca849e162cddb8495d7cddb13a740.lean/declarations/dedup-subset--fbb226beb241c031b6257521.md) | 59 | `result-track:fbb226beb241c031b6257521d3eb78e4c378b177b1e69fddb7bb94a26138bf2b` |
| 11 | `theorem` | [subset_dedup'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variantae89b1d1930bd2b41c97acd4aae5ceee884ca849e162cddb8495d7cddb13a740.lean/declarations/subset-dedup--10dfff12a2133ecad74474be.md) | 63 | `result-track:10dfff12a2133ecad74474be4364adab4759e5bc733a70134a6874e4df45c073` |
| 12 | `theorem` | [nodup_dedup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variantae89b1d1930bd2b41c97acd4aae5ceee884ca849e162cddb8495d7cddb13a740.lean/declarations/nodup-dedup--b03428bc5e472b240fe563f0.md) | 67 | `result-track:b03428bc5e472b240fe563f093c69f3ec83824deaefd617b162dcd20a01b9387` |
| 13 | `theorem` | [dedup_eq_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variantae89b1d1930bd2b41c97acd4aae5ceee884ca849e162cddb8495d7cddb13a740.lean/declarations/dedup-eq-self--9ff7c392029aab3869be9c05.md) | 70 | `result-track:9ff7c392029aab3869be9c05cde84812656695e295f1daa3a329e8dbf907664f` |
| 14 | `theorem` | [count_dedup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variantae89b1d1930bd2b41c97acd4aae5ceee884ca849e162cddb8495d7cddb13a740.lean/declarations/count-dedup--8ff7a6514d994984a3d2b8cc.md) | 75 | `result-track:8ff7a6514d994984a3d2b8ccdb808b9362ab53113ea6304a4fa118a00ee75d82` |
| 15 | `theorem` | [dedup_idem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variantae89b1d1930bd2b41c97acd4aae5ceee884ca849e162cddb8495d7cddb13a740.lean/declarations/dedup-idem--06b20c916c6bcf5474d8abdc.md) | 81 | `result-track:06b20c916c6bcf5474d8abdc3961871e39c8b6151bb337986e4977b5e82b0952` |
| 16 | `theorem` | [dedup_eq_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variantae89b1d1930bd2b41c97acd4aae5ceee884ca849e162cddb8495d7cddb13a740.lean/declarations/dedup-eq-zero--f15217fcf9e306d5e5c17280.md) | 84 | `result-track:f15217fcf9e306d5e5c17280214848032dd43c0dcdf8187a24c1cc2c5fb763b9` |
| 17 | `theorem` | [dedup_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variantae89b1d1930bd2b41c97acd4aae5ceee884ca849e162cddb8495d7cddb13a740.lean/declarations/dedup-singleton--d5c974145995da1dbfab120e.md) | 88 | `result-track:d5c974145995da1dbfab120eada0bb1910867c6031149b6f3e22af47e15c8335` |
| 18 | `theorem` | [le_dedup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variantae89b1d1930bd2b41c97acd4aae5ceee884ca849e162cddb8495d7cddb13a740.lean/declarations/le-dedup--0477285e22a1c499c121f533.md) | 91 | `result-track:0477285e22a1c499c121f5334f750856ed07c307743d74f1a042cca153bd4bf6` |
| 19 | `theorem` | [le_dedup_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variantae89b1d1930bd2b41c97acd4aae5ceee884ca849e162cddb8495d7cddb13a740.lean/declarations/le-dedup-self--c1ba4246b9ec623df9572e2f.md) | 95 | `result-track:c1ba4246b9ec623df9572e2ffc2d0d2bbf729d4370d583d86f92a56f22c8ad43` |
| 20 | `theorem` | [dedup_ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variantae89b1d1930bd2b41c97acd4aae5ceee884ca849e162cddb8495d7cddb13a740.lean/declarations/dedup-ext--2f1b6809bd6d7c404e3f7840.md) | 98 | `result-track:2f1b6809bd6d7c404e3f7840b63bbd0950a1b7d66db0251daad8f56842e46032` |
| 21 | `theorem` | [dedup_map_of_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variantae89b1d1930bd2b41c97acd4aae5ceee884ca849e162cddb8495d7cddb13a740.lean/declarations/dedup-map-of-injective--25dca4c0c33dffd3a6107686.md) | 101 | `result-track:25dca4c0c33dffd3a6107686caeae5a6aaefcd20b35bd4a412650959d3128fe6` |
| 22 | `theorem` | [dedup_map_dedup_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variantae89b1d1930bd2b41c97acd4aae5ceee884ca849e162cddb8495d7cddb13a740.lean/declarations/dedup-map-dedup-eq--229a23c07c6b2e5a42b9a432.md) | 106 | `result-track:229a23c07c6b2e5a42b9a4323f906ef471535a9d489e55a3ff1c18998ad75d70` |
| 23 | `theorem` | [Nodup.le_dedup_iff_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variantae89b1d1930bd2b41c97acd4aae5ceee884ca849e162cddb8495d7cddb13a740.lean/declarations/nodup-le-dedup-iff-le--b947d1574047240b4132acdd.md) | 110 | `result-track:b947d1574047240b4132acdd65ba2f7093ec90e9dfc57ccf21fcb2cb5e05f504` |
| 24 | `theorem` | [Subset.dedup_add_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variantae89b1d1930bd2b41c97acd4aae5ceee884ca849e162cddb8495d7cddb13a740.lean/declarations/subset-dedup-add-right--4ce1c30d0fdb0df0d6e4c65e.md) | 113 | `result-track:4ce1c30d0fdb0df0d6e4c65e32c7904324dfdf71cf74805df290e6de6c7c99aa` |
| 25 | `theorem` | [Subset.dedup_add_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variantae89b1d1930bd2b41c97acd4aae5ceee884ca849e162cddb8495d7cddb13a740.lean/declarations/subset-dedup-add-left--380d39592ae3d38904e6c94c.md) | 118 | `result-track:380d39592ae3d38904e6c94c6ccdb9edde8d068e660d8cb420a99b5a15251e50` |
| 26 | `theorem` | [Disjoint.dedup_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variantae89b1d1930bd2b41c97acd4aae5ceee884ca849e162cddb8495d7cddb13a740.lean/declarations/disjoint-dedup-add--bb14accdb50c197a381b181a.md) | 122 | `result-track:bb14accdb50c197a381b181a5f2ae21950e8a705d17bc614f98d582237a09e26` |
| 27 | `theorem` | [_root_.List.Subset.dedup_append_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variantae89b1d1930bd2b41c97acd4aae5ceee884ca849e162cddb8495d7cddb13a740.lean/declarations/root-list-subset-dedup-append-left--b432317bfee498b981501dea.md) | 128 | `result-track:b432317bfee498b981501dea6c6831ebdee6f0b6d021c7d49fd263e932411efb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
