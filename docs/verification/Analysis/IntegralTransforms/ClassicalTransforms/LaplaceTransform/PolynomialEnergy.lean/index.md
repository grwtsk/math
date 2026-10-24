# Verification target: GRWTSK.Analysis.LaplaceTransform.PolynomialEnergy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "526a3d4795714d8b887cf33df827a148fa46649c",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/LaplaceTransform/PolynomialEnergy.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/PolynomialEnergy.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/PolynomialEnergy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `526a3d4795714d8b887cf33df827a148fa46649c`.

Source path: `GRWTSK/Analysis/LaplaceTransform/PolynomialEnergy.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/LaplaceTransform/PolynomialEnergy.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [summable_exp_neg_mul_nat_add_rpow](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/PolynomialEnergy.lean/declarations/summable-exp-neg-mul-nat-add-rpow--ba1daba1223e94e5156f16b6.md) | 26 | `result-track:ba1daba1223e94e5156f16b6bde8dd5d6a53aa216a0d669c02b4011ee5f45fdf` |
| 2 | `theorem` | [tilted_block_norm_bound](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/PolynomialEnergy.lean/declarations/tilted-block-norm-bound--ddcb652adbaae2dec12e0960.md) | 54 | `result-track:ddcb652adbaae2dec12e0960b150a45b9dcbda65cbf0dd635871571af1ad7264` |
| 3 | `theorem` | [integrableOn_tilt_of_polynomial_energy](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/PolynomialEnergy.lean/declarations/integrableon-tilt-of-polynomial-energy--e702e4bd1d43be8fd18da361.md) | 100 | `result-track:e702e4bd1d43be8fd18da3612312ad79b0edaebfacb284c03b8bacdd7b27022d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
