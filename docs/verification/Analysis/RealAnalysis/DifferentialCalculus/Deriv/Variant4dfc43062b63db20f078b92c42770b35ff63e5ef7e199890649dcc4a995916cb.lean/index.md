# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Deriv.Variant4dfc43062b63db20f078b92c42770b35ff63e5ef7e199890649dcc4a995916cb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51cedc06304cea975b9bff13c8ba7d8a553993c7",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant4dfc43062b63db20f078b92c42770b35ff63e5ef7e199890649dcc4a995916cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant4dfc43062b63db20f078b92c42770b35ff63e5ef7e199890649dcc4a995916cb.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant4dfc43062b63db20f078b92c42770b35ff63e5ef7e199890649dcc4a995916cb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51cedc06304cea975b9bff13c8ba7d8a553993c7`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant4dfc43062b63db20f078b92c42770b35ff63e5ef7e199890649dcc4a995916cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant4dfc43062b63db20f078b92c42770b35ff63e5ef7e199890649dcc4a995916cb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.ZPow` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Sqrt` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Deriv` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [strictConvexOn_pow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant4dfc43062b63db20f078b92c42770b35ff63e5ef7e199890649dcc4a995916cb.lean/declarations/strictconvexon-pow--8d8b0086a7e02f25d9ca745f.md) | 46 | `result-track:8d8b0086a7e02f25d9ca745f8cf216a6822be5d27dc010c9896435fa81221ea5` |
| 2 | `theorem` | [Even.strictConvexOn_pow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant4dfc43062b63db20f078b92c42770b35ff63e5ef7e199890649dcc4a995916cb.lean/declarations/even-strictconvexon-pow--dacd734a8b1e8ec3a0471545.md) | 53 | `result-track:dacd734a8b1e8ec3a0471545190c75f8861f2e05be57f7a5231b83e395649334` |
| 3 | `theorem` | [Finset.prod_nonneg_of_card_nonpos_even](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant4dfc43062b63db20f078b92c42770b35ff63e5ef7e199890649dcc4a995916cb.lean/declarations/finset-prod-nonneg-of-card-nonpos-even--5de8911360aa34498cd9eeb7.md) | 61 | `result-track:5de8911360aa34498cd9eeb7e1aa9b61e88e9be45dcf2054b9156a2a098cbf5e` |
| 4 | `theorem` | [int_prod_range_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant4dfc43062b63db20f078b92c42770b35ff63e5ef7e199890649dcc4a995916cb.lean/declarations/int-prod-range-nonneg--83937453a8caa9b23ad0ffb6.md) | 76 | `result-track:83937453a8caa9b23ad0ffb636d4c4580dc77341b043ecd143e542fb589c0d1e` |
| 5 | `theorem` | [int_prod_range_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant4dfc43062b63db20f078b92c42770b35ff63e5ef7e199890649dcc4a995916cb.lean/declarations/int-prod-range-pos--da9430a20a187e889f025599.md) | 92 | `result-track:da9430a20a187e889f0255991bf9d8f99e18bac74768c4d085e0dba8cc481dc8` |
| 6 | `theorem` | [strictConvexOn_zpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant4dfc43062b63db20f078b92c42770b35ff63e5ef7e199890649dcc4a995916cb.lean/declarations/strictconvexon-zpow--700a60a044f18beac2265b8a.md) | 101 | `result-track:700a60a044f18beac2265b8a41cdf968e7c4102d20d31d32857aee1a4a001b18` |
| 7 | `theorem` | [hasDerivAt_sqrt_mul_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant4dfc43062b63db20f078b92c42770b35ff63e5ef7e199890649dcc4a995916cb.lean/declarations/hasderivat-sqrt-mul-log--72d46765fd905fdf0482de58.md) | 117 | `result-track:72d46765fd905fdf0482de5829761cf7540b54369620949621b1a52974702e69` |
| 8 | `theorem` | [deriv_sqrt_mul_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant4dfc43062b63db20f078b92c42770b35ff63e5ef7e199890649dcc4a995916cb.lean/declarations/deriv-sqrt-mul-log--13a074f526d7cba4373bd8e3.md) | 123 | `result-track:13a074f526d7cba4373bd8e3f1be8a114b6351f4d5af7d289f3e7d0d990968e1` |
| 9 | `theorem` | [deriv_sqrt_mul_log'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant4dfc43062b63db20f078b92c42770b35ff63e5ef7e199890649dcc4a995916cb.lean/declarations/deriv-sqrt-mul-log--5b8242b813cfdb4b82b29f5d.md) | 132 | `result-track:5b8242b813cfdb4b82b29f5d1417317e8653c1cc44ade8a942b4cd70993b6272` |
| 10 | `theorem` | [deriv2_sqrt_mul_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant4dfc43062b63db20f078b92c42770b35ff63e5ef7e199890649dcc4a995916cb.lean/declarations/deriv2-sqrt-mul-log--100927a8f9a04356457d317e.md) | 136 | `result-track:100927a8f9a04356457d317ef452d8cfcdf6a1eb6bf055f5f9a75694843b55b3` |
| 11 | `theorem` | [strictConcaveOn_sqrt_mul_log_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant4dfc43062b63db20f078b92c42770b35ff63e5ef7e199890649dcc4a995916cb.lean/declarations/strictconcaveon-sqrt-mul-log-ioi--6c7006d09dbd20a83ca3d966.md) | 152 | `result-track:6c7006d09dbd20a83ca3d96696b219fd35c1c0b005adeb0c6aa15079bc5120e3` |
| 12 | `theorem` | [strictConcaveOn_sin_Icc](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant4dfc43062b63db20f078b92c42770b35ff63e5ef7e199890649dcc4a995916cb.lean/declarations/strictconcaveon-sin-icc--c51d09371ad15fead7a9fe15.md) | 165 | `result-track:c51d09371ad15fead7a9fe159ae22e706ed5fd74b95c87f39b2d7782775a67f4` |
| 13 | `theorem` | [strictConcaveOn_cos_Icc](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant4dfc43062b63db20f078b92c42770b35ff63e5ef7e199890649dcc4a995916cb.lean/declarations/strictconcaveon-cos-icc--10fabcad4dd3759693e15c0a.md) | 170 | `result-track:10fabcad4dd3759693e15c0a3f8658e992935d7ad6c2fbd6202b0066f23d1079` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
