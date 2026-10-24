# Verification target: GRWTSK.Algebra.LinearAlgebra.Module.Variant1fcd7dfe7ea26bcb09a5218674c5552d3d707634a4f365274225905bf1a04912

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e5e7afb83580a4db7ce93f2c12b64079a967c2e0",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Module/Variant1fcd7dfe7ea26bcb09a5218674c5552d3d707634a4f365274225905bf1a04912.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant1fcd7dfe7ea26bcb09a5218674c5552d3d707634a4f365274225905bf1a04912.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant1fcd7dfe7ea26bcb09a5218674c5552d3d707634a4f365274225905bf1a04912.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e5e7afb83580a4db7ce93f2c12b64079a967c2e0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Module/Variant1fcd7dfe7ea26bcb09a5218674c5552d3d707634a4f365274225905bf1a04912.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Module/Variant1fcd7dfe7ea26bcb09a5218674c5552d3d707634a4f365274225905bf1a04912.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Prod` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ConvexSpace.ofModule](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant1fcd7dfe7ea26bcb09a5218674c5552d3d707634a4f365274225905bf1a04912.lean/declarations/convexspace-ofmodule--179a5199306357d1c37ed5de.md) | 54 | `declaration-track:179a5199306357d1c37ed5dee055ad10faa5272fcb2345318064ae1953d81b8b` |
| 2 | `instance` | [convexSpaceSelf](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant1fcd7dfe7ea26bcb09a5218674c5552d3d707634a4f365274225905bf1a04912.lean/declarations/convexspaceself--a00ef197b339b113e475ab88.md) | 69 | `declaration-track:a00ef197b339b113e475ab88d88df19acc1db8bf585acf14663b33019756c7ca` |
| 3 | `class` | [IsModuleConvexSpace](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant1fcd7dfe7ea26bcb09a5218674c5552d3d707634a4f365274225905bf1a04912.lean/declarations/ismoduleconvexspace--7b3d85cd45f5cf9dbb68a911.md) | 73 | `declaration-track:7b3d85cd45f5cf9dbb68a9118415f76c58e84d828992bc53eaeafbe3650d81ea` |
| 4 | `instance` | [IsModuleConvexSpace.of_module](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant1fcd7dfe7ea26bcb09a5218674c5552d3d707634a4f365274225905bf1a04912.lean/declarations/ismoduleconvexspace-of-module--c984679eb27efaf669455938.md) | 83 | `declaration-track:c984679eb27efaf669455938ff60c6816768f0dd6d18b9bddd1ae8dfe7572230` |
| 5 | `lemma` | [isModuleConvexSpace_self](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant1fcd7dfe7ea26bcb09a5218674c5552d3d707634a4f365274225905bf1a04912.lean/declarations/ismoduleconvexspace-self--657c283e91f402773178de89.md) | 87 | `result-track:657c283e91f402773178de89f6f907f94157b39dc103a8862c4374790e11a6ae` |
| 6 | `lemma` | [iConvexComb_eq_sum](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant1fcd7dfe7ea26bcb09a5218674c5552d3d707634a4f365274225905bf1a04912.lean/declarations/iconvexcomb-eq-sum--2aa3b0d03ad84233817fc310.md) | 95 | `result-track:2aa3b0d03ad84233817fc3104fafe5c60f242b3a3db610bac2573ab9d8fe0b2d` |
| 7 | `lemma` | [StdSimplex.affineMapMk_apply_eq_sum_of_fintype](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant1fcd7dfe7ea26bcb09a5218674c5552d3d707634a4f365274225905bf1a04912.lean/declarations/stdsimplex-affinemapmk-apply-eq-sum-of-fintype--ac677c9b0e4963243d37217d.md) | 99 | `result-track:ac677c9b0e4963243d37217d93128dccf2dfe7f085bf3e527c1e7ebbde037104` |
| 8 | `lemma` | [StdSimplex.coe_affineMapMk_of_fintype](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant1fcd7dfe7ea26bcb09a5218674c5552d3d707634a4f365274225905bf1a04912.lean/declarations/stdsimplex-coe-affinemapmk-of-fintype--36975784361834738146d915.md) | 104 | `result-track:36975784361834738146d915487365733cb3092a760bbfbc28726f827e5dca72` |
| 9 | `lemma` | [convexCombPair_eq_sum](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant1fcd7dfe7ea26bcb09a5218674c5552d3d707634a4f365274225905bf1a04912.lean/declarations/convexcombpair-eq-sum--8d6e638bc391659c36eac737.md) | 112 | `result-track:8d6e638bc391659c36eac737552b1de21027b89acbc08ea07df346fef76c0a04` |
| 10 | `lemma` | [IsAffineMap.map_sum_weights](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant1fcd7dfe7ea26bcb09a5218674c5552d3d707634a4f365274225905bf1a04912.lean/declarations/isaffinemap-map-sum-weights--a5975a46a94bc041878f05d8.md) | 116 | `result-track:a5975a46a94bc041878f05d82493a8c59b0ce947ce21cb442f6685fe1ca46bae` |
| 11 | `lemma` | [IsAffineMap.map_smul_add_smul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant1fcd7dfe7ea26bcb09a5218674c5552d3d707634a4f365274225905bf1a04912.lean/declarations/isaffinemap-map-smul-add-smul--38f7462f7cb392155eed4ea7.md) | 120 | `result-track:38f7462f7cb392155eed4ea70c928edf98d61ad19eedd93bc5d0109ca38aedb7` |
| 12 | `lemma` | [isConvexSet_coe](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant1fcd7dfe7ea26bcb09a5218674c5552d3d707634a4f365274225905bf1a04912.lean/declarations/isconvexset-coe--1ce3ede329b8c6214aad5370.md) | 124 | `result-track:1ce3ede329b8c6214aad537076e6d21e0c0dee08ff135641fd9490774c62fefa` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant1fcd7dfe7ea26bcb09a5218674c5552d3d707634a4f365274225905bf1a04912.lean/declarations/instance--08278f3f2153a0d8cdf6b997.md) | 129 | `declaration-track:08278f3f2153a0d8cdf6b9975f5a2323b78856d3ad3518e3942a48cb24326710` |
| 14 | `lemma` | [subtypeVal_submodule_sConvexComb](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant1fcd7dfe7ea26bcb09a5218674c5552d3d707634a4f365274225905bf1a04912.lean/declarations/subtypeval-submodule-sconvexcomb--2c25156f2acfd71db638a9d5.md) | 132 | `result-track:2c25156f2acfd71db638a9d59826c2638c3d66c0a6b462dfd01f91a21bb5f3ae` |
| 15 | `lemma` | [subtypeVal_submodule_iConvexComb](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant1fcd7dfe7ea26bcb09a5218674c5552d3d707634a4f365274225905bf1a04912.lean/declarations/subtypeval-submodule-iconvexcomb--2159f6386e1f826a0e0251b2.md) | 135 | `result-track:2159f6386e1f826a0e0251b25f3c422212069a66df47f6af15a945b545783b2a` |
| 16 | `lemma` | [subtypeVal_submodule_convexCombPair](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant1fcd7dfe7ea26bcb09a5218674c5552d3d707634a4f365274225905bf1a04912.lean/declarations/subtypeval-submodule-convexcombpair--d716aac8219000bfe08a2ece.md) | 138 | `result-track:d716aac8219000bfe08a2ece44855ec4c23cb4a15b50d5fb4e6e237da29df50a` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant1fcd7dfe7ea26bcb09a5218674c5552d3d707634a4f365274225905bf1a04912.lean/declarations/instance--5cc80fefd5ab56bf70b73db0.md) | 142 | `declaration-track:5cc80fefd5ab56bf70b73db0139cc48a377882d30eb22dcd518c36a7bc430726` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant1fcd7dfe7ea26bcb09a5218674c5552d3d707634a4f365274225905bf1a04912.lean/declarations/instance--8a8a67449ac39217446a03d6.md) | 144 | `declaration-track:8a8a67449ac39217446a03d622b8bd435289688542a2c9af055a3f6a0cfc1143` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant1fcd7dfe7ea26bcb09a5218674c5552d3d707634a4f365274225905bf1a04912.lean/declarations/instance--55fc6d9ea66b5277fadb3801.md) | 147 | `declaration-track:55fc6d9ea66b5277fadb3801c454f2c03fe635ab9c066212ca7e7362aa11241a` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant1fcd7dfe7ea26bcb09a5218674c5552d3d707634a4f365274225905bf1a04912.lean/declarations/instance--8f0c1e25386b0b0690473316.md) | 152 | `declaration-track:8f0c1e25386b0b069047331623117834a5b3288e2c111164903e1a26ddc09829` |
| 21 | `lemma` | [IsAffineMap.linearMap](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant1fcd7dfe7ea26bcb09a5218674c5552d3d707634a4f365274225905bf1a04912.lean/declarations/isaffinemap-linearmap--77f755d98c16240c5663b97a.md) | 156 | `result-track:77f755d98c16240c5663b97a2ebe6a29552c6db5a472aca96357f0bc2606c687` |
| 22 | `lemma` | [isAffineMap_add](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant1fcd7dfe7ea26bcb09a5218674c5552d3d707634a4f365274225905bf1a04912.lean/declarations/isaffinemap-add--4702f9383354a06417afa664.md) | 161 | `result-track:4702f9383354a06417afa664ad939c16df47c8e02b3910017ece9864e3f90d36` |
| 23 | `lemma` | [IsAffineMap.add](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant1fcd7dfe7ea26bcb09a5218674c5552d3d707634a4f365274225905bf1a04912.lean/declarations/isaffinemap-add--5fe774a11a74b78f20c10431.md) | 168 | `result-track:5fe774a11a74b78f20c10431282a76d06543251f51a52f56a040b02e6edd5a9b` |
| 24 | `lemma` | [isAffineMap_const_smul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant1fcd7dfe7ea26bcb09a5218674c5552d3d707634a4f365274225905bf1a04912.lean/declarations/isaffinemap-const-smul--fe6e6d1946b70fe6a3d84846.md) | 175 | `result-track:fe6e6d1946b70fe6a3d8484692128a795aa17659200087d4a83dc39c2e4e9d76` |
| 25 | `lemma` | [IsAffineMap.const_smul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant1fcd7dfe7ea26bcb09a5218674c5552d3d707634a4f365274225905bf1a04912.lean/declarations/isaffinemap-const-smul--cd64c749287b3177a2f383bc.md) | 182 | `result-track:cd64c749287b3177a2f383bc101781f074c42d9c676c52565bba6b3ec67738f6` |
| 26 | `lemma` | [IsStarConvexSet.add](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant1fcd7dfe7ea26bcb09a5218674c5552d3d707634a4f365274225905bf1a04912.lean/declarations/isstarconvexset-add--59402e3ae26c7276c8cc6713.md) | 188 | `result-track:59402e3ae26c7276c8cc6713dc4108ec2126047e0e4b825cf22547102748116b` |
| 27 | `instance` | [_root_.GRWTSK.Algebra.LinearAlgebra.IsModuleConvexSpace.Variant3d5a341514d280e0e3037a4e0674978a5790c4d38e275a818c0bc11e01802ab2.SMulCommClass.toIsConvexCombComm](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant1fcd7dfe7ea26bcb09a5218674c5552d3d707634a4f365274225905bf1a04912.lean/declarations/root-grwtsk-algebra-linearalgebra-ismoduleconvexspace-variant3d5a341514d--da8c958f8d8e92a21188830c.md) | 201 | `declaration-track:da8c958f8d8e92a21188830caccdd1948c45ea54fa3064bddb78d9d6c2c236d6` |
| 28 | `lemma` | [StdSimplex.isAffineMap_weights](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant1fcd7dfe7ea26bcb09a5218674c5552d3d707634a4f365274225905bf1a04912.lean/declarations/stdsimplex-isaffinemap-weights--92a47e40c0772626ea713ffc.md) | 210 | `result-track:92a47e40c0772626ea713ffc7bd2483176465dbb71a68de4474b5a7e83828b35` |
| 29 | `lemma` | [isAffineMap_neg](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant1fcd7dfe7ea26bcb09a5218674c5552d3d707634a4f365274225905bf1a04912.lean/declarations/isaffinemap-neg--ec72e65dc3d1386e6ada43e9.md) | 221 | `result-track:ec72e65dc3d1386e6ada43e94c55925191e7911deb6f6aed5e1fa11e5bb38624` |
| 30 | `lemma` | [isAffineMap_sub](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant1fcd7dfe7ea26bcb09a5218674c5552d3d707634a4f365274225905bf1a04912.lean/declarations/isaffinemap-sub--f031f1840c74ae7d5a2da8a3.md) | 224 | `result-track:f031f1840c74ae7d5a2da8a32a1f04cf13989dd6d85f8dfc7313150c82963e86` |
| 31 | `lemma` | [IsAffineMap.neg](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant1fcd7dfe7ea26bcb09a5218674c5552d3d707634a4f365274225905bf1a04912.lean/declarations/isaffinemap-neg--fcd6446420e4e6a683378576.md) | 231 | `result-track:fcd6446420e4e6a683378576efb587c08eb38927e5a0bb269e2867d544069a11` |
| 32 | `lemma` | [IsAffineMap.sub](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant1fcd7dfe7ea26bcb09a5218674c5552d3d707634a4f365274225905bf1a04912.lean/declarations/isaffinemap-sub--6389d5d630657c5b95804cbd.md) | 235 | `result-track:6389d5d630657c5b95804cbd38b3a3047d56adb6560d5f6bfbea9db49b0eec2f` |
| 33 | `lemma` | [isAffineMap_neg_iff](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant1fcd7dfe7ea26bcb09a5218674c5552d3d707634a4f365274225905bf1a04912.lean/declarations/isaffinemap-neg-iff--9a108a5c34dc3ba3a1c3c477.md) | 239 | `result-track:9a108a5c34dc3ba3a1c3c477f79ee9ab536e15813ab41b424716cb79211f020e` |
| 34 | `lemma` | [IsStarConvexSet.neg](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant1fcd7dfe7ea26bcb09a5218674c5552d3d707634a4f365274225905bf1a04912.lean/declarations/isstarconvexset-neg--5231cdb2b9e5e00b6c991639.md) | 245 | `result-track:5231cdb2b9e5e00b6c991639393c3222702c1552e054fe255ea28db7c196a830` |
| 35 | `lemma` | [IsStarConvexSet.sub](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant1fcd7dfe7ea26bcb09a5218674c5552d3d707634a4f365274225905bf1a04912.lean/declarations/isstarconvexset-sub--97316687fba3ef5bf0e9bfca.md) | 248 | `result-track:97316687fba3ef5bf0e9bfca0fb20c51ab93969275538c5905b8804d6ec3a453` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
