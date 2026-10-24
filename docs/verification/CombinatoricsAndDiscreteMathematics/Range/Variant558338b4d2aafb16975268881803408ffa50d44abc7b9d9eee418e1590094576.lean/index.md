# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Range.Variant558338b4d2aafb16975268881803408ffa50d44abc7b9d9eee418e1590094576

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "43fb35f379700f133c16945442823aec0575665c",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Range/Variant558338b4d2aafb16975268881803408ffa50d44abc7b9d9eee418e1590094576.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant558338b4d2aafb16975268881803408ffa50d44abc7b9d9eee418e1590094576.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant558338b4d2aafb16975268881803408ffa50d44abc7b9d9eee418e1590094576.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `43fb35f379700f133c16945442823aec0575665c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Range/Variant558338b4d2aafb16975268881803408ffa50d44abc7b9d9eee418e1590094576.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Range/Variant558338b4d2aafb16975268881803408ffa50d44abc7b9d9eee418e1590094576.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant558338b4d2aafb16975268881803408ffa50d44abc7b9d9eee418e1590094576.lean/declarations/range--580b69eb95096018c4e68480.md) | 53 | `declaration-track:580b69eb95096018c4e6848026c4c32168aea48b211c78b8e0da966874666c31` |
| 2 | `theorem` | [range_val](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant558338b4d2aafb16975268881803408ffa50d44abc7b9d9eee418e1590094576.lean/declarations/range-val--db7007507e9748f6347c2b6f.md) | 57 | `result-track:db7007507e9748f6347c2b6fe286408d1ed835cd4a48ef4fe11e17ee9f026e7e` |
| 3 | `lemma` | [_root_.Multiset.toFinset_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant558338b4d2aafb16975268881803408ffa50d44abc7b9d9eee418e1590094576.lean/declarations/root-multiset-tofinset-range--84d4ceef2e1575668f037bc7.md) | 60 | `result-track:84d4ceef2e1575668f037bc721e37d1e9e33f17c03f69c7499e99f5d5908a067` |
| 4 | `theorem` | [mem_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant558338b4d2aafb16975268881803408ffa50d44abc7b9d9eee418e1590094576.lean/declarations/mem-range--8e6080085ecc875248cfa02c.md) | 64 | `result-track:8e6080085ecc875248cfa02c2cfae7c0438b3454e76e1028277eca7f5c94b438` |
| 5 | `theorem` | [coe_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant558338b4d2aafb16975268881803408ffa50d44abc7b9d9eee418e1590094576.lean/declarations/coe-range--213e5441a7a17967a6ebae6e.md) | 68 | `result-track:213e5441a7a17967a6ebae6e009a8bca5e3d132c50a13f4a62db4ed4fea7ae95` |
| 6 | `theorem` | [range_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant558338b4d2aafb16975268881803408ffa50d44abc7b9d9eee418e1590094576.lean/declarations/range-zero--cdc0ec620d60d3688e32e346.md) | 72 | `result-track:cdc0ec620d60d3688e32e346140765118f4dbd9be7ab61d967ff055b9a7c1a1a` |
| 7 | `theorem` | [range_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant558338b4d2aafb16975268881803408ffa50d44abc7b9d9eee418e1590094576.lean/declarations/range-one--fd4d11cd44c548dbb1116e82.md) | 76 | `result-track:fd4d11cd44c548dbb1116e829602c84526399e315e505c15afa5410d444458e2` |
| 8 | `theorem` | [range_add_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant558338b4d2aafb16975268881803408ffa50d44abc7b9d9eee418e1590094576.lean/declarations/range-add-one--92d25f1d425b07be7ffeb38a.md) | 79 | `result-track:92d25f1d425b07be7ffeb38a932684ee7736c31bedc6bd8d21b4ca26ad1b9cd8` |
| 9 | `theorem` | [notMem_range_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant558338b4d2aafb16975268881803408ffa50d44abc7b9d9eee418e1590094576.lean/declarations/notmem-range-self--6ae6dd2af835063ee36bcbd0.md) | 81 | `result-track:6ae6dd2af835063ee36bcbd0ceae7e2d388b56d0c7b7c81b146d7f93beb7ea8c` |
| 10 | `theorem` | [self_mem_range_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant558338b4d2aafb16975268881803408ffa50d44abc7b9d9eee418e1590094576.lean/declarations/self-mem-range-succ--ac651191bc786dd028c41265.md) | 83 | `result-track:ac651191bc786dd028c41265ae8f7a76dcea86762a7e35cc76a191cf4a32c041` |
| 11 | `theorem` | [range_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant558338b4d2aafb16975268881803408ffa50d44abc7b9d9eee418e1590094576.lean/declarations/range-subset--e51ef0d99710e929b631045e.md) | 86 | `result-track:e51ef0d99710e929b631045e3c821726d0ee4385f39be0ebb9e4068a4b3b24e3` |
| 12 | `theorem` | [subset_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant558338b4d2aafb16975268881803408ffa50d44abc7b9d9eee418e1590094576.lean/declarations/subset-range--eb36a464e5caccd3fdc755cf.md) | 88 | `result-track:eb36a464e5caccd3fdc755cf6e942078eb067727ea6e75f4e374b137580cee97` |
| 13 | `theorem` | [range_subset_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant558338b4d2aafb16975268881803408ffa50d44abc7b9d9eee418e1590094576.lean/declarations/range-subset-range--95cd1eb2276d591cbbcb46c6.md) | 91 | `result-track:95cd1eb2276d591cbbcb46c6ec6080ad1636ea42a7639e62dae2f2fcfe060363` |
| 14 | `theorem` | [range_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant558338b4d2aafb16975268881803408ffa50d44abc7b9d9eee418e1590094576.lean/declarations/range-mono--7af21254bcfdad5d84fe4cbf.md) | 93 | `result-track:7af21254bcfdad5d84fe4cbf8fbe396693682925be14659dd462ab749e065063` |
| 15 | `theorem` | [strictMono_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant558338b4d2aafb16975268881803408ffa50d44abc7b9d9eee418e1590094576.lean/declarations/strictmono-range--0f4ba57ac3399fc3bf40703f.md) | 95 | `result-track:0f4ba57ac3399fc3bf40703fe52995292f68c8b87ff6119a33744f767b90bc25` |
| 16 | `theorem` | [mem_range_succ_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant558338b4d2aafb16975268881803408ffa50d44abc7b9d9eee418e1590094576.lean/declarations/mem-range-succ-iff--44cc721815dfec1cd26d6922.md) | 98 | `result-track:44cc721815dfec1cd26d6922e6b1485d5a99ddf9883a88ce0c4019f625997d1f` |
| 17 | `theorem` | [mem_range_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant558338b4d2aafb16975268881803408ffa50d44abc7b9d9eee418e1590094576.lean/declarations/mem-range-le--0ec02dceb33b699bb6a3d2cc.md) | 100 | `result-track:0ec02dceb33b699bb6a3d2ccb1b020ffe9e2b4505b94049dedf3598338dfbd43` |
| 18 | `theorem` | [mem_range_sub_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant558338b4d2aafb16975268881803408ffa50d44abc7b9d9eee418e1590094576.lean/declarations/mem-range-sub-ne-zero--a9d215e5fc8d64ee7c86eca7.md) | 102 | `result-track:a9d215e5fc8d64ee7c86eca7eed346fbc912fdb3a8e24732f64c8cf7f199e9e1` |
| 19 | `theorem` | [nonempty_range_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant558338b4d2aafb16975268881803408ffa50d44abc7b9d9eee418e1590094576.lean/declarations/nonempty-range-iff--26abc033edfb157a4d32e860.md) | 105 | `result-track:26abc033edfb157a4d32e860208792d65518d19fdcb5c646f6a3b3de74850b7c` |
| 20 | `theorem` | [range_eq_empty_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant558338b4d2aafb16975268881803408ffa50d44abc7b9d9eee418e1590094576.lean/declarations/range-eq-empty-iff--774a381117fcb8edc98f26d2.md) | 112 | `result-track:774a381117fcb8edc98f26d23481cfadf02ab080825c0dd01d7b7a17cfd62ec3` |
| 21 | `theorem` | [nonempty_range_add_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant558338b4d2aafb16975268881803408ffa50d44abc7b9d9eee418e1590094576.lean/declarations/nonempty-range-add-one--bc15a55343b4287317b32576.md) | 116 | `result-track:bc15a55343b4287317b32576ea208baa30ec3c760e45320ffd9d6a70f3006ed5` |
| 22 | `lemma` | [range_nontrivial](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant558338b4d2aafb16975268881803408ffa50d44abc7b9d9eee418e1590094576.lean/declarations/range-nontrivial--504aa04c555f0a73e9e36f84.md) | 119 | `result-track:504aa04c555f0a73e9e36f848c0426cda0bfe4d30c9501282d312714eafcd96c` |
| 23 | `theorem` | [exists_nat_subset_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant558338b4d2aafb16975268881803408ffa50d44abc7b9d9eee418e1590094576.lean/declarations/exists-nat-subset-range--3952eae178c07024263d3d24.md) | 123 | `result-track:3952eae178c07024263d3d24fbc7ee4a330439a254813b07b30ac139042a706c` |
| 24 | `def` | [notMemRangeEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant558338b4d2aafb16975268881803408ffa50d44abc7b9d9eee418e1590094576.lean/declarations/notmemrangeequiv--281177a361a94c4c6c19c055.md) | 133 | `declaration-track:281177a361a94c4c6c19c055858d4fa1f389cb877b31ba2573ab613d2b5b8d18` |
| 25 | `theorem` | [coe_notMemRangeEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant558338b4d2aafb16975268881803408ffa50d44abc7b9d9eee418e1590094576.lean/declarations/coe-notmemrangeequiv--62fcfbf7e48cb5edc8dfdef5.md) | 140 | `result-track:62fcfbf7e48cb5edc8dfdef535162d7e28ebffff7662a37a51f2eda5ac4ec77b` |
| 26 | `theorem` | [coe_notMemRangeEquiv_symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant558338b4d2aafb16975268881803408ffa50d44abc7b9d9eee418e1590094576.lean/declarations/coe-notmemrangeequiv-symm--ea50921b1badc8c5c11fc167.md) | 145 | `result-track:ea50921b1badc8c5c11fc167f6bf689b8356c1b88705d9809788a3c5b07f4842` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
