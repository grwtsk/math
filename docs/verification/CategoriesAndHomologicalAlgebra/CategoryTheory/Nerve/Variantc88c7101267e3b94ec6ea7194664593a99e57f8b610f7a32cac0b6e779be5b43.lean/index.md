# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Nerve.Variantc88c7101267e3b94ec6ea7194664593a99e57f8b610f7a32cac0b6e779be5b43

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c223b9eebe87c961e5231ceb9a22b26db0585e9",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Nerve/Variantc88c7101267e3b94ec6ea7194664593a99e57f8b610f7a32cac0b6e779be5b43.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Nerve/Variantc88c7101267e3b94ec6ea7194664593a99e57f8b610f7a32cac0b6e779be5b43.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Nerve/Variantc88c7101267e3b94ec6ea7194664593a99e57f8b610f7a32cac0b6e779be5b43.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c223b9eebe87c961e5231ceb9a22b26db0585e9`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Nerve/Variantc88c7101267e3b94ec6ea7194664593a99e57f8b610f7a32cac0b6e779be5b43.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Nerve/Variantc88c7101267e3b94ec6ea7194664593a99e57f8b610f7a32cac0b6e779be5b43.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.SimplicialSet.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ComposableArrows` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nerve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Nerve/Variantc88c7101267e3b94ec6ea7194664593a99e57f8b610f7a32cac0b6e779be5b43.lean/declarations/nerve--6d01e465adcdbeb8f52ac843.md) | 39 | `declaration-track:6d01e465adcdbeb8f52ac8435219c932b42310bc35a68d009444a2d48b035487` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Nerve/Variantc88c7101267e3b94ec6ea7194664593a99e57f8b610f7a32cac0b6e779be5b43.lean/declarations/instance--5f58c824ab95374aed7933ba.md) | 46 | `declaration-track:5f58c824ab95374aed7933ba53821a3e291b7d8abe3191cd036bf36be6c4c6b5` |
| 3 | `def` | [nerveMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Nerve/Variantc88c7101267e3b94ec6ea7194664593a99e57f8b610f7a32cac0b6e779be5b43.lean/declarations/nervemap--bf0d6baf546940e02b712b37.md) | 51 | `declaration-track:bf0d6baf546940e02b712b376102d56d8114e61b60feec147cfe30f1f10db273` |
| 4 | `def` | [nerveFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Nerve/Variantc88c7101267e3b94ec6ea7194664593a99e57f8b610f7a32cac0b6e779be5b43.lean/declarations/nervefunctor--e5d232443542eadebb4ab1df.md) | 56 | `declaration-track:e5d232443542eadebb4ab1dfc840af5b6b20b859daaa25b26481db4fb6926974` |
| 5 | `def` | [nerveEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Nerve/Variantc88c7101267e3b94ec6ea7194664593a99e57f8b610f7a32cac0b6e779be5b43.lean/declarations/nerveequiv--ba89ec7b3bee1d604c70ba5d.md) | 61 | `declaration-track:ba89ec7b3bee1d604c70ba5df6bdb3da2c057533cb87aa9e45d17cfd83a41e70` |
| 6 | `lemma` | [δ₀_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Nerve/Variantc88c7101267e3b94ec6ea7194664593a99e57f8b610f7a32cac0b6e779be5b43.lean/declarations/eq--6670fbc4c236ae88a73bfc86.md) | 71 | `result-track:6670fbc4c236ae88a73bfc86996dcc50522ae026d1bd3e1c6013a17d1b912716` |
| 7 | `lemma` | [σ₀_mk₀_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Nerve/Variantc88c7101267e3b94ec6ea7194664593a99e57f8b610f7a32cac0b6e779be5b43.lean/declarations/mk-eq--b664d00341bc6c787480fd48.md) | 73 | `result-track:b664d00341bc6c787480fd484c5a5370c90f8b40b35a6b0477c5101d96d858f3` |
| 8 | `theorem` | [δ₂_mk₂_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Nerve/Variantc88c7101267e3b94ec6ea7194664593a99e57f8b610f7a32cac0b6e779be5b43.lean/declarations/mk-eq--87e7f5206deaf21dcb1ba1e2.md) | 80 | `result-track:87e7f5206deaf21dcb1ba1e2e993f1421d21b6b345628bc8e0420a2cd7216bb9` |
| 9 | `theorem` | [δ₀_mk₂_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Nerve/Variantc88c7101267e3b94ec6ea7194664593a99e57f8b610f7a32cac0b6e779be5b43.lean/declarations/mk-eq--6152cf9a397b289f0f009794.md) | 83 | `result-track:6152cf9a397b289f0f009794a3684435db45671cdd195dc81d7927e5623aea04` |
| 10 | `theorem` | [δ₁_mk₂_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Nerve/Variantc88c7101267e3b94ec6ea7194664593a99e57f8b610f7a32cac0b6e779be5b43.lean/declarations/mk-eq--acc44c19682da3387a94ed7d.md) | 86 | `result-track:acc44c19682da3387a94ed7d2ee880e9d2be9aa0b2d9bc3f24781f03674d3bd6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
