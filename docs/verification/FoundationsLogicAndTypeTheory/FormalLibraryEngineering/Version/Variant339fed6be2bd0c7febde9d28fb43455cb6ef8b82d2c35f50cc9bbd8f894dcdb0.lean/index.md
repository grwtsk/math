# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Version.Variant339fed6be2bd0c7febde9d28fb43455cb6ef8b82d2c35f50cc9bbd8f894dcdb0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cba06cc0aff78445d54f023c8ea5d53f90daa174",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Version/Variant339fed6be2bd0c7febde9d28fb43455cb6ef8b82d2c35f50cc9bbd8f894dcdb0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Version/Variant339fed6be2bd0c7febde9d28fb43455cb6ef8b82d2c35f50cc9bbd8f894dcdb0.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Version/Variant339fed6be2bd0c7febde9d28fb43455cb6ef8b82d2c35f50cc9bbd8f894dcdb0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cba06cc0aff78445d54f023c8ea5d53f90daa174`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Version/Variant339fed6be2bd0c7febde9d28fb43455cb6ef8b82d2c35f50cc9bbd8f894dcdb0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Version/Variant339fed6be2bd0c7febde9d28fb43455cb6ef8b82d2c35f50cc9bbd8f894dcdb0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.ContinuousAssurance.WorldModel.Identity` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [WorldModelVersionId](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Version/Variant339fed6be2bd0c7febde9d28fb43455cb6ef8b82d2c35f50cc9bbd8f894dcdb0.lean/declarations/worldmodelversionid--4b76a800a23257c5b7d683ce.md) | 14 | `declaration-track:4b76a800a23257c5b7d683ce0feb51cd1a485f78f920aad9878edcacf0b47816` |
| 2 | `structure` | [VersionCoordinates](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Version/Variant339fed6be2bd0c7febde9d28fb43455cb6ef8b82d2c35f50cc9bbd8f894dcdb0.lean/declarations/versioncoordinates--ae35471a2250504a3b351bf5.md) | 21 | `declaration-track:ae35471a2250504a3b351bf5f72dde817739b28b0f9b870be60fa23dde81a275` |
| 3 | `theorem` | [VersionCoordinates.ne_of_semantic_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Version/Variant339fed6be2bd0c7febde9d28fb43455cb6ef8b82d2c35f50cc9bbd8f894dcdb0.lean/declarations/versioncoordinates-ne-of-semantic-ne--ab0ebc8e5f12bb6816794c05.md) | 30 | `result-track:ab0ebc8e5f12bb6816794c053e9ef7ab02b64619404d8c7a22ffa5c533600567` |
| 4 | `theorem` | [WorldModelVersionId.ne_of_sourceDigest_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Version/Variant339fed6be2bd0c7febde9d28fb43455cb6ef8b82d2c35f50cc9bbd8f894dcdb0.lean/declarations/worldmodelversionid-ne-of-sourcedigest-ne--1ca2d955fa3a01a02452c820.md) | 38 | `result-track:1ca2d955fa3a01a02452c82086cbdc29d2cea2ec63dc0f2fdaaa01aea2044008` |
| 5 | `theorem` | [WorldModelVersionId.ne_of_version_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Version/Variant339fed6be2bd0c7febde9d28fb43455cb6ef8b82d2c35f50cc9bbd8f894dcdb0.lean/declarations/worldmodelversionid-ne-of-version-ne--92b7a1026577553efc14bbc2.md) | 46 | `result-track:92b7a1026577553efc14bbc2876fd1a309f1b51c9f5b5de4d70487beb4c31807` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
