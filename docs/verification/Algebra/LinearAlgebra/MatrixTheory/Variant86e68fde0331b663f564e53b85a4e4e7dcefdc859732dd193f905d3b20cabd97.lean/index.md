# Verification target: GRWTSK.Algebra.LinearAlgebra.Matrix.Variant86e68fde0331b663f564e53b85a4e4e7dcefdc859732dd193f905d3b20cabd97

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "78509cc9d2d29ce6e7c73a48fcb2d5e2d4d85c4e",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variant86e68fde0331b663f564e53b85a4e4e7dcefdc859732dd193f905d3b20cabd97.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant86e68fde0331b663f564e53b85a4e4e7dcefdc859732dd193f905d3b20cabd97.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant86e68fde0331b663f564e53b85a4e4e7dcefdc859732dd193f905d3b20cabd97.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `78509cc9d2d29ce6e7c73a48fcb2d5e2d4d85c4e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Matrix/Variant86e68fde0331b663f564e53b85a4e4e7dcefdc859732dd193f905d3b20cabd97.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Matrix/Variant86e68fde0331b663f564e53b85a4e4e7dcefdc859732dd193f905d3b20cabd97.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Eigenspace.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [hasEigenvector_toLin_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant86e68fde0331b663f564e53b85a4e4e7dcefdc859732dd193f905d3b20cabd97.lean/declarations/haseigenvector-tolin-diagonal--ddb11461f0fcc428d8558195.md) | 32 | `result-track:ddb11461f0fcc428d855819534b744cc1fe43e7374735a88c9e167e4fbabd436` |
| 2 | `lemma` | [hasEigenvector_toLin'_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant86e68fde0331b663f564e53b85a4e4e7dcefdc859732dd193f905d3b20cabd97.lean/declarations/haseigenvector-tolin-diagonal--1b3a9a456870fd6ca8d52302.md) | 37 | `result-track:1b3a9a456870fd6ca8d52302a52d8dc977ae76c76b69d255e26bff33005cc966` |
| 3 | `lemma` | [hasEigenvalue_toLin_diagonal_iff](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant86e68fde0331b663f564e53b85a4e4e7dcefdc859732dd193f905d3b20cabd97.lean/declarations/haseigenvalue-tolin-diagonal-iff--4db773d439b1aad91ad239a8.md) | 42 | `result-track:4db773d439b1aad91ad239a8c367fef64833282d431f718360a33fa7a9bd26a5` |
| 4 | `lemma` | [hasEigenvalue_toLin'_diagonal_iff](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant86e68fde0331b663f564e53b85a4e4e7dcefdc859732dd193f905d3b20cabd97.lean/declarations/haseigenvalue-tolin-diagonal-iff--03de2832aff5a1b48a09f2f1.md) | 66 | `result-track:03de2832aff5a1b48a09f2f104fab016aa3c45d0667fe5254ad15c49c77e8a07` |
| 5 | `lemma` | [spectrum_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant86e68fde0331b663f564e53b85a4e4e7dcefdc859732dd193f905d3b20cabd97.lean/declarations/spectrum-diagonal--7849c09d7df50f0da4a78800.md) | 73 | `result-track:7849c09d7df50f0da4a788009fcadd1605699f33acd569e8212b60c3d5640e87` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
