# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Types.Variant40a32fe87748f8ff21b9455354d707a1e3cf8d33a9b57c01e01e6ab6f75880a1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a818b8b287061afe124f564f41e857b0191bab6f",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant40a32fe87748f8ff21b9455354d707a1e3cf8d33a9b57c01e01e6ab6f75880a1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant40a32fe87748f8ff21b9455354d707a1e3cf8d33a9b57c01e01e6ab6f75880a1.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant40a32fe87748f8ff21b9455354d707a1e3cf8d33a9b57c01e01e6ab6f75880a1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a818b8b287061afe124f564f41e857b0191bab6f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant40a32fe87748f8ff21b9455354d707a1e3cf8d33a9b57c01e01e6ab6f75880a1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant40a32fe87748f8ff21b9455354d707a1e3cf8d33a9b57c01e01e6ab6f75880a1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Closed.Cartesian` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Presheaf` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Cartesian.FunctorCategory` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Types.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Types.tensorProductAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant40a32fe87748f8ff21b9455354d707a1e3cf8d33a9b57c01e01e6ab6f75880a1.lean/declarations/types-tensorproductadjunction--ed4e38e1d674e677235a9c4f.md) | 34 | `declaration-track:ed4e38e1d674e677235a9c4fd857fd26e56b78f7b7ac6a0a42363242d3b3d034` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant40a32fe87748f8ff21b9455354d707a1e3cf8d33a9b57c01e01e6ab6f75880a1.lean/declarations/instance--168ffcf50645a2fce4e793f5.md) | 39 | `declaration-track:168ffcf50645a2fce4e793f59eade02b589252690d3a9f316fc91a2c73826e0d` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant40a32fe87748f8ff21b9455354d707a1e3cf8d33a9b57c01e01e6ab6f75880a1.lean/declarations/instance--f44d26977fd7edc623418757.md) | 42 | `declaration-track:f44d26977fd7edc623418757cd3e95c60f6f21303e3cd45e080818d58a631d93` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant40a32fe87748f8ff21b9455354d707a1e3cf8d33a9b57c01e01e6ab6f75880a1.lean/declarations/instance--c116794be4bd19acb2d7195d.md) | 45 | `declaration-track:c116794be4bd19acb2d7195d689d40a9a02bf6816cf71b45ec43668071d0497f` |
| 5 | `def` | [cartesianClosedFunctorToTypes](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant40a32fe87748f8ff21b9455354d707a1e3cf8d33a9b57c01e01e6ab6f75880a1.lean/declarations/cartesianclosedfunctortotypes--a432ca674d2f22fb5da43092.md) | 57 | `declaration-track:a432ca674d2f22fb5da43092f628cc76d8eed03573f80823535cd311f96ad7b8` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant40a32fe87748f8ff21b9455354d707a1e3cf8d33a9b57c01e01e6ab6f75880a1.lean/declarations/instance--8463d245ea240accf0101a4d.md) | 67 | `declaration-track:8463d245ea240accf0101a4df5708e9b761d06d89f665f7b5563edc57de174bf` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant40a32fe87748f8ff21b9455354d707a1e3cf8d33a9b57c01e01e6ab6f75880a1.lean/declarations/instance--0488652600d82bea533b1547.md) | 72 | `declaration-track:0488652600d82bea533b1547f9c187c3dff70f9e6f5a2344ba7a14265f4c8b4a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
