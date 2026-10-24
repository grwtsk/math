# Verification target: GRWTSK.Analysis.Convolution.CompactProfileSupportEdge

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e12c72887d41dd4b2cbebed5db8705ba61d5173",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Convolution/CompactProfileSupportEdge.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Convolution/CompactProfileSupportEdge.lean/index.md) · [Full source](../../../../mathematics/Analysis/Convolution/CompactProfileSupportEdge.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e12c72887d41dd4b2cbebed5db8705ba61d5173`.

Source path: `GRWTSK/Analysis/Convolution/CompactProfileSupportEdge.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Convolution/CompactProfileSupportEdge.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Convolution.CompactProfileFifthDerivativeObstruction`](../../../../mathematics/Analysis/Convolution/CompactProfileFifthDerivativeObstruction.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Calculus.SupportEdgeDifferentiability`](../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SupportEdgeDifferentiability.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.CompactSupportContact`](../../../../mathematics/Analysis/Convolution/CompactSupportContact.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [normalized_second_interior_even](../../../../mathematics/Analysis/Convolution/CompactProfileSupportEdge.lean/declarations/normalized-second-interior-even--0f179d2cebdfe59e130f2ef5.md) | 35 | `result-track:0f179d2cebdfe59e130f2ef52816ee02c8d47320fb48e06aeadd6e48a99c8fe7` |
| 2 | `theorem` | [normalized_second_interior_left_pos](../../../../mathematics/Analysis/Convolution/CompactProfileSupportEdge.lean/declarations/normalized-second-interior-left-pos--4ce25c4be43a04808685cd47.md) | 42 | `result-track:4ce25c4be43a04808685cd4755f66a870a5b7e948bee3379b26799cb3b44b1e7` |
| 3 | `theorem` | [actual_second_autocorrelation_zero_ge_two_scale](../../../../mathematics/Analysis/Convolution/CompactProfileSupportEdge.lean/declarations/actual-second-autocorrelation-zero-ge-two-scale--39397a4f53c2796dc3c5d35a.md) | 47 | `result-track:39397a4f53c2796dc3c5d35a635b3c9c781327c99aaf245f7e538a591d5f8074` |
| 4 | `theorem` | [actual_second_autocorrelation_left_contact](../../../../mathematics/Analysis/Convolution/CompactProfileSupportEdge.lean/declarations/actual-second-autocorrelation-left-contact--ee09cbe90c1c4b573eab2ed7.md) | 54 | `result-track:ee09cbe90c1c4b573eab2ed7f90b483785a26b11876df32ee4d60d3c7c65d7c0` |
| 5 | `theorem` | [actual_second_autocorrelation_not_differentiable_at_two_scale](../../../../mathematics/Analysis/Convolution/CompactProfileSupportEdge.lean/declarations/actual-second-autocorrelation-not-differentiable-at-two-scale--7d1eac85b4942c127db117fd.md) | 72 | `result-track:7d1eac85b4942c127db117fd17ca7101c775f7442831429ec4ffdcaab42008f9` |
| 6 | `theorem` | [fourth_correlation_not_differentiable_at_two_scale](../../../../mathematics/Analysis/Convolution/CompactProfileSupportEdge.lean/declarations/fourth-correlation-not-differentiable-at-two-scale--8d2471c83018514d902647b0.md) | 82 | `result-track:8d2471c83018514d902647b05caadc9fcf8fcf11a5a9e10491eb87044bbac5bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
