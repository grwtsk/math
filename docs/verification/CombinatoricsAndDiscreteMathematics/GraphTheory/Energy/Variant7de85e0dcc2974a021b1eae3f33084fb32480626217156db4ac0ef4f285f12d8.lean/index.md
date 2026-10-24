# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Energy.Variant7de85e0dcc2974a021b1eae3f33084fb32480626217156db4ac0ef4f285f12d8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d43461750de9233100fc91b8476ca9651c76908f",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Energy/Variant7de85e0dcc2974a021b1eae3f33084fb32480626217156db4ac0ef4f285f12d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Energy/Variant7de85e0dcc2974a021b1eae3f33084fb32480626217156db4ac0ef4f285f12d8.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Energy/Variant7de85e0dcc2974a021b1eae3f33084fb32480626217156db4ac0ef4f285f12d8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d43461750de9233100fc91b8476ca9651c76908f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Energy/Variant7de85e0dcc2974a021b1eae3f33084fb32480626217156db4ac0ef4f285f12d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Energy/Variant7de85e0dcc2974a021b1eae3f33084fb32480626217156db4ac0ef4f285f12d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Order` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Density` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.BigOperators` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Energy/Variant7de85e0dcc2974a021b1eae3f33084fb32480626217156db4ac0ef4f285f12d8.lean/declarations/macro-rules--a2fa546fa5c010c39ebbe8bb.md) | 35 | `declaration-track:a2fa546fa5c010c39ebbe8bb694024e2773d66b040d2683c0151aae6f02811bc` |
| 2 | `def` | [energy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Energy/Variant7de85e0dcc2974a021b1eae3f33084fb32480626217156db4ac0ef4f285f12d8.lean/declarations/energy--949833625e9aa0d4116436a5.md) | 41 | `declaration-track:949833625e9aa0d4116436a5aaba102309261ffd6b69260735b7dae782f12b67` |
| 3 | `theorem` | [energy_nonneg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Energy/Variant7de85e0dcc2974a021b1eae3f33084fb32480626217156db4ac0ef4f285f12d8.lean/declarations/energy-nonneg--2803774d804f375206520596.md) | 45 | `result-track:2803774d804f3752065205969e61fd458a3ddb66f0b92a034fe3c447f8261ebe` |
| 4 | `theorem` | [energy_le_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Energy/Variant7de85e0dcc2974a021b1eae3f33084fb32480626217156db4ac0ef4f285f12d8.lean/declarations/energy-le-one--414aa160c48a53d160d58526.md) | 49 | `result-track:414aa160c48a53d160d58526b6eeac0a4ebbe5dad840c3e31d97bc695c72c098` |
| 5 | `theorem` | [coe_energy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Energy/Variant7de85e0dcc2974a021b1eae3f33084fb32480626217156db4ac0ef4f285f12d8.lean/declarations/coe-energy--57f87c45196b5093eb12761b.md) | 64 | `result-track:57f87c45196b5093eb12761beef080189807c714818f260d66b71204527caae5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
