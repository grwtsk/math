# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Convolution.Variantc992e70a0304c9253472722bd365b07a3cbbb5e110316121b70584fb66eb2c4f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e580061331887050b2b10dd7f1254ae1102c6351",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Convolution/Variantc992e70a0304c9253472722bd365b07a3cbbb5e110316121b70584fb66eb2c4f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantc992e70a0304c9253472722bd365b07a3cbbb5e110316121b70584fb66eb2c4f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantc992e70a0304c9253472722bd365b07a3cbbb5e110316121b70584fb66eb2c4f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e580061331887050b2b10dd7f1254ae1102c6351`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Convolution/Variantc992e70a0304c9253472722bd365b07a3cbbb5e110316121b70584fb66eb2c4f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Convolution/Variantc992e70a0304c9253472722bd365b07a3cbbb5e110316121b70584fb66eb2c4f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mconv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantc992e70a0304c9253472722bd365b07a3cbbb5e110316121b70584fb66eb2c4f.lean/declarations/mconv--8016d405f4be62d86acf4aed.md) | 43 | `declaration-track:8016d405f4be62d86acf4aed36e707e84852ad0ac049e6e5118123107942d3de` |
| 2 | `theorem` | [lintegral_mconv_eq_lintegral_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantc992e70a0304c9253472722bd365b07a3cbbb5e110316121b70584fb66eb2c4f.lean/declarations/lintegral-mconv-eq-lintegral-prod--4b2f5dfb1c956ddd7c75989a.md) | 53 | `result-track:4b2f5dfb1c956ddd7c75989aa9ad05dc0adbb636113592af49a610c6aad18eb8` |
| 3 | `theorem` | [lintegral_mconv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantc992e70a0304c9253472722bd365b07a3cbbb5e110316121b70584fb66eb2c4f.lean/declarations/lintegral-mconv--686e4b1a8ec2c054d8e73f9a.md) | 59 | `result-track:686e4b1a8ec2c054d8e73f9a4b3875096c9ab79a14e41075db9dee207f1ac0e8` |
| 4 | `lemma` | [dirac_mconv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantc992e70a0304c9253472722bd365b07a3cbbb5e110316121b70584fb66eb2c4f.lean/declarations/dirac-mconv--b8b73ae1fc574e8100d7473c.md) | 65 | `result-track:b8b73ae1fc574e8100d7473c3ac4f0b27de9d67c24f5bdf38e377a6d9dd21041` |
| 5 | `lemma` | [mconv_dirac](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantc992e70a0304c9253472722bd365b07a3cbbb5e110316121b70584fb66eb2c4f.lean/declarations/mconv-dirac--3b5a48180ad028950dc10319.md) | 72 | `result-track:3b5a48180ad028950dc10319e97e8986d49a3a75043ebd441a860949f9507ae0` |
| 6 | `lemma` | [dirac_mconv_dirac](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantc992e70a0304c9253472722bd365b07a3cbbb5e110316121b70584fb66eb2c4f.lean/declarations/dirac-mconv-dirac--471020fa84a0abc8ba2d9a2f.md) | 79 | `result-track:471020fa84a0abc8ba2d9a2f079ae5b34d6fac37c38d0f2a67f27c38342bdd07` |
| 7 | `theorem` | [dirac_one_mconv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantc992e70a0304c9253472722bd365b07a3cbbb5e110316121b70584fb66eb2c4f.lean/declarations/dirac-one-mconv--359fec18bb5d40a2fb102098.md) | 86 | `result-track:359fec18bb5d40a2fb102098ebbdb43c2e74e97ce805f37eb7b610d4c3d5c47e` |
| 8 | `theorem` | [mconv_dirac_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantc992e70a0304c9253472722bd365b07a3cbbb5e110316121b70584fb66eb2c4f.lean/declarations/mconv-dirac-one--10cad0a92e8d32f692ad8e2a.md) | 93 | `result-track:10cad0a92e8d32f692ad8e2aaa01064f599f97a89e330318d8099469c6e54e64` |
| 9 | `theorem` | [zero_mconv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantc992e70a0304c9253472722bd365b07a3cbbb5e110316121b70584fb66eb2c4f.lean/declarations/zero-mconv--d618323931d331af147380ad.md) | 100 | `result-track:d618323931d331af147380ada4627f8622951eda12b3d60caffd3e4cb5ef0ee7` |
| 10 | `theorem` | [mconv_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantc992e70a0304c9253472722bd365b07a3cbbb5e110316121b70584fb66eb2c4f.lean/declarations/mconv-zero--5935e3def40c445a50c0731c.md) | 107 | `result-track:5935e3def40c445a50c0731c5ca32a9d1eee3fe0ecaade404295d8e835c2ce04` |
| 11 | `theorem` | [mconv_smul_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantc992e70a0304c9253472722bd365b07a3cbbb5e110316121b70584fb66eb2c4f.lean/declarations/mconv-smul-left--1499590a3544073e2fe4f00b.md) | 114 | `result-track:1499590a3544073e2fe4f00b39bb247e39d8594010227d1901c25cb2bcf0d6be` |
| 12 | `theorem` | [mconv_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantc992e70a0304c9253472722bd365b07a3cbbb5e110316121b70584fb66eb2c4f.lean/declarations/mconv-add--2a536185f4c4080417794e5c.md) | 120 | `result-track:2a536185f4c4080417794e5c5bd4a86571465f8be7f2415e43d9e6d4d9813004` |
| 13 | `theorem` | [add_mconv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantc992e70a0304c9253472722bd365b07a3cbbb5e110316121b70584fb66eb2c4f.lean/declarations/add-mconv--90eca088d01e3a8a99497c9d.md) | 127 | `result-track:90eca088d01e3a8a99497c9d912afafb531f5fde8c8ea8272a4527dcaca07964` |
| 14 | `theorem` | [mconv_comm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantc992e70a0304c9253472722bd365b07a3cbbb5e110316121b70584fb66eb2c4f.lean/declarations/mconv-comm--c75b65db9c16e17b35d56319.md) | 135 | `result-track:c75b65db9c16e17b35d563196e05425d92ba9811b9be632a8f6d4cff8e53b9cd` |
| 15 | `instance` | [sfinite_mconv_of_sfinite](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantc992e70a0304c9253472722bd365b07a3cbbb5e110316121b70584fb66eb2c4f.lean/declarations/sfinite-mconv-of-sfinite--7822fd491d78f223f0183e15.md) | 144 | `declaration-track:7822fd491d78f223f0183e15d32fcf707d331d81da37bbc3fec7fc6060c36b54` |
| 16 | `instance` | [finite_of_finite_mconv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantc992e70a0304c9253472722bd365b07a3cbbb5e110316121b70584fb66eb2c4f.lean/declarations/finite-of-finite-mconv--53bd28fed57215049e00a94b.md) | 148 | `declaration-track:53bd28fed57215049e00a94be9fc07a46e504a2d4e746664894c688ca10a0222` |
| 17 | `theorem` | [mconv_assoc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantc992e70a0304c9253472722bd365b07a3cbbb5e110316121b70584fb66eb2c4f.lean/declarations/mconv-assoc--4288ea28df5c101cc5c814ae.md) | 157 | `result-track:4288ea28df5c101cc5c814aec2abf67f91f3c57082bfa816bbbfb37f302dd27d` |
| 18 | `instance` | [probabilitymeasure_of_probabilitymeasures_mconv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantc992e70a0304c9253472722bd365b07a3cbbb5e110316121b70584fb66eb2c4f.lean/declarations/probabilitymeasure-of-probabilitymeasures-mconv--8105123fda00a328149a2007.md) | 168 | `declaration-track:8105123fda00a328149a2007b0a2e22ac1ba18d40e95ed1558361951ee7878cb` |
| 19 | `theorem` | [mconv_absolutelyContinuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantc992e70a0304c9253472722bd365b07a3cbbb5e110316121b70584fb66eb2c4f.lean/declarations/mconv-absolutelycontinuous--5aab19f3b356216dde8dd7c3.md) | 175 | `result-track:5aab19f3b356216dde8dd7c3406e961ba873e4635a52c7ebe9693f8414bcde8a` |
| 20 | `lemma` | [map_mconv_monoidHom](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantc992e70a0304c9253472722bd365b07a3cbbb5e110316121b70584fb66eb2c4f.lean/declarations/map-mconv-monoidhom--dbde807d9f69c27337b6a413.md) | 189 | `result-track:dbde807d9f69c27337b6a413374d183fa3b95ce2e3dedc5267b152475730dce4` |
| 21 | `lemma` | [map_conv_continuousLinearMap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantc992e70a0304c9253472722bd365b07a3cbbb5e110316121b70584fb66eb2c4f.lean/declarations/map-conv-continuouslinearmap--3f763bad3f02221dd11a8841.md) | 200 | `result-track:3f763bad3f02221dd11a8841763e6825f2fad3ab9eebc493dcb8ea4cc8745fd0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
