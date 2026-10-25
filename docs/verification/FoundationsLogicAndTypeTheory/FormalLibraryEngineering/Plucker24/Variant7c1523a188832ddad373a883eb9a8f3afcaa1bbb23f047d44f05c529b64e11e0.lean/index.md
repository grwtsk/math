# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Plucker24.Variant7c1523a188832ddad373a883eb9a8f3afcaa1bbb23f047d44f05c529b64e11e0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c2a927df4ba3b0d3121749026127598f87c459a",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant7c1523a188832ddad373a883eb9a8f3afcaa1bbb23f047d44f05c529b64e11e0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant7c1523a188832ddad373a883eb9a8f3afcaa1bbb23f047d44f05c529b64e11e0.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant7c1523a188832ddad373a883eb9a8f3afcaa1bbb23f047d44f05c529b64e11e0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c2a927df4ba3b0d3121749026127598f87c459a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant7c1523a188832ddad373a883eb9a8f3afcaa1bbb23f047d44f05c529b64e11e0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant7c1523a188832ddad373a883eb9a8f3afcaa1bbb23f047d44f05c529b64e11e0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.OrderedMinors` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [minor₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant7c1523a188832ddad373a883eb9a8f3afcaa1bbb23f047d44f05c529b64e11e0.lean/declarations/minor--cdbcd8b3e5ab4fba21e3d712.md) | 24 | `declaration-track:cdbcd8b3e5ab4fba21e3d7128892d92c8502bb36f3fff531cb864b0cb18fd2a2` |
| 2 | `theorem` | [minor₂_eq_columnMinor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant7c1523a188832ddad373a883eb9a8f3afcaa1bbb23f047d44f05c529b64e11e0.lean/declarations/minor-eq-columnminor--e941e54fb50dfc29512fb386.md) | 28 | `result-track:e941e54fb50dfc29512fb3863670e4893b3762fa5c4364b1d8b2d712072f523d` |
| 3 | `theorem` | [orderedMinor_two](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant7c1523a188832ddad373a883eb9a8f3afcaa1bbb23f047d44f05c529b64e11e0.lean/declarations/orderedminor-two--c6b860aac46960eb801bd81e.md) | 33 | `result-track:c6b860aac46960eb801bd81eecbb58a338fb82ce172084404ac1b61db16c8093` |
| 4 | `theorem` | [minor₂_swap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant7c1523a188832ddad373a883eb9a8f3afcaa1bbb23f047d44f05c529b64e11e0.lean/declarations/minor-swap--5dc9bfef003a490e3d415186.md) | 39 | `result-track:5dc9bfef003a490e3d4151867ce6317688a7df9d8b04718de33ffcd288497589` |
| 5 | `theorem` | [minor₂_plucker](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant7c1523a188832ddad373a883eb9a8f3afcaa1bbb23f047d44f05c529b64e11e0.lean/declarations/minor-plucker--ce27ef6614bc6a7f8370899b.md) | 45 | `result-track:ce27ef6614bc6a7f8370899be65b6f25e149ebe34c2515a45c1213d4327ae7c4` |
| 6 | `structure` | [PluckerCoordinates24](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant7c1523a188832ddad373a883eb9a8f3afcaa1bbb23f047d44f05c529b64e11e0.lean/declarations/pluckercoordinates24--df366d00bedf1283d39a7909.md) | 53 | `declaration-track:df366d00bedf1283d39a7909745e09ea7d68b8ebd78a2592b95cb4192c6aa2ad` |
| 7 | `def` | [Compatible](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant7c1523a188832ddad373a883eb9a8f3afcaa1bbb23f047d44f05c529b64e11e0.lean/declarations/compatible--2245ba99a001c8cc429856e3.md) | 64 | `declaration-track:2245ba99a001c8cc429856e368c6d77ee0d83b7243e7d8ddbb61f72341339417` |
| 8 | `def` | [StrictlyPositive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant7c1523a188832ddad373a883eb9a8f3afcaa1bbb23f047d44f05c529b64e11e0.lean/declarations/strictlypositive--ee89fb622c89e7c1062d23d8.md) | 68 | `declaration-track:ee89fb622c89e7c1062d23d8c69175aa26bbdecad1ef6cd932e60388e3b86ae9` |
| 9 | `def` | [Nonnegative](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant7c1523a188832ddad373a883eb9a8f3afcaa1bbb23f047d44f05c529b64e11e0.lean/declarations/nonnegative--6a601bf31d54619ad8de7b78.md) | 72 | `declaration-track:6a601bf31d54619ad8de7b7851397e29cc7b2ac0aa7eb4a3dc481cb81a8b14bb` |
| 10 | `def` | [ofMatrix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant7c1523a188832ddad373a883eb9a8f3afcaa1bbb23f047d44f05c529b64e11e0.lean/declarations/ofmatrix--865434885e29d61ae68313fc.md) | 76 | `declaration-track:865434885e29d61ae68313fc15c6116f6b43f3f5ea21a2b1340154ae27b31bd5` |
| 11 | `theorem` | [ofMatrix_compatible](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant7c1523a188832ddad373a883eb9a8f3afcaa1bbb23f047d44f05c529b64e11e0.lean/declarations/ofmatrix-compatible--437682845fd2ee580c677e03.md) | 81 | `result-track:437682845fd2ee580c677e030c3b3f1e33cd385c9f007da38686d32283dafaa4` |
| 12 | `theorem` | [allOrderedMinorsPos_of_strictlyPositive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant7c1523a188832ddad373a883eb9a8f3afcaa1bbb23f047d44f05c529b64e11e0.lean/declarations/allorderedminorspos-of-strictlypositive--0e4bc59bd5df17f25a28f7d4.md) | 86 | `result-track:0e4bc59bd5df17f25a28f7d48f1038990cd1f49c3d0a78bf8860a1499d5cecaa` |
| 13 | `theorem` | [allOrderedMinorsNonneg_of_nonnegative](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant7c1523a188832ddad373a883eb9a8f3afcaa1bbb23f047d44f05c529b64e11e0.lean/declarations/allorderedminorsnonneg-of-nonnegative--3aae2601aca95b9bb3b858c3.md) | 98 | `result-track:3aae2601aca95b9bb3b858c370c355a48d39e980696fe6a823a05d76b319573b` |
| 14 | `structure` | [Chart24](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant7c1523a188832ddad373a883eb9a8f3afcaa1bbb23f047d44f05c529b64e11e0.lean/declarations/chart24--fed214ca3c528352e3ddd8d5.md) | 113 | `declaration-track:fed214ca3c528352e3ddd8d5bfff29563039f03fe8d7cac644b5a7317ae1e27d` |
| 15 | `def` | [matrix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant7c1523a188832ddad373a883eb9a8f3afcaa1bbb23f047d44f05c529b64e11e0.lean/declarations/matrix--32b691d347f28b2abc27be29.md) | 122 | `declaration-track:32b691d347f28b2abc27be290f5f535ad552c61c5392891193fa1b35d5a14661` |
| 16 | `def` | [coordinates](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant7c1523a188832ddad373a883eb9a8f3afcaa1bbb23f047d44f05c529b64e11e0.lean/declarations/coordinates--89cb720644aa8a41ca393a62.md) | 126 | `declaration-track:89cb720644aa8a41ca393a629affb4c6e0a7a894c808a09b1bc958710a242ce7` |
| 17 | `theorem` | [coordinates_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant7c1523a188832ddad373a883eb9a8f3afcaa1bbb23f047d44f05c529b64e11e0.lean/declarations/coordinates-eq--c599894efc3ab1f0382babd4.md) | 130 | `result-track:c599894efc3ab1f0382babd483d14ebf879326c09be045f695cb80880f453a08` |
| 18 | `theorem` | [pivot_eq_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant7c1523a188832ddad373a883eb9a8f3afcaa1bbb23f047d44f05c529b64e11e0.lean/declarations/pivot-eq-one--91f4464b864002117f8fe45a.md) | 136 | `result-track:91f4464b864002117f8fe45a9d8feec25e5f1ea96e1de750e0779a755ce4d590` |
| 19 | `def` | [Positive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant7c1523a188832ddad373a883eb9a8f3afcaa1bbb23f047d44f05c529b64e11e0.lean/declarations/positive--87dd55fb984ce5537671a2a8.md) | 141 | `declaration-track:87dd55fb984ce5537671a2a81c8546faa8dc1626740c684e5efd27ead7274149` |
| 20 | `theorem` | [coordinates_strictlyPositive_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant7c1523a188832ddad373a883eb9a8f3afcaa1bbb23f047d44f05c529b64e11e0.lean/declarations/coordinates-strictlypositive-iff--393485eebf97c170bce6187d.md) | 145 | `result-track:393485eebf97c170bce6187d1c6eb37e5f17bce29cb38593da417fefe719ac81` |
| 21 | `theorem` | [coordinates_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant7c1523a188832ddad373a883eb9a8f3afcaa1bbb23f047d44f05c529b64e11e0.lean/declarations/coordinates-injective--6a81401f5a7f6c7e7e62f221.md) | 151 | `result-track:6a81401f5a7f6c7e7e62f221c4255356900e27fb59723e57f28e8636a174ad93` |
| 22 | `def` | [fromCoordinates](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant7c1523a188832ddad373a883eb9a8f3afcaa1bbb23f047d44f05c529b64e11e0.lean/declarations/fromcoordinates--cfa54d54951e9cc9c88ab4c2.md) | 161 | `declaration-track:cfa54d54951e9cc9c88ab4c2d2b37b6f7427789c6d581cf978b2373f1b90e4f3` |
| 23 | `theorem` | [coordinates_fromCoordinates](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant7c1523a188832ddad373a883eb9a8f3afcaa1bbb23f047d44f05c529b64e11e0.lean/declarations/coordinates-fromcoordinates--d037352947fc5674dea4db64.md) | 165 | `result-track:d037352947fc5674dea4db64ac7ff8e9161f95bc7e2aa176459baaf4e1111d45` |
| 24 | `theorem` | [fromCoordinates_coordinates](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant7c1523a188832ddad373a883eb9a8f3afcaa1bbb23f047d44f05c529b64e11e0.lean/declarations/fromcoordinates-coordinates--48b46f0e852225b319d76706.md) | 181 | `result-track:48b46f0e852225b319d767061b9d6e434feb1c692d0128dd4fa1dd6c5e177364` |
| 25 | `theorem` | [normalized_recognition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant7c1523a188832ddad373a883eb9a8f3afcaa1bbb23f047d44f05c529b64e11e0.lean/declarations/normalized-recognition--8235abf4ef91565406935bbe.md) | 188 | `result-track:8235abf4ef91565406935bbeb3960d624c229b1c3a3651931da5e2c99044e228` |
| 26 | `theorem` | [positive_normalized_recognition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant7c1523a188832ddad373a883eb9a8f3afcaa1bbb23f047d44f05c529b64e11e0.lean/declarations/positive-normalized-recognition--8909b1da4fbd7c4830da0054.md) | 201 | `result-track:8909b1da4fbd7c4830da0054a38f4c03b2130ad784611d69577728d8fae08914` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
