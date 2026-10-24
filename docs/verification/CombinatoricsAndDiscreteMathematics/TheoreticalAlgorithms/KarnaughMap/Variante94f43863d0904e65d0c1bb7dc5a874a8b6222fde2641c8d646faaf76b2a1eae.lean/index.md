# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.KarnaughMap.Variante94f43863d0904e65d0c1bb7dc5a874a8b6222fde2641c8d646faaf76b2a1eae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63b0aa9d7341c544bf39bdd0230fe133a3da0493",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/KarnaughMap/Variante94f43863d0904e65d0c1bb7dc5a874a8b6222fde2641c8d646faaf76b2a1eae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/KarnaughMap/Variante94f43863d0904e65d0c1bb7dc5a874a8b6222fde2641c8d646faaf76b2a1eae.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/KarnaughMap/Variante94f43863d0904e65d0c1bb7dc5a874a8b6222fde2641c8d646faaf76b2a1eae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63b0aa9d7341c544bf39bdd0230fe133a3da0493`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/KarnaughMap/Variante94f43863d0904e65d0c1bb7dc5a874a8b6222fde2641c8d646faaf76b2a1eae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/KarnaughMap/Variante94f43863d0904e65d0c1bb7dc5a874a8b6222fde2641c8d646faaf76b2a1eae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Boolean.Cube.TruthTable` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [KarnaughMap.KMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/KarnaughMap/Variante94f43863d0904e65d0c1bb7dc5a874a8b6222fde2641c8d646faaf76b2a1eae.lean/declarations/karnaughmap-kmap--28203a1be315c46f4d88c3b2.md) | 10 | `declaration-track:28203a1be315c46f4d88c3b200cca207cb136e888414b6d6f6dde8a902b7b77c` |
| 2 | `def` | [KarnaughMap.rowBit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/KarnaughMap/Variante94f43863d0904e65d0c1bb7dc5a874a8b6222fde2641c8d646faaf76b2a1eae.lean/declarations/karnaughmap-rowbit--4aa2bd175c7855b930b315b2.md) | 14 | `declaration-track:4aa2bd175c7855b930b315b25ceb1e62bb969fed6a894a96010138b087f8946f` |
| 3 | `def` | [KarnaughMap.colBit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/KarnaughMap/Variante94f43863d0904e65d0c1bb7dc5a874a8b6222fde2641c8d646faaf76b2a1eae.lean/declarations/karnaughmap-colbit--4483481c7847d83d69ca5219.md) | 22 | `declaration-track:4483481c7847d83d69ca52197c17dd2e415f1b676cc3f655dd875f69ec04372e` |
| 4 | `def` | [KarnaughMap.input](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/KarnaughMap/Variante94f43863d0904e65d0c1bb7dc5a874a8b6222fde2641c8d646faaf76b2a1eae.lean/declarations/karnaughmap-input--5d4da28749b8e81fbb789639.md) | 35 | `declaration-track:5d4da28749b8e81fbb78963910ccad80f778512912672cfbe5c5cb9d8f8022ae` |
| 5 | `def` | [KarnaughMap.fromTruthTable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/KarnaughMap/Variante94f43863d0904e65d0c1bb7dc5a874a8b6222fde2641c8d646faaf76b2a1eae.lean/declarations/karnaughmap-fromtruthtable--175bda768059e3a528cab92b.md) | 47 | `declaration-track:175bda768059e3a528cab92be86844c59b8610f6c3169fc1a9ea7d8312b05d08` |
| 6 | `def` | [KarnaughMap.rowAxis](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/KarnaughMap/Variante94f43863d0904e65d0c1bb7dc5a874a8b6222fde2641c8d646faaf76b2a1eae.lean/declarations/karnaughmap-rowaxis--8b81d0e96a3b1db93e9e7447.md) | 53 | `declaration-track:8b81d0e96a3b1db93e9e7447ec110d14dfaaf6adf5c33212f391f3bcedfd1bfe` |
| 7 | `def` | [KarnaughMap.colAxis](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/KarnaughMap/Variante94f43863d0904e65d0c1bb7dc5a874a8b6222fde2641c8d646faaf76b2a1eae.lean/declarations/karnaughmap-colaxis--2ea9112db397c5ad2c1ee6ae.md) | 58 | `declaration-track:2ea9112db397c5ad2c1ee6ae28884e717ef4d822c8a8914b57946cc292fc0642` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
