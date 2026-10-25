# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Checkpoint.Variantb8f03e91f9fe335957240911617d48e741f5cb059b56d1a68779b46c8ec0edec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "76e4b84e89845e0009217b871ee65ffd368b0b19",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Checkpoint/Variantb8f03e91f9fe335957240911617d48e741f5cb059b56d1a68779b46c8ec0edec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Checkpoint/Variantb8f03e91f9fe335957240911617d48e741f5cb059b56d1a68779b46c8ec0edec.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Checkpoint/Variantb8f03e91f9fe335957240911617d48e741f5cb059b56d1a68779b46c8ec0edec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `76e4b84e89845e0009217b871ee65ffd368b0b19`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Checkpoint/Variantb8f03e91f9fe335957240911617d48e741f5cb059b56d1a68779b46c8ec0edec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Checkpoint/Variantb8f03e91f9fe335957240911617d48e741f5cb059b56d1a68779b46c8ec0edec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.GraphAccess.Execution` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AccessCheckpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Checkpoint/Variantb8f03e91f9fe335957240911617d48e741f5cb059b56d1a68779b46c8ec0edec.lean/declarations/accesscheckpoint--7040453d01df367aefa31688.md) | 20 | `declaration-track:7040453d01df367aefa3168800b8a4ffb889e037697c01edf33bd1790c61ce41` |
| 2 | `def` | [checkpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Checkpoint/Variantb8f03e91f9fe335957240911617d48e741f5cb059b56d1a68779b46c8ec0edec.lean/declarations/checkpoint--1c9a5d344ac1f7a7e7a15240.md) | 43 | `declaration-track:1c9a5d344ac1f7a7e7a15240625397ef8300e029839d2322ace55493ad6f2a8c` |
| 3 | `def` | [resume](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Checkpoint/Variantb8f03e91f9fe335957240911617d48e741f5cb059b56d1a68779b46c8ec0edec.lean/declarations/resume--22941e0aeff197c69bd0d916.md) | 64 | `declaration-track:22941e0aeff197c69bd0d916cf0f2b3bc151056c3115b20269f2c7905a18a0f3` |
| 4 | `theorem` | [checkpoint_roundtrip](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Checkpoint/Variantb8f03e91f9fe335957240911617d48e741f5cb059b56d1a68779b46c8ec0edec.lean/declarations/checkpoint-roundtrip--fd7544ec879a595ddc501724.md) | 74 | `result-track:fd7544ec879a595ddc501724b3affa7de48829fe556d197abd0d11bd415f849d` |
| 5 | `theorem` | [replay_deterministic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Checkpoint/Variantb8f03e91f9fe335957240911617d48e741f5cb059b56d1a68779b46c8ec0edec.lean/declarations/replay-deterministic--64ea0f7e8fb9be16b61fbc16.md) | 85 | `result-track:64ea0f7e8fb9be16b61fbc164061f12921f8369c0a1976b9a084e0d393fc7ef3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
