# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant101371ced34ff9c9463dba5e9163ac30443c412c4927318ec4f42a8d0c72471c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "afb7367c36c9cfcaf1de7706c045bdfa829202d2",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant101371ced34ff9c9463dba5e9163ac30443c412c4927318ec4f42a8d0c72471c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant101371ced34ff9c9463dba5e9163ac30443c412c4927318ec4f42a8d0c72471c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant101371ced34ff9c9463dba5e9163ac30443c412c4927318ec4f42a8d0c72471c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `afb7367c36c9cfcaf1de7706c045bdfa829202d2`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant101371ced34ff9c9463dba5e9163ac30443c412c4927318ec4f42a8d0c72471c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant101371ced34ff9c9463dba5e9163ac30443c412c4927318ec4f42a8d0c72471c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Whiskering` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Iso` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.FullyFaithful` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Functor.ReflectsIsomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant101371ced34ff9c9463dba5e9163ac30443c412c4927318ec4f42a8d0c72471c.lean/declarations/functor-reflectsisomorphisms--8a783d79c62e8a333b2bb96d.md) | 34 | `declaration-track:8a783d79c62e8a333b2bb96dbd6afdc4acb282a8a4305f377f2d24f4e84a350b` |
| 2 | `theorem` | [isIso_of_reflects_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant101371ced34ff9c9463dba5e9163ac30443c412c4927318ec4f42a8d0c72471c.lean/declarations/isiso-of-reflects-iso--6a44b41c7e937060a8a10a89.md) | 39 | `result-track:6a44b41c7e937060a8a10a89b2bc88bcf6c26a58886e21af3d2f4af5b46a50bc` |
| 3 | `lemma` | [isIso_iff_of_reflects_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant101371ced34ff9c9463dba5e9163ac30443c412c4927318ec4f42a8d0c72471c.lean/declarations/isiso-iff-of-reflects-iso--c494f6dded533c10af513f87.md) | 43 | `result-track:c494f6dded533c10af513f87a3483ab2bbaba61e45bf4b74bb5c63b77d8a0f08` |
| 4 | `lemma` | [Functor.FullyFaithful.reflectsIsomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant101371ced34ff9c9463dba5e9163ac30443c412c4927318ec4f42a8d0c72471c.lean/declarations/functor-fullyfaithful-reflectsisomorphisms--e2d3dbfff2bf5e722d07bcb3.md) | 47 | `result-track:e2d3dbfff2bf5e722d07bcb3767887ae70a7ccf7fa2c6c166717f4f3518c8f72` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant101371ced34ff9c9463dba5e9163ac30443c412c4927318ec4f42a8d0c72471c.lean/declarations/instance--e1604b007451596e2f774d48.md) | 51 | `declaration-track:e1604b007451596e2f774d48912df996bca6ea59394774211549bcb02e0a172b` |
| 6 | `instance` | [reflectsIsomorphisms_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant101371ced34ff9c9463dba5e9163ac30443c412c4927318ec4f42a8d0c72471c.lean/declarations/reflectsisomorphisms-comp--b710c8508024dcd08779e72c.md) | 56 | `declaration-track:b710c8508024dcd08779e72cbcbbd9c22d99f85434f96a76d14c31d8831fe5c9` |
| 7 | `lemma` | [reflectsIsomorphisms_of_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant101371ced34ff9c9463dba5e9163ac30443c412c4927318ec4f42a8d0c72471c.lean/declarations/reflectsisomorphisms-of-comp--87d1c6cdb642f7df136543c8.md) | 63 | `result-track:87d1c6cdb642f7df136543c855a38747686a42561fe8fc17e7c457d0b59ccf55` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant101371ced34ff9c9463dba5e9163ac30443c412c4927318ec4f42a8d0c72471c.lean/declarations/instance--4234b75df16ee73804f25172.md) | 70 | `declaration-track:4234b75df16ee73804f2517213d2a325e6efa129a42b6ff4bf46a007dcc9508c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
