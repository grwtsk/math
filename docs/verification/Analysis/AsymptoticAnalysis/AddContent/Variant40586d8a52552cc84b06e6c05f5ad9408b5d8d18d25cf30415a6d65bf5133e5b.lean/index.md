# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.AddContent.Variant40586d8a52552cc84b06e6c05f5ad9408b5d8d18d25cf30415a6d65bf5133e5b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3759153c38316094d596b8fdc1357ca9e40373ac",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/AddContent/Variant40586d8a52552cc84b06e6c05f5ad9408b5d8d18d25cf30415a6d65bf5133e5b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variant40586d8a52552cc84b06e6c05f5ad9408b5d8d18d25cf30415a6d65bf5133e5b.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variant40586d8a52552cc84b06e6c05f5ad9408b5d8d18d25cf30415a6d65bf5133e5b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3759153c38316094d596b8fdc1357ca9e40373ac`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/AddContent/Variant40586d8a52552cc84b06e6c05f5ad9408b5d8d18d25cf30415a6d65bf5133e5b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/AddContent/Variant40586d8a52552cc84b06e6c05f5ad9408b5d8d18d25cf30415a6d65bf5133e5b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.SetSemiring` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.OuterMeasure.Induced` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AddContent](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variant40586d8a52552cc84b06e6c05f5ad9408b5d8d18d25cf30415a6d65bf5133e5b.lean/declarations/addcontent--39894524cf7216f2418d7e41.md) | 64 | `declaration-track:39894524cf7216f2418d7e41e7f590c8c00a8fef822716dcdc731187160b8cd0` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variant40586d8a52552cc84b06e6c05f5ad9408b5d8d18d25cf30415a6d65bf5133e5b.lean/declarations/instance--63adb1c29b7ec270e75570a6.md) | 72 | `declaration-track:63adb1c29b7ec270e75570a668c096907b56388c9ca09259dfa0df7f31fcae7d` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variant40586d8a52552cc84b06e6c05f5ad9408b5d8d18d25cf30415a6d65bf5133e5b.lean/declarations/instance--489c8525336eb114516e3ab3.md) | 77 | `declaration-track:489c8525336eb114516e3ab3b64324322e8815256bec295788947c510347f367` |
| 4 | `lemma` | [AddContent.ext](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variant40586d8a52552cc84b06e6c05f5ad9408b5d8d18d25cf30415a6d65bf5133e5b.lean/declarations/addcontent-ext--2a65640ce6d6e811d996494e.md) | 86 | `result-track:2a65640ce6d6e811d996494e3fa625b7683e1c7890a124a35ccefc7d297fef22` |
| 5 | `lemma` | [addContent_empty](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variant40586d8a52552cc84b06e6c05f5ad9408b5d8d18d25cf30415a6d65bf5133e5b.lean/declarations/addcontent-empty--e8c8b10fa366cbdcc7407ff8.md) | 89 | `result-track:e8c8b10fa366cbdcc7407ff8f5240c7385753f3428983422a79a9aa13832d8a9` |
| 6 | `lemma` | [addContent_sUnion](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variant40586d8a52552cc84b06e6c05f5ad9408b5d8d18d25cf30415a6d65bf5133e5b.lean/declarations/addcontent-sunion--7ebd0326510108dbaf41b30e.md) | 91 | `result-track:7ebd0326510108dbaf41b30ef7913fe9fccde0c35e0e959dbd5bcbfd189c4bef` |
| 7 | `lemma` | [addContent_union'](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variant40586d8a52552cc84b06e6c05f5ad9408b5d8d18d25cf30415a6d65bf5133e5b.lean/declarations/addcontent-union--4a595748684cd0f0c1a92ca2.md) | 96 | `result-track:4a595748684cd0f0c1a92ca26f27420dd248e3daf25f8c7c561f7e09acad831d` |
| 8 | `def` | [AddContent.IsSigmaSubadditive](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variant40586d8a52552cc84b06e6c05f5ad9408b5d8d18d25cf30415a6d65bf5133e5b.lean/declarations/addcontent-issigmasubadditive--c7ba9f1a9be66db3358df8a2.md) | 119 | `declaration-track:c7ba9f1a9be66db3358df8a21543b8d378b37a4643fda4e1348c939c565857a3` |
| 9 | `lemma` | [addContent_eq_add_disjointOfDiffUnion_of_subset](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variant40586d8a52552cc84b06e6c05f5ad9408b5d8d18d25cf30415a6d65bf5133e5b.lean/declarations/addcontent-eq-add-disjointofdiffunion-of-subset--d9c179965ac6372c0ccb5fb8.md) | 124 | `result-track:d9c179965ac6372c0ccb5fb8df8767905390fb9307c5ee9dac0339f121fb7d4d` |
| 10 | `lemma` | [sum_addContent_le_of_subset](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variant40586d8a52552cc84b06e6c05f5ad9408b5d8d18d25cf30415a6d65bf5133e5b.lean/declarations/sum-addcontent-le-of-subset--64c1ed049e0b6118f98a7ddc.md) | 141 | `result-track:64c1ed049e0b6118f98a7ddc69f85bfd653be60386d81907a6b9eb3ac05b01d2` |
| 11 | `lemma` | [addContent_mono](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variant40586d8a52552cc84b06e6c05f5ad9408b5d8d18d25cf30415a6d65bf5133e5b.lean/declarations/addcontent-mono--9d87220b99fed1ba13f157a0.md) | 150 | `result-track:9d87220b99fed1ba13f157a023a5cb034f1d78e308b294962baa356ef566a80c` |
| 12 | `theorem` | [eq_add_disjointOfDiff_of_subset](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variant40586d8a52552cc84b06e6c05f5ad9408b5d8d18d25cf30415a6d65bf5133e5b.lean/declarations/eq-add-disjointofdiff-of-subset--8c10ed8cfd85e6cc58b427d3.md) | 161 | `result-track:8c10ed8cfd85e6cc58b427d331d50a0d8aa1731f0c83dbcdd50ad7d7d6c41330` |
| 13 | `lemma` | [addContent_sUnion_le_sum](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variant40586d8a52552cc84b06e6c05f5ad9408b5d8d18d25cf30415a6d65bf5133e5b.lean/declarations/addcontent-sunion-le-sum--894ebed6e1e4a84148e49381.md) | 177 | `result-track:894ebed6e1e4a84148e49381eaa08734c6cc4a8c73561f4096c73f1ae84a87ff` |
| 14 | `lemma` | [addContent_le_sum_of_subset_sUnion](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variant40586d8a52552cc84b06e6c05f5ad9408b5d8d18d25cf30415a6d65bf5133e5b.lean/declarations/addcontent-le-sum-of-subset-sunion--ffbb6a3b9a3b3d1f1054035c.md) | 202 | `result-track:ffbb6a3b9a3b3d1f1054035c351a0fb531400a5bbe2875356894a4b40081dd21` |
| 15 | `theorem` | [addContent_iUnion_eq_tsum_of_disjoint_of_addContent_iUnion_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variant40586d8a52552cc84b06e6c05f5ad9408b5d8d18d25cf30415a6d65bf5133e5b.lean/declarations/addcontent-iunion-eq-tsum-of-disjoint-of-addcontent-iunion-le--4c746d992ee4cad26c70ed73.md) | 223 | `result-track:4c746d992ee4cad26c70ed73e026e0a25a28e297600cf7cfeecc4410ac6ef79f` |
| 16 | `theorem` | [addContent_iUnion_eq_tsum_of_disjoint_of_IsSigmaSubadditive](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variant40586d8a52552cc84b06e6c05f5ad9408b5d8d18d25cf30415a6d65bf5133e5b.lean/declarations/addcontent-iunion-eq-tsum-of-disjoint-of-issigmasubadditive--38adc1bb1fd790674066864f.md) | 251 | `result-track:38adc1bb1fd790674066864f4988b273d98c599fbae5fcce570cde6ee67b7ad4` |
| 17 | `def` | [AddContent.extend](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variant40586d8a52552cc84b06e6c05f5ad9408b5d8d18d25cf30415a6d65bf5133e5b.lean/declarations/addcontent-extend--dcbfbd0b5151775bfbcc38e8.md) | 266 | `declaration-track:dcbfbd0b5151775bfbcc38e8aced74d086497f7a978f81c750763e83f3edb6c3` |
| 18 | `theorem` | [AddContent.extend_eq_extend](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variant40586d8a52552cc84b06e6c05f5ad9408b5d8d18d25cf30415a6d65bf5133e5b.lean/declarations/addcontent-extend-eq-extend--9f18753a5b49a234b1918cb2.md) | 277 | `result-track:9f18753a5b49a234b1918cb2d286d3d27cd6580aa47ab71b4814238a9bfbd1ff` |
| 19 | `theorem` | [AddContent.extend_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variant40586d8a52552cc84b06e6c05f5ad9408b5d8d18d25cf30415a6d65bf5133e5b.lean/declarations/addcontent-extend-eq--e293da0bd7c5a34d31422348.md) | 280 | `result-track:e293da0bd7c5a34d314223483db2dc90642d5467c5d2280be9f6bea02900c42e` |
| 20 | `theorem` | [AddContent.extend_eq_top](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variant40586d8a52552cc84b06e6c05f5ad9408b5d8d18d25cf30415a6d65bf5133e5b.lean/declarations/addcontent-extend-eq-top--825331c45bbe9b2fc930efc2.md) | 284 | `result-track:825331c45bbe9b2fc930efc273f69a312f462e10ae4f6b7b1af0343f566ce007` |
| 21 | `lemma` | [addContent_union](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variant40586d8a52552cc84b06e6c05f5ad9408b5d8d18d25cf30415a6d65bf5133e5b.lean/declarations/addcontent-union--6899a8e3bc79d12ee843df63.md) | 292 | `result-track:6899a8e3bc79d12ee843df634ef2b4aca5821f50e331543cfe15c9b7d77670ba` |
| 22 | `lemma` | [addContent_union_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variant40586d8a52552cc84b06e6c05f5ad9408b5d8d18d25cf30415a6d65bf5133e5b.lean/declarations/addcontent-union-le--331cb52a1771c7aa969bb072.md) | 297 | `result-track:331cb52a1771c7aa969bb07262f3c035cc262e163a9bff732dc2cdaf5870618f` |
| 23 | `lemma` | [addContent_biUnion_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variant40586d8a52552cc84b06e6c05f5ad9408b5d8d18d25cf30415a6d65bf5133e5b.lean/declarations/addcontent-biunion-le--7213b7e0423e11a1bf90c24a.md) | 304 | `result-track:7213b7e0423e11a1bf90c24ad68d18c5388367f724f49a8c5943bfc890d25418` |
| 24 | `lemma` | [le_addContent_diff](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variant40586d8a52552cc84b06e6c05f5ad9408b5d8d18d25cf30415a6d65bf5133e5b.lean/declarations/le-addcontent-diff--6c83eae33b511e641a8e36dc.md) | 317 | `result-track:6c83eae33b511e641a8e36dcee6bf1e247417fc03720b84cfa51233abf779ec0` |
| 25 | `lemma` | [addContent_diff_of_ne_top](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variant40586d8a52552cc84b06e6c05f5ad9408b5d8d18d25cf30415a6d65bf5133e5b.lean/declarations/addcontent-diff-of-ne-top--7cea4b5120bfc3ea218f33a7.md) | 325 | `result-track:7cea4b5120bfc3ea218f33a7419c8ab5ecfa25a36375ee6417c2f932d1573ffa` |
| 26 | `lemma` | [addContent_accumulate](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variant40586d8a52552cc84b06e6c05f5ad9408b5d8d18d25cf30415a6d65bf5133e5b.lean/declarations/addcontent-accumulate--ae449361ab855c348c41b04f.md) | 334 | `result-track:ae449361ab855c348c41b04f6fe29a433f422d422e96a47e03d3a411d30c0796` |
| 27 | `def` | [IsSetRing.addContent_of_union](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variant40586d8a52552cc84b06e6c05f5ad9408b5d8d18d25cf30415a6d65bf5133e5b.lean/declarations/issetring-addcontent-of-union--6d572c8ecae46fbc1363ba07.md) | 346 | `declaration-track:6d572c8ecae46fbc1363ba0702f365330c981d9b7d7d737f2b18ca00afbf4cb6` |
| 28 | `theorem` | [addContent_iUnion_eq_sum_of_tendsto_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variant40586d8a52552cc84b06e6c05f5ad9408b5d8d18d25cf30415a6d65bf5133e5b.lean/declarations/addcontent-iunion-eq-sum-of-tendsto-zero--41c37456b8563195830742d4.md) | 372 | `result-track:41c37456b8563195830742d4555a6d8c46c597b997a581a8c7ce0115b4a00713` |
| 29 | `theorem` | [tendsto_atTop_addContent_iUnion_of_addContent_iUnion_eq_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variant40586d8a52552cc84b06e6c05f5ad9408b5d8d18d25cf30415a6d65bf5133e5b.lean/declarations/tendsto-attop-addcontent-iunion-of-addcontent-iunion-eq-tsum--e7c67afb1cfc9eecf09695e2.md) | 403 | `result-track:e7c67afb1cfc9eecf09695e2baad75bce55cd040dcf3cf5a46ff9ea4bebc8a30` |
| 30 | `theorem` | [isSigmaSubadditive_of_addContent_iUnion_eq_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variant40586d8a52552cc84b06e6c05f5ad9408b5d8d18d25cf30415a6d65bf5133e5b.lean/declarations/issigmasubadditive-of-addcontent-iunion-eq-tsum--0fe338cac477ed4b3e6ab74a.md) | 419 | `result-track:0fe338cac477ed4b3e6ab74a3027a993a01b5b5c318c7c2790d2f9d8caebd755` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
