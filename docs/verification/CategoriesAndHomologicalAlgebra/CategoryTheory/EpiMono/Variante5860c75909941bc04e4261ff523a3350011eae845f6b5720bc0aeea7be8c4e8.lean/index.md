# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EpiMono.Variante5860c75909941bc04e4261ff523a3350011eae845f6b5720bc0aeea7be8c4e8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "04df3b7adf7f72b252174d6ee8b0d7af9f381ed2",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variante5860c75909941bc04e4261ff523a3350011eae845f6b5720bc0aeea7be8c4e8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variante5860c75909941bc04e4261ff523a3350011eae845f6b5720bc0aeea7be8c4e8.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variante5860c75909941bc04e4261ff523a3350011eae845f6b5720bc0aeea7be8c4e8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `04df3b7adf7f72b252174d6ee8b0d7af9f381ed2`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variante5860c75909941bc04e4261ff523a3350011eae845f6b5720bc0aeea7be8c4e8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variante5860c75909941bc04e4261ff523a3350011eae845f6b5720bc0aeea7be8c4e8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.ObjectProperty.ClosedUnderIsomorphisms` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.ShortExact` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsClosedUnderSubobjects](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variante5860c75909941bc04e4261ff523a3350011eae845f6b5720bc0aeea7be8c4e8.lean/declarations/isclosedundersubobjects--314aeec1703ecb800021c637.md) | 40 | `declaration-track:314aeec1703ecb800021c6370cf8b52f91abe36348ea65d37e403d11fc911828` |
| 2 | `lemma` | [prop_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variante5860c75909941bc04e4261ff523a3350011eae845f6b5720bc0aeea7be8c4e8.lean/declarations/prop-of-mono--73befb3bcf85810f649093d6.md) | 47 | `result-track:73befb3bcf85810f649093d6171192432af18bf3d0f03969325caa0ced4860ff` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variante5860c75909941bc04e4261ff523a3350011eae845f6b5720bc0aeea7be8c4e8.lean/declarations/instance--7a5fb1fae52edab2712b65ed.md) | 50 | `declaration-track:7a5fb1fae52edab2712b65ed717cae0f9766e6ab2f9d1af53e56f52c7ae89f80` |
| 4 | `lemma` | [prop_X₁_of_shortExact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variante5860c75909941bc04e4261ff523a3350011eae845f6b5720bc0aeea7be8c4e8.lean/declarations/prop-x-of-shortexact--a2bc89276d4274c6a6cb8ab5.md) | 53 | `result-track:a2bc89276d4274c6a6cb8ab5804d1d31bbe94573074e60313f3a7af485ff0826` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variante5860c75909941bc04e4261ff523a3350011eae845f6b5720bc0aeea7be8c4e8.lean/declarations/instance--0660e48558539cc16b1be788.md) | 58 | `declaration-track:0660e48558539cc16b1be788434d5008bdccc925fb8f0569f9a27dea4e643a61` |
| 6 | `class` | [IsClosedUnderQuotients](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variante5860c75909941bc04e4261ff523a3350011eae845f6b5720bc0aeea7be8c4e8.lean/declarations/isclosedunderquotients--4a50a56652ed655429b3dc98.md) | 68 | `declaration-track:4a50a56652ed655429b3dc98052e0094232c668b6c373a2d5d08e4e1d61d0008` |
| 7 | `lemma` | [prop_of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variante5860c75909941bc04e4261ff523a3350011eae845f6b5720bc0aeea7be8c4e8.lean/declarations/prop-of-epi--911e7eec83ea0ae1e057a868.md) | 73 | `result-track:911e7eec83ea0ae1e057a8682d7ff710e0f7bbc836ff1632c18e0e40c8446bf0` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variante5860c75909941bc04e4261ff523a3350011eae845f6b5720bc0aeea7be8c4e8.lean/declarations/instance--11890bc508c06497dff36394.md) | 76 | `declaration-track:11890bc508c06497dff363944ed2a325b234e2a6e1f7a5401130f93fac6223ab` |
| 9 | `lemma` | [prop_X₃_of_shortExact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variante5860c75909941bc04e4261ff523a3350011eae845f6b5720bc0aeea7be8c4e8.lean/declarations/prop-x-of-shortexact--09157ac970f88ef7b021846f.md) | 79 | `result-track:09157ac970f88ef7b021846f2a32455a1455b32585b6ad8c938a11043d48b3be` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variante5860c75909941bc04e4261ff523a3350011eae845f6b5720bc0aeea7be8c4e8.lean/declarations/instance--403070b89197fcb86e145d71.md) | 84 | `declaration-track:403070b89197fcb86e145d713b6d8b01bd2337a2af1ebfe43803c7c89ec4606d` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variante5860c75909941bc04e4261ff523a3350011eae845f6b5720bc0aeea7be8c4e8.lean/declarations/instance--dbd7e5c1320b7d8b41148155.md) | 90 | `declaration-track:dbd7e5c1320b7d8b4114815556d0bd32e8897c5b409cfbe802a5ae47b255b61e` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variante5860c75909941bc04e4261ff523a3350011eae845f6b5720bc0aeea7be8c4e8.lean/declarations/instance--3895e3bb235ce4311da723a9.md) | 93 | `declaration-track:3895e3bb235ce4311da723a956c1896334b48544b1cb4bb6cd1ada878bdc28ba` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variante5860c75909941bc04e4261ff523a3350011eae845f6b5720bc0aeea7be8c4e8.lean/declarations/instance--b3b2b8244f0ea70fa5680131.md) | 96 | `declaration-track:b3b2b8244f0ea70fa56801314f2a761fda7c8a67e297967f9b1df2e3f9942ae4` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variante5860c75909941bc04e4261ff523a3350011eae845f6b5720bc0aeea7be8c4e8.lean/declarations/instance--fc893d6637cd8c54b16d59ec.md) | 99 | `declaration-track:fc893d6637cd8c54b16d59ec24907128a3a4df106b4e11b4cf5307d04ab0bd2d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
