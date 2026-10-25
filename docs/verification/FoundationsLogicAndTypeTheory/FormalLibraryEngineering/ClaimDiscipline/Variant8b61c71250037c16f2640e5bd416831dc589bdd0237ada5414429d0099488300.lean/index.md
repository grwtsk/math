# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ClaimDiscipline.Variant8b61c71250037c16f2640e5bd416831dc589bdd0237ada5414429d0099488300

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "190a90fd09ba488d2630007d46b30d8d14373584",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClaimDiscipline/Variant8b61c71250037c16f2640e5bd416831dc589bdd0237ada5414429d0099488300.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClaimDiscipline/Variant8b61c71250037c16f2640e5bd416831dc589bdd0237ada5414429d0099488300.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClaimDiscipline/Variant8b61c71250037c16f2640e5bd416831dc589bdd0237ada5414429d0099488300.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `190a90fd09ba488d2630007d46b30d8d14373584`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClaimDiscipline/Variant8b61c71250037c16f2640e5bd416831dc589bdd0237ada5414429d0099488300.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClaimDiscipline/Variant8b61c71250037c16f2640e5bd416831dc589bdd0237ada5414429d0099488300.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `CordTheory.Surgery` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AdmissibilityRecord](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClaimDiscipline/Variant8b61c71250037c16f2640e5bd416831dc589bdd0237ada5414429d0099488300.lean/declarations/admissibilityrecord--515ef14ebbae1199e8dc36c8.md) | 13 | `declaration-track:515ef14ebbae1199e8dc36c82a2ac2dd96c5dcbffedf0267869db976f97ef98f` |
| 2 | `def` | [FullyEstablished](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClaimDiscipline/Variant8b61c71250037c16f2640e5bd416831dc589bdd0237ada5414429d0099488300.lean/declarations/fullyestablished--bd92d5fcf3727370abb05b43.md) | 27 | `declaration-track:bd92d5fcf3727370abb05b4302d5600a0cf2a58d449c85d6400f8de29fdaf5c3` |
| 3 | `theorem` | [fullyEstablished_authorized](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClaimDiscipline/Variant8b61c71250037c16f2640e5bd416831dc589bdd0237ada5414429d0099488300.lean/declarations/fullyestablished-authorized--32712f98306c5de388d207a6.md) | 35 | `result-track:32712f98306c5de388d207a6d45a787af6cb7e0a025e29c047a13a1cd8dc9b5b` |
| 4 | `theorem` | [fullyEstablished_safe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClaimDiscipline/Variant8b61c71250037c16f2640e5bd416831dc589bdd0237ada5414429d0099488300.lean/declarations/fullyestablished-safe--7e3dfc3452e5db34ce508c54.md) | 38 | `result-track:7e3dfc3452e5db34ce508c5483839c4811074c52fcc2787483be6551ce1b726f` |
| 5 | `theorem` | [fullyEstablished_correct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClaimDiscipline/Variant8b61c71250037c16f2640e5bd416831dc589bdd0237ada5414429d0099488300.lean/declarations/fullyestablished-correct--e09f33f8ea54a974a5738130.md) | 41 | `result-track:e09f33f8ea54a974a5738130d326bd54558a9e99a44f2d6358d175d56e6d8489` |
| 6 | `theorem` | [fullyEstablished_useful](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClaimDiscipline/Variant8b61c71250037c16f2640e5bd416831dc589bdd0237ada5414429d0099488300.lean/declarations/fullyestablished-useful--d56a3823ee7ee24980deb9ed.md) | 44 | `result-track:d56a3823ee7ee24980deb9ed9dd6119ab65445a610f632c4ad8381f8a47ef08e` |
| 7 | `theorem` | [fullyEstablished_ethically_acceptable](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClaimDiscipline/Variant8b61c71250037c16f2640e5bd416831dc589bdd0237ada5414429d0099488300.lean/declarations/fullyestablished-ethically-acceptable--db78cd54705666703a20e2ac.md) | 47 | `result-track:db78cd54705666703a20e2ac71d2481e04d37d57a872b8f700e210df8b095758` |
| 8 | `theorem` | [reachability_does_not_entail_authorization](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClaimDiscipline/Variant8b61c71250037c16f2640e5bd416831dc589bdd0237ada5414429d0099488300.lean/declarations/reachability-does-not-entail-authorization--9d5c256e4877bf4a0ce2a199.md) | 52 | `result-track:9d5c256e4877bf4a0ce2a19909d673eb71769efbb8ed56fa55bc5bd057840fa1` |
| 9 | `theorem` | [reachability_does_not_entail_full_admissibility](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClaimDiscipline/Variant8b61c71250037c16f2640e5bd416831dc589bdd0237ada5414429d0099488300.lean/declarations/reachability-does-not-entail-full-admissibility--cba6ecc4a6bf423a09d70bfb.md) | 71 | `result-track:cba6ecc4a6bf423a09d70bfbc3412f05cf248960c5b2c892e582a281b6213b32` |
| 10 | `inductive` | [CandidateAdmissionStatus](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClaimDiscipline/Variant8b61c71250037c16f2640e5bd416831dc589bdd0237ada5414429d0099488300.lean/declarations/candidateadmissionstatus--b32a59c162c9c02d8d388c64.md) | 91 | `declaration-track:b32a59c162c9c02d8d388c64f3aae0ce895f3670145f5468b1221ecacc25eb32` |
| 11 | `structure` | [CandidateTermObservation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClaimDiscipline/Variant8b61c71250037c16f2640e5bd416831dc589bdd0237ada5414429d0099488300.lean/declarations/candidatetermobservation--a61a43c54c3e7c6d8fa95d63.md) | 99 | `declaration-track:a61a43c54c3e7c6d8fa95d63ba6b1dd2815edfd14ead9e147388cfff7386e878` |
| 12 | `def` | [IsMerelyObserved](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClaimDiscipline/Variant8b61c71250037c16f2640e5bd416831dc589bdd0237ada5414429d0099488300.lean/declarations/ismerelyobserved--f091f4d8ebea70bb85a8de69.md) | 115 | `declaration-track:f091f4d8ebea70bb85a8de692487e71f294dcfc38a3445f8074191b7e3d089c6` |
| 13 | `theorem` | [observed_not_admitted](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClaimDiscipline/Variant8b61c71250037c16f2640e5bd416831dc589bdd0237ada5414429d0099488300.lean/declarations/observed-not-admitted--99a2947c20f5881052fd5fac.md) | 118 | `result-track:99a2947c20f5881052fd5face24a7416da77db3691fbf6baacc97500a868ae0b` |
| 14 | `structure` | [VectorCandidateObservation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClaimDiscipline/Variant8b61c71250037c16f2640e5bd416831dc589bdd0237ada5414429d0099488300.lean/declarations/vectorcandidateobservation--db74ebe9a327372620e3437c.md) | 125 | `declaration-track:db74ebe9a327372620e3437c4d9c82119fcc7c970198701586834486a5d5706d` |
| 15 | `def` | [SemanticallyAdmitted](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClaimDiscipline/Variant8b61c71250037c16f2640e5bd416831dc589bdd0237ada5414429d0099488300.lean/declarations/semanticallyadmitted--28132d1cc7489692d5821ded.md) | 145 | `declaration-track:28132d1cc7489692d5821ded221d7d34f6061f6e9b1908ea99f02d06cec7a5dc` |
| 16 | `theorem` | [proximity_does_not_entail_semantic_admission](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClaimDiscipline/Variant8b61c71250037c16f2640e5bd416831dc589bdd0237ada5414429d0099488300.lean/declarations/proximity-does-not-entail-semantic-admission--788f0b7f0dbe8429ce7ac814.md) | 152 | `result-track:788f0b7f0dbe8429ce7ac8148a360aea1c9f8529fa8379ba943c237867c6c1b3` |
| 17 | `structure` | [TextOccurrenceObservation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClaimDiscipline/Variant8b61c71250037c16f2640e5bd416831dc589bdd0237ada5414429d0099488300.lean/declarations/textoccurrenceobservation--51920bcc08cdbf7e8dc9ddf3.md) | 181 | `declaration-track:51920bcc08cdbf7e8dc9ddf32a31978b58f92362bd8b1cc277e8d8e49b10bfef` |
| 18 | `theorem` | [occurrence_does_not_entail_term_declaration](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClaimDiscipline/Variant8b61c71250037c16f2640e5bd416831dc589bdd0237ada5414429d0099488300.lean/declarations/occurrence-does-not-entail-term-declaration--7e3a00f3dd34dd2a6916dd49.md) | 198 | `result-track:7e3a00f3dd34dd2a6916dd494435f11d2b72c76d47e96d1bbaf6eff183b7a92b` |
| 19 | `structure` | [ValidationEvidenceRecord](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClaimDiscipline/Variant8b61c71250037c16f2640e5bd416831dc589bdd0237ada5414429d0099488300.lean/declarations/validationevidencerecord--e2056c3832404ecec0a34c0b.md) | 221 | `declaration-track:e2056c3832404ecec0a34c0b4c997b8f648801849a50465d071d0180e689d41f` |
| 20 | `def` | [EstablishesProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClaimDiscipline/Variant8b61c71250037c16f2640e5bd416831dc589bdd0237ada5414429d0099488300.lean/declarations/establishesproof--dd71ddab1f1d14a6f8b93c6b.md) | 238 | `declaration-track:dd71ddab1f1d14a6f8b93c6bd85e2973ad69092db6bb0bdbf0789e3f80ee8131` |
| 21 | `theorem` | [establishesProof_result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClaimDiscipline/Variant8b61c71250037c16f2640e5bd416831dc589bdd0237ada5414429d0099488300.lean/declarations/establishesproof-result--650faac39fc9738e79bfd09d.md) | 243 | `result-track:650faac39fc9738e79bfd09d2f614b43072dc5ace72bd62978e72a21b1a72c8b` |
| 22 | `theorem` | [establishesProof_complete](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClaimDiscipline/Variant8b61c71250037c16f2640e5bd416831dc589bdd0237ada5414429d0099488300.lean/declarations/establishesproof-complete--1ce02e9fe1ce420900fefd81.md) | 246 | `result-track:1ce02e9fe1ce420900fefd811e870354d753acd800238a8e7f9987e35302366b` |
| 23 | `theorem` | [establishesProof_has_certificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClaimDiscipline/Variant8b61c71250037c16f2640e5bd416831dc589bdd0237ada5414429d0099488300.lean/declarations/establishesproof-has-certificate--92b7e605796eae57853d198f.md) | 249 | `result-track:92b7e605796eae57853d198f1199f11a513ee6a003e2cc760b120ea7f9d5f18b` |
| 24 | `theorem` | [certified_complete_validation_establishes_proof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClaimDiscipline/Variant8b61c71250037c16f2640e5bd416831dc589bdd0237ada5414429d0099488300.lean/declarations/certified-complete-validation-establishes-proof--febe5783c41379460c1ea1b6.md) | 252 | `result-track:febe5783c41379460c1ea1b63c8428e44895d8d2ed21a45a21476dc156c22170` |
| 25 | `theorem` | [validation_pass_does_not_entail_proof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClaimDiscipline/Variant8b61c71250037c16f2640e5bd416831dc589bdd0237ada5414429d0099488300.lean/declarations/validation-pass-does-not-entail-proof--476fd2ba55ff504430d77d08.md) | 260 | `result-track:476fd2ba55ff504430d77d08503b418a4909892615c5483ef6c2375ad8761ee5` |
| 26 | `structure` | [ReceiptScopeRecord](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClaimDiscipline/Variant8b61c71250037c16f2640e5bd416831dc589bdd0237ada5414429d0099488300.lean/declarations/receiptscoperecord--01c82c84314fb1cc94345272.md) | 283 | `declaration-track:01c82c84314fb1cc9434527275de407f3690570202e5f36229e49da3460b4a82` |
| 27 | `def` | [TruthQualified](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClaimDiscipline/Variant8b61c71250037c16f2640e5bd416831dc589bdd0237ada5414429d0099488300.lean/declarations/truthqualified--3a8c632d90e68d586115cf63.md) | 299 | `declaration-track:3a8c632d90e68d586115cf63740a492e880ff81043ca933afacd09bfad0765a6` |
| 28 | `theorem` | [truthQualified_has_receipt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClaimDiscipline/Variant8b61c71250037c16f2640e5bd416831dc589bdd0237ada5414429d0099488300.lean/declarations/truthqualified-has-receipt--7a575b4a29b6cbd2ad8c31f4.md) | 302 | `result-track:7a575b4a29b6cbd2ad8c31f495e23ab96a33719ac74eba3bf2ebce70ff2c4632` |
| 29 | `theorem` | [truthQualified_has_truth_status](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClaimDiscipline/Variant8b61c71250037c16f2640e5bd416831dc589bdd0237ada5414429d0099488300.lean/declarations/truthqualified-has-truth-status--3fe0aa1b9ffdd296ce6e586e.md) | 305 | `result-track:3fe0aa1b9ffdd296ce6e586e3af0d2938252d767eeb86abf3f8871615f5af01b` |
| 30 | `theorem` | [receipt_does_not_entail_truth](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClaimDiscipline/Variant8b61c71250037c16f2640e5bd416831dc589bdd0237ada5414429d0099488300.lean/declarations/receipt-does-not-entail-truth--8450a4c5819d26032f50f72b.md) | 309 | `result-track:8450a4c5819d26032f50f72bf81c5642ff3a804137d6b95ffdac0e0e697d5bbb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
