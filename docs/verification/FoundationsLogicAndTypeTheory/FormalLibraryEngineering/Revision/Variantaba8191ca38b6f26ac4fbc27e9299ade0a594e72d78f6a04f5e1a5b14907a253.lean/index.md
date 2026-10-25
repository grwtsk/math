# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Revision.Variantaba8191ca38b6f26ac4fbc27e9299ade0a594e72d78f6a04f5e1a5b14907a253

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ed593c97a58f0e0fce0f754cae14a77bddf3eaf",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantaba8191ca38b6f26ac4fbc27e9299ade0a594e72d78f6a04f5e1a5b14907a253.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantaba8191ca38b6f26ac4fbc27e9299ade0a594e72d78f6a04f5e1a5b14907a253.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantaba8191ca38b6f26ac4fbc27e9299ade0a594e72d78f6a04f5e1a5b14907a253.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ed593c97a58f0e0fce0f754cae14a77bddf3eaf`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantaba8191ca38b6f26ac4fbc27e9299ade0a594e72d78f6a04f5e1a5b14907a253.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantaba8191ca38b6f26ac4fbc27e9299ade0a594e72d78f6a04f5e1a5b14907a253.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [revisionModulus](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantaba8191ca38b6f26ac4fbc27e9299ade0a594e72d78f6a04f5e1a5b14907a253.lean/declarations/revisionmodulus--3e4fbecf4a1361f29381abaf.md) | 29 | `declaration-track:3e4fbecf4a1361f29381abaf0a44b297cb5a263d8ae4aeee07a952607e0ccee7` |
| 2 | `abbrev` | [Revision](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantaba8191ca38b6f26ac4fbc27e9299ade0a594e72d78f6a04f5e1a5b14907a253.lean/declarations/revision--621de0906675a5af5fc358f6.md) | 32 | `declaration-track:621de0906675a5af5fc358f6652eeac033bd98639231c38235e73a23a622df9f` |
| 3 | `def` | [next?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantaba8191ca38b6f26ac4fbc27e9299ade0a594e72d78f6a04f5e1a5b14907a253.lean/declarations/next--cedc5a197550bd769e1e0094.md) | 37 | `declaration-track:cedc5a197550bd769e1e009466ac3f2ca34613cb061581cb9203bfda98be51ae` |
| 4 | `theorem` | [next?_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantaba8191ca38b6f26ac4fbc27e9299ade0a594e72d78f6a04f5e1a5b14907a253.lean/declarations/next-sound--0e5b0137de78c3038e64c426.md) | 45 | `result-track:0e5b0137de78c3038e64c4269ebb67e725f12300ce996bc435851ab4dfeeb015` |
| 5 | `theorem` | [next?_strict](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantaba8191ca38b6f26ac4fbc27e9299ade0a594e72d78f6a04f5e1a5b14907a253.lean/declarations/next-strict--059c3eba1f86f7164c51c93a.md) | 55 | `result-track:059c3eba1f86f7164c51c93a572cc52330b7187dc2cfee710de20f72f02343bf` |
| 6 | `theorem` | [next?_eq_none_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantaba8191ca38b6f26ac4fbc27e9299ade0a594e72d78f6a04f5e1a5b14907a253.lean/declarations/next-eq-none-iff--4ef94e55d16505327388251d.md) | 64 | `result-track:4ef94e55d16505327388251d5bded95e674fe90c77d33baca9aec50440e00aec` |
| 7 | `structure` | [RevisionedXYZ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantaba8191ca38b6f26ac4fbc27e9299ade0a594e72d78f6a04f5e1a5b14907a253.lean/declarations/revisionedxyz--814a5b54be01ce79de0b276e.md) | 72 | `declaration-track:814a5b54be01ce79de0b276e731c086fb193e9ea6e4ba695bd0701e824030472` |
| 8 | `structure` | [LwwRegister](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantaba8191ca38b6f26ac4fbc27e9299ade0a594e72d78f6a04f5e1a5b14907a253.lean/declarations/lwwregister--2e89349c36feefd05d969b4a.md) | 79 | `declaration-track:2e89349c36feefd05d969b4aa5dd5439229ed404f5e51f217d8358aa89f67c5d` |
| 9 | `inductive` | [MergeDecision](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantaba8191ca38b6f26ac4fbc27e9299ade0a594e72d78f6a04f5e1a5b14907a253.lean/declarations/mergedecision--f0df5796b546b2e0af2a9356.md) | 85 | `declaration-track:f0df5796b546b2e0af2a935661b8561c6580f7a486e527a6ad24662ccb22c42b` |
| 10 | `def` | [merge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantaba8191ca38b6f26ac4fbc27e9299ade0a594e72d78f6a04f5e1a5b14907a253.lean/declarations/merge--a51637c8e70a2ca3f229d582.md) | 93 | `declaration-track:a51637c8e70a2ca3f229d58227c6c6ffe2863fe51721372ec55d6027ee697eed` |
| 11 | `def` | [MergeDecision.result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantaba8191ca38b6f26ac4fbc27e9299ade0a594e72d78f6a04f5e1a5b14907a253.lean/declarations/mergedecision-result--4f38cb2d7d7e338d0459f383.md) | 110 | `declaration-track:4f38cb2d7d7e338d0459f383016b2e594e5e34b40a9fafa0d53832f58aa9cf70` |
| 12 | `def` | [LwwRegister.apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantaba8191ca38b6f26ac4fbc27e9299ade0a594e72d78f6a04f5e1a5b14907a253.lean/declarations/lwwregister-apply--aea534178a1360f47e9ae1cd.md) | 119 | `declaration-track:aea534178a1360f47e9ae1cd348b2febb7a47f0aac73345415816d98a2ff2e0d` |
| 13 | `theorem` | [merge_deterministic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantaba8191ca38b6f26ac4fbc27e9299ade0a594e72d78f6a04f5e1a5b14907a253.lean/declarations/merge-deterministic--57edd8f9be591ebbf154ea07.md) | 126 | `result-track:57edd8f9be591ebbf154ea07a2faa03581650cea6c3bcc61b8ff732a66268d26` |
| 14 | `theorem` | [staleRevision_rejected](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantaba8191ca38b6f26ac4fbc27e9299ade0a594e72d78f6a04f5e1a5b14907a253.lean/declarations/stalerevision-rejected--9006f3e78928c2fbf80b7bbe.md) | 136 | `result-track:9006f3e78928c2fbf80b7bbed30be1925cfb716545b6e63b659b58ec00807316` |
| 15 | `theorem` | [equalRevision_conflict_rejected](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantaba8191ca38b6f26ac4fbc27e9299ade0a594e72d78f6a04f5e1a5b14907a253.lean/declarations/equalrevision-conflict-rejected--503c012b8a156e0a63fae86e.md) | 144 | `result-track:503c012b8a156e0a63fae86e9c2b183f01b2d623a3eb297535ef310acd67f1b1` |
| 16 | `theorem` | [equalRevision_identical_replay](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantaba8191ca38b6f26ac4fbc27e9299ade0a594e72d78f6a04f5e1a5b14907a253.lean/declarations/equalrevision-identical-replay--d3ace7bef704c87fb3d67e69.md) | 153 | `result-track:d3ace7bef704c87fb3d67e69cf52313c391c847d1d6e69fdf36eb69c760554d2` |
| 17 | `theorem` | [acceptedRevision_not_stale](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantaba8191ca38b6f26ac4fbc27e9299ade0a594e72d78f6a04f5e1a5b14907a253.lean/declarations/acceptedrevision-not-stale--718be970a68f52d988d1b62a.md) | 163 | `result-track:718be970a68f52d988d1b62a39f14d78e578d5f602a44436c8e1e17a376aa26e` |
| 18 | `theorem` | [merge_revision_monotone](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantaba8191ca38b6f26ac4fbc27e9299ade0a594e72d78f6a04f5e1a5b14907a253.lean/declarations/merge-revision-monotone--76b3c4e2e2291f4a4e5f54cd.md) | 172 | `result-track:76b3c4e2e2291f4a4e5f54cdad510c3283a0aa912323722cd7bb7a6f14871810` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
