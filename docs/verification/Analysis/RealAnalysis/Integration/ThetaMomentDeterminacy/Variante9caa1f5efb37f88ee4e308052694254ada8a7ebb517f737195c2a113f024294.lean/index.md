# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ThetaMomentDeterminacy.Variante9caa1f5efb37f88ee4e308052694254ada8a7ebb517f737195c2a113f024294

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b5bfa168a4ac50a54f1f3f399696334a4f4c634",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaMomentDeterminacy/Variante9caa1f5efb37f88ee4e308052694254ada8a7ebb517f737195c2a113f024294.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentDeterminacy/Variante9caa1f5efb37f88ee4e308052694254ada8a7ebb517f737195c2a113f024294.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentDeterminacy/Variante9caa1f5efb37f88ee4e308052694254ada8a7ebb517f737195c2a113f024294.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b5bfa168a4ac50a54f1f3f399696334a4f4c634`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ThetaMomentDeterminacy/Variante9caa1f5efb37f88ee4e308052694254ada8a7ebb517f737195c2a113f024294.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ThetaMomentDeterminacy/Variante9caa1f5efb37f88ee4e308052694254ada8a7ebb517f737195c2a113f024294.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ThetaMomentMeasure` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Moments.MGFAnalytic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Series` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Uniqueness` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integrable_cosh_half_of_even_factorial_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentDeterminacy/Variante9caa1f5efb37f88ee4e308052694254ada8a7ebb517f737195c2a113f024294.lean/declarations/integrable-cosh-half-of-even-factorial-bound--beb2cf9640c347e9b19b53a5.md) | 27 | `result-track:beb2cf9640c347e9b19b53a50109968fe57ad8a4bc83326beb1306c8ac837a75` |
| 2 | `theorem` | [integrable_exp_abs_half_of_even_factorial_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentDeterminacy/Variante9caa1f5efb37f88ee4e308052694254ada8a7ebb517f737195c2a113f024294.lean/declarations/integrable-exp-abs-half-of-even-factorial-bound--31068145db71da8717bb3b20.md) | 82 | `result-track:31068145db71da8717bb3b2072bece2e7e63fa8bb09c12186a6e30f890c9d281` |
| 3 | `theorem` | [half_interval_subset_interior_integrableExpSet](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentDeterminacy/Variante9caa1f5efb37f88ee4e308052694254ada8a7ebb517f737195c2a113f024294.lean/declarations/half-interval-subset-interior-integrableexpset--b4348a2edbdc6335312714b3.md) | 98 | `result-track:b4348a2edbdc6335312714b3aba759335b8b43ba39188b56eccbee78d75d9b72` |
| 4 | `theorem` | [measure_eq_of_moments_of_exp_abs_half](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentDeterminacy/Variante9caa1f5efb37f88ee4e308052694254ada8a7ebb517f737195c2a113f024294.lean/declarations/measure-eq-of-moments-of-exp-abs-half--4cba951a9689699a4b83d54f.md) | 117 | `result-track:4cba951a9689699a4b83d54f3cf468fb8bf53134e4601ae6b88862a9ada08661` |
| 5 | `theorem` | [thetaMomentMeasure_determinate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentDeterminacy/Variante9caa1f5efb37f88ee4e308052694254ada8a7ebb517f737195c2a113f024294.lean/declarations/thetamomentmeasure-determinate--179bfbebfdde650b88d0958e.md) | 162 | `result-track:179bfbebfdde650b88d0958e16cef2758d272cb6273160823c4cac1e0de6c28d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
