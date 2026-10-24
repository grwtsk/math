# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantb5523b4fbbd503997c671ef4e0aab17fa5441edd4b393068dffc8999eec18e48

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9139f88dd460f83de67b092428632be0a170c217",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb5523b4fbbd503997c671ef4e0aab17fa5441edd4b393068dffc8999eec18e48.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb5523b4fbbd503997c671ef4e0aab17fa5441edd4b393068dffc8999eec18e48.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb5523b4fbbd503997c671ef4e0aab17fa5441edd4b393068dffc8999eec18e48.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9139f88dd460f83de67b092428632be0a170c217`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb5523b4fbbd503997c671ef4e0aab17fa5441edd4b393068dffc8999eec18e48.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb5523b4fbbd503997c671ef4e0aab17fa5441edd4b393068dffc8999eec18e48.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Whiskering` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Iso` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.FullyFaithful` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Functor.ReflectsIsomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb5523b4fbbd503997c671ef4e0aab17fa5441edd4b393068dffc8999eec18e48.lean/declarations/functor-reflectsisomorphisms--eedfc296314804c3204ced78.md) | 42 | `declaration-track:eedfc296314804c3204ced78205fb65803134d73d9e378d1585cbd24ab626a9e` |
| 2 | `theorem` | [isIso_of_reflects_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb5523b4fbbd503997c671ef4e0aab17fa5441edd4b393068dffc8999eec18e48.lean/declarations/isiso-of-reflects-iso--64c86cffcd3c94ffdb766117.md) | 47 | `result-track:64c86cffcd3c94ffdb766117abe5b42fb08e39b8fe814f21f7440b980d752acf` |
| 3 | `lemma` | [isIso_iff_of_reflects_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb5523b4fbbd503997c671ef4e0aab17fa5441edd4b393068dffc8999eec18e48.lean/declarations/isiso-iff-of-reflects-iso--040a83104d6dd0026ffbe0ad.md) | 51 | `result-track:040a83104d6dd0026ffbe0ad0a67c5983a54aaba3badb01e55d8e6f8914e2554` |
| 4 | `lemma` | [Functor.FullyFaithful.reflectsIsomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb5523b4fbbd503997c671ef4e0aab17fa5441edd4b393068dffc8999eec18e48.lean/declarations/functor-fullyfaithful-reflectsisomorphisms--2f5cd656acad068c904eafef.md) | 55 | `result-track:2f5cd656acad068c904eafef31702640b322bafff44bd44305c0f3f27daf8b38` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb5523b4fbbd503997c671ef4e0aab17fa5441edd4b393068dffc8999eec18e48.lean/declarations/instance--9bb494393f30e8c9fdb6d106.md) | 59 | `declaration-track:9bb494393f30e8c9fdb6d106a918bd7fbcfa373e545b93d542b455709dfd03fe` |
| 6 | `instance` | [reflectsIsomorphisms_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb5523b4fbbd503997c671ef4e0aab17fa5441edd4b393068dffc8999eec18e48.lean/declarations/reflectsisomorphisms-comp--f6434cff4049645b7380c1d8.md) | 64 | `declaration-track:f6434cff4049645b7380c1d87039fe418769dbb5dc68c3a2433b74a167573f95` |
| 7 | `lemma` | [reflectsIsomorphisms_of_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb5523b4fbbd503997c671ef4e0aab17fa5441edd4b393068dffc8999eec18e48.lean/declarations/reflectsisomorphisms-of-comp--3963f53e139498c0ac1d548f.md) | 71 | `result-track:3963f53e139498c0ac1d548f9ce22d15778c4a64e3ffed26dda9bdf79693bf4e` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb5523b4fbbd503997c671ef4e0aab17fa5441edd4b393068dffc8999eec18e48.lean/declarations/instance--8914c82f517afcce5d5e5c08.md) | 78 | `declaration-track:8914c82f517afcce5d5e5c083bf14a7c38095a1b1eec22cd6dea639f45295265` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
