# Verification target: GRWTSK.Algebra.SolutionOfCubic.Variantc30e60ee961d66db0a449f99d1727704801f5fe22035caf6fc1fc9d8f08ea89f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d6bec6210ab3f543f469d14133abd5a25a46f48f",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/SolutionOfCubic/Variantc30e60ee961d66db0a449f99d1727704801f5fe22035caf6fc1fc9d8f08ea89f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/SolutionOfCubic/Variantc30e60ee961d66db0a449f99d1727704801f5fe22035caf6fc1fc9d8f08ea89f.lean/index.md) · [Full source](../../../../mathematics/Algebra/SolutionOfCubic/Variantc30e60ee961d66db0a449f99d1727704801f5fe22035caf6fc1fc9d8f08ea89f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d6bec6210ab3f543f469d14133abd5a25a46f48f`.

Source path: `GRWTSK/Algebra/SolutionOfCubic/Variantc30e60ee961d66db0a449f99d1727704801f5fe22035caf6fc1fc9d8f08ea89f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/SolutionOfCubic/Variantc30e60ee961d66db0a449f99d1727704801f5fe22035caf6fc1fc9d8f08ea89f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.LinearCombination` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Cyclotomic.Roots` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cube_root_of_unity_sum](../../../../mathematics/Algebra/SolutionOfCubic/Variantc30e60ee961d66db0a449f99d1727704801f5fe22035caf6fc1fc9d8f08ea89f.lean/declarations/cube-root-of-unity-sum--59cf1dc5ec54722f5a3f617a.md) | 54 | `result-track:59cf1dc5ec54722f5a3f617a366ebecab9f9f621dd3a3b41d522cb8c82cc3062` |
| 2 | `theorem` | [cubic_basic_eq_zero_iff](../../../../mathematics/Algebra/SolutionOfCubic/Variantc30e60ee961d66db0a449f99d1727704801f5fe22035caf6fc1fc9d8f08ea89f.lean/declarations/cubic-basic-eq-zero-iff--cd9a993986ad92ecfeebb3b5.md) | 59 | `result-track:cd9a993986ad92ecfeebb3b5659729451afe159864e3f5c7184af11ca7f7167c` |
| 3 | `theorem` | [cubic_monic_eq_zero_iff](../../../../mathematics/Algebra/SolutionOfCubic/Variantc30e60ee961d66db0a449f99d1727704801f5fe22035caf6fc1fc9d8f08ea89f.lean/declarations/cubic-monic-eq-zero-iff--ae986ccb2c9ca09927ccb412.md) | 78 | `result-track:ae986ccb2c9ca09927ccb4127e86c078b8167227b5cdd3031f5dbf795810e0dd` |
| 4 | `theorem` | [cubic_eq_zero_iff](../../../../mathematics/Algebra/SolutionOfCubic/Variantc30e60ee961d66db0a449f99d1727704801f5fe22035caf6fc1fc9d8f08ea89f.lean/declarations/cubic-eq-zero-iff--25f4eb93b00103480a0f01c0.md) | 97 | `result-track:25f4eb93b00103480a0f01c07438a01a69741c7097ca3ab17352d85bbc963607` |
| 5 | `theorem` | [cubic_eq_zero_iff_of_p_eq_zero](../../../../mathematics/Algebra/SolutionOfCubic/Variantc30e60ee961d66db0a449f99d1727704801f5fe22035caf6fc1fc9d8f08ea89f.lean/declarations/cubic-eq-zero-iff-of-p-eq-zero--0740d51016ca3906da9a04fa.md) | 123 | `result-track:0740d51016ca3906da9a04fad59bcbc381bce9ce1116072994f8793960b40102` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
