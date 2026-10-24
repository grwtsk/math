# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Resolution.Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d3570308f26fded0a318ea88af745cdbd1aac610",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d3570308f26fded0a318ea88af745cdbd1aac610`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Projective` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.ExtraDegeneracy` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.Ext` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Ring` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RepresentationTheory.Rep` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Free` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.ReflectsIso.Balanced` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actionDiagonalSucc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean/declarations/actiondiagonalsucc--3bb58b5fd1cf77a54ded855e.md) | 98 | `declaration-track:3bb58b5fd1cf77a54ded855e95a1f7fcfb9c358de1a312ee97d09fcb39c679e1` |
| 2 | `theorem` | [actionDiagonalSucc_hom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean/declarations/actiondiagonalsucc-hom-apply--1d2213f0f3146f604e9475ec.md) | 110 | `result-track:1d2213f0f3146f604e9475ec58bef1ed4a405e4b5d97dc9ebfa2689c8d7b0aa2` |
| 3 | `theorem` | [actionDiagonalSucc_inv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean/declarations/actiondiagonalsucc-inv-apply--666811560a0a4f262e53d5f3.md) | 129 | `result-track:666811560a0a4f262e53d5f31cd7aa5ebee931d42770f01a5f49d773bd42f5d8` |
| 4 | `def` | [diagonalSucc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean/declarations/diagonalsucc--04499c14af08ccd9e7506751.md) | 168 | `declaration-track:04499c14af08ccd9e7506751fcfed40bd9255f1ee37e5beaeeebbaf35a9a6a31` |
| 5 | `theorem` | [diagonalSucc_hom_single](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean/declarations/diagonalsucc-hom-single--1feec070022a6193a3b4555c.md) | 176 | `result-track:1feec070022a6193a3b4555ca2c45b4572dbe826a37ba3fd4e37efffdb2b146a` |
| 6 | `theorem` | [diagonalSucc_inv_single_single](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean/declarations/diagonalsucc-inv-single-single--5914db567aafa5a518ecfa54.md) | 186 | `result-track:5914db567aafa5a518ecfa54b18335e93e58fb331ad645e165a1327d047e812b` |
| 7 | `theorem` | [diagonalSucc_inv_single_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean/declarations/diagonalsucc-inv-single-left--6d4c9be9cdea86bad590dd48.md) | 206 | `result-track:6d4c9be9cdea86bad590dd48959c2d0965b63d98a589ec04bfe1172eb58beeef` |
| 8 | `theorem` | [diagonalSucc_inv_single_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean/declarations/diagonalsucc-inv-single-right--0f1c441c291a13ce79517a39.md) | 217 | `result-track:0f1c441c291a13ce79517a392a5827ff9a649b1ee65c361e6b377018cd3bad3d` |
| 9 | `def` | [ofMulActionBasisAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean/declarations/ofmulactionbasisaux--e36b93c86ab1977af2722faa.md) | 237 | `declaration-track:e36b93c86ab1977af2722faa8b4067021541fe923ab94f809f265d7be34fbc5f` |
| 10 | `def` | [ofMulActionBasis](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean/declarations/ofmulactionbasis--d066d422b8974dfae58d03b0.md) | 262 | `declaration-track:d066d422b8974dfae58d03b0ed114d10e8caee5a63c2fc45eb4cc674cdd1dada` |
| 11 | `theorem` | [ofMulAction_free](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean/declarations/ofmulaction-free--cb2d05bfe7d3dd095027d4a3.md) | 269 | `result-track:cb2d05bfe7d3dd095027d4a3349599f7bf0437d3e1e8eca4ccd7a3f9af724157` |
| 12 | `def` | [diagonalHomEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean/declarations/diagonalhomequiv--a21ea8d3b3f6ed87b4a1f37f.md) | 285 | `declaration-track:a21ea8d3b3f6ed87b4a1f37f51c7d0c169229749030f7e2fbf48f4d6f34ac6a9` |
| 13 | `theorem` | [diagonalHomEquiv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean/declarations/diagonalhomequiv-apply--e6fdc6fcde7845b8b49a4333.md) | 299 | `result-track:e6fdc6fcde7845b8b49a4333138200cfd5d84fff248c89abe7f0fd105ac952a4` |
| 14 | `theorem` | [diagonalHomEquiv_symm_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean/declarations/diagonalhomequiv-symm-apply--3f226de62e2af5f879a0b46a.md) | 316 | `result-track:3f226de62e2af5f879a0b46a504240e4f951f6ed039fffc1bb883b75c0e407fa` |
| 15 | `theorem` | [diagonalHomEquiv_symm_partialProd_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean/declarations/diagonalhomequiv-symm-partialprod-succ--254e7dfec06742471029c994.md) | 350 | `result-track:254e7dfec06742471029c994be35405db76fabff6e779084e28a0a67d4612a0c` |
| 16 | `def` | [classifyingSpaceUniversalCover](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean/declarations/classifyingspaceuniversalcover--355026176d7bc9c726fd2dcf.md) | 366 | `declaration-track:355026176d7bc9c726fd2dcf7a39ad267cbfb28ed72c5a42eaf6531ef9f1cbfe` |
| 17 | `def` | [cechNerveTerminalFromIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean/declarations/cechnerveterminalfromiso--500b214ae84a26993c9bcb9c.md) | 383 | `declaration-track:500b214ae84a26993c9bcb9c5593f3bad3375fb9af3f0fb1eb3d3ed04ebec0b1` |
| 18 | `def` | [cechNerveTerminalFromIsoCompForget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean/declarations/cechnerveterminalfromisocompforget--2f759e868dc710383064901f.md) | 393 | `declaration-track:2f759e868dc710383064901ff15081f6d3d35d5d646fbb1c1f44e950ae9d4bb5` |
| 19 | `def` | [compForgetAugmented](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean/declarations/compforgetaugmented--68b1fd849ed8ddb119016778.md) | 404 | `declaration-track:68b1fd849ed8ddb1190167783eef17f86d4b6fd490bc53b259ba7c3fee3a72ed` |
| 20 | `def` | [extraDegeneracyAugmentedCechNerve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean/declarations/extradegeneracyaugmentedcechnerve--d4706d7bcc25ff695fd7d971.md) | 410 | `declaration-track:d4706d7bcc25ff695fd7d9716a265e123ebec95fb4f6ffc513f0e0313afac34b` |
| 21 | `def` | [extraDegeneracyCompForgetAugmented](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean/declarations/extradegeneracycompforgetaugmented--6e2ddf1de05ad565e41972d9.md) | 418 | `declaration-track:6e2ddf1de05ad565e41972d90bf933fc491adc8a22a25e5a117d80afd772bb6e` |
| 22 | `def` | [compForgetAugmented.toModule](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean/declarations/compforgetaugmented-tomodule--08f068483a1af444855542db.md) | 429 | `declaration-track:08f068483a1af444855542db8b2f119ff9c2f513fbe7fc1c504a6db0d4f3e287` |
| 23 | `def` | [extraDegeneracyCompForgetAugmentedToModule](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean/declarations/extradegeneracycompforgetaugmentedtomodule--2a7f40dbd6dfaf8d831a2220.md) | 436 | `declaration-track:2a7f40dbd6dfaf8d831a2220e49114bbd0a0f3e646c278bfe04e817ee9b5c128` |
| 24 | `def` | [groupCohomology.resolution](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean/declarations/groupcohomology-resolution--7cc27dc5eb912840a09f940b.md) | 446 | `declaration-track:7cc27dc5eb912840a09f940b8e3a11b3cad9a59f9fe6c42a833ac41f5ad67aff` |
| 25 | `def` | [d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean/declarations/d--1d2b36d0783ebcf2a2e33b1e.md) | 458 | `declaration-track:1d2b36d0783ebcf2a2e33b1ea0f35430f454eff85773a447dbc0f9bd2fc17da3` |
| 26 | `theorem` | [d_of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean/declarations/d-of--bd9631c956ec06fe5c43b3a3.md) | 466 | `result-track:bd9631c956ec06fe5c43b3a320223061466cae3258d7b70268a47d3e0b24340c` |
| 27 | `def` | [xIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean/declarations/xiso--e6f70597ddf5ae1163a8d35a.md) | 476 | `declaration-track:e6f70597ddf5ae1163a8d35af24409d45fcd44a5e92836309da6a5626b77d9a9` |
| 28 | `instance` | [x_projective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean/declarations/x-projective--9986f2ee1567fcb14c8e0a32.md) | 479 | `declaration-track:9986f2ee1567fcb14c8e0a32b42e4d178441aa973ae7c34cff20c79069c56f39` |
| 29 | `theorem` | [d_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean/declarations/d-eq--74065b2b287ff08efae45d0d.md) | 488 | `result-track:74065b2b287ff08efae45d0d0a2a026c4d742f9862c6343bf11dac07372c94ef` |
| 30 | `def` | [forget₂ToModuleCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean/declarations/forget-tomodulecat--61ec3be2d1550ed556e4544c.md) | 511 | `declaration-track:61ec3be2d1550ed556e4544c08908fa8fa261fd9762314929f6648bf243dc54f` |
| 31 | `def` | [compForgetAugmentedIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean/declarations/compforgetaugmentediso--504985d51d24d2fbdd803eb5.md) | 519 | `declaration-track:504985d51d24d2fbdd803eb567a3b1f5e2567d504846221024c0071b36c6d121` |
| 32 | `def` | [forget₂ToModuleCatHomotopyEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean/declarations/forget-tomodulecathomotopyequiv--8a4976ae520d6600777d8895.md) | 529 | `declaration-track:8a4976ae520d6600777d8895ab2745843c139c1cc2a9be15f6a01282f16eded0` |
| 33 | `def` | [ε](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean/declarations/anonymous--d18ae3fed33c8c0c18885e96.md) | 541 | `declaration-track:d18ae3fed33c8c0c18885e96f1b11c1939f9af390e0c19a6a62d631b50082e93` |
| 34 | `theorem` | [forget₂ToModuleCatHomotopyEquiv_f_0_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean/declarations/forget-tomodulecathomotopyequiv-f-0-eq--eee16ce4c228a05e9267f580.md) | 552 | `result-track:eee16ce4c228a05e9267f5808c3ac5702940b57392b5fa752ea1ca33c90fee30` |
| 35 | `theorem` | [d_comp_ε](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean/declarations/d-comp--817120c04835af7a4525cf08.md) | 578 | `result-track:817120c04835af7a4525cf08a2680327589f3cf85426b0330c0de636901feff0` |
| 36 | `def` | [εToSingle₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean/declarations/tosingle--8a557d6dd1566c20a144f40a.md) | 590 | `declaration-track:8a557d6dd1566c20a144f40aa445f460c9f7d19d858ec1f190ea66ffc453f799` |
| 37 | `theorem` | [εToSingle₀_comp_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean/declarations/tosingle-comp-eq--9949fb040cbc534ae8e1d528.md) | 594 | `result-track:9949fb040cbc534ae8e1d528fc8bf5434e41b89d5aef635565fb0e8d72f4731c` |
| 38 | `theorem` | [quasiIso_forget₂_εToSingle₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean/declarations/quasiiso-forget-tosingle--e85b83675c271227048932d2.md) | 603 | `result-track:e85b83675c271227048932d2f35c53b2121eedc6ae203f02f8cb7f8f03cb6c84` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean/declarations/instance--4b55591d2d11eaa72201716d.md) | 609 | `declaration-track:4b55591d2d11eaa72201716d102631bdfed00db5e0d87e31d717b0dcaa458ebd` |
| 40 | `def` | [groupCohomology.projectiveResolution](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean/declarations/groupcohomology-projectiveresolution--6b766422615a2067082442ad.md) | 622 | `declaration-track:6b766422615a2067082442adb817abd173ca60a2642ec04f016e63b7489fe85f` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean/declarations/instance--ab63541bfa5025bc10949eb4.md) | 626 | `declaration-track:ab63541bfa5025bc10949eb4396e0e4a550ce886a2b56ffa768f3f897e985079` |
| 42 | `def` | [groupCohomology.extIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean/declarations/groupcohomology-extiso--3fc39efba8beadb8d369db3d.md) | 632 | `declaration-track:3fc39efba8beadb8d369db3d8e68f4cf4fd193e182a5813e90f45a1a8ce53f5f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
