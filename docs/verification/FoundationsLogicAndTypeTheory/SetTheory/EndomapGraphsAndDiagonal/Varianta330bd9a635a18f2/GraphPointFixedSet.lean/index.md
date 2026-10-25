# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.EndomapGraphsAndDiagonal.Varianta330bd9a635a18f2.GraphPointFixedSet

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b7bfb4459302a17e892f41c42dea8742648bcf0",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/EndomapGraphsAndDiagonal/Varianta330bd9a635a18f2/GraphPointFixedSet.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/EndomapGraphsAndDiagonal/Varianta330bd9a635a18f2/GraphPointFixedSet.lean/index.md) · [Full source](../../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/EndomapGraphsAndDiagonal/Varianta330bd9a635a18f2/GraphPointFixedSet.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b7bfb4459302a17e892f41c42dea8742648bcf0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/EndomapGraphsAndDiagonal/Varianta330bd9a635a18f2/GraphPointFixedSet.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/EndomapGraphsAndDiagonal/Varianta330bd9a635a18f2/GraphPointFixedSet.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Codec.Profiles` — import line 19; external provider; requires a separately pinned dependency.
- `BitMatrix.Geometry.CarrierGrid` — import line 20; external provider; requires a separately pinned dependency.
- `BitMatrix.Runtime.Semantics` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GraphPointRecord](../../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/EndomapGraphsAndDiagonal/Varianta330bd9a635a18f2/GraphPointFixedSet.lean/declarations/graphpointrecord--f32363d6ad1e5728685752a8.md) | 44 | `declaration-track:f32363d6ad1e5728685752a846fc2b0417dfcf400f44dfbe79c66a491a8f0c04` |
| 2 | `def` | [graphPointRepresentation](../../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/EndomapGraphsAndDiagonal/Varianta330bd9a635a18f2/GraphPointFixedSet.lean/declarations/graphpointrepresentation--f1bb962c38beb703c72ca899.md) | 50 | `declaration-track:f1bb962c38beb703c72ca899e30586f22a902ec5aa2c11a8ff9bf94524f7545a` |
| 3 | `def` | [executeGraphPoint](../../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/EndomapGraphsAndDiagonal/Varianta330bd9a635a18f2/GraphPointFixedSet.lean/declarations/executegraphpoint--ebc471b46bb5c4a12ed934ce.md) | 58 | `declaration-track:ebc471b46bb5c4a12ed934ce4d82628275b6f94bcb3b74bd7a47c81f5cfe7e9e` |
| 4 | `theorem` | [executeGraphPoint_represents](../../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/EndomapGraphsAndDiagonal/Varianta330bd9a635a18f2/GraphPointFixedSet.lean/declarations/executegraphpoint-represents--1333db3f3036d862012b1ed4.md) | 64 | `result-track:1333db3f3036d862012b1ed4b234ea04ddc3e3557766c14368efc09d55714347` |
| 5 | `theorem` | [executeGraphPoint_liesOnDiagonal_iff_fixed](../../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/EndomapGraphsAndDiagonal/Varianta330bd9a635a18f2/GraphPointFixedSet.lean/declarations/executegraphpoint-liesondiagonal-iff-fixed--ff4df10fa17ec9d5ac4b05f3.md) | 73 | `result-track:ff4df10fa17ec9d5ac4b05f34b178df7347e7f896ba0e91d5874fef064eafe5c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
