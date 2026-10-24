# Verification target: GRWTSK.Analysis.MeasureTheory.Jordan.Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f2e8c3b7ca084fa741bfd3798b95748a962f059",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f2e8c3b7ca084fa741bfd3798b95748a962f059`.

Source path: `GRWTSK/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.VectorMeasure.Decomposition.Hahn` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.MutuallySingular` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.UniformMulAction` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [JordanDecomposition](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/declarations/jordandecomposition--12502c73106b09456ffee799.md) | 63 | `declaration-track:12502c73106b09456ffee7991c103af3fef60cfe34b235a87944d2911fda354c` |
| 2 | `instance` | [instZero](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/declarations/instzero--b0f4639ae753cef442d8080c.md) | 82 | `declaration-track:b0f4639ae753cef442d8080c601d8376648c3e1deeb53bc8b599a6de99c6757d` |
| 3 | `instance` | [instInhabited](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/declarations/instinhabited--b45f9528e509d3c6a2257f02.md) | 84 | `declaration-track:b45f9528e509d3c6a2257f0276fd8f40746570551b73af54e2add6a7b2ef9f61` |
| 4 | `instance` | [instInvolutiveNeg](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/declarations/instinvolutiveneg--323f8f99873858bba3c2754e.md) | 86 | `declaration-track:323f8f99873858bba3c2754ee3504bd9e75933a2b4d06c452790fa9bd77c73e2` |
| 5 | `instance` | [instSMul](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/declarations/instsmul--a852df52cb771b308ff276b1.md) | 90 | `declaration-track:a852df52cb771b308ff276b19ecc677d10a2da52c4d880e1cac381bf416fdb9f` |
| 6 | `instance` | [instSMulReal](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/declarations/instsmulreal--78a562fa86dc3d12fef5bc13.md) | 95 | `declaration-track:78a562fa86dc3d12fef5bc13f1f458d4c1b7b7cf6a1d69e9e25b3d30ec681023` |
| 7 | `theorem` | [zero_posPart](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/declarations/zero-pospart--829492376d814f9d5c3eee08.md) | 99 | `result-track:829492376d814f9d5c3eee0809a96c5951b8ed82b527481d247df9453f13d8f9` |
| 8 | `theorem` | [zero_negPart](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/declarations/zero-negpart--f7648f4b940713120348fd04.md) | 103 | `result-track:f7648f4b940713120348fd0436b809f5d865b81c02262c67dbb7aa2557917240` |
| 9 | `theorem` | [neg_posPart](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/declarations/neg-pospart--5bf8604e64e2eba0e014c93b.md) | 107 | `result-track:5bf8604e64e2eba0e014c93b1bed71fe6ebb9247ee738fc47aaf833491d459e8` |
| 10 | `theorem` | [neg_negPart](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/declarations/neg-negpart--c924c77c04da08392312e5fc.md) | 111 | `result-track:c924c77c04da08392312e5fcacc2bda842ab5dadc3d18f493572d5eb6855986d` |
| 11 | `theorem` | [smul_posPart](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/declarations/smul-pospart--693cd67a05a7d0b818fa93ba.md) | 115 | `result-track:693cd67a05a7d0b818fa93bad2845e9f63dc3f0e1cc1b986306e8cfc7a9b27bd` |
| 12 | `theorem` | [smul_negPart](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/declarations/smul-negpart--1a37515d85054f03e145dc6d.md) | 119 | `result-track:1a37515d85054f03e145dc6d8c4ed6cff946cfb6b65ae18af4e64028eb7fc60e` |
| 13 | `theorem` | [real_smul_def](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/declarations/real-smul-def--93cfd0841d44f7d626ae9ffc.md) | 122 | `result-track:93cfd0841d44f7d626ae9ffcc159e33c537b8bb1c7b7152f4e6a3cc1f2f0ad8b` |
| 14 | `theorem` | [coe_smul](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/declarations/coe-smul--7db80963614407deccca4303.md) | 127 | `result-track:7db80963614407deccca4303c943bdf1c3266f6d3ff3f45ebb0e5909c9fe2b07` |
| 15 | `theorem` | [real_smul_nonneg](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/declarations/real-smul-nonneg--867890c1142f1dde74000f02.md) | 130 | `result-track:867890c1142f1dde74000f02dd5e411a484563f9852c2c13b99912af13591e25` |
| 16 | `theorem` | [real_smul_neg](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/declarations/real-smul-neg--521d233f4d080c0fe3122ce6.md) | 133 | `result-track:521d233f4d080c0fe3122ce6353306d6b20f5e44ac8eea31c04fc11223e2b9ad` |
| 17 | `theorem` | [real_smul_posPart_nonneg](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/declarations/real-smul-pospart-nonneg--5f5ac8816b640ae9d716c90a.md) | 136 | `result-track:5f5ac8816b640ae9d716c90a3cfc6423a9005647335ce52423ff6a362615093e` |
| 18 | `theorem` | [real_smul_negPart_nonneg](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/declarations/real-smul-negpart-nonneg--304a5304f541e76afcc7c700.md) | 140 | `result-track:304a5304f541e76afcc7c700c46e6d89287f50853be8e6aaf8b473f346be949c` |
| 19 | `theorem` | [real_smul_posPart_neg](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/declarations/real-smul-pospart-neg--e40ddad3dfc787af4f5c9ec4.md) | 144 | `result-track:e40ddad3dfc787af4f5c9ec4f6625e120fff683ad4da68347669cffccd0f9c23` |
| 20 | `theorem` | [real_smul_negPart_neg](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/declarations/real-smul-negpart-neg--91e2e3b8961ad3f6ccc9d7f8.md) | 148 | `result-track:91e2e3b8961ad3f6ccc9d7f80ec8d01003752962677249dcf068e2d3362c6d2a` |
| 21 | `def` | [toSignedMeasure](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/declarations/tosignedmeasure--ca1ccddfdcdf4f6c27cc3058.md) | 153 | `declaration-track:ca1ccddfdcdf4f6c27cc305885a7765490592ff4698dccf89fcd80596a2644cb` |
| 22 | `theorem` | [toSignedMeasure_zero](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/declarations/tosignedmeasure-zero--c8349209c4166191afe30dcf.md) | 156 | `result-track:c8349209c4166191afe30dcfec46931690460034acad3011cb320d64deed5761` |
| 23 | `theorem` | [toSignedMeasure_neg](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/declarations/tosignedmeasure-neg--c23bafba153bd826133feb6a.md) | 161 | `result-track:c23bafba153bd826133feb6ae994f7290fd7941afe88bd1b355718d60ca36ccf` |
| 24 | `theorem` | [toSignedMeasure_smul](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/declarations/tosignedmeasure-smul--cf4b1781d20f1e476e2558cd.md) | 166 | `result-track:cf4b1781d20f1e476e2558cd8d925d2c3624244157e1490570722b2ab0126de3` |
| 25 | `theorem` | [exists_compl_positive_negative](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/declarations/exists-compl-positive-negative--e52b902ab7256c9a04ebb1e2.md) | 174 | `result-track:e52b902ab7256c9a04ebb1e2777e9e9655ab51553d1a35b581bbba376407d6c1` |
| 26 | `def` | [toJordanDecomposition](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/declarations/tojordandecomposition--ec738dcb8a0480760d5b5112.md) | 204 | `declaration-track:ec738dcb8a0480760d5b5112581c3a431eb897fc249042632d636a76eaa7544f` |
| 27 | `theorem` | [toJordanDecomposition_spec](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/declarations/tojordandecomposition-spec--acd990180a50775b12a458b9.md) | 216 | `result-track:acd990180a50775b12a458b9da11847fa9e0172cbf8af0287410b96a77345ff0` |
| 28 | `theorem` | [toSignedMeasure_toJordanDecomposition](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/declarations/tosignedmeasure-tojordandecomposition--443835a1c40e9f90cf932bd2.md) | 233 | `result-track:443835a1c40e9f90cf932bd2ce170b6eb0e6a3f2cdaf38ff887d1c9b6f0ed0e2` |
| 29 | `theorem` | [subset_positive_null_set](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/declarations/subset-positive-null-set--ae1b4b156b121284e465571f.md) | 250 | `result-track:ae1b4b156b121284e465571f032c08abb56a2b834a6a8da408eb5b5819ec87ed` |
| 30 | `theorem` | [subset_negative_null_set](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/declarations/subset-negative-null-set--1b4ff62076d0b325cfc7d9ae.md) | 263 | `result-track:1b4ff62076d0b325cfc7d9ae1982d9fcd7efcfa947beab4f86f4279f16c08cd0` |
| 31 | `theorem` | [of_diff_eq_zero_of_symmDiff_eq_zero_positive](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/declarations/of-diff-eq-zero-of-symmdiff-eq-zero-positive--077c82f3eba6309c55078ca1.md) | 275 | `result-track:077c82f3eba6309c55078ca1486eccb024fb53bbd25034d9258e73c2f86cb204` |
| 32 | `theorem` | [of_diff_eq_zero_of_symmDiff_eq_zero_negative](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/declarations/of-diff-eq-zero-of-symmdiff-eq-zero-negative--25e78e14375b6f7a43d01840.md) | 290 | `result-track:25e78e14375b6f7a43d018402206bed51322d900b9234759f67a2054c73d4e09` |
| 33 | `theorem` | [of_inter_eq_of_symmDiff_eq_zero_positive](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/declarations/of-inter-eq-of-symmdiff-eq-zero-positive--e6a60eb3898a5a92b4c279d4.md) | 298 | `result-track:e6a60eb3898a5a92b4c279d4af74f56af48f151560934efd6411b1d26cf82013` |
| 34 | `theorem` | [of_inter_eq_of_symmDiff_eq_zero_negative](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/declarations/of-inter-eq-of-symmdiff-eq-zero-negative--b1a4b77c1aaf7800b9845175.md) | 314 | `result-track:b1a4b77c1aaf7800b984517559187f682aa33d8fc7808e20234bac10443258ab` |
| 35 | `theorem` | [eq_of_posPart_eq_posPart](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/declarations/eq-of-pospart-eq-pospart--1aa1523a172d52dc9a4539d5.md) | 331 | `result-track:1aa1523a172d52dc9a4539d536b919a9cd419a42945f1290807d0ecae9769f4d` |
| 36 | `theorem` | [toSignedMeasure_injective](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/declarations/tosignedmeasure-injective--6408f1d6006d9bf18952d430.md) | 341 | `result-track:6408f1d6006d9bf18952d430bdaa3d539a6c57dcd361362530e86fe1c85384b6` |
| 37 | `theorem` | [toJordanDecomposition_toSignedMeasure](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/declarations/tojordandecomposition-tosignedmeasure--d44493736337522f27d24df2.md) | 396 | `result-track:d44493736337522f27d24df288fffda27d482887c7060b190ee92adb4ff7111f` |
| 38 | `def` | [toJordanDecompositionEquiv](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/declarations/tojordandecompositionequiv--b3e5d27554aef2f182080795.md) | 409 | `declaration-track:b3e5d27554aef2f182080795503752a9b0ff01e161eae5ff1a6f9d64954906c9` |
| 39 | `theorem` | [toJordanDecomposition_zero](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/declarations/tojordandecomposition-zero--5f01a5598bc2cc729662b3c7.md) | 416 | `result-track:5f01a5598bc2cc729662b3c76468c49db2b0fe80d3da9029cb82e07de486ec54` |
| 40 | `theorem` | [toJordanDecomposition_neg](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/declarations/tojordandecomposition-neg--02791ded85973e9ff0a9287a.md) | 420 | `result-track:02791ded85973e9ff0a9287abbc6e6c5f7946068fe030dceeefb6609436853ed` |
| 41 | `theorem` | [toJordanDecomposition_smul](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/declarations/tojordandecomposition-smul--a77619774ee3ab56762704b2.md) | 425 | `result-track:a77619774ee3ab56762704b27fb9f1c1a36e4f3a4089af6a0eebcb6a82215452` |
| 42 | `theorem` | [toJordanDecomposition_smul_real_nonneg](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/declarations/tojordandecomposition-smul-real-nonneg--028f555ae349ef3360d57853.md) | 430 | `result-track:028f555ae349ef3360d57853066400a7ef87972540824a843351359239315848` |
| 43 | `theorem` | [toJordanDecomposition_smul_real](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/declarations/tojordandecomposition-smul-real--44d7ac8efb68777739fb456c.md) | 436 | `result-track:44d7ac8efb68777739fb456c86890d388f83a503f6dc2f9e694b9c42d048089b` |
| 44 | `theorem` | [toJordanDecomposition_eq](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/declarations/tojordandecomposition-eq--44f08705d1ae088812addd05.md) | 450 | `result-track:44f08705d1ae088812addd0599926c5972d400d3611070046eaf3e16b9feef26` |
| 45 | `def` | [totalVariation](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/declarations/totalvariation--692025474dc90f670da30287.md) | 455 | `declaration-track:692025474dc90f670da30287da366522083c4e5954e2589dd863a826a3f9ab83` |
| 46 | `theorem` | [totalVariation_zero](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/declarations/totalvariation-zero--0df27cc03b04a5551f2d43cc.md) | 458 | `result-track:0df27cc03b04a5551f2d43cc0f857768f9dfdba769ec23d40f008129f433f161` |
| 47 | `theorem` | [totalVariation_neg](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/declarations/totalvariation-neg--a8fc53e9a1aceee1b4175ca0.md) | 461 | `result-track:a8fc53e9a1aceee1b4175ca03d8ea2c62c67297c7b176f02c5050ea011e71f67` |
| 48 | `theorem` | [null_of_totalVariation_zero](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/declarations/null-of-totalvariation-zero--8a129953714d95ec5c0cf170.md) | 464 | `result-track:8a129953714d95ec5c0cf17050cacbadb0c7cfd718ea55467f6932bb82945140` |
| 49 | `theorem` | [absolutelyContinuous_ennreal_iff](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/declarations/absolutelycontinuous-ennreal-iff--125696ca1c2c1a4b868d06d1.md) | 473 | `result-track:125696ca1c2c1a4b868d06d1b78532b46281d159438bcbe41dabcdeab559c432` |
| 50 | `theorem` | [totalVariation_absolutelyContinuous_iff](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/declarations/totalvariation-absolutelycontinuous-iff--5afc9953452e54e1806c74f8.md) | 487 | `result-track:5afc9953452e54e1806c74f8e01e6477c6ac841b72602aeee197d72666abcb3e` |
| 51 | `theorem` | [mutuallySingular_iff](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/declarations/mutuallysingular-iff--971860f4018d22637e3ae22e.md) | 501 | `result-track:971860f4018d22637e3ae22ed47ea7f08669b12e0ad0feb0fd2169227e609834` |
| 52 | `theorem` | [mutuallySingular_ennreal_iff](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/declarations/mutuallysingular-ennreal-iff--e068be41f252c2e2f8f8eb29.md) | 520 | `result-track:e068be41f252c2e2f8f8eb29dab12b3823e107665165837e58f6ce3ff78a1deb` |
| 53 | `theorem` | [totalVariation_mutuallySingular_iff](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/declarations/totalvariation-mutuallysingular-iff--e43d9bc13109c5ac86e5f367.md) | 539 | `result-track:e43d9bc13109c5ac86e5f367007f4677f559acb061b04d24d527819c46b9563e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
