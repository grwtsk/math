# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DvdCnstr.Variant67fd8aa55e1feb55cd2bf11e1c4b6550c01172fd9765f6f583024d7714200c9d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a236938cf0cabd7d8fdc5a85f244d653f3b836e1",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DvdCnstr/Variant67fd8aa55e1feb55cd2bf11e1c4b6550c01172fd9765f6f583024d7714200c9d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DvdCnstr/Variant67fd8aa55e1feb55cd2bf11e1c4b6550c01172fd9765f6f583024d7714200c9d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DvdCnstr/Variant67fd8aa55e1feb55cd2bf11e1c4b6550c01172fd9765f6f583024d7714200c9d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a236938cf0cabd7d8fdc5a85f244d653f3b836e1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DvdCnstr/Variant67fd8aa55e1feb55cd2bf11e1c4b6550c01172fd9765f6f583024d7714200c9d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DvdCnstr/Variant67fd8aa55e1feb55cd2bf11e1c4b6550c01172fd9765f6f583024d7714200c9d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Int.OfNat` — import line 9; external provider; requires a separately pinned dependency.
- `Init.Grind.Propagator` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Simp` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.Var` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.Nat` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.Proof` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.Norm` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.CommRing` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.NatInstTesters` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Dvd` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DvdCnstr.norm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DvdCnstr/Variant67fd8aa55e1feb55cd2bf11e1c4b6550c01172fd9765f6f583024d7714200c9d.lean/declarations/dvdcnstr-norm--6462589d04fb931a3bc29817.md) | 23 | `declaration-track:6462589d04fb931a3bc29817955372fbbcc86daf8ffb6b944685350dbf78442b` |
| 2 | `def` | [DvdCnstr.applyEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DvdCnstr/Variant67fd8aa55e1feb55cd2bf11e1c4b6550c01172fd9765f6f583024d7714200c9d.lean/declarations/dvdcnstr-applyeq--ab66ddfe56fe888e70e16d67.md) | 39 | `declaration-track:ab66ddfe56fe888e70e16d678b00ff57b3f2d038a5740a3062ad5cf16be93c94` |
| 3 | `def` | [DvdCnstr.applySubsts](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DvdCnstr/Variant67fd8aa55e1feb55cd2bf11e1c4b6550c01172fd9765f6f583024d7714200c9d.lean/declarations/dvdcnstr-applysubsts--080ff5c28d62b83678f422f9.md) | 47 | `declaration-track:080ff5c28d62b83678f422f9f1369b9291cfe1e976214e00717fb4b374c631e5` |
| 4 | `def` | [DvdCnstr.assert](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DvdCnstr/Variant67fd8aa55e1feb55cd2bf11e1c4b6550c01172fd9765f6f583024d7714200c9d.lean/declarations/dvdcnstr-assert--4f918266b8779777da595708.md) | 54 | `declaration-track:4f918266b8779777da59570886ecf675b084d45293a0727f0d349826cb3e0618` |
| 5 | `def` | [DvdCnstr.assertCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DvdCnstr/Variant67fd8aa55e1feb55cd2bf11e1c4b6550c01172fd9765f6f583024d7714200c9d.lean/declarations/dvdcnstr-assertcore--5b111ec249311273f04614b9.md) | 102 | `declaration-track:5b111ec249311273f04614b9b368f24c123d7f928666d72e16f085738c448522` |
| 6 | `def` | [propagateIntDvd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DvdCnstr/Variant67fd8aa55e1feb55cd2bf11e1c4b6550c01172fd9765f6f583024d7714200c9d.lean/declarations/propagateintdvd--94ccb8cb50974db9ffdb3a6c.md) | 109 | `declaration-track:94ccb8cb50974db9ffdb3a6c750af4301257a4375cfc612cca976c8f4ae15517` |
| 7 | `def` | [propagateNatDvd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DvdCnstr/Variant67fd8aa55e1feb55cd2bf11e1c4b6550c01172fd9765f6f583024d7714200c9d.lean/declarations/propagatenatdvd--16fc166303bffa8ae399a090.md) | 121 | `declaration-track:16fc166303bffa8ae399a09053d9b89d5aadc0568fb6c7aefa6c903f4ef1247b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
