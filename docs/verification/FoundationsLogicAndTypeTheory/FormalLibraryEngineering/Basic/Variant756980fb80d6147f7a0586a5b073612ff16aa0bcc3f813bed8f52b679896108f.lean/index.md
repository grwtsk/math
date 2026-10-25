# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant756980fb80d6147f7a0586a5b073612ff16aa0bcc3f813bed8f52b679896108f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7e3536b08ca20040b7b16a9c109f2acf023a63b",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant756980fb80d6147f7a0586a5b073612ff16aa0bcc3f813bed8f52b679896108f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant756980fb80d6147f7a0586a5b073612ff16aa0bcc3f813bed8f52b679896108f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant756980fb80d6147f7a0586a5b073612ff16aa0bcc3f813bed8f52b679896108f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7e3536b08ca20040b7b16a9c109f2acf023a63b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant756980fb80d6147f7a0586a5b073612ff16aa0bcc3f813bed8f52b679896108f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant756980fb80d6147f7a0586a5b073612ff16aa0bcc3f813bed8f52b679896108f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Tactic.Alias` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Lemma` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TypeStar` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Compares](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant756980fb80d6147f7a0586a5b073612ff16aa0bcc3f813bed8f52b679896108f.lean/declarations/compares--8e4a483e1e5ef3b2ec21310e.md) | 24 | `declaration-track:8e4a483e1e5ef3b2ec21310e42f855ad55cf154686fbdfda4e754996f94d35be` |
| 2 | `lemma` | [compares_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant756980fb80d6147f7a0586a5b073612ff16aa0bcc3f813bed8f52b679896108f.lean/declarations/compares-lt--2a15a7ed09c50ecb3a7f8855.md) | 29 | `result-track:2a15a7ed09c50ecb3a7f88556a057a17f98a7764868e96ee54dae4140e74717b` |
| 3 | `lemma` | [compares_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant756980fb80d6147f7a0586a5b073612ff16aa0bcc3f813bed8f52b679896108f.lean/declarations/compares-eq--17603e37f9211e09e9b25786.md) | 31 | `result-track:17603e37f9211e09e9b25786d9713bb2cac104e4643b95c4206e6ecd12c50f20` |
| 4 | `lemma` | [compares_gt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant756980fb80d6147f7a0586a5b073612ff16aa0bcc3f813bed8f52b679896108f.lean/declarations/compares-gt--ffee812e42d5c1d3cf3f48b1.md) | 33 | `result-track:ffee812e42d5c1d3cf3f48b1d7650c7cc24edaa4f840b59811847fbaa88c2a76` |
| 5 | `def` | [dthen](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant756980fb80d6147f7a0586a5b073612ff16aa0bcc3f813bed8f52b679896108f.lean/declarations/dthen--0c68c4ded5c5fbf918ec9e2a.md) | 37 | `declaration-track:0c68c4ded5c5fbf918ec9e2aecbeb10fa2af1a07ae129a05bb0796fbfe94f090` |
| 6 | `def` | [cmpUsing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant756980fb80d6147f7a0586a5b073612ff16aa0bcc3f813bed8f52b679896108f.lean/declarations/cmpusing--70498305b80c88b7c4650ad1.md) | 48 | `declaration-track:70498305b80c88b7c4650ad1af3120a308e165ccc5b1e3a0139a2acb79d3963b` |
| 7 | `def` | [cmp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant756980fb80d6147f7a0586a5b073612ff16aa0bcc3f813bed8f52b679896108f.lean/declarations/cmp--930e54d4311b296ae263e55e.md) | 55 | `declaration-track:930e54d4311b296ae263e55ebff9c0772cb613864352a6833c515628847c45d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
