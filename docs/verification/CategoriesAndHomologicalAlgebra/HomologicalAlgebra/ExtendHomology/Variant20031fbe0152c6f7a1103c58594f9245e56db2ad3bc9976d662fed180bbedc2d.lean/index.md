# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.ExtendHomology.Variant20031fbe0152c6f7a1103c58594f9245e56db2ad3bc9976d662fed180bbedc2d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b313f85d4c833d1d44e38c33cb687da75c33c79",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant20031fbe0152c6f7a1103c58594f9245e56db2ad3bc9976d662fed180bbedc2d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant20031fbe0152c6f7a1103c58594f9245e56db2ad3bc9976d662fed180bbedc2d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant20031fbe0152c6f7a1103c58594f9245e56db2ad3bc9976d662fed180bbedc2d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b313f85d4c833d1d44e38c33cb687da75c33c79`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant20031fbe0152c6f7a1103c58594f9245e56db2ad3bc9976d662fed180bbedc2d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant20031fbe0152c6f7a1103c58594f9245e56db2ad3bc9976d662fed180bbedc2d.lean.json)

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
| 1 | `lemma` | [comp_d_eq_zero_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant20031fbe0152c6f7a1103c58594f9245e56db2ad3bc9976d662fed180bbedc2d.lean/declarations/comp-d-eq-zero-iff--f687063d11e6e63ce8b9535a.md) | 42 | `result-track:f687063d11e6e63ce8b9535aca1bd95e4cf43d264e2e3f5bbdc16da9294fbb59` |
| 2 | `lemma` | [d_comp_eq_zero_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant20031fbe0152c6f7a1103c58594f9245e56db2ad3bc9976d662fed180bbedc2d.lean/declarations/d-comp-eq-zero-iff--4c7244c3db14e61fa35e9411.md) | 54 | `result-track:4c7244c3db14e61fa35e941180a5c0c0079c0cffdc148f4538d8702ce7856109` |
| 3 | `def` | [kernelFork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant20031fbe0152c6f7a1103c58594f9245e56db2ad3bc9976d662fed180bbedc2d.lean/declarations/kernelfork--d9bb42656575da6b7c1798a6.md) | 72 | `declaration-track:d9bb42656575da6b7c1798a65229b1a1857f60e6c43b90e31eed6ffdbfb1e1e5` |
| 4 | `def` | [isLimitKernelFork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant20031fbe0152c6f7a1103c58594f9245e56db2ad3bc9976d662fed180bbedc2d.lean/declarations/islimitkernelfork--21e779e1242d9266983a86ab.md) | 78 | `declaration-track:21e779e1242d9266983a86abc259cb777cb0b2fac1186e706bdb33ce93eeeb7a` |
| 5 | `lemma` | [lift_d_comp_eq_zero_iff'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant20031fbe0152c6f7a1103c58594f9245e56db2ad3bc9976d662fed180bbedc2d.lean/declarations/lift-d-comp-eq-zero-iff--5364f16a08eb74b49c045e9e.md) | 87 | `result-track:5364f16a08eb74b49c045e9e43b9c7c5f55eed9ed5c22a1a142daace5ec64341` |
| 6 | `lemma` | [lift_d_comp_eq_zero_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant20031fbe0152c6f7a1103c58594f9245e56db2ad3bc9976d662fed180bbedc2d.lean/declarations/lift-d-comp-eq-zero-iff--69e9be5e5da23fbec56f27a9.md) | 112 | `result-track:69e9be5e5da23fbec56f27a94582208d9daa1c164a8d85b56e928a444c073e81` |
| 7 | `def` | [cokernelCofork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant20031fbe0152c6f7a1103c58594f9245e56db2ad3bc9976d662fed180bbedc2d.lean/declarations/cokernelcofork--0e209fa8c83d84918578455b.md) | 120 | `declaration-track:0e209fa8c83d84918578455bbfdaf8784345f7dbef331293746b203522b2e13b` |
| 8 | `def` | [isColimitCokernelCofork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant20031fbe0152c6f7a1103c58594f9245e56db2ad3bc9976d662fed180bbedc2d.lean/declarations/iscolimitcokernelcofork--362f04deac15884b07c79c6f.md) | 128 | `declaration-track:362f04deac15884b07c79c6fdd3d48c25533e748cf51589568abcf71ab33cd39` |
| 9 | `def` | [leftHomologyData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant20031fbe0152c6f7a1103c58594f9245e56db2ad3bc9976d662fed180bbedc2d.lean/declarations/lefthomologydata--213de66c83a64c7767090f2e.md) | 141 | `declaration-track:213de66c83a64c7767090f2e216766bf918c5d0ab9a8d8a81fbc94e12f902b6d` |
| 10 | `def` | [cokernelCofork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant20031fbe0152c6f7a1103c58594f9245e56db2ad3bc9976d662fed180bbedc2d.lean/declarations/cokernelcofork--6fdf1c19798a96dab6b69e69.md) | 165 | `declaration-track:6fdf1c19798a96dab6b69e69bc3acea9d3defc4e79045d8896b87e4a8cf296e3` |
| 11 | `def` | [isColimitCokernelCofork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant20031fbe0152c6f7a1103c58594f9245e56db2ad3bc9976d662fed180bbedc2d.lean/declarations/iscolimitcokernelcofork--893a269f8fa62329ee85919b.md) | 171 | `declaration-track:893a269f8fa62329ee85919bfb1c0da9185dda5769e95cdb2005732a452ae88d` |
| 12 | `lemma` | [d_comp_desc_eq_zero_iff'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant20031fbe0152c6f7a1103c58594f9245e56db2ad3bc9976d662fed180bbedc2d.lean/declarations/d-comp-desc-eq-zero-iff--bd260ddb884a6f13e07f14e2.md) | 179 | `result-track:bd260ddb884a6f13e07f14e229c7a8451f0aa0d117d5c34f50de30db2434071b` |
| 13 | `lemma` | [d_comp_desc_eq_zero_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant20031fbe0152c6f7a1103c58594f9245e56db2ad3bc9976d662fed180bbedc2d.lean/declarations/d-comp-desc-eq-zero-iff--e9816e51118ddcc0376dbaac.md) | 205 | `result-track:e9816e51118ddcc0376dbaace62d4a58064c291a40f9f543017a2af1b907de0c` |
| 14 | `def` | [kernelFork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant20031fbe0152c6f7a1103c58594f9245e56db2ad3bc9976d662fed180bbedc2d.lean/declarations/kernelfork--484d9d0d1f9f9524599dbefc.md) | 215 | `declaration-track:484d9d0d1f9f9524599dbefce0a078f72de79018c99a18768a447246fed80305` |
| 15 | `def` | [isLimitKernelFork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant20031fbe0152c6f7a1103c58594f9245e56db2ad3bc9976d662fed180bbedc2d.lean/declarations/islimitkernelfork--9b526c7a7003d97ad5ada780.md) | 223 | `declaration-track:9b526c7a7003d97ad5ada780f5f2ebef68f6dedacdff6eafba959393757a48fe` |
| 16 | `def` | [rightHomologyData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant20031fbe0152c6f7a1103c58594f9245e56db2ad3bc9976d662fed180bbedc2d.lean/declarations/righthomologydata--02b0045a9216a0ab30789cc0.md) | 236 | `declaration-track:02b0045a9216a0ab30789cc069d33846a6b128f1a4037827979a52da62a719d2` |
| 17 | `lemma` | [rightHomologyData_g'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant20031fbe0152c6f7a1103c58594f9245e56db2ad3bc9976d662fed180bbedc2d.lean/declarations/righthomologydata-g--0be31c84695b4c644357ccf1.md) | 256 | `result-track:0be31c84695b4c644357ccf119a667cbb96b1a1d964d9389ef66b6f5e87ae3b6` |
| 18 | `def` | [homologyData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant20031fbe0152c6f7a1103c58594f9245e56db2ad3bc9976d662fed180bbedc2d.lean/declarations/homologydata--894e7c573100a39298e3332a.md) | 269 | `declaration-track:894e7c573100a39298e3332a9d97364cccc3ec62cfbf052a12fa04e9e4d669b0` |
| 19 | `def` | [homologyData'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant20031fbe0152c6f7a1103c58594f9245e56db2ad3bc9976d662fed180bbedc2d.lean/declarations/homologydata--1ae00927205dadb026f49e7e.md) | 278 | `declaration-track:1ae00927205dadb026f49e7ec672957fbdb10951295afa7ada6a3b8ccfaed60e` |
| 20 | `lemma` | [hasHomology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant20031fbe0152c6f7a1103c58594f9245e56db2ad3bc9976d662fed180bbedc2d.lean/declarations/hashomology--64fc0c97bc57c6d2278ad615.md) | 284 | `result-track:64fc0c97bc57c6d2278ad6154430da1666dba41faddd9309c7fc00034025109c` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant20031fbe0152c6f7a1103c58594f9245e56db2ad3bc9976d662fed180bbedc2d.lean/declarations/instance--b3fcf54afc9f26d2362d85a3.md) | 289 | `declaration-track:b3fcf54afc9f26d2362d85a3c1908cc34864f16d7230c849e5c247915af0e44f` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant20031fbe0152c6f7a1103c58594f9245e56db2ad3bc9976d662fed180bbedc2d.lean/declarations/instance--d8da25980e925538253aa8d7.md) | 292 | `declaration-track:d8da25980e925538253aa8d70a01df4d589d044d577c7e2a55fe8efe56c3a99f` |
| 23 | `lemma` | [extend_exactAt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant20031fbe0152c6f7a1103c58594f9245e56db2ad3bc9976d662fed180bbedc2d.lean/declarations/extend-exactat--852a310972ad4fc0ae12790b.md) | 302 | `result-track:852a310972ad4fc0ae12790b5b39559fc98556274097fd5075cb07b4a82f13fe` |
| 24 | `def` | [extendCyclesIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant20031fbe0152c6f7a1103c58594f9245e56db2ad3bc9976d662fed180bbedc2d.lean/declarations/extendcyclesiso--b328aa216f81eaabec46d672.md) | 312 | `declaration-track:b328aa216f81eaabec46d67242e1ed874d7000e389caf7745a08368329d4526b` |
| 25 | `def` | [extendOpcyclesIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant20031fbe0152c6f7a1103c58594f9245e56db2ad3bc9976d662fed180bbedc2d.lean/declarations/extendopcyclesiso--235b0fb0a595ea5a08838523.md) | 318 | `declaration-track:235b0fb0a595ea5a0883852361af61f27ebc705971746f019af946a46fc19192` |
| 26 | `def` | [extendHomologyIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant20031fbe0152c6f7a1103c58594f9245e56db2ad3bc9976d662fed180bbedc2d.lean/declarations/extendhomologyiso--0306793d657e787e6379da35.md) | 324 | `declaration-track:0306793d657e787e6379da351617dfa139058bd666894fb8756547fa74f84b3c` |
| 27 | `lemma` | [extend_exactAt_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant20031fbe0152c6f7a1103c58594f9245e56db2ad3bc9976d662fed180bbedc2d.lean/declarations/extend-exactat-iff--3002823c5495c5a244cc27c9.md) | 330 | `result-track:3002823c5495c5a244cc27c95032710a1c0c0249332fdf4aeeaca22141fcc489` |
| 28 | `lemma` | [extendCyclesIso_hom_iCycles](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant20031fbe0152c6f7a1103c58594f9245e56db2ad3bc9976d662fed180bbedc2d.lean/declarations/extendcyclesiso-hom-icycles--f0c4a5f0ea2eb47f3075ad57.md) | 338 | `result-track:f0c4a5f0ea2eb47f3075ad57e69e2bd9d8f18bf0e64d548f5d3d75db67b1662d` |
| 29 | `lemma` | [extendCyclesIso_inv_iCycles](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant20031fbe0152c6f7a1103c58594f9245e56db2ad3bc9976d662fed180bbedc2d.lean/declarations/extendcyclesiso-inv-icycles--bd3867edba2d486f1d41cdbd.md) | 349 | `result-track:bd3867edba2d486f1d41cdbd123ea3346924f9925c552b3f73888bd07c6136aa` |
| 30 | `lemma` | [homologyπ_extendHomologyIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant20031fbe0152c6f7a1103c58594f9245e56db2ad3bc9976d662fed180bbedc2d.lean/declarations/homology-extendhomologyiso-hom--4c5f0568cd959e72359af8a8.md) | 358 | `result-track:4c5f0568cd959e72359af8a831b475e02c2170c856ab1143223e32e847262d31` |
| 31 | `lemma` | [homologyπ_extendHomologyIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant20031fbe0152c6f7a1103c58594f9245e56db2ad3bc9976d662fed180bbedc2d.lean/declarations/homology-extendhomologyiso-inv--61a226a7e9d14cf2e4eb6b01.md) | 370 | `result-track:61a226a7e9d14cf2e4eb6b01d1ac34cc9cc0feb1b124bef13fedf8758feb5c0b` |
| 32 | `lemma` | [pOpcycles_extendOpcyclesIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant20031fbe0152c6f7a1103c58594f9245e56db2ad3bc9976d662fed180bbedc2d.lean/declarations/popcycles-extendopcyclesiso-inv--97c1e82426341eeef8c45162.md) | 379 | `result-track:97c1e82426341eeef8c45162d118ac9204d9e65e53de8242a2720e286d26932c` |
| 33 | `lemma` | [pOpcycles_extendOpcyclesIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant20031fbe0152c6f7a1103c58594f9245e56db2ad3bc9976d662fed180bbedc2d.lean/declarations/popcycles-extendopcyclesiso-hom--3bfdca8e98d5081b10fc2f1f.md) | 390 | `result-track:3bfdca8e98d5081b10fc2f1f2d2b5a8c210c5b2bee90ad212045057ad461f505` |
| 34 | `lemma` | [extendHomologyIso_hom_homologyι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant20031fbe0152c6f7a1103c58594f9245e56db2ad3bc9976d662fed180bbedc2d.lean/declarations/extendhomologyiso-hom-homology--514a368e35adec9fc243c14d.md) | 397 | `result-track:514a368e35adec9fc243c14d10014bb45562935fa03794d6e36f08cb40c43f17` |
| 35 | `lemma` | [extendHomologyIso_inv_homologyι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant20031fbe0152c6f7a1103c58594f9245e56db2ad3bc9976d662fed180bbedc2d.lean/declarations/extendhomologyiso-inv-homology--3c7b801c0808531de5b1296e.md) | 405 | `result-track:3c7b801c0808531de5b1296e453eb5fd81eede4a47bcb209866c58bb45bee336` |
| 36 | `lemma` | [extendCyclesIso_hom_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant20031fbe0152c6f7a1103c58594f9245e56db2ad3bc9976d662fed180bbedc2d.lean/declarations/extendcyclesiso-hom-naturality--29c039fc20bd8a8ede868787.md) | 414 | `result-track:29c039fc20bd8a8ede8687878c1bed5bf326238127942e08afe3b6fdceed71a4` |
| 37 | `lemma` | [extendHomologyIso_hom_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant20031fbe0152c6f7a1103c58594f9245e56db2ad3bc9976d662fed180bbedc2d.lean/declarations/extendhomologyiso-hom-naturality--308a4192813bb783231943a9.md) | 420 | `result-track:308a4192813bb783231943a977497df2a1d069999ca22d6e4e233759dd1871a2` |
| 38 | `lemma` | [quasiIsoAt_extendMap_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant20031fbe0152c6f7a1103c58594f9245e56db2ad3bc9976d662fed180bbedc2d.lean/declarations/quasiisoat-extendmap-iff--4a2a6b1b919cd7c23561f0e6.md) | 427 | `result-track:4a2a6b1b919cd7c23561f0e66ec06cdec1ab2628a3921445ae92651333e0396e` |
| 39 | `lemma` | [quasiIso_extendMap_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant20031fbe0152c6f7a1103c58594f9245e56db2ad3bc9976d662fed180bbedc2d.lean/declarations/quasiiso-extendmap-iff--21b2d535b9d753e83452bacb.md) | 436 | `result-track:21b2d535b9d753e83452bacb0be09d96b5565a86714f7d15474d12a96702c086` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant20031fbe0152c6f7a1103c58594f9245e56db2ad3bc9976d662fed180bbedc2d.lean/declarations/instance--af6731656232f17789385ca1.md) | 449 | `declaration-track:af6731656232f17789385ca1985ce7b0532a033f0a92a35e100e5e27d162d196` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
