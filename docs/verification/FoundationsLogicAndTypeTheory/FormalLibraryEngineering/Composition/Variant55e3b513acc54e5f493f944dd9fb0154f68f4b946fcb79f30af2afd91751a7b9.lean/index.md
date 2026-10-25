# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Composition.Variant55e3b513acc54e5f493f944dd9fb0154f68f4b946fcb79f30af2afd91751a7b9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab3a74768544cf6f4e30e18895d52cb906b07ef4",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Composition/Variant55e3b513acc54e5f493f944dd9fb0154f68f4b946fcb79f30af2afd91751a7b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Composition/Variant55e3b513acc54e5f493f944dd9fb0154f68f4b946fcb79f30af2afd91751a7b9.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Composition/Variant55e3b513acc54e5f493f944dd9fb0154f68f4b946fcb79f30af2afd91751a7b9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab3a74768544cf6f4e30e18895d52cb906b07ef4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Composition/Variant55e3b513acc54e5f493f944dd9fb0154f68f4b946fcb79f30af2afd91751a7b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Composition/Variant55e3b513acc54e5f493f944dd9fb0154f68f4b946fcb79f30af2afd91751a7b9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.MathematicalTooling.Coverage.Finite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.OfFn` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ScopedProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Composition/Variant55e3b513acc54e5f493f944dd9fb0154f68f4b946fcb79f30af2afd91751a7b9.lean/declarations/scopedproof--0b9def010fe02ca0656796bb.md) | 27 | `declaration-track:0b9def010fe02ca0656796bbdba052bda4dc699ba044c8cf62abff9058ecd549` |
| 2 | `theorem` | [ScopedProof.sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Composition/Variant55e3b513acc54e5f493f944dd9fb0154f68f4b946fcb79f30af2afd91751a7b9.lean/declarations/scopedproof-sound--0bffaf1db25e6f3107d6ce6a.md) | 49 | `result-track:0bffaf1db25e6f3107d6ce6a83bc79a6cfce47804a733333a6e8dab5961b8c56` |
| 3 | `def` | [regionalMaximum](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Composition/Variant55e3b513acc54e5f493f944dd9fb0154f68f4b946fcb79f30af2afd91751a7b9.lean/declarations/regionalmaximum--e2afceb1686d836fc329c8b4.md) | 71 | `declaration-track:e2afceb1686d836fc329c8b45fbbc8e215306c6792e9536f0368d1fe9c6c01a8` |
| 4 | `theorem` | [le_regionalMaximum](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Composition/Variant55e3b513acc54e5f493f944dd9fb0154f68f4b946fcb79f30af2afd91751a7b9.lean/declarations/le-regionalmaximum--f5ac1d976987bb92e868ef01.md) | 75 | `result-track:f5ac1d976987bb92e868ef010498d6956d105663bfdbd37c96ad490c101f2f32` |
| 5 | `def` | [regionalCover](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Composition/Variant55e3b513acc54e5f493f944dd9fb0154f68f4b946fcb79f30af2afd91751a7b9.lean/declarations/regionalcover--7fdd8baf6e2e259e48a36b5d.md) | 85 | `declaration-track:7fdd8baf6e2e259e48a36b5da1d996acb6556b79932b40f7424c967415d8e442` |
| 6 | `def` | [regionalCoverTail](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Composition/Variant55e3b513acc54e5f493f944dd9fb0154f68f4b946fcb79f30af2afd91751a7b9.lean/declarations/regionalcovertail--10d6ab888c836a3e09abcc47.md) | 95 | `declaration-track:10d6ab888c836a3e09abcc476efb3a775ffd28d4310a502a51a4903232e52338` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
