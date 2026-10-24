# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ParametricIntegral.Variant6cbfbce950a60abacb3a08dd3ad978dd8232b840304c5a5d3d252f975d1186b4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4761ad4e52534891fc6a2652394d8c869de732dc",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntegral/Variant6cbfbce950a60abacb3a08dd3ad978dd8232b840304c5a5d3d252f975d1186b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntegral/Variant6cbfbce950a60abacb3a08dd3ad978dd8232b840304c5a5d3d252f975d1186b4.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntegral/Variant6cbfbce950a60abacb3a08dd3ad978dd8232b840304c5a5d3d252f975d1186b4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4761ad4e52534891fc6a2652394d8c869de732dc`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntegral/Variant6cbfbce950a60abacb3a08dd3ad978dd8232b840304c5a5d3d252f975d1186b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntegral/Variant6cbfbce950a60abacb3a08dd3ad978dd8232b840304c5a5d3d252f975d1186b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.MeanValue` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.HahnBanach.SeparatingDual` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasFDerivAt_integral_of_dominated_loc_of_lip'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntegral/Variant6cbfbce950a60abacb3a08dd3ad978dd8232b840304c5a5d3d252f975d1186b4.lean/declarations/hasfderivat-integral-of-dominated-loc-of-lip--a52da71674132db3ddca9138.md) | 82 | `result-track:a52da71674132db3ddca9138ecdf906dd03b588c8f74e2448949a596a1ac7e1b` |
| 2 | `theorem` | [hasFDerivAt_integral_of_dominated_loc_of_lip](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntegral/Variant6cbfbce950a60abacb3a08dd3ad978dd8232b840304c5a5d3d252f975d1186b4.lean/declarations/hasfderivat-integral-of-dominated-loc-of-lip--4b942b2eb65a62f8164e2b38.md) | 168 | `result-track:4b942b2eb65a62f8164e2b38c13aadab5c829d513550e5ce30b3998109f9e795` |
| 3 | `theorem` | [hasFDerivAt_integral_of_dominated_loc_of_lip_interval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntegral/Variant6cbfbce950a60abacb3a08dd3ad978dd8232b840304c5a5d3d252f975d1186b4.lean/declarations/hasfderivat-integral-of-dominated-loc-of-lip-interval--9301c1236a7e9f56239a3a0a.md) | 188 | `result-track:9301c1236a7e9f56239a3a0a06fab37b0ceb0b31399b36a7ade6f3c9494d8739` |
| 4 | `theorem` | [hasFDerivAt_integral_of_dominated_of_fderiv_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntegral/Variant6cbfbce950a60abacb3a08dd3ad978dd8232b840304c5a5d3d252f975d1186b4.lean/declarations/hasfderivat-integral-of-dominated-of-fderiv-le--a7a1b2bfb5f33cd507239e8c.md) | 213 | `result-track:a7a1b2bfb5f33cd507239e8cf77edaa71afdda85e68636548625a9ee9558463b` |
| 5 | `theorem` | [hasFDerivAt_integral_of_dominated_of_fderiv_le''](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntegral/Variant6cbfbce950a60abacb3a08dd3ad978dd8232b840304c5a5d3d252f975d1186b4.lean/declarations/hasfderivat-integral-of-dominated-of-fderiv-le--7bd2d811abb3bf3a9bd486ed.md) | 239 | `result-track:7bd2d811abb3bf3a9bd486edd12d4fe28894e8db19721ca8c60bae0b29e88482` |
| 6 | `theorem` | [hasDerivAt_integral_of_dominated_loc_of_lip](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntegral/Variant6cbfbce950a60abacb3a08dd3ad978dd8232b840304c5a5d3d252f975d1186b4.lean/declarations/hasderivat-integral-of-dominated-loc-of-lip--ab9d73a72c240dc7af761e9e.md) | 264 | `result-track:ab9d73a72c240dc7af761e9e5c1c970b794d8c373b4631e4ce04efaf04326b91` |
| 7 | `theorem` | [hasDerivAt_integral_of_dominated_loc_of_deriv_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntegral/Variant6cbfbce950a60abacb3a08dd3ad978dd8232b840304c5a5d3d252f975d1186b4.lean/declarations/hasderivat-integral-of-dominated-loc-of-deriv-le--0e2f7dcb67f1241dfeb8a1cb.md) | 293 | `result-track:0e2f7dcb67f1241dfeb8a1cb19ebf28fa54ebb22545d5a137eed83bbeb809ec5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
