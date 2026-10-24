# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Range.Variant0355f2e0b8b30acbba3e4a17b4b2bc4635acb00fef2b5a1919636cb257e5ea26

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79ae4efa055d3802334ee48ab6c92b11f249b00a",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Range/Variant0355f2e0b8b30acbba3e4a17b4b2bc4635acb00fef2b5a1919636cb257e5ea26.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant0355f2e0b8b30acbba3e4a17b4b2bc4635acb00fef2b5a1919636cb257e5ea26.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant0355f2e0b8b30acbba3e4a17b4b2bc4635acb00fef2b5a1919636cb257e5ea26.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79ae4efa055d3802334ee48ab6c92b11f249b00a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Range/Variant0355f2e0b8b30acbba3e4a17b4b2bc4635acb00fef2b5a1919636cb257e5ea26.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Range/Variant0355f2e0b8b30acbba3e4a17b4b2bc4635acb00fef2b5a1919636cb257e5ea26.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Insert` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Range` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant0355f2e0b8b30acbba3e4a17b4b2bc4635acb00fef2b5a1919636cb257e5ea26.lean/declarations/range--2f41ce77096873fe9d0d8b4e.md) | 49 | `declaration-track:2f41ce77096873fe9d0d8b4ecd8270a9b5c46fe8a1a632d88ee9be42fddd97e8` |
| 2 | `theorem` | [range_val](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant0355f2e0b8b30acbba3e4a17b4b2bc4635acb00fef2b5a1919636cb257e5ea26.lean/declarations/range-val--38be0fc286fd43d9fef02064.md) | 53 | `result-track:38be0fc286fd43d9fef02064ce43b72ec0c67752ea89359e9417ed9a822bc66b` |
| 3 | `theorem` | [mem_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant0355f2e0b8b30acbba3e4a17b4b2bc4635acb00fef2b5a1919636cb257e5ea26.lean/declarations/mem-range--0624d86ecc1e1be17827819b.md) | 57 | `result-track:0624d86ecc1e1be17827819b7758a07f4e590a5fc518b956dc38fc4463fe607b` |
| 4 | `theorem` | [coe_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant0355f2e0b8b30acbba3e4a17b4b2bc4635acb00fef2b5a1919636cb257e5ea26.lean/declarations/coe-range--9426826b41a8ebe698241cb9.md) | 61 | `result-track:9426826b41a8ebe698241cb954a7626efce69fd9dd9d71394ff9803039e16c13` |
| 5 | `theorem` | [range_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant0355f2e0b8b30acbba3e4a17b4b2bc4635acb00fef2b5a1919636cb257e5ea26.lean/declarations/range-zero--0e7299b6262e69df91af332e.md) | 65 | `result-track:0e7299b6262e69df91af332e4b387cfd371bbef842f517b4e7e122a22f78638a` |
| 6 | `theorem` | [range_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant0355f2e0b8b30acbba3e4a17b4b2bc4635acb00fef2b5a1919636cb257e5ea26.lean/declarations/range-one--6a46bf54349cde36472d58e9.md) | 69 | `result-track:6a46bf54349cde36472d58e9b6ff786f527b02fbb17b67aa176cc06f7493b36f` |
| 7 | `theorem` | [range_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant0355f2e0b8b30acbba3e4a17b4b2bc4635acb00fef2b5a1919636cb257e5ea26.lean/declarations/range-succ--d90f0052d9c4c1c72910061f.md) | 72 | `result-track:d90f0052d9c4c1c72910061ffdc5e9eaa35ea74f9dc7ce11ebd143cd5ad1264d` |
| 8 | `theorem` | [range_add_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant0355f2e0b8b30acbba3e4a17b4b2bc4635acb00fef2b5a1919636cb257e5ea26.lean/declarations/range-add-one--2be120ebb18fba9d731810d0.md) | 75 | `result-track:2be120ebb18fba9d731810d0d441bdb14b44abe961fc9ffe2b86c922d59e8d39` |
| 9 | `theorem` | [notMem_range_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant0355f2e0b8b30acbba3e4a17b4b2bc4635acb00fef2b5a1919636cb257e5ea26.lean/declarations/notmem-range-self--aaa85141f06876072ef98705.md) | 78 | `result-track:aaa85141f06876072ef98705cac0208227b4839589c4bd4757f0c40541d6ca93` |
| 10 | `theorem` | [self_mem_range_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant0355f2e0b8b30acbba3e4a17b4b2bc4635acb00fef2b5a1919636cb257e5ea26.lean/declarations/self-mem-range-succ--f3205b904e5a8fd17522e488.md) | 83 | `result-track:f3205b904e5a8fd17522e48884b48bddae77cc7e3e6bf0d82cd9d5cf04649196` |
| 11 | `theorem` | [range_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant0355f2e0b8b30acbba3e4a17b4b2bc4635acb00fef2b5a1919636cb257e5ea26.lean/declarations/range-subset--ea585f0bf1201a46330da2c9.md) | 87 | `result-track:ea585f0bf1201a46330da2c93745653b14e89832fe511a8f84fb93d8ade05ad0` |
| 12 | `theorem` | [range_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant0355f2e0b8b30acbba3e4a17b4b2bc4635acb00fef2b5a1919636cb257e5ea26.lean/declarations/range-mono--42ffa6a6a5230bb485611895.md) | 90 | `result-track:42ffa6a6a5230bb4856118957aed111a6f59da92f49d3f107cbfdc06b9dc8cf7` |
| 13 | `theorem` | [mem_range_succ_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant0355f2e0b8b30acbba3e4a17b4b2bc4635acb00fef2b5a1919636cb257e5ea26.lean/declarations/mem-range-succ-iff--952bce286491f78f6054f426.md) | 94 | `result-track:952bce286491f78f6054f4262aa9983969e8e79987042970faa02e663ef6e91e` |
| 14 | `theorem` | [mem_range_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant0355f2e0b8b30acbba3e4a17b4b2bc4635acb00fef2b5a1919636cb257e5ea26.lean/declarations/mem-range-le--023895b2e44e3703313fe4d2.md) | 97 | `result-track:023895b2e44e3703313fe4d2f7ba4919ffd31a470c25bbb99e1d76c8cd6ed918` |
| 15 | `theorem` | [mem_range_sub_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant0355f2e0b8b30acbba3e4a17b4b2bc4635acb00fef2b5a1919636cb257e5ea26.lean/declarations/mem-range-sub-ne-zero--bc13ba10c3c98a54c606e545.md) | 100 | `result-track:bc13ba10c3c98a54c606e545ab88fabc22c76a430e82841787bbc287ff44e797` |
| 16 | `theorem` | [nonempty_range_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant0355f2e0b8b30acbba3e4a17b4b2bc4635acb00fef2b5a1919636cb257e5ea26.lean/declarations/nonempty-range-iff--5fb1a71b71b719d6f391e486.md) | 104 | `result-track:5fb1a71b71b719d6f391e4867e08bf4a508bd73a4d9e1ff50699dbe806b1af94` |
| 17 | `theorem` | [range_eq_empty_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant0355f2e0b8b30acbba3e4a17b4b2bc4635acb00fef2b5a1919636cb257e5ea26.lean/declarations/range-eq-empty-iff--fd586cd304ffa4e9fcb8ae7e.md) | 112 | `result-track:fd586cd304ffa4e9fcb8ae7e44fcbeec35a70d675c5190d909a38a04420a4139` |
| 18 | `theorem` | [nonempty_range_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant0355f2e0b8b30acbba3e4a17b4b2bc4635acb00fef2b5a1919636cb257e5ea26.lean/declarations/nonempty-range-succ--adbc634332a5f9af4b6f435a.md) | 116 | `result-track:adbc634332a5f9af4b6f435a8c1abf3d43368ee21f59e338d57c9a51ccb61d78` |
| 19 | `lemma` | [range_nontrivial](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant0355f2e0b8b30acbba3e4a17b4b2bc4635acb00fef2b5a1919636cb257e5ea26.lean/declarations/range-nontrivial--dcabef30b787f5c87d4485c0.md) | 119 | `result-track:dcabef30b787f5c87d4485c00ecbb328591142a0110410637c66be3f67b40521` |
| 20 | `theorem` | [exists_nat_subset_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant0355f2e0b8b30acbba3e4a17b4b2bc4635acb00fef2b5a1919636cb257e5ea26.lean/declarations/exists-nat-subset-range--d0ccf1a594967ceed06c9c6a.md) | 123 | `result-track:d0ccf1a594967ceed06c9c6ae2d55f9b2621a7c7df4733978b5c258a154382da` |
| 21 | `def` | [notMemRangeEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant0355f2e0b8b30acbba3e4a17b4b2bc4635acb00fef2b5a1919636cb257e5ea26.lean/declarations/notmemrangeequiv--7eab4809f25f8621d994031d.md) | 132 | `declaration-track:7eab4809f25f8621d994031d08cad2f1b2ad4d5ddcce04120e72d340f812269e` |
| 22 | `theorem` | [coe_notMemRangeEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant0355f2e0b8b30acbba3e4a17b4b2bc4635acb00fef2b5a1919636cb257e5ea26.lean/declarations/coe-notmemrangeequiv--68199dc1d0e7901777fb235e.md) | 142 | `result-track:68199dc1d0e7901777fb235ed9ebeffb880e6b311d3cf4a23414dbf5d9327546` |
| 23 | `theorem` | [coe_notMemRangeEquiv_symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant0355f2e0b8b30acbba3e4a17b4b2bc4635acb00fef2b5a1919636cb257e5ea26.lean/declarations/coe-notmemrangeequiv-symm--bf4ee25e3c9f1756023a2be0.md) | 147 | `result-track:bf4ee25e3c9f1756023a2be06e7b30a2180da8f4ab7346fe9ad67750dd3bb083` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
