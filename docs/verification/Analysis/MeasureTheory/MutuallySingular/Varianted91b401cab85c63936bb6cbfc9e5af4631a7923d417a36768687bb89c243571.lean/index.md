# Verification target: GRWTSK.Analysis.MeasureTheory.MutuallySingular.Varianted91b401cab85c63936bb6cbfc9e5af4631a7923d417a36768687bb89c243571

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce5600af900cdda08a12be81586fd4f40770fd80",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/MutuallySingular/Varianted91b401cab85c63936bb6cbfc9e5af4631a7923d417a36768687bb89c243571.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Varianted91b401cab85c63936bb6cbfc9e5af4631a7923d417a36768687bb89c243571.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Varianted91b401cab85c63936bb6cbfc9e5af4631a7923d417a36768687bb89c243571.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce5600af900cdda08a12be81586fd4f40770fd80`.

Source path: `GRWTSK/Analysis/MeasureTheory/MutuallySingular/Varianted91b401cab85c63936bb6cbfc9e5af4631a7923d417a36768687bb89c243571.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/MutuallySingular/Varianted91b401cab85c63936bb6cbfc9e5af4631a7923d417a36768687bb89c243571.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MutuallySingular](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Varianted91b401cab85c63936bb6cbfc9e5af4631a7923d417a36768687bb89c243571.lean/declarations/mutuallysingular--8e05bb9342858a703ae01580.md) | 41 | `declaration-track:8e05bb9342858a703ae01580cd734a193c9f8d3231270730f758dd9e0684bb0d` |
| 2 | `theorem` | [mk](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Varianted91b401cab85c63936bb6cbfc9e5af4631a7923d417a36768687bb89c243571.lean/declarations/mk--c6059e687bd9ad8879e7cdd0.md) | 49 | `result-track:c6059e687bd9ad8879e7cdd024f6b3fbee7a5200fcccb5375dace84b9f3bb3f7` |
| 3 | `def` | [nullSet](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Varianted91b401cab85c63936bb6cbfc9e5af4631a7923d417a36768687bb89c243571.lean/declarations/nullset--f39ecf8fd74c4e2184e29ede.md) | 58 | `declaration-track:f39ecf8fd74c4e2184e29ede789561c5927a74b09b9e80153b53a59e78cb4a02` |
| 4 | `lemma` | [measurableSet_nullSet](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Varianted91b401cab85c63936bb6cbfc9e5af4631a7923d417a36768687bb89c243571.lean/declarations/measurableset-nullset--2d8a286765ef9d2542d9d485.md) | 60 | `result-track:2d8a286765ef9d2542d9d4850bcc170141de7c1049e57a7b4dd6fa32dba49c90` |
| 5 | `lemma` | [measure_nullSet](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Varianted91b401cab85c63936bb6cbfc9e5af4631a7923d417a36768687bb89c243571.lean/declarations/measure-nullset--c2ee7c18507a9ad236378e08.md) | 63 | `result-track:c2ee7c18507a9ad236378e08af027560bf159222bf45138929d874fd1e219f4e` |
| 6 | `lemma` | [measure_compl_nullSet](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Varianted91b401cab85c63936bb6cbfc9e5af4631a7923d417a36768687bb89c243571.lean/declarations/measure-compl-nullset--edec45ca8e26438d3575c1d7.md) | 66 | `result-track:edec45ca8e26438d3575c1d7b33c9f6a19444e768ea58b25b6be56a725826491` |
| 7 | `lemma` | [restrict_nullSet](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Varianted91b401cab85c63936bb6cbfc9e5af4631a7923d417a36768687bb89c243571.lean/declarations/restrict-nullset--c8a39a0ffe41c67b5288a6fc.md) | 71 | `result-track:c8a39a0ffe41c67b5288a6fcec41e69fd9b634becc1af0e355aa782de7769d73` |
| 8 | `lemma` | [restrict_compl_nullSet](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Varianted91b401cab85c63936bb6cbfc9e5af4631a7923d417a36768687bb89c243571.lean/declarations/restrict-compl-nullset--06558b18ce81f5800632e96d.md) | 76 | `result-track:06558b18ce81f5800632e96d4e2c8da086eaea684332c96b3a8b8ac831f2eee4` |
| 9 | `theorem` | [zero_right](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Varianted91b401cab85c63936bb6cbfc9e5af4631a7923d417a36768687bb89c243571.lean/declarations/zero-right--6b195b7072775f49ca83b939.md) | 79 | `result-track:6b195b7072775f49ca83b93984b337b0b52a4c9f79bfa2f0b88cd85b57acd42a` |
| 10 | `theorem` | [symm](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Varianted91b401cab85c63936bb6cbfc9e5af4631a7923d417a36768687bb89c243571.lean/declarations/symm--9e471053789bbbdcfdb4c5b7.md) | 83 | `result-track:9e471053789bbbdcfdb4c5b71ca60c00e79f7d2b05df4ae375f77fd536172678` |
| 11 | `theorem` | [comm](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Varianted91b401cab85c63936bb6cbfc9e5af4631a7923d417a36768687bb89c243571.lean/declarations/comm--89ff7c3ee5657120a39d2b33.md) | 87 | `result-track:89ff7c3ee5657120a39d2b33642b94dd59f146ea4a03fc9103950d4f0c42f0cb` |
| 12 | `theorem` | [zero_left](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Varianted91b401cab85c63936bb6cbfc9e5af4631a7923d417a36768687bb89c243571.lean/declarations/zero-left--2157972fb9dd0f01195baf52.md) | 91 | `result-track:2157972fb9dd0f01195baf520e96ebd691012f7209a2c6aae38affc6ef84b5a3` |
| 13 | `theorem` | [mono_ac](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Varianted91b401cab85c63936bb6cbfc9e5af4631a7923d417a36768687bb89c243571.lean/declarations/mono-ac--64606ec73f6373059c9f47a5.md) | 94 | `result-track:64606ec73f6373059c9f47a5e5a1e83af47adb8fb0cf5d6ad8701230b28138af` |
| 14 | `lemma` | [congr_ac](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Varianted91b401cab85c63936bb6cbfc9e5af4631a7923d417a36768687bb89c243571.lean/declarations/congr-ac--a2704656848588a415f20c1f.md) | 98 | `result-track:a2704656848588a415f20c1f89bcd556aa54be814137d59a54f0351c0132918d` |
| 15 | `theorem` | [mono](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Varianted91b401cab85c63936bb6cbfc9e5af4631a7923d417a36768687bb89c243571.lean/declarations/mono--f89dd0b8bc144c5e48314e5f.md) | 102 | `result-track:f89dd0b8bc144c5e48314e5f197d02437209bb6fdee12534e3a395193e58c32d` |
| 16 | `lemma` | [self_iff](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Varianted91b401cab85c63936bb6cbfc9e5af4631a7923d417a36768687bb89c243571.lean/declarations/self-iff--bf495d824057a61b13c4dae9.md) | 106 | `result-track:bf495d824057a61b13c4dae9943c3443c5812bc184c16aff8d1736b70dde7f09` |
| 17 | `theorem` | [sum_left](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Varianted91b401cab85c63936bb6cbfc9e5af4631a7923d417a36768687bb89c243571.lean/declarations/sum-left--e18b490ed1dbbae07a0d4b08.md) | 114 | `result-track:e18b490ed1dbbae07a0d4b084a0575739aba6477da6e2e34803ca2ff51f1258f` |
| 18 | `theorem` | [sum_right](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Varianted91b401cab85c63936bb6cbfc9e5af4631a7923d417a36768687bb89c243571.lean/declarations/sum-right--b3e636a9a0f75644032e47d9.md) | 123 | `result-track:b3e636a9a0f75644032e47d9366cd73046e03b0b725e8b7519055d7ac875478b` |
| 19 | `theorem` | [add_left_iff](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Varianted91b401cab85c63936bb6cbfc9e5af4631a7923d417a36768687bb89c243571.lean/declarations/add-left-iff--7e9760268b13b616becbe091.md) | 127 | `result-track:7e9760268b13b616becbe09168a0dbc6b084d07dc7cd4b127bcb8ffd18de3a0e` |
| 20 | `theorem` | [add_right_iff](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Varianted91b401cab85c63936bb6cbfc9e5af4631a7923d417a36768687bb89c243571.lean/declarations/add-right-iff--f3ba94bee4d5a6d20abba5c4.md) | 131 | `result-track:f3ba94bee4d5a6d20abba5c4eb948fa4422cb4f06f5de34c1dd1678f06880812` |
| 21 | `theorem` | [add_left](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Varianted91b401cab85c63936bb6cbfc9e5af4631a7923d417a36768687bb89c243571.lean/declarations/add-left--ab5798b7f0de65678d5b5da0.md) | 134 | `result-track:ab5798b7f0de65678d5b5da09a37df588677209e749b052f597a5bded7fad353` |
| 22 | `theorem` | [add_right](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Varianted91b401cab85c63936bb6cbfc9e5af4631a7923d417a36768687bb89c243571.lean/declarations/add-right--95b3a635a8864568352076f6.md) | 137 | `result-track:95b3a635a8864568352076f62a3392c629f9deae40ee4eac9d462b0899db8bef` |
| 23 | `theorem` | [smul](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Varianted91b401cab85c63936bb6cbfc9e5af4631a7923d417a36768687bb89c243571.lean/declarations/smul--4177cad73991f2df0390daf2.md) | 140 | `result-track:4177cad73991f2df0390daf227543db9a04821957cef8a0c461e7a99a9da51f8` |
| 24 | `theorem` | [smul_nnreal](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Varianted91b401cab85c63936bb6cbfc9e5af4631a7923d417a36768687bb89c243571.lean/declarations/smul-nnreal--fe545407ef264b26d223510d.md) | 143 | `result-track:fe545407ef264b26d223510dbb2cfb503c54dba3b180d2576c3ba539ac585e0e` |
| 25 | `lemma` | [restrict](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Varianted91b401cab85c63936bb6cbfc9e5af4631a7923d417a36768687bb89c243571.lean/declarations/restrict--88cc21e00240f3eba03503f8.md) | 146 | `result-track:88cc21e00240f3eba03503f83b7939b8915e7254261598ed788725073220c323` |
| 26 | `lemma` | [eq_zero_of_absolutelyContinuous_of_mutuallySingular](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Varianted91b401cab85c63936bb6cbfc9e5af4631a7923d417a36768687bb89c243571.lean/declarations/eq-zero-of-absolutelycontinuous-of-mutuallysingular--885ece4116959b96d3ed3ceb.md) | 153 | `result-track:885ece4116959b96d3ed3ceb3fd60b46807221fec87b32a1139f4e5e9eb46efd` |
| 27 | `lemma` | [absolutelyContinuous_of_add_of_mutuallySingular](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Varianted91b401cab85c63936bb6cbfc9e5af4631a7923d417a36768687bb89c243571.lean/declarations/absolutelycontinuous-of-add-of-mutuallysingular--0e5659bf9be90233bbabd63a.md) | 159 | `result-track:0e5659bf9be90233bbabd63a9a0e4c2324643d3b69083262647b8d4e126f971a` |
| 28 | `lemma` | [_root_.MeasurableEmbedding.mutuallySingular_map](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Varianted91b401cab85c63936bb6cbfc9e5af4631a7923d417a36768687bb89c243571.lean/declarations/root-measurableembedding-mutuallysingular-map--6ace22316d810862694e650f.md) | 176 | `result-track:6ace22316d810862694e650f0a588e20fb09df7f92e74759f1a095fcd7a0b265` |
| 29 | `lemma` | [exists_null_set_measure_lt_of_disjoint](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Varianted91b401cab85c63936bb6cbfc9e5af4631a7923d417a36768687bb89c243571.lean/declarations/exists-null-set-measure-lt-of-disjoint--8c10cf062442c2dd3e02a603.md) | 183 | `result-track:8c10cf062442c2dd3e02a60398cbe12a137653ffa6e39fda4bf1f0b6ef9e3443` |
| 30 | `lemma` | [mutuallySingular_of_disjoint](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Varianted91b401cab85c63936bb6cbfc9e5af4631a7923d417a36768687bb89c243571.lean/declarations/mutuallysingular-of-disjoint--2063fa5dd44e4917dee98329.md) | 206 | `result-track:2063fa5dd44e4917dee983295179bfba02b2ddc82a1111d36124f3b22c5f4285` |
| 31 | `lemma` | [MutuallySingular.disjoint](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Varianted91b401cab85c63936bb6cbfc9e5af4631a7923d417a36768687bb89c243571.lean/declarations/mutuallysingular-disjoint--15a76beb6048503c4e0d7cc1.md) | 224 | `result-track:15a76beb6048503c4e0d7cc1f7f0bc475b7e6f0799613c887bdb698099192cef` |
| 32 | `lemma` | [MutuallySingular.disjoint_ae](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Varianted91b401cab85c63936bb6cbfc9e5af4631a7923d417a36768687bb89c243571.lean/declarations/mutuallysingular-disjoint-ae--a1dfe4da39efedeb167e0b72.md) | 238 | `result-track:a1dfe4da39efedeb167e0b7245f68f91d91e05c12ccef296cd795f0d94897f85` |
| 33 | `lemma` | [disjoint_of_disjoint_ae](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Varianted91b401cab85c63936bb6cbfc9e5af4631a7923d417a36768687bb89c243571.lean/declarations/disjoint-of-disjoint-ae--5b96d317c0a3247bbf6e5bc3.md) | 249 | `result-track:5b96d317c0a3247bbf6e5bc3e17c8424261831aee74dd6eab217f512718719ba` |
| 34 | `lemma` | [mutuallySingular_tfae](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Varianted91b401cab85c63936bb6cbfc9e5af4631a7923d417a36768687bb89c243571.lean/declarations/mutuallysingular-tfae--9b606278cbd26bb8c2f5d505.md) | 260 | `result-track:9b606278cbd26bb8c2f5d50595559233cf22b145b41f88f0c6800011ef4f3ff0` |
| 35 | `lemma` | [mutuallySingular_iff_disjoint](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Varianted91b401cab85c63936bb6cbfc9e5af4631a7923d417a36768687bb89c243571.lean/declarations/mutuallysingular-iff-disjoint--edb90909745330a68a97e056.md) | 274 | `result-track:edb90909745330a68a97e056d7ad5d0b7ec1b7a7a706be2d7ae14b54ce3b6418` |
| 36 | `lemma` | [mutuallySingular_iff_disjoint_ae](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Varianted91b401cab85c63936bb6cbfc9e5af4631a7923d417a36768687bb89c243571.lean/declarations/mutuallysingular-iff-disjoint-ae--e4805c4c7587925dc99a5f5d.md) | 277 | `result-track:e4805c4c7587925dc99a5f5d63e0fb865ff43859045b6fb36f9e09ea4d070052` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
