# Verification target: GRWTSK.Analysis.Inequalities.LogarithmicProfileIntegralPrices

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "962017c6a7b76278922085084985d6444a906af2",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Inequalities/LogarithmicProfileIntegralPrices.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Inequalities/LogarithmicProfileIntegralPrices.lean/index.md) · [Full source](../../../../mathematics/Analysis/Inequalities/LogarithmicProfileIntegralPrices.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `962017c6a7b76278922085084985d6444a906af2`.

Source path: `GRWTSK/Analysis/Inequalities/LogarithmicProfileIntegralPrices.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Inequalities/LogarithmicProfileIntegralPrices.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.IntegralTransforms.LogarithmicProfileDerivative`](../../../../mathematics/Analysis/IntegralTransforms/LogarithmicProfileDerivative.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.IntegralTransforms.LogarithmicProfileWeights`](../../../../mathematics/Analysis/IntegralTransforms/LogarithmicProfileWeights.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [upper_variation_weight_integral](../../../../mathematics/Analysis/Inequalities/LogarithmicProfileIntegralPrices.lean/declarations/upper-variation-weight-integral--1895db7e542600dbbe63f4ac.md) | 25 | `result-track:1895db7e542600dbbe63f4ac488109a364406004188e475a03df8204f12b99b2` |
| 2 | `theorem` | [logarithmic_profile_variation_price](../../../../mathematics/Analysis/Inequalities/LogarithmicProfileIntegralPrices.lean/declarations/logarithmic-profile-variation-price--f1b2298513f205cf9e86d2a0.md) | 47 | `result-track:f1b2298513f205cf9e86d2a03d6c151a71482e6cc68cbc3eb68b90dce1522230` |
| 3 | `theorem` | [logarithmic_profile_lower_price](../../../../mathematics/Analysis/Inequalities/LogarithmicProfileIntegralPrices.lean/declarations/logarithmic-profile-lower-price--cb93d34e796030bdc4175b85.md) | 78 | `result-track:cb93d34e796030bdc4175b854dcf051f0009e30689cd9b711f208863531b28c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
