# Verification target: GRWTSK.Analysis.Complex.RationalTentEvaluation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d5a94a9b3306e31e3d819315c91046fa2cc75a9",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/RationalTentEvaluation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentEvaluation.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentEvaluation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d5a94a9b3306e31e3d819315c91046fa2cc75a9`.

Source path: `GRWTSK/Analysis/Complex/RationalTentEvaluation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/RationalTentEvaluation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.RationalPowerEvaluation`](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerEvaluation.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Complex.RationalComplexQuotient`](../../../../mathematics/Analysis/ComplexAnalysis/RationalComplexQuotient.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Input](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentEvaluation.lean/declarations/input--297282d0ad627234b0196caa.md) | 26 | `declaration-track:297282d0ad627234b0196caa066fdff0c98e4b36615248c07acab30ec1fbf780` |
| 2 | `def` | [exponent](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentEvaluation.lean/declarations/exponent--0a82a4f3a09da29de4373b30.md) | 36 | `declaration-track:0a82a4f3a09da29de4373b30c52b09012c370980992c0178dd813a539b3c216f` |
| 3 | `def` | [Admissible](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentEvaluation.lean/declarations/admissible--e45b7eb57b8320a5b48de577.md) | 38 | `declaration-track:e45b7eb57b8320a5b48de5775bde61776798d4d96ab3d80a239bb8048d9aee24` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentEvaluation.lean/declarations/instance--4b720d57e121db4472e22db2.md) | 46 | `declaration-track:4b720d57e121db4472e22db2da9ac4e2eb23bffb18a8cebe36b0e71f6984a0fd` |
| 5 | `def` | [numerator](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentEvaluation.lean/declarations/numerator--64273f463cf1243716ddc879.md) | 50 | `declaration-track:64273f463cf1243716ddc879e9ac72b5c403551dbe2f57603ef27d1415e22e80` |
| 6 | `def` | [denominator](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentEvaluation.lean/declarations/denominator--c4c1c3fef2e694d4e907a076.md) | 56 | `declaration-track:c4c1c3fef2e694d4e907a076562d2b0276ccfbde63acca928f9a6824a2bfb237` |
| 7 | `def` | [quotient](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentEvaluation.lean/declarations/quotient--8b07e2992398e227e5eb1a7a.md) | 59 | `declaration-track:8b07e2992398e227e5eb1a7af6550f93e9ce03cd7975da3a749923056f036d1b` |
| 8 | `def` | [unroundedError](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentEvaluation.lean/declarations/unroundederror--1103b1ba83a3858dd78a5030.md) | 63 | `declaration-track:1103b1ba83a3858dd78a5030d38807fe3262f941ccd0454fa1563c6968812879` |
| 9 | `def` | [compute](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentEvaluation.lean/declarations/compute--98e6b4eed069c1a813512a0f.md) | 70 | `declaration-track:98e6b4eed069c1a813512a0f2c771199a5b448bc9f31d3a398aa9782259ada11` |
| 10 | `def` | [evaluate](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentEvaluation.lean/declarations/evaluate--121ccf2aed72145b39effbd7.md) | 73 | `declaration-track:121ccf2aed72145b39effbd7053e687f2535bf966ecad89c7849e23073cafc5e` |
| 11 | `def` | [verify](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentEvaluation.lean/declarations/verify--4cde475f86ecf333d9b5a704.md) | 79 | `declaration-track:4cde475f86ecf333d9b5a704f9a1e269b03b22bbc834f7c0bd5c3f7f0b7517fd` |
| 12 | `theorem` | [embed_exponent](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentEvaluation.lean/declarations/embed-exponent--028c19a86aa702dd4419592b.md) | 82 | `result-track:028c19a86aa702dd4419592b23c175656717bcf6c03566312d86a2d3b1be15a6` |
| 13 | `theorem` | [quotient_refines](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentEvaluation.lean/declarations/quotient-refines--200a0e56c2ef18de4c185a64.md) | 86 | `result-track:200a0e56c2ef18de4c185a64dfecef409b983475550b40d714d556a3bea8cdce` |
| 14 | `theorem` | [unrounded_sound](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentEvaluation.lean/declarations/unrounded-sound--154d0ee20063230775b9febe.md) | 96 | `result-track:154d0ee20063230775b9febe75abc8b91fa27f3536decb6014453f8a4d309526` |
| 15 | `theorem` | [compute_sound](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentEvaluation.lean/declarations/compute-sound--0634e6188ae40e51f2ec812a.md) | 151 | `result-track:0634e6188ae40e51f2ec812ab7cdfdd84125edcd0ed0e93417e6d02544954068` |
| 16 | `theorem` | [evaluate_some_iff](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentEvaluation.lean/declarations/evaluate-some-iff--6746d6d8ad9e601cbb674405.md) | 158 | `result-track:6746d6d8ad9e601cbb6744054e83df60fc34d24d16318631e9ec7cab873d8688` |
| 17 | `theorem` | [evaluate_none_iff](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentEvaluation.lean/declarations/evaluate-none-iff--841afb8120658d4fc41926d3.md) | 164 | `result-track:841afb8120658d4fc41926d39c9eb8b45ad43caeb00f3b0fbbfba7c499371885` |
| 18 | `theorem` | [verify_sound](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentEvaluation.lean/declarations/verify-sound--1c2a41b1740a5a47ef687910.md) | 170 | `result-track:1c2a41b1740a5a47ef6879104cb9fb73a196e53f4518bd95e31c4b724c51633c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
