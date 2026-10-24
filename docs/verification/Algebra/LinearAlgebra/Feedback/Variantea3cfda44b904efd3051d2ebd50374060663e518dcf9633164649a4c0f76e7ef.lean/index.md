# Verification target: GRWTSK.Algebra.LinearAlgebra.Feedback.Variantea3cfda44b904efd3051d2ebd50374060663e518dcf9633164649a4c0f76e7ef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f723bee0c58cedd7566ea986ab920bb1be23f93b",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Feedback/Variantea3cfda44b904efd3051d2ebd50374060663e518dcf9633164649a4c0f76e7ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Feedback/Variantea3cfda44b904efd3051d2ebd50374060663e518dcf9633164649a4c0f76e7ef.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Feedback/Variantea3cfda44b904efd3051d2ebd50374060663e518dcf9633164649a4c0f76e7ef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f723bee0c58cedd7566ea986ab920bb1be23f93b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Feedback/Variantea3cfda44b904efd3051d2ebd50374060663e518dcf9633164649a4c0f76e7ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Feedback/Variantea3cfda44b904efd3051d2ebd50374060663e518dcf9633164649a4c0f76e7ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.BooleanNetwork` — import line 6; external provider; requires a separately pinned dependency.
- `Boolean.Matrix.Cycle` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DependencyEdge](../../../../../mathematics/Algebra/LinearAlgebra/Feedback/Variantea3cfda44b904efd3051d2ebd50374060663e518dcf9633164649a4c0f76e7ef.lean/declarations/dependencyedge--fd6f49b77c9d8e4e3cddfc21.md) | 17 | `declaration-track:fd6f49b77c9d8e4e3cddfc2175da5b07991a62c426a3c704aa92a22e6c16f090` |
| 2 | `def` | [DependencyFeedbackAt](../../../../../mathematics/Algebra/LinearAlgebra/Feedback/Variantea3cfda44b904efd3051d2ebd50374060663e518dcf9633164649a4c0f76e7ef.lean/declarations/dependencyfeedbackat--33a27b164881ca1a81976e6d.md) | 24 | `declaration-track:33a27b164881ca1a81976e6d24aa31be87521526434651c7c151ee2654671b91` |
| 3 | `def` | [HasDependencyFeedback](../../../../../mathematics/Algebra/LinearAlgebra/Feedback/Variantea3cfda44b904efd3051d2ebd50374060663e518dcf9633164649a4c0f76e7ef.lean/declarations/hasdependencyfeedback--62f65fd5b13fdd788495cfd8.md) | 31 | `declaration-track:62f65fd5b13fdd788495cfd8a8de504a29fb4c66db7c7806ed3523cde3d0b644` |
| 4 | `theorem` | [dependencyMatrix_entry](../../../../../mathematics/Algebra/LinearAlgebra/Feedback/Variantea3cfda44b904efd3051d2ebd50374060663e518dcf9633164649a4c0f76e7ef.lean/declarations/dependencymatrix-entry--dea64ce343b2d438a9a9c05a.md) | 36 | `result-track:dea64ce343b2d438a9a9c05a5257e4fd04a6685cefca5b29fc10d93d259e6d84` |
| 5 | `theorem` | [dependencyEdge_iff_matrixEdge](../../../../../mathematics/Algebra/LinearAlgebra/Feedback/Variantea3cfda44b904efd3051d2ebd50374060663e518dcf9633164649a4c0f76e7ef.lean/declarations/dependencyedge-iff-matrixedge--336ca8a4b19807f17054d7b6.md) | 42 | `result-track:336ca8a4b19807f17054d7b64fa09b5ddf4ccda0b94ffaa183f0f2c64c72286e` |
| 6 | `theorem` | [dependencyFeedbackAt_of_self_dependency](../../../../../mathematics/Algebra/LinearAlgebra/Feedback/Variantea3cfda44b904efd3051d2ebd50374060663e518dcf9633164649a4c0f76e7ef.lean/declarations/dependencyfeedbackat-of-self-dependency--706fa459a3bd98ae25ceee45.md) | 49 | `result-track:706fa459a3bd98ae25ceee45ad250b3c12172100b5907ef83c619aa10451485b` |
| 7 | `theorem` | [dependencyFeedbackAt_of_mutual_dependency](../../../../../mathematics/Algebra/LinearAlgebra/Feedback/Variantea3cfda44b904efd3051d2ebd50374060663e518dcf9633164649a4c0f76e7ef.lean/declarations/dependencyfeedbackat-of-mutual-dependency--883517482a6dd735cb6f995e.md) | 56 | `result-track:883517482a6dd735cb6f995e60dba6a8e37cfd54ce0070364eaf58ca95a4016d` |
| 8 | `theorem` | [dependencyFeedbackAt_of_closed_walk](../../../../../mathematics/Algebra/LinearAlgebra/Feedback/Variantea3cfda44b904efd3051d2ebd50374060663e518dcf9633164649a4c0f76e7ef.lean/declarations/dependencyfeedbackat-of-closed-walk--4d02a3981dd20f381bd5c3c0.md) | 64 | `result-track:4d02a3981dd20f381bd5c3c0304fb9bec09319de3fec49310297919332b7a5d1` |
| 9 | `theorem` | [hasDependencyFeedback_of_feedbackAt](../../../../../mathematics/Algebra/LinearAlgebra/Feedback/Variantea3cfda44b904efd3051d2ebd50374060663e518dcf9633164649a4c0f76e7ef.lean/declarations/hasdependencyfeedback-of-feedbackat--2854a7bf3604905d62456353.md) | 76 | `result-track:2854a7bf3604905d62456353347a85c533fea6c9eb0cd54d03466238e4fd5093` |
| 10 | `theorem` | [hasDependencyFeedback_of_self_dependency](../../../../../mathematics/Algebra/LinearAlgebra/Feedback/Variantea3cfda44b904efd3051d2ebd50374060663e518dcf9633164649a4c0f76e7ef.lean/declarations/hasdependencyfeedback-of-self-dependency--96557f5817e95e2dd00cb098.md) | 83 | `result-track:96557f5817e95e2dd00cb098852a0d9fbbc1e997e009af703f121f6b79e88e02` |
| 11 | `theorem` | [hasDependencyFeedback_of_mutual_dependency](../../../../../mathematics/Algebra/LinearAlgebra/Feedback/Variantea3cfda44b904efd3051d2ebd50374060663e518dcf9633164649a4c0f76e7ef.lean/declarations/hasdependencyfeedback-of-mutual-dependency--9dbdb618aa4f73c3b17fae3c.md) | 92 | `result-track:9dbdb618aa4f73c3b17fae3c15b95087854eaae68f198ffcdc014ac6314d899d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
