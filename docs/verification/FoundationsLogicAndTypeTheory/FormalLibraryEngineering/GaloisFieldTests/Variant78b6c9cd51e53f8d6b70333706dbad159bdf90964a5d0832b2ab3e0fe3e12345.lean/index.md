# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GaloisFieldTests.Variant78b6c9cd51e53f8d6b70333706dbad159bdf90964a5d0832b2ab3e0fe3e12345

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ebea4b89875852844196717b186a65f3acf4fcc",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GaloisFieldTests/Variant78b6c9cd51e53f8d6b70333706dbad159bdf90964a5d0832b2ab3e0fe3e12345.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GaloisFieldTests/Variant78b6c9cd51e53f8d6b70333706dbad159bdf90964a5d0832b2ab3e0fe3e12345.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GaloisFieldTests/Variant78b6c9cd51e53f8d6b70333706dbad159bdf90964a5d0832b2ab3e0fe3e12345.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ebea4b89875852844196717b186a65f3acf4fcc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GaloisFieldTests/Variant78b6c9cd51e53f8d6b70333706dbad159bdf90964a5d0832b2ab3e0fe3e12345.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GaloisFieldTests/Variant78b6c9cd51e53f8d6b70333706dbad159bdf90964a5d0832b2ab3e0fe3e12345.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BinaryMatrix.GaloisFieldRound` — import line 1; external provider; requires a separately pinned dependency.
- `BinaryMatrix.GaloisFieldRegular` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gf2OneCellCoordinates](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GaloisFieldTests/Variant78b6c9cd51e53f8d6b70333706dbad159bdf90964a5d0832b2ab3e0fe3e12345.lean/declarations/gf2onecellcoordinates--9063d423016e23d1abebf4f4.md) | 19 | `declaration-track:9063d423016e23d1abebf4f42d5009fb286b05000df78be961691929361afda6` |
| 2 | `def` | [gf2OneCellEncoding](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GaloisFieldTests/Variant78b6c9cd51e53f8d6b70333706dbad159bdf90964a5d0832b2ab3e0fe3e12345.lean/declarations/gf2onecellencoding--e81912408ec1e670d038e2fc.md) | 33 | `declaration-track:e81912408ec1e670d038e2fc1bd605db03a873b61e30bfc0cd8fa5082338acc4` |
| 3 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GaloisFieldTests/Variant78b6c9cd51e53f8d6b70333706dbad159bdf90964a5d0832b2ab3e0fe3e12345.lean/declarations/example--5d0f464e7c608ed11abbba42.md) | 36 | `declaration-track:5d0f464e7c608ed11abbba42ed71727ce06549c905b6d53feae50c9d5b187911` |
| 4 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GaloisFieldTests/Variant78b6c9cd51e53f8d6b70333706dbad159bdf90964a5d0832b2ab3e0fe3e12345.lean/declarations/example--2105927a48a0bcbd0ac9f0f2.md) | 40 | `declaration-track:2105927a48a0bcbd0ac9f0f24b3041b0ff207354df76ca4706c955c471eb6364` |
| 5 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GaloisFieldTests/Variant78b6c9cd51e53f8d6b70333706dbad159bdf90964a5d0832b2ab3e0fe3e12345.lean/declarations/example--80b0b258d7206a38245574d3.md) | 49 | `declaration-track:80b0b258d7206a38245574d30f7fb4e4b96cba3fa9045ee545e54abd0c61a468` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GaloisFieldTests/Variant78b6c9cd51e53f8d6b70333706dbad159bdf90964a5d0832b2ab3e0fe3e12345.lean/declarations/example--57ef91dfd8eabb21e7d8ff70.md) | 53 | `declaration-track:57ef91dfd8eabb21e7d8ff702e3838fc54bb4542376bb690777acb317dca04d3` |
| 7 | `def` | [leftBit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GaloisFieldTests/Variant78b6c9cd51e53f8d6b70333706dbad159bdf90964a5d0832b2ab3e0fe3e12345.lean/declarations/leftbit--8809185d7404cd9fe238ea70.md) | 65 | `declaration-track:8809185d7404cd9fe238ea706197616636e557011089b94c555d91694b7cd4ab` |
| 8 | `def` | [rightBit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GaloisFieldTests/Variant78b6c9cd51e53f8d6b70333706dbad159bdf90964a5d0832b2ab3e0fe3e12345.lean/declarations/rightbit--f5db4d9ff5f07f7fd65589b0.md) | 69 | `declaration-track:f5db4d9ff5f07f7fd65589b0ab8a9f8fce1f3a7a1f20d0f3204eb5651ef5612f` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GaloisFieldTests/Variant78b6c9cd51e53f8d6b70333706dbad159bdf90964a5d0832b2ab3e0fe3e12345.lean/declarations/example--42293ceb6a460749cb50fc3d.md) | 72 | `declaration-track:42293ceb6a460749cb50fc3df5071500cf591f8525ca677d077506aca66345e5` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GaloisFieldTests/Variant78b6c9cd51e53f8d6b70333706dbad159bdf90964a5d0832b2ab3e0fe3e12345.lean/declarations/example--cfc567bf2db1b76446ea641e.md) | 75 | `declaration-track:cfc567bf2db1b76446ea641e6bb77e0633d2ecbbe13aaffa7cb2e66270b31d21` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GaloisFieldTests/Variant78b6c9cd51e53f8d6b70333706dbad159bdf90964a5d0832b2ab3e0fe3e12345.lean/declarations/example--7be93d9bf32cec06101d9d6b.md) | 78 | `declaration-track:7be93d9bf32cec06101d9d6b563697c0713735febf56a1fed59b065c26ea5127` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GaloisFieldTests/Variant78b6c9cd51e53f8d6b70333706dbad159bdf90964a5d0832b2ab3e0fe3e12345.lean/declarations/example--7e941830ffca311778fb075f.md) | 81 | `declaration-track:7e941830ffca311778fb075f458cd50cc51d1cb1c904fbedc42f34ffc97de205` |
| 13 | `def` | [upperUnitriangular2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GaloisFieldTests/Variant78b6c9cd51e53f8d6b70333706dbad159bdf90964a5d0832b2ab3e0fe3e12345.lean/declarations/upperunitriangular2--866cef38ee06c0453678f11d.md) | 91 | `declaration-track:866cef38ee06c0453678f11d8f1136032cf46b3aac5a7e7527aafe8c0621a08c` |
| 14 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GaloisFieldTests/Variant78b6c9cd51e53f8d6b70333706dbad159bdf90964a5d0832b2ab3e0fe3e12345.lean/declarations/example--5d02e8b3d7549b18a423ce32.md) | 94 | `declaration-track:5d02e8b3d7549b18a423ce32b6f18022557c72e5332647ccb9ea55ac529b15c8` |
| 15 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GaloisFieldTests/Variant78b6c9cd51e53f8d6b70333706dbad159bdf90964a5d0832b2ab3e0fe3e12345.lean/declarations/example--f437842c697ba714406b87e3.md) | 99 | `declaration-track:f437842c697ba714406b87e343825259ab5395ed4305a1d2082cfe187b00afaa` |
| 16 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GaloisFieldTests/Variant78b6c9cd51e53f8d6b70333706dbad159bdf90964a5d0832b2ab3e0fe3e12345.lean/declarations/example--d51645cfdc0bd6889a1545e4.md) | 104 | `declaration-track:d51645cfdc0bd6889a1545e4d4e9dd559d17854e6750c5447f9f877555fcda29` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
