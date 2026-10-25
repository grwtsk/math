# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RatAddResult.Variant3cff308f21e9dfc0ff4542f11b89a343787661d8aa78327eb5efca81dc2c8e6b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c04c09788493c687c58fe407707bf2ea0dfcc7d",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RatAddResult/Variant3cff308f21e9dfc0ff4542f11b89a343787661d8aa78327eb5efca81dc2c8e6b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RatAddResult/Variant3cff308f21e9dfc0ff4542f11b89a343787661d8aa78327eb5efca81dc2c8e6b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RatAddResult/Variant3cff308f21e9dfc0ff4542f11b89a343787661d8aa78327eb5efca81dc2c8e6b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c04c09788493c687c58fe407707bf2ea0dfcc7d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RatAddResult/Variant3cff308f21e9dfc0ff4542f11b89a343787661d8aa78327eb5efca81dc2c8e6b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RatAddResult/Variant3cff308f21e9dfc0ff4542f11b89a343787661d8aa78327eb5efca81dc2c8e6b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.Int.OfNat` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Internal.Linear` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [size_assignments_insertRatUnits](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RatAddResult/Variant3cff308f21e9dfc0ff4542f11b89a343787661d8aa78327eb5efca81dc2c8e6b.lean/declarations/size-assignments-insertratunits--3701fed7e140aa52e0c42c31.md) | 38 | `result-track:3701fed7e140aa52e0c42c31b4a91dce25666bc6c7c18a2875f13f6f92e5b3c8` |
| 2 | `theorem` | [insertRatUnits_postcondition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RatAddResult/Variant3cff308f21e9dfc0ff4542f11b89a343787661d8aa78327eb5efca81dc2c8e6b.lean/declarations/insertratunits-postcondition--1101398ddc94552d4b9d7f5c.md) | 44 | `result-track:1101398ddc94552d4b9d7f5c212ba84acc2edf69960128f7e95857a0eee9196c` |
| 3 | `theorem` | [nodup_insertRatUnits](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RatAddResult/Variant3cff308f21e9dfc0ff4542f11b89a343787661d8aa78327eb5efca81dc2c8e6b.lean/declarations/nodup-insertratunits--ae7c4cf181ca7b6cb145775c.md) | 62 | `result-track:ae7c4cf181ca7b6cb145775c09ff0b3064c84bf19950e8b1b2b3082e316f31f8` |
| 4 | `theorem` | [clear_insertRat_base_case](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RatAddResult/Variant3cff308f21e9dfc0ff4542f11b89a343787661d8aa78327eb5efca81dc2c8e6b.lean/declarations/clear-insertrat-base-case--f50c022662db10b61072690b.md) | 76 | `result-track:f50c022662db10b61072690b5a5d2002777747cb56b00b9af24175043740f25e` |
| 5 | `theorem` | [clear_insertRat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RatAddResult/Variant3cff308f21e9dfc0ff4542f11b89a343787661d8aa78327eb5efca81dc2c8e6b.lean/declarations/clear-insertrat--8dc23ad6f9f207fc7d80c142.md) | 87 | `result-track:8dc23ad6f9f207fc7d80c1424f78ad8f1c406dc821a3ee0450bf6ace6076ead9` |
| 6 | `theorem` | [formula_performRatCheck](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RatAddResult/Variant3cff308f21e9dfc0ff4542f11b89a343787661d8aa78327eb5efca81dc2c8e6b.lean/declarations/formula-performratcheck--31c004e9c3a00b7145b46538.md) | 113 | `result-track:31c004e9c3a00b7145b4653801dbf1bd6ef26aa3f8ab62e811c0ccd87a785881` |
| 7 | `theorem` | [performRatCheck_fold_formula_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RatAddResult/Variant3cff308f21e9dfc0ff4542f11b89a343787661d8aa78327eb5efca81dc2c8e6b.lean/declarations/performratcheck-fold-formula-eq--abc5804d4fc4f6b5ea16580e.md) | 135 | `result-track:abc5804d4fc4f6b5ea16580e20045d397d3db9ada59447e9ab3c2215d41e0a51` |
| 8 | `theorem` | [ratAdd_result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RatAddResult/Variant3cff308f21e9dfc0ff4542f11b89a343787661d8aa78327eb5efca81dc2c8e6b.lean/declarations/ratadd-result--964b65908506e7925e9b3d53.md) | 153 | `result-track:964b65908506e7925e9b3d53e6b17b1b16cef2aac03322df4f9b5f887b808e09` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
