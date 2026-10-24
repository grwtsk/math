# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.RateOneIntegrabilityAudit.Variante29a5459a2c69d32853d26e1f16af61b31757ab6d1acaca7322509d94e950dee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "81de89f0d4194592c7caa38db3ee8f6844d69538",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/RateOneIntegrabilityAudit/Variante29a5459a2c69d32853d26e1f16af61b31757ab6d1acaca7322509d94e950dee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityAudit/Variante29a5459a2c69d32853d26e1f16af61b31757ab6d1acaca7322509d94e950dee.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityAudit/Variante29a5459a2c69d32853d26e1f16af61b31757ab6d1acaca7322509d94e950dee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `81de89f0d4194592c7caa38db3ee8f6844d69538`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/RateOneIntegrabilityAudit/Variante29a5459a2c69d32853d26e1f16af61b31757ab6d1acaca7322509d94e950dee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/RateOneIntegrabilityAudit/Variante29a5459a2c69d32853d26e1f16af61b31757ab6d1acaca7322509d94e950dee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.NegativePartIntegrability` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceCorrectionEstimate` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rate_one_integrableOn_Ioc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityAudit/Variante29a5459a2c69d32853d26e1f16af61b31757ab6d1acaca7322509d94e950dee.lean/declarations/rate-one-integrableon-ioc--46ffb8a5a05ce4b59d43bb12.md) | 23 | `result-track:46ffb8a5a05ce4b59d43bb12d85fab246dd4e3a51543fe6c2a54b5113f19ecbc` |
| 2 | `theorem` | [rate_one_integrable_of_eventual_majorant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityAudit/Variante29a5459a2c69d32853d26e1f16af61b31757ab6d1acaca7322509d94e950dee.lean/declarations/rate-one-integrable-of-eventual-majorant--ccf3eb305959a7439ad00eb7.md) | 45 | `result-track:ccf3eb305959a7439ad00eb7ff1ec158ee137b02bd9f02600ddee5a773bfacde` |
| 3 | `theorem` | [polynomial_stretched_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityAudit/Variante29a5459a2c69d32853d26e1f16af61b31757ab6d1acaca7322509d94e950dee.lean/declarations/polynomial-stretched-integrable--9916cbafbcc73e2817730427.md) | 79 | `result-track:9916cbafbcc73e28177304274d8d6efaafcb5bab9ddfcb4a200de37ef8c115a0` |
| 4 | `theorem` | [rate_one_majorant_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityAudit/Variante29a5459a2c69d32853d26e1f16af61b31757ab6d1acaca7322509d94e950dee.lean/declarations/rate-one-majorant-integrable--949e6f28a84284fd300b83ec.md) | 90 | `result-track:949e6f28a84284fd300b83ecb59124b2b117082b1dad61638c1abc59e879b4c6` |
| 5 | `theorem` | [rate_one_integrable_of_stretched_majorant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityAudit/Variante29a5459a2c69d32853d26e1f16af61b31757ab6d1acaca7322509d94e950dee.lean/declarations/rate-one-integrable-of-stretched-majorant--8c2f76fb3d94d20a666f5fba.md) | 105 | `result-track:8c2f76fb3d94d20a666f5fbad297db8f611252c29ffd89796aebc52f7679107e` |
| 6 | `theorem` | [actual_scale_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityAudit/Variante29a5459a2c69d32853d26e1f16af61b31757ab6d1acaca7322509d94e950dee.lean/declarations/actual-scale-le--911f7854c2c2001291bdfc69.md) | 113 | `result-track:911f7854c2c2001291bdfc69a34dc6dfc1ae1c9b130d1d12414e0bb782341ff0` |
| 7 | `theorem` | [weighted_negativeSource_le_of_pairing_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityAudit/Variante29a5459a2c69d32853d26e1f16af61b31757ab6d1acaca7322509d94e950dee.lean/declarations/weighted-negativesource-le-of-pairing-bound--9bc7f38d4afb662b526e4c6a.md) | 124 | `result-track:9bc7f38d4afb662b526e4c6a624af0f36b41abf1b0bdfd789f68096fe8d64dce` |
| 8 | `theorem` | [rate_one_integrable_of_pairing_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityAudit/Variante29a5459a2c69d32853d26e1f16af61b31757ab6d1acaca7322509d94e950dee.lean/declarations/rate-one-integrable-of-pairing-bound--0537018798f2fc53a242a810.md) | 174 | `result-track:0537018798f2fc53a242a81072fc4e9855e58b9415c6cc058a5168422b31678c` |
| 9 | `theorem` | [integrable_of_one_le_rate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityAudit/Variante29a5459a2c69d32853d26e1f16af61b31757ab6d1acaca7322509d94e950dee.lean/declarations/integrable-of-one-le-rate--f473aab4dc998529e2245ad5.md) | 185 | `result-track:f473aab4dc998529e2245ad57c91a53a480e42a7bb8d196d8f4e410e6cf39e36` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
