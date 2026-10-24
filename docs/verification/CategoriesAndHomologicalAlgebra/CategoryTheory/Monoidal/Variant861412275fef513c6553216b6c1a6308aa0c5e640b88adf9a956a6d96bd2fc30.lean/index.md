# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Monoidal.Variant861412275fef513c6553216b6c1a6308aa0c5e640b88adf9a956a6d96bd2fc30

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b30178dd11bd1d2294e510088fb72dea0417a5b",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant861412275fef513c6553216b6c1a6308aa0c5e640b88adf9a956a6d96bd2fc30.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant861412275fef513c6553216b6c1a6308aa0c5e640b88adf9a956a6d96bd2fc30.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant861412275fef513c6553216b6c1a6308aa0c5e640b88adf9a956a6d96bd2fc30.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b30178dd11bd1d2294e510088fb72dea0417a5b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant861412275fef513c6553216b6c1a6308aa0c5e640b88adf9a956a6d96bd2fc30.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant861412275fef513c6553216b6c1a6308aa0c5e640b88adf9a956a6d96bd2fc30.lean.json)

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
| 1 | `class` | [IsMonoidalLeftDistrib](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant861412275fef513c6553216b6c1a6308aa0c5e640b88adf9a956a6d96bd2fc30.lean/declarations/ismonoidalleftdistrib--f4e7b7ac60cd389d20803d77.md) | 72 | `declaration-track:f4e7b7ac60cd389d20803d7792c1da428ffe86f6909d2aa82a378dac83d557d2` |
| 2 | `class` | [IsMonoidalRightDistrib](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant861412275fef513c6553216b6c1a6308aa0c5e640b88adf9a956a6d96bd2fc30.lean/declarations/ismonoidalrightdistrib--d36b9069f05f5f044a231445.md) | 79 | `declaration-track:d36b9069f05f5f044a2314451e5d6560336675ae6e134f5d12d0fcb840d2f676` |
| 3 | `class` | [IsMonoidalDistrib](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant861412275fef513c6553216b6c1a6308aa0c5e640b88adf9a956a6d96bd2fc30.lean/declarations/ismonoidaldistrib--bf71d39bcd2bfcba98032a8c.md) | 86 | `declaration-track:bf71d39bcd2bfcba98032a8c364607e9b4d847074420ba1a6461c62e30938ccd` |
| 4 | `def` | [leftDistrib](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant861412275fef513c6553216b6c1a6308aa0c5e640b88adf9a956a6d96bd2fc30.lean/declarations/leftdistrib--361b330e7de9c64842f655bb.md) | 97 | `declaration-track:361b330e7de9c64842f655bb0d1fc6527ec7bf9fdb5817d8081271962362fe38` |
| 5 | `lemma` | [IsMonoidalLeftDistrib.of_isIso_coprodComparisonTensorLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant861412275fef513c6553216b6c1a6308aa0c5e640b88adf9a956a6d96bd2fc30.lean/declarations/ismonoidalleftdistrib-of-isiso-coprodcomparisontensorleft--452c193501d3adbec67d75f7.md) | 112 | `result-track:452c193501d3adbec67d75f77664345848eb2e8a1e3348a780ae11bf40c0338f` |
| 6 | `lemma` | [leftDistrib_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant861412275fef513c6553216b6c1a6308aa0c5e640b88adf9a956a6d96bd2fc30.lean/declarations/leftdistrib-hom--6cecc2211033c7a689ed8ec4.md) | 119 | `result-track:6cecc2211033c7a689ed8ec4c4b09775aa01061fc141bb317991e38202729980` |
| 7 | `lemma` | [coprod_inl_leftDistrib_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant861412275fef513c6553216b6c1a6308aa0c5e640b88adf9a956a6d96bd2fc30.lean/declarations/coprod-inl-leftdistrib-hom--fa4ceba1b92118d900826f75.md) | 123 | `result-track:fa4ceba1b92118d900826f756fc03cbba48f4e1fed91a1082d1bd4d17677532d` |
| 8 | `lemma` | [coprod_inr_leftDistrib_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant861412275fef513c6553216b6c1a6308aa0c5e640b88adf9a956a6d96bd2fc30.lean/declarations/coprod-inr-leftdistrib-hom--3e144e4b35fadc7d60c17be4.md) | 128 | `result-track:3e144e4b35fadc7d60c17be424dd9057688b81fdc0b57d465513232ccf57345a` |
| 9 | `lemma` | [whiskerLeft_coprod_inl_leftDistrib_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant861412275fef513c6553216b6c1a6308aa0c5e640b88adf9a956a6d96bd2fc30.lean/declarations/whiskerleft-coprod-inl-leftdistrib-inv--38db6f0bf4dba981f68c3988.md) | 136 | `result-track:38db6f0bf4dba981f68c39882743e5275a837c00941732cb7033776a2181d968` |
| 10 | `lemma` | [whiskerLeft_coprod_inr_leftDistrib_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant861412275fef513c6553216b6c1a6308aa0c5e640b88adf9a956a6d96bd2fc30.lean/declarations/whiskerleft-coprod-inr-leftdistrib-inv--9ca5cdd37283d374d306d7ea.md) | 145 | `result-track:9ca5cdd37283d374d306d7eac078b3ac464b07e7a8592f7995ab02f25d379b38` |
| 11 | `def` | [rightDistrib](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant861412275fef513c6553216b6c1a6308aa0c5e640b88adf9a956a6d96bd2fc30.lean/declarations/rightdistrib--267fd65244cf33d321898315.md) | 155 | `declaration-track:267fd65244cf33d321898315faee62201b00fcc8a786658d3d050ca6356d965d` |
| 12 | `lemma` | [IsMonoidalRightDistrib.of_isIso_coprodComparisonTensorRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant861412275fef513c6553216b6c1a6308aa0c5e640b88adf9a956a6d96bd2fc30.lean/declarations/ismonoidalrightdistrib-of-isiso-coprodcomparisontensorright--0e61129e99a1ec5f093bf7ef.md) | 167 | `result-track:0e61129e99a1ec5f093bf7ef5be82867919d49a43dd971263d9630d131e2765c` |
| 13 | `lemma` | [rightDistrib_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant861412275fef513c6553216b6c1a6308aa0c5e640b88adf9a956a6d96bd2fc30.lean/declarations/rightdistrib-hom--6720e65cdb720e0dfd6f7a97.md) | 175 | `result-track:6720e65cdb720e0dfd6f7a976cd26e85b68e2aaf72c11e4d1d0665cfcb241f11` |
| 14 | `lemma` | [coprod_inl_rightDistrib_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant861412275fef513c6553216b6c1a6308aa0c5e640b88adf9a956a6d96bd2fc30.lean/declarations/coprod-inl-rightdistrib-hom--69286be4cd37bc9acb08fba4.md) | 179 | `result-track:69286be4cd37bc9acb08fba43fe5763f0fa32c11d4b82db03fcf1aaf12c14b08` |
| 15 | `lemma` | [coprod_inr_rightDistrib_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant861412275fef513c6553216b6c1a6308aa0c5e640b88adf9a956a6d96bd2fc30.lean/declarations/coprod-inr-rightdistrib-hom--6d53343de35c4d44bda47c9c.md) | 184 | `result-track:6d53343de35c4d44bda47c9c62aaf7f98f3af1ff7bbc135ad97174803c64dafa` |
| 16 | `lemma` | [whiskerRight_coprod_inl_rightDistrib_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant861412275fef513c6553216b6c1a6308aa0c5e640b88adf9a956a6d96bd2fc30.lean/declarations/whiskerright-coprod-inl-rightdistrib-inv--ae84ea8972804e413ce30a91.md) | 192 | `result-track:ae84ea8972804e413ce30a915c9cae96f32d5aeb03f5311826e87ab310a80d46` |
| 17 | `lemma` | [whiskerRight_coprod_inr_rightDistrib_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant861412275fef513c6553216b6c1a6308aa0c5e640b88adf9a956a6d96bd2fc30.lean/declarations/whiskerright-coprod-inr-rightdistrib-inv--a64cc230b16e548e7c37a0bc.md) | 201 | `result-track:a64cc230b16e548e7c37a0bcfe8c73206466eedc907a481a9aa195fdfad3092e` |
| 18 | `lemma` | [coprodComparison_tensorLeft_braiding_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant861412275fef513c6553216b6c1a6308aa0c5e640b88adf9a956a6d96bd2fc30.lean/declarations/coprodcomparison-tensorleft-braiding-hom--da556276bbcad5aa53cd29aa.md) | 210 | `result-track:da556276bbcad5aa53cd29aa2a7d6107c67914a66a1367cb3eb134549bfeea8f` |
| 19 | `lemma` | [coprodComparison_tensorRight_braiding_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant861412275fef513c6553216b6c1a6308aa0c5e640b88adf9a956a6d96bd2fc30.lean/declarations/coprodcomparison-tensorright-braiding-hom--61793f3c4f21ef624da28168.md) | 219 | `result-track:61793f3c4f21ef624da281682923162553ef9e4f81c7ce90ac344f12f318dd8b` |
| 20 | `lemma` | [SymmetricCategory.isMonoidalDistrib_of_isMonoidalLeftDistrib](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant861412275fef513c6553216b6c1a6308aa0c5e640b88adf9a956a6d96bd2fc30.lean/declarations/symmetriccategory-ismonoidaldistrib-of-ismonoidalleftdistrib--af9334a27775e64b782dc0a4.md) | 225 | `result-track:af9334a27775e64b782dc0a468ac5ea95686a7f4a778ae7794e19fa26ccbb460` |
| 21 | `lemma` | [SymmetricCategory.rightDistrib_of_leftDistrib](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant861412275fef513c6553216b6c1a6308aa0c5e640b88adf9a956a6d96bd2fc30.lean/declarations/symmetriccategory-rightdistrib-of-leftdistrib--a9fcfd63eac7e292d707edd9.md) | 233 | `result-track:a9fcfd63eac7e292d707edd912012da9d0de28048706a639798f308c844ba988` |
| 22 | `instance` | [MonoidalClosed.isMonoidalLeftDistrib](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant861412275fef513c6553216b6c1a6308aa0c5e640b88adf9a956a6d96bd2fc30.lean/declarations/monoidalclosed-ismonoidalleftdistrib--b8eb1f86264bf4a7714fa4e5.md) | 239 | `declaration-track:b8eb1f86264bf4a7714fa4e5aa908ce247f8b03fff2bd345714789dc68d85bed` |
| 23 | `instance` | [isMonoidalDistrib.of_symmetric_monoidal_closed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant861412275fef513c6553216b6c1a6308aa0c5e640b88adf9a956a6d96bd2fc30.lean/declarations/ismonoidaldistrib-of-symmetric-monoidal-closed--9267fc77b865acb349bfc85d.md) | 244 | `declaration-track:9267fc77b865acb349bfc85dfd8b9545b300bbd3a02991a757efa651745ee325` |
| 24 | `lemma` | [MonoidalClosed.leftDistrib_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant861412275fef513c6553216b6c1a6308aa0c5e640b88adf9a956a6d96bd2fc30.lean/declarations/monoidalclosed-leftdistrib-inv--259f0b32fcc6edbdf6308c90.md) | 249 | `result-track:259f0b32fcc6edbdf6308c90f765905f00ae850e4d53c010e78a1c506f530bd3` |
| 25 | `instance` | [isMonoidalLeftDistrib.of_endofunctors](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant861412275fef513c6553216b6c1a6308aa0c5e640b88adf9a956a6d96bd2fc30.lean/declarations/ismonoidalleftdistrib-of-endofunctors--5ecfa0ee8835b5e6b9292ec6.md) | 260 | `declaration-track:5ecfa0ee8835b5e6b9292ec6a62cb180a9c1f155a28a720ac9be27142ffaf51d` |
| 26 | `instance` | [IsMonoidalDistrib.of_MonoidalPreadditive_with_binary_coproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant861412275fef513c6553216b6c1a6308aa0c5e640b88adf9a956a6d96bd2fc30.lean/declarations/ismonoidaldistrib-of-monoidalpreadditive-with-binary-coproducts--daab0039b352538a59a068a9.md) | 272 | `declaration-track:daab0039b352538a59a068a97c0e89fb017455e22df869647fc38496288d7a17` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
