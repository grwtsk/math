# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.RateOneIntegrability.Variante71f938137e6ec54712fbdb424f4c57ae896d8b5d66bb2d9c9bc8344ebbd6f77

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "52e21a65ed24258d00b3c24975f18966ad365703",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/RateOneIntegrability/Variante71f938137e6ec54712fbdb424f4c57ae896d8b5d66bb2d9c9bc8344ebbd6f77.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrability/Variante71f938137e6ec54712fbdb424f4c57ae896d8b5d66bb2d9c9bc8344ebbd6f77.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrability/Variante71f938137e6ec54712fbdb424f4c57ae896d8b5d66bb2d9c9bc8344ebbd6f77.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `52e21a65ed24258d00b3c24975f18966ad365703`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/RateOneIntegrability/Variante71f938137e6ec54712fbdb424f4c57ae896d8b5d66bb2d9c9bc8344ebbd6f77.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/RateOneIntegrability/Variante71f938137e6ec54712fbdb424f4c57ae896d8b5d66bb2d9c9bc8344ebbd6f77.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.NegativePartIntegrability` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceCorrectionEstimate` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rate_one_integrableOn_Ioc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrability/Variante71f938137e6ec54712fbdb424f4c57ae896d8b5d66bb2d9c9bc8344ebbd6f77.lean/declarations/rate-one-integrableon-ioc--4cca685361a6eb57f6a0d690.md) | 15 | `result-track:4cca685361a6eb57f6a0d690520e60f0542448817394680caba8558074429a7a` |
| 2 | `theorem` | [rate_one_integrable_of_eventual_majorant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrability/Variante71f938137e6ec54712fbdb424f4c57ae896d8b5d66bb2d9c9bc8344ebbd6f77.lean/declarations/rate-one-integrable-of-eventual-majorant--751bec6554b4dfbee3dba2c4.md) | 37 | `result-track:751bec6554b4dfbee3dba2c417db18bd1db7e24eda9964e0ee921557f3f9f305` |
| 3 | `theorem` | [polynomial_stretched_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrability/Variante71f938137e6ec54712fbdb424f4c57ae896d8b5d66bb2d9c9bc8344ebbd6f77.lean/declarations/polynomial-stretched-integrable--8ee5e683f8eee58bdd732d8c.md) | 71 | `result-track:8ee5e683f8eee58bdd732d8c3ec1b1eabcaa606830a406e65b1906ac16d7bc7a` |
| 4 | `theorem` | [rate_one_majorant_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrability/Variante71f938137e6ec54712fbdb424f4c57ae896d8b5d66bb2d9c9bc8344ebbd6f77.lean/declarations/rate-one-majorant-integrable--9f333c588e5a06b4b7d3a43f.md) | 82 | `result-track:9f333c588e5a06b4b7d3a43f3d9b9f5b991db3e814f7a551c8863b7e4d805d05` |
| 5 | `theorem` | [rate_one_integrable_of_stretched_majorant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrability/Variante71f938137e6ec54712fbdb424f4c57ae896d8b5d66bb2d9c9bc8344ebbd6f77.lean/declarations/rate-one-integrable-of-stretched-majorant--24a9a254e8b27b031dddad8f.md) | 97 | `result-track:24a9a254e8b27b031dddad8f7c11b96394bfdc0f1aed3d65a58f8a372e87f60f` |
| 6 | `theorem` | [actual_scale_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrability/Variante71f938137e6ec54712fbdb424f4c57ae896d8b5d66bb2d9c9bc8344ebbd6f77.lean/declarations/actual-scale-le--6ae84cebda0a49ce078d1549.md) | 105 | `result-track:6ae84cebda0a49ce078d154911944b568a0107fc0eddc81fdf662023caba5431` |
| 7 | `theorem` | [weighted_negativeSource_le_of_pairing_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrability/Variante71f938137e6ec54712fbdb424f4c57ae896d8b5d66bb2d9c9bc8344ebbd6f77.lean/declarations/weighted-negativesource-le-of-pairing-bound--5196c438924870bef07a59e4.md) | 116 | `result-track:5196c438924870bef07a59e438554e647a5af6754cb947261208adb333c3ee0d` |
| 8 | `theorem` | [rate_one_integrable_of_pairing_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrability/Variante71f938137e6ec54712fbdb424f4c57ae896d8b5d66bb2d9c9bc8344ebbd6f77.lean/declarations/rate-one-integrable-of-pairing-bound--4adf9d9a95d4c64710b6c561.md) | 166 | `result-track:4adf9d9a95d4c64710b6c56131b4c6f93823adb7957f04983c54edf02f39b812` |
| 9 | `theorem` | [integrable_of_one_le_rate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrability/Variante71f938137e6ec54712fbdb424f4c57ae896d8b5d66bb2d9c9bc8344ebbd6f77.lean/declarations/integrable-of-one-le-rate--6a61adf3c8149a581c9ddd8c.md) | 177 | `result-track:6a61adf3c8149a581c9ddd8c362e9110aa54bf8cb22f9ea2c2b47bf5c07747cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
