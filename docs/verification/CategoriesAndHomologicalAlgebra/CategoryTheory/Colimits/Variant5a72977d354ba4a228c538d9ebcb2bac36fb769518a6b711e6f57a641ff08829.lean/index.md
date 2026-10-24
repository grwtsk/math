# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Colimits.Variant5a72977d354ba4a228c538d9ebcb2bac36fb769518a6b711e6f57a641ff08829

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "50bf7bc0bcc8fba35944728e140f136d96420885",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a72977d354ba4a228c538d9ebcb2bac36fb769518a6b711e6f57a641ff08829.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a72977d354ba4a228c538d9ebcb2bac36fb769518a6b711e6f57a641ff08829.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a72977d354ba4a228c538d9ebcb2bac36fb769518a6b711e6f57a641ff08829.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `50bf7bc0bcc8fba35944728e140f136d96420885`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a72977d354ba4a228c538d9ebcb2bac36fb769518a6b711e6f57a641ff08829.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a72977d354ba4a228c538d9ebcb2bac36fb769518a6b711e6f57a641ff08829.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.MonCat.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.HasLimits` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.Elementwise` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Prequotient](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a72977d354ba4a228c538d9ebcb2bac36fb769518a6b711e6f57a641ff08829.lean/declarations/prequotient--921e45d50c6a4af01097507c.md) | 58 | `declaration-track:921e45d50c6a4af01097507c25201faac659d2aea45672ed94b05bf76472bfe2` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a72977d354ba4a228c538d9ebcb2bac36fb769518a6b711e6f57a641ff08829.lean/declarations/instance--213f4175997d132598f7dc75.md) | 65 | `declaration-track:213f4175997d132598f7dc756d712584d42c0d2fec5840cac8ad1060668aa784` |
| 3 | `inductive` | [Relation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a72977d354ba4a228c538d9ebcb2bac36fb769518a6b711e6f57a641ff08829.lean/declarations/relation--62d54a54f1ecfe1731781941.md) | 74 | `declaration-track:62d54a54f1ecfe173178194147347f8c32f2d06f303b9e75175d15b70dc1bdb4` |
| 4 | `def` | [colimitSetoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a72977d354ba4a228c538d9ebcb2bac36fb769518a6b711e6f57a641ff08829.lean/declarations/colimitsetoid--565bf85ef5dba3121555b3a3.md) | 97 | `declaration-track:565bf85ef5dba3121555b3a393509e5d7ff7a3a14acd9ecbd300949c5d5cb74a` |
| 5 | `def` | [ColimitType](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a72977d354ba4a228c538d9ebcb2bac36fb769518a6b711e6f57a641ff08829.lean/declarations/colimittype--a04f664bb1435c1788c19d11.md) | 107 | `declaration-track:a04f664bb1435c1788c19d1133aeddcce2ffe88b6ac1c111c35375865ea7e9c5` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a72977d354ba4a228c538d9ebcb2bac36fb769518a6b711e6f57a641ff08829.lean/declarations/instance--d74153bbd076003ccb6fd340.md) | 112 | `declaration-track:d74153bbd076003ccb6fd340ba70287f6e312627d8c34372c5c13c079df2c6ac` |
| 7 | `instance` | [monoidColimitType](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a72977d354ba4a228c538d9ebcb2bac36fb769518a6b711e6f57a641ff08829.lean/declarations/monoidcolimittype--52ca9ac9d4922981775e6d68.md) | 116 | `declaration-track:52ca9ac9d4922981775e6d68e2bbecf037fd7c7a0ea2d3be62251203ef794a55` |
| 8 | `theorem` | [quot_one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a72977d354ba4a228c538d9ebcb2bac36fb769518a6b711e6f57a641ff08829.lean/declarations/quot-one--317a1d2e8e887888b1965a00.md) | 128 | `result-track:317a1d2e8e887888b1965a005af632c64f3d5c7c5fc9832641d5adeccabdda7b` |
| 9 | `theorem` | [quot_mul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a72977d354ba4a228c538d9ebcb2bac36fb769518a6b711e6f57a641ff08829.lean/declarations/quot-mul--5af71f595eaa978bfa246753.md) | 134 | `result-track:5af71f595eaa978bfa2467534bf421f41e49c862b5eba168bf366645c27dee75` |
| 10 | `def` | [colimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a72977d354ba4a228c538d9ebcb2bac36fb769518a6b711e6f57a641ff08829.lean/declarations/colimit--3c0ec5357ca809fb70b864cd.md) | 142 | `declaration-track:3c0ec5357ca809fb70b864cd5f1eefeb8ebf418e1097d62c4bb287f72bebb9ac` |
| 11 | `def` | [coconeFun](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a72977d354ba4a228c538d9ebcb2bac36fb769518a6b711e6f57a641ff08829.lean/declarations/coconefun--b9f8456200eff3084c05c8c5.md) | 148 | `declaration-track:b9f8456200eff3084c05c8c59e568689ec80d6a8902c29a97af67103cc3df6b6` |
| 12 | `def` | [coconeMorphism](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a72977d354ba4a228c538d9ebcb2bac36fb769518a6b711e6f57a641ff08829.lean/declarations/coconemorphism--3cf4e6c3276d27d454506157.md) | 154 | `declaration-track:3cf4e6c3276d27d4545061571cdc0d6eaf4c9ac918fedc40a085f1c00209590b` |
| 13 | `theorem` | [cocone_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a72977d354ba4a228c538d9ebcb2bac36fb769518a6b711e6f57a641ff08829.lean/declarations/cocone-naturality--2df1727c39521cd30d734359.md) | 162 | `result-track:2df1727c39521cd30d7343598e67eb9c9ae9324e649effa025f5da98c54a698e` |
| 14 | `theorem` | [cocone_naturality_components](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a72977d354ba4a228c538d9ebcb2bac36fb769518a6b711e6f57a641ff08829.lean/declarations/cocone-naturality-components--94e0d59e43186b267b1139c8.md) | 171 | `result-track:94e0d59e43186b267b1139c8927689780304e94e754e56622710e8d8b6ca035a` |
| 15 | `def` | [colimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a72977d354ba4a228c538d9ebcb2bac36fb769518a6b711e6f57a641ff08829.lean/declarations/colimitcocone--58f5679e734b0774734116ea.md) | 179 | `declaration-track:58f5679e734b0774734116ea18e2cbb741fc88f689560d8fa689f917d1107ccf` |
| 16 | `def` | [descFunLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a72977d354ba4a228c538d9ebcb2bac36fb769518a6b711e6f57a641ff08829.lean/declarations/descfunlift--91f5c6a1b436b70613dbb404.md) | 187 | `declaration-track:91f5c6a1b436b70613dbb404cf70fd6269774614a2618d03ac85ed36fb0b80c2` |
| 17 | `def` | [descFun](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a72977d354ba4a228c538d9ebcb2bac36fb769518a6b711e6f57a641ff08829.lean/declarations/descfun--e08e635fc55b08eb75f11322.md) | 195 | `declaration-track:e08e635fc55b08eb75f113223c55bfb3bda2dbb103bde40c685f6d4cfd802503` |
| 18 | `def` | [descMorphism](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a72977d354ba4a228c538d9ebcb2bac36fb769518a6b711e6f57a641ff08829.lean/declarations/descmorphism--10bea0fa39601aaf51a7ff27.md) | 216 | `declaration-track:10bea0fa39601aaf51a7ff27c33d7d317172372e43bbf573f778b9dc28e532a6` |
| 19 | `def` | [colimitIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a72977d354ba4a228c538d9ebcb2bac36fb769518a6b711e6f57a641ff08829.lean/declarations/colimitiscolimit--c91b9e5bbbe1ccbd3a3a2123.md) | 229 | `declaration-track:c91b9e5bbbe1ccbd3a3a2123944918de93caefaa76803a74452368583d561203` |
| 20 | `instance` | [hasColimits_monCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a72977d354ba4a228c538d9ebcb2bac36fb769518a6b711e6f57a641ff08829.lean/declarations/hascolimits-moncat--219fb1a9d86604284d9fe3d3.md) | 246 | `declaration-track:219fb1a9d86604284d9fe3d369f0eb8c06169759ea3fe254108f4793d2810478` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
