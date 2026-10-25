# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReflBEq.Variant0393b747ab520e452a5b918ab8706dd7e1eb7fd1184cee19c3d20bd5e0b2a80e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d17642a6703754bc0c915bcf0f028e64c5da6041",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReflBEq/Variant0393b747ab520e452a5b918ab8706dd7e1eb7fd1184cee19c3d20bd5e0b2a80e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReflBEq/Variant0393b747ab520e452a5b918ab8706dd7e1eb7fd1184cee19c3d20bd5e0b2a80e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReflBEq/Variant0393b747ab520e452a5b918ab8706dd7e1eb7fd1184cee19c3d20bd5e0b2a80e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d17642a6703754bc0c915bcf0f028e64c5da6041`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReflBEq/Variant0393b747ab520e452a5b918ab8706dd7e1eb7fd1184cee19c3d20bd5e0b2a80e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReflBEq/Variant0393b747ab520e452a5b918ab8706dd7e1eb7fd1184cee19c3d20bd5e0b2a80e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Deriving.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Elab.Deriving.Util` — import line 15; external provider; requires a separately pinned dependency.
- `Init.LawfulBEqTactics` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkReflBEqInstanceCmds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReflBEq/Variant0393b747ab520e452a5b918ab8706dd7e1eb7fd1184cee19c3d20bd5e0b2a80e.lean/declarations/mkreflbeqinstancecmds--1df190342e8b8aa5326b587a.md) | 27 | `declaration-track:1df190342e8b8aa5326b587acb59edad9fbd6f419476cdbb6a577461d27a2a78` |
| 2 | `def` | [mkReflBEqInstance](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReflBEq/Variant0393b747ab520e452a5b918ab8706dd7e1eb7fd1184cee19c3d20bd5e0b2a80e.lean/declarations/mkreflbeqinstance--2c18d7d905ac41911d0a5f35.md) | 48 | `declaration-track:2c18d7d905ac41911d0a5f351ba4525f3a869be6fe2e2cb041d030ea8f53b5c2` |
| 3 | `def` | [mkReflBEqInstanceHandler](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReflBEq/Variant0393b747ab520e452a5b918ab8706dd7e1eb7fd1184cee19c3d20bd5e0b2a80e.lean/declarations/mkreflbeqinstancehandler--d7d4ed38ebd102215424b66c.md) | 53 | `declaration-track:d7d4ed38ebd102215424b66ccf6c18ad6fb42ad31abcba74336dcfd4b1ba3200` |
| 4 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReflBEq/Variant0393b747ab520e452a5b918ab8706dd7e1eb7fd1184cee19c3d20bd5e0b2a80e.lean/declarations/builtin-initialize--712d327c7652d7387a7039da.md) | 61 | `declaration-track:712d327c7652d7387a7039da7bb0bbab3a2394d33fb5fd3d9eb315031bf0e121` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
