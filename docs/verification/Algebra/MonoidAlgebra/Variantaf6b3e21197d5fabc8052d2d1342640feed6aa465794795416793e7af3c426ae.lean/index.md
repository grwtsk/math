# Verification target: GRWTSK.Algebra.MonoidAlgebra.Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9768d1bb74c602c76bba0c123336a06e54408c41",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean/index.md) · [Full source](../../../../mathematics/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9768d1bb74c602c76bba0c123336a06e54408c41`.

Source path: `GRWTSK/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isGroupLikeElem_single_one](../../../../mathematics/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean/declarations/isgrouplikeelem-single-one--a32e9c054157279681ea4771.md) | 53 | `result-track:a32e9c054157279681ea47716a76c2654987bd673472dda4388dc0423726e160` |
| 2 | `lemma` | [span_isGroupLikeElem](../../../../mathematics/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean/declarations/span-isgrouplikeelem--ad81a9c2f4dead345bd838c2.md) | 59 | `result-track:ad81a9c2f4dead345bd838c27a3e9ff08f00ca3f6b8272cfc9f732b20475a0ec` |
| 3 | `instance` | [instBialgebra](../../../../mathematics/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean/declarations/instbialgebra--6499a2cebdc007df352bc276.md) | 69 | `declaration-track:6499a2cebdc007df352bc2766a90909bb4566abb4a341ceb04080902618667f7` |
| 4 | `def` | [mapDomainBialgHom](../../../../mathematics/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean/declarations/mapdomainbialghom--3aa484d6df5ec8aba5b2ba63.md) | 91 | `declaration-track:3aa484d6df5ec8aba5b2ba630f2248676d09630ca5a111ccf1e8a8102e925ed6` |
| 5 | `lemma` | [mapDomainBialgHom_id](../../../../mathematics/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean/declarations/mapdomainbialghom-id--ad246a61a3bd36153f8a9b3f.md) | 95 | `result-track:ad246a61a3bd36153f8a9b3f8e69454b84ded440eb3ec2d573e8d2211243f543` |
| 6 | `lemma` | [mapDomainBialgHom_comp](../../../../mathematics/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean/declarations/mapdomainbialghom-comp--dcbc3697cbb27e069ff24674.md) | 98 | `result-track:dcbc3697cbb27e069ff246740bcb2aa7864e2f566053fa6dbe7c0e5e3ee90403` |
| 7 | `lemma` | [mapDomainBialgHom_mapDomainBialgHom](../../../../mathematics/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean/declarations/mapdomainbialghom-mapdomainbialghom--7a61deefa3163e6b7ba099b5.md) | 103 | `result-track:7a61deefa3163e6b7ba099b543a8a73a52631cc02f73dcb0a53ee991d91575cd` |
| 8 | `lemma` | [mapDomainBialgHom_single](../../../../mathematics/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean/declarations/mapdomainbialghom-single--b8c725cec523f319e3fd7418.md) | 108 | `result-track:b8c725cec523f319e3fd7418f2d33d0b38a0de9f0f2f7b75ad34da55d289829c` |
| 9 | `lemma` | [bialgHom_ext](../../../../mathematics/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean/declarations/bialghom-ext--c7a9ae8416d20b0c08cb342d.md) | 122 | `result-track:c7a9ae8416d20b0c08cb342d8326068a42829776ab5dabd013f9233f65dd7c0d` |
| 10 | `lemma` | [bialgHom_ext'](../../../../mathematics/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean/declarations/bialghom-ext--4005c55d9378489f8ef02411.md) | 129 | `result-track:4005c55d9378489f8ef02411a8ca56270bf768fa6db640b905578911353762da` |
| 11 | `lemma` | [counit_domCongr](../../../../mathematics/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean/declarations/counit-domcongr--81a853137b69b7444cccabf7.md) | 136 | `result-track:81a853137b69b7444cccabf7f4e20c2d05251f97d49b88c261b2dec2dc0e3186` |
| 12 | `def` | [domCongrBialgEquiv](../../../../mathematics/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean/declarations/domcongrbialgequiv--8b037efd4030e145acfbd95d.md) | 144 | `declaration-track:8b037efd4030e145acfbd95de8001f898c6fe3f1df6d16a3751cb07a04379cde` |
| 13 | `def` | [bialgEquivOfSubsingleton](../../../../mathematics/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean/declarations/bialgequivofsubsingleton--5f446bd522429ff8ed046364.md) | 154 | `declaration-track:5f446bd522429ff8ed046364715d9ffd30a5d410cd9957b799f787971ffb413d` |
| 14 | `lemma` | [isGroupLikeElem_of](../../../../mathematics/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean/declarations/isgrouplikeelem-of--4723892e125df7e0d4070157.md) | 164 | `result-track:4723892e125df7e0d4070157facd0deb4e140a8de8379bd515b672b418d65ba5` |
| 15 | `def` | [liftGroupLikeBialgHom](../../../../mathematics/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean/declarations/liftgrouplikebialghom--e44d32d4720edd28c031e05c.md) | 168 | `declaration-track:e44d32d4720edd28c031e05ce2054a943c66f1325e72716ce79c5ac31f11f734` |
| 16 | `def` | [toAdditiveBialgEquiv](../../../../mathematics/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean/declarations/toadditivebialgequiv--3c1639a4b3a90a8e1b5a88b9.md) | 177 | `declaration-track:3c1639a4b3a90a8e1b5a88b96249c4dcef6b255d07c7920034c8ccfcb7d77a6b` |
| 17 | `lemma` | [toAdditiveBialgEquiv_single](../../../../mathematics/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean/declarations/toadditivebialgequiv-single--a0b5794d58193dd2ea183936.md) | 184 | `result-track:a0b5794d58193dd2ea183936f5ad5afcc7d334ed691227b7252c1772aa19ed2a` |
| 18 | `def` | [liftMulEquiv](../../../../mathematics/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean/declarations/liftmulequiv--5c8692d1f8f854efd5c0e620.md) | 198 | `declaration-track:5c8692d1f8f854efd5c0e6209215b4576e8862a94b6a6a8e69cea7b380a752c0` |
| 19 | `lemma` | [convMul_algHom_single_one](../../../../mathematics/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean/declarations/convmul-alghom-single-one--5dce92eb36da17d2f8f1f355.md) | 203 | `result-track:5dce92eb36da17d2f8f1f355b842cf78f3582e550c5c6297eb73a61050092055` |
| 20 | `lemma` | [convMul_bialgHom_single_one](../../../../mathematics/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean/declarations/convmul-bialghom-single-one--73bb8a786f0e4fc989415442.md) | 211 | `result-track:73bb8a786f0e4fc9894154424f704cc804400a70994744ec3f1964a8210e2756` |
| 21 | `lemma` | [mapDomainBialgHom_mul](../../../../mathematics/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean/declarations/mapdomainbialghom-mul--1e604bcb61235ecfe8b0b9cb.md) | 223 | `result-track:1e604bcb61235ecfe8b0b9cb44fe4d489753af8410a6c097ed8676b8f545db0e` |
| 22 | `lemma` | [comulAlgHom_comp_mapRingHom](../../../../mathematics/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean/declarations/comulalghom-comp-mapringhom--bc4d131da96e45d0f34ffe2e.md) | 227 | `result-track:bc4d131da96e45d0f34ffe2ec73a5f0c0db319f569780016b4bc310911b7b28c` |
| 23 | `lemma` | [counitAlgHom_comp_mapRingHom](../../../../mathematics/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean/declarations/counitalghom-comp-mapringhom--eb3a01a9f6609fa5ab3d4a09.md) | 232 | `result-track:eb3a01a9f6609fa5ab3d4a0953f51e4d413b521cef0d0c9df23eff438ecb66de` |
| 24 | `lemma` | [isGroupLikeElem_iff_mem_range_single_one](../../../../mathematics/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean/declarations/isgrouplikeelem-iff-mem-range-single-one--2684ee492bf5c9545a7a8efc.md) | 244 | `result-track:2684ee492bf5c9545a7a8efcd9cb2ea6fe835d38c95bf66620dfce3ae0081f28` |
| 25 | `lemma` | [isGroupLikeElem_iff_mem_range_of](../../../../mathematics/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean/declarations/isgrouplikeelem-iff-mem-range-of--9da6000747f51ed699b3f881.md) | 260 | `result-track:9da6000747f51ed699b3f8810ed4aef426eba4e1d1c6fcdc8f2179abb6fcbd8f` |
| 26 | `def` | [mapDomainOfBialgHomFun](../../../../mathematics/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean/declarations/mapdomainofbialghomfun--9c07a9583b357ca90b7b766c.md) | 269 | `declaration-track:9c07a9583b357ca90b7b766c3edf02c53c94e1e7f8952db8678b524bd7a987e2` |
| 27 | `lemma` | [single_mapDomainOfBialgHomFun_one](../../../../mathematics/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean/declarations/single-mapdomainofbialghomfun-one--2953777bba9ed23d89e10d42.md) | 273 | `result-track:2953777bba9ed23d89e10d4226e73b089948fff2cf3552bdb1cf5df2854c3943` |
| 28 | `def` | [mapDomainOfBialgHom](../../../../mathematics/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean/declarations/mapdomainofbialghom--2508695774b9ffe88afeed04.md) | 286 | `declaration-track:2508695774b9ffe88afeed044f863295134e3c8d2299ca747499236db5b228b2` |
| 29 | `lemma` | [single_mapDomainOfBialgHom](../../../../mathematics/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean/declarations/single-mapdomainofbialghom--c09873b51561840a94cc4101.md) | 296 | `result-track:c09873b51561840a94cc4101820ae63610f39a1e119492b988070ee99ac94180` |
| 30 | `lemma` | [mapDomainBialgHom_mapDomainOfBialgHom](../../../../mathematics/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean/declarations/mapdomainbialghom-mapdomainofbialghom--87b85208c490e50cb7ea7771.md) | 302 | `result-track:87b85208c490e50cb7ea7771e173cafb2d22edeb6b1a8df4f6c1a73673a60a60` |
| 31 | `lemma` | [mapDomainOfBialgHom_mapDomainBialgHom](../../../../mathematics/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean/declarations/mapdomainofbialghom-mapdomainbialghom--a8fd1ae9046b2ce3ef2fda13.md) | 310 | `result-track:a8fd1ae9046b2ce3ef2fda13552a4c0e6238ceddc6ff20759e5c906cf98d994c` |
| 32 | `lemma` | [mapDomainOfBialgHom_id](../../../../mathematics/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean/declarations/mapdomainofbialghom-id--b6ddff1e91faeae3f0c5d051.md) | 315 | `result-track:b6ddff1e91faeae3f0c5d0515628f01721168aaf4210e77d9f5b2545eae5314e` |
| 33 | `lemma` | [mapDomainOfBialgHom_comp](../../../../mathematics/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean/declarations/mapdomainofbialghom-comp--aabce88370d54084737ebd94.md) | 319 | `result-track:aabce88370d54084737ebd94df66fdcf3fd2c18fa3b08c6c1a8711eec07c547d` |
| 34 | `def` | [mapDomainBialgHomEquiv](../../../../mathematics/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean/declarations/mapdomainbialghomequiv--fdbb8a8d8d392f2039fa12ed.md) | 331 | `declaration-track:fdbb8a8d8d392f2039fa12edd24c40a1db60f12c1b88cea2d14773604b651b9e` |
| 35 | `def` | [mapDomainBialgHomMulEquiv](../../../../mathematics/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean/declarations/mapdomainbialghommulequiv--78846121cae01062a42d2703.md) | 345 | `declaration-track:78846121cae01062a42d2703641f55b6acb4992fa1d65115eed203a1fc843874` |
| 36 | `lemma` | [bialgHom_ext'](../../../../mathematics/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean/declarations/bialghom-ext--799769e47a186dc7c8ae77e1.md) | 361 | `result-track:799769e47a186dc7c8ae77e162daac86bb70da8cf1e1f0381c5dde0a4a4bf66e` |
| 37 | `lemma` | [isGroupLikeElem_of](../../../../mathematics/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean/declarations/isgrouplikeelem-of--a2bc560211eec783ccead4cd.md) | 367 | `result-track:a2bc560211eec783ccead4cd95069e0fbe200593dcfb89784de43369a7cceef7` |
| 38 | `def` | [toMultiplicativeBialgEquiv](../../../../mathematics/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean/declarations/tomultiplicativebialgequiv--cd8751d30f1bdcbb2419ec23.md) | 374 | `declaration-track:cd8751d30f1bdcbb2419ec23208ca0730b016c20fed1481ddcd50cf6edacc81b` |
| 39 | `lemma` | [toMultiplicativeBialgEquiv_single](../../../../mathematics/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean/declarations/tomultiplicativebialgequiv-single--0cee763d6b36ad8b53395c39.md) | 381 | `result-track:0cee763d6b36ad8b53395c39814b502f9b1b5deed4618c80d3caa6411f83e88a` |
| 40 | `def` | [liftMulEquiv](../../../../mathematics/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean/declarations/liftmulequiv--7fd233a95f4a1fd1f3a78aeb.md) | 392 | `declaration-track:7fd233a95f4a1fd1f3a78aeb48aeef274dca10d55f585737490e17dec18e1011` |
| 41 | `lemma` | [comulAlgHom_comp_mapRingHom](../../../../mathematics/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean/declarations/comulalghom-comp-mapringhom--e6e429e75ee2e12cfc784281.md) | 401 | `result-track:e6e429e75ee2e12cfc78428126d27b054f34daadc5154205e473b182ac9def57` |
| 42 | `lemma` | [counitAlgHom_comp_mapRingHom](../../../../mathematics/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean/declarations/counitalghom-comp-mapringhom--1daf02175681f81e661894eb.md) | 407 | `result-track:1daf02175681f81e661894ebe5749484bcbf69034e6c29869e2d9111c297adbc` |
| 43 | `lemma` | [isGroupLikeElem_iff_mem_range_of](../../../../mathematics/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean/declarations/isgrouplikeelem-iff-mem-range-of--506c20f813aa5d5c0e845c68.md) | 420 | `result-track:506c20f813aa5d5c0e845c6808aeb481b2cc615428c9b23b3aeafc07af394dc0` |
| 44 | `def` | [mapDomainBialgHomAddEquiv](../../../../mathematics/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean/declarations/mapdomainbialghomaddequiv--475814fa0f8be3d6bd033843.md) | 430 | `declaration-track:475814fa0f8be3d6bd03384319587a80eb3349959d8f3994d1ec9a6de708200a` |
| 45 | `instance` | [instBialgebra](../../../../mathematics/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean/declarations/instbialgebra--f810f0063159b5061d11e1e9.md) | 444 | `declaration-track:f810f0063159b5061d11e1e9047b6dcd21c3fccc5070e32f0059cb34bb62938b` |
| 46 | `theorem` | [comul_T](../../../../mathematics/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean/declarations/comul-t--2fb6b6db079b41e2d4ab2e64.md) | 448 | `result-track:2fb6b6db079b41e2d4ab2e646c46f9f30a3f3c42388f4ef63bc0fc9c7dece148` |
| 47 | `theorem` | [counit_T](../../../../mathematics/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean/declarations/counit-t--072012fba0d69688ccca4818.md) | 451 | `result-track:072012fba0d69688ccca48186605f58e5595fc7d8126f8930061980f3aee4855` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
