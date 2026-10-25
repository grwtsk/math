# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variantf461b16d1b728a5e7855d63b83599189838affc1c856bc95e74201eccd38d2ca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d6e9d6928ac825b1b9093739d5744a427543e386",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf461b16d1b728a5e7855d63b83599189838affc1c856bc95e74201eccd38d2ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf461b16d1b728a5e7855d63b83599189838affc1c856bc95e74201eccd38d2ca.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf461b16d1b728a5e7855d63b83599189838affc1c856bc95e74201eccd38d2ca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d6e9d6928ac825b1b9093739d5744a427543e386`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf461b16d1b728a5e7855d63b83599189838affc1c856bc95e74201eccd38d2ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf461b16d1b728a5e7855d63b83599189838affc1c856bc95e74201eccd38d2ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Classes.Dvd` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [recAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf461b16d1b728a5e7855d63b83599189838affc1c856bc95e74201eccd38d2ca.lean/declarations/recaux--f93b84edf3c2c70388061724.md) | 14 | `declaration-track:f93b84edf3c2c70388061724ddd315ff47cc77a2dfdb47f712b4c299c83760df` |
| 2 | `def` | [recAuxOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf461b16d1b728a5e7855d63b83599189838affc1c856bc95e74201eccd38d2ca.lean/declarations/recauxon--e7dc83d41caf8c26f47cfea8.md) | 23 | `declaration-track:e7dc83d41caf8c26f47cfea840f2dddcdcd6935376d2f654e49d51119c54433a` |
| 3 | `def` | [casesAuxOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf461b16d1b728a5e7855d63b83599189838affc1c856bc95e74201eccd38d2ca.lean/declarations/casesauxon--04b0a877f1c4684e65bc9e12.md) | 30 | `declaration-track:04b0a877f1c4684e65bc9e12a6d2bacf14c488e24259e17b7774d286bc3e4a28` |
| 4 | `def` | [strongRec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf461b16d1b728a5e7855d63b83599189838affc1c856bc95e74201eccd38d2ca.lean/declarations/strongrec--228a63dd5a437e90d96e824a.md) | 37 | `declaration-track:228a63dd5a437e90d96e824a405a0c7d0fc25769afef5e818feb566d9b20054b` |
| 5 | `def` | [strongRecOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf461b16d1b728a5e7855d63b83599189838affc1c856bc95e74201eccd38d2ca.lean/declarations/strongrecon--b03733516e8e0355a3878992.md) | 44 | `declaration-track:b03733516e8e0355a387899265f131037d73c94e23b2e8719cf39f16a642d36e` |
| 6 | `def` | [recDiagAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf461b16d1b728a5e7855d63b83599189838affc1c856bc95e74201eccd38d2ca.lean/declarations/recdiagaux--cef6286bf6513b0feaecc9ce.md) | 51 | `declaration-track:cef6286bf6513b0feaecc9cec9eaa575734f7fcbf0b1bcedd94042bcfa470515` |
| 7 | `def` | [recDiag](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf461b16d1b728a5e7855d63b83599189838affc1c856bc95e74201eccd38d2ca.lean/declarations/recdiag--dada234c484fc5c40230fede.md) | 64 | `declaration-track:dada234c484fc5c40230fede56cff907a8f634674fb94954ccc16478dd94c1cf` |
| 8 | `def` | [recDiagOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf461b16d1b728a5e7855d63b83599189838affc1c856bc95e74201eccd38d2ca.lean/declarations/recdiagon--6e683778f72d67a04cb67efa.md) | 84 | `declaration-track:6e683778f72d67a04cb67efa61a280d1ca248fda209b0ba3cbaefdeb3857156a` |
| 9 | `def` | [casesDiagOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf461b16d1b728a5e7855d63b83599189838affc1c856bc95e74201eccd38d2ca.lean/declarations/casesdiagon--73e8c54ed334d71360db5b41.md) | 95 | `declaration-track:73e8c54ed334d71360db5b41468fd38f9e2aefb488ccbeb1a857297fb0bef234` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf461b16d1b728a5e7855d63b83599189838affc1c856bc95e74201eccd38d2ca.lean/declarations/instance--9f1bb158311f4624450f9d43.md) | 108 | `declaration-track:9f1bb158311f4624450f9d437956b4cb4fb46c282ab4283f6a79e5cb2ae2cd0e` |
| 11 | `def` | [sum](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf461b16d1b728a5e7855d63b83599189838affc1c856bc95e74201eccd38d2ca.lean/declarations/sum--6f5d26618bf886aea4843d63.md) | 111 | `declaration-track:6f5d26618bf886aea4843d63307960af570e7c4e82fe74719552079923f66389` |
| 12 | `def` | [sqrt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf461b16d1b728a5e7855d63b83599189838affc1c856bc95e74201eccd38d2ca.lean/declarations/sqrt--e2dda071e3eb7c77a8b9898d.md) | 116 | `declaration-track:e2dda071e3eb7c77a8b9898d8f6933e04e0e86b4961dfffab41d0b7b2e6209db` |
| 13 | `def` | [testBit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf461b16d1b728a5e7855d63b83599189838affc1c856bc95e74201eccd38d2ca.lean/declarations/testbit--62bd5b8c09dddc4d69bab936.md) | 137 | `declaration-track:62bd5b8c09dddc4d69bab936ad3bf0ae613dd05461455a3dd9db958c07eb1a63` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
