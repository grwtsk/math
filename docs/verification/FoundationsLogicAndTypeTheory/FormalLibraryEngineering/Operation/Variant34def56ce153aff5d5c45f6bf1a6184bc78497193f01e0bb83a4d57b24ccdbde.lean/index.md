# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Operation.Variant34def56ce153aff5d5c45f6bf1a6184bc78497193f01e0bb83a4d57b24ccdbde

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9fdeb86612afcdcc0b13f6398a6d923fecb0635b",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Operation/Variant34def56ce153aff5d5c45f6bf1a6184bc78497193f01e0bb83a4d57b24ccdbde.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Operation/Variant34def56ce153aff5d5c45f6bf1a6184bc78497193f01e0bb83a4d57b24ccdbde.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Operation/Variant34def56ce153aff5d5c45f6bf1a6184bc78497193f01e0bb83a4d57b24ccdbde.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9fdeb86612afcdcc0b13f6398a6d923fecb0635b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Operation/Variant34def56ce153aff5d5c45f6bf1a6184bc78497193f01e0bb83a4d57b24ccdbde.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Operation/Variant34def56ce153aff5d5c45f6bf1a6184bc78497193f01e0bb83a4d57b24ccdbde.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Capability.Effect` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [NetworkOperation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Operation/Variant34def56ce153aff5d5c45f6bf1a6184bc78497193f01e0bb83a4d57b24ccdbde.lean/declarations/networkoperation--f4c26dad974510e331b77c6e.md) | 17 | `declaration-track:f4c26dad974510e331b77c6e406e5541bff46e074b3548296d28313827bf10c0` |
| 2 | `def` | [NetworkOperation.requiredEffect](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Operation/Variant34def56ce153aff5d5c45f6bf1a6184bc78497193f01e0bb83a4d57b24ccdbde.lean/declarations/networkoperation-requiredeffect--704c8ba0dda99ff9749a032f.md) | 45 | `declaration-track:704c8ba0dda99ff9749a032f1b7c8bc2bf7755b7c4cdb9ba660162f47e3793d5` |
| 3 | `def` | [NetworkOperation.isObservation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Operation/Variant34def56ce153aff5d5c45f6bf1a6184bc78497193f01e0bb83a4d57b24ccdbde.lean/declarations/networkoperation-isobservation--74e539d8fa26b17526955f20.md) | 72 | `declaration-track:74e539d8fa26b17526955f2017ad78a0335f86e8325864b979b3580d4ad3dc57` |
| 4 | `theorem` | [query_state_requires_observe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Operation/Variant34def56ce153aff5d5c45f6bf1a6184bc78497193f01e0bb83a4d57b24ccdbde.lean/declarations/query-state-requires-observe--434aa4229c9ed9a40e5ed834.md) | 81 | `result-track:434aa4229c9ed9a40e5ed83462387a39cfc4a2356f4fcfee9707815f2fe80cb4` |
| 5 | `theorem` | [activation_requires_execute](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Operation/Variant34def56ce153aff5d5c45f6bf1a6184bc78497193f01e0bb83a4d57b24ccdbde.lean/declarations/activation-requires-execute--b95cfbdb17e53c0ac1a4887e.md) | 85 | `result-track:b95cfbdb17e53c0ac1a4887ebfea613958a5698efcfcab93fae519b76265b357` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
