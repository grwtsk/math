# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Alignment.Variantf5c6527a8ad04c37f7cafeb28d5a2b6a90e0a1134149236d3982d13c0314f5ba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f8a45dc3f19e7bf501cca933cf76d7f3db06c21",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alignment/Variantf5c6527a8ad04c37f7cafeb28d5a2b6a90e0a1134149236d3982d13c0314f5ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alignment/Variantf5c6527a8ad04c37f7cafeb28d5a2b6a90e0a1134149236d3982d13c0314f5ba.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alignment/Variantf5c6527a8ad04c37f7cafeb28d5a2b6a90e0a1134149236d3982d13c0314f5ba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f8a45dc3f19e7bf501cca933cf76d7f3db06c21`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alignment/Variantf5c6527a8ad04c37f7cafeb28d5a2b6a90e0a1134149236d3982d13c0314f5ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alignment/Variantf5c6527a8ad04c37f7cafeb28d5a2b6a90e0a1134149236d3982d13c0314f5ba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Federation.Bridge` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Federation.GlobalId` — import line 2; external provider; requires a separately pinned dependency.
- `Mathematics.Authority.Kernel` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [AlignmentEvidenceKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alignment/Variantf5c6527a8ad04c37f7cafeb28d5a2b6a90e0a1134149236d3982d13c0314f5ba.lean/declarations/alignmentevidencekind--b73a739b69cf6710f5e79453.md) | 10 | `declaration-track:b73a739b69cf6710f5e79453e6b4fe0a94dad6ea625c523f9e6782ee9e4919aa` |
| 2 | `structure` | [AlignmentEvidence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alignment/Variantf5c6527a8ad04c37f7cafeb28d5a2b6a90e0a1134149236d3982d13c0314f5ba.lean/declarations/alignmentevidence--a22831c73a29de11a9ae92c4.md) | 19 | `declaration-track:a22831c73a29de11a9ae92c433ba2b8dc5aefe506758df1ee03e93db7cee614a` |
| 3 | `inductive` | [ExactAlignmentKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alignment/Variantf5c6527a8ad04c37f7cafeb28d5a2b6a90e0a1134149236d3982d13c0314f5ba.lean/declarations/exactalignmentkind--94cf570444516f902ad1d65e.md) | 28 | `declaration-track:94cf570444516f902ad1d65e5173954dae50a3df352ca7e28bb3f8b135d2b250` |
| 4 | `structure` | [ExactRelationProfile](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alignment/Variantf5c6527a8ad04c37f7cafeb28d5a2b6a90e0a1134149236d3982d13c0314f5ba.lean/declarations/exactrelationprofile--ede274f0204e01387c11db79.md) | 35 | `declaration-track:ede274f0204e01387c11db7948efbddc350d0c6a1ac6ba05c617a0386cc54535` |
| 5 | `structure` | [CertifiedExactAlignment](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alignment/Variantf5c6527a8ad04c37f7cafeb28d5a2b6a90e0a1134149236d3982d13c0314f5ba.lean/declarations/certifiedexactalignment--fd580a40be788d138f3870c8.md) | 52 | `declaration-track:fd580a40be788d138f3870c80b956a546cb8134e3a8e1f07713b3eb9a2d07b7d` |
| 6 | `structure` | [QuotientAlignment](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alignment/Variantf5c6527a8ad04c37f7cafeb28d5a2b6a90e0a1134149236d3982d13c0314f5ba.lean/declarations/quotientalignment--a6624d083a747740ca6cf7c0.md) | 63 | `declaration-track:a6624d083a747740ca6cf7c01a4985821867f7bd227c6d2b85f716b1e6d2e68d` |
| 7 | `inductive` | [AlignmentArtifact](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alignment/Variantf5c6527a8ad04c37f7cafeb28d5a2b6a90e0a1134149236d3982d13c0314f5ba.lean/declarations/alignmentartifact--9495dfb1e691c9421ca39e9c.md) | 69 | `declaration-track:9495dfb1e691c9421ca39e9c6e92b875b09b63258eb0e52a8b5da5808500cabb` |
| 8 | `theorem` | [related](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alignment/Variantf5c6527a8ad04c37f7cafeb28d5a2b6a90e0a1134149236d3982d13c0314f5ba.lean/declarations/related--b6a0af3e1bacbcf6eb210e92.md) | 75 | `result-track:b6a0af3e1bacbcf6eb210e9210fe30ed072d72ce20772b1906182cc10489ec43` |
| 9 | `theorem` | [lexical_similarity_cannot_generate_quotient](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alignment/Variantf5c6527a8ad04c37f7cafeb28d5a2b6a90e0a1134149236d3982d13c0314f5ba.lean/declarations/lexical-similarity-cannot-generate-quotient--03c9e745d42d83cefd74fe0e.md) | 81 | `result-track:03c9e745d42d83cefd74fe0edcc7c41482d2e72134d628609324e43acce2283a` |
| 10 | `theorem` | [embedding_similarity_cannot_generate_quotient](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alignment/Variantf5c6527a8ad04c37f7cafeb28d5a2b6a90e0a1134149236d3982d13c0314f5ba.lean/declarations/embedding-similarity-cannot-generate-quotient--b95ed1ef492544c927b555ab.md) | 90 | `result-track:b95ed1ef492544c927b555abe42586de0bc3363b1dc1036d1d8d331e270e2295` |
| 11 | `theorem` | [structural_similarity_cannot_generate_quotient](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alignment/Variantf5c6527a8ad04c37f7cafeb28d5a2b6a90e0a1134149236d3982d13c0314f5ba.lean/declarations/structural-similarity-cannot-generate-quotient--5be1e8101c3b1aebc6fc3f91.md) | 99 | `result-track:5be1e8101c3b1aebc6fc3f91ad72e22ce7b9864f8430ba50f673aeb4f4cd7bfd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
