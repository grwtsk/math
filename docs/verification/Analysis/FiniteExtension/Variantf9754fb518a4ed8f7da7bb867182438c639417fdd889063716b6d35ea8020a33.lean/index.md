# Verification target: GRWTSK.Analysis.FiniteExtension.Variantf9754fb518a4ed8f7da7bb867182438c639417fdd889063716b6d35ea8020a33

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e89023e7aab66340c3d81970d450ed4e59d1f93",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FiniteExtension/Variantf9754fb518a4ed8f7da7bb867182438c639417fdd889063716b6d35ea8020a33.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/FiniteExtension/Variantf9754fb518a4ed8f7da7bb867182438c639417fdd889063716b6d35ea8020a33.lean/index.md) · [Full source](../../../../mathematics/Analysis/FiniteExtension/Variantf9754fb518a4ed8f7da7bb867182438c639417fdd889063716b6d35ea8020a33.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e89023e7aab66340c3d81970d450ed4e59d1f93`.

Source path: `GRWTSK/Analysis/FiniteExtension/Variantf9754fb518a4ed8f7da7bb867182438c639417fdd889063716b6d35ea8020a33.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FiniteExtension/Variantf9754fb518a4ed8f7da7bb867182438c639417fdd889063716b6d35ea8020a33.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Unbundled.AlgebraNorm` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Unbundled.SeminormFromBounded` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Unbundled.SmoothingSeminorm` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.VectorSpace` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [norm](../../../../mathematics/Analysis/FiniteExtension/Variantf9754fb518a4ed8f7da7bb867182438c639417fdd889063716b6d35ea8020a33.lean/declarations/norm--ba9c6ad5c6377ca9cf9ba23a.md) | 55 | `declaration-track:ba9c6ad5c6377ca9cf9ba23a9391fe898161df9c6f4d6878db1914fdcd46ac77` |
| 2 | `theorem` | [norm_repr_le_norm](../../../../mathematics/Analysis/FiniteExtension/Variantf9754fb518a4ed8f7da7bb867182438c639417fdd889063716b6d35ea8020a33.lean/declarations/norm-repr-le-norm--bfe9d51aeb9605b13653d069.md) | 59 | `result-track:bfe9d51aeb9605b13653d06996f1d94ec10c5512d2d753bbae751140bed663c1` |
| 3 | `theorem` | [norm_zero](../../../../mathematics/Analysis/FiniteExtension/Variantf9754fb518a4ed8f7da7bb867182438c639417fdd889063716b6d35ea8020a33.lean/declarations/norm-zero--eb13b0cb1cd42d3fa62c18fd.md) | 63 | `result-track:eb13b0cb1cd42d3fa62c18fdc407c68b6de2e96c2ac1209e96b02dbf4a58f87a` |
| 4 | `theorem` | [norm_neg](../../../../mathematics/Analysis/FiniteExtension/Variantf9754fb518a4ed8f7da7bb867182438c639417fdd889063716b6d35ea8020a33.lean/declarations/norm-neg--ff7dc5697cdd9c63d45ba213.md) | 67 | `result-track:ff7dc5697cdd9c63d45ba213197dd9fef5f9e62fdf1f9ee3d0bd4b0aa5bba814` |
| 5 | `theorem` | [norm_nonneg](../../../../mathematics/Analysis/FiniteExtension/Variantf9754fb518a4ed8f7da7bb867182438c639417fdd889063716b6d35ea8020a33.lean/declarations/norm-nonneg--bd9f966cfe96b339acf0e3f5.md) | 71 | `result-track:bd9f966cfe96b339acf0e3f556142c436ea7a09ce346918e4f0359fc79a6ca4a` |
| 6 | `theorem` | [norm_extends](../../../../mathematics/Analysis/FiniteExtension/Variantf9754fb518a4ed8f7da7bb867182438c639417fdd889063716b6d35ea8020a33.lean/declarations/norm-extends--28e5079fb72a74fc19b10ddd.md) | 77 | `result-track:28e5079fb72a74fc19b10dddb2fa3a8ac14e7454cb8d399d40bc9a7df62103e8` |
| 7 | `theorem` | [norm_isNonarchimedean](../../../../mathematics/Analysis/FiniteExtension/Variantf9754fb518a4ed8f7da7bb867182438c639417fdd889063716b6d35ea8020a33.lean/declarations/norm-isnonarchimedean--6293369104cfe91d14e759dc.md) | 86 | `result-track:6293369104cfe91d14e759dcb070a21b27fe49a66ef3b0519a89a7dba1cfa69e` |
| 8 | `theorem` | [norm_mul_le_const_mul_norm](../../../../mathematics/Analysis/FiniteExtension/Variantf9754fb518a4ed8f7da7bb867182438c639417fdd889063716b6d35ea8020a33.lean/declarations/norm-mul-le-const-mul-norm--e4bba3dc273fdf30922723b9.md) | 98 | `result-track:e4bba3dc273fdf30922723b92434b8d0b3e900a8726cf7c8e586f303bafd7dc1` |
| 9 | `theorem` | [norm_smul](../../../../mathematics/Analysis/FiniteExtension/Variantf9754fb518a4ed8f7da7bb867182438c639417fdd889063716b6d35ea8020a33.lean/declarations/norm-smul--cb0233d890d248b59e9b72d6.md) | 150 | `result-track:cb0233d890d248b59e9b72d6afc2b0e8935b59f57c21f37b95e83769ba400990` |
| 10 | `theorem` | [exists_nonarchimedean_pow_mul_seminorm_of_finiteDimensional](../../../../mathematics/Analysis/FiniteExtension/Variantf9754fb518a4ed8f7da7bb867182438c639417fdd889063716b6d35ea8020a33.lean/declarations/exists-nonarchimedean-pow-mul-seminorm-of-finitedimensional--ee2274f52e0849c9ddc69ffb.md) | 179 | `result-track:ee2274f52e0849c9ddc69ffb57773cf584469e1b3287e11fba5f24fd5a9a7f33` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
