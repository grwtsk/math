# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.InfiniteSum.Variantf959f35a6e736841b23fc097248b84fe5ff645251a1fb65c94c6abe9b213a76d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "106a1cf5dc24356764a3da68ec18660a236fef0e",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/InfiniteSum/Variantf959f35a6e736841b23fc097248b84fe5ff645251a1fb65c94c6abe9b213a76d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variantf959f35a6e736841b23fc097248b84fe5ff645251a1fb65c94c6abe9b213a76d.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variantf959f35a6e736841b23fc097248b84fe5ff645251a1fb65c94c6abe9b213a76d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `106a1cf5dc24356764a3da68ec18660a236fef0e`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/InfiniteSum/Variantf959f35a6e736841b23fc097248b84fe5ff645251a1fb65c94c6abe9b213a76d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/InfiniteSum/Variantf959f35a6e736841b23fc097248b84fe5ff645251a1fb65c94c6abe9b213a76d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Field.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.InfiniteSum` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Summable.mul_of_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variantf959f35a6e736841b23fc097248b84fe5ff645251a1fb65c94c6abe9b213a76d.lean/declarations/summable-mul-of-nonneg--40b3b166702084396ad4d7ae.md) | 31 | `result-track:40b3b166702084396ad4d7ae50b607080ddc460f81a39d7abef49d21224bf727` |
| 2 | `theorem` | [Summable.mul_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variantf959f35a6e736841b23fc097248b84fe5ff645251a1fb65c94c6abe9b213a76d.lean/declarations/summable-mul-norm--c59fda28b2a62f5a14aa7e4c.md) | 37 | `result-track:c59fda28b2a62f5a14aa7e4c47419ab7c99aa0b06d1018f064d796a25bbca5b4` |
| 3 | `theorem` | [summable_mul_of_summable_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variantf959f35a6e736841b23fc097248b84fe5ff645251a1fb65c94c6abe9b213a76d.lean/declarations/summable-mul-of-summable-norm--c137c8fe8529109ac4873072.md) | 44 | `result-track:c137c8fe8529109ac4873072f9075a41d4ad8bb017cb5f9c535e9677925b0ccc` |
| 4 | `theorem` | [tsum_mul_tsum_of_summable_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variantf959f35a6e736841b23fc097248b84fe5ff645251a1fb65c94c6abe9b213a76d.lean/declarations/tsum-mul-tsum-of-summable-norm--162f0fb780dad9297ab6bdff.md) | 52 | `result-track:162f0fb780dad9297ab6bdff8c0d467b4b7c664946bcff34986594686d1e2a36` |
| 5 | `theorem` | [summable_norm_sum_mul_antidiagonal_of_summable_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variantf959f35a6e736841b23fc097248b84fe5ff645251a1fb65c94c6abe9b213a76d.lean/declarations/summable-norm-sum-mul-antidiagonal-of-summable-norm--78ca9fc833c737fff898fc72.md) | 74 | `result-track:78ca9fc833c737fff898fc72b0fa9b692c56510d2ccdcb386427abc291470bbe` |
| 6 | `theorem` | [tsum_mul_tsum_eq_tsum_sum_antidiagonal_of_summable_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variantf959f35a6e736841b23fc097248b84fe5ff645251a1fb65c94c6abe9b213a76d.lean/declarations/tsum-mul-tsum-eq-tsum-sum-antidiagonal-of-summable-norm--b123626a1fe1a5115058de40.md) | 92 | `result-track:b123626a1fe1a5115058de40914d77c1670123a88e6a3eab1141be215e4f16a8` |
| 7 | `theorem` | [summable_norm_sum_mul_range_of_summable_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variantf959f35a6e736841b23fc097248b84fe5ff645251a1fb65c94c6abe9b213a76d.lean/declarations/summable-norm-sum-mul-range-of-summable-norm--9c2d8afdf8079b8da5e679ae.md) | 99 | `result-track:9c2d8afdf8079b8da5e679aeed97b735388d0c620fb8d228f11c9180a8572bc1` |
| 8 | `theorem` | [tsum_mul_tsum_eq_tsum_sum_range_of_summable_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variantf959f35a6e736841b23fc097248b84fe5ff645251a1fb65c94c6abe9b213a76d.lean/declarations/tsum-mul-tsum-eq-tsum-sum-range-of-summable-norm--2448acc36d2912ef8c2a7cce.md) | 109 | `result-track:2448acc36d2912ef8c2a7cce85f32a6a6fe7ed184756f31114956e9f55cf5291` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
