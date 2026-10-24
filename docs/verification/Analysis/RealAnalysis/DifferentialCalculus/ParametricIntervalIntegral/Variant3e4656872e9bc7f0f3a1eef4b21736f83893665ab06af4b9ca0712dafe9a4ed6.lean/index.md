# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ParametricIntervalIntegral.Variant3e4656872e9bc7f0f3a1eef4b21736f83893665ab06af4b9ca0712dafe9a4ed6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c95694a82624caca702ecac20b91ccf327dfc11",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntervalIntegral/Variant3e4656872e9bc7f0f3a1eef4b21736f83893665ab06af4b9ca0712dafe9a4ed6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntervalIntegral/Variant3e4656872e9bc7f0f3a1eef4b21736f83893665ab06af4b9ca0712dafe9a4ed6.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntervalIntegral/Variant3e4656872e9bc7f0f3a1eef4b21736f83893665ab06af4b9ca0712dafe9a4ed6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c95694a82624caca702ecac20b91ccf327dfc11`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntervalIntegral/Variant3e4656872e9bc7f0f3a1eef4b21736f83893665ab06af4b9ca0712dafe9a4ed6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntervalIntegral/Variant3e4656872e9bc7f0f3a1eef4b21736f83893665ab06af4b9ca0712dafe9a4ed6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasFDerivAt_integral_of_dominated_loc_of_lip](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntervalIntegral/Variant3e4656872e9bc7f0f3a1eef4b21736f83893665ab06af4b9ca0712dafe9a4ed6.lean/declarations/hasfderivat-integral-of-dominated-loc-of-lip--32387a60aea4bd72e8c1c6fb.md) | 30 | `result-track:32387a60aea4bd72e8c1c6fb26318a7acb01394e09467aeb433f6d1de3ea869e` |
| 2 | `theorem` | [hasFDerivAt_integral_of_dominated_of_fderiv_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntervalIntegral/Variant3e4656872e9bc7f0f3a1eef4b21736f83893665ab06af4b9ca0712dafe9a4ed6.lean/declarations/hasfderivat-integral-of-dominated-of-fderiv-le--b6953acd5fd9ee10b1ba3104.md) | 52 | `result-track:b6953acd5fd9ee10b1ba31040d4d96c4d3d51ca86ac1c6fdb5f891a6cf59e846` |
| 3 | `theorem` | [hasDerivAt_integral_of_dominated_loc_of_lip](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntervalIntegral/Variant3e4656872e9bc7f0f3a1eef4b21736f83893665ab06af4b9ca0712dafe9a4ed6.lean/declarations/hasderivat-integral-of-dominated-loc-of-lip--54a71596d5451a507c186f94.md) | 71 | `result-track:54a71596d5451a507c186f945bbd7fe863f1216d2687919575307f2d618bf448` |
| 4 | `theorem` | [hasDerivAt_integral_of_dominated_loc_of_deriv_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntervalIntegral/Variant3e4656872e9bc7f0f3a1eef4b21736f83893665ab06af4b9ca0712dafe9a4ed6.lean/declarations/hasderivat-integral-of-dominated-loc-of-deriv-le--52f470eaf57d25c44e31c139.md) | 92 | `result-track:52f470eaf57d25c44e31c139c959c1b9d12347c2da8b1c7b9046b001f5c16b9d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
