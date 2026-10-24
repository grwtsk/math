# Verification target: GRWTSK.Algebra.LinearAlgebra.Nonsingular.Varianta9ae669069d269d9672d6e00697fd558eec9c98b6033392bedfdafca22823bb8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "370a24f1272f9a32bfd191e9ae9598124b6fbdf4",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Nonsingular/Varianta9ae669069d269d9672d6e00697fd558eec9c98b6033392bedfdafca22823bb8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Nonsingular/Varianta9ae669069d269d9672d6e00697fd558eec9c98b6033392bedfdafca22823bb8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Nonsingular/Varianta9ae669069d269d9672d6e00697fd558eec9c98b6033392bedfdafca22823bb8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `370a24f1272f9a32bfd191e9ae9598124b6fbdf4`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Nonsingular/Varianta9ae669069d269d9672d6e00697fd558eec9c98b6033392bedfdafca22823bb8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Nonsingular/Varianta9ae669069d269d9672d6e00697fd558eec9c98b6033392bedfdafca22823bb8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isDetpBalanced_iff_sub_mul_det_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Nonsingular/Varianta9ae669069d269d9672d6e00697fd558eec9c98b6033392bedfdafca22823bb8.lean/declarations/isdetpbalanced-iff-sub-mul-det-eq-zero--2f5b74e60a57fa2d1ea0c100.md) | 42 | `result-track:2f5b74e60a57fa2d1ea0c1003b41b1b26a7be66a0935066ac72fb6b49f09c0f4` |
| 2 | `lemma` | [nonsingular_iff_det_mem_nonZeroDivisors](../../../../../mathematics/Algebra/LinearAlgebra/Nonsingular/Varianta9ae669069d269d9672d6e00697fd558eec9c98b6033392bedfdafca22823bb8.lean/declarations/nonsingular-iff-det-mem-nonzerodivisors--825559374284b29c07ecd06a.md) | 46 | `result-track:825559374284b29c07ecd06aa05530b3f667084332812f9f9737ed6752e5675f` |
| 3 | `lemma` | [nonsingular_iff_det_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Nonsingular/Varianta9ae669069d269d9672d6e00697fd558eec9c98b6033392bedfdafca22823bb8.lean/declarations/nonsingular-iff-det-ne-zero--605a304947c98dd4e154f82f.md) | 51 | `result-track:605a304947c98dd4e154f82fac39081a297b30edcfe5204d8bf601edcfae9c13` |
| 4 | `theorem` | [Nonsingular.of_linearIndependent_col](../../../../../mathematics/Algebra/LinearAlgebra/Nonsingular/Varianta9ae669069d269d9672d6e00697fd558eec9c98b6033392bedfdafca22823bb8.lean/declarations/nonsingular-of-linearindependent-col--70d91933e34a42c210aba82b.md) | 56 | `result-track:70d91933e34a42c210aba82bf705c8ecb899040c5ce8099c2a976b32d122d425` |
| 5 | `theorem` | [Nonsingular.of_linearIndependent_row](../../../../../mathematics/Algebra/LinearAlgebra/Nonsingular/Varianta9ae669069d269d9672d6e00697fd558eec9c98b6033392bedfdafca22823bb8.lean/declarations/nonsingular-of-linearindependent-row--6de6670995425b96695d2cce.md) | 80 | `result-track:6de6670995425b96695d2cceeca1dc58594acd852e594b9e651245b069ce79d1` |
| 6 | `theorem` | [Nonsingular.of_leftRegular](../../../../../mathematics/Algebra/LinearAlgebra/Nonsingular/Varianta9ae669069d269d9672d6e00697fd558eec9c98b6033392bedfdafca22823bb8.lean/declarations/nonsingular-of-leftregular--11d7d1884918fb5d55c00e00.md) | 83 | `result-track:11d7d1884918fb5d55c00e00d5add1d334500f62ec33e2edd5d8fcf8d9a4e036` |
| 7 | `theorem` | [Nonsingular.of_rightRegular](../../../../../mathematics/Algebra/LinearAlgebra/Nonsingular/Varianta9ae669069d269d9672d6e00697fd558eec9c98b6033392bedfdafca22823bb8.lean/declarations/nonsingular-of-rightregular--1b4d927bb2e29adabd4cd0a7.md) | 86 | `result-track:1b4d927bb2e29adabd4cd0a79ffb4042ca3c4c5f72a42b9cb219a76501ae1706` |
| 8 | `theorem` | [Nonsingular.linearIndependent_col](../../../../../mathematics/Algebra/LinearAlgebra/Nonsingular/Varianta9ae669069d269d9672d6e00697fd558eec9c98b6033392bedfdafca22823bb8.lean/declarations/nonsingular-linearindependent-col--08fa87058e1ccea126d560d6.md) | 93 | `result-track:08fa87058e1ccea126d560d64a4ee6d0918f7c1f872b54d17bab0e6efbfaded0` |
| 9 | `theorem` | [Nonsingular.linearIndependent_row](../../../../../mathematics/Algebra/LinearAlgebra/Nonsingular/Varianta9ae669069d269d9672d6e00697fd558eec9c98b6033392bedfdafca22823bb8.lean/declarations/nonsingular-linearindependent-row--7bb1559b360c947cb1a7a526.md) | 101 | `result-track:7bb1559b360c947cb1a7a526a4b3e868be2ae3fce18ae0659d1efe8b47c396d1` |
| 10 | `theorem` | [linearIndependent_col_iff](../../../../../mathematics/Algebra/LinearAlgebra/Nonsingular/Varianta9ae669069d269d9672d6e00697fd558eec9c98b6033392bedfdafca22823bb8.lean/declarations/linearindependent-col-iff--35324954b0457351821eb025.md) | 104 | `result-track:35324954b0457351821eb0255357d1dc88d4e3d1d4cb643768c79d4011b9ff5c` |
| 11 | `theorem` | [linearIndependent_row_iff](../../../../../mathematics/Algebra/LinearAlgebra/Nonsingular/Varianta9ae669069d269d9672d6e00697fd558eec9c98b6033392bedfdafca22823bb8.lean/declarations/linearindependent-row-iff--89f0fb7a08aaf9f2ba7e6218.md) | 107 | `result-track:89f0fb7a08aaf9f2ba7e621824c7937b82591c8f49545628dc5d952cc6d42f48` |
| 12 | `theorem` | [isLeftRegular_iff_nonsingular](../../../../../mathematics/Algebra/LinearAlgebra/Nonsingular/Varianta9ae669069d269d9672d6e00697fd558eec9c98b6033392bedfdafca22823bb8.lean/declarations/isleftregular-iff-nonsingular--1f73ad1703ca82a885a1e9cb.md) | 110 | `result-track:1f73ad1703ca82a885a1e9cb90b6c544ed6c382741ec2313b08c7febd98afce6` |
| 13 | `theorem` | [isRightRegular_iff_nonsingular](../../../../../mathematics/Algebra/LinearAlgebra/Nonsingular/Varianta9ae669069d269d9672d6e00697fd558eec9c98b6033392bedfdafca22823bb8.lean/declarations/isrightregular-iff-nonsingular--02f91436d9dc9f22d104566c.md) | 113 | `result-track:02f91436d9dc9f22d104566c2db9c23108a48af4cb707177cdd23f62a322802f` |
| 14 | `lemma` | [Nonsingular.mul](../../../../../mathematics/Algebra/LinearAlgebra/Nonsingular/Varianta9ae669069d269d9672d6e00697fd558eec9c98b6033392bedfdafca22823bb8.lean/declarations/nonsingular-mul--6096994a8af355becb2a8ba7.md) | 116 | `result-track:6096994a8af355becb2a8ba784059cddf9d0cc11fb9f3176bd6493e19c5d45fc` |
| 15 | `lemma` | [nonsingular_mul_iff](../../../../../mathematics/Algebra/LinearAlgebra/Nonsingular/Varianta9ae669069d269d9672d6e00697fd558eec9c98b6033392bedfdafca22823bb8.lean/declarations/nonsingular-mul-iff--14628ac22b44f1a559b759de.md) | 121 | `result-track:14628ac22b44f1a559b759dee735dc6ac8a4b64abc2579c0b358d9fcd0bd05c4` |
| 16 | `lemma` | [Nonsingular.pow](../../../../../mathematics/Algebra/LinearAlgebra/Nonsingular/Varianta9ae669069d269d9672d6e00697fd558eec9c98b6033392bedfdafca22823bb8.lean/declarations/nonsingular-pow--f0d5521a7da07be3ce102a80.md) | 127 | `result-track:f0d5521a7da07be3ce102a8068610a5e4a65e0ce15994e4a7167608ad80311c0` |
| 17 | `theorem` | [isLeftRegular_iff_isRightRegular](../../../../../mathematics/Algebra/LinearAlgebra/Nonsingular/Varianta9ae669069d269d9672d6e00697fd558eec9c98b6033392bedfdafca22823bb8.lean/declarations/isleftregular-iff-isrightregular--0cfffca878869da681ac1239.md) | 132 | `result-track:0cfffca878869da681ac12396a976fbe9d0d5d248030eef8d90ea381d1f2f6a4` |
| 18 | `theorem` | [linearIndependent_col_iff_row](../../../../../mathematics/Algebra/LinearAlgebra/Nonsingular/Varianta9ae669069d269d9672d6e00697fd558eec9c98b6033392bedfdafca22823bb8.lean/declarations/linearindependent-col-iff-row--5a0ab94fe1a27e0f63f7d2e7.md) | 138 | `result-track:5a0ab94fe1a27e0f63f7d2e726b2b43d90338b1e403b08ae8899f0b1e5108487` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Nonsingular/Varianta9ae669069d269d9672d6e00697fd558eec9c98b6033392bedfdafca22823bb8.lean/declarations/instance--ea372eef27d5bbdb137bfb26.md) | 148 | `declaration-track:ea372eef27d5bbdb137bfb26010d2c56c26cb3032b47f2db81245ea519d735a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
