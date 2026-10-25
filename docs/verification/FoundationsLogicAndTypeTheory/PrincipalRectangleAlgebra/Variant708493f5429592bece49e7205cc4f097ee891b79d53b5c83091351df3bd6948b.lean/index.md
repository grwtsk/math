# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.PrincipalRectangleAlgebra.Variant708493f5429592bece49e7205cc4f097ee891b79d53b5c83091351df3bd6948b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5144ac9cc4c471034340ab79a19d439022b08043",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/PrincipalRectangleAlgebra/Variant708493f5429592bece49e7205cc4f097ee891b79d53b5c83091351df3bd6948b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/PrincipalRectangleAlgebra/Variant708493f5429592bece49e7205cc4f097ee891b79d53b5c83091351df3bd6948b.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/PrincipalRectangleAlgebra/Variant708493f5429592bece49e7205cc4f097ee891b79d53b5c83091351df3bd6948b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5144ac9cc4c471034340ab79a19d439022b08043`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/PrincipalRectangleAlgebra/Variant708493f5429592bece49e7205cc4f097ee891b79d53b5c83091351df3bd6948b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/PrincipalRectangleAlgebra/Variant708493f5429592bece49e7205cc4f097ee891b79d53b5c83091351df3bd6948b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [principalStar](../../../../mathematics/FoundationsLogicAndTypeTheory/PrincipalRectangleAlgebra/Variant708493f5429592bece49e7205cc4f097ee891b79d53b5c83091351df3bd6948b.lean/declarations/principalstar--696cdcec87f44ff94a17d6e3.md) | 24 | `declaration-track:696cdcec87f44ff94a17d6e37edaf40eef089ab06706491c580b9cae225a4f92` |
| 2 | `def` | [principal](../../../../mathematics/FoundationsLogicAndTypeTheory/PrincipalRectangleAlgebra/Variant708493f5429592bece49e7205cc4f097ee891b79d53b5c83091351df3bd6948b.lean/declarations/principal--d4c6c32b7d3fa1dd3dd243dc.md) | 28 | `declaration-track:d4c6c32b7d3fa1dd3dd243dc4f6c85144def48a9c81c69329b114ae247aa035c` |
| 3 | `def` | [normalized](../../../../mathematics/FoundationsLogicAndTypeTheory/PrincipalRectangleAlgebra/Variant708493f5429592bece49e7205cc4f097ee891b79d53b5c83091351df3bd6948b.lean/declarations/normalized--f9132de02a939a03b250137a.md) | 31 | `declaration-track:f9132de02a939a03b250137ae67173bcba0f050e0fd0e90297ef62ca5ae84308` |
| 4 | `theorem` | [full_off_residue_normalized_identity](../../../../mathematics/FoundationsLogicAndTypeTheory/PrincipalRectangleAlgebra/Variant708493f5429592bece49e7205cc4f097ee891b79d53b5c83091351df3bd6948b.lean/declarations/full-off-residue-normalized-identity--9fa5e64635c5ea9fee00e116.md) | 34 | `result-track:9fa5e64635c5ea9fee00e1169a9986ed85f183946fb70f3eaf7b4d91ff364f0c` |
| 5 | `theorem` | [full_off_residue_selected_identity](../../../../mathematics/FoundationsLogicAndTypeTheory/PrincipalRectangleAlgebra/Variant708493f5429592bece49e7205cc4f097ee891b79d53b5c83091351df3bd6948b.lean/declarations/full-off-residue-selected-identity--a57f45b9912b1fca10a6a915.md) | 45 | `result-track:a57f45b9912b1fca10a6a9150bc2b7d0c2a80235f1f93b34a3e215ccf4a20b4c` |
| 6 | `def` | [deltaH](../../../../mathematics/FoundationsLogicAndTypeTheory/PrincipalRectangleAlgebra/Variant708493f5429592bece49e7205cc4f097ee891b79d53b5c83091351df3bd6948b.lean/declarations/deltah--c1fdb0756f26f93675492a1d.md) | 54 | `declaration-track:c1fdb0756f26f93675492a1d0e7195ca80cbf684e47b34bed43008b84e80a6c9` |
| 7 | `def` | [deltaB](../../../../mathematics/FoundationsLogicAndTypeTheory/PrincipalRectangleAlgebra/Variant708493f5429592bece49e7205cc4f097ee891b79d53b5c83091351df3bd6948b.lean/declarations/deltab--bf621b9e12627ceac8adc645.md) | 55 | `declaration-track:bf621b9e12627ceac8adc6454b5240f3ba27d9659f54cdb33e2aa4d7ad94992f` |
| 8 | `theorem` | [full_box_margin_positive_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/PrincipalRectangleAlgebra/Variant708493f5429592bece49e7205cc4f097ee891b79d53b5c83091351df3bd6948b.lean/declarations/full-box-margin-positive-iff--9ea32885d518d0d0bafd8c35.md) | 57 | `result-track:9ea32885d518d0d0bafd8c35970774ce682b49765c18db0f6d0d8db61e5a0613` |
| 9 | `theorem` | [selected_margin_positive_on_full_box](../../../../mathematics/FoundationsLogicAndTypeTheory/PrincipalRectangleAlgebra/Variant708493f5429592bece49e7205cc4f097ee891b79d53b5c83091351df3bd6948b.lean/declarations/selected-margin-positive-on-full-box--ad6de97a1addeea0dfc93b5c.md) | 66 | `result-track:ad6de97a1addeea0dfc93b5cb187fe3f18bbf79a386d26016c9173523c8cac64` |
| 10 | `theorem` | [concrete_full_box_margins](../../../../mathematics/FoundationsLogicAndTypeTheory/PrincipalRectangleAlgebra/Variant708493f5429592bece49e7205cc4f097ee891b79d53b5c83091351df3bd6948b.lean/declarations/concrete-full-box-margins--028cca5ae611ea6d884429ce.md) | 72 | `result-track:028cca5ae611ea6d884429ce8dfa10178146e18d4ebc112fa3a9a59460fc4ced` |
| 11 | `theorem` | [literal_off_residue_decay_gap](../../../../mathematics/FoundationsLogicAndTypeTheory/PrincipalRectangleAlgebra/Variant708493f5429592bece49e7205cc4f097ee891b79d53b5c83091351df3bd6948b.lean/declarations/literal-off-residue-decay-gap--75488a9a835285165f362a2a.md) | 76 | `result-track:75488a9a835285165f362a2a992fdc80a6e2f6a73c3662be37823332a5628927` |
| 12 | `theorem` | [double_residue_restriction](../../../../mathematics/FoundationsLogicAndTypeTheory/PrincipalRectangleAlgebra/Variant708493f5429592bece49e7205cc4f097ee891b79d53b5c83091351df3bd6948b.lean/declarations/double-residue-restriction--3770e9603731c0dcc7ff4fc4.md) | 80 | `result-track:3770e9603731c0dcc7ff4fc41602934475036327700ef061ac2cd78e3b4d8c5b` |
| 13 | `theorem` | [two_thirds_does_not_supply_the_full_box_margin](../../../../mathematics/FoundationsLogicAndTypeTheory/PrincipalRectangleAlgebra/Variant708493f5429592bece49e7205cc4f097ee891b79d53b5c83091351df3bd6948b.lean/declarations/two-thirds-does-not-supply-the-full-box-margin--5453eac304db122a79d052a9.md) | 83 | `result-track:5453eac304db122a79d052a9ef30463e43483eefde1f5cbfce185c634286ccb8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
