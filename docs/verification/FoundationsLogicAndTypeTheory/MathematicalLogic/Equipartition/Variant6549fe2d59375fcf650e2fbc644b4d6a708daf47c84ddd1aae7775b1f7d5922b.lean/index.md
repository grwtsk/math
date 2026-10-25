# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Equipartition.Variant6549fe2d59375fcf650e2fbc644b4d6a708daf47c84ddd1aae7775b1f7d5922b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "89bec54c92ea960fd6f1ad115fdd156d3eca97a8",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant6549fe2d59375fcf650e2fbc644b4d6a708daf47c84ddd1aae7775b1f7d5922b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant6549fe2d59375fcf650e2fbc644b4d6a708daf47c84ddd1aae7775b1f7d5922b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant6549fe2d59375fcf650e2fbc644b4d6a708daf47c84ddd1aae7775b1f7d5922b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `89bec54c92ea960fd6f1ad115fdd156d3eca97a8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant6549fe2d59375fcf650e2fbc644b4d6a708daf47c84ddd1aae7775b1f7d5922b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant6549fe2d59375fcf650e2fbc644b4d6a708daf47c84ddd1aae7775b1f7d5922b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Equitable` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Partition.Finpartition` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsEquipartition](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant6549fe2d59375fcf650e2fbc644b4d6a708daf47c84ddd1aae7775b1f7d5922b.lean/declarations/isequipartition--ddc9dee301d0b2952bbf6b31.md) | 38 | `declaration-track:ddc9dee301d0b2952bbf6b31c9329a57636250b539950ec6da84033382f3a608` |
| 2 | `theorem` | [isEquipartition_iff_card_parts_eq_average](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant6549fe2d59375fcf650e2fbc644b4d6a708daf47c84ddd1aae7775b1f7d5922b.lean/declarations/isequipartition-iff-card-parts-eq-average--be1536da0a5c7e85a64aea94.md) | 42 | `result-track:be1536da0a5c7e85a64aea948572924eea445b7d60d782df1425c4936f85c203` |
| 3 | `theorem` | [Set.Subsingleton.isEquipartition](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant6549fe2d59375fcf650e2fbc644b4d6a708daf47c84ddd1aae7775b1f7d5922b.lean/declarations/set-subsingleton-isequipartition--98e3011ac0547d10d40f3911.md) | 51 | `result-track:98e3011ac0547d10d40f3911b68e0ba39cd4a449da80acc832b8615b0a87e2fd` |
| 4 | `theorem` | [IsEquipartition.card_parts_eq_average](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant6549fe2d59375fcf650e2fbc644b4d6a708daf47c84ddd1aae7775b1f7d5922b.lean/declarations/isequipartition-card-parts-eq-average--c9a5d23dbe3fdc75061724c8.md) | 56 | `result-track:c9a5d23dbe3fdc75061724c827bf017a8352436f4a9a23565c548920df58c024` |
| 5 | `theorem` | [IsEquipartition.average_le_card_part](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant6549fe2d59375fcf650e2fbc644b4d6a708daf47c84ddd1aae7775b1f7d5922b.lean/declarations/isequipartition-average-le-card-part--460e3e2bf706733eb8735b19.md) | 61 | `result-track:460e3e2bf706733eb8735b195bb48092acbe18addc6a71f6a6747e175e56895c` |
| 6 | `theorem` | [IsEquipartition.card_part_le_average_add_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant6549fe2d59375fcf650e2fbc644b4d6a708daf47c84ddd1aae7775b1f7d5922b.lean/declarations/isequipartition-card-part-le-average-add-one--7d88cf84cd8865c2b45cbb11.md) | 67 | `result-track:7d88cf84cd8865c2b45cbb110b31d8f5d3278ddfc0f9b5925d290c0627c42a81` |
| 7 | `theorem` | [bot_isEquipartition](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant6549fe2d59375fcf650e2fbc644b4d6a708daf47c84ddd1aae7775b1f7d5922b.lean/declarations/bot-isequipartition--14b5ab1567b5ed83fe856a88.md) | 78 | `result-track:14b5ab1567b5ed83fe856a88914774778ce887a178511e64ca05bb3d85a5eb3b` |
| 8 | `theorem` | [top_isEquipartition](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant6549fe2d59375fcf650e2fbc644b4d6a708daf47c84ddd1aae7775b1f7d5922b.lean/declarations/top-isequipartition--fdf1f0a1a38ad254ce06cea6.md) | 82 | `result-track:fdf1f0a1a38ad254ce06cea6f27959c3d1a902b6edfd751a557734e061bd4017` |
| 9 | `theorem` | [indiscrete_isEquipartition](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant6549fe2d59375fcf650e2fbc644b4d6a708daf47c84ddd1aae7775b1f7d5922b.lean/declarations/indiscrete-isequipartition--fc9e81407879467db910c3d7.md) | 86 | `result-track:fc9e81407879467db910c3d7ce253875916ff0d11361c06c6ec910cc84d199e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
