# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PersistentHashSet.Variant33baee857dd1f52d2dba5f6b6215cf1d0544fe4948217319500a1fa9b586297a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "154e3b1dce4945624bcbc6814958760d0077f11b",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashSet/Variant33baee857dd1f52d2dba5f6b6215cf1d0544fe4948217319500a1fa9b586297a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashSet/Variant33baee857dd1f52d2dba5f6b6215cf1d0544fe4948217319500a1fa9b586297a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashSet/Variant33baee857dd1f52d2dba5f6b6215cf1d0544fe4948217319500a1fa9b586297a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `154e3b1dce4945624bcbc6814958760d0077f11b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashSet/Variant33baee857dd1f52d2dba5f6b6215cf1d0544fe4948217319500a1fa9b586297a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashSet/Variant33baee857dd1f52d2dba5f6b6215cf1d0544fe4948217319500a1fa9b586297a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Data.PersistentHashSet` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashSet/Variant33baee857dd1f52d2dba5f6b6215cf1d0544fe4948217319500a1fa9b586297a.lean/declarations/instance--9eee346a3626fb2852d389b2.md) | 21 | `declaration-track:9eee346a3626fb2852d389b2318b79c3d680c0d8555b0a473d1b4903c7ef98ea` |
| 2 | `def` | [anyM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashSet/Variant33baee857dd1f52d2dba5f6b6215cf1d0544fe4948217319500a1fa9b586297a.lean/declarations/anym--e0ec1e10b61f28216b615312.md) | 34 | `declaration-track:e0ec1e10b61f28216b615312131573a5d3676dcdd4d1f84968bc2d07fdf2d562` |
| 3 | `def` | [any](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashSet/Variant33baee857dd1f52d2dba5f6b6215cf1d0544fe4948217319500a1fa9b586297a.lean/declarations/any--3220925de0bd43df314e0e91.md) | 44 | `declaration-track:3220925de0bd43df314e0e91c8cf71f693a46745bc68f6aa8146610eea8801af` |
| 4 | `def` | [allM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashSet/Variant33baee857dd1f52d2dba5f6b6215cf1d0544fe4948217319500a1fa9b586297a.lean/declarations/allm--cda8abf623db6b86c079655e.md) | 51 | `declaration-track:cda8abf623db6b86c079655e97bad39a3c84e03776a71849bce41a30cd797c10` |
| 5 | `def` | [all](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashSet/Variant33baee857dd1f52d2dba5f6b6215cf1d0544fe4948217319500a1fa9b586297a.lean/declarations/all--16e0e51bfe1093c49e4027d9.md) | 61 | `declaration-track:16e0e51bfe1093c49e4027d983c9b5ca3f55ff068fe4e2962ac843bcc0166231` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashSet/Variant33baee857dd1f52d2dba5f6b6215cf1d0544fe4948217319500a1fa9b586297a.lean/declarations/instance--bf03905e231d434b288e6eee.md) | 64 | `declaration-track:bf03905e231d434b288e6eee2c7a1c86701e90463167e490288a3d98397628b0` |
| 7 | `def` | [insert'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashSet/Variant33baee857dd1f52d2dba5f6b6215cf1d0544fe4948217319500a1fa9b586297a.lean/declarations/insert--2f83ac2cb2284fbd66cc4ebc.md) | 72 | `declaration-track:2f83ac2cb2284fbd66cc4ebc5bea031f8b1e22e3b18eda8c8be42e8e05cc2c10` |
| 8 | `def` | [insertMany](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashSet/Variant33baee857dd1f52d2dba5f6b6215cf1d0544fe4948217319500a1fa9b586297a.lean/declarations/insertmany--8ad48a33b668c1fbf85e8165.md) | 80 | `declaration-track:8ad48a33b668c1fbf85e81659077402a772f047547d80c44f975c5d34739e4c4` |
| 9 | `def` | [ofArray](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashSet/Variant33baee857dd1f52d2dba5f6b6215cf1d0544fe4948217319500a1fa9b586297a.lean/declarations/ofarray--22d584c44f6f41ae6c5e57fd.md) | 91 | `declaration-track:22d584c44f6f41ae6c5e57fd3c3eb2b6aab19e8354e6ca40dd293279d78b5dd2` |
| 10 | `def` | [ofList](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashSet/Variant33baee857dd1f52d2dba5f6b6215cf1d0544fe4948217319500a1fa9b586297a.lean/declarations/oflist--84b5351c19cc9ded88c9fa28.md) | 98 | `declaration-track:84b5351c19cc9ded88c9fa283925f0d2fcdb66490b6348986a2535b4e889e2a2` |
| 11 | `def` | [merge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashSet/Variant33baee857dd1f52d2dba5f6b6215cf1d0544fe4948217319500a1fa9b586297a.lean/declarations/merge--e4e9c0536b25b025aa92b258.md) | 105 | `declaration-track:e4e9c0536b25b025aa92b258aca5f26a741c5bd67a96a9d2dd72172520ba0228` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
