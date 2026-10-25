# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Trans.Variante62f2d88094264d9641540a8a639d53ef2230f7bd6fc7466ce2876783ff545ee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "76b1dcc7dd88f016d4aa20af3315575aa18da9b1",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variante62f2d88094264d9641540a8a639d53ef2230f7bd6fc7466ce2876783ff545ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variante62f2d88094264d9641540a8a639d53ef2230f7bd6fc7466ce2876783ff545ee.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variante62f2d88094264d9641540a8a639d53ef2230f7bd6fc7466ce2876783ff545ee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `76b1dcc7dd88f016d4aa20af3315575aa18da9b1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variante62f2d88094264d9641540a8a639d53ef2230f7bd6fc7466ce2876783ff545ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variante62f2d88094264d9641540a8a639d53ef2230f7bd6fc7466ce2876783ff545ee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Tactic.Trans` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nleq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variante62f2d88094264d9641540a8a639d53ef2230f7bd6fc7466ce2876783ff545ee.lean/declarations/nleq--495e2cedc8ab72de75192e57.md) | 4 | `declaration-track:495e2cedc8ab72de75192e5753016df25c0f3ed01b8b60e2633069ca84f6a146` |
| 2 | `theorem` | [nleq_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variante62f2d88094264d9641540a8a639d53ef2230f7bd6fc7466ce2876783ff545ee.lean/declarations/nleq-trans--002b9502e28686ea22bdfc6f.md) | 6 | `result-track:002b9502e28686ea22bdfc6f601d4eef220f3b1a34d0e86c2875f3c2ede1635a` |
| 3 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variante62f2d88094264d9641540a8a639d53ef2230f7bd6fc7466ce2876783ff545ee.lean/declarations/example--660121a88756ee102f439e3c.md) | 8 | `declaration-track:660121a88756ee102f439e3c616782e060e167416431ab37a15cd15333117f52` |
| 4 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variante62f2d88094264d9641540a8a639d53ef2230f7bd6fc7466ce2876783ff545ee.lean/declarations/example--5cc95a5a85c3c0ddb4f9e296.md) | 14 | `declaration-track:5cc95a5a85c3c0ddb4f9e2964cf8706f756d6ad341e3467f692b4c51b11079b6` |
| 5 | `theorem` | [eq_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variante62f2d88094264d9641540a8a639d53ef2230f7bd6fc7466ce2876783ff545ee.lean/declarations/eq-trans--f6aa423875b6d0e99d45abd3.md) | 17 | `result-track:f6aa423875b6d0e99d45abd3ae76812d38bbbffef03a3fd37efdecafed539459` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variante62f2d88094264d9641540a8a639d53ef2230f7bd6fc7466ce2876783ff545ee.lean/declarations/example--4e418dc368bc326383907ca0.md) | 21 | `declaration-track:4e418dc368bc326383907ca04a7b4ecb9d5bd2e0f5c7bfaaf83a48d5fad6874a` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variante62f2d88094264d9641540a8a639d53ef2230f7bd6fc7466ce2876783ff545ee.lean/declarations/example--05e671eb02cba947b2acff3a.md) | 23 | `declaration-track:05e671eb02cba947b2acff3acd0b100fdd172c913fb6335f3e43afba0322695f` |
| 8 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variante62f2d88094264d9641540a8a639d53ef2230f7bd6fc7466ce2876783ff545ee.lean/declarations/example--585c3fef3a74ce6ed5f3b9ff.md) | 29 | `declaration-track:585c3fef3a74ce6ed5f3b9ff6695df4e243ddcb2a7be72d7b6d4675ff1aab41b` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variante62f2d88094264d9641540a8a639d53ef2230f7bd6fc7466ce2876783ff545ee.lean/declarations/example--28f6d79e5461b2bfc96e7d04.md) | 31 | `declaration-track:28f6d79e5461b2bfc96e7d041bfd73b191bafe38806cbf510290da117080ab4d` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variante62f2d88094264d9641540a8a639d53ef2230f7bd6fc7466ce2876783ff545ee.lean/declarations/example--735a586ef4590be941be3c30.md) | 38 | `declaration-track:735a586ef4590be941be3c30a1179f29a01d310df6c41270817a7c2a30aadd71` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variante62f2d88094264d9641540a8a639d53ef2230f7bd6fc7466ce2876783ff545ee.lean/declarations/example--fef147ea11e254eb2fc87924.md) | 45 | `declaration-track:fef147ea11e254eb2fc879248ff4203ed056bcd9eb29d1a5b7ddbd64630741bb` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variante62f2d88094264d9641540a8a639d53ef2230f7bd6fc7466ce2876783ff545ee.lean/declarations/example--8db3a632ca6de1f1c879375d.md) | 51 | `declaration-track:8db3a632ca6de1f1c879375d612d01ff583f99b701a4527e039fe61dfdd7abcb` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variante62f2d88094264d9641540a8a639d53ef2230f7bd6fc7466ce2876783ff545ee.lean/declarations/example--047a54c280b670c0c3ef8b50.md) | 53 | `declaration-track:047a54c280b670c0c3ef8b50fd453f9b27bd08d35f5a97c02a86aa533fda83c6` |
| 14 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variante62f2d88094264d9641540a8a639d53ef2230f7bd6fc7466ce2876783ff545ee.lean/declarations/example--2303373d9ef5aca4ab14b4a5.md) | 59 | `declaration-track:2303373d9ef5aca4ab14b4a5abaf82399f9a9fc2ed76ab038e5aebd9f0ea7604` |
| 15 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variante62f2d88094264d9641540a8a639d53ef2230f7bd6fc7466ce2876783ff545ee.lean/declarations/example--3ef5ff09b1137e964878fad4.md) | 61 | `declaration-track:3ef5ff09b1137e964878fad47c6dcb2eba165439efe918abc0e38821ccae9350` |
| 16 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variante62f2d88094264d9641540a8a639d53ef2230f7bd6fc7466ce2876783ff545ee.lean/declarations/example--bd51648b0b49695292de8366.md) | 66 | `declaration-track:bd51648b0b49695292de836617fb8d25258bfa8648b9170a5d673973178d526c` |
| 17 | `def` | [MyLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variante62f2d88094264d9641540a8a639d53ef2230f7bd6fc7466ce2876783ff545ee.lean/declarations/myle--d9a2406416438c466273d35e.md) | 72 | `declaration-track:d9a2406416438c466273d35eeea272ed456ac57987c1b594d0cb657b650810a9` |
| 18 | `theorem` | [MyLE.trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variante62f2d88094264d9641540a8a639d53ef2230f7bd6fc7466ce2876783ff545ee.lean/declarations/myle-trans--ee0565fac1bcf2fec1a5c5a6.md) | 74 | `result-track:ee0565fac1bcf2fec1a5c5a64c22000ee426c1f2c3e7eb6fae7638936597fa9f` |
| 19 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variante62f2d88094264d9641540a8a639d53ef2230f7bd6fc7466ce2876783ff545ee.lean/declarations/example--9e4ec6db3f6932b755a809c0.md) | 80 | `declaration-track:9e4ec6db3f6932b755a809c07a2db6f7d4339d40ea9a74c772e8a550d42194cb` |
| 20 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variante62f2d88094264d9641540a8a639d53ef2230f7bd6fc7466ce2876783ff545ee.lean/declarations/example--b900b32051429a09e187ce96.md) | 84 | `declaration-track:b900b32051429a09e187ce96a9da73fbe55c40660ed323520d2f68de940ca4a7` |
| 21 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variante62f2d88094264d9641540a8a639d53ef2230f7bd6fc7466ce2876783ff545ee.lean/declarations/example--2d7955fc5d5a7031af909af9.md) | 92 | `declaration-track:2d7955fc5d5a7031af909af9495cb0455e51e8879960bed2f40bd37b419dc337` |
| 22 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variante62f2d88094264d9641540a8a639d53ef2230f7bd6fc7466ce2876783ff545ee.lean/declarations/example--825b3a4b607a4f84d862c1ac.md) | 102 | `declaration-track:825b3a4b607a4f84d862c1ace5a6e4caca490d94d3ace4b3d42b2a927792d2e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
