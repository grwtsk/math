# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.InfiniteSum.Variant3bca8a8af0ae9ab5c4110fdaeccaaa79a361f6cb972794dda75fbdd4a0d2ce8b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc5c8874d8b006e664f9e1978f6c30666a6f41bb",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/InfiniteSum/Variant3bca8a8af0ae9ab5c4110fdaeccaaa79a361f6cb972794dda75fbdd4a0d2ce8b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant3bca8a8af0ae9ab5c4110fdaeccaaa79a361f6cb972794dda75fbdd4a0d2ce8b.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant3bca8a8af0ae9ab5c4110fdaeccaaa79a361f6cb972794dda75fbdd4a0d2ce8b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc5c8874d8b006e664f9e1978f6c30666a6f41bb`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/InfiniteSum/Variant3bca8a8af0ae9ab5c4110fdaeccaaa79a361f6cb972794dda75fbdd4a0d2ce8b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/InfiniteSum/Variant3bca8a8af0ae9ab5c4110fdaeccaaa79a361f6cb972794dda75fbdd4a0d2ce8b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.InfiniteSum` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Real` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Ring.Lemmas` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Summable.mul_of_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant3bca8a8af0ae9ab5c4110fdaeccaaa79a361f6cb972794dda75fbdd4a0d2ce8b.lean/declarations/summable-mul-of-nonneg--6d7aba6cc7559b395194e606.md) | 38 | `result-track:6d7aba6cc7559b395194e6063394ed3fe8e4018f462536df3a7b971e1cca5f12` |
| 2 | `theorem` | [Summable.mul_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant3bca8a8af0ae9ab5c4110fdaeccaaa79a361f6cb972794dda75fbdd4a0d2ce8b.lean/declarations/summable-mul-norm--99b54771504df1a89025f12f.md) | 43 | `result-track:99b54771504df1a89025f12f320a6ffa6682ccbca2c28ae5abd1f41b0809d6d6` |
| 3 | `theorem` | [summable_mul_of_summable_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant3bca8a8af0ae9ab5c4110fdaeccaaa79a361f6cb972794dda75fbdd4a0d2ce8b.lean/declarations/summable-mul-of-summable-norm--159436425e77a75425297146.md) | 49 | `result-track:159436425e77a754252971463c51cc5641862ef67f4a5f1b613786a8fd933744` |
| 4 | `theorem` | [summable_mul_of_summable_norm'](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant3bca8a8af0ae9ab5c4110fdaeccaaa79a361f6cb972794dda75fbdd4a0d2ce8b.lean/declarations/summable-mul-of-summable-norm--62a8d2f06597699be84ad34e.md) | 54 | `result-track:62a8d2f06597699be84ad34ef95ed9b8701ab7f2482c57734bc4280fa9729b57` |
| 5 | `theorem` | [tsum_mul_tsum_of_summable_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant3bca8a8af0ae9ab5c4110fdaeccaaa79a361f6cb972794dda75fbdd4a0d2ce8b.lean/declarations/tsum-mul-tsum-of-summable-norm--4911c337be5b0bf3a2531bfd.md) | 72 | `result-track:4911c337be5b0bf3a2531bfdb1fc00858833592e325633f05c3acf37f48f2b7a` |
| 6 | `theorem` | [tsum_mul_tsum_of_summable_norm'](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant3bca8a8af0ae9ab5c4110fdaeccaaa79a361f6cb972794dda75fbdd4a0d2ce8b.lean/declarations/tsum-mul-tsum-of-summable-norm--6ea3186f405cb6d0fa8de58c.md) | 77 | `result-track:6ea3186f405cb6d0fa8de58ceda0bd82b506327cd65a2251e8960513140c6311` |
| 7 | `theorem` | [summable_norm_sum_mul_antidiagonal_of_summable_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant3bca8a8af0ae9ab5c4110fdaeccaaa79a361f6cb972794dda75fbdd4a0d2ce8b.lean/declarations/summable-norm-sum-mul-antidiagonal-of-summable-norm--73f78b656e17a7c3e385632f.md) | 97 | `result-track:73f78b656e17a7c3e385632f8082f72c4993691498f8ff7767feb4d3b508b828` |
| 8 | `theorem` | [summable_sum_mul_antidiagonal_of_summable_norm'](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant3bca8a8af0ae9ab5c4110fdaeccaaa79a361f6cb972794dda75fbdd4a0d2ce8b.lean/declarations/summable-sum-mul-antidiagonal-of-summable-norm--23e0d598f9b846f8225618fc.md) | 109 | `result-track:23e0d598f9b846f8225618fc0afe93d133372488831d2efa853de24e5014b85d` |
| 9 | `theorem` | [tsum_mul_tsum_eq_tsum_sum_antidiagonal_of_summable_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant3bca8a8af0ae9ab5c4110fdaeccaaa79a361f6cb972794dda75fbdd4a0d2ce8b.lean/declarations/tsum-mul-tsum-eq-tsum-sum-antidiagonal-of-summable-norm--ef10f012229cdd4e489223d7.md) | 120 | `result-track:ef10f012229cdd4e489223d7cb58aa25572b28cfa427ebb2a2168081a261264c` |
| 10 | `theorem` | [tsum_mul_tsum_eq_tsum_sum_antidiagonal_of_summable_norm'](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant3bca8a8af0ae9ab5c4110fdaeccaaa79a361f6cb972794dda75fbdd4a0d2ce8b.lean/declarations/tsum-mul-tsum-eq-tsum-sum-antidiagonal-of-summable-norm--f2761c3e205e0528812894da.md) | 125 | `result-track:f2761c3e205e0528812894daaa7551e1a7109d630338d35d9623396c11deb13b` |
| 11 | `theorem` | [summable_norm_sum_mul_range_of_summable_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant3bca8a8af0ae9ab5c4110fdaeccaaa79a361f6cb972794dda75fbdd4a0d2ce8b.lean/declarations/summable-norm-sum-mul-range-of-summable-norm--7d4da806230d65554e6125e5.md) | 131 | `result-track:7d4da806230d65554e6125e576081ead7d47c9c4bfc40826be1747ed659a0e7c` |
| 12 | `theorem` | [summable_sum_mul_range_of_summable_norm'](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant3bca8a8af0ae9ab5c4110fdaeccaaa79a361f6cb972794dda75fbdd4a0d2ce8b.lean/declarations/summable-sum-mul-range-of-summable-norm--c594e296a0617025de8b0190.md) | 136 | `result-track:c594e296a0617025de8b0190aed3cb5e4fb74da896c77885e5d202cd0b94564f` |
| 13 | `theorem` | [tsum_mul_tsum_eq_tsum_sum_range_of_summable_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant3bca8a8af0ae9ab5c4110fdaeccaaa79a361f6cb972794dda75fbdd4a0d2ce8b.lean/declarations/tsum-mul-tsum-eq-tsum-sum-range-of-summable-norm--2eaa9491a947e5f45566f6ca.md) | 148 | `result-track:2eaa9491a947e5f45566f6caf4c97a1d580443944232a3064b6dbaf4e5642b06` |
| 14 | `theorem` | [hasSum_sum_range_mul_of_summable_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant3bca8a8af0ae9ab5c4110fdaeccaaa79a361f6cb972794dda75fbdd4a0d2ce8b.lean/declarations/hassum-sum-range-mul-of-summable-norm--fa558b20e62c14144501f5c2.md) | 154 | `result-track:fa558b20e62c14144501f5c22bb7847c12269e24e7bbf5b2c7105339af79fa2f` |
| 15 | `theorem` | [tsum_mul_tsum_eq_tsum_sum_range_of_summable_norm'](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant3bca8a8af0ae9ab5c4110fdaeccaaa79a361f6cb972794dda75fbdd4a0d2ce8b.lean/declarations/tsum-mul-tsum-eq-tsum-sum-range-of-summable-norm--3b5f390d566264465080adb4.md) | 160 | `result-track:3b5f390d566264465080adb40e30be883a5a74873459708c08a1f690e678ff2b` |
| 16 | `theorem` | [hasSum_sum_range_mul_of_summable_norm'](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant3bca8a8af0ae9ab5c4110fdaeccaaa79a361f6cb972794dda75fbdd4a0d2ce8b.lean/declarations/hassum-sum-range-mul-of-summable-norm--35cb93b1f8c6d9c424f676de.md) | 167 | `result-track:35cb93b1f8c6d9c424f676de853e53e00b7d6461509f829912ee9f07fb4f1c80` |
| 17 | `lemma` | [summable_of_absolute_convergence_real](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variant3bca8a8af0ae9ab5c4110fdaeccaaa79a361f6cb972794dda75fbdd4a0d2ce8b.lean/declarations/summable-of-absolute-convergence-real--a4d43f3a35f33b3984342d5a.md) | 176 | `result-track:a4d43f3a35f33b3984342d5a2638fc0577537873b280911a5c812e7b8a86aaf7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
