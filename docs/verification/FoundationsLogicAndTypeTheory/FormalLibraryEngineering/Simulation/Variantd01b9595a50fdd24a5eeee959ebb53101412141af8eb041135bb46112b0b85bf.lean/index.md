# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Simulation.Variantd01b9595a50fdd24a5eeee959ebb53101412141af8eb041135bb46112b0b85bf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aff22b7a4ba4943f743149575c51bcb567db2bd6",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simulation/Variantd01b9595a50fdd24a5eeee959ebb53101412141af8eb041135bb46112b0b85bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simulation/Variantd01b9595a50fdd24a5eeee959ebb53101412141af8eb041135bb46112b0b85bf.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simulation/Variantd01b9595a50fdd24a5eeee959ebb53101412141af8eb041135bb46112b0b85bf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aff22b7a4ba4943f743149575c51bcb567db2bd6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simulation/Variantd01b9595a50fdd24a5eeee959ebb53101412141af8eb041135bb46112b0b85bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simulation/Variantd01b9595a50fdd24a5eeee959ebb53101412141af8eb041135bb46112b0b85bf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Relation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.WellFounded` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [StronglyNormalizing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simulation/Variantd01b9595a50fdd24a5eeee959ebb53101412141af8eb041135bb46112b0b85bf.lean/declarations/stronglynormalizing--5ef6813b5647016cee1311a3.md) | 29 | `declaration-track:5ef6813b5647016cee1311a3866da4c584384ea620854e7a8e38bddb497f4f58` |
| 2 | `inductive` | [Trace](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simulation/Variantd01b9595a50fdd24a5eeee959ebb53101412141af8eb041135bb46112b0b85bf.lean/declarations/trace--64199b40f4583a964f99a5a6.md) | 33 | `declaration-track:64199b40f4583a964f99a5a6bbb06dcf6f550a3f2f16c486a43153d6a22fa8dd` |
| 3 | `theorem` | [Trace.trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simulation/Variantd01b9595a50fdd24a5eeee959ebb53101412141af8eb041135bb46112b0b85bf.lean/declarations/trace-trans--6c97659209b9ee6fcf278c59.md) | 38 | `result-track:6c97659209b9ee6fcf278c59dde979b2d0f60c81b2e8d0c0c66c2d67b6559605` |
| 4 | `theorem` | [trace_length_le_rank](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simulation/Variantd01b9595a50fdd24a5eeee959ebb53101412141af8eb041135bb46112b0b85bf.lean/declarations/trace-length-le-rank--6aeef3dcaa661dc840262a2e.md) | 46 | `result-track:6aeef3dcaa661dc840262a2e0fd8a51c0f7d8c9caa027bf27c4c2d87df73e3b2` |
| 5 | `theorem` | [strongly_normalizing_of_rank](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simulation/Variantd01b9595a50fdd24a5eeee959ebb53101412141af8eb041135bb46112b0b85bf.lean/declarations/strongly-normalizing-of-rank--9597d9d1aa609254cc6620c2.md) | 56 | `result-track:9597d9d1aa609254cc6620c24c0f03f3906e23448a78c2140db9374a4e6fb960` |
| 6 | `theorem` | [target_path_accessible](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simulation/Variantd01b9595a50fdd24a5eeee959ebb53101412141af8eb041135bb46112b0b85bf.lean/declarations/target-path-accessible--9e3f446c2171dd8adbb136c3.md) | 61 | `result-track:9e3f446c2171dd8adbb136c30e8e06a825ea83a327dd29ada60541182b46ab00` |
| 7 | `theorem` | [strongly_normalizing_of_strict_simulation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simulation/Variantd01b9595a50fdd24a5eeee959ebb53101412141af8eb041135bb46112b0b85bf.lean/declarations/strongly-normalizing-of-strict-simulation--389169248c87bec7a5fd90bf.md) | 68 | `result-track:389169248c87bec7a5fd90bf7f139c4421617ab4131a70538a89027a252deab1` |
| 8 | `def` | [FiberWellFounded](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simulation/Variantd01b9595a50fdd24a5eeee959ebb53101412141af8eb041135bb46112b0b85bf.lean/declarations/fiberwellfounded--d2a9ce3de690b7cf5b90480d.md) | 82 | `declaration-track:d2a9ce3de690b7cf5b90480d4b1fcef33bff1a72847bdfb9b316bd4fc941e789` |
| 9 | `theorem` | [fiber_well_founded_of_measure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simulation/Variantd01b9595a50fdd24a5eeee959ebb53101412141af8eb041135bb46112b0b85bf.lean/declarations/fiber-well-founded-of-measure--edde226288df613951d11a12.md) | 86 | `result-track:edde226288df613951d11a126498abf20b2b30f1f2b343446bb2fb2594b05904` |
| 10 | `theorem` | [strongly_normalizing_of_fiber_simulation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simulation/Variantd01b9595a50fdd24a5eeee959ebb53101412141af8eb041135bb46112b0b85bf.lean/declarations/strongly-normalizing-of-fiber-simulation--d161264804b310e940e5c425.md) | 95 | `result-track:d161264804b310e940e5c42559f261bb246298973d4afed16cf879eed956cda4` |
| 11 | `theorem` | [rank_decreases_along_path](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simulation/Variantd01b9595a50fdd24a5eeee959ebb53101412141af8eb041135bb46112b0b85bf.lean/declarations/rank-decreases-along-path--38a2acde39d3d9eee48e1c4f.md) | 119 | `result-track:38a2acde39d3d9eee48e1c4fba4e54bbdc2c4cd2550e77d475a45cf24ff3e913` |
| 12 | `theorem` | [strict_simulation_rank](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simulation/Variantd01b9595a50fdd24a5eeee959ebb53101412141af8eb041135bb46112b0b85bf.lean/declarations/strict-simulation-rank--3174de065513a9fc0f9f47c2.md) | 127 | `result-track:3174de065513a9fc0f9f47c26c42b507f80f2acb0d1bba5fab8c4251037d69fa` |
| 13 | `theorem` | [stuttering_total_rank](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simulation/Variantd01b9595a50fdd24a5eeee959ebb53101412141af8eb041135bb46112b0b85bf.lean/declarations/stuttering-total-rank--c082d69bd608cf64ba83ecaa.md) | 136 | `result-track:c082d69bd608cf64ba83ecaaea9a27ed15b26bdf9fc351bc919c059b6fae5073` |
| 14 | `theorem` | [stuttering_trace_budget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simulation/Variantd01b9595a50fdd24a5eeee959ebb53101412141af8eb041135bb46112b0b85bf.lean/declarations/stuttering-trace-budget--c6ba6b37683c1547708f4b77.md) | 152 | `result-track:c6ba6b37683c1547708f4b7757029aed180f3506b2ead6de76b5a7a41c7cb7f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
