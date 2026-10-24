# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant5318adef8729c1fab95aff572376d8a30385f1541575d56f6593b1504b4c50fd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb7870d9f3676a67679856ef2e7cb90645ef61f6",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5318adef8729c1fab95aff572376d8a30385f1541575d56f6593b1504b4c50fd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5318adef8729c1fab95aff572376d8a30385f1541575d56f6593b1504b4c50fd.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5318adef8729c1fab95aff572376d8a30385f1541575d56f6593b1504b4c50fd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb7870d9f3676a67679856ef2e7cb90645ef61f6`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5318adef8729c1fab95aff572376d8a30385f1541575d56f6593b1504b4c50fd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5318adef8729c1fab95aff572376d8a30385f1541575d56f6593b1504b4c50fd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.ConstantSheaf` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Equivalence` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Condensed.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Condensed.Light.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [discrete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5318adef8729c1fab95aff572376d8a30385f1541575d56f6593b1504b4c50fd.lean/declarations/discrete--7dc881069f85efe4b4104db3.md) | 40 | `declaration-track:7dc881069f85efe4b4104db3f4de443afa5021cd1738b1b9c6231e7c72f9a959` |
| 2 | `def` | [underlying](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5318adef8729c1fab95aff572376d8a30385f1541575d56f6593b1504b4c50fd.lean/declarations/underlying--7d6db852ed7aa3c315608557.md) | 47 | `declaration-track:7d6db852ed7aa3c3156085578228a8246bd8e11f2ddceca697b185fb588997f4` |
| 3 | `def` | [discreteUnderlyingAdj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5318adef8729c1fab95aff572376d8a30385f1541575d56f6593b1504b4c50fd.lean/declarations/discreteunderlyingadj--103a0606849ef8c59aa71bec.md) | 54 | `declaration-track:103a0606849ef8c59aa71bec365ecb0c59d26a455958993e4b91a334620bbec2` |
| 4 | `def` | [discrete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5318adef8729c1fab95aff572376d8a30385f1541575d56f6593b1504b4c50fd.lean/declarations/discrete--322530304d134ad595f1c6ed.md) | 68 | `declaration-track:322530304d134ad595f1c6ed5460e7ad80e68c24b84588ffe3c2db721571aba9` |
| 5 | `def` | [underlying](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5318adef8729c1fab95aff572376d8a30385f1541575d56f6593b1504b4c50fd.lean/declarations/underlying--764e2f00b0925af1cb5d69ac.md) | 75 | `declaration-track:764e2f00b0925af1cb5d69ac3dd029781072a08f36a9d45113a44e941dcfab71` |
| 6 | `def` | [discreteUnderlyingAdj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5318adef8729c1fab95aff572376d8a30385f1541575d56f6593b1504b4c50fd.lean/declarations/discreteunderlyingadj--06a15b9f2018322cee5c8be9.md) | 82 | `declaration-track:06a15b9f2018322cee5c8be923ca5810fce28b74180c1fcf215224994f2b8b69` |
| 7 | `abbrev` | [LightCondSet.discrete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5318adef8729c1fab95aff572376d8a30385f1541575d56f6593b1504b4c50fd.lean/declarations/lightcondset-discrete--a9b5989f08c826932010c827.md) | 89 | `declaration-track:a9b5989f08c826932010c827f2023be4a25f35bb7af18aff1980d34166b785f7` |
| 8 | `abbrev` | [LightCondSet.underlying](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5318adef8729c1fab95aff572376d8a30385f1541575d56f6593b1504b4c50fd.lean/declarations/lightcondset-underlying--7e52d771ada4b8fb1c2a00e8.md) | 92 | `declaration-track:7e52d771ada4b8fb1c2a00e86bfb96f4340bbef4a31055b885fb643540b090e7` |
| 9 | `abbrev` | [LightCondSet.discreteUnderlyingAdj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5318adef8729c1fab95aff572376d8a30385f1541575d56f6593b1504b4c50fd.lean/declarations/lightcondset-discreteunderlyingadj--cea9828cf79aa4f8638ea089.md) | 96 | `declaration-track:cea9828cf79aa4f8638ea08935679be1ef8194c45e9bd908ae1e01dd5168a542` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
