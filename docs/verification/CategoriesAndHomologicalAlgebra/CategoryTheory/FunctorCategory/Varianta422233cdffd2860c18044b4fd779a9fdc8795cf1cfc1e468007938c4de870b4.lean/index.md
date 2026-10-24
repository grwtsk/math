# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorCategory.Varianta422233cdffd2860c18044b4fd779a9fdc8795cf1cfc1e468007938c4de870b4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "604442c40a9cb99a85b56d4fccf8d9ab83305e29",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Varianta422233cdffd2860c18044b4fd779a9fdc8795cf1cfc1e468007938c4de870b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Varianta422233cdffd2860c18044b4fd779a9fdc8795cf1cfc1e468007938c4de870b4.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Varianta422233cdffd2860c18044b4fd779a9fdc8795cf1cfc1e468007938c4de870b4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `604442c40a9cb99a85b56d4fccf8d9ab83305e29`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Varianta422233cdffd2860c18044b4fd779a9fdc8795cf1cfc1e468007938c4de870b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Varianta422233cdffd2860c18044b4fd779a9fdc8795cf1cfc1e468007938c4de870b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.FunctorCategory.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.BinaryProducts` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Finite` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Yoneda` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Presheaf` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [FunctorCategory.prod_preservesColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Varianta422233cdffd2860c18044b4fd779a9fdc8795cf1cfc1e468007938c4de870b4.lean/declarations/functorcategory-prod-preservescolimits--292b7d2543d426770c83e186.md) | 64 | `result-track:292b7d2543d426770c83e186cac44b1744f0781e4e6fbd9004bab760de762931` |
| 2 | `instance` | [whiskeringLeft_preservesLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Varianta422233cdffd2860c18044b4fd779a9fdc8795cf1cfc1e468007938c4de870b4.lean/declarations/whiskeringleft-preserveslimitsofshape--7860bf5bd27e1a2681ff6738.md) | 90 | `declaration-track:7860bf5bd27e1a2681ff673887fefb28e90d1cbd81401239ed57ec5f6c8e098f` |
| 3 | `instance` | [whiskeringLeft_preservesColimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Varianta422233cdffd2860c18044b4fd779a9fdc8795cf1cfc1e468007938c4de870b4.lean/declarations/whiskeringleft-preservescolimitsofshape--6b7a55a42bafc199ce36201d.md) | 100 | `declaration-track:6b7a55a42bafc199ce36201d0eff8d41b8b5df9c40386684c95a1246619cca4d` |
| 4 | `instance` | [whiskeringLeft_preservesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Varianta422233cdffd2860c18044b4fd779a9fdc8795cf1cfc1e468007938c4de870b4.lean/declarations/whiskeringleft-preserveslimits--e6dfce5ff7e32e1b0d6f635f.md) | 110 | `declaration-track:e6dfce5ff7e32e1b0d6f635fdd4ffbf959f7cede0ca426503e996e786679ad59` |
| 5 | `instance` | [whiskeringLeft_preservesColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Varianta422233cdffd2860c18044b4fd779a9fdc8795cf1cfc1e468007938c4de870b4.lean/declarations/whiskeringleft-preservescolimit--4f5a578f16a46fec7240c54d.md) | 114 | `declaration-track:4f5a578f16a46fec7240c54da5de9d544c42f77a37c36e72abcb3f516fc60cfc` |
| 6 | `instance` | [whiskeringRight_preservesLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Varianta422233cdffd2860c18044b4fd779a9fdc8795cf1cfc1e468007938c4de870b4.lean/declarations/whiskeringright-preserveslimitsofshape--20741936371fe285aed3452e.md) | 118 | `declaration-track:20741936371fe285aed3452ee8b12ab2d4b07139a091326f36572d56cab976c4` |
| 7 | `def` | [limitCompWhiskeringRightIsoLimitComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Varianta422233cdffd2860c18044b4fd779a9fdc8795cf1cfc1e468007938c4de870b4.lean/declarations/limitcompwhiskeringrightisolimitcomp--dd632d29a5f5006cf1c1501b.md) | 130 | `declaration-track:dd632d29a5f5006cf1c1501b4822bbabb5ae3c8ffbbb6ecc700ad57c564cd31d` |
| 8 | `theorem` | [limitCompWhiskeringRightIsoLimitComp_inv_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Varianta422233cdffd2860c18044b4fd779a9fdc8795cf1cfc1e468007938c4de870b4.lean/declarations/limitcompwhiskeringrightisolimitcomp-inv--f79bbff874c7583c443c695a.md) | 137 | `result-track:f79bbff874c7583c443c695ab75311a155bbe9b4ac509c02f66ac0f11b7c8779` |
| 9 | `theorem` | [limitCompWhiskeringRightIsoLimitComp_hom_whiskerRight_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Varianta422233cdffd2860c18044b4fd779a9fdc8795cf1cfc1e468007938c4de870b4.lean/declarations/limitcompwhiskeringrightisolimitcomp-hom-whiskerright--4a9c47e52a1ad5f9064b826f.md) | 145 | `result-track:4a9c47e52a1ad5f9064b826f72a9f8a356486c58d1dad513bf43c7fc84e7044b` |
| 10 | `instance` | [whiskeringRight_preservesColimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Varianta422233cdffd2860c18044b4fd779a9fdc8795cf1cfc1e468007938c4de870b4.lean/declarations/whiskeringright-preservescolimitsofshape--71de2ab8c2245434fc52349c.md) | 152 | `declaration-track:71de2ab8c2245434fc52349c8549deb5dc1b70a80c66109613acff1e81348df9` |
| 11 | `def` | [colimitCompWhiskeringRightIsoColimitComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Varianta422233cdffd2860c18044b4fd779a9fdc8795cf1cfc1e468007938c4de870b4.lean/declarations/colimitcompwhiskeringrightisocolimitcomp--36db6d990a2ec3a81f513bc1.md) | 164 | `declaration-track:36db6d990a2ec3a81f513bc1bbc23ecaac2115dd9b83b7ddd2d87b75879562da` |
| 12 | `theorem` | [ι_colimitCompWhiskeringRightIsoColimitComp_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Varianta422233cdffd2860c18044b4fd779a9fdc8795cf1cfc1e468007938c4de870b4.lean/declarations/colimitcompwhiskeringrightisocolimitcomp-hom--18c95cced0ca2f6d8801c47f.md) | 171 | `result-track:18c95cced0ca2f6d8801c47f3aa0e085a05b70bbddacbd12658646f4eb4af105` |
| 13 | `theorem` | [whiskerRight_ι_colimitCompWhiskeringRightIsoColimitComp_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Varianta422233cdffd2860c18044b4fd779a9fdc8795cf1cfc1e468007938c4de870b4.lean/declarations/whiskerright-colimitcompwhiskeringrightisocolimitcomp-inv--08c17c182a0a4ac84270974d.md) | 179 | `result-track:08c17c182a0a4ac84270974d9729ad2f71c2c626294ae0efaa4618089eda2c73` |
| 14 | `instance` | [whiskeringRightPreservesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Varianta422233cdffd2860c18044b4fd779a9fdc8795cf1cfc1e468007938c4de870b4.lean/declarations/whiskeringrightpreserveslimits--fae2f2bee682fb0c1adac5e2.md) | 186 | `declaration-track:fae2f2bee682fb0c1adac5e29d4469d5a9f40da5661347794297f23121f47dfe` |
| 15 | `instance` | [whiskeringRightPreservesColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Varianta422233cdffd2860c18044b4fd779a9fdc8795cf1cfc1e468007938c4de870b4.lean/declarations/whiskeringrightpreservescolimits--82a921f793316eb25d414be3.md) | 192 | `declaration-track:82a921f793316eb25d414be36679955aa428b3d42aa01c178f0a830d8a24c9c9` |
| 16 | `lemma` | [preservesLimit_of_lan_preservesLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Varianta422233cdffd2860c18044b4fd779a9fdc8795cf1cfc1e468007938c4de870b4.lean/declarations/preserveslimit-of-lan-preserveslimit--757dec15e0692211ac8433b2.md) | 199 | `result-track:757dec15e0692211ac8433b2c1701e74a3199f61d692b08e3df3cc39f6a8fce8` |
| 17 | `lemma` | [preservesFiniteLimits_of_evaluation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Varianta422233cdffd2860c18044b4fd779a9fdc8795cf1cfc1e468007938c4de870b4.lean/declarations/preservesfinitelimits-of-evaluation--4175658f17652023c07e3a74.md) | 206 | `result-track:4175658f17652023c07e3a742c0a176c60e4afce9f515cc1a52f863c82cc78e9` |
| 18 | `lemma` | [preservesFiniteColimits_of_evaluation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Varianta422233cdffd2860c18044b4fd779a9fdc8795cf1cfc1e468007938c4de870b4.lean/declarations/preservesfinitecolimits-of-evaluation--f88339877261751257d37952.md) | 212 | `result-track:f88339877261751257d379524f3545e4997a4a029f51caed32d9ba5c3da9469d` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Varianta422233cdffd2860c18044b4fd779a9fdc8795cf1cfc1e468007938c4de870b4.lean/declarations/instance--13a79bf295488a2d5cc18a4d.md) | 231 | `declaration-track:13a79bf295488a2d5cc18a4ded5dfe24e943ad40377d92402440380633ec86e7` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Varianta422233cdffd2860c18044b4fd779a9fdc8795cf1cfc1e468007938c4de870b4.lean/declarations/instance--67781342705e8032352fb42d.md) | 248 | `declaration-track:67781342705e8032352fb42d25a63c0ae23a8747c54b87f47e88159a0b1155b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
