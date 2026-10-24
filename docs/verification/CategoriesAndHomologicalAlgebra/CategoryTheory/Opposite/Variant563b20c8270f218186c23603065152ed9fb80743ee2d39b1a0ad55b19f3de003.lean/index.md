# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Opposite.Variant563b20c8270f218186c23603065152ed9fb80743ee2d39b1a0ad55b19f3de003

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9bdba58c71ba2a38ad3b6c3ca179dd95adb5a28d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant563b20c8270f218186c23603065152ed9fb80743ee2d39b1a0ad55b19f3de003.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant563b20c8270f218186c23603065152ed9fb80743ee2d39b1a0ad55b19f3de003.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant563b20c8270f218186c23603065152ed9fb80743ee2d39b1a0ad55b19f3de003.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9bdba58c71ba2a38ad3b6c3ca179dd95adb5a28d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant563b20c8270f218186c23603065152ed9fb80743ee2d39b1a0ad55b19f3de003.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant563b20c8270f218186c23603065152ed9fb80743ee2d39b1a0ad55b19f3de003.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Enriched.Ordinary.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Braided.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [EnrichedCategory.opposite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant563b20c8270f218186c23603065152ed9fb80743ee2d39b1a0ad55b19f3de003.lean/declarations/enrichedcategory-opposite--772cd8ebbc03fde4658f1cd3.md) | 48 | `declaration-track:772cd8ebbc03fde4658f1cd3fde4c5a30d7d9550eb0da310261177ac3c738194` |
| 2 | `lemma` | [eComp_op_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant563b20c8270f218186c23603065152ed9fb80743ee2d39b1a0ad55b19f3de003.lean/declarations/ecomp-op-eq--67f13a3d3929d3a31505dd6f.md) | 71 | `result-track:67f13a3d3929d3a31505dd6f081c54dc08215b39c090401bb643891b221cb348` |
| 3 | `lemma` | [tensorHom_eComp_op_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant563b20c8270f218186c23603065152ed9fb80743ee2d39b1a0ad55b19f3de003.lean/declarations/tensorhom-ecomp-op-eq--aa73c2a514722b158778285f.md) | 78 | `result-track:aa73c2a514722b158778285f93e2c88e7541edc96358c300dfd0b866f6bd6f0f` |
| 4 | `def` | [forgetEnrichmentOppositeEquivalence.functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant563b20c8270f218186c23603065152ed9fb80743ee2d39b1a0ad55b19f3de003.lean/declarations/forgetenrichmentoppositeequivalence-functor--6cbcd156d51409f5614b8c66.md) | 93 | `declaration-track:6cbcd156d51409f5614b8c664b691adbd767479e1300542d3b6bb5948c6c7c85` |
| 5 | `def` | [forgetEnrichmentOppositeEquivalence.inverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant563b20c8270f218186c23603065152ed9fb80743ee2d39b1a0ad55b19f3de003.lean/declarations/forgetenrichmentoppositeequivalence-inverse--fa5bd7528a6e2eca86aa01b6.md) | 105 | `declaration-track:fa5bd7528a6e2eca86aa01b6c0c53983177126ff95964ac99a0099b29b2626dd` |
| 6 | `def` | [forgetEnrichmentOppositeEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant563b20c8270f218186c23603065152ed9fb80743ee2d39b1a0ad55b19f3de003.lean/declarations/forgetenrichmentoppositeequivalence--b7d762c942e4ec6d11fcb6aa.md) | 123 | `declaration-track:b7d762c942e4ec6d11fcb6aa957f730ef4f24a3a9c0a4a624609b42bc2d38d47` |
| 7 | `instance` | [EnrichedOrdinaryCategory.opposite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant563b20c8270f218186c23603065152ed9fb80743ee2d39b1a0ad55b19f3de003.lean/declarations/enrichedordinarycategory-opposite--c08c48a59148a64a7eba392f.md) | 130 | `declaration-track:c08c48a59148a64a7eba392f6f113796f92eb7ce9665646c1221a0b61d8977c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
