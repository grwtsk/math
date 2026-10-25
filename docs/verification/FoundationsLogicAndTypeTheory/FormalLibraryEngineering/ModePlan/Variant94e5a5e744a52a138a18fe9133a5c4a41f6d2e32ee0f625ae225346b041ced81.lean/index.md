# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ModePlan.Variant94e5a5e744a52a138a18fe9133a5c4a41f6d2e32ee0f625ae225346b041ced81

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37516d0aae06fe838ede494a464b17a45021788f",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModePlan/Variant94e5a5e744a52a138a18fe9133a5c4a41f6d2e32ee0f625ae225346b041ced81.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModePlan/Variant94e5a5e744a52a138a18fe9133a5c4a41f6d2e32ee0f625ae225346b041ced81.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModePlan/Variant94e5a5e744a52a138a18fe9133a5c4a41f6d2e32ee0f625ae225346b041ced81.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37516d0aae06fe838ede494a464b17a45021788f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModePlan/Variant94e5a5e744a52a138a18fe9133a5c4a41f6d2e32ee0f625ae225346b041ced81.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModePlan/Variant94e5a5e744a52a138a18fe9133a5c4a41f6d2e32ee0f625ae225346b041ced81.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.GraphAccess.Mode` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [TieBreaker](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModePlan/Variant94e5a5e744a52a138a18fe9133a5c4a41f6d2e32ee0f625ae225346b041ced81.lean/declarations/tiebreaker--ff6382d40a907ab38f02e6c6.md) | 12 | `declaration-track:ff6382d40a907ab38f02e6c64a06e87fb5e893fb9c4d9b6d83a8aa3be2044009` |
| 2 | `inductive` | [TieBreakerAllowed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModePlan/Variant94e5a5e744a52a138a18fe9133a5c4a41f6d2e32ee0f625ae225346b041ced81.lean/declarations/tiebreakerallowed--c03e2bf0bd4dc1107708b651.md) | 17 | `declaration-track:c03e2bf0bd4dc1107708b651bc2f17d0635a77b282ea4b7efe9ae7783fe8c8d1` |
| 3 | `structure` | [ModePlan](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModePlan/Variant94e5a5e744a52a138a18fe9133a5c4a41f6d2e32ee0f625ae225346b041ced81.lean/declarations/modeplan--62d2d6b436026cf3ef0f484b.md) | 28 | `declaration-track:62d2d6b436026cf3ef0f484bbaa311f250c3f30fef4ef8bffb99f705ef14f862` |
| 4 | `def` | [canonicalPrimaryMode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModePlan/Variant94e5a5e744a52a138a18fe9133a5c4a41f6d2e32ee0f625ae225346b041ced81.lean/declarations/canonicalprimarymode--cc859c887ba357e3375c40b7.md) | 37 | `declaration-track:cc859c887ba357e3375c40b75047c9293f7bb418e6cee3dd4fff62059b22e909` |
| 5 | `theorem` | [canonicalPrimaryMode_supports](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModePlan/Variant94e5a5e744a52a138a18fe9133a5c4a41f6d2e32ee0f625ae225346b041ced81.lean/declarations/canonicalprimarymode-supports--bb597b8227e89882fd7a269b.md) | 50 | `result-track:bb597b8227e89882fd7a269b01330cc4af9e03e498b3ceacfea2a1f8ed733828` |
| 6 | `structure` | [ModeProfileFamily](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModePlan/Variant94e5a5e744a52a138a18fe9133a5c4a41f6d2e32ee0f625ae225346b041ced81.lean/declarations/modeprofilefamily--0e1658ca56182a138b6d9e17.md) | 55 | `declaration-track:0e1658ca56182a138b6d9e174d8edc041be906367f21b0c28d26f95ac139d18d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
