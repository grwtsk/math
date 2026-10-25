# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IneqCnstr.Variant7d7b6ecc10a3e38da68740510820008c2607bdc4a9898c34a4e7217dda01a05c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4aa1fe9309c256ba3f80d331bdfffe827ca0d21f",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IneqCnstr/Variant7d7b6ecc10a3e38da68740510820008c2607bdc4a9898c34a4e7217dda01a05c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IneqCnstr/Variant7d7b6ecc10a3e38da68740510820008c2607bdc4a9898c34a4e7217dda01a05c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IneqCnstr/Variant7d7b6ecc10a3e38da68740510820008c2607bdc4a9898c34a4e7217dda01a05c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4aa1fe9309c256ba3f80d331bdfffe827ca0d21f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IneqCnstr/Variant7d7b6ecc10a3e38da68740510820008c2607bdc4a9898c34a4e7217dda01a05c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IneqCnstr/Variant7d7b6ecc10a3e38da68740510820008c2607bdc4a9898c34a4e7217dda01a05c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.Arith.CommRing.Reify` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Linear.Den` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Linear.StructId` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Linear.Reify` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Linear.Proof` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isInstOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IneqCnstr/Variant7d7b6ecc10a3e38da68740510820008c2607bdc4a9898c34a4e7217dda01a05c.lean/declarations/isinstof--c146503510017d1a6e687678.md) | 16 | `declaration-track:c146503510017d1a6e6876780779f5446ccb68984d7110fc2c2748a71aa20ebc` |
| 2 | `def` | [IneqCnstr.assert](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IneqCnstr/Variant7d7b6ecc10a3e38da68740510820008c2607bdc4a9898c34a4e7217dda01a05c.lean/declarations/ineqcnstr-assert--30b1bc1f1192bf0b23b10279.md) | 22 | `declaration-track:30b1bc1f1192bf0b23b10279653bf1ec797d72b942e54519868b7cbd321c5aef` |
| 3 | `def` | [propagateCommRingIneq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IneqCnstr/Variant7d7b6ecc10a3e38da68740510820008c2607bdc4a9898c34a4e7217dda01a05c.lean/declarations/propagatecommringineq--698eb9a1d632a0ddc59a0590.md) | 41 | `declaration-track:698eb9a1d632a0ddc59a05905550f361607e6854ea17031b3f0c9c19cbe385d8` |
| 4 | `def` | [propagateIntModuleIneq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IneqCnstr/Variant7d7b6ecc10a3e38da68740510820008c2607bdc4a9898c34a4e7217dda01a05c.lean/declarations/propagateintmoduleineq--d5d7e06a7c4f8e3b4a25cdaa.md) | 70 | `declaration-track:d5d7e06a7c4f8e3b4a25cdaa51dad518e01cc21b7d96b41de4a843eada951659` |
| 5 | `def` | [propagateNatModuleIneq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IneqCnstr/Variant7d7b6ecc10a3e38da68740510820008c2607bdc4a9898c34a4e7217dda01a05c.lean/declarations/propagatenatmoduleineq--2e8837c36202f01f14017233.md) | 86 | `declaration-track:2e8837c36202f01f1401723354d72f6633094329847640b55405931224c4371b` |
| 6 | `def` | [propagateIneq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IneqCnstr/Variant7d7b6ecc10a3e38da68740510820008c2607bdc4a9898c34a4e7217dda01a05c.lean/declarations/propagateineq--f82b5b56edf85835ceb1399a.md) | 103 | `declaration-track:f82b5b56edf85835ceb1399a38b13bbf4a0d73d8273f72d43059bbca7b314191` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
