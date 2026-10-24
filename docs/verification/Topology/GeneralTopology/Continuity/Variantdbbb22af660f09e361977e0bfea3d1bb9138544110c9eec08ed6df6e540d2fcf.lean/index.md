# Verification target: GRWTSK.Topology.GeneralTopology.Continuity.Variantdbbb22af660f09e361977e0bfea3d1bb9138544110c9eec08ed6df6e540d2fcf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b89e19925330ba596658e5cf8bfae06e5cb03619",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Continuity/Variantdbbb22af660f09e361977e0bfea3d1bb9138544110c9eec08ed6df6e540d2fcf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantdbbb22af660f09e361977e0bfea3d1bb9138544110c9eec08ed6df6e540d2fcf.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantdbbb22af660f09e361977e0bfea3d1bb9138544110c9eec08ed6df6e540d2fcf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b89e19925330ba596658e5cf8bfae06e5cb03619`.

Source path: `GRWTSK/Topology/GeneralTopology/Continuity/Variantdbbb22af660f09e361977e0bfea3d1bb9138544110c9eec08ed6df6e540d2fcf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Continuity/Variantdbbb22af660f09e361977e0bfea3d1bb9138544110c9eec08ed6df6e540d2fcf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Ring.Real` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Metrizable.Uniformity` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sequences` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tendsto_iff_norm_div_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantdbbb22af660f09e361977e0bfea3d1bb9138544110c9eec08ed6df6e540d2fcf.lean/declarations/tendsto-iff-norm-div-tendsto-zero--8f50cd95eb60a66e44dcce61.md) | 36 | `result-track:8f50cd95eb60a66e44dcce61214ea77de8f0ca8fed16041c811502e04b987adc` |
| 2 | `theorem` | [tendsto_one_iff_norm_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantdbbb22af660f09e361977e0bfea3d1bb9138544110c9eec08ed6df6e540d2fcf.lean/declarations/tendsto-one-iff-norm-tendsto-zero--e31e57fab44924c05d94aa7e.md) | 41 | `result-track:e31e57fab44924c05d94aa7ed3d28939dd6f35ce304bc4034116118b15518f94` |
| 3 | `theorem` | [comap_norm_nhds_one](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantdbbb22af660f09e361977e0bfea3d1bb9138544110c9eec08ed6df6e540d2fcf.lean/declarations/comap-norm-nhds-one--7515ade441a824a803e6d46b.md) | 46 | `result-track:7515ade441a824a803e6d46b2d52d5206b5694966c8e4b8c29904ff12e0f0022` |
| 4 | `theorem` | [squeeze_one_norm'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantdbbb22af660f09e361977e0bfea3d1bb9138544110c9eec08ed6df6e540d2fcf.lean/declarations/squeeze-one-norm--2d7f15119e1f5c9e42160fc4.md) | 59 | `result-track:2d7f15119e1f5c9e42160fc4817110ab4ed108b31e02937fa937fd3d31a835b2` |
| 5 | `theorem` | [squeeze_one_norm](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantdbbb22af660f09e361977e0bfea3d1bb9138544110c9eec08ed6df6e540d2fcf.lean/declarations/squeeze-one-norm--27e98b8d9c053c98992fd650.md) | 68 | `result-track:27e98b8d9c053c98992fd650a09f8b70452ea189a4dba46200f6d32b0c7c0da3` |
| 6 | `theorem` | [tendsto_norm_div_self](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantdbbb22af660f09e361977e0bfea3d1bb9138544110c9eec08ed6df6e540d2fcf.lean/declarations/tendsto-norm-div-self--800edd4bc2141d5244072546.md) | 73 | `result-track:800edd4bc2141d5244072546d04a291650aed8fb4bb80b94ff1efcaa574ef917` |
| 7 | `theorem` | [tendsto_norm_div_self_nhdsGE](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantdbbb22af660f09e361977e0bfea3d1bb9138544110c9eec08ed6df6e540d2fcf.lean/declarations/tendsto-norm-div-self-nhdsge--d0c1d7bebab09aca0e5113a7.md) | 78 | `result-track:d0c1d7bebab09aca0e5113a73f475333f48833bdb7970208a5cb32e257d9d27d` |
| 8 | `theorem` | [tendsto_norm'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantdbbb22af660f09e361977e0bfea3d1bb9138544110c9eec08ed6df6e540d2fcf.lean/declarations/tendsto-norm--f7d5b753ff0b4335f06a6216.md) | 82 | `result-track:f7d5b753ff0b4335f06a6216d07642a755f290868ca01e52fb2fd3efb1964059` |
| 9 | `theorem` | [tendsto_norm_one](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantdbbb22af660f09e361977e0bfea3d1bb9138544110c9eec08ed6df6e540d2fcf.lean/declarations/tendsto-norm-one--dfd2a681c59dc04b7cc64768.md) | 87 | `result-track:dfd2a681c59dc04b7cc647687e19e81b422b347c8620b977778958950ba13b34` |
| 10 | `theorem` | [continuous_norm'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantdbbb22af660f09e361977e0bfea3d1bb9138544110c9eec08ed6df6e540d2fcf.lean/declarations/continuous-norm--c1049088100eb1cbb0479e5e.md) | 91 | `result-track:c1049088100eb1cbb0479e5ee71c20d3f438f5d30472a129435a5bc07da75ccf` |
| 11 | `theorem` | [continuous_nnnorm'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantdbbb22af660f09e361977e0bfea3d1bb9138544110c9eec08ed6df6e540d2fcf.lean/declarations/continuous-nnnorm--f8486932afb11a261d3e0abc.md) | 95 | `result-track:f8486932afb11a261d3e0abc15ed66aef491b8294e4353d58250f8c9c4973228` |
| 12 | `instance` | [SeminormedGroup.toContinuousENorm](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantdbbb22af660f09e361977e0bfea3d1bb9138544110c9eec08ed6df6e540d2fcf.lean/declarations/seminormedgroup-tocontinuousenorm--ed28a2f4ac6fec2ff5e6eab4.md) | 103 | `declaration-track:ed28a2f4ac6fec2ff5e6eab45bc53afb332992e5191bde76e3310990690f503a` |
| 13 | `instance` | [NormedGroup.toENormedMonoid](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantdbbb22af660f09e361977e0bfea3d1bb9138544110c9eec08ed6df6e540d2fcf.lean/declarations/normedgroup-toenormedmonoid--55e322e1c1ae0ea2638d2120.md) | 107 | `declaration-track:55e322e1c1ae0ea2638d212008e2c56359e324a68ffe3855672d643bb3e2f8b9` |
| 14 | `instance` | [NormedCommGroup.toENormedCommMonoid](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantdbbb22af660f09e361977e0bfea3d1bb9138544110c9eec08ed6df6e540d2fcf.lean/declarations/normedcommgroup-toenormedcommmonoid--99f3a4801ad280753c1c1ceb.md) | 112 | `declaration-track:99f3a4801ad280753c1c1ceb00fcc51fc8cb6134b58d3d6396585a5b9386e093` |
| 15 | `theorem` | [Inseparable.norm_eq_norm'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantdbbb22af660f09e361977e0bfea3d1bb9138544110c9eec08ed6df6e540d2fcf.lean/declarations/inseparable-norm-eq-norm--98e970c6ea0e92e7f5192b2c.md) | 123 | `result-track:98e970c6ea0e92e7f5192b2ce3313d978082c68e49629977fb1faa3c02fe27ea` |
| 16 | `theorem` | [Inseparable.nnnorm_eq_nnnorm'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantdbbb22af660f09e361977e0bfea3d1bb9138544110c9eec08ed6df6e540d2fcf.lean/declarations/inseparable-nnnorm-eq-nnnorm--4097ad536c23a3e317c873c2.md) | 128 | `result-track:4097ad536c23a3e317c873c293e888dc6d055a8b1d2223af125fecf2911aadbb` |
| 17 | `theorem` | [Inseparable.enorm_eq_enorm'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantdbbb22af660f09e361977e0bfea3d1bb9138544110c9eec08ed6df6e540d2fcf.lean/declarations/inseparable-enorm-eq-enorm--6332920382441503aad3dc36.md) | 132 | `result-track:6332920382441503aad3dc3624ecc60340743f5191be505bb0f1f618fea66d69` |
| 18 | `theorem` | [mem_closure_one_iff_norm](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantdbbb22af660f09e361977e0bfea3d1bb9138544110c9eec08ed6df6e540d2fcf.lean/declarations/mem-closure-one-iff-norm--ea58652590e30e488312d675.md) | 137 | `result-track:ea58652590e30e488312d67592ae9b950f7a74e52e9cf18bdc880470a55bba4a` |
| 19 | `theorem` | [closure_one_eq](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantdbbb22af660f09e361977e0bfea3d1bb9138544110c9eec08ed6df6e540d2fcf.lean/declarations/closure-one-eq--7b4a9be6928b385835950350.md) | 141 | `result-track:7b4a9be6928b38583595035039d6843730a0515149fdd1e95a4060371936172d` |
| 20 | `theorem` | [Filter.Tendsto.norm'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantdbbb22af660f09e361977e0bfea3d1bb9138544110c9eec08ed6df6e540d2fcf.lean/declarations/filter-tendsto-norm--71352ccf074bb9496ec6c8dd.md) | 149 | `result-track:71352ccf074bb9496ec6c8dd3d01b780d8a3fdff0bb2544d0d3806dd72ebbb7e` |
| 21 | `theorem` | [Filter.Tendsto.nnnorm'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantdbbb22af660f09e361977e0bfea3d1bb9138544110c9eec08ed6df6e540d2fcf.lean/declarations/filter-tendsto-nnnorm--24691292e3a281dacf53d95b.md) | 153 | `result-track:24691292e3a281dacf53d95be71846ece7f6b0ffd30a561d5ef3119f9c1116dc` |
| 22 | `lemma` | [Filter.Tendsto.enorm'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantdbbb22af660f09e361977e0bfea3d1bb9138544110c9eec08ed6df6e540d2fcf.lean/declarations/filter-tendsto-enorm--96280ddd5c5a066ad5052ad1.md) | 157 | `result-track:96280ddd5c5a066ad5052ad12b871b02460693383507e1a4744511784776099b` |
| 23 | `theorem` | [Continuous.norm'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantdbbb22af660f09e361977e0bfea3d1bb9138544110c9eec08ed6df6e540d2fcf.lean/declarations/continuous-norm--99d88676c3cb0baf8e7586b0.md) | 167 | `result-track:99d88676c3cb0baf8e7586b08da61369a088414141c11884b4230754f7f169cd` |
| 24 | `theorem` | [Continuous.nnnorm'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantdbbb22af660f09e361977e0bfea3d1bb9138544110c9eec08ed6df6e540d2fcf.lean/declarations/continuous-nnnorm--141ea93866eafe26129dab3a.md) | 171 | `result-track:141ea93866eafe26129dab3a19e6c6303354333730e1fc8c632d5886dc9a0fbc` |
| 25 | `theorem` | [ContinuousAt.norm'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantdbbb22af660f09e361977e0bfea3d1bb9138544110c9eec08ed6df6e540d2fcf.lean/declarations/continuousat-norm--57af1012ccd8506657516c50.md) | 186 | `result-track:57af1012ccd8506657516c5081f8fb2ebf2e7dda3e5b87a72153250546ec3e2e` |
| 26 | `theorem` | [ContinuousAt.nnnorm'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantdbbb22af660f09e361977e0bfea3d1bb9138544110c9eec08ed6df6e540d2fcf.lean/declarations/continuousat-nnnorm--ee2324f0470134479850982a.md) | 190 | `result-track:ee2324f0470134479850982a4953536c359eac49ee9a347d7676a7f5d27bed45` |
| 27 | `theorem` | [ContinuousWithinAt.norm'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantdbbb22af660f09e361977e0bfea3d1bb9138544110c9eec08ed6df6e540d2fcf.lean/declarations/continuouswithinat-norm--cb04e400d2cac86eb4482b10.md) | 194 | `result-track:cb04e400d2cac86eb4482b10207b00364766ef0c3d7f0b356a7f5b8a3b5eeda6` |
| 28 | `theorem` | [ContinuousWithinAt.nnnorm'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantdbbb22af660f09e361977e0bfea3d1bb9138544110c9eec08ed6df6e540d2fcf.lean/declarations/continuouswithinat-nnnorm--d085c7e15266de0618e9bb23.md) | 199 | `result-track:d085c7e15266de0618e9bb23c731e2cf257e259a4ff146241189f2b3bd305ab6` |
| 29 | `theorem` | [ContinuousOn.norm'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantdbbb22af660f09e361977e0bfea3d1bb9138544110c9eec08ed6df6e540d2fcf.lean/declarations/continuouson-norm--72a15894cdc1f5e939ef536c.md) | 204 | `result-track:72a15894cdc1f5e939ef536c88898d870627b3b0c6bb31cc2a33c503841aed29` |
| 30 | `theorem` | [ContinuousOn.nnnorm'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantdbbb22af660f09e361977e0bfea3d1bb9138544110c9eec08ed6df6e540d2fcf.lean/declarations/continuouson-nnnorm--6a2d9ea4fed457e2b2b457ff.md) | 208 | `result-track:6a2d9ea4fed457e2b2b457ff0899ee670d23fabf37b0caa76f0caa856cf6825b` |
| 31 | `theorem` | [eventually_ne_of_tendsto_norm_atTop'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantdbbb22af660f09e361977e0bfea3d1bb9138544110c9eec08ed6df6e540d2fcf.lean/declarations/eventually-ne-of-tendsto-norm-attop--b7e4df9e8af70cd3283245a3.md) | 216 | `result-track:b7e4df9e8af70cd3283245a32ccd5948d1c429d478bd4daa0f9978890cf65902` |
| 32 | `theorem` | [SeminormedCommGroup.mem_closure_iff](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantdbbb22af660f09e361977e0bfea3d1bb9138544110c9eec08ed6df6e540d2fcf.lean/declarations/seminormedcommgroup-mem-closure-iff--886de70372456edf154c494e.md) | 221 | `result-track:886de70372456edf154c494e2732bd922e1c9cc38b7adfe1c5eea6cecdca1d05` |
| 33 | `theorem` | [SeminormedGroup.tendstoUniformlyOn_one](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantdbbb22af660f09e361977e0bfea3d1bb9138544110c9eec08ed6df6e540d2fcf.lean/declarations/seminormedgroup-tendstouniformlyon-one--ba18d3a8786ce4f1d1c3dbe1.md) | 226 | `result-track:ba18d3a8786ce4f1d1c3dbe1fc7d9aa3495c6960bd451062139130e34a22db1b` |
| 34 | `theorem` | [SeminormedGroup.uniformCauchySeqOnFilter_iff_tendstoUniformlyOnFilter_one](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantdbbb22af660f09e361977e0bfea3d1bb9138544110c9eec08ed6df6e540d2fcf.lean/declarations/seminormedgroup-uniformcauchyseqonfilter-iff-tendstouniformlyonfilter-on--6c6964455fa8f92ce495bef1.md) | 231 | `result-track:6c6964455fa8f92ce495bef122d4f2e9256c3f3f1cf5523137b4a505bc49b441` |
| 35 | `theorem` | [SeminormedGroup.uniformCauchySeqOn_iff_tendstoUniformlyOn_one](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantdbbb22af660f09e361977e0bfea3d1bb9138544110c9eec08ed6df6e540d2fcf.lean/declarations/seminormedgroup-uniformcauchyseqon-iff-tendstouniformlyon-one--0e93fc4908804928a62b24ee.md) | 248 | `result-track:0e93fc4908804928a62b24eef72937eef59d6f1fbfde9dcebfa2d7ae2655782f` |
| 36 | `theorem` | [controlled_prod_of_mem_closure](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantdbbb22af660f09e361977e0bfea3d1bb9138544110c9eec08ed6df6e540d2fcf.lean/declarations/controlled-prod-of-mem-closure--08570f2cb4f11a55be4da025.md) | 265 | `result-track:08570f2cb4f11a55be4da0252161dc254a8d1bfcfa566636e46ad0ee00c76471` |
| 37 | `theorem` | [controlled_prod_of_mem_closure_range](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantdbbb22af660f09e361977e0bfea3d1bb9138544110c9eec08ed6df6e540d2fcf.lean/declarations/controlled-prod-of-mem-closure-range--fa9319c510acec8e67f09550.md) | 296 | `result-track:fa9319c510acec8e67f09550981cdd456b413a5c4053ba4e28461865554e6321` |
| 38 | `lemma` | [tendsto_norm_nhdsNE_one](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantdbbb22af660f09e361977e0bfea3d1bb9138544110c9eec08ed6df6e540d2fcf.lean/declarations/tendsto-norm-nhdsne-one--98c674b120c3d4cd1be08de0.md) | 315 | `result-track:98c674b120c3d4cd1be08de0458cf1e0df2df6796ad7ba5c1aa3f396f2bfd8fd` |
| 39 | `theorem` | [tendsto_norm_div_self_nhdsNE](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantdbbb22af660f09e361977e0bfea3d1bb9138544110c9eec08ed6df6e540d2fcf.lean/declarations/tendsto-norm-div-self-nhdsne--7f64c1916f86523c22737b79.md) | 329 | `result-track:7f64c1916f86523c22737b792083ba3b7e849eecae0a18d2c89e45659408cddf` |
| 40 | `lemma` | [comap_norm_nhdsGT_zero'](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantdbbb22af660f09e361977e0bfea3d1bb9138544110c9eec08ed6df6e540d2fcf.lean/declarations/comap-norm-nhdsgt-zero--60e8d26e7541e4b64a1174f9.md) | 342 | `result-track:60e8d26e7541e4b64a1174f9531259355fc6845835e55721bfaa47ca52e21002` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
