# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Logging.Variantc5ff19260d8ff95fb5c677cc6c5e91bd15853c4106e0d895cb7f4ae57416d692

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba61566439ab5ba045c8fec401bb1f1bd4301c37",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Logging/Variantc5ff19260d8ff95fb5c677cc6c5e91bd15853c4106e0d895cb7f4ae57416d692.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Logging/Variantc5ff19260d8ff95fb5c677cc6c5e91bd15853c4106e0d895cb7f4ae57416d692.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Logging/Variantc5ff19260d8ff95fb5c677cc6c5e91bd15853c4106e0d895cb7f4ae57416d692.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba61566439ab5ba045c8fec401bb1f1bd4301c37`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Logging/Variantc5ff19260d8ff95fb5c677cc6c5e91bd15853c4106e0d895cb7f4ae57416d692.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Logging/Variantc5ff19260d8ff95fb5c677cc6c5e91bd15853c4106e0d895cb7f4ae57416d692.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Time` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LogConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Logging/Variantc5ff19260d8ff95fb5c677cc6c5e91bd15853c4106e0d895cb7f4ae57416d692.lean/declarations/logconfig--1d70495472b600287e8e0644.md) | 15 | `declaration-track:1d70495472b600287e8e0644f0bacc3ac758054b19286a4984d5061fcb8669a1` |
| 2 | `def` | [LogConfig.ofLspLogConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Logging/Variantc5ff19260d8ff95fb5c677cc6c5e91bd15853c4106e0d895cb7f4ae57416d692.lean/declarations/logconfig-oflsplogconfig--be5293d010f8b6cae3be6c85.md) | 21 | `declaration-track:be5293d010f8b6cae3be6c855de72886de4feb78ec5d676bd10fc694f17af7dd` |
| 3 | `inductive` | [MessageMethod](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Logging/Variantc5ff19260d8ff95fb5c677cc6c5e91bd15853c4106e0d895cb7f4ae57416d692.lean/declarations/messagemethod--1ba2cedd2824937756cd801f.md) | 42 | `declaration-track:1ba2cedd2824937756cd801f16cff8af6ff15ec7cd64cd762d77f5cb4fedfa7a` |
| 4 | `def` | [MessageMethod.all](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Logging/Variantc5ff19260d8ff95fb5c677cc6c5e91bd15853c4106e0d895cb7f4ae57416d692.lean/declarations/messagemethod-all--3ca5c1c0b11540c165ae613b.md) | 48 | `declaration-track:3ca5c1c0b11540c165ae613bff24935fef5a152bc269726b8905307f32e5a01a` |
| 5 | `def` | [messageMethod?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Logging/Variantc5ff19260d8ff95fb5c677cc6c5e91bd15853c4106e0d895cb7f4ae57416d692.lean/declarations/messagemethod--0228625b6d474d1b3354e4af.md) | 55 | `declaration-track:0228625b6d474d1b3354e4af420cc5b30ffc9b2853a30f89b76266aaeecd22c7` |
| 6 | `def` | [messageId?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Logging/Variantc5ff19260d8ff95fb5c677cc6c5e91bd15853c4106e0d895cb7f4ae57416d692.lean/declarations/messageid--13d767d86255fcf194d1f9fe.md) | 67 | `declaration-track:13d767d86255fcf194d1f9fe4ebd19bd336f7b0c00d05920612b452f84c9195e` |
| 7 | `def` | [isMsgAllowed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Logging/Variantc5ff19260d8ff95fb5c677cc6c5e91bd15853c4106e0d895cb7f4ae57416d692.lean/declarations/ismsgallowed--8fb7bb1b40f4075e36d9da6a.md) | 73 | `declaration-track:8fb7bb1b40f4075e36d9da6a0b8f857c982e74abfea5a4f7bb322760d490cc7c` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Logging/Variantc5ff19260d8ff95fb5c677cc6c5e91bd15853c4106e0d895cb7f4ae57416d692.lean/declarations/instance--7832535a3a227271f0b7bd15.md) | 92 | `declaration-track:7832535a3a227271f0b7bd1597b3704de501f3fc7b703c639679cf1a5ebafe8b` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Logging/Variantc5ff19260d8ff95fb5c677cc6c5e91bd15853c4106e0d895cb7f4ae57416d692.lean/declarations/instance--0282557fa57da9a6855b45ce.md) | 95 | `declaration-track:0282557fa57da9a6855b45cedce533b2d16d4b0ff682492eea6b1150794dfe28` |
| 10 | `structure` | [LogEntry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Logging/Variantc5ff19260d8ff95fb5c677cc6c5e91bd15853c4106e0d895cb7f4ae57416d692.lean/declarations/logentry--ddf7fccf7739f51a7228dff1.md) | 100 | `declaration-track:ddf7fccf7739f51a7228dff118073a1bb9306fe2c3943d9adfee47c7c93e7f0a` |
| 11 | `def` | [writeLogEntry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Logging/Variantc5ff19260d8ff95fb5c677cc6c5e91bd15853c4106e0d895cb7f4ae57416d692.lean/declarations/writelogentry--978db9951c4216ded1447af6.md) | 107 | `declaration-track:978db9951c4216ded1447af62af44d5085807a2bd876b1a161fa5de440ec6eeb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
