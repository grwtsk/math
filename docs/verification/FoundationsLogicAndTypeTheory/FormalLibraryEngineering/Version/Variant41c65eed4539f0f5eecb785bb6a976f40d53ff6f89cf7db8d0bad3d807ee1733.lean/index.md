# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Version.Variant41c65eed4539f0f5eecb785bb6a976f40d53ff6f89cf7db8d0bad3d807ee1733

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b94c79562a0fd56fdeb2192955dd694b27b3d1b9",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Version/Variant41c65eed4539f0f5eecb785bb6a976f40d53ff6f89cf7db8d0bad3d807ee1733.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Version/Variant41c65eed4539f0f5eecb785bb6a976f40d53ff6f89cf7db8d0bad3d807ee1733.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Version/Variant41c65eed4539f0f5eecb785bb6a976f40d53ff6f89cf7db8d0bad3d807ee1733.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b94c79562a0fd56fdeb2192955dd694b27b3d1b9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Version/Variant41c65eed4539f0f5eecb785bb6a976f40d53ff6f89cf7db8d0bad3d807ee1733.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Version/Variant41c65eed4539f0f5eecb785bb6a976f40d53ff6f89cf7db8d0bad3d807ee1733.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.ContinuousAssurance.WorldModel.Identity` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [WorldModelVersionId](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Version/Variant41c65eed4539f0f5eecb785bb6a976f40d53ff6f89cf7db8d0bad3d807ee1733.lean/declarations/worldmodelversionid--333b1133b6fc6d0b41a1f063.md) | 22 | `declaration-track:333b1133b6fc6d0b41a1f063360ea10fc4b8b0ab0b32cd6b3af0cb064df00f87` |
| 2 | `structure` | [VersionCoordinates](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Version/Variant41c65eed4539f0f5eecb785bb6a976f40d53ff6f89cf7db8d0bad3d807ee1733.lean/declarations/versioncoordinates--721fb0ad83e4dbafc6c6e600.md) | 29 | `declaration-track:721fb0ad83e4dbafc6c6e600c2120f95d6c9b739597827418543d263cea27828` |
| 3 | `theorem` | [VersionCoordinates.ne_of_semantic_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Version/Variant41c65eed4539f0f5eecb785bb6a976f40d53ff6f89cf7db8d0bad3d807ee1733.lean/declarations/versioncoordinates-ne-of-semantic-ne--37f40205e0a60b06b3aaa62f.md) | 38 | `result-track:37f40205e0a60b06b3aaa62fdd89bee244a0070fd455c324f95c4430fb04e045` |
| 4 | `theorem` | [WorldModelVersionId.ne_of_sourceDigest_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Version/Variant41c65eed4539f0f5eecb785bb6a976f40d53ff6f89cf7db8d0bad3d807ee1733.lean/declarations/worldmodelversionid-ne-of-sourcedigest-ne--33c76a8c2e7be60c05a145a9.md) | 46 | `result-track:33c76a8c2e7be60c05a145a94da14bfc5916d0370d80c2efce49f21a325d4cb3` |
| 5 | `theorem` | [WorldModelVersionId.ne_of_version_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Version/Variant41c65eed4539f0f5eecb785bb6a976f40d53ff6f89cf7db8d0bad3d807ee1733.lean/declarations/worldmodelversionid-ne-of-version-ne--2731fbfe9db86a7308028e8e.md) | 54 | `result-track:2731fbfe9db86a7308028e8e053daa7f80b0b799a53b309bdd1602872d6c2ff9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
