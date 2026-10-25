# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Defs.Variant63e7c1c7529efd263fa0311ed15851c73a642ccabfdfd3e7fa3e67fc90aa096c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d3c371b7e42ebba61ca2a09c7e81cd4df2b80f7d",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant63e7c1c7529efd263fa0311ed15851c73a642ccabfdfd3e7fa3e67fc90aa096c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant63e7c1c7529efd263fa0311ed15851c73a642ccabfdfd3e7fa3e67fc90aa096c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant63e7c1c7529efd263fa0311ed15851c73a642ccabfdfd3e7fa3e67fc90aa096c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d3c371b7e42ebba61ca2a09c7e81cd4df2b80f7d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant63e7c1c7529efd263fa0311ed15851c73a642ccabfdfd3e7fa3e67fc90aa096c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant63e7c1c7529efd263fa0311ed15851c73a642ccabfdfd3e7fa3e67fc90aa096c.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant63e7c1c7529efd263fa0311ed15851c73a642ccabfdfd3e7fa3e67fc90aa096c.lean/declarations/instance--78f775add23caea19a38a9da.md) | 30 | `declaration-track:78f775add23caea19a38a9da239af2780590b7b5c4596e95839503ad23c0bd67` |
| 2 | `inductive` | [WF](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant63e7c1c7529efd263fa0311ed15851c73a642ccabfdfd3e7fa3e67fc90aa096c.lean/declarations/wf--1a1e2c6bcb5b19b1acd39cae.md) | 35 | `declaration-track:1a1e2c6bcb5b19b1acd39caebd4e2fd126bfb93269939553a4d636a1160e4e3a` |
| 3 | `theorem` | [WF.balanced](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant63e7c1c7529efd263fa0311ed15851c73a642ccabfdfd3e7fa3e67fc90aa096c.lean/declarations/wf-balanced--65452e05a7833185c97824ca.md) | 71 | `result-track:65452e05a7833185c97824ca215fa0b88c9626d2187b832afa6b73ee10060564` |
| 4 | `theorem` | [WF.eraseManyEntries](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant63e7c1c7529efd263fa0311ed15851c73a642ccabfdfd3e7fa3e67fc90aa096c.lean/declarations/wf-erasemanyentries--423f08e9c3ab4d9201f262cb.md) | 79 | `result-track:423f08e9c3ab4d9201f262cbcda6febdaeca77c41856fa26b1e4d987c08f6eb2` |
| 5 | `theorem` | [WF.eraseMany](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant63e7c1c7529efd263fa0311ed15851c73a642ccabfdfd3e7fa3e67fc90aa096c.lean/declarations/wf-erasemany--20bef7cabbdf5e31a47da64e.md) | 83 | `result-track:20bef7cabbdf5e31a47da64e2f251076c1bc579ede8b4ee00c0270a54420b53b` |
| 6 | `theorem` | [WF.insertMany](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant63e7c1c7529efd263fa0311ed15851c73a642ccabfdfd3e7fa3e67fc90aa096c.lean/declarations/wf-insertmany--e4acb87345d382f840a88a5b.md) | 87 | `result-track:e4acb87345d382f840a88a5b6b25aab2ba05050a1452cee9d02c902126e250cf` |
| 7 | `theorem` | [WF.insertManyIfNew](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant63e7c1c7529efd263fa0311ed15851c73a642ccabfdfd3e7fa3e67fc90aa096c.lean/declarations/wf-insertmanyifnew--1d2704c5876cf51bfc44177d.md) | 91 | `result-track:1d2704c5876cf51bfc44177dece88e5f7952fee91805c921f3e8c920be45a5b3` |
| 8 | `theorem` | [WF.constInsertMany](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant63e7c1c7529efd263fa0311ed15851c73a642ccabfdfd3e7fa3e67fc90aa096c.lean/declarations/wf-constinsertmany--42c1485b28982cb66ecec8a4.md) | 95 | `result-track:42c1485b28982cb66ecec8a463acec6e67520f224a9bc92b606c5e40f1343ba8` |
| 9 | `theorem` | [WF.constInsertManyIfNewUnit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant63e7c1c7529efd263fa0311ed15851c73a642ccabfdfd3e7fa3e67fc90aa096c.lean/declarations/wf-constinsertmanyifnewunit--a572a301ab08159af56f6a48.md) | 99 | `result-track:a572a301ab08159af56f6a489fdb7fc928bb7313abf0b7e951536a4df3f17dd6` |
| 10 | `theorem` | [WF.getThenInsertIfNew?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant63e7c1c7529efd263fa0311ed15851c73a642ccabfdfd3e7fa3e67fc90aa096c.lean/declarations/wf-gettheninsertifnew--21982ce10ac8f0bc49c487de.md) | 103 | `result-track:21982ce10ac8f0bc49c487ded4fe311910634ba2f016c6984c6dba7abf4c0f02` |
| 11 | `theorem` | [WF.union](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant63e7c1c7529efd263fa0311ed15851c73a642ccabfdfd3e7fa3e67fc90aa096c.lean/declarations/wf-union--3382042f0f742bc1e1e79bf1.md) | 110 | `result-track:3382042f0f742bc1e1e79bf1aaf9012dcc9e224f98f899db15e3b04906395187` |
| 12 | `theorem` | [WF.diff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant63e7c1c7529efd263fa0311ed15851c73a642ccabfdfd3e7fa3e67fc90aa096c.lean/declarations/wf-diff--b835037a347d290d456700e0.md) | 117 | `result-track:b835037a347d290d456700e0fd3ddc3336d86ce57809bfb5a5a0ac11b9dc322e` |
| 13 | `theorem` | [WF.constGetThenInsertIfNew?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant63e7c1c7529efd263fa0311ed15851c73a642ccabfdfd3e7fa3e67fc90aa096c.lean/declarations/wf-constgettheninsertifnew--2707dfc67502c74bfb9f91b5.md) | 128 | `result-track:2707dfc67502c74bfb9f91b51f15cb7d4883311519fcc8ed011c8527c8872069` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
