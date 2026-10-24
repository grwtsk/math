# Verification target: GRWTSK.Analysis.IntegralTransforms.LogarithmicMomentSubstitution

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5935d7783237ba019d24364fcf62f1e1bb95c53b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/IntegralTransforms/LogarithmicMomentSubstitution.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/IntegralTransforms/LogarithmicMomentSubstitution.lean/index.md) · [Full source](../../../../mathematics/Analysis/IntegralTransforms/LogarithmicMomentSubstitution.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5935d7783237ba019d24364fcf62f1e1bb95c53b`.

Source path: `GRWTSK/Analysis/IntegralTransforms/LogarithmicMomentSubstitution.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/IntegralTransforms/LogarithmicMomentSubstitution.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Integral` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Sqrt` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sqrt_exp_half](../../../../mathematics/Analysis/IntegralTransforms/LogarithmicMomentSubstitution.lean/declarations/sqrt-exp-half--f8889b4874c5dd7b1aa4f406.md) | 25 | `result-track:f8889b4874c5dd7b1aa4f406e64eeac078c3198e1da051f1546e99fe0bb6d4ff` |
| 2 | `theorem` | [exponential_jacobian_integral](../../../../mathematics/Analysis/IntegralTransforms/LogarithmicMomentSubstitution.lean/declarations/exponential-jacobian-integral--72066e59c88d4de8cfc0674c.md) | 32 | `result-track:72066e59c88d4de8cfc0674c130ceed13fa29f49cad36a54761b6392df6753af` |
| 3 | `theorem` | [exponential_jacobian_integrable_iff](../../../../mathematics/Analysis/IntegralTransforms/LogarithmicMomentSubstitution.lean/declarations/exponential-jacobian-integrable-iff--cb5e57c8ad2cc241e9efb484.md) | 42 | `result-track:cb5e57c8ad2cc241e9efb484e6e6da46d6f15331ae08be0fabe853ddd4353d4a` |
| 4 | `theorem` | [logarithmic_weight_jacobian](../../../../mathematics/Analysis/IntegralTransforms/LogarithmicMomentSubstitution.lean/declarations/logarithmic-weight-jacobian--328c4cb2bee9a95e7c6f0898.md) | 53 | `result-track:328c4cb2bee9a95e7c6f0898c5e720fb24a8b7502c4b7089700fef96649247a1` |
| 5 | `theorem` | [logarithmic_moment_identity](../../../../mathematics/Analysis/IntegralTransforms/LogarithmicMomentSubstitution.lean/declarations/logarithmic-moment-identity--934efd2f5a1be449fdd074b1.md) | 69 | `result-track:934efd2f5a1be449fdd074b1601ac0c62e3ca0ce35374a321f29736279a31cb6` |
| 6 | `theorem` | [logarithmic_integral_zero](../../../../mathematics/Analysis/IntegralTransforms/LogarithmicMomentSubstitution.lean/declarations/logarithmic-integral-zero--4479e8322529a3731f3c480a.md) | 107 | `result-track:4479e8322529a3731f3c480a53b33c1e133780ffd1fd44a62a904ac9999d3feb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
