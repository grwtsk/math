# Verification target: GRWTSK.Order.Interval.BoundedQuantizer

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c5dd84cfa1b3419fa3f34202b71e72d1cfcb7ac",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Order/Interval/BoundedQuantizer.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Interval/BoundedQuantizer.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Interval/BoundedQuantizer.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c5dd84cfa1b3419fa3f34202b71e72d1cfcb7ac`.

Source path: `GRWTSK/Order/Interval/BoundedQuantizer.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Order/Interval/BoundedQuantizer.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.MinMax` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Basic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [clamp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Interval/BoundedQuantizer.lean/declarations/clamp--3378c1749eb04144e9339ff1.md) | 19 | `declaration-track:3378c1749eb04144e9339ff1bb83b36ef3c6fee47cd73ab18b7a55de0e4d916b` |
| 2 | `theorem` | [lower_le_clamp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Interval/BoundedQuantizer.lean/declarations/lower-le-clamp--d1ca564e3a0a5492bb4e2ad6.md) | 21 | `result-track:d1ca564e3a0a5492bb4e2ad6be3d8dd7b8fc0a330c615b96ba9b0fabd24cc3dd` |
| 3 | `theorem` | [clamp_le_upper](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Interval/BoundedQuantizer.lean/declarations/clamp-le-upper--19344e827455503d78c96424.md) | 24 | `result-track:19344e827455503d78c964241e0ec564c556cf92a74911dcd0900238b511f422` |
| 4 | `theorem` | [clamp_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Interval/BoundedQuantizer.lean/declarations/clamp-mem--2c52b79e935c57307fe8bc74.md) | 28 | `result-track:2c52b79e935c57307fe8bc746a8bdcc1b9350b5ac4ed7ca851a84f15d9d0055c` |
| 5 | `theorem` | [clamp_eq_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Interval/BoundedQuantizer.lean/declarations/clamp-eq-self--b25253f124b950330b368cbb.md) | 32 | `result-track:b25253f124b950330b368cbbf1eacda2973a98499e2ff832365ee2771e271031` |
| 6 | `theorem` | [clamp_monotone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Interval/BoundedQuantizer.lean/declarations/clamp-monotone--5bd94cbc5e073c25b72b7ee2.md) | 38 | `result-track:5bd94cbc5e073c25b72b7ee232f65b3f4b0eeb627dba3bc96ebee8bbf4fd8cc0` |
| 7 | `theorem` | [clamp_idempotent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Interval/BoundedQuantizer.lean/declarations/clamp-idempotent--9d87ba618c4b4f450d4e787f.md) | 42 | `result-track:9d87ba618c4b4f450d4e787f254d0a9ddf3e8b343097019d1993b26b1ce109f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
