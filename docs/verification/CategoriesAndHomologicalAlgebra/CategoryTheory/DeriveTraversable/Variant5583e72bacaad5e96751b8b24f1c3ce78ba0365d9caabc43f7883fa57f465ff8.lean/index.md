# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.DeriveTraversable.Variant5583e72bacaad5e96751b8b24f1c3ce78ba0365d9caabc43f7883fa57f465ff8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "95bc102a890ea8258bcc0702b2e62cd947938793",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant5583e72bacaad5e96751b8b24f1c3ce78ba0365d9caabc43f7883fa57f465ff8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant5583e72bacaad5e96751b8b24f1c3ce78ba0365d9caabc43f7883fa57f465ff8.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant5583e72bacaad5e96751b8b24f1c3ce78ba0365d9caabc43f7883fa57f465ff8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `95bc102a890ea8258bcc0702b2e62cd947938793`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant5583e72bacaad5e96751b8b24f1c3ce78ba0365d9caabc43f7883fa57f465ff8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant5583e72bacaad5e96751b8b24f1c3ce78ba0365d9caabc43f7883fa57f465ff8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.Traversable.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Elab.Match` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Elab.Deriving.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Elab.PreDefinition.Main` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nestedMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant5583e72bacaad5e96751b8b24f1c3ce78ba0365d9caabc43f7883fa57f465ff8.lean/declarations/nestedmap--dedbd76440cad0bd5b93916c.md) | 36 | `declaration-track:dedbd76440cad0bd5b93916ca6c5f26e7d6f8196407ad259e1839955962e739c` |
| 2 | `def` | [mapField](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant5583e72bacaad5e96751b8b24f1c3ce78ba0365d9caabc43f7883fa57f465ff8.lean/declarations/mapfield--2e4cff5e1538d37ade0a1575.md) | 48 | `declaration-track:2e4cff5e1538d37ade0a1575b5f84ca1fe8b33956d3460f8e3ca57b52d3d62d7` |
| 3 | `def` | [getAuxDefOfDeclName](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant5583e72bacaad5e96751b8b24f1c3ce78ba0365d9caabc43f7883fa57f465ff8.lean/declarations/getauxdefofdeclname--a18f121770f6d26719bb9744.md) | 67 | `declaration-track:a18f121770f6d26719bb9744abf87b9aad49603e40b48e8f6dfc315191fd90af` |
| 4 | `def` | [mapConstructor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant5583e72bacaad5e96751b8b24f1c3ce78ba0365d9caabc43f7883fa57f465ff8.lean/declarations/mapconstructor--c448d6b5897f1d6e85d1321c.md) | 78 | `declaration-track:c448d6b5897f1d6e85d1321cbf7dfe86525d0fa007a80f542ab8303e185bbbe5` |
| 5 | `def` | [mkCasesOnMatch](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant5583e72bacaad5e96751b8b24f1c3ce78ba0365d9caabc43f7883fa57f465ff8.lean/declarations/mkcasesonmatch--63c955f500dea15c45175b70.md) | 94 | `declaration-track:63c955f500dea15c45175b70e963fce2679d25c8108c304eb07f9a6a09e551c1` |
| 6 | `def` | [getFVarIdsNotImplementationDetails](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant5583e72bacaad5e96751b8b24f1c3ce78ba0365d9caabc43f7883fa57f465ff8.lean/declarations/getfvaridsnotimplementationdetails--21c471ef561190db4ea2fe4a.md) | 129 | `declaration-track:21c471ef561190db4ea2fe4a671814fcf0c6993e6c37a97d72e2549454478bc7` |
| 7 | `def` | [getFVarsNotImplementationDetails](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant5583e72bacaad5e96751b8b24f1c3ce78ba0365d9caabc43f7883fa57f465ff8.lean/declarations/getfvarsnotimplementationdetails--6ea8c7c116b5011b53abce84.md) | 136 | `declaration-track:6ea8c7c116b5011b53abce84b22de1917631e1a70bb4e93d6c286e4bdc4abb97` |
| 8 | `def` | [mkMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant5583e72bacaad5e96751b8b24f1c3ce78ba0365d9caabc43f7883fa57f465ff8.lean/declarations/mkmap--0a7695e56bd0d20e9360cff5.md) | 140 | `declaration-track:0a7695e56bd0d20e9360cff5c6bc69296f0bbb2a27b01e4422a4293f785f6e16` |
| 9 | `def` | [deriveFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant5583e72bacaad5e96751b8b24f1c3ce78ba0365d9caabc43f7883fa57f465ff8.lean/declarations/derivefunctor--9f53e8d4e9a0a069d6cfd918.md) | 162 | `declaration-track:9f53e8d4e9a0a069d6cfd9182a665f32284e91b46993cffd41474862e7a731bc` |
| 10 | `def` | [mkInstanceNameForTypeExpr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant5583e72bacaad5e96751b8b24f1c3ce78ba0365d9caabc43f7883fa57f465ff8.lean/declarations/mkinstancenamefortypeexpr--c072fa0eea2617ccef345bbb.md) | 195 | `declaration-track:c072fa0eea2617ccef345bbb33aff4cf979e2ef1ff74206426ce21fc0bbfe6ee` |
| 11 | `def` | [mkOneInstance](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant5583e72bacaad5e96751b8b24f1c3ce78ba0365d9caabc43f7883fa57f465ff8.lean/declarations/mkoneinstance--d2bd4170055ea871d947262d.md) | 215 | `declaration-track:d2bd4170055ea871d947262dfca2c7968c245747c8d229997dc2187ddf3c455d` |
| 12 | `def` | [higherOrderDeriveHandler](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant5583e72bacaad5e96751b8b24f1c3ce78ba0365d9caabc43f7883fa57f465ff8.lean/declarations/higherorderderivehandler--abfd6ade2789118bbeda5eda.md) | 260 | `declaration-track:abfd6ade2789118bbeda5edae9b69113a51280471e287f66c9f059a8799da1c2` |
| 13 | `def` | [functorDeriveHandler](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant5583e72bacaad5e96751b8b24f1c3ce78ba0365d9caabc43f7883fa57f465ff8.lean/declarations/functorderivehandler--62f2d5935a57665ddad0d6d6.md) | 271 | `declaration-track:62f2d5935a57665ddad0d6d60250cbcfc04c3dc83a99d14075668277938d74a9` |
| 14 | `initialize` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant5583e72bacaad5e96751b8b24f1c3ce78ba0365d9caabc43f7883fa57f465ff8.lean/declarations/initialize--55f3a43ffb7a2abd595d686a.md) | 274 | `declaration-track:55f3a43ffb7a2abd595d686a79a85c00f484c4c7029188919890877666dfdebe` |
| 15 | `def` | [deriveLawfulFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant5583e72bacaad5e96751b8b24f1c3ce78ba0365d9caabc43f7883fa57f465ff8.lean/declarations/derivelawfulfunctor--afc1895af093f75bc05cb82e.md) | 277 | `declaration-track:afc1895af093f75bc05cb82e21b18a7aef6b7610a095bdecdbe908d6ef84f523` |
| 16 | `def` | [lawfulFunctorDeriveHandler](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant5583e72bacaad5e96751b8b24f1c3ce78ba0365d9caabc43f7883fa57f465ff8.lean/declarations/lawfulfunctorderivehandler--655b404675839c2767a759f1.md) | 309 | `declaration-track:655b404675839c2767a759f1e91dded1501c368782e3b74dfc8ad13dc65c5bdf` |
| 17 | `initialize` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant5583e72bacaad5e96751b8b24f1c3ce78ba0365d9caabc43f7883fa57f465ff8.lean/declarations/initialize--a7047c1bae135181e8d352b9.md) | 313 | `declaration-track:a7047c1bae135181e8d352b9acf1aac008e1bcb73bad84923bf9e101ff26b67d` |
| 18 | `def` | [nestedTraverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant5583e72bacaad5e96751b8b24f1c3ce78ba0365d9caabc43f7883fa57f465ff8.lean/declarations/nestedtraverse--43ddd99e96bdcdeb9b42f866.md) | 318 | `declaration-track:43ddd99e96bdcdeb9b42f866498ff1b9a78932952004b971a59d508aee4233a8` |
| 19 | `def` | [traverseField](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant5583e72bacaad5e96751b8b24f1c3ce78ba0365d9caabc43f7883fa57f465ff8.lean/declarations/traversefield--38fb5c7b80888fce28f3f441.md) | 333 | `declaration-track:38fb5c7b80888fce28f3f441ff90114f2f523c681bae659ebb0565d8a9240c7d` |
| 20 | `def` | [traverseConstructor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant5583e72bacaad5e96751b8b24f1c3ce78ba0365d9caabc43f7883fa57f465ff8.lean/declarations/traverseconstructor--160ed8222245ea12f2fd6c3d.md) | 352 | `declaration-track:160ed8222245ea12f2fd6c3daa3683bfde61dab80827a6e77098124d1aac7f3c` |
| 21 | `def` | [mkTraverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant5583e72bacaad5e96751b8b24f1c3ce78ba0365d9caabc43f7883fa57f465ff8.lean/declarations/mktraverse--6ed9f9f4d4bc48830b67f4c7.md) | 380 | `declaration-track:6ed9f9f4d4bc48830b67f4c7875be79ee451d8e168c332955e12e57563ccf97f` |
| 22 | `def` | [deriveTraversable](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant5583e72bacaad5e96751b8b24f1c3ce78ba0365d9caabc43f7883fa57f465ff8.lean/declarations/derivetraversable--b3b549d7ae4a457fed4d5eaa.md) | 403 | `declaration-track:b3b549d7ae4a457fed4d5eaa046d4d9cc6b4a0bcb0154b3f2bf32a634e60744b` |
| 23 | `def` | [traversableDeriveHandler](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant5583e72bacaad5e96751b8b24f1c3ce78ba0365d9caabc43f7883fa57f465ff8.lean/declarations/traversablederivehandler--e18f5707a408cbb87a58040f.md) | 433 | `declaration-track:e18f5707a408cbb87a58040f27741571f6aca811b747a7a945deb19c351fed12` |
| 24 | `initialize` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant5583e72bacaad5e96751b8b24f1c3ce78ba0365d9caabc43f7883fa57f465ff8.lean/declarations/initialize--499ab0d893fdfb6b15ff79f3.md) | 436 | `declaration-track:499ab0d893fdfb6b15ff79f3e5748aed7e8ebdd056c7415357f50f10be58ac95` |
| 25 | `def` | [simpFunctorGoal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant5583e72bacaad5e96751b8b24f1c3ce78ba0365d9caabc43f7883fa57f465ff8.lean/declarations/simpfunctorgoal--0cb8e58a8d466001a83e36db.md) | 439 | `declaration-track:0cb8e58a8d466001a83e36db434bb0d86ef1be8bb0813f6aea39c804ac7860d5` |
| 26 | `def` | [traversableLawStarter](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant5583e72bacaad5e96751b8b24f1c3ce78ba0365d9caabc43f7883fa57f465ff8.lean/declarations/traversablelawstarter--07d6897f1e4eaafba34b55d3.md) | 456 | `declaration-track:07d6897f1e4eaafba34b55d3822e6eb6617c1646c2f7e6c4219ae4ed33e76b76` |
| 27 | `def` | [deriveLawfulTraversable](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant5583e72bacaad5e96751b8b24f1c3ce78ba0365d9caabc43f7883fa57f465ff8.lean/declarations/derivelawfultraversable--fcbf9c8561ea36a1eef42272.md) | 470 | `declaration-track:fcbf9c8561ea36a1eef42272bbf4d429e33bc41e8e0714b7c2d3948275aae14e` |
| 28 | `def` | [lawfulTraversableDeriveHandler](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant5583e72bacaad5e96751b8b24f1c3ce78ba0365d9caabc43f7883fa57f465ff8.lean/declarations/lawfultraversablederivehandler--083f751d1c3ad685e967daac.md) | 498 | `declaration-track:083f751d1c3ad685e967daac5170835ac1d7d988dfd74c9a75f461b36014a128` |
| 29 | `initialize` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant5583e72bacaad5e96751b8b24f1c3ce78ba0365d9caabc43f7883fa57f465ff8.lean/declarations/initialize--7044ae98e118aa5c7d47f5c0.md) | 502 | `declaration-track:7044ae98e118aa5c7d47f5c002c120676b656897d1facb9d50137d765c2dee62` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
