# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Deriv.Variant0b0a762f0548625e73c5b616a7cda8fa054e545bfba2513c2ad7ce76feb84a4c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ca7efa746b671123ffcf99dcf48bce7d0f962bd",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0b0a762f0548625e73c5b616a7cda8fa054e545bfba2513c2ad7ce76feb84a4c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0b0a762f0548625e73c5b616a7cda8fa054e545bfba2513c2ad7ce76feb84a4c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0b0a762f0548625e73c5b616a7cda8fa054e545bfba2513c2ad7ce76feb84a4c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ca7efa746b671123ffcf99dcf48bce7d0f962bd`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0b0a762f0548625e73c5b616a7cda8fa054e545bfba2513c2ad7ce76feb84a4c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0b0a762f0548625e73c5b616a7cda8fa054e545bfba2513c2ad7ce76feb84a4c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.ZPow` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Sqrt` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Deriv` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [strictConvexOn_pow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0b0a762f0548625e73c5b616a7cda8fa054e545bfba2513c2ad7ce76feb84a4c.lean/declarations/strictconvexon-pow--2c38cf7d17297f8c3eddca61.md) | 38 | `result-track:2c38cf7d17297f8c3eddca61238c047f772a649dd196ef6b40c8562e5488f41a` |
| 2 | `theorem` | [Even.strictConvexOn_pow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0b0a762f0548625e73c5b616a7cda8fa054e545bfba2513c2ad7ce76feb84a4c.lean/declarations/even-strictconvexon-pow--946071d7d2a188d5bd95bdb2.md) | 45 | `result-track:946071d7d2a188d5bd95bdb271d4be8fbc963c2ef9d827b97247ce4bc49714e8` |
| 3 | `theorem` | [Finset.prod_nonneg_of_card_nonpos_even](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0b0a762f0548625e73c5b616a7cda8fa054e545bfba2513c2ad7ce76feb84a4c.lean/declarations/finset-prod-nonneg-of-card-nonpos-even--50a891db42da0a17b4f4cc4d.md) | 53 | `result-track:50a891db42da0a17b4f4cc4df9b40813429eddb61bbcd62469ef529a97bf6cb6` |
| 4 | `theorem` | [int_prod_range_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0b0a762f0548625e73c5b616a7cda8fa054e545bfba2513c2ad7ce76feb84a4c.lean/declarations/int-prod-range-nonneg--5d739d7f71219f84f0dbb882.md) | 68 | `result-track:5d739d7f71219f84f0dbb882073874f0ffc71248a7ba246f9d5994da6e9648b8` |
| 5 | `theorem` | [int_prod_range_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0b0a762f0548625e73c5b616a7cda8fa054e545bfba2513c2ad7ce76feb84a4c.lean/declarations/int-prod-range-pos--f9a2365810248744e7cc8f45.md) | 84 | `result-track:f9a2365810248744e7cc8f45355fa9f1a302970a10676363bb1d293b89b36751` |
| 6 | `theorem` | [strictConvexOn_zpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0b0a762f0548625e73c5b616a7cda8fa054e545bfba2513c2ad7ce76feb84a4c.lean/declarations/strictconvexon-zpow--3a2be3b0c41c02bf2bf8ef9e.md) | 93 | `result-track:3a2be3b0c41c02bf2bf8ef9e0dbed9d7074f9fa8de2eaf90d8fc03a36cfb7d36` |
| 7 | `theorem` | [hasDerivAt_sqrt_mul_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0b0a762f0548625e73c5b616a7cda8fa054e545bfba2513c2ad7ce76feb84a4c.lean/declarations/hasderivat-sqrt-mul-log--9c3e52b9f898ee02263e41d8.md) | 109 | `result-track:9c3e52b9f898ee02263e41d81562ddac8c6f5d08750b79515dc3cdf6599fad47` |
| 8 | `theorem` | [deriv_sqrt_mul_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0b0a762f0548625e73c5b616a7cda8fa054e545bfba2513c2ad7ce76feb84a4c.lean/declarations/deriv-sqrt-mul-log--5e28f7e14c4fd84dfebe2a3e.md) | 115 | `result-track:5e28f7e14c4fd84dfebe2a3e8a96b5975f49510ce4a30b0b063d860e98cc9b55` |
| 9 | `theorem` | [deriv_sqrt_mul_log'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0b0a762f0548625e73c5b616a7cda8fa054e545bfba2513c2ad7ce76feb84a4c.lean/declarations/deriv-sqrt-mul-log--c8134cffe32d6c9079797a2e.md) | 124 | `result-track:c8134cffe32d6c9079797a2e712360a591ae59b4ad6e00b539f7c6888e37678a` |
| 10 | `theorem` | [deriv2_sqrt_mul_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0b0a762f0548625e73c5b616a7cda8fa054e545bfba2513c2ad7ce76feb84a4c.lean/declarations/deriv2-sqrt-mul-log--4831ed87d7642deda21e174e.md) | 128 | `result-track:4831ed87d7642deda21e174ee8c441988b1112fc0a37c781cdb9d5074ab7e045` |
| 11 | `theorem` | [strictConcaveOn_sqrt_mul_log_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0b0a762f0548625e73c5b616a7cda8fa054e545bfba2513c2ad7ce76feb84a4c.lean/declarations/strictconcaveon-sqrt-mul-log-ioi--b01ef9a74e37c28b8983c7a8.md) | 144 | `result-track:b01ef9a74e37c28b8983c7a80faa03dba958bb1ff1df55baeef4f98eb1e266df` |
| 12 | `theorem` | [strictConcaveOn_sin_Icc](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0b0a762f0548625e73c5b616a7cda8fa054e545bfba2513c2ad7ce76feb84a4c.lean/declarations/strictconcaveon-sin-icc--9231b3b2c47b44bca21104c7.md) | 157 | `result-track:9231b3b2c47b44bca21104c71070241e937160abc1a81d71865b3ef4eaa3945b` |
| 13 | `theorem` | [strictConcaveOn_cos_Icc](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0b0a762f0548625e73c5b616a7cda8fa054e545bfba2513c2ad7ce76feb84a4c.lean/declarations/strictconcaveon-cos-icc--dae481a580f4dcf43fc3b96e.md) | 162 | `result-track:dae481a580f4dcf43fc3b96e449d386641dbd7729fdf655455bc1cd24e4cb190` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
