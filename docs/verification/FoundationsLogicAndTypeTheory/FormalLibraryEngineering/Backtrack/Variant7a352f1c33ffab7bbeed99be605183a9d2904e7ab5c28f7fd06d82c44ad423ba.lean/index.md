# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Backtrack.Variant7a352f1c33ffab7bbeed99be605183a9d2904e7ab5c28f7fd06d82c44ad423ba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f24ffccd3a400670508c0dcd3d4384d08e244d04",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Backtrack/Variant7a352f1c33ffab7bbeed99be605183a9d2904e7ab5c28f7fd06d82c44ad423ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Backtrack/Variant7a352f1c33ffab7bbeed99be605183a9d2904e7ab5c28f7fd06d82c44ad423ba.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Backtrack/Variant7a352f1c33ffab7bbeed99be605183a9d2904e7ab5c28f7fd06d82c44ad423ba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f24ffccd3a400670508c0dcd3d4384d08e244d04`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Backtrack/Variant7a352f1c33ffab7bbeed99be605183a9d2904e7ab5c28f7fd06d82c44ad423ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Backtrack/Variant7a352f1c33ffab7bbeed99be605183a9d2904e7ab5c28f7fd06d82c44ad423ba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Nat.Internal.Linear` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BacktrackConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Backtrack/Variant7a352f1c33ffab7bbeed99be605183a9d2904e7ab5c28f7fd06d82c44ad423ba.lean/declarations/backtrackconfig--2d83b44fb83377843a199229.md) | 54 | `declaration-track:2d83b44fb83377843a199229e9057ba1d476a83c61b0815ee8c18d96a74d4ce6` |
| 2 | `def` | [ppMVarId](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Backtrack/Variant7a352f1c33ffab7bbeed99be605183a9d2904e7ab5c28f7fd06d82c44ad423ba.lean/declarations/ppmvarid--c515c2918983d8ce7c9696d0.md) | 86 | `declaration-track:c515c2918983d8ce7c9696d01b7a490ef3627ff4107d3a04d1d82172f7a52b26` |
| 3 | `def` | [ppMVarIds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Backtrack/Variant7a352f1c33ffab7bbeed99be605183a9d2904e7ab5c28f7fd06d82c44ad423ba.lean/declarations/ppmvarids--936cbf16ea423b4484c12139.md) | 91 | `declaration-track:936cbf16ea423b4484c12139e9c543164d5e43ceb007bbc909eaa3ff96cb070f` |
| 4 | `def` | [tryAllM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Backtrack/Variant7a352f1c33ffab7bbeed99be605183a9d2904e7ab5c28f7fd06d82c44ad423ba.lean/declarations/tryallm--f10bf57583ce1b4299eecf36.md) | 95 | `declaration-track:f10bf57583ce1b4299eecf36a03982a5b687578c852aa31a6a303e4aed2f705b` |
| 5 | `def` | [run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Backtrack/Variant7a352f1c33ffab7bbeed99be605183a9d2904e7ab5c28f7fd06d82c44ad423ba.lean/declarations/run--167e282ddce9b065bb1a026e.md) | 110 | `declaration-track:167e282ddce9b065bb1a026e1e172633273057721409131a10bdf9022ea79f8a` |
| 6 | `def` | [processIndependentGoals](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Backtrack/Variant7a352f1c33ffab7bbeed99be605183a9d2904e7ab5c28f7fd06d82c44ad423ba.lean/declarations/processindependentgoals--a43c63e44bdfbb2b5b77e1a3.md) | 165 | `declaration-track:a43c63e44bdfbb2b5b77e1a3bbe4182c78ebaf619f7767136b418d3b51e74eb9` |
| 7 | `def` | [backtrack](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Backtrack/Variant7a352f1c33ffab7bbeed99be605183a9d2904e7ab5c28f7fd06d82c44ad423ba.lean/declarations/backtrack--557e607ab5af6b4cb6c07d17.md) | 214 | `declaration-track:557e607ab5af6b4cb6c07d1720ddd9fbd61700c078c98ad070cc015f43cb9598` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
