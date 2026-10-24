# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.DeriveTraversable.Variant4ae9542774b0b30bf4a59d414e34b6734ffa512577bc977cd88e27b64e563a6c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "88f5712fd86939cf1ccac87905525dc2a52b22d4",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant4ae9542774b0b30bf4a59d414e34b6734ffa512577bc977cd88e27b64e563a6c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant4ae9542774b0b30bf4a59d414e34b6734ffa512577bc977cd88e27b64e563a6c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant4ae9542774b0b30bf4a59d414e34b6734ffa512577bc977cd88e27b64e563a6c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `88f5712fd86939cf1ccac87905525dc2a52b22d4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant4ae9542774b0b30bf4a59d414e34b6734ffa512577bc977cd88e27b64e563a6c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant4ae9542774b0b30bf4a59d414e34b6734ffa512577bc977cd88e27b64e563a6c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Traversable.Lemmas` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nestedMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant4ae9542774b0b30bf4a59d414e34b6734ffa512577bc977cd88e27b64e563a6c.lean/declarations/nestedmap--09f0c685d774912be499a68b.md) | 28 | `declaration-track:09f0c685d774912be499a68bc88a78a06ee8f606c19b1aca58233be755e1beef` |
| 2 | `def` | [mapField](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant4ae9542774b0b30bf4a59d414e34b6734ffa512577bc977cd88e27b64e563a6c.lean/declarations/mapfield--89bd3ce25da46a0fd6703f45.md) | 40 | `declaration-track:89bd3ce25da46a0fd6703f45961a4ddc4c8e80bd5fa5a8a11d93392ce73b4511` |
| 3 | `def` | [getAuxDefOfDeclName](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant4ae9542774b0b30bf4a59d414e34b6734ffa512577bc977cd88e27b64e563a6c.lean/declarations/getauxdefofdeclname--1c94fa9e4b6911ebcee831f5.md) | 59 | `declaration-track:1c94fa9e4b6911ebcee831f5c96c67a0870ffcae8d292493b9a5f60ee9a64a1b` |
| 4 | `def` | [mapConstructor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant4ae9542774b0b30bf4a59d414e34b6734ffa512577bc977cd88e27b64e563a6c.lean/declarations/mapconstructor--fb75e083e61580e405a6d9ae.md) | 70 | `declaration-track:fb75e083e61580e405a6d9aeb2322abf1a7b0dee7e27ea6688474e20d5035c80` |
| 5 | `def` | [mkCasesOnMatch](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant4ae9542774b0b30bf4a59d414e34b6734ffa512577bc977cd88e27b64e563a6c.lean/declarations/mkcasesonmatch--141f3aed454ecc6f2842d591.md) | 86 | `declaration-track:141f3aed454ecc6f2842d591a2907da121cd75b5a5f723b01b47058c39e564f3` |
| 6 | `def` | [getFVarIdsNotImplementationDetails](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant4ae9542774b0b30bf4a59d414e34b6734ffa512577bc977cd88e27b64e563a6c.lean/declarations/getfvaridsnotimplementationdetails--4db81ed712deb22d8e32a1c6.md) | 121 | `declaration-track:4db81ed712deb22d8e32a1c650c33611de73136634effbbc0ccc67bde572033b` |
| 7 | `def` | [getFVarsNotImplementationDetails](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant4ae9542774b0b30bf4a59d414e34b6734ffa512577bc977cd88e27b64e563a6c.lean/declarations/getfvarsnotimplementationdetails--d57c5bf9704f0666f64d8dcc.md) | 128 | `declaration-track:d57c5bf9704f0666f64d8dccbf96a72ac98d24ca6cabffb82fbd5ef621c14f18` |
| 8 | `def` | [mkMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant4ae9542774b0b30bf4a59d414e34b6734ffa512577bc977cd88e27b64e563a6c.lean/declarations/mkmap--a3c0fc2d557182a6442e3ce9.md) | 132 | `declaration-track:a3c0fc2d557182a6442e3ce904ef2a40e4fc658a4e088cee1f3d544f5aa54c65` |
| 9 | `def` | [deriveFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant4ae9542774b0b30bf4a59d414e34b6734ffa512577bc977cd88e27b64e563a6c.lean/declarations/derivefunctor--ce365a50a4fd16afacf2e408.md) | 154 | `declaration-track:ce365a50a4fd16afacf2e408cf31641e3cf87390ad233c43266d4c2c8dd4ddcb` |
| 10 | `def` | [mkInstanceNameForTypeExpr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant4ae9542774b0b30bf4a59d414e34b6734ffa512577bc977cd88e27b64e563a6c.lean/declarations/mkinstancenamefortypeexpr--9d998441e71616fc160c52f7.md) | 186 | `declaration-track:9d998441e71616fc160c52f7d7db54a7d7cf8c031eedb8be5addaad1b9f64490` |
| 11 | `def` | [mkOneInstance](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant4ae9542774b0b30bf4a59d414e34b6734ffa512577bc977cd88e27b64e563a6c.lean/declarations/mkoneinstance--554700a86057c52ebcb25e8d.md) | 206 | `declaration-track:554700a86057c52ebcb25e8d5d51420a1925ef10d77cbe9bfe15467f6e7eb4e2` |
| 12 | `def` | [higherOrderDeriveHandler](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant4ae9542774b0b30bf4a59d414e34b6734ffa512577bc977cd88e27b64e563a6c.lean/declarations/higherorderderivehandler--2065c4126c32f3bea098e9f5.md) | 250 | `declaration-track:2065c4126c32f3bea098e9f5154d6be89b8bba226cb9531eb8a9a79e1b8fd17b` |
| 13 | `def` | [functorDeriveHandler](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant4ae9542774b0b30bf4a59d414e34b6734ffa512577bc977cd88e27b64e563a6c.lean/declarations/functorderivehandler--4837e631e626a447ac3771e5.md) | 261 | `declaration-track:4837e631e626a447ac3771e551d88efcc943b2c208cb5284e9f9301d0ba08b39` |
| 14 | `initialize` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant4ae9542774b0b30bf4a59d414e34b6734ffa512577bc977cd88e27b64e563a6c.lean/declarations/initialize--3788e61ca0f313a6e09f2e69.md) | 264 | `declaration-track:3788e61ca0f313a6e09f2e69841727fc89b0636d3e64fbcaf742fcb4f7394ddb` |
| 15 | `def` | [deriveLawfulFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant4ae9542774b0b30bf4a59d414e34b6734ffa512577bc977cd88e27b64e563a6c.lean/declarations/derivelawfulfunctor--83493aeebd3dea7e6f5e354c.md) | 267 | `declaration-track:83493aeebd3dea7e6f5e354c8abc931f5b21c3a0ad26a317a885e3b4f1e07035` |
| 16 | `def` | [lawfulFunctorDeriveHandler](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant4ae9542774b0b30bf4a59d414e34b6734ffa512577bc977cd88e27b64e563a6c.lean/declarations/lawfulfunctorderivehandler--91cf3bf1ec53aa35faec042d.md) | 299 | `declaration-track:91cf3bf1ec53aa35faec042d59ef79937473b959f97d2b9c5ebde451bae746b7` |
| 17 | `initialize` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant4ae9542774b0b30bf4a59d414e34b6734ffa512577bc977cd88e27b64e563a6c.lean/declarations/initialize--570ab769d0c4703069bed60c.md) | 303 | `declaration-track:570ab769d0c4703069bed60c2bb8ee37f77f41d522b562742d78964de0810534` |
| 18 | `def` | [nestedTraverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant4ae9542774b0b30bf4a59d414e34b6734ffa512577bc977cd88e27b64e563a6c.lean/declarations/nestedtraverse--71491bc05c4ed89c25973ad1.md) | 308 | `declaration-track:71491bc05c4ed89c25973ad19fcfcdca91aff90285448e2a8ed871d30a0b0983` |
| 19 | `def` | [traverseField](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant4ae9542774b0b30bf4a59d414e34b6734ffa512577bc977cd88e27b64e563a6c.lean/declarations/traversefield--b3b777957554ac36a15dedb3.md) | 323 | `declaration-track:b3b777957554ac36a15dedb3beec77ac3a61e0932f1635e33bb5ca094677ab30` |
| 20 | `def` | [traverseConstructor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant4ae9542774b0b30bf4a59d414e34b6734ffa512577bc977cd88e27b64e563a6c.lean/declarations/traverseconstructor--928b3673e4efe5edd7b9e431.md) | 342 | `declaration-track:928b3673e4efe5edd7b9e4319e9734b97d1029c16e45a52bf29e9403b37ebe3f` |
| 21 | `def` | [mkTraverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant4ae9542774b0b30bf4a59d414e34b6734ffa512577bc977cd88e27b64e563a6c.lean/declarations/mktraverse--faa0ef9b1223d30d030ece43.md) | 370 | `declaration-track:faa0ef9b1223d30d030ece43cbd1e58bb5eeadf78040f1ab45e0f4cd04a2a2e8` |
| 22 | `def` | [deriveTraversable](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant4ae9542774b0b30bf4a59d414e34b6734ffa512577bc977cd88e27b64e563a6c.lean/declarations/derivetraversable--2b6965f9767db5e0cb2f6f76.md) | 393 | `declaration-track:2b6965f9767db5e0cb2f6f7679e2ffea94416d254181f5c0cdefe1b0ec70c6e4` |
| 23 | `def` | [traversableDeriveHandler](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant4ae9542774b0b30bf4a59d414e34b6734ffa512577bc977cd88e27b64e563a6c.lean/declarations/traversablederivehandler--5dc7dafb1c8ee3e8789b17b0.md) | 422 | `declaration-track:5dc7dafb1c8ee3e8789b17b0f552bfb98a1eecb9b550a7c265aa25abcbf22528` |
| 24 | `initialize` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant4ae9542774b0b30bf4a59d414e34b6734ffa512577bc977cd88e27b64e563a6c.lean/declarations/initialize--09bfdb6dae6a2811259cf27e.md) | 425 | `declaration-track:09bfdb6dae6a2811259cf27ef98da7f0d6ccbba83460d20b9069162f00bad51a` |
| 25 | `def` | [simpFunctorGoal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant4ae9542774b0b30bf4a59d414e34b6734ffa512577bc977cd88e27b64e563a6c.lean/declarations/simpfunctorgoal--6288ec780363fa9f43abade5.md) | 428 | `declaration-track:6288ec780363fa9f43abade57f3c833c90582ac9491e8c47e7e674b557acd5c3` |
| 26 | `def` | [traversableLawStarter](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant4ae9542774b0b30bf4a59d414e34b6734ffa512577bc977cd88e27b64e563a6c.lean/declarations/traversablelawstarter--7f5f7a708b5d58c8bc4d0e11.md) | 444 | `declaration-track:7f5f7a708b5d58c8bc4d0e116e5142984eba18ed07bd65d628315fde6b65b9c7` |
| 27 | `def` | [deriveLawfulTraversable](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant4ae9542774b0b30bf4a59d414e34b6734ffa512577bc977cd88e27b64e563a6c.lean/declarations/derivelawfultraversable--bd46efdb231961c52a9e5b0f.md) | 458 | `declaration-track:bd46efdb231961c52a9e5b0fa3f322409ca1999d0e461b77da1344f85e10e6b7` |
| 28 | `def` | [lawfulTraversableDeriveHandler](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant4ae9542774b0b30bf4a59d414e34b6734ffa512577bc977cd88e27b64e563a6c.lean/declarations/lawfultraversablederivehandler--e1473026c61bca47db30584c.md) | 486 | `declaration-track:e1473026c61bca47db30584c535677acb41c1eca03a1b379a8dd1da15b6ea615` |
| 29 | `initialize` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant4ae9542774b0b30bf4a59d414e34b6734ffa512577bc977cd88e27b64e563a6c.lean/declarations/initialize--234b4e47904a9bb7beda72cd.md) | 490 | `declaration-track:234b4e47904a9bb7beda72cdad2aeb3ded414c654258c1b99ed7af4396bfde2c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
