# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Mutex.Variante7f66577077fed41cd6333382263bdda73bdb1aaac230b0cff6033cb3193dd29

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "668308c898823a2afcf1522fd4d32209f6c948fe",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variante7f66577077fed41cd6333382263bdda73bdb1aaac230b0cff6033cb3193dd29.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variante7f66577077fed41cd6333382263bdda73bdb1aaac230b0cff6033cb3193dd29.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variante7f66577077fed41cd6333382263bdda73bdb1aaac230b0cff6033cb3193dd29.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `668308c898823a2afcf1522fd4d32209f6c948fe`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variante7f66577077fed41cd6333382263bdda73bdb1aaac230b0cff6033cb3193dd29.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variante7f66577077fed41cd6333382263bdda73bdb1aaac230b0cff6033cb3193dd29.lean.json)

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
| 1 | `opaque` | [BaseMutexImpl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variante7f66577077fed41cd6333382263bdda73bdb1aaac230b0cff6033cb3193dd29.lean/declarations/basemuteximpl--dac9a0260f0d79dd1ae8ff46.md) | 16 | `declaration-track:dac9a0260f0d79dd1ae8ff46d868776b6adaad90022f9e530f4c4eb09992b764` |
| 2 | `def` | [BaseMutex](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variante7f66577077fed41cd6333382263bdda73bdb1aaac230b0cff6033cb3193dd29.lean/declarations/basemutex--15a94dc88e6d5f8041055c1c.md) | 23 | `declaration-track:15a94dc88e6d5f8041055c1c89258b79b52a3da994eb5679866e67af4f8e0dfd` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variante7f66577077fed41cd6333382263bdda73bdb1aaac230b0cff6033cb3193dd29.lean/declarations/instance--2cbed7a95d61fc0686ab14c6.md) | 25 | `declaration-track:2cbed7a95d61fc0686ab14c6aeb57f3f531dec9257ab416428bc4481e3da824f` |
| 4 | `opaque` | [BaseMutex.new](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variante7f66577077fed41cd6333382263bdda73bdb1aaac230b0cff6033cb3193dd29.lean/declarations/basemutex-new--bfdbc2f10ac3623aea57ff0c.md) | 29 | `declaration-track:bfdbc2f10ac3623aea57ff0cd21bbbe58ffeeb598f72f6594b4f2f97c0d2beb2` |
| 5 | `opaque` | [BaseMutex.lock](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variante7f66577077fed41cd6333382263bdda73bdb1aaac230b0cff6033cb3193dd29.lean/declarations/basemutex-lock--8bb651b63db1561665fb5dcb.md) | 39 | `declaration-track:8bb651b63db1561665fb5dcbfaebb1386d647d2a812fdb119cab7e7de7a14688` |
| 6 | `opaque` | [BaseMutex.tryLock](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variante7f66577077fed41cd6333382263bdda73bdb1aaac230b0cff6033cb3193dd29.lean/declarations/basemutex-trylock--0e0d017be44ce08413d8daa4.md) | 52 | `declaration-track:0e0d017be44ce08413d8daa490236e688c6b71aecd1f908b275d968563eabc88` |
| 7 | `opaque` | [BaseMutex.unlock](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variante7f66577077fed41cd6333382263bdda73bdb1aaac230b0cff6033cb3193dd29.lean/declarations/basemutex-unlock--1a63b90a8e001dcdaaab1c7c.md) | 62 | `declaration-track:1a63b90a8e001dcdaaab1c7c21a55f105225b4bb4a715e47d4c3e37bd1a70c77` |
| 8 | `opaque` | [CondvarImpl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variante7f66577077fed41cd6333382263bdda73bdb1aaac230b0cff6033cb3193dd29.lean/declarations/condvarimpl--8eff939e7a8ae7662741d307.md) | 64 | `declaration-track:8eff939e7a8ae7662741d307125a1f74fdb2b63ff1e38f65986cf3154c2a31d8` |
| 9 | `def` | [Condvar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variante7f66577077fed41cd6333382263bdda73bdb1aaac230b0cff6033cb3193dd29.lean/declarations/condvar--7390af7a80b898ee3a63a5a2.md) | 87 | `declaration-track:7390af7a80b898ee3a63a5a265597e6ae720f2b4abda7efba42c0e50cd3e9986` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variante7f66577077fed41cd6333382263bdda73bdb1aaac230b0cff6033cb3193dd29.lean/declarations/instance--28e115e9f6342f0743e95b2b.md) | 89 | `declaration-track:28e115e9f6342f0743e95b2b15a92ad2f40d35c339559fa1b63b099d1fcc9fd7` |
| 11 | `opaque` | [Condvar.new](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variante7f66577077fed41cd6333382263bdda73bdb1aaac230b0cff6033cb3193dd29.lean/declarations/condvar-new--ac6a5e442d36d7217e729595.md) | 93 | `declaration-track:ac6a5e442d36d7217e729595c7c2ac09978b3a2eda1a5254d35e06a7a0e62d22` |
| 12 | `opaque` | [Condvar.wait](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variante7f66577077fed41cd6333382263bdda73bdb1aaac230b0cff6033cb3193dd29.lean/declarations/condvar-wait--e3819a9d2a465e28a73fbac3.md) | 97 | `declaration-track:e3819a9d2a465e28a73fbac3fa247fd4bf03e4ca3bd938f100d16c71225127a0` |
| 13 | `opaque` | [Condvar.notifyOne](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variante7f66577077fed41cd6333382263bdda73bdb1aaac230b0cff6033cb3193dd29.lean/declarations/condvar-notifyone--0b4826b8bb777266916d4281.md) | 101 | `declaration-track:0b4826b8bb777266916d428173f80fd60d605958f7d92bf4a0a852eeb9161b53` |
| 14 | `opaque` | [Condvar.notifyAll](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variante7f66577077fed41cd6333382263bdda73bdb1aaac230b0cff6033cb3193dd29.lean/declarations/condvar-notifyall--e4322c540e21a7b1f6fc2d60.md) | 105 | `declaration-track:e4322c540e21a7b1f6fc2d60ac08f51dee1252f44020defdcd68a444b059a409` |
| 15 | `def` | [Condvar.waitUntil](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variante7f66577077fed41cd6333382263bdda73bdb1aaac230b0cff6033cb3193dd29.lean/declarations/condvar-waituntil--43163dd322bda3fe0b32f338.md) | 108 | `declaration-track:43163dd322bda3fe0b32f3380bd6395ffda0e7f9e979d8b0ee496aa37ede9135` |
| 16 | `structure` | [Mutex](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variante7f66577077fed41cd6333382263bdda73bdb1aaac230b0cff6033cb3193dd29.lean/declarations/mutex--93424da9f8aeb069f1755d65.md) | 119 | `declaration-track:93424da9f8aeb069f1755d651ff07471e050b87048d3abc5fa58d04677347b4c` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variante7f66577077fed41cd6333382263bdda73bdb1aaac230b0cff6033cb3193dd29.lean/declarations/instance--60d995ee03c2e54393c6d174.md) | 124 | `declaration-track:60d995ee03c2e54393c6d1747fa5fbb406c3faa081c0b18e3d6183446772e3c2` |
| 18 | `def` | [Mutex.new](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variante7f66577077fed41cd6333382263bdda73bdb1aaac230b0cff6033cb3193dd29.lean/declarations/mutex-new--f508d9b46014b2a46ce1edbc.md) | 127 | `declaration-track:f508d9b46014b2a46ce1edbcb3a8e65079e7505fb49fddab83f7b350d9bdf6ab` |
| 19 | `def` | [Mutex.atomically](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variante7f66577077fed41cd6333382263bdda73bdb1aaac230b0cff6033cb3193dd29.lean/declarations/mutex-atomically--406a8b12d2a53914e1b5e61e.md) | 136 | `declaration-track:406a8b12d2a53914e1b5e61edca10f3d14a2ef7a207293e78538700dfeb4d66a` |
| 20 | `def` | [Mutex.tryAtomically](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variante7f66577077fed41cd6333382263bdda73bdb1aaac230b0cff6033cb3193dd29.lean/declarations/mutex-tryatomically--77cb95899a2d9d163bc81454.md) | 152 | `declaration-track:77cb95899a2d9d163bc814541f5fbb96f7ca7e4bb8c48eb678efe838b36729c5` |
| 21 | `def` | [Mutex.atomicallyOnce](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variante7f66577077fed41cd6333382263bdda73bdb1aaac230b0cff6033cb3193dd29.lean/declarations/mutex-atomicallyonce--5cbecd5ed2d46d80300397ac.md) | 169 | `declaration-track:5cbecd5ed2d46d80300397acf792fba41c3dbc87212623707de8652e3a2440ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
