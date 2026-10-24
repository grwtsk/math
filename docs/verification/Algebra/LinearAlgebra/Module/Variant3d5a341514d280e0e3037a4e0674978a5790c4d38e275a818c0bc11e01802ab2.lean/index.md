# Verification target: GRWTSK.Algebra.LinearAlgebra.Module.Variant3d5a341514d280e0e3037a4e0674978a5790c4d38e275a818c0bc11e01802ab2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d9ce9a13803bd7ffacd3ea042fd9e7e8315b152",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Module/Variant3d5a341514d280e0e3037a4e0674978a5790c4d38e275a818c0bc11e01802ab2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3d5a341514d280e0e3037a4e0674978a5790c4d38e275a818c0bc11e01802ab2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3d5a341514d280e0e3037a4e0674978a5790c4d38e275a818c0bc11e01802ab2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d9ce9a13803bd7ffacd3ea042fd9e7e8315b152`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Module/Variant3d5a341514d280e0e3037a4e0674978a5790c4d38e275a818c0bc11e01802ab2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Module/Variant3d5a341514d280e0e3037a4e0674978a5790c4d38e275a818c0bc11e01802ab2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Prod` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ConvexSpace.ofModule](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3d5a341514d280e0e3037a4e0674978a5790c4d38e275a818c0bc11e01802ab2.lean/declarations/convexspace-ofmodule--7ef0085b78992675d850daec.md) | 46 | `declaration-track:7ef0085b78992675d850daeccbf75377df57fec785428ed866fcf37130a63265` |
| 2 | `instance` | [convexSpaceSelf](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3d5a341514d280e0e3037a4e0674978a5790c4d38e275a818c0bc11e01802ab2.lean/declarations/convexspaceself--7cbbc6ada5af2422e7e590c3.md) | 61 | `declaration-track:7cbbc6ada5af2422e7e590c386e9d02b0494a65857e345e91d6a6f245fcb0fb7` |
| 3 | `class` | [IsModuleConvexSpace](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3d5a341514d280e0e3037a4e0674978a5790c4d38e275a818c0bc11e01802ab2.lean/declarations/ismoduleconvexspace--7d6d6661ad49ba4aa40100bf.md) | 65 | `declaration-track:7d6d6661ad49ba4aa40100bfa7082d4bbdee7e22658636d6f3388c919cd123b3` |
| 4 | `instance` | [IsModuleConvexSpace.of_module](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3d5a341514d280e0e3037a4e0674978a5790c4d38e275a818c0bc11e01802ab2.lean/declarations/ismoduleconvexspace-of-module--ba7f8336b85f184687bfbaef.md) | 75 | `declaration-track:ba7f8336b85f184687bfbaef87ed040c474f0923fbd3b026021e0ae73b6f3d46` |
| 5 | `lemma` | [isModuleConvexSpace_self](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3d5a341514d280e0e3037a4e0674978a5790c4d38e275a818c0bc11e01802ab2.lean/declarations/ismoduleconvexspace-self--8be57d41feb4cfc34fd7218f.md) | 79 | `result-track:8be57d41feb4cfc34fd7218f5ef85cf1b1ea6dd441277c882fa8849202231d95` |
| 6 | `lemma` | [iConvexComb_eq_sum](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3d5a341514d280e0e3037a4e0674978a5790c4d38e275a818c0bc11e01802ab2.lean/declarations/iconvexcomb-eq-sum--ba169d0fca74dcb606afb78c.md) | 87 | `result-track:ba169d0fca74dcb606afb78c745b9b430ba6ff53767666d95f49a0bbbbd5a7f8` |
| 7 | `lemma` | [StdSimplex.affineMapMk_apply_eq_sum_of_fintype](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3d5a341514d280e0e3037a4e0674978a5790c4d38e275a818c0bc11e01802ab2.lean/declarations/stdsimplex-affinemapmk-apply-eq-sum-of-fintype--803adf9a5f53216ae9d7a986.md) | 91 | `result-track:803adf9a5f53216ae9d7a98661b84b55bae0fc4405ca8ecc28144b10e06720c0` |
| 8 | `lemma` | [StdSimplex.coe_affineMapMk_of_fintype](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3d5a341514d280e0e3037a4e0674978a5790c4d38e275a818c0bc11e01802ab2.lean/declarations/stdsimplex-coe-affinemapmk-of-fintype--55ce9649c02d305ad6c46ec0.md) | 96 | `result-track:55ce9649c02d305ad6c46ec025cea30759a15b963f6d90f3cd8fc0e85dc47f71` |
| 9 | `lemma` | [convexCombPair_eq_sum](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3d5a341514d280e0e3037a4e0674978a5790c4d38e275a818c0bc11e01802ab2.lean/declarations/convexcombpair-eq-sum--027ea927ecaa9d5448f4c226.md) | 104 | `result-track:027ea927ecaa9d5448f4c226f46ee0c58203a3417d43fc6ab7e8502ed71151e8` |
| 10 | `lemma` | [IsAffineMap.map_sum_weights](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3d5a341514d280e0e3037a4e0674978a5790c4d38e275a818c0bc11e01802ab2.lean/declarations/isaffinemap-map-sum-weights--17baa18ae073e82e57f60ef4.md) | 108 | `result-track:17baa18ae073e82e57f60ef40c23c5523b3d9a5b6f3f56cd4ef669ac58ff35ea` |
| 11 | `lemma` | [IsAffineMap.map_smul_add_smul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3d5a341514d280e0e3037a4e0674978a5790c4d38e275a818c0bc11e01802ab2.lean/declarations/isaffinemap-map-smul-add-smul--77f38524b3578e1953d3d261.md) | 112 | `result-track:77f38524b3578e1953d3d2610705d3195bb7b1527fccc058bf77bd9901db3065` |
| 12 | `lemma` | [isConvexSet_coe](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3d5a341514d280e0e3037a4e0674978a5790c4d38e275a818c0bc11e01802ab2.lean/declarations/isconvexset-coe--850f19bdec10dc913a6e24df.md) | 116 | `result-track:850f19bdec10dc913a6e24dfee97b7a41242fb869d7dcaa5a4474a175691e94c` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3d5a341514d280e0e3037a4e0674978a5790c4d38e275a818c0bc11e01802ab2.lean/declarations/instance--6ca030464f706384bbcb8676.md) | 121 | `declaration-track:6ca030464f706384bbcb8676e988d17ed1b4b373c31eb536a8a62ceb5e722495` |
| 14 | `lemma` | [subtypeVal_submodule_sConvexComb](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3d5a341514d280e0e3037a4e0674978a5790c4d38e275a818c0bc11e01802ab2.lean/declarations/subtypeval-submodule-sconvexcomb--1ecc7a1eef86e85a4b8dab67.md) | 124 | `result-track:1ecc7a1eef86e85a4b8dab67b2ce61acf2c2da7ae01ab418333a733f0b11b09f` |
| 15 | `lemma` | [subtypeVal_submodule_iConvexComb](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3d5a341514d280e0e3037a4e0674978a5790c4d38e275a818c0bc11e01802ab2.lean/declarations/subtypeval-submodule-iconvexcomb--9bf7e065a7c33f1365bc39c4.md) | 127 | `result-track:9bf7e065a7c33f1365bc39c42cc4d3325f028993323f637029a7fd6786379d25` |
| 16 | `lemma` | [subtypeVal_submodule_convexCombPair](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3d5a341514d280e0e3037a4e0674978a5790c4d38e275a818c0bc11e01802ab2.lean/declarations/subtypeval-submodule-convexcombpair--a8a4056ae011b972f2a50656.md) | 130 | `result-track:a8a4056ae011b972f2a50656b82f94fcc1e6c2683c235f5f0ce4a102f6439ea5` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3d5a341514d280e0e3037a4e0674978a5790c4d38e275a818c0bc11e01802ab2.lean/declarations/instance--37b9612b7216797e61522e4d.md) | 134 | `declaration-track:37b9612b7216797e61522e4d2ad1e9c860b9aa1cceae8b165fe7ed589a8ee83b` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3d5a341514d280e0e3037a4e0674978a5790c4d38e275a818c0bc11e01802ab2.lean/declarations/instance--6821ad35b227d7ca3a8ab583.md) | 136 | `declaration-track:6821ad35b227d7ca3a8ab5835c4b2a2b6680c35b12729f4052645d0492c29982` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3d5a341514d280e0e3037a4e0674978a5790c4d38e275a818c0bc11e01802ab2.lean/declarations/instance--02e752817e15fbd65f0c2a54.md) | 139 | `declaration-track:02e752817e15fbd65f0c2a547473cfc1e2499456554ad8a3073c608e8af3fab4` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3d5a341514d280e0e3037a4e0674978a5790c4d38e275a818c0bc11e01802ab2.lean/declarations/instance--6b56214cde1600bfbdcf18b7.md) | 144 | `declaration-track:6b56214cde1600bfbdcf18b75a935355b70fdccd638104cda054a56d0ffbcec1` |
| 21 | `lemma` | [IsAffineMap.linearMap](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3d5a341514d280e0e3037a4e0674978a5790c4d38e275a818c0bc11e01802ab2.lean/declarations/isaffinemap-linearmap--20f8b815ae6b0d06a3ef5245.md) | 148 | `result-track:20f8b815ae6b0d06a3ef5245b0d815787fac530bbfad6b77b7eab6cef1fedca6` |
| 22 | `lemma` | [isAffineMap_add](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3d5a341514d280e0e3037a4e0674978a5790c4d38e275a818c0bc11e01802ab2.lean/declarations/isaffinemap-add--f29febaa4cd5cde273be6092.md) | 153 | `result-track:f29febaa4cd5cde273be6092bf0d3bbfd046059fe11fc49c77f4d239613a1e98` |
| 23 | `lemma` | [IsAffineMap.add](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3d5a341514d280e0e3037a4e0674978a5790c4d38e275a818c0bc11e01802ab2.lean/declarations/isaffinemap-add--bc1c0e8c00f4282533e634a0.md) | 160 | `result-track:bc1c0e8c00f4282533e634a06358c0d5147e168b69a5f481dea4b66efc8931b5` |
| 24 | `lemma` | [isAffineMap_const_smul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3d5a341514d280e0e3037a4e0674978a5790c4d38e275a818c0bc11e01802ab2.lean/declarations/isaffinemap-const-smul--26f2c5c4c13eef95e4e61e96.md) | 167 | `result-track:26f2c5c4c13eef95e4e61e9630ea66e39d1231bc4fc70cba594db0cde8df790b` |
| 25 | `lemma` | [IsAffineMap.const_smul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3d5a341514d280e0e3037a4e0674978a5790c4d38e275a818c0bc11e01802ab2.lean/declarations/isaffinemap-const-smul--a19b64d167e4a17fa969f99f.md) | 174 | `result-track:a19b64d167e4a17fa969f99f0dfb6f1de75ded72a73277328063d9efdc5e8345` |
| 26 | `lemma` | [IsStarConvexSet.add](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3d5a341514d280e0e3037a4e0674978a5790c4d38e275a818c0bc11e01802ab2.lean/declarations/isstarconvexset-add--19f7f3d75615264534ed65d0.md) | 180 | `result-track:19f7f3d75615264534ed65d051c805b1b5c8cdd8dadf71ac099b73f0fd515d88` |
| 27 | `instance` | [_root_.SMulCommClass.toIsConvexCombComm](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3d5a341514d280e0e3037a4e0674978a5790c4d38e275a818c0bc11e01802ab2.lean/declarations/root-smulcommclass-toisconvexcombcomm--830b76eb2264ae880049e939.md) | 193 | `declaration-track:830b76eb2264ae880049e939f35007c83f63ba8362449d9a3c60e4f88706fffc` |
| 28 | `lemma` | [StdSimplex.isAffineMap_weights](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3d5a341514d280e0e3037a4e0674978a5790c4d38e275a818c0bc11e01802ab2.lean/declarations/stdsimplex-isaffinemap-weights--00f2485100a2061585604d0a.md) | 202 | `result-track:00f2485100a2061585604d0a32261076bc7845664eb825d6fb0959315619d5f4` |
| 29 | `lemma` | [isAffineMap_neg](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3d5a341514d280e0e3037a4e0674978a5790c4d38e275a818c0bc11e01802ab2.lean/declarations/isaffinemap-neg--d41bd2ad2d4874ea5c833d24.md) | 213 | `result-track:d41bd2ad2d4874ea5c833d24e90d1883122b16fd8b267e5d477d647973f527e9` |
| 30 | `lemma` | [isAffineMap_sub](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3d5a341514d280e0e3037a4e0674978a5790c4d38e275a818c0bc11e01802ab2.lean/declarations/isaffinemap-sub--732ef3e01a763c0c26c04662.md) | 216 | `result-track:732ef3e01a763c0c26c0466263eab552c2eed12482508d74a1f1aba119168a63` |
| 31 | `lemma` | [IsAffineMap.neg](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3d5a341514d280e0e3037a4e0674978a5790c4d38e275a818c0bc11e01802ab2.lean/declarations/isaffinemap-neg--0539aa864d26cdb1478b21bc.md) | 223 | `result-track:0539aa864d26cdb1478b21bc441f11d2031a514488f9c3e064b38df7c7c75a2e` |
| 32 | `lemma` | [IsAffineMap.sub](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3d5a341514d280e0e3037a4e0674978a5790c4d38e275a818c0bc11e01802ab2.lean/declarations/isaffinemap-sub--710e6c1fb7cfc62335d91822.md) | 227 | `result-track:710e6c1fb7cfc62335d918223101399c9b18ee3ecab07e34226e9d5bd9c672ec` |
| 33 | `lemma` | [isAffineMap_neg_iff](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3d5a341514d280e0e3037a4e0674978a5790c4d38e275a818c0bc11e01802ab2.lean/declarations/isaffinemap-neg-iff--5df886ed9d7cc502c29d09e8.md) | 231 | `result-track:5df886ed9d7cc502c29d09e8ea9b9fa77496316ae7e4df5cc59ceb6acad2f7f2` |
| 34 | `lemma` | [IsStarConvexSet.neg](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3d5a341514d280e0e3037a4e0674978a5790c4d38e275a818c0bc11e01802ab2.lean/declarations/isstarconvexset-neg--dc8643587c7dc13cbaa9cf69.md) | 237 | `result-track:dc8643587c7dc13cbaa9cf69ba0f8b4d8c5a9747e22a46372dea06359dc344f6` |
| 35 | `lemma` | [IsStarConvexSet.sub](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3d5a341514d280e0e3037a4e0674978a5790c4d38e275a818c0bc11e01802ab2.lean/declarations/isstarconvexset-sub--27cee91dad101c24f8c9313e.md) | 240 | `result-track:27cee91dad101c24f8c9313e1d68ea6c45aec9d0404c25b4695d746a9d54e7f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
