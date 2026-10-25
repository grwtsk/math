# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Equipartition.Variant7aa127d0ec9c571a03d17c70c12563f64ef7adcfcc70609caf46d835269fb3fa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2e033b46c3055a71df6d78bf17445f00c2f8cd6a",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant7aa127d0ec9c571a03d17c70c12563f64ef7adcfcc70609caf46d835269fb3fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant7aa127d0ec9c571a03d17c70c12563f64ef7adcfcc70609caf46d835269fb3fa.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant7aa127d0ec9c571a03d17c70c12563f64ef7adcfcc70609caf46d835269fb3fa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2e033b46c3055a71df6d78bf17445f00c2f8cd6a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant7aa127d0ec9c571a03d17c70c12563f64ef7adcfcc70609caf46d835269fb3fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant7aa127d0ec9c571a03d17c70c12563f64ef7adcfcc70609caf46d835269fb3fa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Equitable` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Partition.Finpartition` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsEquipartition](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant7aa127d0ec9c571a03d17c70c12563f64ef7adcfcc70609caf46d835269fb3fa.lean/declarations/isequipartition--880d16338adb63d017d7dc22.md) | 30 | `declaration-track:880d16338adb63d017d7dc22c5e711a1632828f679283b71a6ec9d6b62451a3f` |
| 2 | `theorem` | [isEquipartition_iff_card_parts_eq_average](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant7aa127d0ec9c571a03d17c70c12563f64ef7adcfcc70609caf46d835269fb3fa.lean/declarations/isequipartition-iff-card-parts-eq-average--33b1c5a0ab3e59f896a1b456.md) | 34 | `result-track:33b1c5a0ab3e59f896a1b456d8d657f4ee40705c60ba1e9feedbc55788d128fd` |
| 3 | `theorem` | [Set.Subsingleton.isEquipartition](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant7aa127d0ec9c571a03d17c70c12563f64ef7adcfcc70609caf46d835269fb3fa.lean/declarations/set-subsingleton-isequipartition--c209864db709fa3cbd291091.md) | 43 | `result-track:c209864db709fa3cbd291091d1249dd8759f3443cbb5722ddd026cbeaa46e185` |
| 4 | `theorem` | [IsEquipartition.card_parts_eq_average](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant7aa127d0ec9c571a03d17c70c12563f64ef7adcfcc70609caf46d835269fb3fa.lean/declarations/isequipartition-card-parts-eq-average--4662145ebd8d637ab8ddf9b7.md) | 48 | `result-track:4662145ebd8d637ab8ddf9b7aa03c35044faea3e7cee30f0be3a23b06f426c77` |
| 5 | `theorem` | [IsEquipartition.average_le_card_part](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant7aa127d0ec9c571a03d17c70c12563f64ef7adcfcc70609caf46d835269fb3fa.lean/declarations/isequipartition-average-le-card-part--e32bd271d0fb51beda630931.md) | 53 | `result-track:e32bd271d0fb51beda630931280d916880497d9e6f5f5cdf1bcd5d9b46a06e6c` |
| 6 | `theorem` | [IsEquipartition.card_part_le_average_add_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant7aa127d0ec9c571a03d17c70c12563f64ef7adcfcc70609caf46d835269fb3fa.lean/declarations/isequipartition-card-part-le-average-add-one--8a837642d32421407a346339.md) | 59 | `result-track:8a837642d32421407a3463397b157405bf2da0d03b18d0cdcfce06545c570007` |
| 7 | `theorem` | [bot_isEquipartition](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant7aa127d0ec9c571a03d17c70c12563f64ef7adcfcc70609caf46d835269fb3fa.lean/declarations/bot-isequipartition--075d98bf9381ac56d2b037af.md) | 70 | `result-track:075d98bf9381ac56d2b037af1fb61ed5944b543891c891774ebd9e53ee72f2a5` |
| 8 | `theorem` | [top_isEquipartition](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant7aa127d0ec9c571a03d17c70c12563f64ef7adcfcc70609caf46d835269fb3fa.lean/declarations/top-isequipartition--ec9e996c72091c5d5d285ee7.md) | 74 | `result-track:ec9e996c72091c5d5d285ee70d80efd45056464a71324bd65b9672a4f3d92dde` |
| 9 | `theorem` | [indiscrete_isEquipartition](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant7aa127d0ec9c571a03d17c70c12563f64ef7adcfcc70609caf46d835269fb3fa.lean/declarations/indiscrete-isequipartition--bade1925932c3a32b810300d.md) | 78 | `result-track:bade1925932c3a32b810300dc717be48a06b9829fbbd076e081332e071d78917` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
