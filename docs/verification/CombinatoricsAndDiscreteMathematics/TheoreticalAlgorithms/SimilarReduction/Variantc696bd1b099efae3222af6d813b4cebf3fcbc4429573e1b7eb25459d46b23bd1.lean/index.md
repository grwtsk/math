# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SimilarReduction.Variantc696bd1b099efae3222af6d813b4cebf3fcbc4429573e1b7eb25459d46b23bd1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aca131c01e47f8a43bd22f522b6423656a284621",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SimilarReduction/Variantc696bd1b099efae3222af6d813b4cebf3fcbc4429573e1b7eb25459d46b23bd1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SimilarReduction/Variantc696bd1b099efae3222af6d813b4cebf3fcbc4429573e1b7eb25459d46b23bd1.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SimilarReduction/Variantc696bd1b099efae3222af6d813b4cebf3fcbc4429573e1b7eb25459d46b23bd1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aca131c01e47f8a43bd22f522b6423656a284621`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SimilarReduction/Variantc696bd1b099efae3222af6d813b4cebf3fcbc4429573e1b7eb25459d46b23bd1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SimilarReduction/Variantc696bd1b099efae3222af6d813b4cebf3fcbc4429573e1b7eb25459d46b23bd1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.PascalTree.DeterminantFiber` — import line 1; external provider; requires a separately pinned dependency.
- `Surface.Legacy.BinaryLogicMatrix.Similarity` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [SimilarityMetric](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SimilarReduction/Variantc696bd1b099efae3222af6d813b4cebf3fcbc4429573e1b7eb25459d46b23bd1.lean/declarations/similaritymetric--c23503056defa686fd38de2e.md) | 8 | `declaration-track:c23503056defa686fd38de2eefb99a4e56c0ec74637b1d45da82ae4926bbba72` |
| 2 | `inductive` | [PaddingPolicyDescriptor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SimilarReduction/Variantc696bd1b099efae3222af6d813b4cebf3fcbc4429573e1b7eb25459d46b23bd1.lean/declarations/paddingpolicydescriptor--9edec8095969790828566726.md) | 14 | `declaration-track:9edec80959697908285667269dee71057ddbcbeac672092940cd2b308989032b` |
| 3 | `inductive` | [TiePolicy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SimilarReduction/Variantc696bd1b099efae3222af6d813b4cebf3fcbc4429573e1b7eb25459d46b23bd1.lean/declarations/tiepolicy--700cb16f42925544ac045bfc.md) | 20 | `declaration-track:700cb16f42925544ac045bfcf9647eda7a51b567eab38e0fb1293c27b23fa975` |
| 4 | `structure` | [MostSimilarReductionAttachment](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SimilarReduction/Variantc696bd1b099efae3222af6d813b4cebf3fcbc4429573e1b7eb25459d46b23bd1.lean/declarations/mostsimilarreductionattachment--e366df031a034e7652b23ffd.md) | 26 | `declaration-track:e366df031a034e7652b23ffd2ecfc7cf4752ed9f4ae7e827a8535aea7e420700` |
| 5 | `theorem` | [determinantFiber_attachment_uses_similarity](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SimilarReduction/Variantc696bd1b099efae3222af6d813b4cebf3fcbc4429573e1b7eb25459d46b23bd1.lean/declarations/determinantfiber-attachment-uses-similarity--0e875735bfdac5a80961b68b.md) | 36 | `result-track:0e875735bfdac5a80961b68b3053071f6c0bce760f198a6722a930ed3df76703` |
| 6 | `theorem` | [mostSimilarReduction_boundary_visible](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SimilarReduction/Variantc696bd1b099efae3222af6d813b4cebf3fcbc4429573e1b7eb25459d46b23bd1.lean/declarations/mostsimilarreduction-boundary-visible--22490c42ae62864a0e7e6187.md) | 41 | `result-track:22490c42ae62864a0e7e61878570e91612015509d0d3d78e9d5f972a8b9abfe8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
