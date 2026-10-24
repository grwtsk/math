# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Subobject.Variant8eed48b3dae202e6785fe8e3710f97d176bbc619ed33118fdddbe0aacf28e91d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f70905aa64171ed67a59254181de3bd7d508ca23",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant8eed48b3dae202e6785fe8e3710f97d176bbc619ed33118fdddbe0aacf28e91d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant8eed48b3dae202e6785fe8e3710f97d176bbc619ed33118fdddbe0aacf28e91d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant8eed48b3dae202e6785fe8e3710f97d176bbc619ed33118fdddbe0aacf28e91d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f70905aa64171ed67a59254181de3bd7d508ca23`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant8eed48b3dae202e6785fe8e3710f97d176bbc619ed33118fdddbe0aacf28e91d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant8eed48b3dae202e6785fe8e3710f97d176bbc619ed33118fdddbe0aacf28e91d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Abelian.GrothendieckAxioms.Colim` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.GrothendieckCategory.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Presentable.IsCardinalFiltered` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Subobject.Lattice` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [mono_of_isColimit_monoOver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant8eed48b3dae202e6785fe8e3710f97d176bbc619ed33118fdddbe0aacf28e91d.lean/declarations/mono-of-iscolimit-monoover--e936f410a92fb50a063ce189.md) | 55 | `result-track:e936f410a92fb50a063ce189c4c09a85c011be3d740efc2b87c82d16174c616f` |
| 2 | `lemma` | [subobjectMk_of_isColimit_eq_iSup](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant8eed48b3dae202e6785fe8e3710f97d176bbc619ed33118fdddbe0aacf28e91d.lean/declarations/subobjectmk-of-iscolimit-eq-isup--4922006c863eb34b81a79fec.md) | 66 | `result-track:4922006c863eb34b81a79fec8e621342b2ffc54ccde1dba1fe164a6d1da3f457` |
| 3 | `def` | [isColimitMapCoconeOfSubobjectMkEqISup](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant8eed48b3dae202e6785fe8e3710f97d176bbc619ed33118fdddbe0aacf28e91d.lean/declarations/iscolimitmapcoconeofsubobjectmkeqisup--2cef49095f736f4534c90006.md) | 95 | `declaration-track:2cef49095f736f4534c90006b06143545b768e23b000a04460177ca1dc4faa15` |
| 4 | `lemma` | [exists_isIso_of_functor_from_monoOver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant8eed48b3dae202e6785fe8e3710f97d176bbc619ed33118fdddbe0aacf28e91d.lean/declarations/exists-isiso-of-functor-from-monoover--d43ec840dd08bb3f2b145d9f.md) | 118 | `result-track:d43ec840dd08bb3f2b145d9fd6c6f489f5aa4f4298e9236660940b5a0dfc5659` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
