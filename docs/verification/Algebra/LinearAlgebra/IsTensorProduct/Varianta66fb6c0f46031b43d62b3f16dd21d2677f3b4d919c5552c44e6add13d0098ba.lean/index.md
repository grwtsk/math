# Verification target: GRWTSK.Algebra.LinearAlgebra.IsTensorProduct.Varianta66fb6c0f46031b43d62b3f16dd21d2677f3b4d919c5552c44e6add13d0098ba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9a95845549b5729aad1e85e98ad568e11b98389",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/IsTensorProduct/Varianta66fb6c0f46031b43d62b3f16dd21d2677f3b4d919c5552c44e6add13d0098ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Varianta66fb6c0f46031b43d62b3f16dd21d2677f3b4d919c5552c44e6add13d0098ba.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Varianta66fb6c0f46031b43d62b3f16dd21d2677f3b4d919c5552c44e6add13d0098ba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9a95845549b5729aad1e85e98ad568e11b98389`.

Source path: `GRWTSK/Algebra/LinearAlgebra/IsTensorProduct/Varianta66fb6c0f46031b43d62b3f16dd21d2677f3b4d919c5552c44e6add13d0098ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/IsTensorProduct/Varianta66fb6c0f46031b43d62b3f16dd21d2677f3b4d919c5552c44e6add13d0098ba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.TensorProduct` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.ULift` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsTensorProduct](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Varianta66fb6c0f46031b43d62b3f16dd21d2677f3b4d919c5552c44e6add13d0098ba.lean/declarations/istensorproduct--6788ceaf547c3c2d1c8d98d3.md) | 61 | `declaration-track:6788ceaf547c3c2d1c8d98d33450b99ff3847c871c4529ca043852cf76b0e7ca` |
| 2 | `theorem` | [TensorProduct.isTensorProduct](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Varianta66fb6c0f46031b43d62b3f16dd21d2677f3b4d919c5552c44e6add13d0098ba.lean/declarations/tensorproduct-istensorproduct--ab9e22bfee5ef7c3d608e5f4.md) | 67 | `result-track:ab9e22bfee5ef7c3d608e5f4745f8aab4d508697dfd7e9b8418a38cfb174b797` |
| 3 | `def` | [IsTensorProduct.equiv](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Varianta66fb6c0f46031b43d62b3f16dd21d2677f3b4d919c5552c44e6add13d0098ba.lean/declarations/istensorproduct-equiv--ac6ca4e99bd376b76ab86d1f.md) | 79 | `declaration-track:ac6ca4e99bd376b76ab86d1fc41a2a6b1ca82a6c913c9c2245655f2b6b76d187` |
| 4 | `theorem` | [IsTensorProduct.equiv_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Varianta66fb6c0f46031b43d62b3f16dd21d2677f3b4d919c5552c44e6add13d0098ba.lean/declarations/istensorproduct-equiv-tolinearmap--d73eff7b65a3230954f72487.md) | 84 | `result-track:d73eff7b65a3230954f7248768b6ceb039fa4a6d3b6026d38df02aab6035114f` |
| 5 | `theorem` | [IsTensorProduct.equiv_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Varianta66fb6c0f46031b43d62b3f16dd21d2677f3b4d919c5552c44e6add13d0098ba.lean/declarations/istensorproduct-equiv-symm-apply--d517ef7625dbb2a031ba55ab.md) | 90 | `result-track:d517ef7625dbb2a031ba55ab0930a749040df8ec8bdad9ab57c2384ba0709834` |
| 6 | `def` | [IsTensorProduct.lift](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Varianta66fb6c0f46031b43d62b3f16dd21d2677f3b4d919c5552c44e6add13d0098ba.lean/declarations/istensorproduct-lift--8248449e7da80ee214d64802.md) | 99 | `declaration-track:8248449e7da80ee214d64802419ff965fc3c54798e798f38b3486f9b41dbea24` |
| 7 | `theorem` | [IsTensorProduct.lift_eq](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Varianta66fb6c0f46031b43d62b3f16dd21d2677f3b4d919c5552c44e6add13d0098ba.lean/declarations/istensorproduct-lift-eq--587bed0a62264bc7ea820b4d.md) | 104 | `result-track:587bed0a62264bc7ea820b4d6bbd9e7d2d5b086ea6d7a26e842a2f6c3bf1f49a` |
| 8 | `def` | [IsTensorProduct.map](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Varianta66fb6c0f46031b43d62b3f16dd21d2677f3b4d919c5552c44e6add13d0098ba.lean/declarations/istensorproduct-map--0d99de6bb14b2c98135fb881.md) | 111 | `declaration-track:0d99de6bb14b2c98135fb881d1ee3df584cb1286345522f4fcee1b3fea6caf80` |
| 9 | `theorem` | [IsTensorProduct.map_eq](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Varianta66fb6c0f46031b43d62b3f16dd21d2677f3b4d919c5552c44e6add13d0098ba.lean/declarations/istensorproduct-map-eq--7a326232477169f1b2007eda.md) | 116 | `result-track:7a326232477169f1b2007edab11e5e08ec86e12b64f7e26b0b8bdb3118f185e9` |
| 10 | `theorem` | [IsTensorProduct.inductionOn](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Varianta66fb6c0f46031b43d62b3f16dd21d2677f3b4d919c5552c44e6add13d0098ba.lean/declarations/istensorproduct-inductionon--926d11266a2f0d44e3fa002e.md) | 122 | `result-track:926d11266a2f0d44e3fa002ead049bd381e03aa08b28d8c779963d0b1e76f035` |
| 11 | `def` | [IsBaseChange](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Varianta66fb6c0f46031b43d62b3f16dd21d2677f3b4d919c5552c44e6add13d0098ba.lean/declarations/isbasechange--c36764c08ffb5d6106b2f7b6.md) | 152 | `declaration-track:c36764c08ffb5d6106b2f7b68414534d8f59faee71912ef11e47732660efa215` |
| 12 | `def` | [IsBaseChange.lift](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Varianta66fb6c0f46031b43d62b3f16dd21d2677f3b4d919c5552c44e6add13d0098ba.lean/declarations/isbasechange-lift--dde3998eab32e814aa81ccb6.md) | 171 | `declaration-track:dde3998eab32e814aa81ccb6f8a0983ec1fd3e5399a68a0c8c2e6446bd049c9d` |
| 13 | `theorem` | [IsBaseChange.lift_eq](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Varianta66fb6c0f46031b43d62b3f16dd21d2677f3b4d919c5552c44e6add13d0098ba.lean/declarations/isbasechange-lift-eq--08a20ea708b1c3e823338020.md) | 189 | `result-track:08a20ea708b1c3e823338020d660ca15562ebe9c9abeac25fc72a40e292723d0` |
| 14 | `theorem` | [IsBaseChange.lift_comp](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Varianta66fb6c0f46031b43d62b3f16dd21d2677f3b4d919c5552c44e6add13d0098ba.lean/declarations/isbasechange-lift-comp--6f209a7f392a5614e6ba1751.md) | 194 | `result-track:6f209a7f392a5614e6ba1751ca9d198eb95da026aada070a3ff704fd146cfa77` |
| 15 | `theorem` | [IsBaseChange.inductionOn](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Varianta66fb6c0f46031b43d62b3f16dd21d2677f3b4d919c5552c44e6add13d0098ba.lean/declarations/isbasechange-inductionon--5a679afeac84c8da6f0c6dd6.md) | 201 | `result-track:5a679afeac84c8da6f0c6dd6deb46d4cad00fa4e7b7e54a493869895a5f3dfa2` |
| 16 | `theorem` | [IsBaseChange.algHom_ext](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Varianta66fb6c0f46031b43d62b3f16dd21d2677f3b4d919c5552c44e6add13d0098ba.lean/declarations/isbasechange-alghom-ext--67a6878faff77208370d42e7.md) | 206 | `result-track:67a6878faff77208370d42e7d0399f327f393fd42bd71267a59d4ca9ea4ec0f8` |
| 17 | `theorem` | [IsBaseChange.algHom_ext'](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Varianta66fb6c0f46031b43d62b3f16dd21d2677f3b4d919c5552c44e6add13d0098ba.lean/declarations/isbasechange-alghom-ext--00918fc9bc692e2817602da5.md) | 217 | `result-track:00918fc9bc692e2817602da5b40d33b73a7b250ee6bacae8d39f4e27e0300053` |
| 18 | `theorem` | [TensorProduct.isBaseChange](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Varianta66fb6c0f46031b43d62b3f16dd21d2677f3b4d919c5552c44e6add13d0098ba.lean/declarations/tensorproduct-isbasechange--d311a59fffec3399baea327f.md) | 224 | `result-track:d311a59fffec3399baea327f72609f808faf7f09a38025d1dff8b47ba0747235` |
| 19 | `def` | [IsBaseChange.equiv](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Varianta66fb6c0f46031b43d62b3f16dd21d2677f3b4d919c5552c44e6add13d0098ba.lean/declarations/isbasechange-equiv--9cea46876d393fee5f7ed905.md) | 237 | `declaration-track:9cea46876d393fee5f7ed90524ff908bd3f7b22802fea0b8ce65cea80fe23b7f` |
| 20 | `theorem` | [IsBaseChange.equiv_tmul](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Varianta66fb6c0f46031b43d62b3f16dd21d2677f3b4d919c5552c44e6add13d0098ba.lean/declarations/isbasechange-equiv-tmul--45f8d2d9919c0d6d1afacf3a.md) | 253 | `result-track:45f8d2d9919c0d6d1afacf3a7f3a14aaf0336e95efde2277b818b0e9a6ec1cfb` |
| 21 | `theorem` | [IsBaseChange.equiv_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Varianta66fb6c0f46031b43d62b3f16dd21d2677f3b4d919c5552c44e6add13d0098ba.lean/declarations/isbasechange-equiv-symm-apply--39d2b2db21fb28c24bad2f44.md) | 257 | `result-track:39d2b2db21fb28c24bad2f44cdc771bb8f3f851cca81a276c6c60c52c6ca505b` |
| 22 | `theorem` | [IsBaseChange.of_lift_unique](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Varianta66fb6c0f46031b43d62b3f16dd21d2677f3b4d919c5552c44e6add13d0098ba.lean/declarations/isbasechange-of-lift-unique--aa37aa876039c6f3dcffedff.md) | 263 | `result-track:aa37aa876039c6f3dcffedff854af7ddc16b6ef505b8c4b8c66380a2384a545e` |
| 23 | `theorem` | [IsBaseChange.iff_lift_unique](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Varianta66fb6c0f46031b43d62b3f16dd21d2677f3b4d919c5552c44e6add13d0098ba.lean/declarations/isbasechange-iff-lift-unique--3507ee7d98305767aa25951b.md) | 300 | `result-track:3507ee7d98305767aa25951bb1765cef1a52978dfdce35a3c74ca7df64343ea9` |
| 24 | `theorem` | [IsBaseChange.ofEquiv](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Varianta66fb6c0f46031b43d62b3f16dd21d2677f3b4d919c5552c44e6add13d0098ba.lean/declarations/isbasechange-ofequiv--0cf9209a89ea05ee227426e3.md) | 312 | `result-track:0cf9209a89ea05ee227426e32d8fbe1dab43aa3b4f209bd9eeb3f92996f43ca6` |
| 25 | `theorem` | [IsBaseChange.comp](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Varianta66fb6c0f46031b43d62b3f16dd21d2677f3b4d919c5552c44e6add13d0098ba.lean/declarations/isbasechange-comp--95f41b4815f38d9bf59e106f.md) | 337 | `result-track:95f41b4815f38d9bf59e106fc5a2cb61aa3681a84091fadfb826fa1330acb814` |
| 26 | `class` | [Algebra.IsPushout](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Varianta66fb6c0f46031b43d62b3f16dd21d2677f3b4d919c5552c44e6add13d0098ba.lean/declarations/algebra-ispushout--a38d29d583bc019bbef7cef0.md) | 379 | `declaration-track:a38d29d583bc019bbef7cef08c56a875f52fa9ad925705a9b04b6770e08e8e23` |
| 27 | `theorem` | [Algebra.IsPushout.symm](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Varianta66fb6c0f46031b43d62b3f16dd21d2677f3b4d919c5552c44e6add13d0098ba.lean/declarations/algebra-ispushout-symm--ccd606ff29e6094fb76e9b7c.md) | 386 | `result-track:ccd606ff29e6094fb76e9b7c546dae0d152656ca6b153c5c7555449f27268ae3` |
| 28 | `theorem` | [Algebra.IsPushout.comm](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Varianta66fb6c0f46031b43d62b3f16dd21d2677f3b4d919c5552c44e6add13d0098ba.lean/declarations/algebra-ispushout-comm--26d3a2521ea464daf3189ed0.md) | 413 | `result-track:26d3a2521ea464daf3189ed0b6cf401be8e37bb74ca501b802b1e436daf73a08` |
| 29 | `instance` | [TensorProduct.isPushout](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Varianta66fb6c0f46031b43d62b3f16dd21d2677f3b4d919c5552c44e6add13d0098ba.lean/declarations/tensorproduct-ispushout--42d5acf8078bee94bcf0ed11.md) | 421 | `declaration-track:42d5acf8078bee94bcf0ed115b9ee475af8fd8ab9bb75c22e7bae2e9a51356c0` |
| 30 | `instance` | [TensorProduct.isPushout'](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Varianta66fb6c0f46031b43d62b3f16dd21d2677f3b4d919c5552c44e6add13d0098ba.lean/declarations/tensorproduct-ispushout--1ef20a44cd53627fabce1728.md) | 426 | `declaration-track:1ef20a44cd53627fabce1728e3386b7c728bca965ad125a031aa148d64641124` |
| 31 | `def` | [Algebra.pushoutDesc](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Varianta66fb6c0f46031b43d62b3f16dd21d2677f3b4d919c5552c44e6add13d0098ba.lean/declarations/algebra-pushoutdesc--cb5340f2dc67e424c8b2b41d.md) | 435 | `declaration-track:cb5340f2dc67e424c8b2b41dab1697306146bdf779ebafa14df58c6956db8a0b` |
| 32 | `theorem` | [Algebra.pushoutDesc_apply](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Varianta66fb6c0f46031b43d62b3f16dd21d2677f3b4d919c5552c44e6add13d0098ba.lean/declarations/algebra-pushoutdesc-apply--b928d91f80ba245ab3ec0c94.md) | 474 | `result-track:b928d91f80ba245ab3ec0c9466c6df30d74ed5afeb17da8b7edd33192fd32437` |
| 33 | `theorem` | [Algebra.pushoutDesc_left](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Varianta66fb6c0f46031b43d62b3f16dd21d2677f3b4d919c5552c44e6add13d0098ba.lean/declarations/algebra-pushoutdesc-left--204e617dc1c160f6368bb99a.md) | 484 | `result-track:204e617dc1c160f6368bb99ad0f7f97c25fea79903212e00195358a962b9e224` |
| 34 | `theorem` | [Algebra.lift_algHom_comp_left](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Varianta66fb6c0f46031b43d62b3f16dd21d2677f3b4d919c5552c44e6add13d0098ba.lean/declarations/algebra-lift-alghom-comp-left--5ffe97b6fc091767cff16221.md) | 497 | `result-track:5ffe97b6fc091767cff16221da5fcae025c463682f93cb5e488145c6213e0414` |
| 35 | `theorem` | [Algebra.pushoutDesc_right](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Varianta66fb6c0f46031b43d62b3f16dd21d2677f3b4d919c5552c44e6add13d0098ba.lean/declarations/algebra-pushoutdesc-right--49455f92a58dc2db113fdee3.md) | 504 | `result-track:49455f92a58dc2db113fdee350752df2d9710c9a4305d8d864a36e7dc344083c` |
| 36 | `theorem` | [Algebra.lift_algHom_comp_right](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Varianta66fb6c0f46031b43d62b3f16dd21d2677f3b4d919c5552c44e6add13d0098ba.lean/declarations/algebra-lift-alghom-comp-right--9f9b2c83b5311c67b30f2ddc.md) | 514 | `result-track:9f9b2c83b5311c67b30f2ddcdb3e239b3164f2a2bc421c35ebc03006d42cd69f` |
| 37 | `theorem` | [Algebra.IsPushout.algHom_ext](../../../../../mathematics/Algebra/LinearAlgebra/IsTensorProduct/Varianta66fb6c0f46031b43d62b3f16dd21d2677f3b4d919c5552c44e6add13d0098ba.lean/declarations/algebra-ispushout-alghom-ext--12928560dd11821466755411.md) | 521 | `result-track:12928560dd1182146675541113227c3de2a27d35d9302fdf6df4e5adfa226c68` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
