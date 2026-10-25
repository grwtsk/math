# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Congr.Variant2903d02fe63195e8ac23c4e80ea06a0922b6f5b6e0def771c0724cb0e74aa055

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1096d9efb0661a203a60499c1293276ff97b35d3",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant2903d02fe63195e8ac23c4e80ea06a0922b6f5b6e0def771c0724cb0e74aa055.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant2903d02fe63195e8ac23c4e80ea06a0922b6f5b6e0def771c0724cb0e74aa055.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant2903d02fe63195e8ac23c4e80ea06a0922b6f5b6e0def771c0724cb0e74aa055.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1096d9efb0661a203a60499c1293276ff97b35d3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant2903d02fe63195e8ac23c4e80ea06a0922b6f5b6e0def771c0724cb0e74aa055.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant2903d02fe63195e8ac23c4e80ea06a0922b6f5b6e0def771c0724cb0e74aa055.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Congr` — import line 6; external provider; requires a separately pinned dependency.
- `Std.Tactic.RCases` — import line 7; external provider; requires a separately pinned dependency.
- `Std.Tactic.Ext` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Congr.Config](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant2903d02fe63195e8ac23c4e80ea06a0922b6f5b6e0def771c0724cb0e74aa055.lean/declarations/congr-config--129179840a0667e71e641d5a.md) | 16 | `declaration-track:129179840a0667e71e641d5aec600041e127c5ea84d960c58cf0be02dfca9b60` |
| 2 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant2903d02fe63195e8ac23c4e80ea06a0922b6f5b6e0def771c0724cb0e74aa055.lean/declarations/syntax--3ed564fcfe5b1300829fdc0d.md) | 28 | `declaration-track:3ed564fcfe5b1300829fdc0da6dccb9ab2c32cebb0a34af18859d116166c6d7c` |
| 3 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant2903d02fe63195e8ac23c4e80ea06a0922b6f5b6e0def771c0724cb0e74aa055.lean/declarations/syntax--44e5baa15e7fafd037462287.md) | 42 | `declaration-track:44e5baa15e7fafd0374622874098263562c98b130264997f989048d5b7812f10` |
| 4 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant2903d02fe63195e8ac23c4e80ea06a0922b6f5b6e0def771c0724cb0e74aa055.lean/declarations/elab-rules--396a735c39fb2cb21482e679.md) | 45 | `declaration-track:396a735c39fb2cb21482e679679b048074e50610d0166f838bfc077325740c14` |
| 5 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant2903d02fe63195e8ac23c4e80ea06a0922b6f5b6e0def771c0724cb0e74aa055.lean/declarations/macro-rules--12e7ea19ee6a9c885577e2e5.md) | 53 | `declaration-track:12e7ea19ee6a9c885577e2e5d1b8a3b2a326cdb77da03c09d49dfe4af243e759` |
| 6 | `def` | [rcongrCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant2903d02fe63195e8ac23c4e80ea06a0922b6f5b6e0def771c0724cb0e74aa055.lean/declarations/rcongrcore--8ec5d8ac5b48e7549d57ea54.md) | 63 | `declaration-track:8ec5d8ac5b48e7549d57ea54bc264e4203ea8e6123fd7f54572f3c97ceb8df05` |
| 7 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant2903d02fe63195e8ac23c4e80ea06a0922b6f5b6e0def771c0724cb0e74aa055.lean/declarations/elab--01c51758a5fdf72f89f65311.md) | 104 | `declaration-track:01c51758a5fdf72f89f6531156385f1ddfe651409edaf61133d479259c07f8b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
