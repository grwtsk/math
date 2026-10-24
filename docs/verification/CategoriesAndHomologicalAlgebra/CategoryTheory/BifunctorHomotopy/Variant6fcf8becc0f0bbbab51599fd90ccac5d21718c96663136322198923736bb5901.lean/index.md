# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BifunctorHomotopy.Variant6fcf8becc0f0bbbab51599fd90ccac5d21718c96663136322198923736bb5901

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d3b6b0179a33202d3df4987565f2973c8fef4883",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorHomotopy/Variant6fcf8becc0f0bbbab51599fd90ccac5d21718c96663136322198923736bb5901.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorHomotopy/Variant6fcf8becc0f0bbbab51599fd90ccac5d21718c96663136322198923736bb5901.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorHomotopy/Variant6fcf8becc0f0bbbab51599fd90ccac5d21718c96663136322198923736bb5901.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d3b6b0179a33202d3df4987565f2973c8fef4883`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorHomotopy/Variant6fcf8becc0f0bbbab51599fd90ccac5d21718c96663136322198923736bb5901.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorHomotopy/Variant6fcf8becc0f0bbbab51599fd90ccac5d21718c96663136322198923736bb5901.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Bifunctor` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Homotopy` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hom₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorHomotopy/Variant6fcf8becc0f0bbbab51599fd90ccac5d21718c96663136322198923736bb5901.lean/declarations/hom--2b53b52c426aac130154343a.md) | 48 | `declaration-track:2b53b52c426aac130154343a65d3e9d576227e1018ab712944d78da835a5656c` |
| 2 | `lemma` | [ιMapBifunctor_hom₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorHomotopy/Variant6fcf8becc0f0bbbab51599fd90ccac5d21718c96663136322198923736bb5901.lean/declarations/mapbifunctor-hom--0456ed5f7a102f104eedcf5e.md) | 56 | `result-track:0456ed5f7a102f104eedcf5e5cebff226c9b5de05bf4f423386c0aec552e3183` |
| 3 | `lemma` | [zero₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorHomotopy/Variant6fcf8becc0f0bbbab51599fd90ccac5d21718c96663136322198923736bb5901.lean/declarations/zero--6ec648e043846b5cf3a9c21e.md) | 64 | `result-track:6ec648e043846b5cf3a9c21e2170a37b001242a8320481e4a439b6fcccd5c1de` |
| 4 | `lemma` | [comm₁_aux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorHomotopy/Variant6fcf8becc0f0bbbab51599fd90ccac5d21718c96663136322198923736bb5901.lean/declarations/comm-aux--07a0008ec4ccee92fb0a9153.md) | 78 | `result-track:07a0008ec4ccee92fb0a915323b92e988260fd9fdb6ff620951226cc823e4f25` |
| 5 | `lemma` | [comm₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorHomotopy/Variant6fcf8becc0f0bbbab51599fd90ccac5d21718c96663136322198923736bb5901.lean/declarations/comm--82e578bb20c959bbb8c9431e.md) | 98 | `result-track:82e578bb20c959bbb8c9431eaf255384837ac1268121d07221377370d0ad2326` |
| 6 | `def` | [mapBifunctorMapHomotopy₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorHomotopy/Variant6fcf8becc0f0bbbab51599fd90ccac5d21718c96663136322198923736bb5901.lean/declarations/mapbifunctormaphomotopy--52b6c3ce6110d81cf123d5ea.md) | 159 | `declaration-track:52b6c3ce6110d81cf123d5eae5b43728a6c8c99c5b4929e730fdd9ab8c3d6aee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
