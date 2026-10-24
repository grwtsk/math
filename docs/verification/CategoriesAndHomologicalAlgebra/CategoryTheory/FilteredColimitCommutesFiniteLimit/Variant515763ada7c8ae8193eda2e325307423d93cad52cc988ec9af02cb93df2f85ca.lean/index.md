# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FilteredColimitCommutesFiniteLimit.Variant515763ada7c8ae8193eda2e325307423d93cad52cc988ec9af02cb93df2f85ca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e7d8f7c12f4fd9dcbe0192c273b8d03f9a567b3",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant515763ada7c8ae8193eda2e325307423d93cad52cc988ec9af02cb93df2f85ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant515763ada7c8ae8193eda2e325307423d93cad52cc988ec9af02cb93df2f85ca.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant515763ada7c8ae8193eda2e325307423d93cad52cc988ec9af02cb93df2f85ca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e7d8f7c12f4fd9dcbe0192c273b8d03f9a567b3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant515763ada7c8ae8193eda2e325307423d93cad52cc988ec9af02cb93df2f85ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant515763ada7c8ae8193eda2e325307423d93cad52cc988ec9af02cb93df2f85ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [comp_lim_obj_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant515763ada7c8ae8193eda2e325307423d93cad52cc988ec9af02cb93df2f85ca.lean/declarations/comp-lim-obj-ext--a11aeac7a478c553c3bdf8c1.md) | 51 | `result-track:a11aeac7a478c553c3bdf8c16a93370f074700273507cd70c8969baf67941f7c` |
| 2 | `theorem` | [colimitLimitToLimitColimit_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant515763ada7c8ae8193eda2e325307423d93cad52cc988ec9af02cb93df2f85ca.lean/declarations/colimitlimittolimitcolimit-injective--ac824062f393a10ee8bd6349.md) | 73 | `result-track:ac824062f393a10ee8bd6349b67ee011ae43c087a3c0e5afe543b66e0dee8e1d` |
| 3 | `theorem` | [colimitLimitToLimitColimit_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant515763ada7c8ae8193eda2e325307423d93cad52cc988ec9af02cb93df2f85ca.lean/declarations/colimitlimittolimitcolimit-surjective--2198c94470c290e6419b4947.md) | 163 | `result-track:2198c94470c290e6419b4947d9a4a7cb0cc0d8bffaf5fb1a5a1a734426813e2f` |
| 4 | `instance` | [colimitLimitToLimitColimit_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant515763ada7c8ae8193eda2e325307423d93cad52cc988ec9af02cb93df2f85ca.lean/declarations/colimitlimittolimitcolimit-isiso--522d049b0ceea3a56615c404.md) | 322 | `declaration-track:522d049b0ceea3a56615c404233ca9f5c43661ba5f6427cc767777f565b5ce54` |
| 5 | `instance` | [colimitLimitToLimitColimitCone_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant515763ada7c8ae8193eda2e325307423d93cad52cc988ec9af02cb93df2f85ca.lean/declarations/colimitlimittolimitcolimitcone-iso--4b28f7561cb8e97c78cfec8c.md) | 326 | `declaration-track:4b28f7561cb8e97c78cfec8c77f42802697658cca97806e640a4292017c8fdce` |
| 6 | `instance` | [filtered_colim_preservesFiniteLimits_of_types](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant515763ada7c8ae8193eda2e325307423d93cad52cc988ec9af02cb93df2f85ca.lean/declarations/filtered-colim-preservesfinitelimits-of-types--f3454cee48394782f3f39d85.md) | 335 | `declaration-track:f3454cee48394782f3f39d8553a2fca80ef9d71f5bd758ccb992ed8307ed5e63` |
| 7 | `instance` | [filtered_colim_preservesFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant515763ada7c8ae8193eda2e325307423d93cad52cc988ec9af02cb93df2f85ca.lean/declarations/filtered-colim-preservesfinitelimits--8eade86cd94cf3d0953c0219.md) | 354 | `declaration-track:8eade86cd94cf3d0953c0219e29da15a7299e6ae1395b482ab9336b6fd6b5a05` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant515763ada7c8ae8193eda2e325307423d93cad52cc988ec9af02cb93df2f85ca.lean/declarations/instance--9e36766e24882f70a235f35b.md) | 364 | `declaration-track:9e36766e24882f70a235f35b16d0d3cacfb17b139a9b73163f23c51bfd485f27` |
| 9 | `def` | [colimitLimitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant515763ada7c8ae8193eda2e325307423d93cad52cc988ec9af02cb93df2f85ca.lean/declarations/colimitlimitiso--369c89275cc4d45bf882b44e.md) | 382 | `declaration-track:369c89275cc4d45bf882b44efa05a14065bfeb65ee981a80eb1f3b22f63432a6` |
| 10 | `theorem` | [ι_colimitLimitIso_limit_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant515763ada7c8ae8193eda2e325307423d93cad52cc988ec9af02cb93df2f85ca.lean/declarations/colimitlimitiso-limit--01159fd43b8325e7ff10d194.md) | 387 | `result-track:01159fd43b8325e7ff10d19400ac6d4c85353465acfd1ddb3869d80fe3381280` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
