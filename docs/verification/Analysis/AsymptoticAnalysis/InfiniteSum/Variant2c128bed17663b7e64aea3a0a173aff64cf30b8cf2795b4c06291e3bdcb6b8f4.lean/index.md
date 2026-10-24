# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.InfiniteSum.Variant2c128bed17663b7e64aea3a0a173aff64cf30b8cf2795b4c06291e3bdcb6b8f4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c54f5c085f441389d37533bb57dbff8e310a7ee8",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/InfiniteSum/Variant2c128bed17663b7e64aea3a0a173aff64cf30b8cf2795b4c06291e3bdcb6b8f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant2c128bed17663b7e64aea3a0a173aff64cf30b8cf2795b4c06291e3bdcb6b8f4.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant2c128bed17663b7e64aea3a0a173aff64cf30b8cf2795b4c06291e3bdcb6b8f4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c54f5c085f441389d37533bb57dbff8e310a7ee8`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/InfiniteSum/Variant2c128bed17663b7e64aea3a0a173aff64cf30b8cf2795b4c06291e3bdcb6b8f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/InfiniteSum/Variant2c128bed17663b7e64aea3a0a173aff64cf30b8cf2795b4c06291e3bdcb6b8f4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Field.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.InfiniteSum` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Summable.mul_of_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant2c128bed17663b7e64aea3a0a173aff64cf30b8cf2795b4c06291e3bdcb6b8f4.lean/declarations/summable-mul-of-nonneg--f41129ce7983b324ef47add1.md) | 39 | `result-track:f41129ce7983b324ef47add1ced0a56fb0aedcec03304e11feb06e8c67e90e6b` |
| 2 | `theorem` | [Summable.mul_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant2c128bed17663b7e64aea3a0a173aff64cf30b8cf2795b4c06291e3bdcb6b8f4.lean/declarations/summable-mul-norm--ab18dfe5b5bdfc84003bc195.md) | 45 | `result-track:ab18dfe5b5bdfc84003bc195122280cd88b46031e63c818488b1c4808924f72c` |
| 3 | `theorem` | [summable_mul_of_summable_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant2c128bed17663b7e64aea3a0a173aff64cf30b8cf2795b4c06291e3bdcb6b8f4.lean/declarations/summable-mul-of-summable-norm--b84c9e0d8c347310589346c9.md) | 52 | `result-track:b84c9e0d8c347310589346c9bb615764483d7b9400b74db6b8ee65fa76a534a0` |
| 4 | `theorem` | [tsum_mul_tsum_of_summable_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant2c128bed17663b7e64aea3a0a173aff64cf30b8cf2795b4c06291e3bdcb6b8f4.lean/declarations/tsum-mul-tsum-of-summable-norm--ce7abcebcb3e23071a789ce9.md) | 60 | `result-track:ce7abcebcb3e23071a789ce9a8a1b4bb50d9f31fa634811164d1acd542dbcf01` |
| 5 | `theorem` | [summable_norm_sum_mul_antidiagonal_of_summable_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant2c128bed17663b7e64aea3a0a173aff64cf30b8cf2795b4c06291e3bdcb6b8f4.lean/declarations/summable-norm-sum-mul-antidiagonal-of-summable-norm--64fe2d3cae37c891ed1dc928.md) | 82 | `result-track:64fe2d3cae37c891ed1dc928df89906a139cffc2f615ee022f42a3fc5bc5403b` |
| 6 | `theorem` | [tsum_mul_tsum_eq_tsum_sum_antidiagonal_of_summable_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant2c128bed17663b7e64aea3a0a173aff64cf30b8cf2795b4c06291e3bdcb6b8f4.lean/declarations/tsum-mul-tsum-eq-tsum-sum-antidiagonal-of-summable-norm--080002ce4978b0ff5fbcab55.md) | 100 | `result-track:080002ce4978b0ff5fbcab557167f9f13446abfe6365ae52a19f6c44754a17fa` |
| 7 | `theorem` | [summable_norm_sum_mul_range_of_summable_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant2c128bed17663b7e64aea3a0a173aff64cf30b8cf2795b4c06291e3bdcb6b8f4.lean/declarations/summable-norm-sum-mul-range-of-summable-norm--c50c5484ed7b8ec1a53f8e2c.md) | 107 | `result-track:c50c5484ed7b8ec1a53f8e2c9c616354774485d1d7c4f5877edfb83212cfd6f3` |
| 8 | `theorem` | [tsum_mul_tsum_eq_tsum_sum_range_of_summable_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant2c128bed17663b7e64aea3a0a173aff64cf30b8cf2795b4c06291e3bdcb6b8f4.lean/declarations/tsum-mul-tsum-eq-tsum-sum-range-of-summable-norm--96ae193054222a91f02c5a0c.md) | 117 | `result-track:96ae193054222a91f02c5a0c466c5c09638c168daa58bf8d506c7231df3e0618` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
