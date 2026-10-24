# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Deriv.Variantc3c131541802c1d4a440429d336dd41a89bfdbb2fb6b32c13e525e73517d35a1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "20fd58bb7a9783762170cccdee45c4347bfff5e7",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantc3c131541802c1d4a440429d336dd41a89bfdbb2fb6b32c13e525e73517d35a1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantc3c131541802c1d4a440429d336dd41a89bfdbb2fb6b32c13e525e73517d35a1.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantc3c131541802c1d4a440429d336dd41a89bfdbb2fb6b32c13e525e73517d35a1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `20fd58bb7a9783762170cccdee45c4347bfff5e7`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantc3c131541802c1d4a440429d336dd41a89bfdbb2fb6b32c13e525e73517d35a1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantc3c131541802c1d4a440429d336dd41a89bfdbb2fb6b32c13e525e73517d35a1.lean.json)

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
| 1 | `def` | [derivCLM](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantc3c131541802c1d4a440429d336dd41a89bfdbb2fb6b32c13e525e73517d35a1.lean/declarations/derivclm--b59e16ab96be942ec4fcb164.md) | 68 | `declaration-track:b59e16ab96be942ec4fcb164a19eb9a5d7ee1d5179cb76ffd5760ca99b2300ae` |
| 2 | `theorem` | [derivCLM_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantc3c131541802c1d4a440429d336dd41a89bfdbb2fb6b32c13e525e73517d35a1.lean/declarations/derivclm-apply--f71809d58ae5a622e9d4b1a9.md) | 78 | `result-track:f71809d58ae5a622e9d4b1a96186b6519201f67ea17cb9f59a8c8fa006f7d528` |
| 3 | `theorem` | [hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantc3c131541802c1d4a440429d336dd41a89bfdbb2fb6b32c13e525e73517d35a1.lean/declarations/hasderivat--bf23d2c42dea294dba27fb18.md) | 81 | `result-track:bf23d2c42dea294dba27fb187db7426e3c483fae7b8b2405d754385ff0f1e5d4` |
| 4 | `def` | [fderivCLM](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantc3c131541802c1d4a440429d336dd41a89bfdbb2fb6b32c13e525e73517d35a1.lean/declarations/fderivclm--9a219f6e316d6dc304d55f47.md) | 92 | `declaration-track:9a219f6e316d6dc304d55f471d569f8038bec8b9e2cf1fb5d6af37b82d06ebf2` |
| 5 | `theorem` | [fderivCLM_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantc3c131541802c1d4a440429d336dd41a89bfdbb2fb6b32c13e525e73517d35a1.lean/declarations/fderivclm-apply--0bb65b05f9b63c3c82ef8f9d.md) | 101 | `result-track:0bb65b05f9b63c3c82ef8f9d101f06c805d0f509b3036a639249d0020169d770` |
| 6 | `theorem` | [hasFDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantc3c131541802c1d4a440429d336dd41a89bfdbb2fb6b32c13e525e73517d35a1.lean/declarations/hasfderivat--597c0c8c62ac3166a1f6110d.md) | 104 | `result-track:597c0c8c62ac3166a1f6110d73e92618df21793dcd3a91ca7e095faacd7d64f5` |
| 7 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantc3c131541802c1d4a440429d336dd41a89bfdbb2fb6b32c13e525e73517d35a1.lean/declarations/instance--0d931cad754c9473917ead1f.md) | 109 | `declaration-track:0d931cad754c9473917ead1f3456e8f3475540aa9d3196c847cc2bdbbc624cf2` |
| 8 | `theorem` | [lineDerivOp_apply_eq_fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantc3c131541802c1d4a440429d336dd41a89bfdbb2fb6b32c13e525e73517d35a1.lean/declarations/linederivop-apply-eq-fderiv--d0cd209cc1cb160fff8b9ea2.md) | 112 | `result-track:d0cd209cc1cb160fff8b9ea28312afe17b7f3baa37fc07ed93f4e6461905c65b` |
| 9 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantc3c131541802c1d4a440429d336dd41a89bfdbb2fb6b32c13e525e73517d35a1.lean/declarations/instance--59d255afa349c74ad921fc98.md) | 115 | `declaration-track:59d255afa349c74ad921fc98f7aba24fbd63a6741ae938c653fa3af0fb57cadc` |
| 10 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantc3c131541802c1d4a440429d336dd41a89bfdbb2fb6b32c13e525e73517d35a1.lean/declarations/instance--7f92d1ffa0324259caef9a4b.md) | 121 | `declaration-track:7f92d1ffa0324259caef9a4bd6c97307e74396af4f7f43fb4b111b92cc1f70ef` |
| 11 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantc3c131541802c1d4a440429d336dd41a89bfdbb2fb6b32c13e525e73517d35a1.lean/declarations/instance--c72f01f508fc7aa60bba8616.md) | 124 | `declaration-track:c72f01f508fc7aa60bba86162261b38c8df0b5b426eed586e29e0b1568d32b9d` |
| 12 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantc3c131541802c1d4a440429d336dd41a89bfdbb2fb6b32c13e525e73517d35a1.lean/declarations/instance--f81ff4165653cdd0c8c6d1f6.md) | 129 | `declaration-track:f81ff4165653cdd0c8c6d1f629cf2fd07e5e42aea60702520d6830405fca576f` |
| 13 | `theorem` | [lineDerivOpCLM_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantc3c131541802c1d4a440429d336dd41a89bfdbb2fb6b32c13e525e73517d35a1.lean/declarations/linederivopclm-eq--57897a59cf7898179eb76369.md) | 134 | `result-track:57897a59cf7898179eb76369cccc14126aa4fa621a7f839f1e03c8c235ae037f` |
| 14 | `theorem` | [lineDerivOp_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantc3c131541802c1d4a440429d336dd41a89bfdbb2fb6b32c13e525e73517d35a1.lean/declarations/linederivop-apply--a7769bad71f682c01a3e7a82.md) | 137 | `result-track:a7769bad71f682c01a3e7a8213d1460ea598e1afac386f91681aad2dbd006143` |
| 15 | `theorem` | [iteratedLineDerivOp_eq_iteratedFDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantc3c131541802c1d4a440429d336dd41a89bfdbb2fb6b32c13e525e73517d35a1.lean/declarations/iteratedlinederivop-eq-iteratedfderiv--0dc000e7df3e047bf4b7b4e9.md) | 140 | `result-track:0dc000e7df3e047bf4b7b4e931aa06c394198e6e28f6c7752ef2401c2e91ffcb` |
| 16 | `theorem` | [lineDerivOp_compCLMOfContinuousLinearEquiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantc3c131541802c1d4a440429d336dd41a89bfdbb2fb6b32c13e525e73517d35a1.lean/declarations/linederivop-compclmofcontinuouslinearequiv--391347d969e81646636d6a0f.md) | 154 | `result-track:391347d969e81646636d6a0fba073d09249a33a3c85d970e6366e379542839e6` |
| 17 | `theorem` | [tsupport_derivCLM_subset](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantc3c131541802c1d4a440429d336dd41a89bfdbb2fb6b32c13e525e73517d35a1.lean/declarations/tsupport-derivclm-subset--30dea3eef324207e9eb11c55.md) | 167 | `result-track:30dea3eef324207e9eb11c550cf9439311cac06810e6fb6f336622353b69349f` |
| 18 | `theorem` | [tsupport_fderivCLM_subset](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantc3c131541802c1d4a440429d336dd41a89bfdbb2fb6b32c13e525e73517d35a1.lean/declarations/tsupport-fderivclm-subset--4d2ad9022ac5546a89b49441.md) | 174 | `result-track:4d2ad9022ac5546a89b4944183bc0cd6d5a75e68c893bd814d8080bba3ceaa25` |
| 19 | `theorem` | [tsupport_lineDerivOp_subset](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantc3c131541802c1d4a440429d336dd41a89bfdbb2fb6b32c13e525e73517d35a1.lean/declarations/tsupport-linederivop-subset--a5ae25e7f7e64e95b90195cb.md) | 179 | `result-track:a5ae25e7f7e64e95b90195cba5dfb497e2d49731b233b1b56612ea9d25c4cfe3` |
| 20 | `theorem` | [tsupport_iteratedLineDerivOp_subset](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantc3c131541802c1d4a440429d336dd41a89bfdbb2fb6b32c13e525e73517d35a1.lean/declarations/tsupport-iteratedlinederivop-subset--451d96fb57ab8388528117a0.md) | 183 | `result-track:451d96fb57ab8388528117a04a4a4d742171d70d2a6e75877ea2b5feba211656` |
| 21 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantc3c131541802c1d4a440429d336dd41a89bfdbb2fb6b32c13e525e73517d35a1.lean/declarations/instance--e2f30e6f8cd120dbf9f2117d.md) | 201 | `declaration-track:e2f30e6f8cd120dbf9f2117dc3708136a714ddb137d0f6a04a49e3d88a851812` |
| 22 | `theorem` | [laplacianCLM_eq'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantc3c131541802c1d4a440429d336dd41a89bfdbb2fb6b32c13e525e73517d35a1.lean/declarations/laplacianclm-eq--5243bd614889bdfd6a954180.md) | 204 | `result-track:5243bd614889bdfd6a954180b4314e8e3be4dc7f6d494fd3c5abd1cdaa1dbd96` |
| 23 | `theorem` | [laplacian_eq_sum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantc3c131541802c1d4a440429d336dd41a89bfdbb2fb6b32c13e525e73517d35a1.lean/declarations/laplacian-eq-sum--e66b1bf2b804f13914d91ec9.md) | 206 | `result-track:e66b1bf2b804f13914d91ec97fb19e3f7718cb7ffec614711d409fa645d7c39d` |
| 24 | `theorem` | [laplacianCLM_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantc3c131541802c1d4a440429d336dd41a89bfdbb2fb6b32c13e525e73517d35a1.lean/declarations/laplacianclm-eq--01f66306a548c416273a0792.md) | 212 | `result-track:01f66306a548c416273a07921690b39e99b945a91b4b4a67b9ff3ec965e9ec9a` |
| 25 | `theorem` | [laplacian_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantc3c131541802c1d4a440429d336dd41a89bfdbb2fb6b32c13e525e73517d35a1.lean/declarations/laplacian-apply--9a7fb4aa835b3c92bcc1e4a3.md) | 216 | `result-track:9a7fb4aa835b3c92bcc1e4a396f61684d86a90ef9deea541c6e6d69b93d6375c` |
| 26 | `theorem` | [integral_bilinear_deriv_right_eq_neg_left](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantc3c131541802c1d4a440429d336dd41a89bfdbb2fb6b32c13e525e73517d35a1.lean/declarations/integral-bilinear-deriv-right-eq-neg-left--a6c715aaf0f6b6a78eb6ed7c.md) | 236 | `result-track:a6c715aaf0f6b6a78eb6ed7c1125da7d52f4966bcd16b600515c568a05f0f19d` |
| 27 | `theorem` | [integral_mul_deriv_eq_neg_deriv_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantc3c131541802c1d4a440429d336dd41a89bfdbb2fb6b32c13e525e73517d35a1.lean/declarations/integral-mul-deriv-eq-neg-deriv-mul--1de8923b1856e9bff9b3f452.md) | 247 | `result-track:1de8923b1856e9bff9b3f45264f36888d57adcb526b3546af30849c7f80b23ba` |
| 28 | `theorem` | [integral_smul_deriv_right_eq_neg_left](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantc3c131541802c1d4a440429d336dd41a89bfdbb2fb6b32c13e525e73517d35a1.lean/declarations/integral-smul-deriv-right-eq-neg-left--f4f5ea13d2fc9ebab5fc37f8.md) | 256 | `result-track:f4f5ea13d2fc9ebab5fc37f82687c89cf8518e02de896d60e2341944ed9afb82` |
| 29 | `theorem` | [integral_clm_comp_deriv_right_eq_neg_left](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantc3c131541802c1d4a440429d336dd41a89bfdbb2fb6b32c13e525e73517d35a1.lean/declarations/integral-clm-comp-deriv-right-eq-neg-left--6350868191b449a59bca90dd.md) | 263 | `result-track:6350868191b449a59bca90dd148bd350c13b52d2fb345eea831c6f559f3bcc13` |
| 30 | `theorem` | [integral_bilinear_lineDerivOp_right_eq_neg_left](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantc3c131541802c1d4a440429d336dd41a89bfdbb2fb6b32c13e525e73517d35a1.lean/declarations/integral-bilinear-linederivop-right-eq-neg-left--44ca50192599a0fdd3053be7.md) | 279 | `result-track:44ca50192599a0fdd3053be7581dd58f1e5a512da86065ad9641371c5b134b78` |
| 31 | `theorem` | [integral_mul_lineDerivOp_right_eq_neg_left](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantc3c131541802c1d4a440429d336dd41a89bfdbb2fb6b32c13e525e73517d35a1.lean/declarations/integral-mul-linederivop-right-eq-neg-left--483d5533ff1162bb7f9c5abe.md) | 292 | `result-track:483d5533ff1162bb7f9c5abecf9c55a31fab20b1dd78239fb53e41b2024bdc39` |
| 32 | `theorem` | [integral_smul_lineDerivOp_right_eq_neg_left](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantc3c131541802c1d4a440429d336dd41a89bfdbb2fb6b32c13e525e73517d35a1.lean/declarations/integral-smul-linederivop-right-eq-neg-left--8b0c6f972182c60ef8fc9d94.md) | 301 | `result-track:8b0c6f972182c60ef8fc9d9491bfb540eeb5c13b7144fdf7ebe808513a3f5922` |
| 33 | `theorem` | [integral_clm_comp_lineDerivOp_right_eq_neg_left](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantc3c131541802c1d4a440429d336dd41a89bfdbb2fb6b32c13e525e73517d35a1.lean/declarations/integral-clm-comp-linederivop-right-eq-neg-left--27a2fdc24ee791f62845f05a.md) | 308 | `result-track:27a2fdc24ee791f62845f05a41abe763a7036b135df9590bb6e182faf36140fc` |
| 34 | `theorem` | [integral_bilinear_laplacian_right_eq_left](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantc3c131541802c1d4a440429d336dd41a89bfdbb2fb6b32c13e525e73517d35a1.lean/declarations/integral-bilinear-laplacian-right-eq-left--3e96003044dfc2ead8ef380a.md) | 330 | `result-track:3e96003044dfc2ead8ef380a4815720017d5e40ab9c4f12c0553736efdbe0be9` |
| 35 | `theorem` | [integral_mul_laplacian_right_eq_left](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantc3c131541802c1d4a440429d336dd41a89bfdbb2fb6b32c13e525e73517d35a1.lean/declarations/integral-mul-laplacian-right-eq-left--5a9e17531e85435b9419c339.md) | 344 | `result-track:5a9e17531e85435b9419c339fb395889f27d7e3ba14dbd28b4c8c407a32c4813` |
| 36 | `theorem` | [integral_smul_laplacian_right_eq_left](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantc3c131541802c1d4a440429d336dd41a89bfdbb2fb6b32c13e525e73517d35a1.lean/declarations/integral-smul-laplacian-right-eq-left--eecfeb44165f38dd7c6ddb17.md) | 353 | `result-track:eecfeb44165f38dd7c6ddb1723b14730582d1a377b63d5ecc99e8cf6dcfa4a0f` |
| 37 | `theorem` | [integral_clm_comp_laplacian_right_eq_left](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantc3c131541802c1d4a440429d336dd41a89bfdbb2fb6b32c13e525e73517d35a1.lean/declarations/integral-clm-comp-laplacian-right-eq-left--c4df0228a621b130173f3f0f.md) | 362 | `result-track:c4df0228a621b130173f3f0f3afe9a7c028fda5c3a141f23cfcf5e1852051a8d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
