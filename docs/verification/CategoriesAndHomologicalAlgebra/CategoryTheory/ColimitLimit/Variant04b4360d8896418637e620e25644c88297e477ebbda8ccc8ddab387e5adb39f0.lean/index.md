# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ColimitLimit.Variant04b4360d8896418637e620e25644c88297e477ebbda8ccc8ddab387e5adb39f0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2be415870d8c26a00b74901f30b92ba0b133b1e9",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitLimit/Variant04b4360d8896418637e620e25644c88297e477ebbda8ccc8ddab387e5adb39f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitLimit/Variant04b4360d8896418637e620e25644c88297e477ebbda8ccc8ddab387e5adb39f0.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitLimit/Variant04b4360d8896418637e620e25644c88297e477ebbda8ccc8ddab387e5adb39f0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2be415870d8c26a00b74901f30b92ba0b133b1e9`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitLimit/Variant04b4360d8896418637e620e25644c88297e477ebbda8ccc8ddab387e5adb39f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitLimit/Variant04b4360d8896418637e620e25644c88297e477ebbda8ccc8ddab387e5adb39f0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Types.Colimits` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Limits` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.Currying` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FunctorCategory.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [map_id_left_eq_curry_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitLimit/Variant04b4360d8896418637e620e25644c88297e477ebbda8ccc8ddab387e5adb39f0.lean/declarations/map-id-left-eq-curry-map--0ca5996a21602e7385fd59db.md) | 39 | `result-track:0ca5996a21602e7385fd59db78eb034f0f429d8bf071b16e1a2575a0e9d462e4` |
| 2 | `theorem` | [map_id_right_eq_curry_swap_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitLimit/Variant04b4360d8896418637e620e25644c88297e477ebbda8ccc8ddab387e5adb39f0.lean/declarations/map-id-right-eq-curry-swap-map--8fd96312aced02ce129b2d52.md) | 43 | `result-track:8fd96312aced02ce129b2d522839164a44c08dfc4ed7dd4c600281969d10b7ac` |
| 3 | `def` | [colimitLimitToLimitColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitLimit/Variant04b4360d8896418637e620e25644c88297e477ebbda8ccc8ddab387e5adb39f0.lean/declarations/colimitlimittolimitcolimit--f721881ac80f3340cee4f23d.md) | 53 | `declaration-track:f721881ac80f3340cee4f23d1695c9759366a7e53404dd1101f61c73c76a967a` |
| 4 | `theorem` | [ι_colimitLimitToLimitColimit_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitLimit/Variant04b4360d8896418637e620e25644c88297e477ebbda8ccc8ddab387e5adb39f0.lean/declarations/colimitlimittolimitcolimit--61f28d66c15ec1286e02d061.md) | 85 | `result-track:61f28d66c15ec1286e02d06136e8995d1aeed819c4b0bfdfae0b018348372219` |
| 5 | `theorem` | [ι_colimitLimitToLimitColimit_π_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitLimit/Variant04b4360d8896418637e620e25644c88297e477ebbda8ccc8ddab387e5adb39f0.lean/declarations/colimitlimittolimitcolimit-apply--9cef88cef53c23fd689869e1.md) | 92 | `result-track:9cef88cef53c23fd689869e1208cc0a8083341c528ff2320c019480c636204be` |
| 6 | `def` | [colimitLimitToLimitColimitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitLimit/Variant04b4360d8896418637e620e25644c88297e477ebbda8ccc8ddab387e5adb39f0.lean/declarations/colimitlimittolimitcolimitcone--8dc14a038c8681f865e91ec5.md) | 104 | `declaration-track:8dc14a038c8681f865e91ec57b4ef87e45038354f625c6b29369688045ae5839` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
