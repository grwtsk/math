# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant03ca6caec14c152a8693c3cee650359e0b94b82fa404c57cae4cf1c9c80fa51c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7cf7a47eb945baf884b4581e3fd4568aa56187b7",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant03ca6caec14c152a8693c3cee650359e0b94b82fa404c57cae4cf1c9c80fa51c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant03ca6caec14c152a8693c3cee650359e0b94b82fa404c57cae4cf1c9c80fa51c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant03ca6caec14c152a8693c3cee650359e0b94b82fa404c57cae4cf1c9c80fa51c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7cf7a47eb945baf884b4581e3fd4568aa56187b7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant03ca6caec14c152a8693c3cee650359e0b94b82fa404c57cae4cf1c9c80fa51c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant03ca6caec14c152a8693c3cee650359e0b94b82fa404c57cae4cf1c9c80fa51c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Iso` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ObjectProperty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant03ca6caec14c152a8693c3cee650359e0b94b82fa404c57cae4cf1c9c80fa51c.lean/declarations/objectproperty--bac205fa21ff5f8684f57385.md) | 32 | `declaration-track:bac205fa21ff5f8684f57385d7a512160def36486d7c002cc160d3078d9b10ef` |
| 2 | `lemma` | [le_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant03ca6caec14c152a8693c3cee650359e0b94b82fa404c57cae4cf1c9c80fa51c.lean/declarations/le-def--26d0e94aa04887e18a02d5f2.md) | 38 | `result-track:26d0e94aa04887e18a02d5f2c7629fe21838d9f7048a3ddc5e75bf6716291b7b` |
| 3 | `def` | [inverseImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant03ca6caec14c152a8693c3cee650359e0b94b82fa404c57cae4cf1c9c80fa51c.lean/declarations/inverseimage--6ed5b7096ae6b10791307988.md) | 42 | `declaration-track:6ed5b7096ae6b10791307988bcc760caf486865e881aff682112bd993f2d566d` |
| 4 | `lemma` | [prop_inverseImage_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant03ca6caec14c152a8693c3cee650359e0b94b82fa404c57cae4cf1c9c80fa51c.lean/declarations/prop-inverseimage-iff--231d9bb75bf9d943109ab38c.md) | 46 | `result-track:231d9bb75bf9d943109ab38cad941392623bde6f5a7433c00a6347f41f2e3f3b` |
| 5 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant03ca6caec14c152a8693c3cee650359e0b94b82fa404c57cae4cf1c9c80fa51c.lean/declarations/map--959ed298caaf55692483c56f.md) | 50 | `declaration-track:959ed298caaf55692483c56f822b7ce1d1748fdbd2ff682cee400b2263cb906e` |
| 6 | `lemma` | [prop_map_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant03ca6caec14c152a8693c3cee650359e0b94b82fa404c57cae4cf1c9c80fa51c.lean/declarations/prop-map-iff--8cfa3eb5477a65a44cac6976.md) | 53 | `result-track:8cfa3eb5477a65a44cac69760e46f3c0834e98448c388be5a621192f4e6d1285` |
| 7 | `lemma` | [prop_map_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant03ca6caec14c152a8693c3cee650359e0b94b82fa404c57cae4cf1c9c80fa51c.lean/declarations/prop-map-obj--f7ae040c3e26c61bf7ee587b.md) | 56 | `result-track:f7ae040c3e26c61bf7ee587b65f27511cbdfad6db3299fc078e790fd6f0a615b` |
| 8 | `class` | [Is](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant03ca6caec14c152a8693c3cee650359e0b94b82fa404c57cae4cf1c9c80fa51c.lean/declarations/is--ccda0e2c7399be567b2a2d84.md) | 62 | `declaration-track:ccda0e2c7399be567b2a2d8442e0c47fb1c161a9bd7dc570328480918953526e` |
| 9 | `lemma` | [prop_of_is](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant03ca6caec14c152a8693c3cee650359e0b94b82fa404c57cae4cf1c9c80fa51c.lean/declarations/prop-of-is--0f3fe8740a891c6a5e874381.md) | 65 | `result-track:0f3fe8740a891c6a5e874381647a0b647f6dd6907199368ef6629afcbf21e463` |
| 10 | `lemma` | [is_of_prop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant03ca6caec14c152a8693c3cee650359e0b94b82fa404c57cae4cf1c9c80fa51c.lean/declarations/is-of-prop--bfda5b15a772a9c8f281f606.md) | 67 | `result-track:bfda5b15a772a9c8f281f6067db66e9261eef41f7a2a099b01e3ff0991e54f22` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
