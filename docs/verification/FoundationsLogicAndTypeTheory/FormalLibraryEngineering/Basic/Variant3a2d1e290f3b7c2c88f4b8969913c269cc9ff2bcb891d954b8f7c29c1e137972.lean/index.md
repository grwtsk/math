# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant3a2d1e290f3b7c2c88f4b8969913c269cc9ff2bcb891d954b8f7c29c1e137972

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f59fd393fbb186d3f5e92c9bcbebfe4e10ce581b",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3a2d1e290f3b7c2c88f4b8969913c269cc9ff2bcb891d954b8f7c29c1e137972.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3a2d1e290f3b7c2c88f4b8969913c269cc9ff2bcb891d954b8f7c29c1e137972.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3a2d1e290f3b7c2c88f4b8969913c269cc9ff2bcb891d954b8f7c29c1e137972.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f59fd393fbb186d3f5e92c9bcbebfe4e10ce581b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3a2d1e290f3b7c2c88f4b8969913c269cc9ff2bcb891d954b8f7c29c1e137972.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3a2d1e290f3b7c2c88f4b8969913c269cc9ff2bcb891d954b8f7c29c1e137972.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Classes.SetNotation` — import line 6; external provider; requires a separately pinned dependency.
- `Std.Classes.LawfulMonad` — import line 7; external provider; requires a separately pinned dependency.
- `Std.Tactic.NoMatch` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [elim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3a2d1e290f3b7c2c88f4b8969913c269cc9ff2bcb891d954b8f7c29c1e137972.lean/declarations/elim--c6640d19cddfb95ced7e7485.md) | 13 | `declaration-track:c6640d19cddfb95ced7e7485139e5dc3b5999cb22f970d5c587db0d66792fa3d` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3a2d1e290f3b7c2c88f4b8969913c269cc9ff2bcb891d954b8f7c29c1e137972.lean/declarations/instance--50f8820aa3a5ae85fb3dc8dd.md) | 17 | `declaration-track:50f8820aa3a5ae85fb3dc8dd56bb43a672b8484b1cd8465c4318842c1c4adf55` |
| 3 | `theorem` | [mem_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3a2d1e290f3b7c2c88f4b8969913c269cc9ff2bcb891d954b8f7c29c1e137972.lean/declarations/mem-def--9ec172de6b5958cd44a492ec.md) | 19 | `result-track:9ec172de6b5958cd44a492ec54a00ec7c971130457e2f8a61fb2d738498c004d` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3a2d1e290f3b7c2c88f4b8969913c269cc9ff2bcb891d954b8f7c29c1e137972.lean/declarations/instance--e981d1792852a4e445461e33.md) | 21 | `declaration-track:e981d1792852a4e445461e33fb070e14970c48087981f7ab27dc2ff2063fafc4` |
| 5 | `theorem` | [isNone_iff_eq_none](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3a2d1e290f3b7c2c88f4b8969913c269cc9ff2bcb891d954b8f7c29c1e137972.lean/declarations/isnone-iff-eq-none--69d6f2fc1cc428d9af5abdd3.md) | 24 | `result-track:69d6f2fc1cc428d9af5abdd39003ffcbb2830a51d8bf8a4552010fd6b0bf2c17` |
| 6 | `theorem` | [some_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3a2d1e290f3b7c2c88f4b8969913c269cc9ff2bcb891d954b8f7c29c1e137972.lean/declarations/some-inj--ccab5b4f7cd4d5772355484c.md) | 27 | `result-track:ccab5b4f7cd4d5772355484c548f45a6d6d937a984c598eb048f10e0fdf493b6` |
| 7 | `def` | [decidable_eq_none](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3a2d1e290f3b7c2c88f4b8969913c269cc9ff2bcb891d954b8f7c29c1e137972.lean/declarations/decidable-eq-none--5c51c42e0df3491d25352491.md) | 34 | `declaration-track:5c51c42e0df3491d253524913f6c1981b567735f420c807663f53839f0564e32` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3a2d1e290f3b7c2c88f4b8969913c269cc9ff2bcb891d954b8f7c29c1e137972.lean/declarations/instance--b021b3f2621a0154239f4584.md) | 37 | `declaration-track:b021b3f2621a0154239f458403f67c9993d0e7f108ca8933e16dbf794d7b19ac` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3a2d1e290f3b7c2c88f4b8969913c269cc9ff2bcb891d954b8f7c29c1e137972.lean/declarations/instance--128018dba01d8bce14f04c2b.md) | 43 | `declaration-track:128018dba01d8bce14f04c2be39765016f2927cdb49a9a1938844026e5b97de8` |
| 10 | `def` | [get](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3a2d1e290f3b7c2c88f4b8969913c269cc9ff2bcb891d954b8f7c29c1e137972.lean/declarations/get--8b773653b51fa694fc96127b.md) | 48 | `declaration-track:8b773653b51fa694fc96127b620baaac10c04c9ef3d8abb959f8f76a247f833e` |
| 11 | `def` | [guard](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3a2d1e290f3b7c2c88f4b8969913c269cc9ff2bcb891d954b8f7c29c1e137972.lean/declarations/guard--6d8aed9a5181574a1d700095.md) | 52 | `declaration-track:6d8aed9a5181574a1d7000951b687f401328910ec18f7e457dc429b4c13751f4` |
| 12 | `def` | [toList](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3a2d1e290f3b7c2c88f4b8969913c269cc9ff2bcb891d954b8f7c29c1e137972.lean/declarations/tolist--360e14aafaa905c3c2afcbeb.md) | 58 | `declaration-track:360e14aafaa905c3c2afcbeb64c8053bc68b46e30f00c6fc2f593efd4ef9b289` |
| 13 | `def` | [toArray](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3a2d1e290f3b7c2c88f4b8969913c269cc9ff2bcb891d954b8f7c29c1e137972.lean/declarations/toarray--bd1b0c0ebebb3e0cf3cec03a.md) | 65 | `declaration-track:bd1b0c0ebebb3e0cf3cec03a76385c03f2f3f7c90a332b813f080e7753e5853a` |
| 14 | `def` | [liftOrGet](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3a2d1e290f3b7c2c88f4b8969913c269cc9ff2bcb891d954b8f7c29c1e137972.lean/declarations/liftorget--1e75b34b16d17cc65d5ab8b3.md) | 73 | `declaration-track:1e75b34b16d17cc65d5ab8b30f3918989a2a37597b12230c5e25712fac907124` |
| 15 | `inductive` | [Rel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3a2d1e290f3b7c2c88f4b8969913c269cc9ff2bcb891d954b8f7c29c1e137972.lean/declarations/rel--6dcf4f60bf4859cc35a578b3.md) | 81 | `declaration-track:6dcf4f60bf4859cc35a578b39a0941eed6ee21314dd79a3e80e768175bacdd3e` |
| 16 | `def` | [pbind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3a2d1e290f3b7c2c88f4b8969913c269cc9ff2bcb891d954b8f7c29c1e137972.lean/declarations/pbind--36eeb8922503df71e7e469ba.md) | 94 | `declaration-track:36eeb8922503df71e7e469ba70cc1232b7274fbe39b2e81606939cdc37cff004` |
| 17 | `def` | [pmap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3a2d1e290f3b7c2c88f4b8969913c269cc9ff2bcb891d954b8f7c29c1e137972.lean/declarations/pmap--b50df24ec5bb112b16ad0306.md) | 103 | `declaration-track:b50df24ec5bb112b16ad0306b35c28fede6d46c1525cc9712b2679f69950642e` |
| 18 | `def` | [join](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3a2d1e290f3b7c2c88f4b8969913c269cc9ff2bcb891d954b8f7c29c1e137972.lean/declarations/join--9b20bd3c452dc19d20c99641.md) | 109 | `declaration-track:9b20bd3c452dc19d20c9964135cda8ca8180563ad2a6da4d612766938637a47e` |
| 19 | `def` | [forM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3a2d1e290f3b7c2c88f4b8969913c269cc9ff2bcb891d954b8f7c29c1e137972.lean/declarations/form--6c8209c4d0721df5d1d3408e.md) | 112 | `declaration-track:6c8209c4d0721df5d1d3408ee8ef24b46617d5f9236e1370c8350c9431223438` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3a2d1e290f3b7c2c88f4b8969913c269cc9ff2bcb891d954b8f7c29c1e137972.lean/declarations/instance--031c300fd83bbc8a4764cb92.md) | 116 | `declaration-track:031c300fd83bbc8a4764cb923f25802448f2fe939687bac144b9694323101dde` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3a2d1e290f3b7c2c88f4b8969913c269cc9ff2bcb891d954b8f7c29c1e137972.lean/declarations/instance--eb8f7a65dde4df83420c1fee.md) | 119 | `declaration-track:eb8f7a65dde4df83420c1fee74edc52a26c01b58d8dff6c2750480d9f86cf4b1` |
| 22 | `def` | [mapA](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3a2d1e290f3b7c2c88f4b8969913c269cc9ff2bcb891d954b8f7c29c1e137972.lean/declarations/mapa--3d61ea6ce6ae276212cfe9c0.md) | 128 | `declaration-track:3d61ea6ce6ae276212cfe9c09a84b12a012654f9ad48e3e9f90789a8ddb1c6e6` |
| 23 | `def` | [sequence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3a2d1e290f3b7c2c88f4b8969913c269cc9ff2bcb891d954b8f7c29c1e137972.lean/declarations/sequence--056ac7ea5432640f6d86f0c4.md) | 137 | `declaration-track:056ac7ea5432640f6d86f0c4536b9a0717664ef24cf99e4b5119315cc95bf678` |
| 24 | `def` | [elimM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3a2d1e290f3b7c2c88f4b8969913c269cc9ff2bcb891d954b8f7c29c1e137972.lean/declarations/elimm--4b4472dd348769acc3a31af7.md) | 142 | `declaration-track:4b4472dd348769acc3a31af778fc99fd8aaeb659aade938834bc880e3860d053` |
| 25 | `def` | [getDM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3a2d1e290f3b7c2c88f4b8969913c269cc9ff2bcb891d954b8f7c29c1e137972.lean/declarations/getdm--5ef9987d7008173c785e4e9f.md) | 146 | `declaration-track:5ef9987d7008173c785e4e9f566cf40c4d43918c9ea8626090a9c1b74a7535fc` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3a2d1e290f3b7c2c88f4b8969913c269cc9ff2bcb891d954b8f7c29c1e137972.lean/declarations/instance--7313033d4c509c53e0965edc.md) | 151 | `declaration-track:7313033d4c509c53e0965edc655412c3dc2b34c798fb9d0c0c93c9f81208aee5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
