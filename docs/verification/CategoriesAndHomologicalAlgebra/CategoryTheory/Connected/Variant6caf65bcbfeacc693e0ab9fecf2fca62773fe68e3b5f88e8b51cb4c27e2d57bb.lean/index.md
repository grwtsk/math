# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Connected.Variant6caf65bcbfeacc693e0ab9fecf2fca62773fe68e3b5f88e8b51cb4c27e2d57bb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae77abe25db5b176c378ebb51d73f476a71e7c3a",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant6caf65bcbfeacc693e0ab9fecf2fca62773fe68e3b5f88e8b51cb4c27e2d57bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant6caf65bcbfeacc693e0ab9fecf2fca62773fe68e3b5f88e8b51cb4c27e2d57bb.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant6caf65bcbfeacc693e0ab9fecf2fca62773fe68e3b5f88e8b51cb4c27e2d57bb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae77abe25db5b176c378ebb51d73f476a71e7c3a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant6caf65bcbfeacc693e0ab9fecf2fca62773fe68e3b5f88e8b51cb4c27e2d57bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant6caf65bcbfeacc693e0ab9fecf2fca62773fe68e3b5f88e8b51cb4c27e2d57bb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Filtered.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.IsConnected` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsFilteredOrEmpty.isPreconnected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant6caf65bcbfeacc693e0ab9fecf2fca62773fe68e3b5f88e8b51cb4c27e2d57bb.lean/declarations/isfilteredorempty-ispreconnected--e84f262ceb6f8882bd83d88e.md) | 19 | `result-track:e84f262ceb6f8882bd83d88e6c22fe67298487110c6314ee15d101c484f5adde` |
| 2 | `theorem` | [IsCofilteredOrEmpty.isPreconnected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant6caf65bcbfeacc693e0ab9fecf2fca62773fe68e3b5f88e8b51cb4c27e2d57bb.lean/declarations/iscofilteredorempty-ispreconnected--e26ef3604ca0aff60f4bce93.md) | 24 | `result-track:e26ef3604ca0aff60f4bce9365ecdfa05a9c2ae0f07ff637ebc1719f6e1eff0c` |
| 3 | `theorem` | [IsFiltered.isConnected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant6caf65bcbfeacc693e0ab9fecf2fca62773fe68e3b5f88e8b51cb4c27e2d57bb.lean/declarations/isfiltered-isconnected--bd1189b0987bf5e6a1b46dc7.md) | 30 | `result-track:bd1189b0987bf5e6a1b46dc7ae9fdc401ceef411cf817c34417a0ae5b8fa955e` |
| 4 | `theorem` | [IsCofiltered.isConnected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant6caf65bcbfeacc693e0ab9fecf2fca62773fe68e3b5f88e8b51cb4c27e2d57bb.lean/declarations/iscofiltered-isconnected--0eb2bdf47f47dbcdb65cdf77.md) | 34 | `result-track:0eb2bdf47f47dbcdb65cdf77d9abe271e328b5e31d4c797dd2139c5074d2e61c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
