# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SchurInertiaDraft.Variant9fe9aceb55b8524db95ae0aec3f260df46fa96731c85e6e1990746b0b547ad59

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c0bd76bc73aa87d64494f70e886c6048520a25d",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SchurInertiaDraft/Variant9fe9aceb55b8524db95ae0aec3f260df46fa96731c85e6e1990746b0b547ad59.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SchurInertiaDraft/Variant9fe9aceb55b8524db95ae0aec3f260df46fa96731c85e6e1990746b0b547ad59.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SchurInertiaDraft/Variant9fe9aceb55b8524db95ae0aec3f260df46fa96731c85e6e1990746b0b547ad59.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c0bd76bc73aa87d64494f70e886c6048520a25d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SchurInertiaDraft/Variant9fe9aceb55b8524db95ae0aec3f260df46fa96731c85e6e1990746b0b547ad59.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SchurInertiaDraft/Variant9fe9aceb55b8524db95ae0aec3f260df46fa96731c85e6e1990746b0b547ad59.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `HermitianInertiaDraft` — import line 6; external provider; requires a separately pinned dependency.
- `SchurZeroDraft` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [complexInertia](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SchurInertiaDraft/Variant9fe9aceb55b8524db95ae0aec3f260df46fa96731c85e6e1990746b0b547ad59.lean/declarations/complexinertia--672800abe1f3959cb45d8289.md) | 24 | `declaration-track:672800abe1f3959cb45d828965f5ea9c18d6c7c17b6e0bbcd0f93e6ee63c17f9` |
| 2 | `theorem` | [positive_count_schur](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SchurInertiaDraft/Variant9fe9aceb55b8524db95ae0aec3f260df46fa96731c85e6e1990746b0b547ad59.lean/declarations/positive-count-schur--b83abdd77cc5dd44f2c3ae47.md) | 30 | `result-track:b83abdd77cc5dd44f2c3ae47814572455697c3b5e8ddb4921b0e1cc7b3c0768d` |
| 3 | `theorem` | [negative_count_schur](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SchurInertiaDraft/Variant9fe9aceb55b8524db95ae0aec3f260df46fa96731c85e6e1990746b0b547ad59.lean/declarations/negative-count-schur--04fa04defa3de684e874c840.md) | 41 | `result-track:04fa04defa3de684e874c840b11c64a51a0646ef5e531d11963abc2114b11dcc` |
| 4 | `theorem` | [complexInertia_schur](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SchurInertiaDraft/Variant9fe9aceb55b8524db95ae0aec3f260df46fa96731c85e6e1990746b0b547ad59.lean/declarations/complexinertia-schur--17edbdeff5c4d1a73dfcb52d.md) | 52 | `result-track:17edbdeff5c4d1a73dfcb52daf479531e657bca9df5ea8e707f9c88a3af2635e` |
| 5 | `def` | [ComplexFeshbachInertiaObligation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SchurInertiaDraft/Variant9fe9aceb55b8524db95ae0aec3f260df46fa96731c85e6e1990746b0b547ad59.lean/declarations/complexfeshbachinertiaobligation--4e92758de34d5024ae7ad5e9.md) | 63 | `declaration-track:4e92758de34d5024ae7ad5e9c32d82bcb8239433225e9489ae9255758afd34e3` |
| 6 | `theorem` | [issue266_obligation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SchurInertiaDraft/Variant9fe9aceb55b8524db95ae0aec3f260df46fa96731c85e6e1990746b0b547ad59.lean/declarations/issue266-obligation--79e7729f43dc84d8aeb107e7.md) | 73 | `result-track:79e7729f43dc84d8aeb107e7ce6e57f40680c0e2ca44ab89fca9ab3620fdf8d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
