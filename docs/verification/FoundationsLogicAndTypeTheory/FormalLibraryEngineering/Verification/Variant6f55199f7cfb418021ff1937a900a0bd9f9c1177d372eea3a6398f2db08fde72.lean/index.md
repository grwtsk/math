# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Verification.Variant6f55199f7cfb418021ff1937a900a0bd9f9c1177d372eea3a6398f2db08fde72

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "745f918f26ba4864006255761b4d5e160569443d",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variant6f55199f7cfb418021ff1937a900a0bd9f9c1177d372eea3a6398f2db08fde72.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variant6f55199f7cfb418021ff1937a900a0bd9f9c1177d372eea3a6398f2db08fde72.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variant6f55199f7cfb418021ff1937a900a0bd9f9c1177d372eea3a6398f2db08fde72.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `745f918f26ba4864006255761b4d5e160569443d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variant6f55199f7cfb418021ff1937a900a0bd9f9c1177d372eea3a6398f2db08fde72.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variant6f55199f7cfb418021ff1937a900a0bd9f9c1177d372eea3a6398f2db08fde72.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Linarith.Parsing` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Util.Qq` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ofNatQ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variant6f55199f7cfb418021ff1937a900a0bd9f9c1177d372eea3a6398f2db08fde72.lean/declarations/ofnatq--d65012c8b7ad3e2040b88a6a.md) | 37 | `declaration-track:d65012c8b7ad3e2040b88a6afbba141e9548e3cf404a7be3b6cfc002924232d8` |
| 2 | `def` | [mulExpr'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variant6f55199f7cfb418021ff1937a900a0bd9f9c1177d372eea3a6398f2db08fde72.lean/declarations/mulexpr--848643727565a6f34e255958.md) | 57 | `declaration-track:848643727565a6f34e255958dc270002e34a972158285bc5d73d8155f33f25c4` |
| 3 | `def` | [mulExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variant6f55199f7cfb418021ff1937a900a0bd9f9c1177d372eea3a6398f2db08fde72.lean/declarations/mulexpr--d3feb061e0c6500f0222f097.md) | 66 | `declaration-track:d3feb061e0c6500f0222f0971200da80a67c01d570cfa9f75921a6f32534e1b0` |
| 4 | `def` | [addExprs'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variant6f55199f7cfb418021ff1937a900a0bd9f9c1177d372eea3a6398f2db08fde72.lean/declarations/addexprs--8a7abaed1556bf9c86e9d6c2.md) | 72 | `declaration-track:8a7abaed1556bf9c86e9d6c2f17be1a00439132c9a8fde6d8968bb33068816f5` |
| 5 | `def` | [addExprs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variant6f55199f7cfb418021ff1937a900a0bd9f9c1177d372eea3a6398f2db08fde72.lean/declarations/addexprs--f3270a2854fa35454c29c119.md) | 83 | `declaration-track:f3270a2854fa35454c29c119f71266851772fce610259fc486b37b6bb672384e` |
| 6 | `def` | [addIneq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variant6f55199f7cfb418021ff1937a900a0bd9f9c1177d372eea3a6398f2db08fde72.lean/declarations/addineq--43e7faaa9c438d738780e321.md) | 96 | `declaration-track:43e7faaa9c438d738780e32162a7df586a5f858d9cd0fc7276f97486052a37d0` |
| 7 | `def` | [mkLTZeroProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variant6f55199f7cfb418021ff1937a900a0bd9f9c1177d372eea3a6398f2db08fde72.lean/declarations/mkltzeroproof--d1ff4d7749c3eaff507ecfbe.md) | 112 | `declaration-track:d1ff4d7749c3eaff507ecfbe01fe97ea01ebcf44ab54eac23d071dd24ce72835` |
| 8 | `def` | [leftOfIneqProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variant6f55199f7cfb418021ff1937a900a0bd9f9c1177d372eea3a6398f2db08fde72.lean/declarations/leftofineqproof--1d05d843a1f16c7f2bf828e6.md) | 133 | `declaration-track:1d05d843a1f16c7f2bf828e68d6b872f2c212017cd2f55ad1a0cde657185f2f0` |
| 9 | `def` | [typeOfIneqProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variant6f55199f7cfb418021ff1937a900a0bd9f9c1177d372eea3a6398f2db08fde72.lean/declarations/typeofineqproof--c34eac385c7b231080dd26a5.md) | 138 | `declaration-track:c34eac385c7b231080dd26a5c9061fd919416d4e28ffcd32f2e6b76c840ed6d3` |
| 10 | `def` | [mkNegOneLtZeroProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variant6f55199f7cfb418021ff1937a900a0bd9f9c1177d372eea3a6398f2db08fde72.lean/declarations/mknegoneltzeroproof--8aad93712726d57f95d0b65d.md) | 146 | `declaration-track:8aad93712726d57f95d0b65d8d35e516768ad405cf33da1b905ab37c1e1f89e2` |
| 11 | `def` | [addNegEqProofs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variant6f55199f7cfb418021ff1937a900a0bd9f9c1177d372eea3a6398f2db08fde72.lean/declarations/addnegeqproofs--033131f2be3e8b6a42b73be2.md) | 154 | `declaration-track:033131f2be3e8b6a42b73be2edc6d8926e4ac401926b7404b81ec8c712658b06` |
| 12 | `def` | [proveEqZeroUsing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variant6f55199f7cfb418021ff1937a900a0bd9f9c1177d372eea3a6398f2db08fde72.lean/declarations/proveeqzerousing--fecfe7c382dafa26e93ad77c.md) | 168 | `declaration-track:fecfe7c382dafa26e93ad77ce99474e50cde993a3c6462cb3f264d55e0731067` |
| 13 | `def` | [proveFalseByLinarith](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variant6f55199f7cfb418021ff1937a900a0bd9f9c1177d372eea3a6398f2db08fde72.lean/declarations/provefalsebylinarith--7027d2b822dbffb6cbcc138d.md) | 198 | `declaration-track:7027d2b822dbffb6cbcc138d696f2ed7ce2022f3d60b7bf0371de67e0d879c6a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
