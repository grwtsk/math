# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant3b380dd29c8d5d13f08bdb6572f1153dac4d9f950c61ae69e09f46deb05348b3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35e853d8d763cb6a5c9f5cff5ecb09a02238b5fa",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3b380dd29c8d5d13f08bdb6572f1153dac4d9f950c61ae69e09f46deb05348b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3b380dd29c8d5d13f08bdb6572f1153dac4d9f950c61ae69e09f46deb05348b3.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3b380dd29c8d5d13f08bdb6572f1153dac4d9f950c61ae69e09f46deb05348b3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35e853d8d763cb6a5c9f5cff5ecb09a02238b5fa`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3b380dd29c8d5d13f08bdb6572f1153dac4d9f950c61ae69e09f46deb05348b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3b380dd29c8d5d13f08bdb6572f1153dac4d9f950c61ae69e09f46deb05348b3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Nat.Internal.Linear` — import line 15; external provider; requires a separately pinned dependency.
- `Init.NotationExtra` — import line 16; external provider; requires a separately pinned dependency.
- `Init.WFTactics` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [nextPowerOfTwo_dec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3b380dd29c8d5d13f08bdb6572f1153dac4d9f950c61ae69e09f46deb05348b3.lean/declarations/nextpoweroftwo-dec--008bf43759d8689ebfbe25e9.md) | 26 | `result-track:008bf43759d8689ebfbe25e9e3f0f8d054143caf04c40ebeab4e738b44f8c6bb` |
| 2 | `def` | [nextPowerOfTwo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3b380dd29c8d5d13f08bdb6572f1153dac4d9f950c61ae69e09f46deb05348b3.lean/declarations/nextpoweroftwo--daa72eb621988f10ec536b6d.md) | 41 | `declaration-track:daa72eb621988f10ec536b6d56da1d16a03709eb46a6a218814c11c72177d7ab` |
| 3 | `def` | [isPowerOfTwo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3b380dd29c8d5d13f08bdb6572f1153dac4d9f950c61ae69e09f46deb05348b3.lean/declarations/ispoweroftwo--52da1ce3661c918116874b93.md) | 55 | `declaration-track:52da1ce3661c918116874b9386ddce870810ccecfbdc5a2ef7c75e73423aadab` |
| 4 | `theorem` | [isPowerOfTwo_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3b380dd29c8d5d13f08bdb6572f1153dac4d9f950c61ae69e09f46deb05348b3.lean/declarations/ispoweroftwo-one--47020544080ed4d8d226a30e.md) | 57 | `result-track:47020544080ed4d8d226a30e8d5fb2a31f7bb1c83e4305edefa7c4e5a880e7a5` |
| 5 | `theorem` | [isPowerOfTwo_mul_two_of_isPowerOfTwo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3b380dd29c8d5d13f08bdb6572f1153dac4d9f950c61ae69e09f46deb05348b3.lean/declarations/ispoweroftwo-mul-two-of-ispoweroftwo--64058e43c9d1dbec8a6f95c3.md) | 60 | `result-track:64058e43c9d1dbec8a6f95c37c68542f10a6bcf4aa3658f431b2a738959227a5` |
| 6 | `theorem` | [pos_of_isPowerOfTwo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3b380dd29c8d5d13f08bdb6572f1153dac4d9f950c61ae69e09f46deb05348b3.lean/declarations/pos-of-ispoweroftwo--84e363499966abf6eb922254.md) | 64 | `result-track:84e363499966abf6eb9222547f126aee1b892df0d3a443fb80fc642acc8d1d93` |
| 7 | `theorem` | [isPowerOfTwo_nextPowerOfTwo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3b380dd29c8d5d13f08bdb6572f1153dac4d9f950c61ae69e09f46deb05348b3.lean/declarations/ispoweroftwo-nextpoweroftwo--6ef86a39777e8ff76b392ce9.md) | 70 | `result-track:6ef86a39777e8ff76b392ce91835fd692d5eebfc0ba6a7ad563bf4d5b5d766ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
