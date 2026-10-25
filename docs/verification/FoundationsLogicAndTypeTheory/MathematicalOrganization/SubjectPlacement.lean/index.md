# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalOrganization.SubjectPlacement

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cbb6b2fd9ed01a522614814767c255f07e5926aa",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalOrganization/SubjectPlacement.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalOrganization/SubjectPlacement.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalOrganization/SubjectPlacement.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cbb6b2fd9ed01a522614814767c255f07e5926aa`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalOrganization/SubjectPlacement.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalOrganization/SubjectPlacement.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SourceFileIdentity](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalOrganization/SubjectPlacement.lean/declarations/sourcefileidentity--3dff3045fcc72d90414d8448.md) | 16 | `declaration-track:3dff3045fcc72d90414d84488ce0ed8b88c9fa8989ac74383181be70c8a5f14d` |
| 2 | `structure` | [SubjectIdentity](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalOrganization/SubjectPlacement.lean/declarations/subjectidentity--5f9afc50345058cf93939642.md) | 24 | `declaration-track:5f9afc50345058cf9393964251cd2a8520e959c33489e5a6f57bcea86028913f` |
| 3 | `inductive` | [ParseStatus](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalOrganization/SubjectPlacement.lean/declarations/parsestatus--723c06a5a56a00e3769d93e6.md) | 31 | `declaration-track:723c06a5a56a00e3769d93e676a70083d3c65dd34c729d033110af3cb1ed6915` |
| 4 | `inductive` | [Disposition](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalOrganization/SubjectPlacement.lean/declarations/disposition--cf6c3b5e46db55f0440a2228.md) | 38 | `declaration-track:cf6c3b5e46db55f0440a222851d7f665e133b5c0ec852b6f50ea081f4f031b06` |
| 5 | `inductive` | [RelationKind](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalOrganization/SubjectPlacement.lean/declarations/relationkind--efcf31dd9c74c5e0e775a865.md) | 46 | `declaration-track:efcf31dd9c74c5e0e775a865a00d7ff8c3ec83ec59edbf392a81b9e6ac9dcf83` |
| 6 | `def` | [MachineAssignable](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalOrganization/SubjectPlacement.lean/declarations/machineassignable--a011398170674a92f771d4c1.md) | 55 | `declaration-track:a011398170674a92f771d4c14e0394fcbd754cd0c81b23b171e28fc527bc5148` |
| 7 | `theorem` | [machineAssignable_relevantTo](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalOrganization/SubjectPlacement.lean/declarations/machineassignable-relevantto--16ffef556644417105395f3b.md) | 59 | `result-track:16ffef556644417105395f3b7e374a6be7076a7f96ef159772c84f1078d19111` |
| 8 | `theorem` | [machineAssignable_not_implies](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalOrganization/SubjectPlacement.lean/declarations/machineassignable-not-implies--5a0e0e6e8791bc5d0e43002f.md) | 62 | `result-track:5a0e0e6e8791bc5d0e43002f7a6cd2ada02f72a79b9d359eab54067b38033e3d` |
| 9 | `theorem` | [machineAssignable_not_formalizes](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalOrganization/SubjectPlacement.lean/declarations/machineassignable-not-formalizes--c6366b3c710f7e02770acbd3.md) | 65 | `result-track:c6366b3c710f7e02770acbd31071237980182011e6fe42be01af76c5e10d66da` |
| 10 | `structure` | [PlacementEvidence](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalOrganization/SubjectPlacement.lean/declarations/placementevidence--5b99b9ff7e63c9273e59c6b1.md) | 69 | `declaration-track:5b99b9ff7e63c9273e59c6b17a3c5d6a9ac981c361a6f8d6beb1a42d72e5051d` |
| 11 | `structure` | [PlacementDecision](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalOrganization/SubjectPlacement.lean/declarations/placementdecision--c586290f2be4e3254a6d8170.md) | 80 | `declaration-track:c586290f2be4e3254a6d817020077289c78353e8e0eb30e81b3a3401983a81c9` |
| 12 | `def` | [MoveReady](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalOrganization/SubjectPlacement.lean/declarations/moveready--7b4c334061b4f04718b3143a.md) | 92 | `declaration-track:7b4c334061b4f04718b3143ad2922c89bc2b591ef49784e2e3f355c15184f070` |
| 13 | `def` | [CoversExactly](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalOrganization/SubjectPlacement.lean/declarations/coversexactly--63ad6ad7528681515fc2d1ff.md) | 100 | `declaration-track:63ad6ad7528681515fc2d1ff5970ef48ccaf0a391e19cd027088c3437a8875e7` |
| 14 | `def` | [UniqueTargets](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalOrganization/SubjectPlacement.lean/declarations/uniquetargets--6660b0805e3b55b2889f201d.md) | 106 | `declaration-track:6660b0805e3b55b2889f201d4a674b045b3859c339f67dca70f79d71700485a4` |
| 15 | `def` | [PinnedStable](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalOrganization/SubjectPlacement.lean/declarations/pinnedstable--8e098f0fd0a2e0717ce8287b.md) | 110 | `declaration-track:8e098f0fd0a2e0717ce8287b5736a64ed7bc562d3b7256387780351bb69560df` |
| 16 | `def` | [MachineRelationsConservative](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalOrganization/SubjectPlacement.lean/declarations/machinerelationsconservative--4a024e063f595c7e3c8af0ea.md) | 114 | `declaration-track:4a024e063f595c7e3c8af0ea61dfce5ff6d0812541b87d6ccfc5cc57f2af2c30` |
| 17 | `structure` | [PlacementPlan](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalOrganization/SubjectPlacement.lean/declarations/placementplan--132a11544f6e3c3aa79523dd.md) | 118 | `declaration-track:132a11544f6e3c3aa79523ddd6f9a49fb7c08f2a127377aa14fc9d6f8b3db442` |
| 18 | `structure` | [PlacementReceipt](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalOrganization/SubjectPlacement.lean/declarations/placementreceipt--46b63ec3b027451ee2f782c6.md) | 144 | `declaration-track:46b63ec3b027451ee2f782c6e127898f7d857a3573b26cb9baaf4b11b80c7e49` |
| 19 | `def` | [ClassifierProductive](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalOrganization/SubjectPlacement.lean/declarations/classifierproductive--c97eba0ac8f828a8b5be6292.md) | 151 | `declaration-track:c97eba0ac8f828a8b5be62921268254e1bd81ae26f668c8d5cb7838d8748031b` |
| 20 | `theorem` | [alwaysReview_not_productive](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalOrganization/SubjectPlacement.lean/declarations/alwaysreview-not-productive--b5f552ef05a8d0537bfb9846.md) | 155 | `result-track:b5f552ef05a8d0537bfb9846b1f7aa91430aab1a4ad76b2754edae1c09af5272` |
| 21 | `theorem` | [PlacementPlan.coversEveryManagedSource](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalOrganization/SubjectPlacement.lean/declarations/placementplan-coverseverymanagedsource--45ff55ac1c54f5f9e8b4f1a4.md) | 160 | `result-track:45ff55ac1c54f5f9e8b4f1a4cb8fe1c29a499d6c7c06093a4740976ac2960463` |
| 22 | `theorem` | [PlacementPlan.hasNoDuplicateTargets](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalOrganization/SubjectPlacement.lean/declarations/placementplan-hasnoduplicatetargets--ef0d80bd76e80da1c0842791.md) | 165 | `result-track:ef0d80bd76e80da1c0842791aba01ef1fcb735d769301c46a9d2303b13ad10a2` |
| 23 | `theorem` | [PlacementPlan.allowsMoveTarget](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalOrganization/SubjectPlacement.lean/declarations/placementplan-allowsmovetarget--668b39ea9cc98922fd6d6436.md) | 170 | `result-track:668b39ea9cc98922fd6d6436a41547c9358c845374e0a59cf88b43ee09935530` |
| 24 | `theorem` | [PlacementPlan.noMachineImplication](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalOrganization/SubjectPlacement.lean/declarations/placementplan-nomachineimplication--517ca79ec37504f5c81c07b3.md) | 177 | `result-track:517ca79ec37504f5c81c07b3f2e3111116ca582342a4f8a09a70641d5cd36b3c` |
| 25 | `theorem` | [PlacementReceipt.requiresLibraryValidation](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalOrganization/SubjectPlacement.lean/declarations/placementreceipt-requireslibraryvalidation--b00e0179d487b9983e06a5ad.md) | 185 | `result-track:b00e0179d487b9983e06a5ad92140fb12feccfa7c41071345c4d1a0d0c4a292b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
