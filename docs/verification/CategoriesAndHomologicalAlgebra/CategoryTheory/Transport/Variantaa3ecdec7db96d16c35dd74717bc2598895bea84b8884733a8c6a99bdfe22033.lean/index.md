# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Transport.Variantaa3ecdec7db96d16c35dd74717bc2598895bea84b8884733a8c6a99bdfe22033

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ceb5f4ae062bb31a6cc34a077ed55afed0b7e75e",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variantaa3ecdec7db96d16c35dd74717bc2598895bea84b8884733a8c6a99bdfe22033.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variantaa3ecdec7db96d16c35dd74717bc2598895bea84b8884733a8c6a99bdfe22033.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variantaa3ecdec7db96d16c35dd74717bc2598895bea84b8884733a8c6a99bdfe22033.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ceb5f4ae062bb31a6cc34a077ed55afed0b7e75e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variantaa3ecdec7db96d16c35dd74717bc2598895bea84b8884733a8c6a99bdfe22033.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variantaa3ecdec7db96d16c35dd74717bc2598895bea84b8884733a8c6a99bdfe22033.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.NaturalTransformation` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [InducingFunctorData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variantaa3ecdec7db96d16c35dd74717bc2598895bea84b8884733a8c6a99bdfe22033.lean/declarations/inducingfunctordata--3ba647e203673f6a3535a386.md) | 51 | `declaration-track:3ba647e203673f6a3535a386fbc2fd5958de5d10b73642f78c26492f86c21379` |
| 2 | `def` | [induced](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variantaa3ecdec7db96d16c35dd74717bc2598895bea84b8884733a8c6a99bdfe22033.lean/declarations/induced--b8a8fe3c1895f443b97b4992.md) | 88 | `declaration-track:b8a8fe3c1895f443b97b4992ff18bf912437fbe3bac931065af6c2e2a057a4d2` |
| 3 | `def` | [fromInducedCoreMonoidal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variantaa3ecdec7db96d16c35dd74717bc2598895bea84b8884733a8c6a99bdfe22033.lean/declarations/frominducedcoremonoidal--b91a696a1578ad692a3c8be9.md) | 117 | `declaration-track:b91a696a1578ad692a3c8be9399bd1f7e25b77d6dfa2338e1f3de5591c3e0391` |
| 4 | `instance` | [fromInducedMonoidal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variantaa3ecdec7db96d16c35dd74717bc2598895bea84b8884733a8c6a99bdfe22033.lean/declarations/frominducedmonoidal--309995c30c3716bf292b02b3.md) | 131 | `declaration-track:309995c30c3716bf292b02b36bdd45e0c74ab741606cf018dc5ca0c2fad61ac2` |
| 5 | `def` | [transportStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variantaa3ecdec7db96d16c35dd74717bc2598895bea84b8884733a8c6a99bdfe22033.lean/declarations/transportstruct--4ecbf662220a2cd0cadc7595.md) | 141 | `declaration-track:4ecbf662220a2cd0cadc7595b6a577c0bceed72b86afeb396830cba13e238a11` |
| 6 | `def` | [transport](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variantaa3ecdec7db96d16c35dd74717bc2598895bea84b8884733a8c6a99bdfe22033.lean/declarations/transport--03c5e30b06700fb571b7599d.md) | 162 | `declaration-track:03c5e30b06700fb571b7599d29aba6ead9abab2d5b46061d9fddf09d1bef1461` |
| 7 | `def` | [Transported](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variantaa3ecdec7db96d16c35dd74717bc2598895bea84b8884733a8c6a99bdfe22033.lean/declarations/transported--f45df515bbddbcd568e9ba8a.md) | 170 | `declaration-track:f45df515bbddbcd568e9ba8aa4cfdc67360f905b41ec873577a3a707d1fb95ab` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variantaa3ecdec7db96d16c35dd74717bc2598895bea84b8884733a8c6a99bdfe22033.lean/declarations/instance--0af0830dc46234e762373bb3.md) | 172 | `declaration-track:0af0830dc46234e762373bb3149a1e4722a6e2a0259e93b0c3d5689cd2726f97` |
| 9 | `instance` | [Transported.instMonoidalCategoryStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variantaa3ecdec7db96d16c35dd74717bc2598895bea84b8884733a8c6a99bdfe22033.lean/declarations/transported-instmonoidalcategorystruct--32c666f6963fce9259e50c96.md) | 174 | `declaration-track:32c666f6963fce9259e50c9684e9fc6d99655ed461261893f884b450557e0d8d` |
| 10 | `instance` | [Transported.instMonoidalCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variantaa3ecdec7db96d16c35dd74717bc2598895bea84b8884733a8c6a99bdfe22033.lean/declarations/transported-instmonoidalcategory--68d03f5f6c63200278ce80a3.md) | 178 | `declaration-track:68d03f5f6c63200278ce80a33ac41915f00ba15b940050207d3be332a78af34d` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variantaa3ecdec7db96d16c35dd74717bc2598895bea84b8884733a8c6a99bdfe22033.lean/declarations/instance--e30e21a165a6d1f31c4c2498.md) | 181 | `declaration-track:e30e21a165a6d1f31c4c2498e679c7be07ec4cbeff0044cd3b6bc38e360cf329` |
| 12 | `abbrev` | [equivalenceTransported](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variantaa3ecdec7db96d16c35dd74717bc2598895bea84b8884733a8c6a99bdfe22033.lean/declarations/equivalencetransported--1cfe007f10d79a4eb46e6165.md) | 190 | `declaration-track:1cfe007f10d79a4eb46e61652fc49952f48002e9353b9caf0f1c7a5225b53da8` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variantaa3ecdec7db96d16c35dd74717bc2598895bea84b8884733a8c6a99bdfe22033.lean/declarations/instance--6b0339bc0466d6d11b9d5719.md) | 192 | `declaration-track:6b0339bc0466d6d11b9d57193e39a7ed83228a346aa13d4b9ed61d27c4d07c94` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variantaa3ecdec7db96d16c35dd74717bc2598895bea84b8884733a8c6a99bdfe22033.lean/declarations/instance--8fc9714831034aa0079b736b.md) | 196 | `declaration-track:8fc9714831034aa0079b736b3af94b53a40c963b19c54db14fc3e8fd0a11416d` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variantaa3ecdec7db96d16c35dd74717bc2598895bea84b8884733a8c6a99bdfe22033.lean/declarations/instance--2edb9e2d0dd479f93546b727.md) | 199 | `declaration-track:2edb9e2d0dd479f93546b72731e0a9df57b18d13f85c750c13af3183474bc47a` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variantaa3ecdec7db96d16c35dd74717bc2598895bea84b8884733a8c6a99bdfe22033.lean/declarations/instance--9bb09684aa3177dbd2d5d93b.md) | 202 | `declaration-track:9bb09684aa3177dbd2d5d93b2718abba9dae981ce6c42f743a721bc280be4e1f` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variantaa3ecdec7db96d16c35dd74717bc2598895bea84b8884733a8c6a99bdfe22033.lean/declarations/instance--0849023c9124c0174528b6b0.md) | 205 | `declaration-track:0849023c9124c0174528b6b0c358353f95eaf179792d26994c9fe157267f5594` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variantaa3ecdec7db96d16c35dd74717bc2598895bea84b8884733a8c6a99bdfe22033.lean/declarations/instance--e49be015a492213141592101.md) | 209 | `declaration-track:e49be015a492213141592101eb4a0a7fe0c919036bbc2264c47c446208c4917e` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Transport/Variantaa3ecdec7db96d16c35dd74717bc2598895bea84b8884733a8c6a99bdfe22033.lean/declarations/instance--f040d6dbc61f74853c69d634.md) | 213 | `declaration-track:f040d6dbc61f74853c69d6348beea38764e6a782086865d556709acf2070ef81` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
