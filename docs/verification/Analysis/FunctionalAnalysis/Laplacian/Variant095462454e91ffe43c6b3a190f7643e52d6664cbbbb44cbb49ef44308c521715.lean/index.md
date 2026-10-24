# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Laplacian.Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f87096fffc39c9283b9881bd1976b4ba3b424cf",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Laplacian/Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Laplacian/Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Laplacian/Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f87096fffc39c9283b9881bd1976b4ba3b424cf`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Laplacian/Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Laplacian/Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.lean.json)

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
| 1 | `def` | [bilinearIteratedFDerivWithinTwo](../../../../../mathematics/Analysis/FunctionalAnalysis/Laplacian/Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.lean/declarations/bilineariteratedfderivwithintwo--6953583f77c5e13ba8f72774.md) | 53 | `declaration-track:6953583f77c5e13ba8f72774cb1fd1443aa996eef23c2e6a6168b9495df0b693` |
| 2 | `def` | [bilinearIteratedFDerivTwo](../../../../../mathematics/Analysis/FunctionalAnalysis/Laplacian/Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.lean/declarations/bilineariteratedfderivtwo--baa87a7d1f3f6671f770db0e.md) | 61 | `declaration-track:baa87a7d1f3f6671f770db0e430163070066729d5d319a1474ed47f134adada0` |
| 3 | `lemma` | [bilinearIteratedFDerivWithinTwo_eq_iteratedFDeriv](../../../../../mathematics/Analysis/FunctionalAnalysis/Laplacian/Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.lean/declarations/bilineariteratedfderivwithintwo-eq-iteratedfderiv--848dd9081af3c331a3dc06ab.md) | 67 | `result-track:848dd9081af3c331a3dc06abe2a4ffdd3c13e80600fec48457365213511f335c` |
| 4 | `lemma` | [bilinearIteratedFDerivTwo_eq_iteratedFDeriv](../../../../../mathematics/Analysis/FunctionalAnalysis/Laplacian/Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.lean/declarations/bilineariteratedfderivtwo-eq-iteratedfderiv--e8e7196bcffc38233cc069ed.md) | 75 | `result-track:e8e7196bcffc38233cc069ed110b8515712fca7639a85cd02788ffec457ec724` |
| 5 | `def` | [tensorIteratedFDerivWithinTwo](../../../../../mathematics/Analysis/FunctionalAnalysis/Laplacian/Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.lean/declarations/tensoriteratedfderivwithintwo--d4771a3ea894d40b2f137662.md) | 84 | `declaration-track:d4771a3ea894d40b2f137662630eb19ad02ad83a7018fa5a827d0d433b627d57` |
| 6 | `def` | [tensorIteratedFDerivTwo](../../../../../mathematics/Analysis/FunctionalAnalysis/Laplacian/Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.lean/declarations/tensoriteratedfderivtwo--9db976af46a77692cea4bd3d.md) | 92 | `declaration-track:9db976af46a77692cea4bd3d09f34802593b43f1264bf356ce4e045c206e2aaf` |
| 7 | `lemma` | [tensorIteratedFDerivWithinTwo_eq_iteratedFDerivWithin](../../../../../mathematics/Analysis/FunctionalAnalysis/Laplacian/Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.lean/declarations/tensoriteratedfderivwithintwo-eq-iteratedfderivwithin--d639d1ec81ab2522a8a93ab4.md) | 98 | `result-track:d639d1ec81ab2522a8a93ab41cb09c148e3c01de0316badbd2ace550dba15262` |
| 8 | `lemma` | [tensorIteratedFDerivTwo_eq_iteratedFDeriv](../../../../../mathematics/Analysis/FunctionalAnalysis/Laplacian/Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.lean/declarations/tensoriteratedfderivtwo-eq-iteratedfderiv--b1d798618b824402fdc7ac3b.md) | 108 | `result-track:b1d798618b824402fdc7ac3ba57aa333722438618ac5d305f276a563fdc6b063` |
| 9 | `def` | [laplacianWithin](../../../../../mathematics/Analysis/FunctionalAnalysis/Laplacian/Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.lean/declarations/laplacianwithin--7abadc2258a60594a3763d55.md) | 133 | `declaration-track:7abadc2258a60594a3763d55b76e43bf14616e2b74938ffefc9cc8683bacb827` |
| 10 | `instance` | [instLaplacian](../../../../../mathematics/Analysis/FunctionalAnalysis/Laplacian/Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.lean/declarations/instlaplacian--c066dd399c80c98ab939c686.md) | 140 | `declaration-track:c066dd399c80c98ab939c6869242f33cf6cb8bffbc3ebe5106e1f34b5751989e` |
| 11 | `theorem` | [laplacianWithin_univ](../../../../../mathematics/Analysis/FunctionalAnalysis/Laplacian/Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.lean/declarations/laplacianwithin-univ--8fef2dcaebb78e723781d8b6.md) | 149 | `result-track:8fef2dcaebb78e723781d8b6dc63b8a8aed43a78510f26abec3f4c48ecc1dea8` |
| 12 | `theorem` | [laplacianWithin_eq_iteratedFDerivWithin_orthonormalBasis](../../../../../mathematics/Analysis/FunctionalAnalysis/Laplacian/Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.lean/declarations/laplacianwithin-eq-iteratedfderivwithin-orthonormalbasis--893346f4f2e163186f67b844.md) | 163 | `result-track:893346f4f2e163186f67b844a648646c9592f3ceb71b0128d85a8d736e92ac5b` |
| 13 | `theorem` | [laplacian_eq_iteratedFDeriv_orthonormalBasis](../../../../../mathematics/Analysis/FunctionalAnalysis/Laplacian/Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.lean/declarations/laplacian-eq-iteratedfderiv-orthonormalbasis--235192815b8a13ed329779df.md) | 173 | `result-track:235192815b8a13ed329779dfd46f1213a851feaa5ac24c428e1d5e79b0a89f19` |
| 14 | `theorem` | [laplacianWithin_eq_iteratedFDerivWithin_stdOrthonormalBasis](../../../../../mathematics/Analysis/FunctionalAnalysis/Laplacian/Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.lean/declarations/laplacianwithin-eq-iteratedfderivwithin-stdorthonormalbasis--7b14e26757d02ccfa1534019.md) | 184 | `result-track:7b14e26757d02ccfa1534019017fc118e7e67a0aad9d59427edf582405af5cac` |
| 15 | `theorem` | [laplacian_eq_iteratedFDeriv_stdOrthonormalBasis](../../../../../mathematics/Analysis/FunctionalAnalysis/Laplacian/Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.lean/declarations/laplacian-eq-iteratedfderiv-stdorthonormalbasis--34e4a1fda631281124be94e1.md) | 195 | `result-track:34e4a1fda631281124be94e197b554d430626a327737ea4fac76d9b1b36acff1` |
| 16 | `theorem` | [laplacianWithin_eq_iteratedDerivWithin_real](../../../../../mathematics/Analysis/FunctionalAnalysis/Laplacian/Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.lean/declarations/laplacianwithin-eq-iteratedderivwithin-real--e6e336d7989676c873e091da.md) | 201 | `result-track:e6e336d7989676c873e091da0f680d33f30de8f8b52c99f6eee6e3b7cd4b728e` |
| 17 | `theorem` | [laplacian_eq_iteratedDeriv_real](../../../../../mathematics/Analysis/FunctionalAnalysis/Laplacian/Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.lean/declarations/laplacian-eq-iteratedderiv-real--aac6b6ac028b4e3bb040b5db.md) | 213 | `result-track:aac6b6ac028b4e3bb040b5db5c5336a7ab0753558b3fc61ae72be9cd43ffc100` |
| 18 | `theorem` | [laplacianWithin_eq_iteratedFDerivWithin_complexPlane](../../../../../mathematics/Analysis/FunctionalAnalysis/Laplacian/Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.lean/declarations/laplacianwithin-eq-iteratedfderivwithin-complexplane--6818c45cf9ed45be4a40e000.md) | 222 | `result-track:6818c45cf9ed45be4a40e000b5261c6dd9536a757ae9386d2ae39c1d41336d9e` |
| 19 | `theorem` | [laplacian_eq_iteratedFDeriv_complexPlane](../../../../../mathematics/Analysis/FunctionalAnalysis/Laplacian/Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.lean/declarations/laplacian-eq-iteratedfderiv-complexplane--d41dd604136dfadd03d5d287.md) | 233 | `result-track:d41dd604136dfadd03d5d287a5268412670e71c0b3749b6e7063497f27e48d90` |
| 20 | `theorem` | [laplacian_const](../../../../../mathematics/Analysis/FunctionalAnalysis/Laplacian/Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.lean/declarations/laplacian-const--791aafd0cde3b13e6a54a6ee.md) | 241 | `result-track:791aafd0cde3b13e6a54a6ee50c6e3e9815ceac1ac144db50993f9132fbc5d05` |
| 21 | `theorem` | [laplacianWithin_congr_nhdsWithin](../../../../../mathematics/Analysis/FunctionalAnalysis/Laplacian/Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.lean/declarations/laplacianwithin-congr-nhdswithin--49b35f04c926d50b34600fdb.md) | 253 | `result-track:49b35f04c926d50b34600fdb5dbf45e37bbaf40524250016b0401f0b496e0427` |
| 22 | `theorem` | [laplacian_congr_nhds](../../../../../mathematics/Analysis/FunctionalAnalysis/Laplacian/Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.lean/declarations/laplacian-congr-nhds--1cd6db5cb87d99831b6d49d6.md) | 262 | `result-track:1cd6db5cb87d99831b6d49d697798f470047bbb2db43feba127a07e8661d01fb` |
| 23 | `theorem` | [_root_.ContDiffWithinAt.laplacianWithin_add](../../../../../mathematics/Analysis/FunctionalAnalysis/Laplacian/Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.lean/declarations/root-contdiffwithinat-laplacianwithin-add--e122eda1c6a5b0e85137b0cf.md) | 272 | `result-track:e122eda1c6a5b0e85137b0cfd92016d36d9c231f62fe3e239338a7ef06fb2b86` |
| 24 | `theorem` | [_root_.ContDiffAt.laplacian_add](../../../../../mathematics/Analysis/FunctionalAnalysis/Laplacian/Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.lean/declarations/root-contdiffat-laplacian-add--34e8e79084b8b9b96abe3b73.md) | 279 | `result-track:34e8e79084b8b9b96abe3b733edfabd4f850d49a4b9e529239476778b7831120` |
| 25 | `theorem` | [_root_.ContDiffAt.laplacianWithin_add_nhdsWithin](../../../../../mathematics/Analysis/FunctionalAnalysis/Laplacian/Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.lean/declarations/root-contdiffat-laplacianwithin-add-nhdswithin--be7bff75404133e987c1cb82.md) | 285 | `result-track:be7bff75404133e987c1cb82347506c28ba30d23b66585781b93491089d74f49` |
| 26 | `theorem` | [_root_.ContDiffAt.laplacian_add_nhds](../../../../../mathematics/Analysis/FunctionalAnalysis/Laplacian/Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.lean/declarations/root-contdiffat-laplacian-add-nhds--256a0e7e4045b721363861d6.md) | 295 | `result-track:256a0e7e4045b721363861d6ec395a3bbe8da8c98524718c6313eeec3a8004de` |
| 27 | `theorem` | [laplacianWithin_neg](../../../../../mathematics/Analysis/FunctionalAnalysis/Laplacian/Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.lean/declarations/laplacianwithin-neg--772d2f8ecdd7842bc112e84d.md) | 301 | `result-track:772d2f8ecdd7842bc112e84de93330cfcbec1a6b4f8a79ec85abe650521edf82` |
| 28 | `theorem` | [laplacian_neg](../../../../../mathematics/Analysis/FunctionalAnalysis/Laplacian/Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.lean/declarations/laplacian-neg--670cd66b8bd92cc44d0520b1.md) | 308 | `result-track:670cd66b8bd92cc44d0520b1d373e4688caa9da6a3957d2535346e863d61fcbf` |
| 29 | `theorem` | [_root_.ContDiffWithinAt.laplacianWithin_sub](../../../../../mathematics/Analysis/FunctionalAnalysis/Laplacian/Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.lean/declarations/root-contdiffwithinat-laplacianwithin-sub--4efee02c162d9348aac7f80f.md) | 314 | `result-track:4efee02c162d9348aac7f80fe20c9215cea30e3fadfb9771c0cda3e82b91a97c` |
| 30 | `theorem` | [_root_.ContDiffAt.laplacian_sub](../../../../../mathematics/Analysis/FunctionalAnalysis/Laplacian/Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.lean/declarations/root-contdiffat-laplacian-sub--185d090ce21f2870a9571148.md) | 321 | `result-track:185d090ce21f2870a9571148f9c2c1fda9bd1bf987ac55db20e6ca1fa47ee678` |
| 31 | `theorem` | [_root_.ContDiffAt.laplacianWithin_sub_nhdsWithin](../../../../../mathematics/Analysis/FunctionalAnalysis/Laplacian/Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.lean/declarations/root-contdiffat-laplacianwithin-sub-nhdswithin--88cf0d7996e04865dfacea8c.md) | 327 | `result-track:88cf0d7996e04865dfacea8c7a7f7d412b650a198811c5f1cb54ec5ccc765261` |
| 32 | `theorem` | [_root_.ContDiffAt.laplacian_sub_nhds](../../../../../mathematics/Analysis/FunctionalAnalysis/Laplacian/Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.lean/declarations/root-contdiffat-laplacian-sub-nhds--ce5d6ace8bfd188a219b86c2.md) | 337 | `result-track:ce5d6ace8bfd188a219b86c2d182994acfde1f04eeb567977be87b08120cfe48` |
| 33 | `theorem` | [laplacianWithin_smul](../../../../../mathematics/Analysis/FunctionalAnalysis/Laplacian/Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.lean/declarations/laplacianwithin-smul--85b075ee270678a2f4385fb6.md) | 343 | `result-track:85b075ee270678a2f4385fb6c2968c00fb685b0c448111e1f774d654fcf563bb` |
| 34 | `theorem` | [laplacian_smul](../../../../../mathematics/Analysis/FunctionalAnalysis/Laplacian/Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.lean/declarations/laplacian-smul--c523151026698ec05ba59133.md) | 351 | `result-track:c523151026698ec05ba591339d51d6fab3159367573e7662da4d1321134dc6ba` |
| 35 | `theorem` | [laplacianWithin_smul_nhds](../../../../../mathematics/Analysis/FunctionalAnalysis/Laplacian/Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.lean/declarations/laplacianwithin-smul-nhds--5208a93434e4105f88e529e4.md) | 356 | `result-track:5208a93434e4105f88e529e413ed4f2cffca823b736ae17a54b674012ed2a155` |
| 36 | `theorem` | [laplacian_smul_nhds](../../../../../mathematics/Analysis/FunctionalAnalysis/Laplacian/Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.lean/declarations/laplacian-smul-nhds--d8ae7a549e137543e12f3192.md) | 363 | `result-track:d8ae7a549e137543e12f319255cc9a636d3850842b66487f9200caf4efd27471` |
| 37 | `theorem` | [_root_.ContDiffWithinAt.laplacianWithin_CLM_comp_left](../../../../../mathematics/Analysis/FunctionalAnalysis/Laplacian/Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.lean/declarations/root-contdiffwithinat-laplacianwithin-clm-comp-left--90d282ee81e87d36c08db5f5.md) | 376 | `result-track:90d282ee81e87d36c08db5f50c892736f00072dde4079867eecd05c8148ff1d5` |
| 38 | `theorem` | [_root_.ContDiffAt.laplacian_CLM_comp_left](../../../../../mathematics/Analysis/FunctionalAnalysis/Laplacian/Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.lean/declarations/root-contdiffat-laplacian-clm-comp-left--60779a02b25191a6089f7d31.md) | 383 | `result-track:60779a02b25191a6089f7d3145c09ca6f22ea5240cb681c76fc0c8bf7d4835d7` |
| 39 | `theorem` | [_root_.ContDiffWithinAt.laplacianWithin_CLM_comp_left_nhds](../../../../../mathematics/Analysis/FunctionalAnalysis/Laplacian/Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.lean/declarations/root-contdiffwithinat-laplacianwithin-clm-comp-left-nhds--6d673f02869b6c90f7e0f592.md) | 388 | `result-track:6d673f02869b6c90f7e0f59279dd0a2dae049c198ee5fc2ac64acd43d45acb47` |
| 40 | `theorem` | [_root_.ContDiffAt.laplacian_CLM_comp_left_nhds](../../../../../mathematics/Analysis/FunctionalAnalysis/Laplacian/Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.lean/declarations/root-contdiffat-laplacian-clm-comp-left-nhds--971c1a6d27cf7c7e14ab4120.md) | 395 | `result-track:971c1a6d27cf7c7e14ab4120b68f25ac02be9bcfea1aee15bd873fa73dfa1e34` |
| 41 | `theorem` | [laplacianWithin_CLE_comp_left](../../../../../mathematics/Analysis/FunctionalAnalysis/Laplacian/Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.lean/declarations/laplacianwithin-cle-comp-left--554102576007ea99e264c6fc.md) | 401 | `result-track:554102576007ea99e264c6fc6e15606edb419f7456ebcd36dd60f59d3803f84c` |
| 42 | `theorem` | [laplacian_CLE_comp_left](../../../../../mathematics/Analysis/FunctionalAnalysis/Laplacian/Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.lean/declarations/laplacian-cle-comp-left--13819cd74d230f7242076643.md) | 407 | `result-track:13819cd74d230f7242076643782dd815f49e62a9bb9d2de08e147efa387c1d4a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
