# Verification target: GRWTSK.Algebra.LinearAlgebra.PiTensorProduct.Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83d5919086a85cd4a94e72f9290d6fe3ce94e71e",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83d5919086a85cd4a94e72f9290d6fe3ce94e71e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Congruence` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Multilinear.TensorProduct` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LibrarySearch` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Eqv](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/eqv--63b6e749e75059bbec54b520.md) | 98 | `declaration-track:63b6e749e75059bbec54b5207695a724832d866321432067f4e34acca7941ac5` |
| 2 | `def` | [PiTensorProduct](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/pitensorproduct--d599ec3853185c9f47b3b538.md) | 117 | `declaration-track:d599ec3853185c9f47b3b53860dbc8e544a8482aa51d1662c7d876772e6e3c10` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/instance--7cf2a576c87e3305ec4a997b.md) | 134 | `declaration-track:7cf2a576c87e3305ec4a997b4d61e018f0b5627e6f32c639de4512f625c44d0c` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/instance--6982544dca596def8f49b3ad.md) | 140 | `declaration-track:6982544dca596def8f49b3add01497abb2c8140c4bc5b514efdcc9d9d2e02c11` |
| 5 | `def` | [tprodCoeff](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/tprodcoeff--19cc0465af940669ef9648ac.md) | 147 | `declaration-track:19cc0465af940669ef9648ac1546b41ad62edaaf1de75531ba4beb5a42717bf3` |
| 6 | `theorem` | [zero_tprodCoeff](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/zero-tprodcoeff--1227d6b4f6132ec099436f67.md) | 153 | `result-track:1227d6b4f6132ec099436f675675e681430e205dac8fbb938fba3efce751a142` |
| 7 | `theorem` | [zero_tprodCoeff'](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/zero-tprodcoeff--fcb848098959ae459df7bc32.md) | 157 | `result-track:fcb848098959ae459df7bc32d396c92339938896ec918ad869f7c61d3d53be55` |
| 8 | `theorem` | [add_tprodCoeff](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/add-tprodcoeff--6898343f90acd7cee544a220.md) | 161 | `result-track:6898343f90acd7cee544a220d04feeaf80d5ab29b1c210e6775b2ff1b0891da4` |
| 9 | `theorem` | [add_tprodCoeff'](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/add-tprodcoeff--90658c950340bcdca04dd06d.md) | 167 | `result-track:90658c950340bcdca04dd06d572ee676eb0c6f88230ee4dcb661eda6c6c3d7a8` |
| 10 | `theorem` | [smul_tprodCoeff_aux](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/smul-tprodcoeff-aux--f04c292cf52308bf2b6109ab.md) | 172 | `result-track:f04c292cf52308bf2b6109abde9a40b5a16ad0ad8613737b09814cd5001b90ff` |
| 11 | `theorem` | [smul_tprodCoeff](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/smul-tprodcoeff--3f1e792ef892a0412b52e249.md) | 177 | `result-track:3f1e792ef892a0412b52e249ae076091dccd56c0b83cb4765c3ada5db10e1c3f` |
| 12 | `def` | [liftAddHom](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/liftaddhom--c22b1e563cdeee0bab3e556e.md) | 188 | `declaration-track:c22b1e563cdeee0bab3e556ef2013bf1c005b95c86ab167224edbc394bfc2e03` |
| 13 | `theorem` | [induction_on'](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/induction-on--a0e8002dc35ed2bb02fa83f2.md) | 215 | `result-track:a0e8002dc35ed2bb02fa83f2b7ab2bce6b181922bffd9b0b59ef74449b4a49c7` |
| 14 | `instance` | [hasSMul'](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/hassmul--e049ddc6fb4920ee5b6e2304.md) | 235 | `declaration-track:e049ddc6fb4920ee5b6e2304fe84977d4aa37a9a9ad9bf9e06b209fe77c5c825` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/instance--5fc86d88e448011f466aa2fd.md) | 244 | `declaration-track:5fc86d88e448011f466aa2fdfef2fa3f604b53ed3842c0f217507a3411e1fdd4` |
| 16 | `theorem` | [smul_tprodCoeff'](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/smul-tprodcoeff--877b3b858cbb94eda69b6500.md) | 247 | `result-track:877b3b858cbb94eda69b650084d2de6d77b6d321e2d1f83130f0d7bb112d8566` |
| 17 | `theorem` | [smul_add](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/smul-add--c35bb3d9a7cd95421825e21f.md) | 251 | `result-track:c35bb3d9a7cd95421825e21f013a03e24f2ccff1f44a9e2563a771f2a2e75a8d` |
| 18 | `instance` | [distribMulAction'](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/distribmulaction--d4b6a4985a085ac0b37b035a.md) | 255 | `declaration-track:d4b6a4985a085ac0b37b035a72dc7d83a2986f14fa1a88bc585d52006ef94ecb` |
| 19 | `instance` | [smulCommClass'](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/smulcommclass--cbd0289394bedb8686bc40ad.md) | 267 | `declaration-track:cbd0289394bedb8686bc40ad9fe75f2df7ea5f286ed66341ae5257c9022f3acd` |
| 20 | `instance` | [isScalarTower'](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/isscalartower--a12b88f9abd9c4cb63d6da63.md) | 273 | `declaration-track:a12b88f9abd9c4cb63d6da632328148f9058d68bc6ee20c52eef3e55229f0546` |
| 21 | `instance` | [module'](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/module--bd432b390e8c4b0186afbc7f.md) | 284 | `declaration-track:bd432b390e8c4b0186afbc7f984f953b4a57bb0f479a9aaf01ef910e08198bcc` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/instance--6756f76796d947550a4b4f5c.md) | 298 | `declaration-track:6756f76796d947550a4b4f5c8b956bf63ef75880d05b202bfcac92fefea43a4b` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/instance--4c208090f4e8e7fda991ac15.md) | 301 | `declaration-track:4c208090f4e8e7fda991ac15d3075f866653c62d33d752867d98a64882b5c6e8` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/instance--9bcddab591cc689c5c26f31d.md) | 304 | `declaration-track:9bcddab591cc689c5c26f31d77d0f48c1c04e19f4882043a8181771fbf66b439` |
| 25 | `def` | [tprod](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/tprod--d0e867aa45645717f30cd736.md) | 310 | `declaration-track:d0e867aa45645717f30cd736b2dca48003f32cf16f6d0411091179f8ca5c9b42` |
| 26 | `theorem` | [tprod_eq_tprodCoeff_one](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/tprod-eq-tprodcoeff-one--ba1cc6a63add31d944d262bb.md) | 325 | `result-track:ba1cc6a63add31d944d262bb4887ce8032e67e45ebd7861fb8cbfecf17a45ccc` |
| 27 | `theorem` | [tprodCoeff_eq_smul_tprod](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/tprodcoeff-eq-smul-tprod--0c07663a545763ec0cebb638.md) | 329 | `result-track:0c07663a545763ec0cebb638096bf4e2fe8e9955f85b8fb717f0301a393b7740` |
| 28 | `theorem` | [induction_on](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/induction-on--b47d6ae355133af4c082a6ed.md) | 335 | `result-track:b47d6ae355133af4c082a6ed006917e6b08a7331053c78f7ecf55bc1e56ef3e5` |
| 29 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/ext--59105919be948c524c7c6cbe.md) | 343 | `result-track:59105919be948c524c7c6cbea2fc17127fc00c7034bc664b522943bade32c874` |
| 30 | `def` | [liftAux](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/liftaux--da096e6fc1906f0ec5edc643.md) | 365 | `declaration-track:da096e6fc1906f0ec5edc643442f4ecb75fd95f8a1c510626e48f22315f4be4d` |
| 31 | `theorem` | [liftAux_tprod](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/liftaux-tprod--da12b42f84a7dec48ca3de98.md) | 374 | `result-track:da12b42f84a7dec48ca3de98b513b18665c08e609737927f678e4264c789c582` |
| 32 | `theorem` | [liftAux_tprodCoeff](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/liftaux-tprodcoeff--898d7ab8aaa067ba9fe4cab6.md) | 382 | `result-track:898d7ab8aaa067ba9fe4cab64248091eb762b606a16182583accae4d2f8b0c08` |
| 33 | `theorem` | [liftAux.smul](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/liftaux-smul--f7dbce200f5f58e9cdaa7b7b.md) | 386 | `result-track:f7dbce200f5f58e9cdaa7b7bbd8fa67471cf07c00065754f499c7caf3c391d20` |
| 34 | `def` | [lift](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/lift--28fabe7e36f1c5e070ce6919.md) | 398 | `declaration-track:28fabe7e36f1c5e070ce6919064a22f560e8245c7bd07d0b014132c939b6edcb` |
| 35 | `theorem` | [lift.tprod](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/lift-tprod--c0a080d4cae89d1bbed2c1e2.md) | 418 | `result-track:c0a080d4cae89d1bbed2c1e2c9948ea4a451c637b1f0f854c7f3897124a0ecce` |
| 36 | `theorem` | [lift.unique'](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/lift-unique--2e83545122209e160a2233b1.md) | 422 | `result-track:2e83545122209e160a2233b18afa677a1ced88223595d18c5c07bedb94b4130f` |
| 37 | `theorem` | [lift.unique](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/lift-unique--e0b61fb0013613b3b3d06186.md) | 427 | `result-track:e0b61fb0013613b3b3d06186e2436256c9ca2fa444223d0a1af114dc7dd4904f` |
| 38 | `theorem` | [lift_symm](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/lift-symm--f44beda1bb7b92aaef039211.md) | 433 | `result-track:f44beda1bb7b92aaef03921138f92b52c824ec581e32bda30d617d7a614f8c54` |
| 39 | `theorem` | [lift_tprod](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/lift-tprod--c398aa498211f6ba5ddb7383.md) | 438 | `result-track:c398aa498211f6ba5ddb73837dc8341d47a617713b985e788c1660d5ad918082` |
| 40 | `def` | [reindex](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/reindex--9690cd2eb7439b9c1609ea7f.md) | 450 | `declaration-track:9690cd2eb7439b9c1609ea7f0a52c4a740d5eb3480a6a44f4ca0814757fd623d` |
| 41 | `theorem` | [reindex_tprod](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/reindex-tprod--d6ad6bb084cdfec5a53e9e12.md) | 472 | `result-track:d6ad6bb084cdfec5a53e9e12c6ae09e539b3c9398904a764ea686ededb38cc2b` |
| 42 | `theorem` | [reindex_comp_tprod](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/reindex-comp-tprod--f67f832bb08643469fe70806.md) | 479 | `result-track:f67f832bb08643469fe70806bf5481d3f65650ccaff5e1f7690367cbb1264b35` |
| 43 | `theorem` | [lift_comp_reindex](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/lift-comp-reindex--f64da21eb333d507911e6115.md) | 486 | `result-track:f64da21eb333d507911e6115602472fff2c87b17dfc5250de97feac7a0201428` |
| 44 | `theorem` | [lift_reindex](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/lift-reindex--d7bf2e64ea3e5676256d1ebc.md) | 493 | `result-track:d7bf2e64ea3e5676256d1ebcf5aaa76624b86a4b11a336a4395adcaad62b884e` |
| 45 | `theorem` | [reindex_trans](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/reindex-trans--9f3d59990b31a3d8de965c4d.md) | 499 | `result-track:9f3d59990b31a3d8de965c4db9f22df34fc69441e4b17bbf3b5ac264e94e0b98` |
| 46 | `theorem` | [reindex_reindex](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/reindex-reindex--0bb555daa95db8574a1794a7.md) | 510 | `result-track:0bb555daa95db8574a1794a79a06eb8ccf3fcdeae798206564394be0624f29b0` |
| 47 | `theorem` | [reindex_symm](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/reindex-symm--6b7ed2bd723267a2ac408416.md) | 516 | `result-track:6b7ed2bd723267a2ac408416d95414dda2a4507267308c042f2f09987e26c9d3` |
| 48 | `theorem` | [reindex_refl](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/reindex-refl--99063ec68c470e2fb3cd424d.md) | 520 | `result-track:99063ec68c470e2fb3cd424daee4c68abdea914ba76ad39c536878c3733c68d5` |
| 49 | `def` | [isEmptyEquiv](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/isemptyequiv--e190bf613c3a6dea862070f7.md) | 531 | `declaration-track:e190bf613c3a6dea862070f7ce8f12d01e70a5afeec1d36decd202e2aa2f4cc9` |
| 50 | `theorem` | [isEmptyEquiv_apply_tprod](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/isemptyequiv-apply-tprod--5f9aaa48a95519167963bc80.md) | 552 | `result-track:5f9aaa48a95519167963bc807ada0424c6e936503cb8628df03a3b271427a3cf` |
| 51 | `def` | [subsingletonEquiv](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/subsingletonequiv--88a82628e06a1bb82be2cd08.md) | 562 | `declaration-track:88a82628e06a1bb82be2cd0826bf1f568d8a04e08780818e3073d8030b61b1b1` |
| 52 | `theorem` | [subsingletonEquiv_apply_tprod](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/subsingletonequiv-apply-tprod--218c74dfd879d2ca30057e8a.md) | 586 | `result-track:218c74dfd879d2ca30057e8a2bf7a709b1b9b61e7a0627d71bcfc05fed508595` |
| 53 | `def` | [tmul](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/tmul--5c97f6c8118413eaffc8abfc.md) | 594 | `declaration-track:5c97f6c8118413eaffc8abfcc1cd040ca33ef903e312ad1387c6bc461e971340` |
| 54 | `theorem` | [tmul_apply](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/tmul-apply--d78b5fb7aac9171fd3937918.md) | 603 | `result-track:d78b5fb7aac9171fd39379180cfc63f1d2488497c38250cd408cf7f0b6dd5ed9` |
| 55 | `def` | [tmulSymm](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/tmulsymm--540508efe7f5b2e7ca822329.md) | 609 | `declaration-track:540508efe7f5b2e7ca8223292374ee600728a8ada831dcebff654c68d8dea2d2` |
| 56 | `theorem` | [tmulSymm_apply](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/tmulsymm-apply--fb61acb114458de3636babfd.md) | 613 | `result-track:fb61acb114458de3636babfdafab3edaa794b00676c277e4f11f2418715ec314` |
| 57 | `def` | [tmulEquiv](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/tmulequiv--839bec6c615f8d67138d2624.md) | 626 | `declaration-track:839bec6c615f8d67138d26243d89d0aa5798f7b0a7301cf999ffeecd18082978` |
| 58 | `theorem` | [tmulEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/tmulequiv-apply--4dcb53a3517cd35d9230c621.md) | 642 | `result-track:4dcb53a3517cd35d9230c621986319eda6f35ea51fba73b508ab137ecd476ca1` |
| 59 | `theorem` | [tmulEquiv_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/tmulequiv-symm-apply--09ae0bcd621f0a8cbfa99c48.md) | 649 | `result-track:09ae0bcd621f0a8cbfa99c483b62dbcbb83551e037a19f2c31bd82be88663f46` |
| 60 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/declarations/instance--cfddfadbca655980177a7302.md) | 677 | `declaration-track:cfddfadbca655980177a730277241888c2776f0027ce9a79d4f0632afbe92e5e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
