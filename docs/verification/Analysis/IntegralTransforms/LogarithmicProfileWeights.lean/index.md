# Verification target: GRWTSK.Analysis.IntegralTransforms.LogarithmicProfileWeights

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63cb2d89740191e49b21b27186ccf0778a0d99e2",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/IntegralTransforms/LogarithmicProfileWeights.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/IntegralTransforms/LogarithmicProfileWeights.lean/index.md) · [Full source](../../../../mathematics/Analysis/IntegralTransforms/LogarithmicProfileWeights.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63cb2d89740191e49b21b27186ccf0778a0d99e2`.

Source path: `GRWTSK/Analysis/IntegralTransforms/LogarithmicProfileWeights.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/IntegralTransforms/LogarithmicProfileWeights.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.BohrMollerup` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sqrt_exp_half](../../../../mathematics/Analysis/IntegralTransforms/LogarithmicProfileWeights.lean/declarations/sqrt-exp-half--9cdef61e4fb7620285ae54ba.md) | 24 | `result-track:9cdef61e4fb7620285ae54baa47c9d418b01e1cfd210f3c969c84ad507822563` |
| 2 | `theorem` | [reciprocal_jacobian](../../../../mathematics/Analysis/IntegralTransforms/LogarithmicProfileWeights.lean/declarations/reciprocal-jacobian--17ff97174dad3cfbac6eac5b.md) | 30 | `result-track:17ff97174dad3cfbac6eac5b7f3fcf994e6053db41da77f92851b72e7d88b402` |
| 3 | `theorem` | [upper_logarithmic_jacobian](../../../../mathematics/Analysis/IntegralTransforms/LogarithmicProfileWeights.lean/declarations/upper-logarithmic-jacobian--73ddb2fcf70dcbfa65345946.md) | 35 | `result-track:73ddb2fcf70dcbfa65345946ef7ed5fa4bd067ac9462f496b8d752f8a06b6808` |
| 4 | `theorem` | [lower_logarithmic_jacobian](../../../../mathematics/Analysis/IntegralTransforms/LogarithmicProfileWeights.lean/declarations/lower-logarithmic-jacobian--f82b6ff75f1b37f7938c8b8e.md) | 41 | `result-track:f82b6ff75f1b37f7938c8b8ea71f28b0833f391adb481abafc938ebb1b45f95d` |
| 5 | `theorem` | [first_exponential_moment](../../../../mathematics/Analysis/IntegralTransforms/LogarithmicProfileWeights.lean/declarations/first-exponential-moment--4d64c9ffe751be32bb5efbc5.md) | 52 | `result-track:4d64c9ffe751be32bb5efbc5ac49309ff1d4cbf1fbc891da9166d7999b469062` |
| 6 | `theorem` | [reciprocal_sqrt_upper_weight](../../../../mathematics/Analysis/IntegralTransforms/LogarithmicProfileWeights.lean/declarations/reciprocal-sqrt-upper-weight--a44b36e111b421a713fe6416.md) | 75 | `result-track:a44b36e111b421a713fe6416731b1e43fc0487e8a659f6f3f5fcc93ad8ed6050` |
| 7 | `theorem` | [logarithmic_sqrt_upper_weight](../../../../mathematics/Analysis/IntegralTransforms/LogarithmicProfileWeights.lean/declarations/logarithmic-sqrt-upper-weight--433c717c2f308a00dbf98691.md) | 101 | `result-track:433c717c2f308a00dbf986915a8b4aad7d65bb8a3cc3b39041f8b9427d96dcc2` |
| 8 | `theorem` | [logarithmic_sqrt_lower_weight](../../../../mathematics/Analysis/IntegralTransforms/LogarithmicProfileWeights.lean/declarations/logarithmic-sqrt-lower-weight--9f6412041207c9eaad6ab69a.md) | 119 | `result-track:9f6412041207c9eaad6ab69a6dcb0310c435a8ff6638fc0096eeb8404b51d12f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
