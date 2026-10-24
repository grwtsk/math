# Verification target: GRWTSK.Analysis.FunctionalAnalysis.PrismaticEmbedding.Variantbd09a24f4e429ff595bc9195bb2eae0963ac296f8fa3b241bb24a9f86aefdd18

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51c8df5c1fee0c360a68ef4c108ef6013c96b6cc",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/PrismaticEmbedding/Variantbd09a24f4e429ff595bc9195bb2eae0963ac296f8fa3b241bb24a9f86aefdd18.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/PrismaticEmbedding/Variantbd09a24f4e429ff595bc9195bb2eae0963ac296f8fa3b241bb24a9f86aefdd18.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/PrismaticEmbedding/Variantbd09a24f4e429ff595bc9195bb2eae0963ac296f8fa3b241bb24a9f86aefdd18.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51c8df5c1fee0c360a68ef4c108ef6013c96b6cc`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/PrismaticEmbedding/Variantbd09a24f4e429ff595bc9195bb2eae0963ac296f8fa3b241bb24a9f86aefdd18.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/PrismaticEmbedding/Variantbd09a24f4e429ff595bc9195bb2eae0963ac296f8fa3b241bb24a9f86aefdd18.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Hilbert.SpectralMeasure` — import line 6; external provider; requires a separately pinned dependency.
- `Surface.Prismatic.Cohomology` — import line 7; external provider; requires a separately pinned dependency.
- `Surface.Prismatic.EdgeRelaxation` — import line 8; external provider; requires a separately pinned dependency.
- `Surface.Prismatic.TheoremSeed` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Hilbert.PrismaticEmbedding](../../../../../mathematics/Analysis/FunctionalAnalysis/PrismaticEmbedding/Variantbd09a24f4e429ff595bc9195bb2eae0963ac296f8fa3b241bb24a9f86aefdd18.lean/declarations/hilbert-prismaticembedding--8d1a7712f75fece918a02474.md) | 40 | `declaration-track:8d1a7712f75fece918a02474b199f2765695c4a0231c082277b508127935068f` |
| 2 | `def` | [Hilbert.PrismaticEmbedding.ready](../../../../../mathematics/Analysis/FunctionalAnalysis/PrismaticEmbedding/Variantbd09a24f4e429ff595bc9195bb2eae0963ac296f8fa3b241bb24a9f86aefdd18.lean/declarations/hilbert-prismaticembedding-ready--e738260cb835f259e91b89da.md) | 57 | `declaration-track:e738260cb835f259e91b89da63699a88c8a9fd8891d9d9cf75290d44f0488fba` |
| 3 | `def` | [Hilbert.PrismaticEmbedding.theoremReady](../../../../../mathematics/Analysis/FunctionalAnalysis/PrismaticEmbedding/Variantbd09a24f4e429ff595bc9195bb2eae0963ac296f8fa3b241bb24a9f86aefdd18.lean/declarations/hilbert-prismaticembedding-theoremready--ecb5685c15af2e2dee24fd8a.md) | 69 | `declaration-track:ecb5685c15af2e2dee24fd8a05c6dad288325d190943562d8642230a685f887f` |
| 4 | `structure` | [Hilbert.PrismaticEmbeddingTheoremCertificate](../../../../../mathematics/Analysis/FunctionalAnalysis/PrismaticEmbedding/Variantbd09a24f4e429ff595bc9195bb2eae0963ac296f8fa3b241bb24a9f86aefdd18.lean/declarations/hilbert-prismaticembeddingtheoremcertificate--9aae6cbd58a45431987578fc.md) | 91 | `declaration-track:9aae6cbd58a45431987578fce7de8d987539b541e2d9bdc8255c4280a3bab883` |
| 5 | `def` | [Hilbert.PrismaticEmbeddingTheoremCertificate.certifiedForMajorProof](../../../../../mathematics/Analysis/FunctionalAnalysis/PrismaticEmbedding/Variantbd09a24f4e429ff595bc9195bb2eae0963ac296f8fa3b241bb24a9f86aefdd18.lean/declarations/hilbert-prismaticembeddingtheoremcertificate-certifiedformajorproof--b52d5f678649dd965c09dc51.md) | 130 | `declaration-track:b52d5f678649dd965c09dc51af0a563702677d02c998690f2f98b4155e0a48fc` |
| 6 | `theorem` | [Hilbert.PrismaticEmbeddingTheoremCertificate.certifiedForMajorProof_of_fields](../../../../../mathematics/Analysis/FunctionalAnalysis/PrismaticEmbedding/Variantbd09a24f4e429ff595bc9195bb2eae0963ac296f8fa3b241bb24a9f86aefdd18.lean/declarations/hilbert-prismaticembeddingtheoremcertificate-certifiedformajorproof-of-f--4332b555fbc066de7d9c7798.md) | 155 | `result-track:4332b555fbc066de7d9c77982a9bdb03643f55c95db2c86f9ee163f85c4a7dac` |
| 7 | `theorem` | [Hilbert.PrismaticEmbeddingTheoremCertificate.hodgeTate_rejects_externalAssumption](../../../../../mathematics/Analysis/FunctionalAnalysis/PrismaticEmbedding/Variantbd09a24f4e429ff595bc9195bb2eae0963ac296f8fa3b241bb24a9f86aefdd18.lean/declarations/hilbert-prismaticembeddingtheoremcertificate-hodgetate-rejects-externala--1bf26b51a49a1ad35337c620.md) | 181 | `result-track:1bf26b51a49a1ad35337c6209913ff353bad8d825953e9ab0e5b847245728843` |
| 8 | `theorem` | [Hilbert.PrismaticEmbeddingTheoremCertificate.hodgeTate_rejects_placeholderInput](../../../../../mathematics/Analysis/FunctionalAnalysis/PrismaticEmbedding/Variantbd09a24f4e429ff595bc9195bb2eae0963ac296f8fa3b241bb24a9f86aefdd18.lean/declarations/hilbert-prismaticembeddingtheoremcertificate-hodgetate-rejects-placehold--ef1ee7a8f7e6a9aef50b97de.md) | 201 | `result-track:ef1ee7a8f7e6a9aef50b97ded4da57901337f3e3060de3ee63bc6d8f49559de1` |
| 9 | `theorem` | [Hilbert.PrismaticEmbeddingTheoremCertificate.hodgeTate_pullback_rejects_externalAssumption](../../../../../mathematics/Analysis/FunctionalAnalysis/PrismaticEmbedding/Variantbd09a24f4e429ff595bc9195bb2eae0963ac296f8fa3b241bb24a9f86aefdd18.lean/declarations/hilbert-prismaticembeddingtheoremcertificate-hodgetate-pullback-rejects--c0a04bfdcd62b874c0519423.md) | 221 | `result-track:c0a04bfdcd62b874c0519423c59531ae1ab9dee8175e8b89bd05b82bbcd8385b` |
| 10 | `theorem` | [Hilbert.PrismaticEmbeddingTheoremCertificate.hodgeTate_pullback_rejects_placeholderInput](../../../../../mathematics/Analysis/FunctionalAnalysis/PrismaticEmbedding/Variantbd09a24f4e429ff595bc9195bb2eae0963ac296f8fa3b241bb24a9f86aefdd18.lean/declarations/hilbert-prismaticembeddingtheoremcertificate-hodgetate-pullback-rejects--5a7ab101b378df23b1fa247d.md) | 241 | `result-track:5a7ab101b378df23b1fa247d5dce7906d844911f5c06619b27592db1168d7cb7` |
| 11 | `theorem` | [Hilbert.PrismaticEmbeddingTheoremCertificate.implies_theoremReady](../../../../../mathematics/Analysis/FunctionalAnalysis/PrismaticEmbedding/Variantbd09a24f4e429ff595bc9195bb2eae0963ac296f8fa3b241bb24a9f86aefdd18.lean/declarations/hilbert-prismaticembeddingtheoremcertificate-implies-theoremready--7dff7c68d6d842c2d259ea1a.md) | 261 | `result-track:7dff7c68d6d842c2d259ea1a960047a34866f4834ea53f234b087210c983204a` |
| 12 | `theorem` | [Hilbert.PrismaticEmbedding.embedding_law](../../../../../mathematics/Analysis/FunctionalAnalysis/PrismaticEmbedding/Variantbd09a24f4e429ff595bc9195bb2eae0963ac296f8fa3b241bb24a9f86aefdd18.lean/declarations/hilbert-prismaticembedding-embedding-law--fe0c68511b7e34bb84d6e4fe.md) | 273 | `result-track:fe0c68511b7e34bb84d6e4fee170edb7d81ad4fbb5425611a5444bf8d836c1cd` |
| 13 | `def` | [Hilbert.unitPrismaticEmbedding](../../../../../mathematics/Analysis/FunctionalAnalysis/PrismaticEmbedding/Variantbd09a24f4e429ff595bc9195bb2eae0963ac296f8fa3b241bb24a9f86aefdd18.lean/declarations/hilbert-unitprismaticembedding--76c5c849121bc3a25039032e.md) | 282 | `declaration-track:76c5c849121bc3a25039032e91bd5e46af1f96c3af9e52535f82734211a8801d` |
| 14 | `def` | [Hilbert.unitPrismaticEmbeddingReady](../../../../../mathematics/Analysis/FunctionalAnalysis/PrismaticEmbedding/Variantbd09a24f4e429ff595bc9195bb2eae0963ac296f8fa3b241bb24a9f86aefdd18.lean/declarations/hilbert-unitprismaticembeddingready--7f612c53da1059df60a49588.md) | 300 | `declaration-track:7f612c53da1059df60a49588e310017fdb79b0d521cd17a062c5b0fb082d77c2` |
| 15 | `theorem` | [Hilbert.unitPrismaticEmbedding_not_ready](../../../../../mathematics/Analysis/FunctionalAnalysis/PrismaticEmbedding/Variantbd09a24f4e429ff595bc9195bb2eae0963ac296f8fa3b241bb24a9f86aefdd18.lean/declarations/hilbert-unitprismaticembedding-not-ready--202ce7e95dad983b70dbbcef.md) | 303 | `result-track:202ce7e95dad983b70dbbcef0d514d55933ff92c327d5cc22727c3b9b36109af` |
| 16 | `theorem` | [Hilbert.unitPrismaticEmbedding_not_theoremReady](../../../../../mathematics/Analysis/FunctionalAnalysis/PrismaticEmbedding/Variantbd09a24f4e429ff595bc9195bb2eae0963ac296f8fa3b241bb24a9f86aefdd18.lean/declarations/hilbert-unitprismaticembedding-not-theoremready--974e296434cc5c32ddf3404e.md) | 308 | `result-track:974e296434cc5c32ddf3404e69273c0aaa6fb1d8f94cf96e11d7ef84149db6b0` |
| 17 | `structure` | [Hilbert.PrismaticHilbertVocabularyDescriptor](../../../../../mathematics/Analysis/FunctionalAnalysis/PrismaticEmbedding/Variantbd09a24f4e429ff595bc9195bb2eae0963ac296f8fa3b241bb24a9f86aefdd18.lean/declarations/hilbert-prismatichilbertvocabularydescriptor--f8e7e1b373f1e97cd2a6f0f0.md) | 335 | `declaration-track:f8e7e1b373f1e97cd2a6f0f02fecf589411c68f7c1eb02627fb8f6a20fc57906` |
| 18 | `def` | [Hilbert.standardPrismaticHilbertVocabularyDescriptor](../../../../../mathematics/Analysis/FunctionalAnalysis/PrismaticEmbedding/Variantbd09a24f4e429ff595bc9195bb2eae0963ac296f8fa3b241bb24a9f86aefdd18.lean/declarations/hilbert-standardprismatichilbertvocabularydescriptor--e51385389b48040b5e26122f.md) | 345 | `declaration-track:e51385389b48040b5e26122fe8b5847dbcee1437d0ad3a310a1c72e6e341d5a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
