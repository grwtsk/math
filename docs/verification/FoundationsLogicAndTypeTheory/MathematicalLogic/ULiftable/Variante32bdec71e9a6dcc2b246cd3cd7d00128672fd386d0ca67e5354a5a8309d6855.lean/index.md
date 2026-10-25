# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ULiftable.Variante32bdec71e9a6dcc2b246cd3cd7d00128672fd386d0ca67e5354a5a8309d6855

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d9a31960cc9a2201a2cf3b34ab0b3a2eb9c9867",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variante32bdec71e9a6dcc2b246cd3cd7d00128672fd386d0ca67e5354a5a8309d6855.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variante32bdec71e9a6dcc2b246cd3cd7d00128672fd386d0ca67e5354a5a8309d6855.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variante32bdec71e9a6dcc2b246cd3cd7d00128672fd386d0ca67e5354a5a8309d6855.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d9a31960cc9a2201a2cf3b34ab0b3a2eb9c9867`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variante32bdec71e9a6dcc2b246cd3cd7d00128672fd386d0ca67e5354a5a8309d6855.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variante32bdec71e9a6dcc2b246cd3cd7d00128672fd386d0ca67e5354a5a8309d6855.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.Monad.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Monad.Cont` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Monad.Writer` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Functor` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Lawful` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ULiftable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variante32bdec71e9a6dcc2b246cd3cd7d00128672fd386d0ca67e5354a5a8309d6855.lean/declarations/uliftable--40cec744859e71e4aaa4d975.md) | 49 | `declaration-track:40cec744859e71e4aaa4d97557d4a835c6101f25e6a53554fd5a11685b7c965f` |
| 2 | `abbrev` | [symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variante32bdec71e9a6dcc2b246cd3cd7d00128672fd386d0ca67e5354a5a8309d6855.lean/declarations/symm--a925bf3251b96075b74853eb.md) | 56 | `declaration-track:a925bf3251b96075b74853ebd7f5905cf9926f3d9650a175e60a0315d4bba794` |
| 3 | `instance` | [refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variante32bdec71e9a6dcc2b246cd3cd7d00128672fd386d0ca67e5354a5a8309d6855.lean/declarations/refl--aa3bc1836fb26873d343e0d8.md) | 59 | `declaration-track:aa3bc1836fb26873d343e0d863a30475a43342a0ffee4cab94c054bea3c976a1` |
| 4 | `abbrev` | [up](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variante32bdec71e9a6dcc2b246cd3cd7d00128672fd386d0ca67e5354a5a8309d6855.lean/declarations/up--4a93fced0abd2bb90730d7c2.md) | 64 | `declaration-track:4a93fced0abd2bb90730d7c2cbb77061233ecc52daf0d1960e85964e92f34544` |
| 5 | `abbrev` | [down](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variante32bdec71e9a6dcc2b246cd3cd7d00128672fd386d0ca67e5354a5a8309d6855.lean/declarations/down--24edf938fb70f44fe03fb104.md) | 70 | `declaration-track:24edf938fb70f44fe03fb104d820895325c322b13966fbcf6f15ff2b7bb4de9a` |
| 6 | `def` | [adaptUp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variante32bdec71e9a6dcc2b246cd3cd7d00128672fd386d0ca67e5354a5a8309d6855.lean/declarations/adaptup--2e08307cacddf251b2ae199d.md) | 75 | `declaration-track:2e08307cacddf251b2ae199d069e68ab853c1b1bb77ddc83f54c6a79682e3c9a` |
| 7 | `def` | [adaptDown](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variante32bdec71e9a6dcc2b246cd3cd7d00128672fd386d0ca67e5354a5a8309d6855.lean/declarations/adaptdown--6787abf6e074a988242d5f33.md) | 80 | `declaration-track:6787abf6e074a988242d5f33cbd8babbf6085cb6e5b101f29c0b93849136397a` |
| 8 | `def` | [upMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variante32bdec71e9a6dcc2b246cd3cd7d00128672fd386d0ca67e5354a5a8309d6855.lean/declarations/upmap--4ed8a037785ca40c58ba3cde.md) | 85 | `declaration-track:4ed8a037785ca40c58ba3cde700664d72f7a28a2e5942139db2c6e03da426ef5` |
| 9 | `def` | [downMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variante32bdec71e9a6dcc2b246cd3cd7d00128672fd386d0ca67e5354a5a8309d6855.lean/declarations/downmap--afc5de767c9af8e3b599b45c.md) | 90 | `declaration-track:afc5de767c9af8e3b599b45c36b6992536e8ed821ac08b47dffe2acbe0400680` |
| 10 | `abbrev` | [up'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variante32bdec71e9a6dcc2b246cd3cd7d00128672fd386d0ca67e5354a5a8309d6855.lean/declarations/up--93a0a5936666376bf7c6fe4e.md) | 95 | `declaration-track:93a0a5936666376bf7c6fe4ec48b9eff2d69aa57f6f95f3ff8b9d0b6ca0db8bf` |
| 11 | `abbrev` | [down'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variante32bdec71e9a6dcc2b246cd3cd7d00128672fd386d0ca67e5354a5a8309d6855.lean/declarations/down--061476d1c99d5f943714a9f6.md) | 100 | `declaration-track:061476d1c99d5f943714a9f673954181fc691614253e0376f1d7d3b79212a487` |
| 12 | `theorem` | [up_down](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variante32bdec71e9a6dcc2b246cd3cd7d00128672fd386d0ca67e5354a5a8309d6855.lean/declarations/up-down--4f44d38e69bb5c7b1f37755e.md) | 104 | `result-track:4f44d38e69bb5c7b1f37755ee39e0a8fc4f4bde6751424a7ef271b04fe972309` |
| 13 | `theorem` | [down_up](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variante32bdec71e9a6dcc2b246cd3cd7d00128672fd386d0ca67e5354a5a8309d6855.lean/declarations/down-up--20fe5c7be42e6b5c2e3f00bd.md) | 108 | `result-track:20fe5c7be42e6b5c2e3f00bd0e7fb53e8ce22fc6ea0ad4ac7de02fe9131766ed` |
| 14 | `instance` | [instULiftableId](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variante32bdec71e9a6dcc2b246cd3cd7d00128672fd386d0ca67e5354a5a8309d6855.lean/declarations/instuliftableid--64476c4b08b90e15d18ac544.md) | 116 | `declaration-track:64476c4b08b90e15d18ac544a1e3426bc47cda4937163b7b3f3770a4c3401596` |
| 15 | `def` | [StateT.uliftable'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variante32bdec71e9a6dcc2b246cd3cd7d00128672fd386d0ca67e5354a5a8309d6855.lean/declarations/statet-uliftable--774943665d003d9580c83152.md) | 120 | `declaration-track:774943665d003d9580c83152b4e737942d3e3fa4e76cfe36bfae3c9f5bf9f4b9` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variante32bdec71e9a6dcc2b246cd3cd7d00128672fd386d0ca67e5354a5a8309d6855.lean/declarations/instance--95f0fdfde53b416ee896315f.md) | 125 | `declaration-track:95f0fdfde53b416ee896315fd84b86d889842371e35f93d5f9f201e5e9d173b3` |
| 17 | `instance` | [StateT.instULiftableULiftULift](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variante32bdec71e9a6dcc2b246cd3cd7d00128672fd386d0ca67e5354a5a8309d6855.lean/declarations/statet-instuliftableuliftulift--db016dd0352d755dc9e92067.md) | 128 | `declaration-track:db016dd0352d755dc9e9206788403fbc05cf23f63bf2b9aec029360ba052508a` |
| 18 | `def` | [ReaderT.uliftable'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variante32bdec71e9a6dcc2b246cd3cd7d00128672fd386d0ca67e5354a5a8309d6855.lean/declarations/readert-uliftable--761027c36396b8b78be2e6ca.md) | 133 | `declaration-track:761027c36396b8b78be2e6ca107d533d46d7bb14a2fd3c1ac445d2b69f45def8` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variante32bdec71e9a6dcc2b246cd3cd7d00128672fd386d0ca67e5354a5a8309d6855.lean/declarations/instance--6ff67b3b3367def33f0d3c77.md) | 137 | `declaration-track:6ff67b3b3367def33f0d3c773a77d86bb9f183a3ebf40da4b7cd1e1ce7781760` |
| 20 | `instance` | [ReaderT.instULiftableULiftULift](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variante32bdec71e9a6dcc2b246cd3cd7d00128672fd386d0ca67e5354a5a8309d6855.lean/declarations/readert-instuliftableuliftulift--43c5a3e8add9953bcc5bc821.md) | 140 | `declaration-track:43c5a3e8add9953bcc5bc821dd11004403515fba1b6c04639b44dbc63509cb0a` |
| 21 | `def` | [ContT.uliftable'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variante32bdec71e9a6dcc2b246cd3cd7d00128672fd386d0ca67e5354a5a8309d6855.lean/declarations/contt-uliftable--7f319deca4776e93dd5c47ae.md) | 145 | `declaration-track:7f319deca4776e93dd5c47ae33fc21acdba268081c1265d8c4efe598ac55fe00` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variante32bdec71e9a6dcc2b246cd3cd7d00128672fd386d0ca67e5354a5a8309d6855.lean/declarations/instance--86c7b6bbf79120be6c0b41c1.md) | 149 | `declaration-track:86c7b6bbf79120be6c0b41c14ede9c59a8fb66bee7911d313bb9945cd1ddf83c` |
| 23 | `instance` | [ContT.instULiftableULiftULift](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variante32bdec71e9a6dcc2b246cd3cd7d00128672fd386d0ca67e5354a5a8309d6855.lean/declarations/contt-instuliftableuliftulift--e2e0f17ea49c27ee7fc3ddc8.md) | 152 | `declaration-track:e2e0f17ea49c27ee7fc3ddc890e72666532dcee050c0fdcb56d1dc577e59e7c9` |
| 24 | `def` | [WriterT.uliftable'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variante32bdec71e9a6dcc2b246cd3cd7d00128672fd386d0ca67e5354a5a8309d6855.lean/declarations/writert-uliftable--919bdbed2db4b9b2e76f3d7c.md) | 157 | `declaration-track:919bdbed2db4b9b2e76f3d7cd90c06d3dcc4788f43e5d934000dc3d4cd397426` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variante32bdec71e9a6dcc2b246cd3cd7d00128672fd386d0ca67e5354a5a8309d6855.lean/declarations/instance--0a51a08474c3576a3fe6073f.md) | 161 | `declaration-track:0a51a08474c3576a3fe6073f013c1a6891d30280c9ddef8cf42bb19de4a3bfeb` |
| 26 | `instance` | [WriterT.instULiftableULiftULift](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variante32bdec71e9a6dcc2b246cd3cd7d00128672fd386d0ca67e5354a5a8309d6855.lean/declarations/writert-instuliftableuliftulift--4b2641284aecd16653168f4d.md) | 164 | `declaration-track:4b2641284aecd16653168f4d43f67e5d564cf85219c6966a51015fef590b2c61` |
| 27 | `instance` | [Except.instULiftable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variante32bdec71e9a6dcc2b246cd3cd7d00128672fd386d0ca67e5354a5a8309d6855.lean/declarations/except-instuliftable--d09a43833a1e10b4fc38ac31.md) | 168 | `declaration-track:d09a43833a1e10b4fc38ac31f3553aa68314ac1b40f2058363851c8c83876da9` |
| 28 | `instance` | [Option.instULiftable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variante32bdec71e9a6dcc2b246cd3cd7d00128672fd386d0ca67e5354a5a8309d6855.lean/declarations/option-instuliftable--049bde058b333d7b2e84928d.md) | 175 | `declaration-track:049bde058b333d7b2e84928d6c1855892d4d817a43f62127ad1b67e60466fbb4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
