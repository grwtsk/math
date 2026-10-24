# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Comp.Variantd118b963ce0a5fd04a0386d72de6103e369f3b811c9f2149ce16dd8615027957

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c82351adb5cb5a7883224158267026f26887a31",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variantd118b963ce0a5fd04a0386d72de6103e369f3b811c9f2149ce16dd8615027957.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variantd118b963ce0a5fd04a0386d72de6103e369f3b811c9f2149ce16dd8615027957.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variantd118b963ce0a5fd04a0386d72de6103e369f3b811c9f2149ce16dd8615027957.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c82351adb5cb5a7883224158267026f26887a31`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variantd118b963ce0a5fd04a0386d72de6103e369f3b811c9f2149ce16dd8615027957.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variantd118b963ce0a5fd04a0386d72de6103e369f3b811c9f2149ce16dd8615027957.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.PFunctor.Multivariate.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.QPF.Multivariate.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variantd118b963ce0a5fd04a0386d72de6103e369f3b811c9f2149ce16dd8615027957.lean/declarations/comp--6445c476545827eb2ecff812.md) | 38 | `declaration-track:6445c476545827eb2ecff812a21967dcf5e2f4a5c0a094e9ea484b6f88c179d3` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variantd118b963ce0a5fd04a0386d72de6103e369f3b811c9f2149ce16dd8615027957.lean/declarations/instance--7653f2932f456ae970185a08.md) | 48 | `declaration-track:7653f2932f456ae970185a0806bf7574f42695259a59f21d15fc1731b8ea8aa1` |
| 3 | `def` | [mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variantd118b963ce0a5fd04a0386d72de6103e369f3b811c9f2149ce16dd8615027957.lean/declarations/mk--f4efcc43842fc1000e836229.md) | 51 | `declaration-track:f4efcc43842fc1000e836229f35f7c42fd4ea070208a96e1d54ff0fb6b16cd67` |
| 4 | `def` | [get](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variantd118b963ce0a5fd04a0386d72de6103e369f3b811c9f2149ce16dd8615027957.lean/declarations/get--9132a9ebe018d334d1c38c42.md) | 55 | `declaration-track:9132a9ebe018d334d1c38c420e854d721a0cd9fe807c8e59dcb6d19a05d59df8` |
| 5 | `theorem` | [mk_get](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variantd118b963ce0a5fd04a0386d72de6103e369f3b811c9f2149ce16dd8615027957.lean/declarations/mk-get--6c4405822fb2974ff4b7409c.md) | 59 | `result-track:6c4405822fb2974ff4b7409c84bbdf19118121389345061c34c314f72b6e8526` |
| 6 | `theorem` | [get_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variantd118b963ce0a5fd04a0386d72de6103e369f3b811c9f2149ce16dd8615027957.lean/declarations/get-mk--b6e3af01df9b5832e4bc2a43.md) | 63 | `result-track:b6e3af01df9b5832e4bc2a43ad88b6108d51215dd99d54284bcc327e96ec6622` |
| 7 | `def` | [map'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variantd118b963ce0a5fd04a0386d72de6103e369f3b811c9f2149ce16dd8615027957.lean/declarations/map--5bef9e8234eb4be321e67390.md) | 67 | `declaration-track:5bef9e8234eb4be321e673903734e82358e0b4bea046e9bd00ec7e1e2df9db34` |
| 8 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variantd118b963ce0a5fd04a0386d72de6103e369f3b811c9f2149ce16dd8615027957.lean/declarations/map--72dfa90dc551af0013c7c27d.md) | 71 | `declaration-track:72dfa90dc551af0013c7c27dae87687c41f390f107507cc50704f8f4ef8b2855` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variantd118b963ce0a5fd04a0386d72de6103e369f3b811c9f2149ce16dd8615027957.lean/declarations/instance--b81692eb35186525208c2c76.md) | 75 | `declaration-track:b81692eb35186525208c2c765995b1cd57473dbd2aff09b33c2884f49bd5edb8` |
| 10 | `theorem` | [map_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variantd118b963ce0a5fd04a0386d72de6103e369f3b811c9f2149ce16dd8615027957.lean/declarations/map-mk--512d805b60a752a77bd5fb45.md) | 77 | `result-track:512d805b60a752a77bd5fb456beaab66a6525a7bc224a2868151fb89af2aaaed` |
| 11 | `theorem` | [get_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variantd118b963ce0a5fd04a0386d72de6103e369f3b811c9f2149ce16dd8615027957.lean/declarations/get-map--b490ad833ce758d13f511747.md) | 81 | `result-track:b490ad833ce758d13f5117472e90bdf22465498dd2bd12a43381ad4459cc1de5` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variantd118b963ce0a5fd04a0386d72de6103e369f3b811c9f2149ce16dd8615027957.lean/declarations/instance--ef764d3dba06546c11409577.md) | 85 | `declaration-track:ef764d3dba06546c1140957716e1ff37ae2f9c372aae9eea463a622d8f6e5894` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
