# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Find.Varianta7982f16dc9c219d6b2c615f279b95d88a6d2528dbfcbb78599714ddcde79a38

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e411fa8248103f2b45602478d1d858fd6c054d8",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Varianta7982f16dc9c219d6b2c615f279b95d88a6d2528dbfcbb78599714ddcde79a38.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Varianta7982f16dc9c219d6b2c615f279b95d88a6d2528dbfcbb78599714ddcde79a38.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Varianta7982f16dc9c219d6b2c615f279b95d88a6d2528dbfcbb78599714ddcde79a38.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e411fa8248103f2b45602478d1d858fd6c054d8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Varianta7982f16dc9c219d6b2c615f279b95d88a6d2528dbfcbb78599714ddcde79a38.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Varianta7982f16dc9c219d6b2c615f279b95d88a6d2528dbfcbb78599714ddcde79a38.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init` — import line 6; external provider; requires a separately pinned dependency.
- `Batteries.Util.Cache` — import line 7; external provider; requires a separately pinned dependency.
- `Lean.HeadIndex` — import line 8; external provider; requires a separately pinned dependency.
- `Lean.Elab.Command` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [matchHyps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Varianta7982f16dc9c219d6b2c615f279b95d88a6d2528dbfcbb78599714ddcde79a38.lean/declarations/matchhyps--3c1dcdf9a4516ab968b3ee20.md) | 34 | `declaration-track:3c1dcdf9a4516ab968b3ee204cf584640a35b550ed2ed940c34d923e5bb808cc` |
| 2 | `def` | [isBlackListed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Varianta7982f16dc9c219d6b2c615f279b95d88a6d2528dbfcbb78599714ddcde79a38.lean/declarations/isblacklisted--6489bd4361c2a441e1133a11.md) | 46 | `declaration-track:6489bd4361c2a441e1133a11e7048c494f2e956706288d9cf0803b9d4b7422b4` |
| 3 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Varianta7982f16dc9c219d6b2c615f279b95d88a6d2528dbfcbb78599714ddcde79a38.lean/declarations/initialize--b225339a3e4831298d3a4d80.md) | 54 | `declaration-track:b225339a3e4831298d3a4d80933222ee210d050572d67ca0ae294ef0009f09b2` |
| 4 | `def` | [findType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Varianta7982f16dc9c219d6b2c615f279b95d88a6d2528dbfcbb78599714ddcde79a38.lean/declarations/findtype--f04ab9f75c0d3294720f7f4f.md) | 64 | `declaration-track:f04ab9f75c0d3294720f7f4f613f529fcec0f359a22aa372868283da82b556a3` |
| 5 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Varianta7982f16dc9c219d6b2c615f279b95d88a6d2528dbfcbb78599714ddcde79a38.lean/declarations/elab--e38b8051a34558d5e418bf0f.md) | 100 | `declaration-track:e38b8051a34558d5e418bf0f41a6b5d0ecb1bd6dd613e0e989d53fcf9eb3e230` |
| 6 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Varianta7982f16dc9c219d6b2c615f279b95d88a6d2528dbfcbb78599714ddcde79a38.lean/declarations/elab--8c5b56554bf535a56ea4c4dc.md) | 127 | `declaration-track:8c5b56554bf535a56ea4c4dc24727ec5fb2279b4a21ce0e77063ceae12da1e66` |
| 7 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Varianta7982f16dc9c219d6b2c615f279b95d88a6d2528dbfcbb78599714ddcde79a38.lean/declarations/elab--8a4792838ca0c5dfe5487e20.md) | 134 | `declaration-track:8a4792838ca0c5dfe5487e20ab21231ad4bf8560fa97ce6b44113b493047d3be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
