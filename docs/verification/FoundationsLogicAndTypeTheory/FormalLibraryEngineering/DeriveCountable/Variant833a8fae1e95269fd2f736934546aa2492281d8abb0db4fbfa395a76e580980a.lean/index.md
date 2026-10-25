# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeriveCountable.Variant833a8fae1e95269fd2f736934546aa2492281d8abb0db4fbfa395a76e580980a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c7f7f49532428ff4307448e2112f3d86caa7138",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant833a8fae1e95269fd2f736934546aa2492281d8abb0db4fbfa395a76e580980a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant833a8fae1e95269fd2f736934546aa2492281d8abb0db4fbfa395a76e580980a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant833a8fae1e95269fd2f736934546aa2492281d8abb0db4fbfa395a76e580980a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c7f7f49532428ff4307448e2112f3d86caa7138`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant833a8fae1e95269fd2f736934546aa2492281d8abb0db4fbfa395a76e580980a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant833a8fae1e95269fd2f736934546aa2492281d8abb0db4fbfa395a76e580980a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Transform` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Inductive` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Elab.Deriving.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Elab.Deriving.Util` — import line 14; external provider; requires a separately pinned dependency.
- `Batteries.Data.NameSet` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Countable.Defs` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Pairing` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [encode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant833a8fae1e95269fd2f736934546aa2492281d8abb0db4fbfa395a76e580980a.lean/declarations/encode--7745ab631fdb35669831f1b6.md) | 68 | `declaration-track:7745ab631fdb35669831f1b696c2f4b96532c63f177ec69fe56ac8d8f7ff1ada` |
| 2 | `def` | [encode_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant833a8fae1e95269fd2f736934546aa2492281d8abb0db4fbfa395a76e580980a.lean/declarations/encode-injective--1765d6ffeccc46fc06733b33.md) | 71 | `declaration-track:1765d6ffeccc46fc06733b33b704c40bf68adfcf9ebab04ed1f59290e48adbbc` |
| 3 | `theorem` | [cons_eq_imp_init](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant833a8fae1e95269fd2f736934546aa2492281d8abb0db4fbfa395a76e580980a.lean/declarations/cons-eq-imp-init--6bde8ae1a80978bd8505562d.md) | 78 | `result-track:6bde8ae1a80978bd8505562d1c4e022a6afd62e152ef3818d81e7e07bf30fca0` |
| 4 | `theorem` | [cons_eq_imp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant833a8fae1e95269fd2f736934546aa2492281d8abb0db4fbfa395a76e580980a.lean/declarations/cons-eq-imp--9796e574f9b05658b51381cb.md) | 86 | `result-track:9796e574f9b05658b51381cbf1d5b522a0d311bbde5c302e418179d999acd4bd` |
| 5 | `theorem` | [pair_encode_step](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant833a8fae1e95269fd2f736934546aa2492281d8abb0db4fbfa395a76e580980a.lean/declarations/pair-encode-step--1105b4e8a24637c861a6d5a4.md) | 93 | `result-track:1105b4e8a24637c861a6d5a4f49fcecd61b55a5d9d719a2999313219aad94be9` |
| 6 | `def` | [mkToNatMatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant833a8fae1e95269fd2f736934546aa2492281d8abb0db4fbfa395a76e580980a.lean/declarations/mktonatmatch--1b7793249fae195abda28cc2.md) | 107 | `declaration-track:1b7793249fae195abda28cc20f9d001f13dd09dd3c6ecf1ded61b3182183b2dd` |
| 7 | `def` | [mkToNatFuns](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant833a8fae1e95269fd2f736934546aa2492281d8abb0db4fbfa395a76e580980a.lean/declarations/mktonatfuns--d45ee9ad847aa783ed3f0630.md) | 143 | `declaration-track:d45ee9ad847aa783ed3f0630a4099c404656fd4415f7119f5663f8362ee6f12e` |
| 8 | `def` | [$](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant833a8fae1e95269fd2f736934546aa2492281d8abb0db4fbfa395a76e580980a.lean/declarations/anonymous--e7659a8a15a42b2ed67622fe.md) | 152 | `declaration-track:e7659a8a15a42b2ed67622fedf942500082ac25c94cf24e076b0471c64969128` |
| 9 | `def` | [mkInjThmMatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant833a8fae1e95269fd2f736934546aa2492281d8abb0db4fbfa395a76e580980a.lean/declarations/mkinjthmmatch--32fc01566f999a81550870a9.md) | 161 | `declaration-track:32fc01566f999a81550870a925e7a8bda37e9135e24467df03344efefbf3d5be` |
| 10 | `def` | [mkInjThms](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant833a8fae1e95269fd2f736934546aa2492281d8abb0db4fbfa395a76e580980a.lean/declarations/mkinjthms--54a4b9bf2709436ec58c1862.md) | 204 | `declaration-track:54a4b9bf2709436ec58c1862f8b70792777e29689c9f6487ffa50021fbeecfcb` |
| 11 | `theorem` | [$](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant833a8fae1e95269fd2f736934546aa2492281d8abb0db4fbfa395a76e580980a.lean/declarations/anonymous--779e55fe0b3a5559f4e01b7c.md) | 217 | `result-track:779e55fe0b3a5559f4e01b7ce358a19a3ae831fe0b37acbc4736cdaabf3afcee` |
| 12 | `def` | [mkCountableInstanceCmds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant833a8fae1e95269fd2f736934546aa2492281d8abb0db4fbfa395a76e580980a.lean/declarations/mkcountableinstancecmds--00e81650066c13d4ea38a5b9.md) | 229 | `declaration-track:00e81650066c13d4ea38a5b9de5d52c8e2845af72535717d1186c74014b19bbc` |
| 13 | `def` | [mkCountableCmds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant833a8fae1e95269fd2f736934546aa2492281d8abb0db4fbfa395a76e580980a.lean/declarations/mkcountablecmds--1babdcab882831eea909bb3e.md) | 246 | `declaration-track:1babdcab882831eea909bb3ec57c6d3afa1bb5dc904a2ee9188b5c21ca4fcf0c` |
| 14 | `def` | [mkCountableInstance](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant833a8fae1e95269fd2f736934546aa2492281d8abb0db4fbfa395a76e580980a.lean/declarations/mkcountableinstance--c8658c81f6656e5aa1f173a8.md) | 265 | `declaration-track:c8658c81f6656e5aa1f173a82321024335493b828b79e51e74369a8f4c9173b0` |
| 15 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant833a8fae1e95269fd2f736934546aa2492281d8abb0db4fbfa395a76e580980a.lean/declarations/initialize--3417c89bd00a2afbac3da110.md) | 281 | `declaration-track:3417c89bd00a2afbac3da110080048242d81d39e6c1ef61f7c9167a1a301d08a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
