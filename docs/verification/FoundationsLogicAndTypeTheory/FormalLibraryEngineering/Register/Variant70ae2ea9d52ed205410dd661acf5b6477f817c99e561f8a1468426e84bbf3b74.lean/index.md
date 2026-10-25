# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Register.Variant70ae2ea9d52ed205410dd661acf5b6477f817c99e561f8a1468426e84bbf3b74

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "06327ad6f85909673e3a0cbd2a3fb0aa41b0425b",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Register/Variant70ae2ea9d52ed205410dd661acf5b6477f817c99e561f8a1468426e84bbf3b74.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Register/Variant70ae2ea9d52ed205410dd661acf5b6477f817c99e561f8a1468426e84bbf3b74.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Register/Variant70ae2ea9d52ed205410dd661acf5b6477f817c99e561f8a1468426e84bbf3b74.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `06327ad6f85909673e3a0cbd2a3fb0aa41b0425b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Register/Variant70ae2ea9d52ed205410dd661acf5b6477f817c99e561f8a1468426e84bbf3b74.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Register/Variant70ae2ea9d52ed205410dd661acf5b6477f817c99e561f8a1468426e84bbf3b74.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CommitAdapter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Register/Variant70ae2ea9d52ed205410dd661acf5b6477f817c99e561f8a1468426e84bbf3b74.lean/declarations/commitadapter--02ca7f0498d48404b5509e0e.md) | 29 | `declaration-track:02ca7f0498d48404b5509e0eb4fcf289bb90b9d18dba41f4a5fcc016edc27da6` |
| 2 | `structure` | [PreparedCommit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Register/Variant70ae2ea9d52ed205410dd661acf5b6477f817c99e561f8a1468426e84bbf3b74.lean/declarations/preparedcommit--25f5e26b112dea6e482b1931.md) | 37 | `declaration-track:25f5e26b112dea6e482b1931a1757495e7addbb11521e9b4b08f098808ac1e00` |
| 3 | `inductive` | [CommitRejection](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Register/Variant70ae2ea9d52ed205410dd661acf5b6477f817c99e561f8a1468426e84bbf3b74.lean/declarations/commitrejection--a1bc869024b632e0a0e2ddc6.md) | 45 | `declaration-track:a1bc869024b632e0a0e2ddc6de03d6f0ac138bd1b0e11cd5b9d2c7237dcf529d` |
| 4 | `inductive` | [CommitResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Register/Variant70ae2ea9d52ed205410dd661acf5b6477f817c99e561f8a1468426e84bbf3b74.lean/declarations/commitresult--d65f3aa433055e77fb5e6903.md) | 52 | `declaration-track:d65f3aa433055e77fb5e69036f336f8ac96c9b56acbe59560dd3ef8f2e7cab9c` |
| 5 | `def` | [CommitResult.model](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Register/Variant70ae2ea9d52ed205410dd661acf5b6477f817c99e561f8a1468426e84bbf3b74.lean/declarations/commitresult-model--f84131ce7e3e873eda608385.md) | 56 | `declaration-track:f84131ce7e3e873eda60838583f14cf1f6284e90eb48ab441b5412272fe09bdf` |
| 6 | `def` | [commit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Register/Variant70ae2ea9d52ed205410dd661acf5b6477f817c99e561f8a1468426e84bbf3b74.lean/declarations/commit--179d951227dd1e7dfa718c8d.md) | 60 | `declaration-track:179d951227dd1e7dfa718c8d713c737f0295ae1a8c920043622445c4c0df13f5` |
| 7 | `theorem` | [rejectedProposal_leavesModelUnchanged](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Register/Variant70ae2ea9d52ed205410dd661acf5b6477f817c99e561f8a1468426e84bbf3b74.lean/declarations/rejectedproposal-leavesmodelunchanged--5d68ec6648d9517eeb0c4374.md) | 76 | `result-track:5d68ec6648d9517eeb0c437462e76fca5b11a10ed7f338d35c2b1f161ea1526f` |
| 8 | `theorem` | [sourceSnapshotRace_leavesModelUnchanged](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Register/Variant70ae2ea9d52ed205410dd661acf5b6477f817c99e561f8a1468426e84bbf3b74.lean/declarations/sourcesnapshotrace-leavesmodelunchanged--03df72d12257714116b6c2a8.md) | 86 | `result-track:03df72d12257714116b6c2a830b21167635b4ff8897008aacf3c97566e3d4ca5` |
| 9 | `theorem` | [targetRevisionRace_leavesModelUnchanged](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Register/Variant70ae2ea9d52ed205410dd661acf5b6477f817c99e561f8a1468426e84bbf3b74.lean/declarations/targetrevisionrace-leavesmodelunchanged--de3fdabe71098fdf49026b91.md) | 97 | `result-track:de3fdabe71098fdf49026b91c2dc68e4fb80ac7edba3836b45daa01f1543feeb` |
| 10 | `theorem` | [successfulCommit_preserves_revision](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Register/Variant70ae2ea9d52ed205410dd661acf5b6477f817c99e561f8a1468426e84bbf3b74.lean/declarations/successfulcommit-preserves-revision--4bcf8317cd264b636cd733ae.md) | 110 | `result-track:4bcf8317cd264b636cd733ae9381a6182b33a7dfb25b5ecb92750aa6d4344778` |
| 11 | `theorem` | [successfulCommit_projects_admitted_payload](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Register/Variant70ae2ea9d52ed205410dd661acf5b6477f817c99e561f8a1468426e84bbf3b74.lean/declarations/successfulcommit-projects-admitted-payload--90b9782a23149bd41307ce55.md) | 129 | `result-track:90b9782a23149bd41307ce55ebf29aaaed3e8fa66f787c3d8e068b831f741cb2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
