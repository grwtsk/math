# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LawfulMonadLift.Variantd889d6dbf80e11080f13aa5610f7ab257e95a8051dd5f63635c88e2664e95237

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e385fc827b2d7179b6723384474b010e30e55d7c",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadLift/Variantd889d6dbf80e11080f13aa5610f7ab257e95a8051dd5f63635c88e2664e95237.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadLift/Variantd889d6dbf80e11080f13aa5610f7ab257e95a8051dd5f63635c88e2664e95237.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadLift/Variantd889d6dbf80e11080f13aa5610f7ab257e95a8051dd5f63635c88e2664e95237.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e385fc827b2d7179b6723384474b010e30e55d7c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadLift/Variantd889d6dbf80e11080f13aa5610f7ab257e95a8051dd5f63635c88e2664e95237.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadLift/Variantd889d6dbf80e11080f13aa5610f7ab257e95a8051dd5f63635c88e2664e95237.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadLift/Variantd889d6dbf80e11080f13aa5610f7ab257e95a8051dd5f63635c88e2664e95237.lean/declarations/instance--5889e63474ec4330d670d667.md) | 22 | `declaration-track:5889e63474ec4330d670d667256d7866758e501a2cfd106ff0e5a029bdada92b` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadLift/Variantd889d6dbf80e11080f13aa5610f7ab257e95a8051dd5f63635c88e2664e95237.lean/declarations/instance--244368779b8cce3217295e81.md) | 26 | `declaration-track:244368779b8cce3217295e81009c3af13bd97a23a748027b3acdac0f6cf5009a` |
| 3 | `theorem` | [EIO.adapt_pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadLift/Variantd889d6dbf80e11080f13aa5610f7ab257e95a8051dd5f63635c88e2664e95237.lean/declarations/eio-adapt-pure--71b8c25496444e6ac56380f6.md) | 31 | `result-track:71b8c25496444e6ac56380f6c5c22e6caade0f48ac903c74de3d5c7c640bc628` |
| 4 | `theorem` | [EIO.bind_eq_EST_bind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadLift/Variantd889d6dbf80e11080f13aa5610f7ab257e95a8051dd5f63635c88e2664e95237.lean/declarations/eio-bind-eq-est-bind--b554f5fb67c4ce8b593907c2.md) | 34 | `result-track:b554f5fb67c4ce8b593907c2df97d166fc123009d90e82d55d9508baab8cdac0` |
| 5 | `theorem` | [EIO.adapt_EST_bind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadLift/Variantd889d6dbf80e11080f13aa5610f7ab257e95a8051dd5f63635c88e2664e95237.lean/declarations/eio-adapt-est-bind--5b7ebbec838cea8865713c85.md) | 37 | `result-track:5b7ebbec838cea8865713c8517844b8e790f2dcf555ee922abd4a5643a9aa897` |
| 6 | `theorem` | [EIO.adapt_bind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadLift/Variantd889d6dbf80e11080f13aa5610f7ab257e95a8051dd5f63635c88e2664e95237.lean/declarations/eio-adapt-bind--bdbc1e01432cdcf08f65a06a.md) | 41 | `result-track:bdbc1e01432cdcf08f65a06a9332d9847ce648c6ab67941cb4cd0f45d6a0c9f2` |
| 7 | `theorem` | [StateRefT'.lift_pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadLift/Variantd889d6dbf80e11080f13aa5610f7ab257e95a8051dd5f63635c88e2664e95237.lean/declarations/statereft-lift-pure--b25ed034d081b0cc30ffc914.md) | 47 | `result-track:b25ed034d081b0cc30ffc91433f11e20f71cc23ae9f2d9ccf9927d6ed40229ea` |
| 8 | `theorem` | [StateRefT'.lift_bind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadLift/Variantd889d6dbf80e11080f13aa5610f7ab257e95a8051dd5f63635c88e2664e95237.lean/declarations/statereft-lift-bind--1b98d78aa40547bdc43925e2.md) | 50 | `result-track:1b98d78aa40547bdc43925e2509257b9f92563d5e662ed9e51ca97aff34ce886` |
| 9 | `theorem` | [Core.run_liftIOCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadLift/Variantd889d6dbf80e11080f13aa5610f7ab257e95a8051dd5f63635c88e2664e95237.lean/declarations/core-run-liftiocore--776439f746f3dbe55c4463d1.md) | 56 | `result-track:776439f746f3dbe55c4463d1abb5d307d89dc37fb4dd3b499836a34832cbb04b` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadLift/Variantd889d6dbf80e11080f13aa5610f7ab257e95a8051dd5f63635c88e2664e95237.lean/declarations/instance--25a3f0e6be81e555979256d1.md) | 63 | `declaration-track:25a3f0e6be81e555979256d1c1bc42a9f5bf7ed37cfe82371fa6564f72ba728d` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadLift/Variantd889d6dbf80e11080f13aa5610f7ab257e95a8051dd5f63635c88e2664e95237.lean/declarations/instance--7caa19b89687167cbbbed088.md) | 71 | `declaration-track:7caa19b89687167cbbbed088380c3afa494bbe0e452466d0ed5a7a252f4bccaf` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadLift/Variantd889d6dbf80e11080f13aa5610f7ab257e95a8051dd5f63635c88e2664e95237.lean/declarations/instance--e7fa15621f08a7f15408644c.md) | 72 | `declaration-track:e7fa15621f08a7f15408644c3d8a9b8e07bf8709a9f92e716cb771fd5b8da28a` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadLift/Variantd889d6dbf80e11080f13aa5610f7ab257e95a8051dd5f63635c88e2664e95237.lean/declarations/instance--402154ac66e1a48ecab63aa8.md) | 73 | `declaration-track:402154ac66e1a48ecab63aa80cb743fcc1c363f92deb352818e73dec626a490e` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadLift/Variantd889d6dbf80e11080f13aa5610f7ab257e95a8051dd5f63635c88e2664e95237.lean/declarations/instance--8a508aaa5308fe378e2adfac.md) | 74 | `declaration-track:8a508aaa5308fe378e2adfac7ecc998fdbe438984c698d061e62eaeaa6e972a2` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulMonadLift/Variantd889d6dbf80e11080f13aa5610f7ab257e95a8051dd5f63635c88e2664e95237.lean/declarations/instance--a4266aecebf8c3cc92be5630.md) | 75 | `declaration-track:a4266aecebf8c3cc92be5630fefac81d4bb8a5ade94fab9219a746813c530ea4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
