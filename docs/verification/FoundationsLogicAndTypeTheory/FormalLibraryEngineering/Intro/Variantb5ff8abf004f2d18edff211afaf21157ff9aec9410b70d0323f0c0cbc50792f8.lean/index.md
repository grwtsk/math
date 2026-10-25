# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Intro.Variantb5ff8abf004f2d18edff211afaf21157ff9aec9410b70d0323f0c0cbc50792f8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "85653d8956e3ac9952558d4e6fb74ab4eaa4b09b",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variantb5ff8abf004f2d18edff211afaf21157ff9aec9410b70d0323f0c0cbc50792f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variantb5ff8abf004f2d18edff211afaf21157ff9aec9410b70d0323f0c0cbc50792f8.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variantb5ff8abf004f2d18edff211afaf21157ff9aec9410b70d0323f0c0cbc50792f8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `85653d8956e3ac9952558d4e6fb74ab4eaa4b09b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variantb5ff8abf004f2d18edff211afaf21157ff9aec9410b70d0323f0c0cbc50792f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variantb5ff8abf004f2d18edff211afaf21157ff9aec9410b70d0323f0c0cbc50792f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Apply` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Util` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.CasesMatch` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Injection` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Core` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.MarkAccessible` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Grind.Util` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [IntroResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variantb5ff8abf004f2d18edff211afaf21157ff9aec9410b70d0323f0c0cbc50792f8.lean/declarations/introresult--96bf5f4e22eeb16a9d1e4df2.md) | 20 | `declaration-track:96bf5f4e22eeb16a9d1e4df28078f255e4c5f09e213bd907ca70c5b4b7fffef8` |
| 2 | `def` | [isAlreadyNorm?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variantb5ff8abf004f2d18edff211afaf21157ff9aec9410b70d0323f0c0cbc50792f8.lean/declarations/isalreadynorm--d7a81ad92a6f1311015ffb9c.md) | 31 | `declaration-track:d7a81ad92a6f1311015ffb9c930d6b5912c4260aa0fc39396c5a27aad62070d2` |
| 3 | `def` | [preprocessHypothesis](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variantb5ff8abf004f2d18edff211afaf21157ff9aec9410b70d0323f0c0cbc50792f8.lean/declarations/preprocesshypothesis--24ad988719736ac1f54a5641.md) | 41 | `declaration-track:24ad988719736ac1f54a5641f16baefbd19cdbecdf8566dffa147fbab783b80b` |
| 4 | `def` | [mkBaseName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variantb5ff8abf004f2d18edff211afaf21157ff9aec9410b70d0323f0c0cbc50792f8.lean/declarations/mkbasename--737c024a76da521cc30f59e2.md) | 54 | `declaration-track:737c024a76da521cc30f59e2bf51d89a05399de829c932a9d126925b277d1855` |
| 5 | `def` | [mkCleanName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variantb5ff8abf004f2d18edff211afaf21157ff9aec9410b70d0323f0c0cbc50792f8.lean/declarations/mkcleanname--f12fc4ddbd4d557d6507ea49.md) | 68 | `declaration-track:f12fc4ddbd4d557d6507ea495e65929e44e6c08eb96c060552c141a5fd0bda1e` |
| 6 | `def` | [intro1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variantb5ff8abf004f2d18edff211afaf21157ff9aec9410b70d0323f0c0cbc50792f8.lean/declarations/intro1--f59daf36bf18d233743bcb5e.md) | 98 | `declaration-track:f59daf36bf18d233743bcb5e65c869dda1d2fb5cb8c57e0b0f746127e76948a3` |
| 7 | `def` | [introNext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variantb5ff8abf004f2d18edff211afaf21157ff9aec9410b70d0323f0c0cbc50792f8.lean/declarations/intronext--3cbddfa3da94c9a7cf8c7bf7.md) | 109 | `declaration-track:3cbddfa3da94c9a7cf8c7bf71c37100dd35f7162220d08cb340571aeeeff5573` |
| 8 | `def` | [isEagerCasesCandidate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variantb5ff8abf004f2d18edff211afaf21157ff9aec9410b70d0323f0c0cbc50792f8.lean/declarations/iseagercasescandidate--46cafd97498cf469e8b60e1b.md) | 185 | `declaration-track:46cafd97498cf469e8b60e1b08963e46db7566612b7697fce176205987603723` |
| 9 | `def` | [isCheapInductive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variantb5ff8abf004f2d18edff211afaf21157ff9aec9410b70d0323f0c0cbc50792f8.lean/declarations/ischeapinductive--1593c63555b910b6990f0e6b.md) | 190 | `declaration-track:1593c63555b910b6990f0e6b44490eef6b670ea55276d6025b6fea07beabdb3a` |
| 10 | `def` | [applyInjection?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variantb5ff8abf004f2d18edff211afaf21157ff9aec9410b70d0323f0c0cbc50792f8.lean/declarations/applyinjection--ed28b5a7a5aae48a67f0aef4.md) | 195 | `declaration-track:ed28b5a7a5aae48a67f0aef4d57aed1efa53ffe983c884de777585e36cc33493` |
| 11 | `def` | [exfalsoIfNotProp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variantb5ff8abf004f2d18edff211afaf21157ff9aec9410b70d0323f0c0cbc50792f8.lean/declarations/exfalsoifnotprop--fc5be49c6b0d13505cc9e74b.md) | 201 | `declaration-track:fc5be49c6b0d13505cc9e74b18b6dfcd842d8834e97f1dee10606a8c2ab3e02d` |
| 12 | `def` | [Goal.lastDecl?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variantb5ff8abf004f2d18edff211afaf21157ff9aec9410b70d0323f0c0cbc50792f8.lean/declarations/goal-lastdecl--5582012cb5917c92401d301c.md) | 207 | `declaration-track:5582012cb5917c92401d301c5c2e4dc8b7e848ca3214ab2d639c82f2bca51c90` |
| 13 | `def` | [applyCases?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variantb5ff8abf004f2d18edff211afaf21157ff9aec9410b70d0323f0c0cbc50792f8.lean/declarations/applycases--e8b66dbc65f15a71c8ce5943.md) | 212 | `declaration-track:e8b66dbc65f15a71c8ce59437bbca7803777b36b5ac213f6dbe22fe6d35fcd6d` |
| 14 | `def` | [intro](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variantb5ff8abf004f2d18edff211afaf21157ff9aec9410b70d0323f0c0cbc50792f8.lean/declarations/intro--23ce636033c485d2da69e6e3.md) | 236 | `declaration-track:23ce636033c485d2da69e6e338821be307d161b1c20e5e7afbb119be4701c4c4` |
| 15 | `def` | [hugeNumber](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variantb5ff8abf004f2d18edff211afaf21157ff9aec9410b70d0323f0c0cbc50792f8.lean/declarations/hugenumber--7ae69785394352bca0fe35da.md) | 264 | `declaration-track:7ae69785394352bca0fe35da9f2700cf27450363bbab24c3a45166fa9414a4a7` |
| 16 | `def` | [intros](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variantb5ff8abf004f2d18edff211afaf21157ff9aec9410b70d0323f0c0cbc50792f8.lean/declarations/intros--c8b439b63d2af61eb2f0a5f3.md) | 266 | `declaration-track:c8b439b63d2af61eb2f0a5f34afc5b8abdba2fed02e3df3f722bdf1756e6e546` |
| 17 | `def` | [assertAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variantb5ff8abf004f2d18edff211afaf21157ff9aec9410b70d0323f0c0cbc50792f8.lean/declarations/assertat--0675620f1dc5090cd7cd77fe.md) | 270 | `declaration-track:0675620f1dc5090cd7cd77fe660dbae445941a546c342005cfee7428b4758b79` |
| 18 | `def` | [assertNext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variantb5ff8abf004f2d18edff211afaf21157ff9aec9410b70d0323f0c0cbc50792f8.lean/declarations/assertnext--3875212b35cb591bae42f5be.md) | 286 | `declaration-track:3875212b35cb591bae42f5be9bd058e30ab6e63a63913402158b80e0000908db` |
| 19 | `def` | [assertAll](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variantb5ff8abf004f2d18edff211afaf21157ff9aec9410b70d0323f0c0cbc50792f8.lean/declarations/assertall--66b189ff38926865ebe2fe11.md) | 299 | `declaration-track:66b189ff38926865ebe2fe118b175b5648323f043d2b02a9ff03c9a12df9177e` |
| 20 | `def` | [Solvers.mkAction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variantb5ff8abf004f2d18edff211afaf21157ff9aec9410b70d0323f0c0cbc50792f8.lean/declarations/solvers-mkaction--25258bfcc1a3e32952931edb.md) | 313 | `declaration-track:25258bfcc1a3e32952931edbdf8400ce13b5160b8bc9dfe0db20a23d0c2d3e82` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
