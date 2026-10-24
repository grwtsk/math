# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Adjunction.Variant6af01762e6d5923ede54153f0622b002bfd8268b5feb539e7b3dbdeae217b272

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e5b547954681d1ba73a0cdbaf76c143796e57a3",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant6af01762e6d5923ede54153f0622b002bfd8268b5feb539e7b3dbdeae217b272.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant6af01762e6d5923ede54153f0622b002bfd8268b5feb539e7b3dbdeae217b272.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant6af01762e6d5923ede54153f0622b002bfd8268b5feb539e7b3dbdeae217b272.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e5b547954681d1ba73a0cdbaf76c143796e57a3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant6af01762e6d5923ede54153f0622b002bfd8268b5feb539e7b3dbdeae217b272.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant6af01762e6d5923ede54153f0622b002bfd8268b5feb539e7b3dbdeae217b272.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Triangulated.Functor` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Shift.Adjunction` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Additive` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Opposites` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Triangulated.Opposite.Functor` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isTriangulated_rightAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant6af01762e6d5923ede54153f0622b002bfd8268b5feb539e7b3dbdeae217b272.lean/declarations/istriangulated-rightadjoint--d169b187eeb588f6a020633e.md) | 54 | `result-track:d169b187eeb588f6a020633e04875b8bc250826ede9f34d1f5f840ec7378ef4b` |
| 2 | `lemma` | [isTriangulated_leftAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant6af01762e6d5923ede54153f0622b002bfd8268b5feb539e7b3dbdeae217b272.lean/declarations/istriangulated-leftadjoint--8c83ae8581e6fa0947cacda3.md) | 133 | `result-track:8c83ae8581e6fa0947cacda3c22bdc6eaf299f393e88711d140758757230e39b` |
| 3 | `class` | [IsTriangulated](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant6af01762e6d5923ede54153f0622b002bfd8268b5feb539e7b3dbdeae217b272.lean/declarations/istriangulated--47e3fcf5927992ff2ebc6d7d.md) | 142 | `declaration-track:47e3fcf5927992ff2ebc6d7dd78fc645c7b5bc5dc92ba9f535b15697adb7e70c` |
| 4 | `lemma` | [mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant6af01762e6d5923ede54153f0622b002bfd8268b5feb539e7b3dbdeae217b272.lean/declarations/mk--751f0640349287db6654b3ed.md) | 153 | `result-track:751f0640349287db6654b3ed8067085a9852a83db314e9970cb00cde18dd8db0` |
| 5 | `lemma` | [mk''](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant6af01762e6d5923ede54153f0622b002bfd8268b5feb539e7b3dbdeae217b272.lean/declarations/mk--acf6f75110cfa0e58a2f8cd3.md) | 158 | `result-track:acf6f75110cfa0e58a2f8cd39fb5d70ca757c7cbbce674b24da976141cae15ce` |
| 6 | `instance` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant6af01762e6d5923ede54153f0622b002bfd8268b5feb539e7b3dbdeae217b272.lean/declarations/id--1dfca33c5d1afca077ff4432.md) | 163 | `declaration-track:1dfca33c5d1afca077ff4432bf313276f7fbc64d9e847c0be1be029ce068c68f` |
| 7 | `instance` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant6af01762e6d5923ede54153f0622b002bfd8268b5feb539e7b3dbdeae217b272.lean/declarations/comp--a1984b0a2d97527b16d498db.md) | 171 | `declaration-track:a1984b0a2d97527b16d498db712d291b4251b94cab6925b9e9cc1b3583469286` |
| 8 | `abbrev` | [IsTriangulated](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant6af01762e6d5923ede54153f0622b002bfd8268b5feb539e7b3dbdeae217b272.lean/declarations/istriangulated--fc6a111c49b6292bb0a576fc.md) | 185 | `declaration-track:fc6a111c49b6292bb0a576fc16e1c507afc2cc7f57a5580019981d3d5ebe91d8` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant6af01762e6d5923ede54153f0622b002bfd8268b5feb539e7b3dbdeae217b272.lean/declarations/instance--d0fe7ce9d5f1d187e6d77754.md) | 189 | `declaration-track:d0fe7ce9d5f1d187e6d77754226035fc875cecde9b479de747c2bf316ce68844` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant6af01762e6d5923ede54153f0622b002bfd8268b5feb539e7b3dbdeae217b272.lean/declarations/instance--7433f9a3e1ec5276b11edaef.md) | 190 | `declaration-track:7433f9a3e1ec5276b11edaef503a651519fb568c48540f7a54d37ea967c9872a` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant6af01762e6d5923ede54153f0622b002bfd8268b5feb539e7b3dbdeae217b272.lean/declarations/instance--b3fb7270424c259cf8c48213.md) | 192 | `declaration-track:b3fb7270424c259cf8c482137132dd4793bdb5d766feede4d5db734d6b835ee8` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant6af01762e6d5923ede54153f0622b002bfd8268b5feb539e7b3dbdeae217b272.lean/declarations/instance--a90759250b821c856486f893.md) | 193 | `declaration-track:a90759250b821c856486f8938c05918718c934db570d5585d31ff934c21fc7f5` |
| 13 | `lemma` | [mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant6af01762e6d5923ede54153f0622b002bfd8268b5feb539e7b3dbdeae217b272.lean/declarations/mk--fe6325ad7b6741652942f190.md) | 197 | `result-track:fe6325ad7b6741652942f1905c7c41831aebc997ccb7222582fbd46b30b1c6b4` |
| 14 | `lemma` | [mk''](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant6af01762e6d5923ede54153f0622b002bfd8268b5feb539e7b3dbdeae217b272.lean/declarations/mk--a91add0441737f9f071da24f.md) | 201 | `result-track:a91add0441737f9f071da24f9e41fed0252b35543f0c67139bf3303848c31abb` |
| 15 | `instance` | [refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant6af01762e6d5923ede54153f0622b002bfd8268b5feb539e7b3dbdeae217b272.lean/declarations/refl--4220351b9ae17d5894431023.md) | 207 | `declaration-track:4220351b9ae17d5894431023c75656b9704ea258a343505958e34f24e62ff03a` |
| 16 | `instance` | [symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant6af01762e6d5923ede54153f0622b002bfd8268b5feb539e7b3dbdeae217b272.lean/declarations/symm--78a08f1bda5e61b030813e46.md) | 214 | `declaration-track:78a08f1bda5e61b030813e46225c7159294fdbf5f454bdc75555a434fccdb5dc` |
| 17 | `instance` | [trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant6af01762e6d5923ede54153f0622b002bfd8268b5feb539e7b3dbdeae217b272.lean/declarations/trans--6688faa5ef334dc54de0d73d.md) | 223 | `declaration-track:6688faa5ef334dc54de0d73d4a2d1b623c33ec6f59f6d87cdcb411aaa3e453a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
