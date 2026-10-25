# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TreeM.Variant3333d44350f22eed13a13d518de5f0fbca96e39a33ee403b53712a8d61219e63

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ff4bd89e55f6adf014724c424dbe114af2c7257",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TreeM/Variant3333d44350f22eed13a13d518de5f0fbca96e39a33ee403b53712a8d61219e63.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TreeM/Variant3333d44350f22eed13a13d518de5f0fbca96e39a33ee403b53712a8d61219e63.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TreeM/Variant3333d44350f22eed13a13d518de5f0fbca96e39a33ee403b53712a8d61219e63.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ff4bd89e55f6adf014724c424dbe114af2c7257`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TreeM/Variant3333d44350f22eed13a13d518de5f0fbca96e39a33ee403b53712a8d61219e63.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TreeM/Variant3333d44350f22eed13a13d518de5f0fbca96e39a33ee403b53712a8d61219e63.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Aesop.Forward.State.Initial` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Tree](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TreeM/Variant3333d44350f22eed13a13d518de5f0fbca96e39a33ee403b53712a8d61219e63.lean/declarations/tree--a4dbb8a8dc7e11817782f84b.md) | 27 | `declaration-track:a4dbb8a8dc7e11817782f84b8f5931711f09f3514b13fa5daa3240c2c5354b35` |
| 2 | `def` | [mkInitialTree](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TreeM/Variant3333d44350f22eed13a13d518de5f0fbca96e39a33ee403b53712a8d61219e63.lean/declarations/mkinitialtree--a572ab29e9722340f77e776a.md) | 39 | `declaration-track:a572ab29e9722340f77e776aa357b28abc930a3c5f139932e7475e63b817afc3` |
| 3 | `structure` | [TreeM.Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TreeM/Variant3333d44350f22eed13a13d518de5f0fbca96e39a33ee403b53712a8d61219e63.lean/declarations/treem-context--03708d01ce7ddfe44a28ace7.md) | 80 | `declaration-track:03708d01ce7ddfe44a28ace7ee1e9b47f7104580ec49bdf01144c77367edce4a` |
| 4 | `structure` | [TreeM.State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TreeM/Variant3333d44350f22eed13a13d518de5f0fbca96e39a33ee403b53712a8d61219e63.lean/declarations/treem-state--c99b4df0f4b80134a190787a.md) | 84 | `declaration-track:c99b4df0f4b80134a190787a76920e4ced4ae6faf6cc7e07dd601f923586bd8c` |
| 5 | `abbrev` | [TreeM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TreeM/Variant3333d44350f22eed13a13d518de5f0fbca96e39a33ee403b53712a8d61219e63.lean/declarations/treem--8a2da7305489ab081faaf102.md) | 87 | `declaration-track:8a2da7305489ab081faaf102f3e70ea79ff33ec12964dc68d2064c868aec2d3f` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TreeM/Variant3333d44350f22eed13a13d518de5f0fbca96e39a33ee403b53712a8d61219e63.lean/declarations/instance--7bb73ef39326f4e336ff053b.md) | 93 | `declaration-track:7bb73ef39326f4e336ff053b39ed02e1f53c6f27ce4b20e26e526222c3600126` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TreeM/Variant3333d44350f22eed13a13d518de5f0fbca96e39a33ee403b53712a8d61219e63.lean/declarations/instance--ada2121f1f1aabf0cb5a1c78.md) | 96 | `declaration-track:ada2121f1f1aabf0cb5a1c78476ee098894d95efcbb4db7f4a33e2e73692066b` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TreeM/Variant3333d44350f22eed13a13d518de5f0fbca96e39a33ee403b53712a8d61219e63.lean/declarations/instance--d0eb3eb30d032c74a9342ef4.md) | 103 | `declaration-track:d0eb3eb30d032c74a9342ef46833ac7a1e50716527e934a395b39b88a1e97db3` |
| 9 | `def` | [run'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TreeM/Variant3333d44350f22eed13a13d518de5f0fbca96e39a33ee403b53712a8d61219e63.lean/declarations/run--752e88e079ba50a863550def.md) | 106 | `declaration-track:752e88e079ba50a863550defa4d3e8f3319222475cadad496ef316170020074e` |
| 10 | `def` | [getRootMVarCluster](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TreeM/Variant3333d44350f22eed13a13d518de5f0fbca96e39a33ee403b53712a8d61219e63.lean/declarations/getrootmvarcluster--fe6277410d3bd720db503ba3.md) | 112 | `declaration-track:fe6277410d3bd720db503ba3872f9dafbf2fdacfa24c6d6a3843c6d2e067c5f1` |
| 11 | `def` | [getRootMetaState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TreeM/Variant3333d44350f22eed13a13d518de5f0fbca96e39a33ee403b53712a8d61219e63.lean/declarations/getrootmetastate--b1d217694d4bf0e8aa457af7.md) | 115 | `declaration-track:b1d217694d4bf0e8aa457af72878ebdd24c377fd63c2c54d78bfd1ea7e62e31e` |
| 12 | `def` | [getRootGoal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TreeM/Variant3333d44350f22eed13a13d518de5f0fbca96e39a33ee403b53712a8d61219e63.lean/declarations/getrootgoal--82775b076f1afd7e6656033e.md) | 118 | `declaration-track:82775b076f1afd7e6656033e5ea0478ad026c5e557a363baa12f6c7f9fc41cc7` |
| 13 | `def` | [getRootMVarId](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TreeM/Variant3333d44350f22eed13a13d518de5f0fbca96e39a33ee403b53712a8d61219e63.lean/declarations/getrootmvarid--f72402eab4315c77a81dd5ac.md) | 126 | `declaration-track:f72402eab4315c77a81dd5ac69866a09e5a544cee73d43d892a2847f968d5469` |
| 14 | `def` | [incrementNumGoals](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TreeM/Variant3333d44350f22eed13a13d518de5f0fbca96e39a33ee403b53712a8d61219e63.lean/declarations/incrementnumgoals--4351823dde68bbb332323337.md) | 130 | `declaration-track:4351823dde68bbb33232333778b8b6e44296e40d0dbcfb5abf4326bb7dfaf00b` |
| 15 | `def` | [incrementNumRapps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TreeM/Variant3333d44350f22eed13a13d518de5f0fbca96e39a33ee403b53712a8d61219e63.lean/declarations/incrementnumrapps--0031aaa00c79941b8949deba.md) | 133 | `declaration-track:0031aaa00c79941b8949debaefd3012486c57549703d97a4fb5d173d028d8a6c` |
| 16 | `def` | [getAllIntroducedMVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TreeM/Variant3333d44350f22eed13a13d518de5f0fbca96e39a33ee403b53712a8d61219e63.lean/declarations/getallintroducedmvars--45fc4c43199eed13d06f0d0c.md) | 136 | `declaration-track:45fc4c43199eed13d06f0d0cd18b3230ee01218c8ca71f62c4149a623e69bc15` |
| 17 | `def` | [getAndIncrementNextGoalId](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TreeM/Variant3333d44350f22eed13a13d518de5f0fbca96e39a33ee403b53712a8d61219e63.lean/declarations/getandincrementnextgoalid--5fa3685084b11695d9f4f73d.md) | 139 | `declaration-track:5fa3685084b11695d9f4f73de077b31d8c4b06524add5aaad42e1f9d1286eef4` |
| 18 | `def` | [getAndIncrementNextRappId](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TreeM/Variant3333d44350f22eed13a13d518de5f0fbca96e39a33ee403b53712a8d61219e63.lean/declarations/getandincrementnextrappid--669753e4c98fe0e3dc643291.md) | 144 | `declaration-track:669753e4c98fe0e3dc643291136652950dea608ada89b913e1b328a297d6988d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
