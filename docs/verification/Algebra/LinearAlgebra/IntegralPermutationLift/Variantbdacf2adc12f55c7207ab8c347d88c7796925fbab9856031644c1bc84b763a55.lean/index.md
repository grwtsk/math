# Verification target: GRWTSK.Algebra.LinearAlgebra.IntegralPermutationLift.Variantbdacf2adc12f55c7207ab8c347d88c7796925fbab9856031644c1bc84b763a55

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55e78448e70aeb33c015bd33834d4ce6c25dcfbf",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/IntegralPermutationLift/Variantbdacf2adc12f55c7207ab8c347d88c7796925fbab9856031644c1bc84b763a55.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/IntegralPermutationLift/Variantbdacf2adc12f55c7207ab8c347d88c7796925fbab9856031644c1bc84b763a55.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/IntegralPermutationLift/Variantbdacf2adc12f55c7207ab8c347d88c7796925fbab9856031644c1bc84b763a55.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55e78448e70aeb33c015bd33834d4ce6c25dcfbf`.

Source path: `GRWTSK/Algebra/LinearAlgebra/IntegralPermutationLift/Variantbdacf2adc12f55c7207ab8c347d88c7796925fbab9856031644c1bc84b763a55.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/IntegralPermutationLift/Variantbdacf2adc12f55c7207ab8c347d88c7796925fbab9856031644c1bc84b763a55.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Algebra.InvolutionProjection` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Sign` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [encodedPerm](../../../../../mathematics/Algebra/LinearAlgebra/IntegralPermutationLift/Variantbdacf2adc12f55c7207ab8c347d88c7796925fbab9856031644c1bc84b763a55.lean/declarations/encodedperm--5bb6e0a0fc582552ea180cc4.md) | 32 | `declaration-track:5bb6e0a0fc582552ea180cc437fc040810f09f0ebfcfa32dfd7183515d7305c2` |
| 2 | `theorem` | [encodedPerm_apply](../../../../../mathematics/Algebra/LinearAlgebra/IntegralPermutationLift/Variantbdacf2adc12f55c7207ab8c347d88c7796925fbab9856031644c1bc84b763a55.lean/declarations/encodedperm-apply--6dda414a713f8abe12843e8e.md) | 35 | `result-track:6dda414a713f8abe12843e8ea1bbbd3af080af74072ed1b5f76c736f69ab0afa` |
| 3 | `theorem` | [encodedPerm_symm](../../../../../mathematics/Algebra/LinearAlgebra/IntegralPermutationLift/Variantbdacf2adc12f55c7207ab8c347d88c7796925fbab9856031644c1bc84b763a55.lean/declarations/encodedperm-symm--fc7e977d661a0ecb7bbb1cb4.md) | 40 | `result-track:fc7e977d661a0ecb7bbb1cb4be7144ab3137d211f302ce8a348fe467570438bb` |
| 4 | `theorem` | [encodedPerm_apply_self](../../../../../mathematics/Algebra/LinearAlgebra/IntegralPermutationLift/Variantbdacf2adc12f55c7207ab8c347d88c7796925fbab9856031644c1bc84b763a55.lean/declarations/encodedperm-apply-self--5e97feb7ccd6f1a5ef140da8.md) | 49 | `result-track:5e97feb7ccd6f1a5ef140da8bbcb2707ce1f25003c856ddd1c36e3ba402d9aef` |
| 5 | `def` | [integralMatrix](../../../../../mathematics/Algebra/LinearAlgebra/IntegralPermutationLift/Variantbdacf2adc12f55c7207ab8c347d88c7796925fbab9856031644c1bc84b763a55.lean/declarations/integralmatrix--c553a7d296123155cc08807b.md) | 55 | `declaration-track:c553a7d296123155cc08807b0bc654868797fa5703949b999222a3384a949dd9` |
| 6 | `theorem` | [integralMatrix_eq_ite](../../../../../mathematics/Algebra/LinearAlgebra/IntegralPermutationLift/Variantbdacf2adc12f55c7207ab8c347d88c7796925fbab9856031644c1bc84b763a55.lean/declarations/integralmatrix-eq-ite--aa3c0e8dd49e562540549db6.md) | 58 | `result-track:aa3c0e8dd49e562540549db6d290ccc87f8664c70201bf86561edb08cbde0b52` |
| 7 | `theorem` | [integralMatrix_eq_one_submatrix](../../../../../mathematics/Algebra/LinearAlgebra/IntegralPermutationLift/Variantbdacf2adc12f55c7207ab8c347d88c7796925fbab9856031644c1bc84b763a55.lean/declarations/integralmatrix-eq-one-submatrix--eae84206f6142a804efc7ae2.md) | 72 | `result-track:eae84206f6142a804efc7ae28c2b210a64d29a2e4ab435dcc78faeaf09b70e5c` |
| 8 | `theorem` | [integralMatrix_mul_self](../../../../../mathematics/Algebra/LinearAlgebra/IntegralPermutationLift/Variantbdacf2adc12f55c7207ab8c347d88c7796925fbab9856031644c1bc84b763a55.lean/declarations/integralmatrix-mul-self--449590189c9a385947158912.md) | 80 | `result-track:449590189c9a38594715891210e185360a6639f63cf2cbc105bbce72ab7cdcbc` |
| 9 | `theorem` | [det_integralMatrix_eq_sign](../../../../../mathematics/Algebra/LinearAlgebra/IntegralPermutationLift/Variantbdacf2adc12f55c7207ab8c347d88c7796925fbab9856031644c1bc84b763a55.lean/declarations/det-integralmatrix-eq-sign--fd52db1c6d6239a0780e01f0.md) | 96 | `result-track:fd52db1c6d6239a0780e01f0ac5b9704d72fe2ea11073f376adc8afd30fbff57` |
| 10 | `theorem` | [det_integralMatrix_eq_one_or_neg_one](../../../../../mathematics/Algebra/LinearAlgebra/IntegralPermutationLift/Variantbdacf2adc12f55c7207ab8c347d88c7796925fbab9856031644c1bc84b763a55.lean/declarations/det-integralmatrix-eq-one-or-neg-one--53be181c682007369faab70c.md) | 104 | `result-track:53be181c682007369faab70c78281cbae764b71e19fa6f987f23b3f8b8e6ae43` |
| 11 | `theorem` | [abs_det_integralMatrix](../../../../../mathematics/Algebra/LinearAlgebra/IntegralPermutationLift/Variantbdacf2adc12f55c7207ab8c347d88c7796925fbab9856031644c1bc84b763a55.lean/declarations/abs-det-integralmatrix--1e1c4932be52de076bcd9699.md) | 111 | `result-track:1e1c4932be52de076bcd96995520d62b89fd2cd57f6c4b117b1e36f842e2d5cd` |
| 12 | `theorem` | [integral_parity_agrees](../../../../../mathematics/Algebra/LinearAlgebra/IntegralPermutationLift/Variantbdacf2adc12f55c7207ab8c347d88c7796925fbab9856031644c1bc84b763a55.lean/declarations/integral-parity-agrees--e04a2305616212511f3de8aa.md) | 116 | `result-track:e04a2305616212511f3de8aa433f91d2a2f40fc301d984e32f65be200d9666c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
