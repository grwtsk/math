# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Triangulated.Variant0f8f87498c4c3a0b883e8feb288b2c216a389ca16e683b4d30ab8943ba411d39

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de53d775b36856b42d61d009c87fdcc32618bacb",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant0f8f87498c4c3a0b883e8feb288b2c216a389ca16e683b4d30ab8943ba411d39.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant0f8f87498c4c3a0b883e8feb288b2c216a389ca16e683b4d30ab8943ba411d39.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant0f8f87498c4c3a0b883e8feb288b2c216a389ca16e683b4d30ab8943ba411d39.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de53d775b36856b42d61d009c87fdcc32618bacb`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant0f8f87498c4c3a0b883e8feb288b2c216a389ca16e683b4d30ab8943ba411d39.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant0f8f87498c4c3a0b883e8feb288b2c216a389ca16e683b4d30ab8943ba411d39.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Triangulated.Pretriangulated` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Octahedron](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant0f8f87498c4c3a0b883e8feb288b2c216a389ca16e683b4d30ab8943ba411d39.lean/declarations/octahedron--92baf5009b460b71812ecefa.md) | 46 | `declaration-track:92baf5009b460b71812ecefa24da70f19732f9fca36a2e166088374d8d9bc764` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant0f8f87498c4c3a0b883e8feb288b2c216a389ca16e683b4d30ab8943ba411d39.lean/declarations/instance--a2bab81db325888cd1bacb07.md) | 63 | `declaration-track:a2bab81db325888cd1bacb07853a1f548e5f869c086c59483006fa17c3b19657` |
| 3 | `def` | [triangle](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant0f8f87498c4c3a0b883e8feb288b2c216a389ca16e683b4d30ab8943ba411d39.lean/declarations/triangle--1d543564748d58f8825c7be2.md) | 83 | `declaration-track:1d543564748d58f8825c7be24265fc5b8a168c5b44ceea530cc25625e1b1c2ef` |
| 4 | `def` | [triangleMorphism₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant0f8f87498c4c3a0b883e8feb288b2c216a389ca16e683b4d30ab8943ba411d39.lean/declarations/trianglemorphism--05ee986e1b722103c7956b9a.md) | 89 | `declaration-track:05ee986e1b722103c7956b9af5814d92cb2c62b74c3b8ee6843f239199a67f6c` |
| 5 | `def` | [triangleMorphism₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant0f8f87498c4c3a0b883e8feb288b2c216a389ca16e683b4d30ab8943ba411d39.lean/declarations/trianglemorphism--affb543d8d48faa1e5ba39ea.md) | 105 | `declaration-track:affb543d8d48faa1e5ba39ea63acd868c26b7dbe5ca93a5d3d50a1e79db89060` |
| 6 | `class` | [IsTriangulated](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant0f8f87498c4c3a0b883e8feb288b2c216a389ca16e683b4d30ab8943ba411d39.lean/declarations/istriangulated--eb2c71fe3d450dd76408281e.md) | 130 | `declaration-track:eb2c71fe3d450dd76408281ecc5bba691f59c6a384e79492ec713ae58a752ae2` |
| 7 | `def` | [someOctahedron'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant0f8f87498c4c3a0b883e8feb288b2c216a389ca16e683b4d30ab8943ba411d39.lean/declarations/someoctahedron--bf17786d45c7a056f6db8bbe.md) | 153 | `declaration-track:bf17786d45c7a056f6db8bbec74bed7064a301195bc5172a341e5f2f0fc0df0c` |
| 8 | `def` | [someOctahedron](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant0f8f87498c4c3a0b883e8feb288b2c216a389ca16e683b4d30ab8943ba411d39.lean/declarations/someoctahedron--b8c5d75dc73eb15ce5bdb7a5.md) | 157 | `declaration-track:b8c5d75dc73eb15ce5bdb7a51cd617e4ced9290c245ff2d5a3b36fd838489fbe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
