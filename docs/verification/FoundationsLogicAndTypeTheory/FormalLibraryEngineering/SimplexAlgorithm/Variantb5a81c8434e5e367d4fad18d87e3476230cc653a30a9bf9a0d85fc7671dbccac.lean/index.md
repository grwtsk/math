# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimplexAlgorithm.Variantb5a81c8434e5e367d4fad18d87e3476230cc653a30a9bf9a0d85fc7671dbccac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f016c12af3c8a8fb05dda8f1ef4bec8105854128",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variantb5a81c8434e5e367d4fad18d87e3476230cc653a30a9bf9a0d85fc7671dbccac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variantb5a81c8434e5e367d4fad18d87e3476230cc653a30a9bf9a0d85fc7671dbccac.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variantb5a81c8434e5e367d4fad18d87e3476230cc653a30a9bf9a0d85fc7671dbccac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f016c12af3c8a8fb05dda8f1ef4bec8105854128`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variantb5a81c8434e5e367d4fad18d87e3476230cc653a30a9bf9a0d85fc7671dbccac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variantb5a81c8434e5e367d4fad18d87e3476230cc653a30a9bf9a0d85fc7671dbccac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Linarith.Oracle.SimplexAlgorithm.Datatypes` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [SimplexAlgorithmException](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variantb5a81c8434e5e367d4fad18d87e3476230cc653a30a9bf9a0d85fc7671dbccac.lean/declarations/simplexalgorithmexception--9b1d3588541d73cd44e370db.md) | 26 | `declaration-track:9b1d3588541d73cd44e370dbbb99e18ef66d123a2e26cde56f0f027f2fe36cd5` |
| 2 | `abbrev` | [SimplexAlgorithmM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variantb5a81c8434e5e367d4fad18d87e3476230cc653a30a9bf9a0d85fc7671dbccac.lean/declarations/simplexalgorithmm--5950d9c69374d155457a70a8.md) | 31 | `declaration-track:5950d9c69374d155457a70a862e148009223e5b36cb03ca7de83b577a2c6fe7c` |
| 3 | `def` | [doPivotOperation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variantb5a81c8434e5e367d4fad18d87e3476230cc653a30a9bf9a0d85fc7671dbccac.lean/declarations/dopivotoperation--4d335decc2d8a64d19f5b08e.md) | 41 | `declaration-track:4d335decc2d8a64d19f5b08ee800b202dac5b5ccd99e4122bf3bcd5845569267` |
| 4 | `def` | [checkSuccess](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variantb5a81c8434e5e367d4fad18d87e3476230cc653a30a9bf9a0d85fc7671dbccac.lean/declarations/checksuccess--193756c93287a539855f7a86.md) | 68 | `declaration-track:193756c93287a539855f7a86068649dd230e50a6630aa23cbdd95ee5a19862e4` |
| 5 | `def` | [chooseEnteringVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variantb5a81c8434e5e367d4fad18d87e3476230cc653a30a9bf9a0d85fc7671dbccac.lean/declarations/chooseenteringvar--4fa9dba5c387ec47f8e276f7.md) | 77 | `declaration-track:4fa9dba5c387ec47f8e276f7897f52817689833f7f3dcfe2ccc43e668cf7886d` |
| 6 | `def` | [chooseExitingVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variantb5a81c8434e5e367d4fad18d87e3476230cc653a30a9bf9a0d85fc7671dbccac.lean/declarations/chooseexitingvar--58b1f8d6e2bfd0d11ba5b20e.md) | 95 | `declaration-track:58b1f8d6e2bfd0d11ba5b20ef22848f48191c2392de0da18e1e7164513f643f4` |
| 7 | `def` | [choosePivots](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variantb5a81c8434e5e367d4fad18d87e3476230cc653a30a9bf9a0d85fc7671dbccac.lean/declarations/choosepivots--dce6e807ce1a7d5a6f0ff00a.md) | 116 | `declaration-track:dce6e807ce1a7d5a6f0ff00a51c3a41afa05eeabca26314c022b2a318be0c737` |
| 8 | `def` | [runSimplexAlgorithm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variantb5a81c8434e5e367d4fad18d87e3476230cc653a30a9bf9a0d85fc7671dbccac.lean/declarations/runsimplexalgorithm--005f989165cc51809e53f156.md) | 125 | `declaration-track:005f989165cc51809e53f156ba9965112297f4e1527b106ec5b56a6317767e15` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
