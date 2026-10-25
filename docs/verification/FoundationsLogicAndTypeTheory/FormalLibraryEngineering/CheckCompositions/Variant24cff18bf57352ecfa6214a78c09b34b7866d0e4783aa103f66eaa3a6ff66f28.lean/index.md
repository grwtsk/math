# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CheckCompositions.Variant24cff18bf57352ecfa6214a78c09b34b7866d0e4783aa103f66eaa3a6ff66f28

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49573382548bdca1fec0c1e981af033f13d10edf",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckCompositions/Variant24cff18bf57352ecfa6214a78c09b34b7866d0e4783aa103f66eaa3a6ff66f28.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckCompositions/Variant24cff18bf57352ecfa6214a78c09b34b7866d0e4783aa103f66eaa3a6ff66f28.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckCompositions/Variant24cff18bf57352ecfa6214a78c09b34b7866d0e4783aa103f66eaa3a6ff66f28.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49573382548bdca1fec0c1e981af033f13d10edf`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckCompositions/Variant24cff18bf57352ecfa6214a78c09b34b7866d0e4783aa103f66eaa3a6ff66f28.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckCompositions/Variant24cff18bf57352ecfa6214a78c09b34b7866d0e4783aa103f66eaa3a6ff66f28.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [forEachComposition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckCompositions/Variant24cff18bf57352ecfa6214a78c09b34b7866d0e4783aa103f66eaa3a6ff66f28.lean/declarations/foreachcomposition--9e4a5b6d51e853c6a504fc13.md) | 34 | `declaration-track:9e4a5b6d51e853c6a504fc131cbaf96357416f5bb1c14906b8cc7af0d6acf0f3` |
| 2 | `def` | [checkComposition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckCompositions/Variant24cff18bf57352ecfa6214a78c09b34b7866d0e4783aa103f66eaa3a6ff66f28.lean/declarations/checkcomposition--4b72cb2ac40d601a05697635.md) | 41 | `declaration-track:4b72cb2ac40d601a05697635f1372c523de0e4e6d35acbe0f5a40e7f2a03c97f` |
| 3 | `def` | [checkCompositions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckCompositions/Variant24cff18bf57352ecfa6214a78c09b34b7866d0e4783aa103f66eaa3a6ff66f28.lean/declarations/checkcompositions--16d0641029853b7d6e4cb1b9.md) | 63 | `declaration-track:16d0641029853b7d6e4cb1b948d54265efdea1b038dc3ae272ea52d44f37c612` |
| 4 | `def` | [checkCompositionsTac](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckCompositions/Variant24cff18bf57352ecfa6214a78c09b34b7866d0e4783aa103f66eaa3a6ff66f28.lean/declarations/checkcompositionstac--8c02140333e605b1d45f24d2.md) | 67 | `declaration-track:8c02140333e605b1d45f24d222152f196d6bddcc0722f15ca2bc54abafb04130` |
| 5 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckCompositions/Variant24cff18bf57352ecfa6214a78c09b34b7866d0e4783aa103f66eaa3a6ff66f28.lean/declarations/elab--33abe781d79a0726f6cf9b17.md) | 120 | `declaration-track:33abe781d79a0726f6cf9b171efc598deff417ecd16328db926d3ff7d1c6a0e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
