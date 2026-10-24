# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Comparison.Variante1aa8db32a87c9754e936eb18367bfe420b11ca4c33efa36be712aa711654eb4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9bcdd6d0cf552246924e49ac46aff66898f7af7f",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variante1aa8db32a87c9754e936eb18367bfe420b11ca4c33efa36be712aa711654eb4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variante1aa8db32a87c9754e936eb18367bfe420b11ca4c33efa36be712aa711654eb4.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variante1aa8db32a87c9754e936eb18367bfe420b11ca4c33efa36be712aa711654eb4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9bcdd6d0cf552246924e49ac46aff66898f7af7f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variante1aa8db32a87c9754e936eb18367bfe420b11ca4c33efa36be712aa711654eb4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variante1aa8db32a87c9754e936eb18367bfe420b11ca4c33efa36be712aa711654eb4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Prismatic.FilteredFrobenius` — import line 1; external provider; requires a separately pinned dependency.
- `DAF.Prismatic.Totalization` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FilteredFrobeniusTotalization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variante1aa8db32a87c9754e936eb18367bfe420b11ca4c33efa36be712aa711654eb4.lean/declarations/filteredfrobeniustotalization--f03580cc1441caf872943a4c.md) | 23 | `declaration-track:f03580cc1441caf872943a4ced68d1d26a45adc3bb426a8d46fcc55c3267084c` |
| 2 | `theorem` | [totalized_frobenius_compatible](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variante1aa8db32a87c9754e936eb18367bfe420b11ca4c33efa36be712aa711654eb4.lean/declarations/totalized-frobenius-compatible--62c3d83f52d25e35689082ef.md) | 51 | `result-track:62c3d83f52d25e35689082ef92820935a2943ffa18bf76a059e548427b613cf5` |
| 3 | `theorem` | [totalized_nygaard_compatible](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variante1aa8db32a87c9754e936eb18367bfe420b11ca4c33efa36be712aa711654eb4.lean/declarations/totalized-nygaard-compatible--6d6a6f3454f0194e77f2bab3.md) | 62 | `result-track:6d6a6f3454f0194e77f2bab391e7b9f5c20b3a45ec925697ba02ec1277d497ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
