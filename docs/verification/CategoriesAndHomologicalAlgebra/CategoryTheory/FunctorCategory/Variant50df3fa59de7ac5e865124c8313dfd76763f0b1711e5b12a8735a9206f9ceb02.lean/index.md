# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorCategory.Variant50df3fa59de7ac5e865124c8313dfd76763f0b1711e5b12a8735a9206f9ceb02

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3524129744fa10d6a589263186873ca93f0f9a3d",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant50df3fa59de7ac5e865124c8313dfd76763f0b1711e5b12a8735a9206f9ceb02.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant50df3fa59de7ac5e865124c8313dfd76763f0b1711e5b12a8735a9206f9ceb02.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant50df3fa59de7ac5e865124c8313dfd76763f0b1711e5b12a8735a9206f9ceb02.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3524129744fa10d6a589263186873ca93f0f9a3d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant50df3fa59de7ac5e865124c8313dfd76763f0b1711e5b12a8735a9206f9ceb02.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant50df3fa59de7ac5e865124c8313dfd76763f0b1711e5b12a8735a9206f9ceb02.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.FunctorCategory.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.BinaryProducts` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Finite` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Yoneda` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Presheaf` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [FunctorCategory.prod_preservesColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant50df3fa59de7ac5e865124c8313dfd76763f0b1711e5b12a8735a9206f9ceb02.lean/declarations/functorcategory-prod-preservescolimits--06f6169d286867df116266d4.md) | 56 | `result-track:06f6169d286867df116266d4190f0a9d55f45f9dda2cfe177b026dbbd1ce2f23` |
| 2 | `instance` | [whiskeringLeft_preservesLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant50df3fa59de7ac5e865124c8313dfd76763f0b1711e5b12a8735a9206f9ceb02.lean/declarations/whiskeringleft-preserveslimitsofshape--ed80dc504bc222fe1cf64210.md) | 82 | `declaration-track:ed80dc504bc222fe1cf642106a5f7a59dafe38246234f3b9a1993aa17f33279b` |
| 3 | `instance` | [whiskeringLeft_preservesColimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant50df3fa59de7ac5e865124c8313dfd76763f0b1711e5b12a8735a9206f9ceb02.lean/declarations/whiskeringleft-preservescolimitsofshape--1afc8baeece433b469c249a0.md) | 92 | `declaration-track:1afc8baeece433b469c249a016a620435a1c5964060ed5aba9a3c7148c9d1a57` |
| 4 | `instance` | [whiskeringLeft_preservesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant50df3fa59de7ac5e865124c8313dfd76763f0b1711e5b12a8735a9206f9ceb02.lean/declarations/whiskeringleft-preserveslimits--bb88c6f822be63d7f22993e9.md) | 102 | `declaration-track:bb88c6f822be63d7f22993e9d50df4fcffc2e3fb7668f1263a16a0267a2d3d3d` |
| 5 | `instance` | [whiskeringLeft_preservesColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant50df3fa59de7ac5e865124c8313dfd76763f0b1711e5b12a8735a9206f9ceb02.lean/declarations/whiskeringleft-preservescolimit--5010db3259b807b36cd4bd20.md) | 106 | `declaration-track:5010db3259b807b36cd4bd20d1d09c0856180eb6a0a7ae0255503c5dc3893e6c` |
| 6 | `instance` | [whiskeringRight_preservesLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant50df3fa59de7ac5e865124c8313dfd76763f0b1711e5b12a8735a9206f9ceb02.lean/declarations/whiskeringright-preserveslimitsofshape--fd37a61f4b4090da2426c10f.md) | 110 | `declaration-track:fd37a61f4b4090da2426c10fa678889b208fead4a8519c6c9fa5163f67e2d6b9` |
| 7 | `def` | [limitCompWhiskeringRightIsoLimitComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant50df3fa59de7ac5e865124c8313dfd76763f0b1711e5b12a8735a9206f9ceb02.lean/declarations/limitcompwhiskeringrightisolimitcomp--d85858f5b18d24447d267d82.md) | 122 | `declaration-track:d85858f5b18d24447d267d82641d26de47ad3950820fe3aa3967107ee6a614b7` |
| 8 | `theorem` | [limitCompWhiskeringRightIsoLimitComp_inv_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant50df3fa59de7ac5e865124c8313dfd76763f0b1711e5b12a8735a9206f9ceb02.lean/declarations/limitcompwhiskeringrightisolimitcomp-inv--61983c213d34facdd6642696.md) | 129 | `result-track:61983c213d34facdd664269680b3f73f34fd5ba4000ba5316449ab706e9aa411` |
| 9 | `theorem` | [limitCompWhiskeringRightIsoLimitComp_hom_whiskerRight_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant50df3fa59de7ac5e865124c8313dfd76763f0b1711e5b12a8735a9206f9ceb02.lean/declarations/limitcompwhiskeringrightisolimitcomp-hom-whiskerright--4e9fb952b346476be4df47ae.md) | 137 | `result-track:4e9fb952b346476be4df47aed78288cb6d8e527aa446fde55e1b34912c113551` |
| 10 | `instance` | [whiskeringRight_preservesColimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant50df3fa59de7ac5e865124c8313dfd76763f0b1711e5b12a8735a9206f9ceb02.lean/declarations/whiskeringright-preservescolimitsofshape--4c77882a0f2ea46f3e225cb9.md) | 144 | `declaration-track:4c77882a0f2ea46f3e225cb90720eace00abe038a143f2d04b69ceeb15c59c8f` |
| 11 | `def` | [colimitCompWhiskeringRightIsoColimitComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant50df3fa59de7ac5e865124c8313dfd76763f0b1711e5b12a8735a9206f9ceb02.lean/declarations/colimitcompwhiskeringrightisocolimitcomp--f0965054c7e1de1e715bc7cf.md) | 156 | `declaration-track:f0965054c7e1de1e715bc7cf3b9400f42e1c47a2f90427c3a8ad69982ae41762` |
| 12 | `theorem` | [ι_colimitCompWhiskeringRightIsoColimitComp_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant50df3fa59de7ac5e865124c8313dfd76763f0b1711e5b12a8735a9206f9ceb02.lean/declarations/colimitcompwhiskeringrightisocolimitcomp-hom--f3f37d6b851e777dad284ed7.md) | 163 | `result-track:f3f37d6b851e777dad284ed76a796be14c70eb6734caac5f111d09061723e30f` |
| 13 | `theorem` | [whiskerRight_ι_colimitCompWhiskeringRightIsoColimitComp_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant50df3fa59de7ac5e865124c8313dfd76763f0b1711e5b12a8735a9206f9ceb02.lean/declarations/whiskerright-colimitcompwhiskeringrightisocolimitcomp-inv--bd437d8ef6c1d2efacda4560.md) | 171 | `result-track:bd437d8ef6c1d2efacda45608c5ad0e8f9f94e0d28aa3a51b664295da11ff784` |
| 14 | `instance` | [whiskeringRightPreservesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant50df3fa59de7ac5e865124c8313dfd76763f0b1711e5b12a8735a9206f9ceb02.lean/declarations/whiskeringrightpreserveslimits--4b6e3dc7bc9fd61aca87eae7.md) | 178 | `declaration-track:4b6e3dc7bc9fd61aca87eae7e7bdea6f84d2d65d9891bdaa3e99f2fc75c86c20` |
| 15 | `instance` | [whiskeringRightPreservesColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant50df3fa59de7ac5e865124c8313dfd76763f0b1711e5b12a8735a9206f9ceb02.lean/declarations/whiskeringrightpreservescolimits--df8c42999208ab0de2df5c32.md) | 184 | `declaration-track:df8c42999208ab0de2df5c32a4b08ebb9f926afe59f775bf9aa9590e1b39b4d0` |
| 16 | `lemma` | [preservesLimit_of_lan_preservesLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant50df3fa59de7ac5e865124c8313dfd76763f0b1711e5b12a8735a9206f9ceb02.lean/declarations/preserveslimit-of-lan-preserveslimit--581bb7e99987715f4aee502d.md) | 191 | `result-track:581bb7e99987715f4aee502d450d14efe4727f95ad79ef57af77b3b308f7fda7` |
| 17 | `lemma` | [preservesFiniteLimits_of_evaluation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant50df3fa59de7ac5e865124c8313dfd76763f0b1711e5b12a8735a9206f9ceb02.lean/declarations/preservesfinitelimits-of-evaluation--9343f728ee730221a967ba0e.md) | 198 | `result-track:9343f728ee730221a967ba0e87ef0dddbf74a2d01f65f3cb0832ca0c2e7e7571` |
| 18 | `lemma` | [preservesFiniteColimits_of_evaluation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant50df3fa59de7ac5e865124c8313dfd76763f0b1711e5b12a8735a9206f9ceb02.lean/declarations/preservesfinitecolimits-of-evaluation--aa62bd28acde11fe0aef8acb.md) | 204 | `result-track:aa62bd28acde11fe0aef8acb7d518fedbfeb850d348f488fa1c96e5d04d8e72c` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant50df3fa59de7ac5e865124c8313dfd76763f0b1711e5b12a8735a9206f9ceb02.lean/declarations/instance--9a3d15f15182c39029bab41c.md) | 223 | `declaration-track:9a3d15f15182c39029bab41c517fda6798ade7d924c1951ccd8cbc338a055af7` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant50df3fa59de7ac5e865124c8313dfd76763f0b1711e5b12a8735a9206f9ceb02.lean/declarations/instance--906dd90a3bd7cb206d6385d9.md) | 240 | `declaration-track:906dd90a3bd7cb206d6385d96b0465fb38c7a59e04bc252aa7f9da504d9b04f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
