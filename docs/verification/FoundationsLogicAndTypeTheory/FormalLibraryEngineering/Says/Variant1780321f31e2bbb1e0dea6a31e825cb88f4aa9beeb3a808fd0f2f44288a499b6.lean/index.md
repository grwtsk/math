# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Says.Variant1780321f31e2bbb1e0dea6a31e825cb88f4aa9beeb3a808fd0f2f44288a499b6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e9426bd4119d8df15d78a65eb1ed7ef7475ef83c",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variant1780321f31e2bbb1e0dea6a31e825cb88f4aa9beeb3a808fd0f2f44288a499b6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variant1780321f31e2bbb1e0dea6a31e825cb88f4aa9beeb3a808fd0f2f44288a499b6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variant1780321f31e2bbb1e0dea6a31e825cb88f4aa9beeb3a808fd0f2f44288a499b6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e9426bd4119d8df15d78a65eb1ed7ef7475ef83c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variant1780321f31e2bbb1e0dea6a31e825cb88f4aa9beeb3a808fd0f2f44288a499b6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variant1780321f31e2bbb1e0dea6a31e825cb88f4aa9beeb3a808fd0f2f44288a499b6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.String.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Std.Tactic.GuardMsgs` — import line 7; external provider; requires a separately pinned dependency.
- `Qq.Match` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `register_option` | [says.verify](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variant1780321f31e2bbb1e0dea6a31e825cb88f4aa9beeb3a808fd0f2f44288a499b6.lean/declarations/says-verify--7b253079b6e5f8ce1a1839ec.md) | 29 | `declaration-track:7b253079b6e5f8ce1a1839ecec31dfdfbfbef20d18e84cb2b1d5d54204bda74b` |
| 2 | `register_option` | [says.no_verify_in_CI](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variant1780321f31e2bbb1e0dea6a31e825cb88f4aa9beeb3a808fd0f2f44288a499b6.lean/declarations/says-no-verify-in-ci--8e09feb25ff6a02980b1e601.md) | 35 | `declaration-track:8e09feb25ff6a02980b1e601758ceafbaef42f84e35a7b59c5706f725a8721f7` |
| 3 | `def` | [parseAsTacticSeq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variant1780321f31e2bbb1e0dea6a31e825cb88f4aa9beeb3a808fd0f2f44288a499b6.lean/declarations/parseastacticseq--fe6b0f3e18bfa5d39865035c.md) | 43 | `declaration-track:fe6b0f3e18bfa5d39865035c264501f9b926be65d9a7a571e7ecb86eebe54b0c` |
| 4 | `def` | [evalTacticCapturingMessages](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variant1780321f31e2bbb1e0dea6a31e825cb88f4aa9beeb3a808fd0f2f44288a499b6.lean/declarations/evaltacticcapturingmessages--c7e15609a45635c48346b948.md) | 60 | `declaration-track:c7e15609a45635c48346b948cc3956a2ad6ec5c46f7f6b06e67ca4b37d67c4c2` |
| 5 | `def` | [evalTacticCapturingInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variant1780321f31e2bbb1e0dea6a31e825cb88f4aa9beeb3a808fd0f2f44288a499b6.lean/declarations/evaltacticcapturinginfo--1ba40895634b4bd910de307e.md) | 77 | `declaration-track:1ba40895634b4bd910de307e9b72a651515ff9f1589b3cd0ed93db6deaa083c9` |
| 6 | `def` | [evalTacticCapturingTryThis](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variant1780321f31e2bbb1e0dea6a31e825cb88f4aa9beeb3a808fd0f2f44288a499b6.lean/declarations/evaltacticcapturingtrythis--1363fe3c9a3a2d5edf3e846b.md) | 83 | `declaration-track:1363fe3c9a3a2d5edf3e846b3ad8fb51caa9f864a1595dbce99db8e98c17d63f` |
| 7 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variant1780321f31e2bbb1e0dea6a31e825cb88f4aa9beeb3a808fd0f2f44288a499b6.lean/declarations/syntax--0691044d83ae07479a1a34ce.md) | 95 | `declaration-track:0691044d83ae07479a1a34ce4247731bc7d421f0e15dd9776a2e93029c1cb866` |
| 8 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variant1780321f31e2bbb1e0dea6a31e825cb88f4aa9beeb3a808fd0f2f44288a499b6.lean/declarations/elab-rules--77ca344b49963709240a7620.md) | 97 | `declaration-track:77ca344b49963709240a7620bf5267acac09291fbf3733ee9adfe418cce115d9` |
| 9 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variant1780321f31e2bbb1e0dea6a31e825cb88f4aa9beeb3a808fd0f2f44288a499b6.lean/declarations/initialize--d7197395decf05ecff753643.md) | 116 | `declaration-track:d7197395decf05ecff753643ea3bb2d5b226f6cdb45c37bb37e801b5254c47f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
