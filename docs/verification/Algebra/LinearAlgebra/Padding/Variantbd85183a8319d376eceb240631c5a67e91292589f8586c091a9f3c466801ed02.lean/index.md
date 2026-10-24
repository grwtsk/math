# Verification target: GRWTSK.Algebra.LinearAlgebra.Padding.Variantbd85183a8319d376eceb240631c5a67e91292589f8586c091a9f3c466801ed02

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "053a7a39abafcf395a8e961744078be20a575c20",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Padding/Variantbd85183a8319d376eceb240631c5a67e91292589f8586c091a9f3c466801ed02.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Padding/Variantbd85183a8319d376eceb240631c5a67e91292589f8586c091a9f3c466801ed02.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Padding/Variantbd85183a8319d376eceb240631c5a67e91292589f8586c091a9f3c466801ed02.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `053a7a39abafcf395a8e961744078be20a575c20`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Padding/Variantbd85183a8319d376eceb240631c5a67e91292589f8586c091a9f3c466801ed02.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Padding/Variantbd85183a8319d376eceb240631c5a67e91292589f8586c091a9f3c466801ed02.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.Core` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PaddedBinaryLogicMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Padding/Variantbd85183a8319d376eceb240631c5a67e91292589f8586c091a9f3c466801ed02.lean/declarations/paddedbinarylogicmatrix--41728d6939e65ba0da6aad6f.md) | 7 | `declaration-track:41728d6939e65ba0da6aad6fafaba61d2ce0313a409104de7e5f3bc8e739cbb6` |
| 2 | `inductive` | [PaddingPolicy](../../../../../mathematics/Algebra/LinearAlgebra/Padding/Variantbd85183a8319d376eceb240631c5a67e91292589f8586c091a9f3c466801ed02.lean/declarations/paddingpolicy--6816ce2da118ccd4d6637056.md) | 11 | `declaration-track:6816ce2da118ccd4d66370568371282599d55d423a236ac9a0449543336eea88` |
| 3 | `def` | [name](../../../../../mathematics/Algebra/LinearAlgebra/Padding/Variantbd85183a8319d376eceb240631c5a67e91292589f8586c091a9f3c466801ed02.lean/declarations/name--3dc6f87aacc74179b6581a45.md) | 18 | `declaration-track:3dc6f87aacc74179b6581a450040462cce62016d3f54898117a2b7b9f2f5f210` |
| 4 | `def` | [padTo](../../../../../mathematics/Algebra/LinearAlgebra/Padding/Variantbd85183a8319d376eceb240631c5a67e91292589f8586c091a9f3c466801ed02.lean/declarations/padto--cef53de0e273aa3565baa1bf.md) | 24 | `declaration-track:cef53de0e273aa3565baa1bfebebb5ce54d8961e95951de2d8184de16d0a8a12` |
| 5 | `theorem` | [padTo_preserves_original](../../../../../mathematics/Algebra/LinearAlgebra/Padding/Variantbd85183a8319d376eceb240631c5a67e91292589f8586c091a9f3c466801ed02.lean/declarations/padto-preserves-original--fa3f2bef0ddfd2bee0989a20.md) | 42 | `result-track:fa3f2bef0ddfd2bee0989a203d65f946cec29d72185355042e587b7450e2cb88` |
| 6 | `theorem` | [padTo_marks_row_padding_inactive](../../../../../mathematics/Algebra/LinearAlgebra/Padding/Variantbd85183a8319d376eceb240631c5a67e91292589f8586c091a9f3c466801ed02.lean/declarations/padto-marks-row-padding-inactive--cd82422b5d8a6200dddb9698.md) | 49 | `result-track:cd82422b5d8a6200dddb96989934d89b8db1aa95d190e4ba352b55524d9f71db` |
| 7 | `theorem` | [padTo_marks_col_padding_inactive](../../../../../mathematics/Algebra/LinearAlgebra/Padding/Variantbd85183a8319d376eceb240631c5a67e91292589f8586c091a9f3c466801ed02.lean/declarations/padto-marks-col-padding-inactive--f2d4dd77cf6cbd1abff2ec7e.md) | 56 | `result-track:f2d4dd77cf6cbd1abff2ec7e551d17e3603fbd803995d59ad9552602e40d2a6c` |
| 8 | `theorem` | [padTo_marks_padding_inactive](../../../../../mathematics/Algebra/LinearAlgebra/Padding/Variantbd85183a8319d376eceb240631c5a67e91292589f8586c091a9f3c466801ed02.lean/declarations/padto-marks-padding-inactive--7c65a6d17a4655e63768bcf4.md) | 65 | `result-track:7c65a6d17a4655e63768bcf4087754f6142cd8bfcdb0e68c5daa785243bd0228` |
| 9 | `theorem` | [padTo_active_iff_in_original_bounds](../../../../../mathematics/Algebra/LinearAlgebra/Padding/Variantbd85183a8319d376eceb240631c5a67e91292589f8586c091a9f3c466801ed02.lean/declarations/padto-active-iff-in-original-bounds--2a77df91a3b81a5b8d0a4352.md) | 77 | `result-track:2a77df91a3b81a5b8d0a4352448f56684a0d617e765fbd81d4bfc57b212f6f22` |
| 10 | `theorem` | [padTo_padding_false_ignore](../../../../../mathematics/Algebra/LinearAlgebra/Padding/Variantbd85183a8319d376eceb240631c5a67e91292589f8586c091a9f3c466801ed02.lean/declarations/padto-padding-false-ignore--781c500c07cee5ecf46f9030.md) | 83 | `result-track:781c500c07cee5ecf46f90309729a44e7a6c12fe0619e11721dd16c1db8a6c41` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
