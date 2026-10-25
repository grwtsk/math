# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ProofChecking.RepositoryConformance

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "00e24a6fcc7a638d479fa1d8d1efb1c565af6986",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ProofChecking/RepositoryConformance.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofChecking/RepositoryConformance__SourceOccurrencecc2f59a23b87b8ec4312b1ba.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofChecking/RepositoryConformance__SourceOccurrencecc2f59a23b87b8ec4312b1ba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `00e24a6fcc7a638d479fa1d8d1efb1c565af6986`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ProofChecking/RepositoryConformance.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/ProofChecking/RepositoryConformance.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Certificates.ArtifactDerivation`](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ArtifactDerivation__SourceOccurrence45363f8f26269ff59f202d2a.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ExecutionState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofChecking/RepositoryConformance__SourceOccurrencecc2f59a23b87b8ec4312b1ba.lean/declarations/executionstate--159d5b4bcd4f0b4eb650a8f2.md) | 27 | `declaration-track:159d5b4bcd4f0b4eb650a8f297f0e58c1f77d4eb5f4f61bf180cc1ed73599776` |
| 2 | `structure` | [GateStatus](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofChecking/RepositoryConformance__SourceOccurrencecc2f59a23b87b8ec4312b1ba.lean/declarations/gatestatus--84420cb824b6c80df7f3681b.md) | 37 | `declaration-track:84420cb824b6c80df7f3681b73fad111f0242981641f4f39b061c71e97e97141` |
| 3 | `def` | [GateStatus.Accepted](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofChecking/RepositoryConformance__SourceOccurrencecc2f59a23b87b8ec4312b1ba.lean/declarations/gatestatus-accepted--c22c33b31349079321ff634a.md) | 43 | `declaration-track:c22c33b31349079321ff634a5793f106095b3ad4977946868b4cc60659ed6df6` |
| 4 | `theorem` | [GateStatus.not_accepted_of_incomplete](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofChecking/RepositoryConformance__SourceOccurrencecc2f59a23b87b8ec4312b1ba.lean/declarations/gatestatus-not-accepted-of-incomplete--6795b2d9ca043311c4a8482c.md) | 46 | `result-track:6795b2d9ca043311c4a8482c964f73c348e7c8d201eec86be4390addeb2f7c35` |
| 5 | `structure` | [ReconstructionEvidence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofChecking/RepositoryConformance__SourceOccurrencecc2f59a23b87b8ec4312b1ba.lean/declarations/reconstructionevidence--46205a29ba1fd2eac68b927f.md) | 54 | `declaration-track:46205a29ba1fd2eac68b927ffad0dc6af4b121fc51355bd97e828093eb1d0bb1` |
| 6 | `structure` | [FormalCorrectnessEvidence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofChecking/RepositoryConformance__SourceOccurrencecc2f59a23b87b8ec4312b1ba.lean/declarations/formalcorrectnessevidence--ef3f73ffbf49940150411990.md) | 65 | `declaration-track:ef3f73ffbf4994015041199056e0c91221acdaa2d9f486e858af8324c5c9ae7f` |
| 7 | `theorem` | [FormalCorrectnessEvidence.meaning_of_coverage](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofChecking/RepositoryConformance__SourceOccurrencecc2f59a23b87b8ec4312b1ba.lean/declarations/formalcorrectnessevidence-meaning-of-coverage--ffaeef42d3e2a85a988021f3.md) | 76 | `result-track:ffaeef42d3e2a85a988021f338bdb6447301b799a17a59900e5a327eee26d47e` |
| 8 | `structure` | [EvidenceAvailability](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofChecking/RepositoryConformance__SourceOccurrencecc2f59a23b87b8ec4312b1ba.lean/declarations/evidenceavailability--21b17a80ae82d277de2dca53.md) | 86 | `declaration-track:21b17a80ae82d277de2dca5359f42049429038912607f32b497f36d1d98efef7` |
| 9 | `def` | [EvidenceAvailability.HasReconstruction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofChecking/RepositoryConformance__SourceOccurrencecc2f59a23b87b8ec4312b1ba.lean/declarations/evidenceavailability-hasreconstruction--b2e54b916c0c4d862427a271.md) | 92 | `declaration-track:b2e54b916c0c4d862427a2718622fa0cd575f6824c22dc843a92cad0f13c8353` |
| 10 | `def` | [EvidenceAvailability.HasFormalCorrectness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofChecking/RepositoryConformance__SourceOccurrencecc2f59a23b87b8ec4312b1ba.lean/declarations/evidenceavailability-hasformalcorrectness--ea1f07609473c3f473acacd8.md) | 99 | `declaration-track:ea1f07609473c3f473acacd8f420f887284bfbb88c8dae8b0396c231b5bb0c6d` |
| 11 | `theorem` | [EvidenceAvailability.dimensions_are_independent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofChecking/RepositoryConformance__SourceOccurrencecc2f59a23b87b8ec4312b1ba.lean/declarations/evidenceavailability-dimensions-are-independent--e542b3b15921eceeedb1e9e2.md) | 110 | `result-track:e542b3b15921eceeedb1e9e21a5a51315bdfc624a658f994130635a509d04dad` |
| 12 | `structure` | [StatusVector](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofChecking/RepositoryConformance__SourceOccurrencecc2f59a23b87b8ec4312b1ba.lean/declarations/statusvector--bf0a87a3de8f54c38c9997eb.md) | 131 | `declaration-track:bf0a87a3de8f54c38c9997eb65875a87882c8a50098c44c934bca3699985bbfb` |
| 13 | `def` | [StatusVector.Organized](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofChecking/RepositoryConformance__SourceOccurrencecc2f59a23b87b8ec4312b1ba.lean/declarations/statusvector-organized--0c51df2e3f8a82826eb210e4.md) | 150 | `declaration-track:0c51df2e3f8a82826eb210e4364f498c52fbcb5885007fb637b4d97d9a6c99fa` |
| 14 | `def` | [StatusVector.Reconstructible](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofChecking/RepositoryConformance__SourceOccurrencecc2f59a23b87b8ec4312b1ba.lean/declarations/statusvector-reconstructible--c4d2cb802dcccb6865f99da3.md) | 155 | `declaration-track:c4d2cb802dcccb6865f99da3157e30ebb7a5e32ca8daa1ccc79b3c8d74989a07` |
| 15 | `def` | [StatusVector.FormallyChecked](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofChecking/RepositoryConformance__SourceOccurrencecc2f59a23b87b8ec4312b1ba.lean/declarations/statusvector-formallychecked--101a9cf52256ce69c1b78c7f.md) | 160 | `declaration-track:101a9cf52256ce69c1b78c7fad09c7ebe2d89a2ea4cb5b07a7aec784271bb770` |
| 16 | `def` | [StatusVector.IndependentlyValidated](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofChecking/RepositoryConformance__SourceOccurrencecc2f59a23b87b8ec4312b1ba.lean/declarations/statusvector-independentlyvalidated--ec3c9426fe5e54c27428e0f9.md) | 166 | `declaration-track:ec3c9426fe5e54c27428e0f9da32e9702dee3b7b26fee156e62a2b8aeb6e80b6` |
| 17 | `theorem` | [StatusVector.independentlyValidated_implies_formallyChecked](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofChecking/RepositoryConformance__SourceOccurrencecc2f59a23b87b8ec4312b1ba.lean/declarations/statusvector-independentlyvalidated-implies-formallychecked--ec3174ad7a4ad2ec9939002a.md) | 170 | `result-track:ec3174ad7a4ad2ec9939002a3ec84b9a504e90647695815f5b43ac2cbcaf98c7` |
| 18 | `theorem` | [StatusVector.formallyChecked_implies_reconstructible](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofChecking/RepositoryConformance__SourceOccurrencecc2f59a23b87b8ec4312b1ba.lean/declarations/statusvector-formallychecked-implies-reconstructible--d4f22255485029836e728c54.md) | 174 | `result-track:d4f22255485029836e728c546250bb978e4ef71892fd5920f62d24435eda1c84` |
| 19 | `theorem` | [StatusVector.reconstructible_implies_organized](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofChecking/RepositoryConformance__SourceOccurrencecc2f59a23b87b8ec4312b1ba.lean/declarations/statusvector-reconstructible-implies-organized--5005168157a7ad668e904850.md) | 178 | `result-track:5005168157a7ad668e90485016323f655f1ea0a10ea4a883039eaeb4a744bd4d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
