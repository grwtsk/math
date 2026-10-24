# Verification target: GRWTSK.Analysis.MellinTransform.Checks.Positive.GaussianDensityMoments

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "305f4a25f8cc10f43047ab64693051273f0a2265",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MellinTransform/Checks/Positive/GaussianDensityMoments.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianDensityMoments.lean/index.md) · [Full source](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianDensityMoments.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `305f4a25f8cc10f43047ab64693051273f0a2265`.

Source path: `GRWTSK/Analysis/MellinTransform/Checks/Positive/GaussianDensityMoments.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MellinTransform/Checks/Positive/GaussianDensityMoments.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.MellinTransform.GaussianDensityMoments`](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianDensityMoments.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.Analysis.MellinTransform.CompactGaussianWindow`](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/CompactGaussianWindow.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [exampleWindow](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianDensityMoments.lean/declarations/examplewindow--5554171a0ea5b88c29cbdc33.md) | 14 | `declaration-track:5554171a0ea5b88c29cbdc33c190892c56d6831ac70f1f49ff4ac719b94c8df5` |
| 2 | `lemma` | [exampleWindow_compact](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianDensityMoments.lean/declarations/examplewindow-compact--e8758f081321109c56129dd7.md) | 15 | `result-track:e8758f081321109c56129dd74d5be56bb19784add323a7de5e4f64ea5742c856` |
| 3 | `theorem` | [actual_gaussian_nonzero](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianDensityMoments.lean/declarations/actual-gaussian-nonzero--5505a9d005d06803420a6cc6.md) | 18 | `result-track:5505a9d005d06803420a6cc6421ba9a04401acb68b3a97e5286e54f384f3e595` |
| 4 | `lemma` | [exampleWindow_nonzero](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianDensityMoments.lean/declarations/examplewindow-nonzero--000bcc7dbe52e23ad77fbabf.md) | 42 | `result-track:000bcc7dbe52e23ad77fbabf32a6bc4658115bbaf8cca5b95ee5214bcd11965a` |
| 5 | `lemma` | [exampleWindow_ne_zero](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianDensityMoments.lean/declarations/examplewindow-ne-zero--397abf1810b0999d84532997.md) | 45 | `result-track:397abf1810b0999d8453299701264eaccc10404a63cf7034c77ee5dffd8f1bba` |
| 6 | `theorem` | [actual_weighted_sum](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianDensityMoments.lean/declarations/actual-weighted-sum--659d15fad237c9967a935adc.md) | 50 | `result-track:659d15fad237c9967a935adce922b7c0d1288ac4c5f43bfb9d92c806f9ab7298` |
| 7 | `theorem` | [actual_remote_sum](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianDensityMoments.lean/declarations/actual-remote-sum--463d1447b9d5f133a343c73e.md) | 56 | `result-track:463d1447b9d5f133a343c73e5c73ce2d7d397b2115866755848a7a6361e8673b` |
| 8 | `theorem` | [actual_moment_integrable](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianDensityMoments.lean/declarations/actual-moment-integrable--20df313e40018a0b9bb325a8.md) | 62 | `result-track:20df313e40018a0b9bb325a86e33d98ab0b273147caa42bb3426155d281810f7` |
| 9 | `theorem` | [actual_moment_pos](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianDensityMoments.lean/declarations/actual-moment-pos--560e7ee6f6a3f29ac34ab2fb.md) | 66 | `result-track:560e7ee6f6a3f29ac34ab2fbec09015a033bc3df31e2e4633810e598aca647a5` |
| 10 | `theorem` | [actual_positive_remote_summable](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianDensityMoments.lean/declarations/actual-positive-remote-summable--0b7cfde852a4b1898283ee34.md) | 69 | `result-track:0b7cfde852a4b1898283ee345e33d85f8ab79671de7c84a48f9bf0e46fef9e10` |
| 11 | `theorem` | [remote_zero_cutoff_eq](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianDensityMoments.lean/declarations/remote-zero-cutoff-eq--1ccc24aed6b64df119709ffe.md) | 74 | `result-track:1ccc24aed6b64df119709ffeab0d1bc47dcd8ad9830974bae9feeaa6ef5238fb` |
| 12 | `theorem` | [actual_zero_cutoff_summable](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianDensityMoments.lean/declarations/actual-zero-cutoff-summable--8cc2c905c1428e6962ef5372.md) | 82 | `result-track:8cc2c905c1428e6962ef537289b44106dc3532b93a43ee467aca1e6690815035` |
| 13 | `theorem` | [actual_zero_cutoff_term_pos](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianDensityMoments.lean/declarations/actual-zero-cutoff-term-pos--d0ad4982dff833fbe0b78e1a.md) | 88 | `result-track:d0ad4982dff833fbe0b78e1ae6d9ca19cf7f7c9a3d3b33012b16a41a33ecd3ac` |
| 14 | `theorem` | [actual_zero_cutoff_sum_pos](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianDensityMoments.lean/declarations/actual-zero-cutoff-sum-pos--7808a210f05a98cb8c00e0bb.md) | 93 | `result-track:7808a210f05a98cb8c00e0bbfdf8f0c21e8cec5028235211e143fcb99ca20533` |
| 15 | `theorem` | [actual_zero_cutoff_bound_false](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianDensityMoments.lean/declarations/actual-zero-cutoff-bound-false--3de7051c56ba35e529e275a9.md) | 103 | `result-track:3de7051c56ba35e529e275a9f2906bd1d547f74c1f2fcfc962ac2e4fd02c4cab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
