# GRWTSK.Analysis.FunctionalAnalysis.Laplacian.Variant51de4bb5968b4bf78496fd67abb95c5849166b211c9c57d85eb0a831522b6597

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**42 observed declarations and anonymous commands**, 36 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/FunctionalAnalysis/Laplacian/Variant51de4bb5968b4bf78496fd67abb95c5849166b211c9c57d85eb0a831522b6597.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9cb7e7ba0e5566e47a0a3aa04feaf3135c1437ef`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/FunctionalAnalysis/Laplacian/Variant51de4bb5968b4bf78496fd67abb95c5849166b211c9c57d85eb0a831522b6597.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [bilinearIteratedFDerivWithinTwo](declarations/bilineariteratedfderivwithintwo--9921800b59f6d53305e93e09.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [bilinearIteratedFDerivTwo](declarations/bilineariteratedfderivtwo--d6f009f58a7e4438c9dbcdde.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [bilinearIteratedFDerivWithinTwo_eq_iteratedFDeriv](declarations/bilineariteratedfderivwithintwo-eq-iteratedfderiv--b7de34a87bc2ee11fbd9a9e9.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [bilinearIteratedFDerivTwo_eq_iteratedFDeriv](declarations/bilineariteratedfderivtwo-eq-iteratedfderiv--e37102204c7df442732c53e1.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [tensorIteratedFDerivWithinTwo](declarations/tensoriteratedfderivwithintwo--b5869bcdf7d2725d56b92e2a.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [tensorIteratedFDerivTwo](declarations/tensoriteratedfderivtwo--1c8adc8e031a44546534b881.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [tensorIteratedFDerivWithinTwo_eq_iteratedFDerivWithin](declarations/tensoriteratedfderivwithintwo-eq-iteratedfderivwithin--2d952f6431e4710a3cf18ea2.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [tensorIteratedFDerivTwo_eq_iteratedFDeriv](declarations/tensoriteratedfderivtwo-eq-iteratedfderiv--8327927f62f1ebb2eeabcc60.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [laplacianWithin](declarations/laplacianwithin--9ebd33f05e7d8bc00699cb83.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [instLaplacian](declarations/instlaplacian--047fa422da0143f2d6e90cb6.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [laplacianWithin_univ](declarations/laplacianwithin-univ--85bac2c6005f78fe43df34cc.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [laplacianWithin_eq_iteratedFDerivWithin_orthonormalBasis](declarations/laplacianwithin-eq-iteratedfderivwithin-orthonormalbasis--2755e43455ffa0f8309a2511.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [laplacian_eq_iteratedFDeriv_orthonormalBasis](declarations/laplacian-eq-iteratedfderiv-orthonormalbasis--37dcd7830b67b6f8deaa02ed.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [laplacianWithin_eq_iteratedFDerivWithin_stdOrthonormalBasis](declarations/laplacianwithin-eq-iteratedfderivwithin-stdorthonormalbasis--3803073398bdc1858c75bd79.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [laplacian_eq_iteratedFDeriv_stdOrthonormalBasis](declarations/laplacian-eq-iteratedfderiv-stdorthonormalbasis--d4588270baadbf22dfd54089.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [laplacianWithin_eq_iteratedDerivWithin_real](declarations/laplacianwithin-eq-iteratedderivwithin-real--0fa834cbbf3398196a41ab3c.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [laplacian_eq_iteratedDeriv_real](declarations/laplacian-eq-iteratedderiv-real--f2a4dcce3b791dea8cfa8071.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [laplacianWithin_eq_iteratedFDerivWithin_complexPlane](declarations/laplacianwithin-eq-iteratedfderivwithin-complexplane--763520a9754a6a9515803eef.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [laplacian_eq_iteratedFDeriv_complexPlane](declarations/laplacian-eq-iteratedfderiv-complexplane--ba342e890795ed5daaaf2758.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [laplacian_const](declarations/laplacian-const--bf36c631e2cf612e8d003ab3.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [laplacianWithin_congr_nhdsWithin](declarations/laplacianwithin-congr-nhdswithin--61688af89c286e84d625a2c0.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [laplacian_congr_nhds](declarations/laplacian-congr-nhds--80ef44d347d0bb61d7cc60a4.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [_root_.GRWTSK.Analysis.FunctionalAnalysis.BilinearIteratedFDerivWithinTwo.Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.ContDiffWithinAt.laplacianWithin_add](declarations/root-grwtsk-analysis-functionalanalysis-bilineariteratedfderivwithintwo--ba87dec16cc1cab1a0024989.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [_root_.GRWTSK.Analysis.FunctionalAnalysis.BilinearIteratedFDerivWithinTwo.Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.ContDiffAt.laplacian_add](declarations/root-grwtsk-analysis-functionalanalysis-bilineariteratedfderivwithintwo--3dc0590fe1a0a5dbe2b878f0.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [_root_.GRWTSK.Analysis.FunctionalAnalysis.BilinearIteratedFDerivWithinTwo.Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.ContDiffAt.laplacianWithin_add_nhdsWithin](declarations/root-grwtsk-analysis-functionalanalysis-bilineariteratedfderivwithintwo--17c8de07d6b6bf606e151a9b.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [_root_.GRWTSK.Analysis.FunctionalAnalysis.BilinearIteratedFDerivWithinTwo.Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.ContDiffAt.laplacian_add_nhds](declarations/root-grwtsk-analysis-functionalanalysis-bilineariteratedfderivwithintwo--d82db369b1fc17c11f6943c4.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [laplacianWithin_neg](declarations/laplacianwithin-neg--a575318fcdb9648bf12954a6.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [laplacian_neg](declarations/laplacian-neg--75438efc63c74b4bf7b662cb.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [_root_.GRWTSK.Analysis.FunctionalAnalysis.BilinearIteratedFDerivWithinTwo.Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.ContDiffWithinAt.laplacianWithin_sub](declarations/root-grwtsk-analysis-functionalanalysis-bilineariteratedfderivwithintwo--7d4dd8bb398780d1f387e4b0.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [_root_.GRWTSK.Analysis.FunctionalAnalysis.BilinearIteratedFDerivWithinTwo.Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.ContDiffAt.laplacian_sub](declarations/root-grwtsk-analysis-functionalanalysis-bilineariteratedfderivwithintwo--5102900fd8ec5d4ecff6a6fd.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [_root_.GRWTSK.Analysis.FunctionalAnalysis.BilinearIteratedFDerivWithinTwo.Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.ContDiffAt.laplacianWithin_sub_nhdsWithin](declarations/root-grwtsk-analysis-functionalanalysis-bilineariteratedfderivwithintwo--32f6aa63f30181c9408c7181.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [_root_.GRWTSK.Analysis.FunctionalAnalysis.BilinearIteratedFDerivWithinTwo.Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.ContDiffAt.laplacian_sub_nhds](declarations/root-grwtsk-analysis-functionalanalysis-bilineariteratedfderivwithintwo--9c8fa247ec2d6f32eba0814f.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [laplacianWithin_smul](declarations/laplacianwithin-smul--a910cb320c2863f71a0f107d.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [laplacian_smul](declarations/laplacian-smul--a2877cdb3d216a39989d6a56.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [laplacianWithin_smul_nhds](declarations/laplacianwithin-smul-nhds--19ab04a5b945c0fd129f12f4.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [laplacian_smul_nhds](declarations/laplacian-smul-nhds--c056da4338f458450a6038a7.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [_root_.GRWTSK.Analysis.FunctionalAnalysis.BilinearIteratedFDerivWithinTwo.Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.ContDiffWithinAt.laplacianWithin_CLM_comp_left](declarations/root-grwtsk-analysis-functionalanalysis-bilineariteratedfderivwithintwo--58d2a145942768d78c362457.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [_root_.GRWTSK.Analysis.FunctionalAnalysis.BilinearIteratedFDerivWithinTwo.Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.ContDiffAt.laplacian_CLM_comp_left](declarations/root-grwtsk-analysis-functionalanalysis-bilineariteratedfderivwithintwo--10abe46525f26c41490b5a5f.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [_root_.GRWTSK.Analysis.FunctionalAnalysis.BilinearIteratedFDerivWithinTwo.Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.ContDiffWithinAt.laplacianWithin_CLM_comp_left_nhds](declarations/root-grwtsk-analysis-functionalanalysis-bilineariteratedfderivwithintwo--5d8d81b50df1a567382a5f5f.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [_root_.GRWTSK.Analysis.FunctionalAnalysis.BilinearIteratedFDerivWithinTwo.Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.ContDiffAt.laplacian_CLM_comp_left_nhds](declarations/root-grwtsk-analysis-functionalanalysis-bilineariteratedfderivwithintwo--4e30e8f58c125d100b94bd9b.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [laplacianWithin_CLE_comp_left](declarations/laplacianwithin-cle-comp-left--f2ab560ec7fea95ae4330fe1.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [laplacian_CLE_comp_left](declarations/laplacian-cle-comp-left--989c25a260f1dd2680ce373e.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
