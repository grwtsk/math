# Verification target: GRWTSK.Analysis.MeasureTheory.Comap.Variantac6912ee9f178e1003ce93d67c35cfba0642bbbfe7bddb55cc120a906b3ad139

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61e50fdca8033bcb89449c6fa5597aee23078fef",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Comap/Variantac6912ee9f178e1003ce93d67c35cfba0642bbbfe7bddb55cc120a906b3ad139.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Comap/Variantac6912ee9f178e1003ce93d67c35cfba0642bbbfe7bddb55cc120a906b3ad139.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Comap/Variantac6912ee9f178e1003ce93d67c35cfba0642bbbfe7bddb55cc120a906b3ad139.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61e50fdca8033bcb89449c6fa5597aee23078fef`.

Source path: `GRWTSK/Analysis/MeasureTheory/Comap/Variantac6912ee9f178e1003ce93d67c35cfba0642bbbfe7bddb55cc120a906b3ad139.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Comap/Variantac6912ee9f178e1003ce93d67c35cfba0642bbbfe7bddb55cc120a906b3ad139.lean.json)

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
| 1 | `def` | [comapₗ](../../../../../mathematics/Analysis/MeasureTheory/Comap/Variantac6912ee9f178e1003ce93d67c35cfba0642bbbfe7bddb55cc120a906b3ad139.lean/declarations/comap--e335e4837197a871cd581438.md) | 44 | `declaration-track:e335e4837197a871cd581438d68c1eb90c11d95c1a08e4a54ef834d87423247b` |
| 2 | `theorem` | [comapₗ_apply](../../../../../mathematics/Analysis/MeasureTheory/Comap/Variantac6912ee9f178e1003ce93d67c35cfba0642bbbfe7bddb55cc120a906b3ad139.lean/declarations/comap-apply--56175c7caf99e08202fd8a9f.md) | 53 | `result-track:56175c7caf99e08202fd8a9f937a3910525753efb88ee6e6a8cb746d172f746c` |
| 3 | `def` | [comap](../../../../../mathematics/Analysis/MeasureTheory/Comap/Variantac6912ee9f178e1003ce93d67c35cfba0642bbbfe7bddb55cc120a906b3ad139.lean/declarations/comap--918671df3d3d8243a3104b2d.md) | 64 | `declaration-track:918671df3d3d8243a3104b2d6c0ec7fd13ea46e0bca49ea4786d93445c7cfdb1` |
| 4 | `theorem` | [comap_apply₀](../../../../../mathematics/Analysis/MeasureTheory/Comap/Variantac6912ee9f178e1003ce93d67c35cfba0642bbbfe7bddb55cc120a906b3ad139.lean/declarations/comap-apply--3cef9fec9659596a169c175d.md) | 75 | `result-track:3cef9fec9659596a169c175dc4cc8925627d1305bf2cb8db66d8b2eadeaf87c3` |
| 5 | `lemma` | [comap_undef](../../../../../mathematics/Analysis/MeasureTheory/Comap/Variantac6912ee9f178e1003ce93d67c35cfba0642bbbfe7bddb55cc120a906b3ad139.lean/declarations/comap-undef--0ce525e99e6583f72f0961e5.md) | 81 | `result-track:0ce525e99e6583f72f0961e501769dc19a8763ea52095c07f417c9935ed23848` |
| 6 | `theorem` | [le_comap_apply](../../../../../mathematics/Analysis/MeasureTheory/Comap/Variantac6912ee9f178e1003ce93d67c35cfba0642bbbfe7bddb55cc120a906b3ad139.lean/declarations/le-comap-apply--2374bba80e042a07b8ce9f26.md) | 85 | `result-track:2374bba80e042a07b8ce9f2661f1540bd82996bcc44536d856c6094b30ebd307` |
| 7 | `theorem` | [comap_apply](../../../../../mathematics/Analysis/MeasureTheory/Comap/Variantac6912ee9f178e1003ce93d67c35cfba0642bbbfe7bddb55cc120a906b3ad139.lean/declarations/comap-apply--935545860d2ad8ef360f9aa7.md) | 90 | `result-track:935545860d2ad8ef360f9aa7255bf20813e38789910dafbf477a4073de77ebc8` |
| 8 | `theorem` | [comap_apply_le](../../../../../mathematics/Analysis/MeasureTheory/Comap/Variantac6912ee9f178e1003ce93d67c35cfba0642bbbfe7bddb55cc120a906b3ad139.lean/declarations/comap-apply-le--83058202a7b383b75f065ba1.md) | 95 | `result-track:83058202a7b383b75f065ba100dab3184e212d1179a653ce5edbeb37b7867298` |
| 9 | `theorem` | [comapₗ_eq_comap](../../../../../mathematics/Analysis/MeasureTheory/Comap/Variantac6912ee9f178e1003ce93d67c35cfba0642bbbfe7bddb55cc120a906b3ad139.lean/declarations/comap-eq-comap--76e3d04e52600b364856567c.md) | 101 | `result-track:76e3d04e52600b364856567ce09ba7737f27c3219046f526c311061ea4f1cf48` |
| 10 | `theorem` | [measure_image_eq_zero_of_comap_eq_zero](../../../../../mathematics/Analysis/MeasureTheory/Comap/Variantac6912ee9f178e1003ce93d67c35cfba0642bbbfe7bddb55cc120a906b3ad139.lean/declarations/measure-image-eq-zero-of-comap-eq-zero--761ddd91edd1192fee4782cb.md) | 106 | `result-track:761ddd91edd1192fee4782cb85281af9c07dfb9c1465c373e9d50d0ef3d38017` |
| 11 | `theorem` | [ae_eq_image_of_ae_eq_comap](../../../../../mathematics/Analysis/MeasureTheory/Comap/Variantac6912ee9f178e1003ce93d67c35cfba0642bbbfe7bddb55cc120a906b3ad139.lean/declarations/ae-eq-image-of-ae-eq-comap--0beb212e5ee7da0d821293c8.md) | 112 | `result-track:0beb212e5ee7da0d821293c84c097b80c3f170a24b8f659f82ecf4033216a6d3` |
| 12 | `theorem` | [NullMeasurableSet.image](../../../../../mathematics/Analysis/MeasureTheory/Comap/Variantac6912ee9f178e1003ce93d67c35cfba0642bbbfe7bddb55cc120a906b3ad139.lean/declarations/nullmeasurableset-image--a0fbb7407506f18e76e92195.md) | 129 | `result-track:a0fbb7407506f18e76e92195a25bcaa618745f73efaed41674b5db11c8d2a992` |
| 13 | `theorem` | [comap_preimage](../../../../../mathematics/Analysis/MeasureTheory/Comap/Variantac6912ee9f178e1003ce93d67c35cfba0642bbbfe7bddb55cc120a906b3ad139.lean/declarations/comap-preimage--ffdc6c07e467a090872c973e.md) | 140 | `result-track:ffdc6c07e467a090872c973eda6605345c95c230422a6d8838ac956bb70c2ba0` |
| 14 | `lemma` | [comap_zero](../../../../../mathematics/Analysis/MeasureTheory/Comap/Variantac6912ee9f178e1003ce93d67c35cfba0642bbbfe7bddb55cc120a906b3ad139.lean/declarations/comap-zero--6eb72bcddd9236f4a352b60b.md) | 145 | `result-track:6eb72bcddd9236f4a352b60bcf1d8dfed5c3164b1f5bfb27215cb08d720d65ed` |
| 15 | `lemma` | [comap_id](../../../../../mathematics/Analysis/MeasureTheory/Comap/Variantac6912ee9f178e1003ce93d67c35cfba0642bbbfe7bddb55cc120a906b3ad139.lean/declarations/comap-id--3cac9347bd421897d6ae3fd5.md) | 151 | `result-track:3cac9347bd421897d6ae3fd5ea62e04e636357c6e58a0f04ffe8330c05d19ec7` |
| 16 | `lemma` | [comap_comap](../../../../../mathematics/Analysis/MeasureTheory/Comap/Variantac6912ee9f178e1003ce93d67c35cfba0642bbbfe7bddb55cc120a906b3ad139.lean/declarations/comap-comap--429e0877fdf24db0cb7d3d5c.md) | 157 | `result-track:429e0877fdf24db0cb7d3d5cf323c0fadfc43e8c283d1f18d04fbdd78b609506` |
| 17 | `lemma` | [comap_smul](../../../../../mathematics/Analysis/MeasureTheory/Comap/Variantac6912ee9f178e1003ce93d67c35cfba0642bbbfe7bddb55cc120a906b3ad139.lean/declarations/comap-smul--8b943b562d06d50c3c803382.md) | 166 | `result-track:8b943b562d06d50c3c80338221fd689eeb64c54e940d532e0f9836fddb2064bd` |
| 18 | `lemma` | [MeasurableEmbedding.comap_add](../../../../../mathematics/Analysis/MeasureTheory/Comap/Variantac6912ee9f178e1003ce93d67c35cfba0642bbbfe7bddb55cc120a906b3ad139.lean/declarations/measurableembedding-comap-add--50f9e23cf4c1c617ddf3490b.md) | 187 | `result-track:50f9e23cf4c1c617ddf3490b96fbb78ade032da6baa211079b3b6a0e2b9d7b16` |
| 19 | `lemma` | [comap_symm](../../../../../mathematics/Analysis/MeasureTheory/Comap/Variantac6912ee9f178e1003ce93d67c35cfba0642bbbfe7bddb55cc120a906b3ad139.lean/declarations/comap-symm--72ca68b418e707eafd20411c.md) | 195 | `result-track:72ca68b418e707eafd20411c57374d156ed1016129b98e0c004463e52906750d` |
| 20 | `lemma` | [map_symm](../../../../../mathematics/Analysis/MeasureTheory/Comap/Variantac6912ee9f178e1003ce93d67c35cfba0642bbbfe7bddb55cc120a906b3ad139.lean/declarations/map-symm--c54bdcf032216e507fc891c1.md) | 200 | `result-track:c54bdcf032216e507fc891c149c7450eb75bb0a2af1b9570aaa4584aab6e56d1` |
| 21 | `lemma` | [MeasureTheory.Measure.comap_swap](../../../../../mathematics/Analysis/MeasureTheory/Comap/Variantac6912ee9f178e1003ce93d67c35cfba0642bbbfe7bddb55cc120a906b3ad139.lean/declarations/measuretheory-measure-comap-swap--0b6289fb7084eed8b5637108.md) | 205 | `result-track:0b6289fb7084eed8b56371088188b7ca55b6873ba0f248419d5fb911cc9b909a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
