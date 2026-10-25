# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Qq.Variant43a2426b46be5146f07ef0004827c07e9a66ce026d16455cb6ebb409baf55729

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1659104039d2f2abe7f5dc916e38e7bbe59a21a9",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qq/Variant43a2426b46be5146f07ef0004827c07e9a66ce026d16455cb6ebb409baf55729.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qq/Variant43a2426b46be5146f07ef0004827c07e9a66ce026d16455cb6ebb409baf55729.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qq/Variant43a2426b46be5146f07ef0004827c07e9a66ce026d16455cb6ebb409baf55729.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1659104039d2f2abe7f5dc916e38e7bbe59a21a9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qq/Variant43a2426b46be5146f07ef0004827c07e9a66ce026d16455cb6ebb409baf55729.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qq/Variant43a2426b46be5146f07ef0004827c07e9a66ce026d16455cb6ebb409baf55729.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init` — import line 6; external provider; requires a separately pinned dependency.
- `Qq` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [inferTypeQ'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qq/Variant43a2426b46be5146f07ef0004827c07e9a66ce026d16455cb6ebb409baf55729.lean/declarations/infertypeq--483e0ecf01a8ba4b71af74d3.md) | 23 | `declaration-track:483e0ecf01a8ba4b71af74d36342efe6d78d52ae44446c908dcfff550be0190d` |
| 2 | `theorem` | [QuotedDefEq.rfl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qq/Variant43a2426b46be5146f07ef0004827c07e9a66ce026d16455cb6ebb409baf55729.lean/declarations/quoteddefeq-rfl--9cc29d9b5dd08b4b5e3b1da4.md) | 29 | `result-track:9cc29d9b5dd08b4b5e3b1da41f338f2f57214a40f77b9c674d160f0c3bf48ff4` |
| 3 | `def` | [findLocalDeclWithTypeQ?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qq/Variant43a2426b46be5146f07ef0004827c07e9a66ce026d16455cb6ebb409baf55729.lean/declarations/findlocaldeclwithtypeq--2d315c69dd6fd206aca14a0b.md) | 34 | `declaration-track:2d315c69dd6fd206aca14a0b42ebbb519fc80a7712e7b84fe41baecd26d2436d` |
| 4 | `def` | [mkDecideProofQ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qq/Variant43a2426b46be5146f07ef0004827c07e9a66ce026d16455cb6ebb409baf55729.lean/declarations/mkdecideproofq--eaa666f126c1fe04f1936147.md) | 41 | `declaration-track:eaa666f126c1fe04f19361471a389f6bda0f94d8126436646b3586a68274cd29` |
| 5 | `def` | [mkSetLiteralQ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qq/Variant43a2426b46be5146f07ef0004827c07e9a66ce026d16455cb6ebb409baf55729.lean/declarations/mksetliteralq--47321921b72cf2650c239421.md) | 53 | `declaration-track:47321921b72cf2650c239421fe2eb2e80da28eb99dc3c42de8a5e8d39f80e870` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
