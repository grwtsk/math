# Verification target: GRWTSK.Algebra.Regular.Variant1e9fd85710141d4f5634a2ff0b0e7696118e6ebbe4b15ebdeddbe3b6bb2c0f7d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d7e8eaa8778088d115a7269395f884cf8a5ebeb1",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Regular/Variant1e9fd85710141d4f5634a2ff0b0e7696118e6ebbe4b15ebdeddbe3b6bb2c0f7d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Regular/Variant1e9fd85710141d4f5634a2ff0b0e7696118e6ebbe4b15ebdeddbe3b6bb2c0f7d.lean/index.md) · [Full source](../../../../mathematics/Algebra/Regular/Variant1e9fd85710141d4f5634a2ff0b0e7696118e6ebbe4b15ebdeddbe3b6bb2c0f7d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d7e8eaa8778088d115a7269395f884cf8a5ebeb1`.

Source path: `GRWTSK/Algebra/Regular/Variant1e9fd85710141d4f5634a2ff0b0e7696118e6ebbe4b15ebdeddbe3b6bb2c0f7d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Regular/Variant1e9fd85710141d4f5634a2ff0b0e7696118e6ebbe4b15ebdeddbe3b6bb2c0f7d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isLeftRegular_of_non_zero_divisor](../../../../mathematics/Algebra/Regular/Variant1e9fd85710141d4f5634a2ff0b0e7696118e6ebbe4b15ebdeddbe3b6bb2c0f7d.lean/declarations/isleftregular-of-non-zero-divisor--0507c6d65b85483a07d47479.md) | 31 | `result-track:0507c6d65b85483a07d474799c060708e403a13ca7ee9b989aaeee9835b27b12` |
| 2 | `theorem` | [isRightRegular_of_non_zero_divisor](../../../../mathematics/Algebra/Regular/Variant1e9fd85710141d4f5634a2ff0b0e7696118e6ebbe4b15ebdeddbe3b6bb2c0f7d.lean/declarations/isrightregular-of-non-zero-divisor--8c4627753202406bace6744e.md) | 38 | `result-track:8c4627753202406bace6744eb7908e665e4e5c35c6382f31ec36b82151981cbe` |
| 3 | `theorem` | [IsRegular.of_ne_zero'](../../../../mathematics/Algebra/Regular/Variant1e9fd85710141d4f5634a2ff0b0e7696118e6ebbe4b15ebdeddbe3b6bb2c0f7d.lean/declarations/isregular-of-ne-zero--cf233dc7058e6822fb736326.md) | 43 | `result-track:cf233dc7058e6822fb736326f5ce5ef6256c3c235a1af6b39ed7ab1898eb8dd2` |
| 4 | `theorem` | [isRegular_iff_ne_zero'](../../../../mathematics/Algebra/Regular/Variant1e9fd85710141d4f5634a2ff0b0e7696118e6ebbe4b15ebdeddbe3b6bb2c0f7d.lean/declarations/isregular-iff-ne-zero--a0a30ea4534f11a519a8fe4c.md) | 50 | `result-track:a0a30ea4534f11a519a8fe4c1090b9d635bc3e6e1b5c0bda470f9a1e3678f50d` |
| 5 | `lemma` | [NoZeroDivisors.toIsCancelMulZero](../../../../mathematics/Algebra/Regular/Variant1e9fd85710141d4f5634a2ff0b0e7696118e6ebbe4b15ebdeddbe3b6bb2c0f7d.lean/declarations/nozerodivisors-toiscancelmulzero--727a4073ee64c2d5e956a123.md) | 59 | `result-track:727a4073ee64c2d5e956a123eaa5f602738ca5dcbd6a526c0fff21702f05beef` |
| 6 | `theorem` | [iff_eq_of_mul_left_eq_one](../../../../mathematics/Algebra/Regular/Variant1e9fd85710141d4f5634a2ff0b0e7696118e6ebbe4b15ebdeddbe3b6bb2c0f7d.lean/declarations/iff-eq-of-mul-left-eq-one--d9fe54909a7d42a18092a661.md) | 69 | `result-track:d9fe54909a7d42a18092a66170ca24a5665a501e61a22701f18fdedc680b5479` |
| 7 | `theorem` | [iff_eq_of_mul_right_eq_one](../../../../mathematics/Algebra/Regular/Variant1e9fd85710141d4f5634a2ff0b0e7696118e6ebbe4b15ebdeddbe3b6bb2c0f7d.lean/declarations/iff-eq-of-mul-right-eq-one--850ce85bfaf7612b55ea6091.md) | 78 | `result-track:850ce85bfaf7612b55ea6091c518c4fd5cf495266a0fbe59e344edbd9b7ec49b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
