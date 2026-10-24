# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Generators.Variant9502a08ea50f5a04d77432b02b7d8ff379a541500b1c0f1d4d2d4138eda6e121

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1cbdf3ef8f6e552b046d0311d03cd25be82b8889",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Generators/Variant9502a08ea50f5a04d77432b02b7d8ff379a541500b1c0f1d4d2d4138eda6e121.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Generators/Variant9502a08ea50f5a04d77432b02b7d8ff379a541500b1c0f1d4d2d4138eda6e121.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Generators/Variant9502a08ea50f5a04d77432b02b7d8ff379a541500b1c0f1d4d2d4138eda6e121.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1cbdf3ef8f6e552b046d0311d03cd25be82b8889`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Generators/Variant9502a08ea50f5a04d77432b02b7d8ff379a541500b1c0f1d4d2d4138eda6e121.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Generators/Variant9502a08ea50f5a04d77432b02b7d8ff379a541500b1c0f1d4d2d4138eda6e121.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Sheaf.Free` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Sheaf.PushforwardContinuous` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.CoversTop` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GeneratingSections](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Generators/Variant9502a08ea50f5a04d77432b02b7d8ff379a541500b1c0f1d4d2d4138eda6e121.lean/declarations/generatingsections--444322cdda83d62b35c7228a.md) | 50 | `declaration-track:444322cdda83d62b35c7228a650b30ee0c074a14d55aa6a1ab0c31bd75e3cbdc` |
| 2 | `abbrev` | [π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Generators/Variant9502a08ea50f5a04d77432b02b7d8ff379a541500b1c0f1d4d2d4138eda6e121.lean/declarations/anonymous--9664136d111807841982d387.md) | 64 | `declaration-track:9664136d111807841982d387af19f99c6bd9ad7650daffa11dcbf6efbd267684` |
| 3 | `def` | [ofEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Generators/Variant9502a08ea50f5a04d77432b02b7d8ff379a541500b1c0f1d4d2d4138eda6e121.lean/declarations/ofepi--dffd10dd851f7a0f313cb65b.md) | 69 | `declaration-track:dffd10dd851f7a0f313cb65b1961ec1b7fbb3c70165acae69642571c624dbdb4` |
| 4 | `lemma` | [opEpi_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Generators/Variant9502a08ea50f5a04d77432b02b7d8ff379a541500b1c0f1d4d2d4138eda6e121.lean/declarations/opepi-id--508c0f69c9cc7507b3d90816.md) | 77 | `result-track:508c0f69c9cc7507b3d90816839db2e9e239185c8edf314b271570f60e2a307a` |
| 5 | `lemma` | [opEpi_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Generators/Variant9502a08ea50f5a04d77432b02b7d8ff379a541500b1c0f1d4d2d4138eda6e121.lean/declarations/opepi-comp--e0e26f889e2c69464e86f0cf.md) | 80 | `result-track:e0e26f889e2c69464e86f0cffa73c9e1d353898a7153696fdcac0841126ef545` |
| 6 | `def` | [equivOfIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Generators/Variant9502a08ea50f5a04d77432b02b7d8ff379a541500b1c0f1d4d2d4138eda6e121.lean/declarations/equivofiso--6fa57bc2b4de276e116586b9.md) | 84 | `declaration-track:6fa57bc2b4de276e116586b986390fcfd464654c1a4986b2c6276d9f85d5a70c` |
| 7 | `structure` | [LocalGeneratorsData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Generators/Variant9502a08ea50f5a04d77432b02b7d8ff379a541500b1c0f1d4d2d4138eda6e121.lean/declarations/localgeneratorsdata--d80c4dbe1726001efa9ceb2a.md) | 103 | `declaration-track:d80c4dbe1726001efa9ceb2a9f4d2208d717e580b9836ac84bbb30072e32507e` |
| 8 | `class` | [IsFiniteType](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Generators/Variant9502a08ea50f5a04d77432b02b7d8ff379a541500b1c0f1d4d2d4138eda6e121.lean/declarations/isfinitetype--531515171056576d16975ad8.md) | 114 | `declaration-track:531515171056576d16975ad8250a1a9b837cb1625d44f8f5964be0acacbf524a` |
| 9 | `def` | [localGeneratorsDataOfIsFiniteType](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Generators/Variant9502a08ea50f5a04d77432b02b7d8ff379a541500b1c0f1d4d2d4138eda6e121.lean/declarations/localgeneratorsdataofisfinitetype--742be1603e6b035255a3b41d.md) | 123 | `declaration-track:742be1603e6b035255a3b41d0e06fa188779402ad2de10fdd39176178b7ef414` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Generators/Variant9502a08ea50f5a04d77432b02b7d8ff379a541500b1c0f1d4d2d4138eda6e121.lean/declarations/instance--855af90d6f40304033cd1484.md) | 126 | `declaration-track:855af90d6f40304033cd148464f46bbcda2977718aa7558c9829b471548757de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
