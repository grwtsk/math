# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToIntInfo.Variant98597c092b9a0cceaf0701b955e9b0f963d1ec5ac07c12d5d2a987c1af60875c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a143f1190693ad5d7929b0c09b7949beea1c474",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIntInfo/Variant98597c092b9a0cceaf0701b955e9b0f963d1ec5ac07c12d5d2a987c1af60875c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIntInfo/Variant98597c092b9a0cceaf0701b955e9b0f963d1ec5ac07c12d5d2a987c1af60875c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIntInfo/Variant98597c092b9a0cceaf0701b955e9b0f963d1ec5ac07c12d5d2a987c1af60875c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a143f1190693ad5d7929b0c09b7949beea1c474`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIntInfo/Variant98597c092b9a0cceaf0701b955e9b0f963d1ec5ac07c12d5d2a987c1af60875c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIntInfo/Variant98597c092b9a0cceaf0701b955e9b0f963d1ec5ac07c12d5d2a987c1af60875c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.LitValues` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ToIntThms](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIntInfo/Variant98597c092b9a0cceaf0701b955e9b0f963d1ec5ac07c12d5d2a987c1af60875c.lean/declarations/tointthms--ec9c1c39202072239aa5f3c9.md) | 18 | `declaration-track:ec9c1c39202072239aa5f3c958a1d92b54e61d93716fee6c753b38e8ea88116b` |
| 2 | `structure` | [SymbolicBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIntInfo/Variant98597c092b9a0cceaf0701b955e9b0f963d1ec5ac07c12d5d2a987c1af60875c.lean/declarations/symbolicbound--0e20a7ba29160926d6c1247c.md) | 49 | `declaration-track:0e20a7ba29160926d6c1247c4a29a6883c31ef26f33108279e6575e6adb47352` |
| 3 | `def` | [SymbolicBound.isNumeral](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIntInfo/Variant98597c092b9a0cceaf0701b955e9b0f963d1ec5ac07c12d5d2a987c1af60875c.lean/declarations/symbolicbound-isnumeral--e87ae165edd0d87eb2c6678e.md) | 55 | `declaration-track:e87ae165edd0d87eb2c6678e2961feedffcbe0e7a0122c69d01567e63d96dc7f` |
| 4 | `inductive` | [SymbolicIntInterval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIntInfo/Variant98597c092b9a0cceaf0701b955e9b0f963d1ec5ac07c12d5d2a987c1af60875c.lean/declarations/symbolicintinterval--7b479561638aace8be273a31.md) | 59 | `declaration-track:7b479561638aace8be273a31f28b536f908fe414d1ff3ec43dbd0fe4a3b97e29` |
| 5 | `def` | [SymbolicIntInterval.isFinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIntInfo/Variant98597c092b9a0cceaf0701b955e9b0f963d1ec5ac07c12d5d2a987c1af60875c.lean/declarations/symbolicintinterval-isfinite--5e6168e3dcffa838672ad13d.md) | 66 | `declaration-track:5e6168e3dcffa838672ad13da30b1708b3559cff4037112140fbb3c7adc838f5` |
| 6 | `def` | [SymbolicIntInterval.lo?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIntInfo/Variant98597c092b9a0cceaf0701b955e9b0f963d1ec5ac07c12d5d2a987c1af60875c.lean/declarations/symbolicintinterval-lo--25cda2a258416ecce8a9e99d.md) | 71 | `declaration-track:25cda2a258416ecce8a9e99defe38c97a3dea4554a8499fafba4149b8587306c` |
| 7 | `def` | [SymbolicIntInterval.hi?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIntInfo/Variant98597c092b9a0cceaf0701b955e9b0f963d1ec5ac07c12d5d2a987c1af60875c.lean/declarations/symbolicintinterval-hi--93144059e980706d40686f64.md) | 76 | `declaration-track:93144059e980706d40686f64c6c0f1bab1a5bff95e68e00a072018dcc3248d2d` |
| 8 | `def` | [SymbolicIntInterval.wrap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIntInfo/Variant98597c092b9a0cceaf0701b955e9b0f963d1ec5ac07c12d5d2a987c1af60875c.lean/declarations/symbolicintinterval-wrap--17e2e7121fdd0d4802c4a5db.md) | 81 | `declaration-track:17e2e7121fdd0d4802c4a5dbe51a39b4a1f559f2d8d6ac7eb143d08104d785ed` |
| 9 | `structure` | [ToIntInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIntInfo/Variant98597c092b9a0cceaf0701b955e9b0f963d1ec5ac07c12d5d2a987c1af60875c.lean/declarations/tointinfo--67f3ec74a1e5cbc16ca77082.md) | 99 | `declaration-track:67f3ec74a1e5cbc16ca770828308c0a5cee5dbfdd6cfe387ea656bdada182858` |
| 10 | `structure` | [ToIntTermInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIntInfo/Variant98597c092b9a0cceaf0701b955e9b0f963d1ec5ac07c12d5d2a987c1af60875c.lean/declarations/tointterminfo--8e5d3be003e4dd17c8b38abc.md) | 135 | `declaration-track:8e5d3be003e4dd17c8b38abc9314d1b8ea573546f766acca2d7fa8c3464147cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
