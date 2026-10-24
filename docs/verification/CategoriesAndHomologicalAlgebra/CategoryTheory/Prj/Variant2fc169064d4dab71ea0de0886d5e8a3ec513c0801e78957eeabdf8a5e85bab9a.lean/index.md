# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Prj.Variant2fc169064d4dab71ea0de0886d5e8a3ec513c0801e78957eeabdf8a5e85bab9a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b6f70ba12b57ed7a5d57f158d5a360c523f3282",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Prj/Variant2fc169064d4dab71ea0de0886d5e8a3ec513c0801e78957eeabdf8a5e85bab9a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prj/Variant2fc169064d4dab71ea0de0886d5e8a3ec513c0801e78957eeabdf8a5e85bab9a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prj/Variant2fc169064d4dab71ea0de0886d5e8a3ec513c0801e78957eeabdf8a5e85bab9a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b6f70ba12b57ed7a5d57f158d5a360c523f3282`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Prj/Variant2fc169064d4dab71ea0de0886d5e8a3ec513c0801e78957eeabdf8a5e85bab9a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Prj/Variant2fc169064d4dab71ea0de0886d5e8a3ec513c0801e78957eeabdf8a5e85bab9a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.Functor.Multivariate` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.QPF.Multivariate.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Prj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prj/Variant2fc169064d4dab71ea0de0886d5e8a3ec513c0801e78957eeabdf8a5e85bab9a.lean/declarations/prj--5521fc96da925cc6d5c1792e.md) | 26 | `declaration-track:5521fc96da925cc6d5c1792eb5ab1f75a603b6cb15666d574ba858dba050eca1` |
| 2 | `instance` | [Prj.inhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prj/Variant2fc169064d4dab71ea0de0886d5e8a3ec513c0801e78957eeabdf8a5e85bab9a.lean/declarations/prj-inhabited--bba42035601b21c222113fbe.md) | 29 | `declaration-track:bba42035601b21c222113fbec63d041e0fdb225a74a2d2d4cdb76f3846096b36` |
| 3 | `def` | [Prj.map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prj/Variant2fc169064d4dab71ea0de0886d5e8a3ec513c0801e78957eeabdf8a5e85bab9a.lean/declarations/prj-map--0a14fc11669c01226d8d91bf.md) | 34 | `declaration-track:0a14fc11669c01226d8d91bf152e82c8d190b1b0a9f90e9776831f2a46a4e3ea` |
| 4 | `instance` | [Prj.mvfunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prj/Variant2fc169064d4dab71ea0de0886d5e8a3ec513c0801e78957eeabdf8a5e85bab9a.lean/declarations/prj-mvfunctor--f35366482d1a3d57f39b2bbd.md) | 37 | `declaration-track:f35366482d1a3d57f39b2bbd83e0ea9d19d096ff505eeb0519585b6578cfaa6e` |
| 5 | `def` | [Prj.P](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prj/Variant2fc169064d4dab71ea0de0886d5e8a3ec513c0801e78957eeabdf8a5e85bab9a.lean/declarations/prj-p--e97df2aa6be5add453918162.md) | 41 | `declaration-track:e97df2aa6be5add453918162fa58e8d7339d7c6b46159f100bdef5204cc4791e` |
| 6 | `def` | [Prj.abs](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prj/Variant2fc169064d4dab71ea0de0886d5e8a3ec513c0801e78957eeabdf8a5e85bab9a.lean/declarations/prj-abs--f64e43641d784414e6b1728c.md) | 48 | `declaration-track:f64e43641d784414e6b1728cf386acb8e960f6f2deb13b6da321d21b21c36dc1` |
| 7 | `def` | [Prj.repr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prj/Variant2fc169064d4dab71ea0de0886d5e8a3ec513c0801e78957eeabdf8a5e85bab9a.lean/declarations/prj-repr--62e2c84b9580a69d7cc2f62a.md) | 53 | `declaration-track:62e2c84b9580a69d7cc2f62af93f435190119251a72f3f92c9eaadabb6aa4aae` |
| 8 | `instance` | [Prj.mvqpf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prj/Variant2fc169064d4dab71ea0de0886d5e8a3ec513c0801e78957eeabdf8a5e85bab9a.lean/declarations/prj-mvqpf--a44e1337f8f3c71f0a07c6ab.md) | 57 | `declaration-track:a44e1337f8f3c71f0a07c6ab11b4341ee7eaf0eff24c8fe7a40e13ecec954bb7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
