# Verification target: GRWTSK.Analysis.MeasureTheory.AEMeasurable.Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1bd9078966ea26ed7d4b73384be91920ac758312",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1bd9078966ea26ed7d4b73384be91920ac758312`.

Source path: `GRWTSK/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.MeasureSpace` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Subsingleton.aemeasurable](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean/declarations/subsingleton-aemeasurable--6906216cb24ba0bd3d7311ef.md) | 35 | `result-track:6906216cb24ba0bd3d7311efbd30431319054f0722e14aeace31b6fb4457af12` |
| 2 | `theorem` | [aemeasurable_of_subsingleton_codomain](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean/declarations/aemeasurable-of-subsingleton-codomain--522b40188b872743563632e9.md) | 40 | `result-track:522b40188b872743563632e934d98e7a4c7d60e387435dd4e929e14c47ff92b0` |
| 3 | `theorem` | [aemeasurable_zero_measure](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean/declarations/aemeasurable-zero-measure--d3296e7404a4304c912a5e67.md) | 45 | `result-track:d3296e7404a4304c912a5e67607f519e7da4488a6f92bd711c3a7b5167f8f8ff` |
| 4 | `theorem` | [aemeasurable_id''](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean/declarations/aemeasurable-id--514d404570647343a1f5d23e.md) | 50 | `result-track:514d404570647343a1f5d23edb02d8b758a9b64b514e149eda2107c47f63ba20` |
| 5 | `theorem` | [mono_measure](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean/declarations/mono-measure--b6e20da39f6e835498a7c0ed.md) | 57 | `result-track:b6e20da39f6e835498a7c0edf35548f174094637fa32eaf856b449affc1e5958` |
| 6 | `theorem` | [mono_set](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean/declarations/mono-set--7aed8f3fe2f5ceab914b32b6.md) | 61 | `result-track:7aed8f3fe2f5ceab914b32b67f3eeeafd7a86bce67f1a9e8c83aef9aca456bb8` |
| 7 | `theorem` | [mono'](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean/declarations/mono--0441401437a16fe2b171b457.md) | 66 | `result-track:0441401437a16fe2b171b4570768c9eaa4f2f17a4880a5cc007806abb6ea2624` |
| 8 | `theorem` | [ae_mem_imp_eq_mk](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean/declarations/ae-mem-imp-eq-mk--5b42058f7daa095d95adf2d4.md) | 70 | `result-track:5b42058f7daa095d95adf2d428536250a35ff6ef65591e558a5100728950b20d` |
| 9 | `theorem` | [ae_inf_principal_eq_mk](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean/declarations/ae-inf-principal-eq-mk--d66763b399f7f3071f6817a4.md) | 75 | `result-track:d66763b399f7f3071f6817a4bbf0ffc9912dc907fde9cff57318e66493d753fe` |
| 10 | `theorem` | [sum_measure](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean/declarations/sum-measure--41e5d7034428cd67e73038ac.md) | 80 | `result-track:41e5d7034428cd67e73038ac622061f6c002207b33f5a887e979c71343172be8` |
| 11 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.SubsingletonAemeasurable.Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.aemeasurable_sum_measure_iff](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean/declarations/root-grwtsk-analysis-measuretheory-subsingletonaemeasurable-variantae37c--4efc688042d177e9b4c5d12b.md) | 123 | `result-track:4efc688042d177e9b4c5d12bc1abb33d30b62512b2f3474e4d85f24663151966` |
| 12 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.SubsingletonAemeasurable.Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.aemeasurable_add_measure_iff](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean/declarations/root-grwtsk-analysis-measuretheory-subsingletonaemeasurable-variantae37c--22e1073026c573a2b712b085.md) | 129 | `result-track:22e1073026c573a2b712b085c203226b7d960ca85b681cc57f4340ba9c82ad50` |
| 13 | `theorem` | [add_measure](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean/declarations/add-measure--71d438d43e3060d8d4d89e07.md) | 136 | `result-track:71d438d43e3060d8d4d89e074dd0e9d80800106b281642122ce8f4b9af8d2511` |
| 14 | `theorem` | [iUnion](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean/declarations/iunion--c477d5de54129c8c3cae6567.md) | 142 | `result-track:c477d5de54129c8c3cae656776946ff94a40c2ac6482464ba1ee30c3f855be6b` |
| 15 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.SubsingletonAemeasurable.Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.aemeasurable_iUnion_iff](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean/declarations/root-grwtsk-analysis-measuretheory-subsingletonaemeasurable-variantae37c--14d48aad7bba705f7d1a6016.md) | 148 | `result-track:14d48aad7bba705f7d1a6016766c8fb36b5df74e1b751736dd9d87ae21bbc179` |
| 16 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.SubsingletonAemeasurable.Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.aemeasurable_union_iff](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean/declarations/root-grwtsk-analysis-measuretheory-subsingletonaemeasurable-variantae37c--6c49dde63cd580302c9ac84e.md) | 154 | `result-track:6c49dde63cd580302c9ac84e75ba097d0919c68a439c07b38fdc2eff36f317b4` |
| 17 | `theorem` | [smul_measure](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean/declarations/smul-measure--a0cbb15b801b1961bf4737ae.md) | 161 | `result-track:a0cbb15b801b1961bf4737ae9f410e84348f507ace96b5a9205241c6fe458e4e` |
| 18 | `theorem` | [comp_aemeasurable](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean/declarations/comp-aemeasurable--9c3ae2d26012afc846277e6b.md) | 166 | `result-track:9c3ae2d26012afc846277e6b5b0779341b7b7137937490b446a2b0d284dcc9b4` |
| 19 | `theorem` | [comp_measurable](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean/declarations/comp-measurable--b935730919535fcccb03b58f.md) | 172 | `result-track:b935730919535fcccb03b58fdf68bc575e4b002c76898fb526e55ae5c28c9dfd` |
| 20 | `theorem` | [comp_quasiMeasurePreserving](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean/declarations/comp-quasimeasurepreserving--2b7b1d259e8f7f7e5f1a9b43.md) | 177 | `result-track:2b7b1d259e8f7f7e5f1a9b43967db03e45a3820aa50997a704898ada18e34482` |
| 21 | `theorem` | [map_map_of_aemeasurable](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean/declarations/map-map-of-aemeasurable--cc895c48e6c4790238159bd5.md) | 182 | `result-track:cc895c48e6c4790238159bd5ea2f0ac206cfaf4d0f760e5c0b5822ec4d7ca108` |
| 22 | `theorem` | [prod_mk](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean/declarations/prod-mk--55b619b0c6df345d70dc7986.md) | 198 | `result-track:55b619b0c6df345d70dc7986b23f45e04856f8d59e16da70889be99d2e44d2c3` |
| 23 | `theorem` | [exists_ae_eq_range_subset](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean/declarations/exists-ae-eq-range-subset--e204fa7106cddaae1fc6271e.md) | 204 | `result-track:e204fa7106cddaae1fc6271e3482cd825faebe359e189422e42115eb4baa525f` |
| 24 | `theorem` | [exists_measurable_nonneg](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean/declarations/exists-measurable-nonneg--66b1c8abdb8950dc9532725d.md) | 229 | `result-track:66b1c8abdb8950dc9532725d7dd53a37a28714bf6a15ec50bae8e9b591b6792d` |
| 25 | `theorem` | [subtype_mk](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean/declarations/subtype-mk--9b7fcb2baf28a13e1295e5ec.md) | 235 | `result-track:9b7fcb2baf28a13e1295e5ecc1404c4b83cd30fd37e632500d86b5030149d7b2` |
| 26 | `theorem` | [nullMeasurable](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean/declarations/nullmeasurable--9330abd6006f9a2d65801490.md) | 245 | `result-track:9330abd6006f9a2d658014905fcdd9cd21b605342650a3640144c587eba27659` |
| 27 | `theorem` | [aemeasurable_const'](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean/declarations/aemeasurable-const--4739437b40c07ac442bb6ed7.md) | 252 | `result-track:4739437b40c07ac442bb6ed7220f433b1fbad955d9404a8743f2a2842ac2e387` |
| 28 | `theorem` | [aemeasurable_uIoc_iff](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean/declarations/aemeasurable-uioc-iff--8a6457f109406a8026ee09d4.md) | 260 | `result-track:8a6457f109406a8026ee09d4069c482e526eb42bb44c1eab8966ebf0525a80ff` |
| 29 | `theorem` | [aemeasurable_iff_measurable](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean/declarations/aemeasurable-iff-measurable--ddf1cd0433ed041578fb2b9b.md) | 266 | `result-track:ddf1cd0433ed041578fb2b9bc971c862804792ef330381259d87cc3c86c4165a` |
| 30 | `theorem` | [MeasurableEmbedding.aemeasurable_map_iff](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean/declarations/measurableembedding-aemeasurable-map-iff--0af673eb59888148c198d1c0.md) | 270 | `result-track:0af673eb59888148c198d1c02c2542408e8c8cf52e415e92d8c78fbb5a42e54e` |
| 31 | `theorem` | [MeasurableEmbedding.aemeasurable_comp_iff](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean/declarations/measurableembedding-aemeasurable-comp-iff--7adc33e4993c4fd61673eb7b.md) | 278 | `result-track:7adc33e4993c4fd61673eb7b81a9727092b91dc95a2654ef24592073ad52413c` |
| 32 | `theorem` | [aemeasurable_restrict_iff_comap_subtype](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean/declarations/aemeasurable-restrict-iff-comap-subtype--7333893e78bca5c1af174a9d.md) | 286 | `result-track:7333893e78bca5c1af174a9d01d41db624c2b2381141b5226c33a41a29a3c649` |
| 33 | `theorem` | [aemeasurable_one](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean/declarations/aemeasurable-one--0745ab426be38d69efda5f3d.md) | 292 | `result-track:0745ab426be38d69efda5f3d97726ea30f451ec68c7086629465b979b84d200a` |
| 34 | `theorem` | [aemeasurable_smul_measure_iff](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean/declarations/aemeasurable-smul-measure-iff--fb82a38ae1e7cbb63f3dffa8.md) | 298 | `result-track:fb82a38ae1e7cbb63f3dffa81d19824a8cf8cb955b395fc5b12d5786573642b7` |
| 35 | `theorem` | [aemeasurable_of_aemeasurable_trim](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean/declarations/aemeasurable-of-aemeasurable-trim--865194416804b4a24227db77.md) | 304 | `result-track:865194416804b4a24227db7742aaa49a23bdec5bd12029b5483634c8df8b1ce0` |
| 36 | `theorem` | [aemeasurable_restrict_of_measurable_subtype](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean/declarations/aemeasurable-restrict-of-measurable-subtype--ec959cb48034786f3966ca46.md) | 309 | `result-track:ec959cb48034786f3966ca46d8090ac6e315ab6bd21ba4a77886feb1ed1bf5ad` |
| 37 | `theorem` | [aemeasurable_map_equiv_iff](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean/declarations/aemeasurable-map-equiv-iff--e8e7751d3fcac83fbc3ebd9e.md) | 314 | `result-track:e8e7751d3fcac83fbc3ebd9e5883acf6d71b71ea53d307051814acdda0f1a75a` |
| 38 | `theorem` | [AEMeasurable.restrict](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean/declarations/aemeasurable-restrict--98e9379468701091f12ef341.md) | 321 | `result-track:98e9379468701091f12ef341fd6c35d543e26924ba8016360c2892113800444d` |
| 39 | `theorem` | [aemeasurable_Ioi_of_forall_Ioc](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean/declarations/aemeasurable-ioi-of-forall-ioc--09c98357437e8d8671173442.md) | 325 | `result-track:09c98357437e8d8671173442041e1b29e4b0228cfad8dcf799d85ccdd51d4950` |
| 40 | `theorem` | [aemeasurable_indicator_iff](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean/declarations/aemeasurable-indicator-iff--29009380873887dea3a8c5b6.md) | 344 | `result-track:29009380873887dea3a8c5b6b6624e450e61458b2dd89eef386b6c3287698396` |
| 41 | `theorem` | [aemeasurable_indicator_iff₀](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean/declarations/aemeasurable-indicator-iff--7743f0d463b58184ddbc851f.md) | 358 | `result-track:7743f0d463b58184ddbc851fc17ad922aa47ee4ab59ccae1774642054c8cf35c` |
| 42 | `lemma` | [aemeasurable_indicator_const_iff](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean/declarations/aemeasurable-indicator-const-iff--b1a9f931001263f6c4a1bb7a.md) | 366 | `result-track:b1a9f931001263f6c4a1bb7a3fba5cc6788b47a7f4b0c5cac3fdd3aa2cc48a51` |
| 43 | `theorem` | [AEMeasurable.indicator](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean/declarations/aemeasurable-indicator--1a6bcad996fb8f5033ba1847.md) | 375 | `result-track:1a6bcad996fb8f5033ba184788656f4a813bc8bde3d7363cf610558153a9fae8` |
| 44 | `theorem` | [AEMeasurable.indicator₀](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean/declarations/aemeasurable-indicator--c2043378f8ef3176b682f2b0.md) | 380 | `result-track:c2043378f8ef3176b682f2b0dcc25ff15f269e8f31b3abd583161dddc40cbcc1` |
| 45 | `theorem` | [MeasureTheory.Measure.restrict_map_of_aemeasurable](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean/declarations/measuretheory-measure-restrict-map-of-aemeasurable--8941e549f291b3053aa05d1e.md) | 384 | `result-track:8941e549f291b3053aa05d1e8d35982007cca983f3dbc166ab46a700bcb97066` |
| 46 | `theorem` | [MeasureTheory.Measure.map_mono_of_aemeasurable](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean/declarations/measuretheory-measure-map-mono-of-aemeasurable--7ae61716d5ab7fe539a073b2.md) | 401 | `result-track:7ae61716d5ab7fe539a073b2088363a376afda621f71fcb86168915a700f26a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
