# Verification target: GRWTSK.Algebra.UniversalAlgebra.Chebyshev.Variantea8ad7d8dbcd50c0f274c6b2d78e343e16e2fd6182d8a29145ce13b17829a329

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2114626d0c19de6ea2623e1de57e883f4a5f9fa6",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Chebyshev/Variantea8ad7d8dbcd50c0f274c6b2d78e343e16e2fd6182d8a29145ce13b17829a329.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Chebyshev/Variantea8ad7d8dbcd50c0f274c6b2d78e343e16e2fd6182d8a29145ce13b17829a329.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Chebyshev/Variantea8ad7d8dbcd50c0f274c6b2d78e343e16e2fd6182d8a29145ce13b17829a329.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2114626d0c19de6ea2623e1de57e883f4a5f9fa6`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Chebyshev/Variantea8ad7d8dbcd50c0f274c6b2d78e343e16e2fd6182d8a29145ce13b17829a329.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Chebyshev/Variantea8ad7d8dbcd50c0f274c6b2d78e343e16e2fd6182d8a29145ce13b17829a329.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monovary` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Rearrangement` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Cycle.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [MonovaryOn.sum_smul_sum_le_card_smul_sum](../../../../../mathematics/Algebra/UniversalAlgebra/Chebyshev/Variantea8ad7d8dbcd50c0f274c6b2d78e343e16e2fd6182d8a29145ce13b17829a329.lean/declarations/monovaryon-sum-smul-sum-le-card-smul-sum--ba89bb40d8fc5082b820a993.md) | 55 | `result-track:ba89bb40d8fc5082b820a993e9b40b69c39b03b2c27f200d6590e85c0a4f0e86` |
| 2 | `theorem` | [AntivaryOn.card_smul_sum_le_sum_smul_sum](../../../../../mathematics/Algebra/UniversalAlgebra/Chebyshev/Variantea8ad7d8dbcd50c0f274c6b2d78e343e16e2fd6182d8a29145ce13b17829a329.lean/declarations/antivaryon-card-smul-sum-le-sum-smul-sum--26149b10d06699b0f8c0eceb.md) | 66 | `result-track:26149b10d06699b0f8c0eceb512367bf08f6b947b3e04d502ecaa7cc78592b18` |
| 3 | `theorem` | [Monovary.sum_smul_sum_le_card_smul_sum](../../../../../mathematics/Algebra/UniversalAlgebra/Chebyshev/Variantea8ad7d8dbcd50c0f274c6b2d78e343e16e2fd6182d8a29145ce13b17829a329.lean/declarations/monovary-sum-smul-sum-le-card-smul-sum--e915d0270293c9fbfdfb64a3.md) | 75 | `result-track:e915d0270293c9fbfdfb64a30a164c6855c316732652bdabb6cfcc8c64ec3a55` |
| 4 | `theorem` | [Antivary.card_smul_sum_le_sum_smul_sum](../../../../../mathematics/Algebra/UniversalAlgebra/Chebyshev/Variantea8ad7d8dbcd50c0f274c6b2d78e343e16e2fd6182d8a29145ce13b17829a329.lean/declarations/antivary-card-smul-sum-le-sum-smul-sum--5bcead5e52adcc4819e5867f.md) | 82 | `result-track:5bcead5e52adcc4819e5867f97c8da8a6540c090ced4c890440ce1261f78d281` |
| 5 | `theorem` | [MonovaryOn.sum_mul_sum_le_card_mul_sum](../../../../../mathematics/Algebra/UniversalAlgebra/Chebyshev/Variantea8ad7d8dbcd50c0f274c6b2d78e343e16e2fd6182d8a29145ce13b17829a329.lean/declarations/monovaryon-sum-mul-sum-le-card-mul-sum--e1fc1aa6c7e469ed13250afd.md) | 102 | `result-track:e1fc1aa6c7e469ed13250afd2b7ccce55294025dff2583858b86e03aa5bf5307` |
| 6 | `theorem` | [AntivaryOn.card_mul_sum_le_sum_mul_sum](../../../../../mathematics/Algebra/UniversalAlgebra/Chebyshev/Variantea8ad7d8dbcd50c0f274c6b2d78e343e16e2fd6182d8a29145ce13b17829a329.lean/declarations/antivaryon-card-mul-sum-le-sum-mul-sum--48e5719a391f4671ec5cfd65.md) | 110 | `result-track:48e5719a391f4671ec5cfd65e47ec8f671ea6f583839f0e82c426efef2ded7ea` |
| 7 | `lemma` | [pow_sum_le_card_mul_sum_pow](../../../../../mathematics/Algebra/UniversalAlgebra/Chebyshev/Variantea8ad7d8dbcd50c0f274c6b2d78e343e16e2fd6182d8a29145ce13b17829a329.lean/declarations/pow-sum-le-card-mul-sum-pow--dd9ab03d7eca7e5dbf3e4868.md) | 116 | `result-track:dd9ab03d7eca7e5dbf3e4868439ba49318bd3dae1bfafca37778d4cc05b10ffd` |
| 8 | `theorem` | [sq_sum_le_card_mul_sum_sq](../../../../../mathematics/Algebra/UniversalAlgebra/Chebyshev/Variantea8ad7d8dbcd50c0f274c6b2d78e343e16e2fd6182d8a29145ce13b17829a329.lean/declarations/sq-sum-le-card-mul-sum-sq--03f2e1e06519a8dca1f612a0.md) | 133 | `result-track:03f2e1e06519a8dca1f612a0a35e7bc069f112bf91b3cd03252a8d80e9083a4b` |
| 9 | `theorem` | [Monovary.sum_mul_sum_le_card_mul_sum](../../../../../mathematics/Algebra/UniversalAlgebra/Chebyshev/Variantea8ad7d8dbcd50c0f274c6b2d78e343e16e2fd6182d8a29145ce13b17829a329.lean/declarations/monovary-sum-mul-sum-le-card-mul-sum--5f3d4fe3f7ac49859be4fedb.md) | 142 | `result-track:5f3d4fe3f7ac49859be4fedb27e1ed04eed393d2fbb59358dd6fa64c773e305a` |
| 10 | `theorem` | [Antivary.card_mul_sum_le_sum_mul_sum](../../../../../mathematics/Algebra/UniversalAlgebra/Chebyshev/Variantea8ad7d8dbcd50c0f274c6b2d78e343e16e2fd6182d8a29145ce13b17829a329.lean/declarations/antivary-card-mul-sum-le-sum-mul-sum--b54941264bc41acd8286db85.md) | 149 | `result-track:b54941264bc41acd8286db85869f1e62f72d4f37f0f70a700c455dce7c5e0bd1` |
| 11 | `lemma` | [pow_sum_div_card_le_sum_pow](../../../../../mathematics/Algebra/UniversalAlgebra/Chebyshev/Variantea8ad7d8dbcd50c0f274c6b2d78e343e16e2fd6182d8a29145ce13b17829a329.lean/declarations/pow-sum-div-card-le-sum-pow--743b5e8dd3e1870094ffca59.md) | 159 | `result-track:743b5e8dd3e1870094ffca59d29414d5e3f2613d8fc9d4977678df6132381fc4` |
| 12 | `theorem` | [sum_div_card_sq_le_sum_sq_div_card](../../../../../mathematics/Algebra/UniversalAlgebra/Chebyshev/Variantea8ad7d8dbcd50c0f274c6b2d78e343e16e2fd6182d8a29145ce13b17829a329.lean/declarations/sum-div-card-sq-le-sum-sq-div-card--3ec52e66702b301da118c9b7.md) | 166 | `result-track:3ec52e66702b301da118c9b7e699e57a371e30922d0512dfa055fbd5203620e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
