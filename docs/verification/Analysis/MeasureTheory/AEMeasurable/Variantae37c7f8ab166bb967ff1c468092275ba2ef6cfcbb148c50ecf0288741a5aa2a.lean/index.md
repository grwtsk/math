# Verification target: GRWTSK.Analysis.MeasureTheory.AEMeasurable.Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e39971a3f1c650fbdda45f1c71d567b539774219",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e39971a3f1c650fbdda45f1c71d567b539774219`.

Source path: `GRWTSK/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.MeasureSpace` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Subsingleton.aemeasurable](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean/declarations/subsingleton-aemeasurable--e3fdba5905ed5b683c029ed3.md) | 27 | `result-track:e3fdba5905ed5b683c029ed37edda01840d1d2d8a5b547ae493ae0e9b97685a2` |
| 2 | `theorem` | [aemeasurable_of_subsingleton_codomain](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean/declarations/aemeasurable-of-subsingleton-codomain--bfbdabbbf43732affb37f423.md) | 32 | `result-track:bfbdabbbf43732affb37f423640bd057ae3c3a3cca3025c1a64cbd8d721ab1c8` |
| 3 | `theorem` | [aemeasurable_zero_measure](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean/declarations/aemeasurable-zero-measure--79f0f20c14d4ab4f7dbf9a8d.md) | 37 | `result-track:79f0f20c14d4ab4f7dbf9a8d66e3a669498d6eff9a9a09790efb5598062573e3` |
| 4 | `theorem` | [aemeasurable_id''](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean/declarations/aemeasurable-id--df40b4181668f66bad7d14f9.md) | 42 | `result-track:df40b4181668f66bad7d14f921ef76325749880d1f201130e28591cbe6e386d6` |
| 5 | `theorem` | [mono_measure](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean/declarations/mono-measure--f9121ad38933ecc7ead23f8b.md) | 49 | `result-track:f9121ad38933ecc7ead23f8b69aa5a6286050836bb70a7bba6ea11527a5b2c01` |
| 6 | `theorem` | [mono_set](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean/declarations/mono-set--7180df51623abf47d84ef0b6.md) | 53 | `result-track:7180df51623abf47d84ef0b65813a1c6f113e01eadd4a2f6a26d79178c3dbf19` |
| 7 | `theorem` | [mono'](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean/declarations/mono--34611a7d7a624916a29fb29b.md) | 58 | `result-track:34611a7d7a624916a29fb29b456e802365f0867f80d53a604e5d38477835c8b6` |
| 8 | `theorem` | [ae_mem_imp_eq_mk](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean/declarations/ae-mem-imp-eq-mk--60dd9047e1e0fa3a3c48e377.md) | 62 | `result-track:60dd9047e1e0fa3a3c48e3772d4a7431b1bb21c032bad954a0bd287afdc589d0` |
| 9 | `theorem` | [ae_inf_principal_eq_mk](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean/declarations/ae-inf-principal-eq-mk--f59eca99c4c8d66e92a02ed5.md) | 67 | `result-track:f59eca99c4c8d66e92a02ed53f2b34429ba6908a28a720bd9dec9d274571e4f4` |
| 10 | `theorem` | [sum_measure](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean/declarations/sum-measure--f092747595448b4521df8f27.md) | 72 | `result-track:f092747595448b4521df8f273e7b37505ee3ae9e2eea700cf56f080ed2d10b97` |
| 11 | `theorem` | [_root_.aemeasurable_sum_measure_iff](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean/declarations/root-aemeasurable-sum-measure-iff--a3fa40d09c38361028e021b0.md) | 115 | `result-track:a3fa40d09c38361028e021b0f48344fc9e227060e0c2a58315cd6fae169fcc52` |
| 12 | `theorem` | [_root_.aemeasurable_add_measure_iff](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean/declarations/root-aemeasurable-add-measure-iff--772eefa5ac33dec0ba428b77.md) | 121 | `result-track:772eefa5ac33dec0ba428b77aefdaf7917d30ff881e4ed0e237e94a7d5ceade5` |
| 13 | `theorem` | [add_measure](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean/declarations/add-measure--a54c7601f4d7b573e4dbbeda.md) | 128 | `result-track:a54c7601f4d7b573e4dbbedab9d3f1c655af8ea8eb102708623b29184e780483` |
| 14 | `theorem` | [iUnion](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean/declarations/iunion--d69c46017db0104cd3aa82ca.md) | 134 | `result-track:d69c46017db0104cd3aa82ca8c8cb1a3aa85a20ab75312e2dda92059af52477e` |
| 15 | `theorem` | [_root_.aemeasurable_iUnion_iff](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean/declarations/root-aemeasurable-iunion-iff--da5148e668426c98f78d290f.md) | 140 | `result-track:da5148e668426c98f78d290f9cf15233733d0f3c13f134bd2bb85a2784259d39` |
| 16 | `theorem` | [_root_.aemeasurable_union_iff](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean/declarations/root-aemeasurable-union-iff--0ea720d46a2cf8e78cbb065b.md) | 146 | `result-track:0ea720d46a2cf8e78cbb065b331a176b322fd5a19805856ac6aa817d2d05ef88` |
| 17 | `theorem` | [smul_measure](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean/declarations/smul-measure--03c42e2cc332201e51db07d8.md) | 153 | `result-track:03c42e2cc332201e51db07d8e0d2ab59b38784f9296a7a71ede8e4f7add2ec9e` |
| 18 | `theorem` | [comp_aemeasurable](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean/declarations/comp-aemeasurable--295170cce2fc07657b70bc9e.md) | 158 | `result-track:295170cce2fc07657b70bc9e35ba54c92dbbe57792cce245b135ebdfe76eec2a` |
| 19 | `theorem` | [comp_measurable](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean/declarations/comp-measurable--e8f400e00090ec0ba0097f85.md) | 164 | `result-track:e8f400e00090ec0ba0097f857a14cc56b3c77740be87f046f3d0784dc62e668c` |
| 20 | `theorem` | [comp_quasiMeasurePreserving](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean/declarations/comp-quasimeasurepreserving--f88fb346e844c2f2711f2fc4.md) | 169 | `result-track:f88fb346e844c2f2711f2fc412dfc8b7778dea56bf0add4759809106ac398866` |
| 21 | `theorem` | [map_map_of_aemeasurable](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean/declarations/map-map-of-aemeasurable--2f4bc392d2706b361294a001.md) | 174 | `result-track:2f4bc392d2706b361294a001338515b832dc52951f63423d9c28b207ec4e0575` |
| 22 | `theorem` | [prod_mk](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean/declarations/prod-mk--8b2cdcc1cca5b0ba39f859de.md) | 190 | `result-track:8b2cdcc1cca5b0ba39f859dee3c63a25895d77bc561268a58b09c9c3b9e0b720` |
| 23 | `theorem` | [exists_ae_eq_range_subset](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean/declarations/exists-ae-eq-range-subset--97f37e062c4b71b2814da3b8.md) | 196 | `result-track:97f37e062c4b71b2814da3b886a9e753c16bf1eb42cfa43351ffe8130851c087` |
| 24 | `theorem` | [exists_measurable_nonneg](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean/declarations/exists-measurable-nonneg--ee0e9458cfbeceb8296ea2f1.md) | 221 | `result-track:ee0e9458cfbeceb8296ea2f187008a15f78c7ab04e8a5b70602311a8bae7c2d6` |
| 25 | `theorem` | [subtype_mk](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean/declarations/subtype-mk--c9d413dc04798c1bf4e3afb2.md) | 227 | `result-track:c9d413dc04798c1bf4e3afb27867cbf83cb16267250f3be71d1a7b74e80e6dc2` |
| 26 | `theorem` | [nullMeasurable](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean/declarations/nullmeasurable--b9307e6b032168c179280396.md) | 237 | `result-track:b9307e6b032168c1792803963a7361df3c82e17ce3f6948eb69a01f27c218f52` |
| 27 | `theorem` | [aemeasurable_const'](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean/declarations/aemeasurable-const--5dcc0c96716f02e4f536a292.md) | 244 | `result-track:5dcc0c96716f02e4f536a2921ca4c92a5c9b8e0970605ecf08153cb319ab9275` |
| 28 | `theorem` | [aemeasurable_uIoc_iff](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean/declarations/aemeasurable-uioc-iff--ecfdb0a7fe4856271ffd084d.md) | 252 | `result-track:ecfdb0a7fe4856271ffd084dde6ad926069fa1bbcd56943e1c9511ee72833ee9` |
| 29 | `theorem` | [aemeasurable_iff_measurable](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean/declarations/aemeasurable-iff-measurable--c37fb73b6bda57cafe11d55b.md) | 258 | `result-track:c37fb73b6bda57cafe11d55bfec58f2cedfd64a31c6bc155361f60ba81d19c72` |
| 30 | `theorem` | [MeasurableEmbedding.aemeasurable_map_iff](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean/declarations/measurableembedding-aemeasurable-map-iff--99002484272346bf5f0fa5f3.md) | 262 | `result-track:99002484272346bf5f0fa5f3a3cc44d7411e6309f6211f78b05191a210e513bd` |
| 31 | `theorem` | [MeasurableEmbedding.aemeasurable_comp_iff](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean/declarations/measurableembedding-aemeasurable-comp-iff--9ef4ec95e3d699632321c0b7.md) | 270 | `result-track:9ef4ec95e3d699632321c0b74ecb9516c7a4a6ff0eeefbffc9e580030b50d59b` |
| 32 | `theorem` | [aemeasurable_restrict_iff_comap_subtype](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean/declarations/aemeasurable-restrict-iff-comap-subtype--1beda7689da7517bfb298b0f.md) | 278 | `result-track:1beda7689da7517bfb298b0ff0cc8bd07bfd6a90c978f2a4072542c53bc6da2e` |
| 33 | `theorem` | [aemeasurable_one](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean/declarations/aemeasurable-one--bdc21ab8cff740ab618c00b6.md) | 284 | `result-track:bdc21ab8cff740ab618c00b62680421c6c860f2c9f423fce9ac8dc6963b7c77f` |
| 34 | `theorem` | [aemeasurable_smul_measure_iff](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean/declarations/aemeasurable-smul-measure-iff--e893bad08812d8a1263ad636.md) | 290 | `result-track:e893bad08812d8a1263ad636942954baf0e9ba76efc2357a1988e554f0307e06` |
| 35 | `theorem` | [aemeasurable_of_aemeasurable_trim](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean/declarations/aemeasurable-of-aemeasurable-trim--f25f9327b2f8dbf53d5d1d49.md) | 296 | `result-track:f25f9327b2f8dbf53d5d1d4960cb3faf6803802c4340f4bfaf00f8a7553f42e1` |
| 36 | `theorem` | [aemeasurable_restrict_of_measurable_subtype](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean/declarations/aemeasurable-restrict-of-measurable-subtype--9be02d3c1a2bb8d77ed910b3.md) | 301 | `result-track:9be02d3c1a2bb8d77ed910b3f61c5f3dd212bc1a7fb6b7b7e1f2792e47a2081d` |
| 37 | `theorem` | [aemeasurable_map_equiv_iff](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean/declarations/aemeasurable-map-equiv-iff--535dcc9cfd034dbb6e00591c.md) | 306 | `result-track:535dcc9cfd034dbb6e00591c9fd069eac6b237ce7c1c3d76fa7ca9b42a547aab` |
| 38 | `theorem` | [AEMeasurable.restrict](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean/declarations/aemeasurable-restrict--1a4d4426a7f6873951824975.md) | 313 | `result-track:1a4d4426a7f6873951824975ffa7d78d2b03c828774695b0b9d01a703492881d` |
| 39 | `theorem` | [aemeasurable_Ioi_of_forall_Ioc](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean/declarations/aemeasurable-ioi-of-forall-ioc--aa11c8dbc95f4ee7871e29a6.md) | 317 | `result-track:aa11c8dbc95f4ee7871e29a6783cd73435e7754a11e41b22349d838ce3492e41` |
| 40 | `theorem` | [aemeasurable_indicator_iff](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean/declarations/aemeasurable-indicator-iff--29075af5ffc3b545a3f7ef21.md) | 336 | `result-track:29075af5ffc3b545a3f7ef21c614ae0a1c03d9e1904486ef21a654f226928e56` |
| 41 | `theorem` | [aemeasurable_indicator_iff₀](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean/declarations/aemeasurable-indicator-iff--127f4dacaea998deedd9bed4.md) | 350 | `result-track:127f4dacaea998deedd9bed4bb32231caaf0f246950b7134d0efc22963c6c960` |
| 42 | `lemma` | [aemeasurable_indicator_const_iff](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean/declarations/aemeasurable-indicator-const-iff--36fef41cb07ea131128b371e.md) | 358 | `result-track:36fef41cb07ea131128b371e45fb926e89b1ef3b3f108f68f46d1119872fccc2` |
| 43 | `theorem` | [AEMeasurable.indicator](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean/declarations/aemeasurable-indicator--31b52e60fa5d17838da8d550.md) | 367 | `result-track:31b52e60fa5d17838da8d55056faf6c6a94f251292eefea7790299c14fe079a4` |
| 44 | `theorem` | [AEMeasurable.indicator₀](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean/declarations/aemeasurable-indicator--0cdb88a7ce499fad10d1c508.md) | 372 | `result-track:0cdb88a7ce499fad10d1c50840c6129ec5df692381ed7dc180ac1e0e63f06807` |
| 45 | `theorem` | [MeasureTheory.Measure.restrict_map_of_aemeasurable](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean/declarations/measuretheory-measure-restrict-map-of-aemeasurable--2c290803b5617c41b947d6c4.md) | 376 | `result-track:2c290803b5617c41b947d6c4ff4769a6a0098b9c1323001c5c807a231cc76965` |
| 46 | `theorem` | [MeasureTheory.Measure.map_mono_of_aemeasurable](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean/declarations/measuretheory-measure-map-mono-of-aemeasurable--9b9ee64d9d2b504b6372fe40.md) | 393 | `result-track:9b9ee64d9d2b504b6372fe4060e2607462c59b86d4447b69248553ae53297764` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
