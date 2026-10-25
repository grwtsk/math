# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ParserReconstructionV1.Variant018ceb588d7b8056696da7eb32c75936c9eaba8a9f9b1ac0e6cd41e965ab1215

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bee1708810e45d6fddf1007a6fdcbdeb7cce8280",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserReconstructionV1/Variant018ceb588d7b8056696da7eb32c75936c9eaba8a9f9b1ac0e6cd41e965ab1215.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserReconstructionV1/Variant018ceb588d7b8056696da7eb32c75936c9eaba8a9f9b1ac0e6cd41e965ab1215.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserReconstructionV1/Variant018ceb588d7b8056696da7eb32c75936c9eaba8a9f9b1ac0e6cd41e965ab1215.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bee1708810e45d6fddf1007a6fdcbdeb7cce8280`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserReconstructionV1/Variant018ceb588d7b8056696da7eb32c75936c9eaba8a9f9b1ac0e6cd41e965ab1215.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserReconstructionV1/Variant018ceb588d7b8056696da7eb32c75936c9eaba8a9f9b1ac0e6cd41e965ab1215.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `formal.c2.Reconstruction` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [asText_inverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserReconstructionV1/Variant018ceb588d7b8056696da7eb32c75936c9eaba8a9f9b1ac0e6cd41e965ab1215.lean/declarations/astext-inverse--9ad02e19f051736452f0e2e7.md) | 5 | `result-track:9ad02e19f051736452f0e2e7fdab0072900b05e1084c67c83820f01dd85c7c46` |
| 2 | `theorem` | [readMany_reconstruct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserReconstructionV1/Variant018ceb588d7b8056696da7eb32c75936c9eaba8a9f9b1ac0e6cd41e965ab1215.lean/declarations/readmany-reconstruct--420da4c11d74cccc19509370.md) | 9 | `result-track:420da4c11d74cccc1950937076c4f1cd249056fabcf1414073f05af216441f4b` |
| 3 | `theorem` | [readPairs_reconstruct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserReconstructionV1/Variant018ceb588d7b8056696da7eb32c75936c9eaba8a9f9b1ac0e6cd41e965ab1215.lean/declarations/readpairs-reconstruct--f1b90d60258061f9c7d19f68.md) | 37 | `result-track:f1b90d60258061f9c7d19f68ee676cee4afdbd616637281304b5c5ca1b5a132d` |
| 4 | `theorem` | [parse_value_reconstruct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserReconstructionV1/Variant018ceb588d7b8056696da7eb32c75936c9eaba8a9f9b1ac0e6cd41e965ab1215.lean/declarations/parse-value-reconstruct--e224b0c4edde9de9aad9a0a7.md) | 73 | `result-track:e224b0c4edde9de9aad9a0a78ff32f74ea46b5f1f59e3f19db3be8b553f16c0c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
