# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SubGaussian.Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f71bf1aafd94f3fd53ad4b9bffdae1372f4fe191",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f71bf1aafd94f3fd53ad4b9bffdae1372f4fe191`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Kernel.Condexp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Moments.MGFAnalytic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Kernel.HasSubgaussianMGF](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/declarations/kernel-hassubgaussianmgf--adb8ddabbc6837c6707bb42a.md) | 135 | `declaration-track:adb8ddabbc6837c6707bb42a18e771f683acce0e16211fbecdd8fe76ba8313fd` |
| 2 | `lemma` | [aestronglyMeasurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/declarations/aestronglymeasurable--301bb15dc908fa6287f1db82.md) | 144 | `result-track:301bb15dc908fa6287f1db827bfe44e9086b8af7c711940af7fdc7e1a8c2dda2` |
| 3 | `lemma` | [ae_integrable_exp_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/declarations/ae-integrable-exp-mul--8612f605284e132ea206849a.md) | 149 | `result-track:8612f605284e132ea206849a79e6c1d4a74d09237fe9bd3b5b588791a4280dcb` |
| 4 | `lemma` | [ae_aestronglyMeasurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/declarations/ae-aestronglymeasurable--024c7d8c7626d2de7eff970a.md) | 153 | `result-track:024c7d8c7626d2de7eff970ad2c30ac1e058b0a1e5b31a91d336f78fc0d860ca` |
| 5 | `lemma` | [ae_forall_integrable_exp_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/declarations/ae-forall-integrable-exp-mul--4e9be84c37979dfcd1dd8060.md) | 159 | `result-track:4e9be84c37979dfcd1dd8060a274d3cc271bc84e71c0cb0f011e0cd02b9f55be` |
| 6 | `lemma` | [memLp_exp_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/declarations/memlp-exp-mul--b5895bb97e194b4ea8f02679.md) | 167 | `result-track:b5895bb97e194b4ea8f02679f78645df8a961e59341e2f304e676d77a3a064ff` |
| 7 | `lemma` | [cgf_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/declarations/cgf-le--18dff72d11e9a40f4e99330a.md) | 182 | `result-track:18dff72d11e9a40f4e99330a368685ab72d9e5f1b8e54635b5c202f1068decf5` |
| 8 | `lemma` | [isFiniteMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/declarations/isfinitemeasure--01e03330d79b983b18366784.md) | 195 | `result-track:01e03330d79b983b1836678436bfdf4fd845f012a5f6d50b38eaeef86084cab2` |
| 9 | `lemma` | [measure_univ_le_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/declarations/measure-univ-le-one--fda527b5d487b13e9fe369fd.md) | 200 | `result-track:fda527b5d487b13e9fe369fde5a9778bb70b399abcc893874b4a0b2ea44b0078` |
| 10 | `lemma` | [of_rat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/declarations/of-rat--5e5deb754a8d1db2ff3fe26b.md) | 209 | `result-track:5e5deb754a8d1db2ff3fe26b16d89671bf9ee1b40a1ef254fa7303befd781a2e` |
| 11 | `lemma` | [fun_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/declarations/fun-zero--63883fd05bf62e2b26ea6c7f.md) | 225 | `result-track:63883fd05bf62e2b26ea6c7f9d6065e99f47dc063e973fd85c0c2fc0ed27e552` |
| 12 | `lemma` | [zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/declarations/zero--f7f808911307b13289bc9589.md) | 231 | `result-track:f7f808911307b13289bc9589bd3a99c3395aa635d4b9611194286122c7c42c1c` |
| 13 | `lemma` | [zero_kernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/declarations/zero-kernel--a2e1bf997cd80498eb1b52fe.md) | 234 | `result-track:a2e1bf997cd80498eb1b52fe77fff66900538c07069b8ff62dfd8a3214ed51db` |
| 14 | `lemma` | [zero_measure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/declarations/zero-measure--4e9cbf378860bb7d941239a0.md) | 240 | `result-track:4e9cbf378860bb7d941239a016218dd34e4bf95b2627ca0637bbb71a891f1dce` |
| 15 | `lemma` | [congr](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/declarations/congr--abef2ea0e79db8ca76807b2a.md) | 242 | `result-track:abef2ea0e79db8ca76807b2a52fe32b007398b7f4c4735cd6e5ee7c4b0632edb` |
| 16 | `lemma` | [_root_.ProbabilityTheory.Kernel.HasSubgaussianMGF_congr](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/declarations/root-probabilitytheory-kernel-hassubgaussianmgf-congr--cade5c9dd53435eb7b46948b.md) | 253 | `result-track:cade5c9dd53435eb7b46948bac8d7369852fb9b0b519d15a839821348158a3c1` |
| 17 | `lemma` | [of_map](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/declarations/of-map--13441b6cdaced7824d0e16fb.md) | 257 | `result-track:13441b6cdaced7824d0e16fbeb048e1c9a4a49dbdb9ecc6c96cdd50137214e5e` |
| 18 | `lemma` | [measure_ge_le_exp_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/declarations/measure-ge-le-exp-add--ec6e92c5fd3c146f4cf94505.md) | 274 | `result-track:ec6e92c5fd3c146f4cf9450589c2efe162286c04d57642d08c9a8cfcef4e7074` |
| 19 | `lemma` | [measure_ge_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/declarations/measure-ge-le--6bab1a9dc5d52e8e51506bc5.md) | 285 | `result-track:6bab1a9dc5d52e8e51506bc5d8bc585adff8f8844df69119ce0817b3f302ba2e` |
| 20 | `lemma` | [prodMkLeft_compProd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/declarations/prodmkleft-compprod--7f242fd900d9d0e9f4959a46.md) | 305 | `result-track:7f242fd900d9d0e9f4959a46e9f8a0e9d42d4afab2ddc343e595a33202c2e67a` |
| 21 | `lemma` | [integrable_exp_add_compProd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/declarations/integrable-exp-add-compprod--bc7728c89660a21238ac18db.md) | 319 | `result-track:bc7728c89660a21238ac18dbc87c9c92c43e7f7491db911dab10d6e67ba30a30` |
| 22 | `lemma` | [add_compProd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/declarations/add-compprod--3522a4100966025776dd30f5.md) | 342 | `result-track:3522a4100966025776dd30f525798525f19bddfc11c53c734e428c095f7c39a1` |
| 23 | `lemma` | [add_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/declarations/add-comp--e5a4deeaf0c06b55250bce22.md) | 372 | `result-track:e5a4deeaf0c06b55250bce227d9c5e8e5ce9bb4d2129665d3788ad5bf8886da1` |
| 24 | `def` | [HasCondSubgaussianMGF](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/declarations/hascondsubgaussianmgf--d60cbe1a834ee2bb23c3c98d.md) | 400 | `declaration-track:d60cbe1a834ee2bb23c3c98de8aaddce307b5b8cf995b2f98b7c4dc9fff56bed` |
| 25 | `lemma` | [mgf_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/declarations/mgf-le--8e872a3896d9b4b6bcf1ea1a.md) | 406 | `result-track:8e872a3896d9b4b6bcf1ea1af82d4d84ebf2def2195353b2c5c362d56ba3d767` |
| 26 | `lemma` | [cgf_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/declarations/cgf-le--009834161f5f626db4012408.md) | 410 | `result-track:009834161f5f626db4012408c7a5fbbd0f17a5fb1a3130a3aa4b16b43125b462` |
| 27 | `lemma` | [ae_trim_condExp_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/declarations/ae-trim-condexp-le--48905b38ca5e8b6b465ee68f.md) | 414 | `result-track:48905b38ca5e8b6b465ee68f19ba88952cd139c508ca6d164b9c6ef2190e09c4` |
| 28 | `lemma` | [ae_condExp_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/declarations/ae-condexp-le--d30e25b4e2019a1022023667.md) | 422 | `result-track:d30e25b4e2019a1022023667fb5069fe3948cabe09ea877aaf6e2e703af4eccc` |
| 29 | `lemma` | [fun_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/declarations/fun-zero--4b677dfa990a0bd9c16c00c3.md) | 427 | `result-track:4b677dfa990a0bd9c16c00c368d770b6863c0bbeee121fa12ce04ce96ae6e601` |
| 30 | `lemma` | [zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/declarations/zero--b21c18b1620186a133c432e9.md) | 430 | `result-track:b21c18b1620186a133c432e94d482e00d1e54ba195c502277af5af45c969cd36` |
| 31 | `lemma` | [memLp_exp_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/declarations/memlp-exp-mul--17f550a0cd5243479ef4ad68.md) | 432 | `result-track:17f550a0cd5243479ef4ad6817fe3c8a70d3951fd97c35bd30efb4ce206aee8f` |
| 32 | `lemma` | [integrable_exp_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/declarations/integrable-exp-mul--0aa7c17896df4189369651f9.md) | 436 | `result-track:0aa7c17896df4189369651f98b3913931565f99b57ee17fd70edadc1969e69d3` |
| 33 | `structure` | [HasSubgaussianMGF](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/declarations/hassubgaussianmgf--11088409a553ea65b17f8bd9.md) | 457 | `declaration-track:11088409a553ea65b17f8bd909619a1fd73cfb2ab79d1e77fb9d5c8634159ba7` |
| 34 | `lemma` | [HasSubgaussianMGF_iff_kernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/declarations/hassubgaussianmgf-iff-kernel--87e83cf3712733687d16d0ac.md) | 461 | `result-track:87e83cf3712733687d16d0ac9794e1752dd935ca10d560991c986788c4a674a1` |
| 35 | `lemma` | [aestronglyMeasurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/declarations/aestronglymeasurable--141d824973108826545fc7bd.md) | 468 | `result-track:141d824973108826545fc7bd3505b553b77b6fecbeac448837f65277afe0ddfd` |
| 36 | `lemma` | [aemeasurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/declarations/aemeasurable--461a631148f1277af4c0074c.md) | 472 | `result-track:461a631148f1277af4c0074c9db393afa58fea1c169ea382bbe4736a29b7faf3` |
| 37 | `lemma` | [congr](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/declarations/congr--7cd9f7f43046f7dcbfa2cc63.md) | 475 | `result-track:7cd9f7f43046f7dcbfa2cc63048cc42f256149df20f221dc2e7cf2cd4b02b9f3` |
| 38 | `lemma` | [memLp_exp_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/declarations/memlp-exp-mul--5904738c3ab6dd666546ef73.md) | 481 | `result-track:5904738c3ab6dd666546ef735538e56592148acce66e045900a5dc8bf3c6e19e` |
| 39 | `lemma` | [cgf_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/declarations/cgf-le--54dbc9ab4efcbde7c0d5020e.md) | 486 | `result-track:54dbc9ab4efcbde7c0d5020ee1da608d016cc9c8bffb556fb25caa9fb799afdb` |
| 40 | `lemma` | [fun_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/declarations/fun-zero--b0927ea14bd61d9ae5175b4c.md) | 491 | `result-track:b0927ea14bd61d9ae5175b4c2f2f7b4b1c3b50c89bbe1c03a9e2001c926866b1` |
| 41 | `lemma` | [zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/declarations/zero--eb9b2363245e465cd8abef4d.md) | 495 | `result-track:eb9b2363245e465cd8abef4d2f8c2ed7f8ab8c3846ab64b5d908faca2a00fd46` |
| 42 | `lemma` | [of_map](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/declarations/of-map--8dc975ce0352c98c29c0c158.md) | 497 | `result-track:8dc975ce0352c98c29c0c1584c85efda92dc40ad4e137f921b88f43cbabf7c04` |
| 43 | `lemma` | [trim](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/declarations/trim--d50fd8aad2e6f29abec277cf.md) | 507 | `result-track:d50fd8aad2e6f29abec277cf0f8ab83a3a84545ba33e4dbec029f5336f7e4f9c` |
| 44 | `lemma` | [measure_ge_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/declarations/measure-ge-le--a2641b3803d976214ba990f5.md) | 520 | `result-track:a2641b3803d976214ba990f519dd1eb6168daf21c58c714f179da93f80440fac` |
| 45 | `lemma` | [add_of_indepFun](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/declarations/add-of-indepfun--93e4fde27827cfbb1a6505f4.md) | 529 | `result-track:93e4fde27827cfbb1a6505f4b57009159e3dd01a87b465c0d19f182f24da788a` |
| 46 | `lemma` | [sum_of_iIndepFun_of_forall_aemeasurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/declarations/sum-of-iindepfun-of-forall-aemeasurable--2b0a9e737ed9644a6dcf5a68.md) | 548 | `result-track:2b0a9e737ed9644a6dcf5a682eb0f743d7c6fc1a5ddbb6634683e30e12a74d99` |
| 47 | `lemma` | [sum_of_iIndepFun](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/declarations/sum-of-iindepfun--2f58fceba29bb5170664eaef.md) | 565 | `result-track:2f58fceba29bb5170664eaef206ecedb1cb5db82b87d0e58b9bab82fdaf0dbc1` |
| 48 | `lemma` | [measure_sum_ge_le_of_iIndepFun](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/declarations/measure-sum-ge-le-of-iindepfun--07b004943538fa0d7db6e72a.md) | 577 | `result-track:07b004943538fa0d7db6e72ac58b6d807d67e7d30c2f005fe1a57081855d0901` |
| 49 | `lemma` | [measure_sum_range_ge_le_of_iIndepFun](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/declarations/measure-sum-range-ge-le-of-iindepfun--151ab75bc68fcbb3875b1ca4.md) | 584 | `result-track:151ab75bc68fcbb3875b1ca425dd8435113451aa57c508be1f0bdd9d5270d854` |
| 50 | `lemma` | [HasSubgaussianMGF_add_of_HasCondSubgaussianMGF](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/declarations/hassubgaussianmgf-add-of-hascondsubgaussianmgf--7507b0ebf441a8df23956ea9.md) | 605 | `result-track:7507b0ebf441a8df23956ea99d3752b8859aa4dcac8b8f6a57c4fcd04bb84b0f` |
| 51 | `lemma` | [HasSubgaussianMGF_sum_of_HasCondSubgaussianMGF](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/declarations/hassubgaussianmgf-sum-of-hascondsubgaussianmgf--0467bc03cefda77d462ea407.md) | 629 | `result-track:0467bc03cefda77d462ea4078d6c7ab2a145084eb28580b52b008c717ad33da1` |
| 52 | `lemma` | [measure_sum_ge_le_of_HasCondSubgaussianMGF](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/declarations/measure-sum-ge-le-of-hascondsubgaussianmgf--a6e9a0c5c76415344f37aa78.md) | 649 | `result-track:a6e9a0c5c76415344f37aa7832e8b6f79cb127b8ca75a2301a979501d588893f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
