# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ShiftLeft.Variant9bc3f31e411c449d3a0a3797aafb68e569c27dddd44ccdc6bf5c0826dc156200

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "238182584cbb62816e381965e9bed8121bf431c7",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variant9bc3f31e411c449d3a0a3797aafb68e569c27dddd44ccdc6bf5c0826dc156200.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variant9bc3f31e411c449d3a0a3797aafb68e569c27dddd44ccdc6bf5c0826dc156200.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variant9bc3f31e411c449d3a0a3797aafb68e569c27dddd44ccdc6bf5c0826dc156200.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `238182584cbb62816e381965e9bed8121bf431c7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variant9bc3f31e411c449d3a0a3797aafb68e569c27dddd44ccdc6bf5c0826dc156200.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variant9bc3f31e411c449d3a0a3797aafb68e569c27dddd44ccdc6bf5c0826dc156200.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [blastShiftLeftConst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variant9bc3f31e411c449d3a0a3797aafb68e569c27dddd44ccdc6bf5c0826dc156200.lean/declarations/blastshiftleftconst--685257df0170450f8f8304a2.md) | 31 | `declaration-track:685257df0170450f8f8304a22cf4f44e0e328522669af3178ab1ab542a1386f9` |
| 2 | `theorem` | [blastShiftLeftConst.go_le_size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variant9bc3f31e411c449d3a0a3797aafb68e569c27dddd44ccdc6bf5c0826dc156200.lean/declarations/blastshiftleftconst-go-le-size--d58519b8bceb02caafb6f12c.md) | 52 | `result-track:d58519b8bceb02caafb6f12cec527db9d271de060d2647fa98a264c7fc3b0442` |
| 3 | `theorem` | [blastShiftLeftConst.go_decl_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variant9bc3f31e411c449d3a0a3797aafb68e569c27dddd44ccdc6bf5c0826dc156200.lean/declarations/blastshiftleftconst-go-decl-eq--9c2e930e1190fbded061eac0.md) | 64 | `result-track:9c2e930e1190fbded061eac09d1a3bd81947b70a2dca7d8b2c8d26aedc4d919a` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variant9bc3f31e411c449d3a0a3797aafb68e569c27dddd44ccdc6bf5c0826dc156200.lean/declarations/instance--102e0f9be1be1dac255d1ff2.md) | 82 | `declaration-track:102e0f9be1be1dac255d1ff2270bddefbe45c02820b9c10fb536a3676bc6669f` |
| 5 | `structure` | [TwoPowShiftTarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variant9bc3f31e411c449d3a0a3797aafb68e569c27dddd44ccdc6bf5c0826dc156200.lean/declarations/twopowshifttarget--9942a244339ecdc561be61ec.md) | 95 | `declaration-track:9942a244339ecdc561be61ec58bf507616ba0057f6b6e6928975cc63ff310052` |
| 6 | `def` | [twoPowShift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variant9bc3f31e411c449d3a0a3797aafb68e569c27dddd44ccdc6bf5c0826dc156200.lean/declarations/twopowshift--528e98637874fb7cb3628910.md) | 101 | `declaration-track:528e98637874fb7cb3628910bbd99a78eca8c1683d9adc4d918da813d7838078` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variant9bc3f31e411c449d3a0a3797aafb68e569c27dddd44ccdc6bf5c0826dc156200.lean/declarations/instance--53287fc1addc47473e3faac9.md) | 115 | `declaration-track:53287fc1addc47473e3faac986e48b923ed280ee1c39c7ee1041a0414a55cdd6` |
| 8 | `def` | [blastShiftLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variant9bc3f31e411c449d3a0a3797aafb68e569c27dddd44ccdc6bf5c0826dc156200.lean/declarations/blastshiftleft--6a1abf7a12ab38c4e7c80ddc.md) | 137 | `declaration-track:6a1abf7a12ab38c4e7c80ddcef94e31e683edb9aa90f4f753e9a25b503e08a11` |
| 9 | `theorem` | [blastShiftLeft.go_le_size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variant9bc3f31e411c449d3a0a3797aafb68e569c27dddd44ccdc6bf5c0826dc156200.lean/declarations/blastshiftleft-go-le-size--bbe3e67d26b3da42abbe6828.md) | 165 | `result-track:bbe3e67d26b3da42abbe6828cdeb9e85b9740bfb2003d463ccca4aab4fa486da` |
| 10 | `theorem` | [blastShiftLeft.go_decl_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variant9bc3f31e411c449d3a0a3797aafb68e569c27dddd44ccdc6bf5c0826dc156200.lean/declarations/blastshiftleft-go-decl-eq--d266170084fcbebf09feaa79.md) | 176 | `result-track:d266170084fcbebf09feaa79377e920d7decbc66b5023af16371306205053a4e` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variant9bc3f31e411c449d3a0a3797aafb68e569c27dddd44ccdc6bf5c0826dc156200.lean/declarations/instance--f44e1d4e5ba550478b0697cf.md) | 194 | `declaration-track:f44e1d4e5ba550478b0697cf2abb8774a2fbdbdacfcfdeea2828f1c03cad4934` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
