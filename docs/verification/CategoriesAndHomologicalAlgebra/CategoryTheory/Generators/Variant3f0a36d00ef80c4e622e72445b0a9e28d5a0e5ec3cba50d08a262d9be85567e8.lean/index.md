# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Generators.Variant3f0a36d00ef80c4e622e72445b0a9e28d5a0e5ec3cba50d08a262d9be85567e8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fdd0855f1ac331d5e7c354f1c15c5616a741dc9c",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Generators/Variant3f0a36d00ef80c4e622e72445b0a9e28d5a0e5ec3cba50d08a262d9be85567e8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Generators/Variant3f0a36d00ef80c4e622e72445b0a9e28d5a0e5ec3cba50d08a262d9be85567e8.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Generators/Variant3f0a36d00ef80c4e622e72445b0a9e28d5a0e5ec3cba50d08a262d9be85567e8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fdd0855f1ac331d5e7c354f1c15c5616a741dc9c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Generators/Variant3f0a36d00ef80c4e622e72445b0a9e28d5a0e5ec3cba50d08a262d9be85567e8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Generators/Variant3f0a36d00ef80c4e622e72445b0a9e28d5a0e5ec3cba50d08a262d9be85567e8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Sheaf.Free` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Sheaf.PushforwardContinuous` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.CoversTop` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GeneratingSections](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Generators/Variant3f0a36d00ef80c4e622e72445b0a9e28d5a0e5ec3cba50d08a262d9be85567e8.lean/declarations/generatingsections--eefcbab59a9e2190a553703b.md) | 42 | `declaration-track:eefcbab59a9e2190a553703bcb2a2e748d7bc163bbcd2bc8e337542781d8e61e` |
| 2 | `abbrev` | [π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Generators/Variant3f0a36d00ef80c4e622e72445b0a9e28d5a0e5ec3cba50d08a262d9be85567e8.lean/declarations/anonymous--46ca12b5c37545ada6724544.md) | 56 | `declaration-track:46ca12b5c37545ada67245449f0c7d3772f8b1f58be342f559f3878bcb6db055` |
| 3 | `def` | [ofEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Generators/Variant3f0a36d00ef80c4e622e72445b0a9e28d5a0e5ec3cba50d08a262d9be85567e8.lean/declarations/ofepi--027e091ed1002533c895405b.md) | 61 | `declaration-track:027e091ed1002533c895405bbe85cdde33ac58559e1892412a56547a3b8daa18` |
| 4 | `lemma` | [opEpi_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Generators/Variant3f0a36d00ef80c4e622e72445b0a9e28d5a0e5ec3cba50d08a262d9be85567e8.lean/declarations/opepi-id--de685d48967cb641f533afbb.md) | 69 | `result-track:de685d48967cb641f533afbb136d4a644017aad5a7c78cd3f4ff5dd17f8c74c9` |
| 5 | `lemma` | [opEpi_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Generators/Variant3f0a36d00ef80c4e622e72445b0a9e28d5a0e5ec3cba50d08a262d9be85567e8.lean/declarations/opepi-comp--0145f6590b2e9d8b4dc8f4bb.md) | 72 | `result-track:0145f6590b2e9d8b4dc8f4bb4f64c72c883067e91b500cb0ba305b8588917a27` |
| 6 | `def` | [equivOfIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Generators/Variant3f0a36d00ef80c4e622e72445b0a9e28d5a0e5ec3cba50d08a262d9be85567e8.lean/declarations/equivofiso--73d71f89068a98441cb1408c.md) | 76 | `declaration-track:73d71f89068a98441cb1408c9363c838a8259f70d6b0a7e0cec7898b026ca944` |
| 7 | `structure` | [LocalGeneratorsData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Generators/Variant3f0a36d00ef80c4e622e72445b0a9e28d5a0e5ec3cba50d08a262d9be85567e8.lean/declarations/localgeneratorsdata--a176802e82d8a304fe760870.md) | 95 | `declaration-track:a176802e82d8a304fe7608701421791b95d0fe50540a18ab8eb9859bb9d8ee0b` |
| 8 | `class` | [IsFiniteType](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Generators/Variant3f0a36d00ef80c4e622e72445b0a9e28d5a0e5ec3cba50d08a262d9be85567e8.lean/declarations/isfinitetype--f5a7542fea2d7ce1e6a814b8.md) | 106 | `declaration-track:f5a7542fea2d7ce1e6a814b8bd1889bcbd282c1b183f3e03f9bd8c7e5520a6b9` |
| 9 | `def` | [localGeneratorsDataOfIsFiniteType](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Generators/Variant3f0a36d00ef80c4e622e72445b0a9e28d5a0e5ec3cba50d08a262d9be85567e8.lean/declarations/localgeneratorsdataofisfinitetype--c4b2b7beaf6754d031295881.md) | 115 | `declaration-track:c4b2b7beaf6754d031295881bab973c6f30e9f2c98919fab58a6c450c01a5e92` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Generators/Variant3f0a36d00ef80c4e622e72445b0a9e28d5a0e5ec3cba50d08a262d9be85567e8.lean/declarations/instance--b48040e4feb785afa12f0154.md) | 118 | `declaration-track:b48040e4feb785afa12f01548053eb681ea056e24298d9e97074b1e4946380fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
