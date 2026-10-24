# Verification target: GRWTSK.Algebra.LinearAlgebra.IntegralPermutationLift.Variantd30707c8db17e6262a65a21a4263431d9477c6edccaa8240e7ef5248bd2ab3d7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0114000af4a9670c8aaedfb1afa055adf951608c",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/IntegralPermutationLift/Variantd30707c8db17e6262a65a21a4263431d9477c6edccaa8240e7ef5248bd2ab3d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/IntegralPermutationLift/Variantd30707c8db17e6262a65a21a4263431d9477c6edccaa8240e7ef5248bd2ab3d7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/IntegralPermutationLift/Variantd30707c8db17e6262a65a21a4263431d9477c6edccaa8240e7ef5248bd2ab3d7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0114000af4a9670c8aaedfb1afa055adf951608c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/IntegralPermutationLift/Variantd30707c8db17e6262a65a21a4263431d9477c6edccaa8240e7ef5248bd2ab3d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/IntegralPermutationLift/Variantd30707c8db17e6262a65a21a4263431d9477c6edccaa8240e7ef5248bd2ab3d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BinaryMatrix.InvolutionProjection` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Sign` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [encodedPerm](../../../../../mathematics/Algebra/LinearAlgebra/IntegralPermutationLift/Variantd30707c8db17e6262a65a21a4263431d9477c6edccaa8240e7ef5248bd2ab3d7.lean/declarations/encodedperm--5d0a34e72bcf9f471cc78cd1.md) | 24 | `declaration-track:5d0a34e72bcf9f471cc78cd18f45cba61e661fcb0f3d6eeeaeb8a7cf0a838cd3` |
| 2 | `theorem` | [encodedPerm_apply](../../../../../mathematics/Algebra/LinearAlgebra/IntegralPermutationLift/Variantd30707c8db17e6262a65a21a4263431d9477c6edccaa8240e7ef5248bd2ab3d7.lean/declarations/encodedperm-apply--a6cbfaf709ff2d6296396c59.md) | 27 | `result-track:a6cbfaf709ff2d6296396c59b364c3c203e71b911002d085c3b5f3f7ac51e88b` |
| 3 | `theorem` | [encodedPerm_symm](../../../../../mathematics/Algebra/LinearAlgebra/IntegralPermutationLift/Variantd30707c8db17e6262a65a21a4263431d9477c6edccaa8240e7ef5248bd2ab3d7.lean/declarations/encodedperm-symm--063faa4d82b422c96ac2c746.md) | 32 | `result-track:063faa4d82b422c96ac2c74645730a296802be47fdc80cfdede3ddefdabcfae7` |
| 4 | `theorem` | [encodedPerm_apply_self](../../../../../mathematics/Algebra/LinearAlgebra/IntegralPermutationLift/Variantd30707c8db17e6262a65a21a4263431d9477c6edccaa8240e7ef5248bd2ab3d7.lean/declarations/encodedperm-apply-self--cd179533ecf40c4d6dc6ec57.md) | 41 | `result-track:cd179533ecf40c4d6dc6ec572d2d3ce28374ba3848da95cf81ef21af12c5d412` |
| 5 | `def` | [integralMatrix](../../../../../mathematics/Algebra/LinearAlgebra/IntegralPermutationLift/Variantd30707c8db17e6262a65a21a4263431d9477c6edccaa8240e7ef5248bd2ab3d7.lean/declarations/integralmatrix--4955a2d06861920b7f0fee0d.md) | 47 | `declaration-track:4955a2d06861920b7f0fee0d5e739c89192a9a32b72bddf0fed6971e83578191` |
| 6 | `theorem` | [integralMatrix_eq_ite](../../../../../mathematics/Algebra/LinearAlgebra/IntegralPermutationLift/Variantd30707c8db17e6262a65a21a4263431d9477c6edccaa8240e7ef5248bd2ab3d7.lean/declarations/integralmatrix-eq-ite--db11aaa2f4dc8fbc08a43fd2.md) | 50 | `result-track:db11aaa2f4dc8fbc08a43fd227d94d5bdbd46d751dbaffbf8647923531310946` |
| 7 | `theorem` | [integralMatrix_eq_one_submatrix](../../../../../mathematics/Algebra/LinearAlgebra/IntegralPermutationLift/Variantd30707c8db17e6262a65a21a4263431d9477c6edccaa8240e7ef5248bd2ab3d7.lean/declarations/integralmatrix-eq-one-submatrix--4a62bd4464bd0738f27bae48.md) | 64 | `result-track:4a62bd4464bd0738f27bae4854d2f53813dc0a6d0b924bbd057e732d0ed4140f` |
| 8 | `theorem` | [integralMatrix_mul_self](../../../../../mathematics/Algebra/LinearAlgebra/IntegralPermutationLift/Variantd30707c8db17e6262a65a21a4263431d9477c6edccaa8240e7ef5248bd2ab3d7.lean/declarations/integralmatrix-mul-self--4441c99b1d85afe550730b28.md) | 72 | `result-track:4441c99b1d85afe550730b2816282127f0aa884f15b512c794377a3335a37a59` |
| 9 | `theorem` | [det_integralMatrix_eq_sign](../../../../../mathematics/Algebra/LinearAlgebra/IntegralPermutationLift/Variantd30707c8db17e6262a65a21a4263431d9477c6edccaa8240e7ef5248bd2ab3d7.lean/declarations/det-integralmatrix-eq-sign--548c34b8c3930eddd91f2220.md) | 88 | `result-track:548c34b8c3930eddd91f2220ffcb2a9d5127be864521fa13dbd2971a1b92e2d6` |
| 10 | `theorem` | [det_integralMatrix_eq_one_or_neg_one](../../../../../mathematics/Algebra/LinearAlgebra/IntegralPermutationLift/Variantd30707c8db17e6262a65a21a4263431d9477c6edccaa8240e7ef5248bd2ab3d7.lean/declarations/det-integralmatrix-eq-one-or-neg-one--2284bdd96daeebee45dc7ed0.md) | 96 | `result-track:2284bdd96daeebee45dc7ed0ccd62ba9d30bffa7aff69a1a097633400365cb53` |
| 11 | `theorem` | [abs_det_integralMatrix](../../../../../mathematics/Algebra/LinearAlgebra/IntegralPermutationLift/Variantd30707c8db17e6262a65a21a4263431d9477c6edccaa8240e7ef5248bd2ab3d7.lean/declarations/abs-det-integralmatrix--ad5ee8708e5803c118c2266d.md) | 103 | `result-track:ad5ee8708e5803c118c2266dfdd081991b3073162822dc4525b2c21c263f1c34` |
| 12 | `theorem` | [integral_parity_agrees](../../../../../mathematics/Algebra/LinearAlgebra/IntegralPermutationLift/Variantd30707c8db17e6262a65a21a4263431d9477c6edccaa8240e7ef5248bd2ab3d7.lean/declarations/integral-parity-agrees--031034ca07497cd6ad79dd79.md) | 108 | `result-track:031034ca07497cd6ad79dd79f2e4852e92f970ef558265f4d233bad68d501863` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
