# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Resolution.Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e6b9161bb7b60f042c48cf598413a443784ba528",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e6b9161bb7b60f042c48cf598413a443784ba528`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Projective` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.ExtraDegeneracy` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.Ext` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RepresentationTheory.Rep` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actionDiagonalSucc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean/declarations/actiondiagonalsucc--6a2c945e43ab31bab13a9769.md) | 102 | `declaration-track:6a2c945e43ab31bab13a97695e2864f431095c0a47747aa5987e01206680cd6a` |
| 2 | `theorem` | [actionDiagonalSucc_hom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean/declarations/actiondiagonalsucc-hom-apply--274756b76414b3c8cabad1da.md) | 116 | `result-track:274756b76414b3c8cabad1dadc06264961bdf8393f8174f0c8bad5596c489dba` |
| 3 | `theorem` | [actionDiagonalSucc_inv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean/declarations/actiondiagonalsucc-inv-apply--93834df485e71ee92f35c806.md) | 136 | `result-track:93834df485e71ee92f35c8066d05ba3b94c3b507118f889462626601e26122cd` |
| 4 | `def` | [diagonalSucc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean/declarations/diagonalsucc--f55bea115279028349775eed.md) | 175 | `declaration-track:f55bea115279028349775eeddb9c9868b76d034ab741a4c55eb4e0b8ef727ba1` |
| 5 | `theorem` | [diagonalSucc_hom_single](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean/declarations/diagonalsucc-hom-single--732282ed2a5fd17858d2b6fa.md) | 184 | `result-track:732282ed2a5fd17858d2b6fa21379598c090834e9492bc10ff0bdb3c8fa5db3f` |
| 6 | `theorem` | [diagonalSucc_inv_single_single](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean/declarations/diagonalsucc-inv-single-single--096d6a623e4c9df58834aa77.md) | 207 | `result-track:096d6a623e4c9df58834aa77f37dce9d37c9ee0842d485355ac2c783992e94e2` |
| 7 | `theorem` | [diagonalSucc_inv_single_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean/declarations/diagonalsucc-inv-single-left--5d894343d1133a35ca4a2abf.md) | 228 | `result-track:5d894343d1133a35ca4a2abf233c8eb42c570e3a144f8811ce5d08af196abc4b` |
| 8 | `theorem` | [diagonalSucc_inv_single_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean/declarations/diagonalsucc-inv-single-right--a6ee8b1ea51cdddc678c6542.md) | 246 | `result-track:a6ee8b1ea51cdddc678c65424b0748a454ca4bf6bd15259203dcd300b126087c` |
| 9 | `def` | [ofMulActionBasisAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean/declarations/ofmulactionbasisaux--e6a4cc21aa8c0fd1428bd77d.md) | 273 | `declaration-track:e6a4cc21aa8c0fd1428bd77de7bc036ce212e16433765291091ee70a14a0c1d9` |
| 10 | `def` | [ofMulActionBasis](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean/declarations/ofmulactionbasis--1966c9504c238f439eeea22d.md) | 298 | `declaration-track:1966c9504c238f439eeea22d40b6298a37a76f1047cf38fc770b2887252a5925` |
| 11 | `theorem` | [ofMulAction_free](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean/declarations/ofmulaction-free--3905bf6e0fb09f8a8cd5725e.md) | 306 | `result-track:3905bf6e0fb09f8a8cd5725ea6ddb077497a6aeca6090362e0a2834ba9d44e09` |
| 12 | `def` | [diagonalHomEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean/declarations/diagonalhomequiv--109c5edb198788e6c3598cf3.md) | 323 | `declaration-track:109c5edb198788e6c3598cf3db030d259dc45dfbfd7ff7aa780a70edb79f46b3` |
| 13 | `theorem` | [diagonalHomEquiv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean/declarations/diagonalhomequiv-apply--950131d0734950b0f511003e.md) | 339 | `result-track:950131d0734950b0f511003e6ff1c6ba8402bb0dbe6d1f9a231c2fdfd96e4ee9` |
| 14 | `theorem` | [diagonalHomEquiv_symm_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean/declarations/diagonalhomequiv-symm-apply--0719ba82f30c7ade7adf9e15.md) | 359 | `result-track:0719ba82f30c7ade7adf9e15083cadb9986cde6dd41364ef26b7da9a4a11e6b6` |
| 15 | `theorem` | [diagonalHomEquiv_symm_partialProd_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean/declarations/diagonalhomequiv-symm-partialprod-succ--a1d17204d5e535c81afa8e42.md) | 395 | `result-track:a1d17204d5e535c81afa8e42ef23087f09746530531f3b7bf881e9793b18b0a0` |
| 16 | `def` | [classifyingSpaceUniversalCover](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean/declarations/classifyingspaceuniversalcover--525e554786b32d7d76d4e38f.md) | 413 | `declaration-track:525e554786b32d7d76d4e38f9ed75e4e278188a4d557ae445f5bb528560166aa` |
| 17 | `def` | [cechNerveTerminalFromIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean/declarations/cechnerveterminalfromiso--b99068ba63099cd56beff08d.md) | 431 | `declaration-track:b99068ba63099cd56beff08dacd6d6fb4f71073e8f11c526e60150ab50864561` |
| 18 | `def` | [cechNerveTerminalFromIsoCompForget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean/declarations/cechnerveterminalfromisocompforget--bf3dbbc3aff92b08eb38375e.md) | 442 | `declaration-track:bf3dbbc3aff92b08eb38375e7f9e63422ee7871c45b03663a42676e6bb790760` |
| 19 | `def` | [compForgetAugmented](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean/declarations/compforgetaugmented--e267b0a6410fcb7c0bb80637.md) | 454 | `declaration-track:e267b0a6410fcb7c0bb806377f78d996ac650b1aaaab9f8e6690957dec4f716b` |
| 20 | `def` | [extraDegeneracyAugmentedCechNerve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean/declarations/extradegeneracyaugmentedcechnerve--0376b669abc5c58d2ef69db0.md) | 461 | `declaration-track:0376b669abc5c58d2ef69db02946cef176aca38091413fef7c14dedd3e28547f` |
| 21 | `def` | [extraDegeneracyCompForgetAugmented](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean/declarations/extradegeneracycompforgetaugmented--07ed28d580f1cd7398ad4f47.md) | 470 | `declaration-track:07ed28d580f1cd7398ad4f4729f3d9584d2f234cc71e05c25785d16c6c3c9d94` |
| 22 | `def` | [compForgetAugmented.toModule](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean/declarations/compforgetaugmented-tomodule--bf309324ebba67dfb2243c83.md) | 482 | `declaration-track:bf309324ebba67dfb2243c83f6098dd14c32406cb54aadccd482a5a062dd5a1e` |
| 23 | `def` | [extraDegeneracyCompForgetAugmentedToModule](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean/declarations/extradegeneracycompforgetaugmentedtomodule--ac02b6b776bd5bd03075e2b0.md) | 491 | `declaration-track:ac02b6b776bd5bd03075e2b04e1fc84477c1accc6ae349b0beabebdf26e08b24` |
| 24 | `def` | [GroupCohomology.resolution](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean/declarations/groupcohomology-resolution--dd6ea4b6ad6afd1f22acf789.md) | 503 | `declaration-track:dd6ea4b6ad6afd1f22acf789ddf79dc4f46a4ca2a933640553e74b0223d1f6b3` |
| 25 | `def` | [d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean/declarations/d--ad17ae6d31a513f367d0f82d.md) | 516 | `declaration-track:ad17ae6d31a513f367d0f82dc22729bb5d9b68bbb8e3e2d9c73fd27314802c3a` |
| 26 | `theorem` | [d_of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean/declarations/d-of--6fbe94cfd05c68c8c34460d7.md) | 525 | `result-track:6fbe94cfd05c68c8c34460d79da882110a6118aa2231a131bd5f6fc332e5119b` |
| 27 | `def` | [xIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean/declarations/xiso--d0c2ab25f55a9c62be18722c.md) | 536 | `declaration-track:d0c2ab25f55a9c62be18722c6cdff3fff711b87622c5ab44375aa564053d0247` |
| 28 | `theorem` | [x_projective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean/declarations/x-projective--dda03f9d7b7708509afe781d.md) | 541 | `result-track:dda03f9d7b7708509afe781dd791ea9717baefa7f95fae787e4c41308c18975a` |
| 29 | `theorem` | [d_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean/declarations/d-eq--68e7e0076d682df1e8ad6932.md) | 552 | `result-track:68e7e0076d682df1e8ad6932c7b7f0391a3d0dfd568d22f0874f1aa95fdea8b2` |
| 30 | `def` | [forget₂ToModuleCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean/declarations/forget-tomodulecat--14ed1c689263a48c049b7843.md) | 573 | `declaration-track:14ed1c689263a48c049b784300144afb7b469252f2f95d6675abc6717a18efba` |
| 31 | `def` | [compForgetAugmentedIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean/declarations/compforgetaugmentediso--63f717fb2ec0cfc19ca5093c.md) | 583 | `declaration-track:63f717fb2ec0cfc19ca5093cd2b79b4556ecc3915554a77872a02fe5ee039e02` |
| 32 | `def` | [forget₂ToModuleCatHomotopyEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean/declarations/forget-tomodulecathomotopyequiv--12c0376472af3a5639d52654.md) | 594 | `declaration-track:12c0376472af3a5639d5265424cf41c6da91cd8ee6f32585b8dbc49252040f37` |
| 33 | `def` | [ε](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean/declarations/anonymous--7cff9cd76fea460f1680cee7.md) | 608 | `declaration-track:7cff9cd76fea460f1680cee7e4a0661e49090c8c51aa57ed1d9c146ba776d668` |
| 34 | `theorem` | [forget₂ToModuleCatHomotopyEquiv_f_0_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean/declarations/forget-tomodulecathomotopyequiv-f-0-eq--1d4c5295c917d7739499d328.md) | 620 | `result-track:1d4c5295c917d7739499d32820be59288bbc3af08fa9696598cc646944ca644c` |
| 35 | `theorem` | [d_comp_ε](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean/declarations/d-comp--aa097f18252bf74042b6cfa8.md) | 646 | `result-track:aa097f18252bf74042b6cfa8f9eb39f7a9d7e01179c4f24316dcf3188eed2c89` |
| 36 | `def` | [εToSingle₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean/declarations/tosingle--b5383dba5784c0252bda191c.md) | 659 | `declaration-track:b5383dba5784c0252bda191ced42fd55e019cb8138a204076800bbbaa0b94959` |
| 37 | `theorem` | [εToSingle₀_comp_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean/declarations/tosingle-comp-eq--8245137473698bfadd5aea4c.md) | 664 | `result-track:8245137473698bfadd5aea4cf08440601d9628d01b6b6f2cfae35e03dd253d1e` |
| 38 | `theorem` | [quasiIsoOfForget₂εToSingle₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean/declarations/quasiisoofforget-tosingle--cc83dd74796ce13e3ba9eb0a.md) | 674 | `result-track:cc83dd74796ce13e3ba9eb0a095a99fd625315a1cae80253b94a1f7ad866d686` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean/declarations/instance--99427113ef34d660e0cf6863.md) | 682 | `declaration-track:99427113ef34d660e0cf68634db5019bfd0a853fccb1ba7b14ed7bd98fda7fb2` |
| 40 | `def` | [GroupCohomology.projectiveResolution](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean/declarations/groupcohomology-projectiveresolution--a8022d19e2faddd8c8ca4a7a.md) | 694 | `declaration-track:a8022d19e2faddd8c8ca4a7a2dc5cf51753cf6b9c323096cb82e123605fc07c5` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean/declarations/instance--987318306144edb173de1c2d.md) | 699 | `declaration-track:987318306144edb173de1c2d12e4a3bc07acaa204f07e40fc86ec7425deea4df` |
| 42 | `def` | [GroupCohomology.extIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean/declarations/groupcohomology-extiso--caa949bd9e57cbc4ddf5e6ce.md) | 707 | `declaration-track:caa949bd9e57cbc4ddf5e6ce6e6c217b7ee12471e9bf6ee9e9f3fdf606b7f223` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
