# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Yoneda.Variant6c047eb2cee4e52f1b3fd13da16062e45dbfa28ddebc8432b0c7995d5f203c9b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae48cbcbb39b7909404b59e5b44a269658dcde6f",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant6c047eb2cee4e52f1b3fd13da16062e45dbfa28ddebc8432b0c7995d5f203c9b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant6c047eb2cee4e52f1b3fd13da16062e45dbfa28ddebc8432b0c7995d5f203c9b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant6c047eb2cee4e52f1b3fd13da16062e45dbfa28ddebc8432b0c7995d5f203c9b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae48cbcbb39b7909404b59e5b44a269658dcde6f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant6c047eb2cee4e52f1b3fd13da16062e45dbfa28ddebc8432b0c7995d5f203c9b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant6c047eb2cee4e52f1b3fd13da16062e45dbfa28ddebc8432b0c7995d5f203c9b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Linear.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Yoneda.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [linearYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant6c047eb2cee4e52f1b3fd13da16062e45dbfa28ddebc8432b0c7995d5f203c9b.lean/declarations/linearyoneda--8433acf03647902660700e68.md) | 35 | `declaration-track:8433acf03647902660700e68d04ebe9fc76001812aa2402b2633d299ec0edb11` |
| 2 | `def` | [linearCoyoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant6c047eb2cee4e52f1b3fd13da16062e45dbfa28ddebc8432b0c7995d5f203c9b.lean/declarations/linearcoyoneda--eea922245bd4518f9f14375a.md) | 47 | `declaration-track:eea922245bd4518f9f14375a0d22f3bbe0495aedacae12f74d763747f3e6a846` |
| 3 | `instance` | [linearYoneda_obj_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant6c047eb2cee4e52f1b3fd13da16062e45dbfa28ddebc8432b0c7995d5f203c9b.lean/declarations/linearyoneda-obj-additive--c0d4798736eaf9cc2c037e4e.md) | 55 | `declaration-track:c0d4798736eaf9cc2c037e4e4049cc3223cad3af18adf2927d2333af56a0f84c` |
| 4 | `instance` | [linearCoyoneda_obj_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant6c047eb2cee4e52f1b3fd13da16062e45dbfa28ddebc8432b0c7995d5f203c9b.lean/declarations/linearcoyoneda-obj-additive--d5f80d91d44191092afc2965.md) | 57 | `declaration-track:d5f80d91d44191092afc29658eeaa6d89e4ee79dd6883a294411f55044a30107` |
| 5 | `theorem` | [whiskering_linearYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant6c047eb2cee4e52f1b3fd13da16062e45dbfa28ddebc8432b0c7995d5f203c9b.lean/declarations/whiskering-linearyoneda--5b9028d4da4827fb66fa945f.md) | 60 | `result-track:5b9028d4da4827fb66fa945fcccedbff1e60f9aafa9973afa951f24359c1b7dd` |
| 6 | `theorem` | [whiskering_linearYoneda₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant6c047eb2cee4e52f1b3fd13da16062e45dbfa28ddebc8432b0c7995d5f203c9b.lean/declarations/whiskering-linearyoneda--739993c21ef9649cf478203d.md) | 65 | `result-track:739993c21ef9649cf478203d38deb653727a79c0d1dbaeeca67c67bae21217de` |
| 7 | `theorem` | [whiskering_linearCoyoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant6c047eb2cee4e52f1b3fd13da16062e45dbfa28ddebc8432b0c7995d5f203c9b.lean/declarations/whiskering-linearcoyoneda--12f3a0447339d6bbaebab4a5.md) | 71 | `result-track:12f3a0447339d6bbaebab4a59a364e4413be64b26ec09a054fac26aeabf4fbcc` |
| 8 | `theorem` | [whiskering_linearCoyoneda₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant6c047eb2cee4e52f1b3fd13da16062e45dbfa28ddebc8432b0c7995d5f203c9b.lean/declarations/whiskering-linearcoyoneda--ec1ff7767a254f4d0a9387b4.md) | 76 | `result-track:ec1ff7767a254f4d0a9387b45b73fb5a644a4dfc6f2aa6266714198b412971a4` |
| 9 | `instance` | [full_linearYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant6c047eb2cee4e52f1b3fd13da16062e45dbfa28ddebc8432b0c7995d5f203c9b.lean/declarations/full-linearyoneda--01d92228ef94faca7906fd9c.md) | 82 | `declaration-track:01d92228ef94faca7906fd9c8462b8028b2addd6c632f803a213a64b352ab2a9` |
| 10 | `instance` | [full_linearCoyoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant6c047eb2cee4e52f1b3fd13da16062e45dbfa28ddebc8432b0c7995d5f203c9b.lean/declarations/full-linearcoyoneda--d4ef828c55eb060405088149.md) | 88 | `declaration-track:d4ef828c55eb0604050881498e5ac57a47a4bae043b223a76cfac0b99bdc5d3e` |
| 11 | `instance` | [faithful_linearYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant6c047eb2cee4e52f1b3fd13da16062e45dbfa28ddebc8432b0c7995d5f203c9b.lean/declarations/faithful-linearyoneda--fc992fbae5dabcb0a0668507.md) | 94 | `declaration-track:fc992fbae5dabcb0a066850758907c5ae7711a73977f7e9115e23ed0002f5a62` |
| 12 | `instance` | [faithful_linearCoyoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant6c047eb2cee4e52f1b3fd13da16062e45dbfa28ddebc8432b0c7995d5f203c9b.lean/declarations/faithful-linearcoyoneda--00007200b35726962153ad84.md) | 97 | `declaration-track:00007200b35726962153ad84f68ebb4b9eef09a97d506fb598e239a1a810bb91` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
